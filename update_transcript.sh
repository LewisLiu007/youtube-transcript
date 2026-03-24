#!/bin/bash
# Update transcripts for YouTube channels.
# Usage:
#   ./update_transcript.sh                    # process all subdirectories
#   ./update_transcript.sh --channel hubermanlab  # process specific channel

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUN_X="bun"

# Auto-locate baoyu-youtube-transcript skill script
SKILL_SCRIPT=""
for candidate in \
  "$SCRIPT_DIR/.agents/skills/baoyu-youtube-transcript/scripts/main.ts" \
  "$HOME/.claude/skills/baoyu-youtube-transcript/scripts/main.ts" \
  "$HOME/.agents/skills/baoyu-youtube-transcript/scripts/main.ts" \
  "$HOME/claude-config/skills/baoyu-youtube-transcript/scripts/main.ts" \
  "$HOME/claude-config/agent-skills/baoyu-youtube-transcript/scripts/main.ts"
do
  if [[ -f "$candidate" ]]; then
    SKILL_SCRIPT="$candidate"
    break
  fi
done

if [[ -z "$SKILL_SCRIPT" ]]; then
  echo "ERROR: baoyu-youtube-transcript skill not found. Please install it first."
  echo "See README.md for installation instructions."
  exit 1
fi
AUDIO_DIR="$SCRIPT_DIR/audio"
WHISPER_MODEL_ZH="mlx-community/whisper-large-v3-turbo"
WHISPER_MODEL_EN="mlx-community/whisper-large-v3-mlx"

# Parse args
TARGET_CHANNEL=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    --channel)
      TARGET_CHANNEL="$2"
      shift 2
      ;;
    *)
      echo "Unknown argument: $1"
      echo "Usage: $0 [--channel <channel-name>]"
      exit 1
      ;;
  esac
done

# Collect channels to process
if [[ -n "$TARGET_CHANNEL" ]]; then
  if [[ ! -d "$SCRIPT_DIR/$TARGET_CHANNEL" ]]; then
    echo "Error: directory '$SCRIPT_DIR/$TARGET_CHANNEL' not found"
    exit 1
  fi
  CHANNELS=("$TARGET_CHANNEL")
else
  CHANNELS=()
  for dir in "$SCRIPT_DIR"/*/; do
    [[ -d "$dir" ]] || continue
    name="$(basename "$dir")"
    CHANNELS+=("$name")
  done
fi

echo "Channels to process: ${CHANNELS[*]}"
echo ""

process_channel() {
  local channel="$1"
  local channel_dir="$SCRIPT_DIR/$channel"
  local channel_url="https://www.youtube.com/@${channel}/videos"

  echo "========================================="
  echo "Channel: $channel ($channel_url)"
  echo "========================================="

  # Get all video IDs from channel
  echo "Fetching video list..."
  local video_ids
  if ! video_ids=$(yt-dlp --flat-playlist --print id "$channel_url" 2>/dev/null); then
    echo "  ERROR: Failed to fetch video list for @${channel}"
    return 1
  fi

  local total
  total=$(echo "$video_ids" | grep -c . || true)
  echo "  Found $total videos"
  echo ""

  local count=0
  local skipped=0
  local fetched=0
  local failed=0

  while IFS= read -r video_id; do
    [[ -z "$video_id" ]] && continue
    count=$((count + 1))
    local url="https://www.youtube.com/watch?v=${video_id}"

    # Use a per-video tmp dir so outputs don't mix
    local tmp_dir
    tmp_dir=$(mktemp -d)

    # Run skill, capture the output file path from stdout
    local skill_output skill_ok=0
    if skill_output=$(${BUN_X} "$SKILL_SCRIPT" "$url" --output-dir "$tmp_dir" --no-timestamps 2>/dev/null); then
      skill_ok=1
    fi

    local transcript_file=""
    if [[ $skill_ok -eq 1 ]]; then
      transcript_file=$(echo "$skill_output" | tail -1 | tr -d '[:space:]')
      if [[ -z "$transcript_file" || ! -f "$transcript_file" ]]; then
        transcript_file=$(find "$tmp_dir" -mindepth 3 -maxdepth 3 -name "transcript.md" 2>/dev/null | head -1)
      fi
      if [[ -z "$transcript_file" || ! -f "$transcript_file" ]]; then
        skill_ok=0
      fi
    fi

    # Fallback: download audio and transcribe with Whisper
    if [[ $skill_ok -eq 0 ]]; then
      # Check if md already exists in channel dir (by video_id in frontmatter)
      if grep -rl "watch?v=${video_id}" "$channel_dir" 2>/dev/null | grep -q .; then
        echo "  [$count/$total] SKIP $video_id (md already exists)"
        skipped=$((skipped + 1))
        rm -rf "$tmp_dir"
        continue
      fi

      echo "  [$count/$total] No subtitle for $video_id, falling back to audio transcription..."
      mkdir -p "$AUDIO_DIR"
      # Download best audio without transcoding (webm/opus or m4a, faster than mp3)
      local audio_file
      audio_file=$(find "$AUDIO_DIR" -name "${video_id}.*" ! -name "*.txt" 2>/dev/null | head -1)

      if [[ -z "$audio_file" ]]; then
        if ! yt-dlp -f "bestaudio" \
            -o "$AUDIO_DIR/%(id)s.%(ext)s" "$url" 2>/dev/null; then
          echo "  [$count/$total] FAILED $video_id (audio download failed)"
          failed=$((failed + 1))
          rm -rf "$tmp_dir"
          continue
        fi
        audio_file=$(find "$AUDIO_DIR" -name "${video_id}.*" ! -name "*.txt" 2>/dev/null | head -1)
      fi

      # Transcribe with mlx-whisper (skip if txt already cached)
      local txt_file="$AUDIO_DIR/${video_id}.txt"
      if [[ ! -f "$txt_file" ]]; then
        # Detect language from first 30s of audio
        local detected_lang
        detected_lang=$(python3 -c "
import mlx_whisper, sys
result = mlx_whisper.transcribe('$audio_file', model='mlx-community/whisper-large-v3-turbo', clip_timestamps='0,30')
print(result.get('language', 'zh'))
" 2>/dev/null)
        echo "  [$count/$total] Detected language: ${detected_lang:-unknown}"

        local whisper_model whisper_lang
        if [[ "$detected_lang" == "en" ]]; then
          whisper_model="$WHISPER_MODEL_EN"
          whisper_lang="en"
        else
          whisper_model="$WHISPER_MODEL_ZH"
          whisper_lang="zh"
        fi

        if ! mlx_whisper "$audio_file" \
          --model "$whisper_model" \
          --language "$whisper_lang" \
          --output-dir "$AUDIO_DIR" \
          --output-format txt \
          --output-name "$video_id" \
          --condition-on-previous-text False \
          --hallucination-silence-threshold 2.0 2>/dev/null; then
          echo "  [$count/$total] FAILED $video_id (transcription failed)"
          failed=$((failed + 1))
          rm -rf "$tmp_dir"
          continue
        fi
      fi

      if [[ ! -f "$txt_file" ]]; then
        echo "  [$count/$total] FAILED $video_id (transcript file not found after whisper)"
        failed=$((failed + 1))
        rm -rf "$tmp_dir"
        continue
      fi

      # Get video title for filename
      local video_title
      video_title=$(yt-dlp --get-title "$url" 2>/dev/null | head -1)
      local title_slug
      title_slug=$(echo "$video_title" | python3 -c "
import sys, re
t = sys.stdin.read().strip()
t = re.sub(r'[\s]+', '-', t)
t = re.sub(r'[^\w\u4e00-\u9fff-]', '', t)
t = re.sub(r'-+', '-', t).strip('-')
print(t)
")
      title_slug="${title_slug:-$video_id}"
      local target_md="$channel_dir/${title_slug}.md"

      # Convert txt to simple markdown
      {
        printf -- "---\ntitle: \"%s\"\nchannel: %s\nurl: \"%s\"\nlanguage: %s\ntranscription: whisper (%s)\n---\n\n# %s\n\n" \
          "$video_title" "$channel" "$url" "${detected_lang:-zh}" "$whisper_model" "$video_title"
        python3 -c "
import sys, re
lines = [l.strip() for l in sys.stdin if l.strip()]
chunk = []
for line in lines:
    chunk.append(line)
    if len(chunk) >= 5 or re.search(r'[。？！…]$', line):
        print(''.join(chunk))
        print()
        chunk = []
if chunk:
    print(''.join(chunk))
" < "$txt_file"
      } > "$target_md"

      rm -rf "$tmp_dir"
      echo "  [$count/$total] OK(whisper) $video_id -> $(basename "$target_md")"
      fetched=$((fetched + 1))
      continue
    fi

    # skill succeeded — move transcript to channel dir
    local title_slug
    title_slug=$(basename "$(dirname "$transcript_file")")
    local target_md="$channel_dir/${title_slug}.md"

    if [[ -f "$target_md" ]]; then
      echo "  [$count/$total] SKIP $video_id (${title_slug}.md exists)"
      skipped=$((skipped + 1))
      rm -rf "$tmp_dir"
      continue
    fi

    mv "$transcript_file" "$target_md"
    rm -rf "$tmp_dir"

    echo "  [$count/$total] OK   $video_id -> ${title_slug}.md"
    fetched=$((fetched + 1))

  done <<< "$video_ids"

  echo ""
  echo "  Summary: $fetched fetched, $skipped skipped, $failed failed (total $total)"
  echo ""
}

for channel in "${CHANNELS[@]}"; do
  process_channel "$channel"
done

echo "All channels processed."
