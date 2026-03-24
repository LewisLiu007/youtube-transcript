# YouTube Transcript

批量下载 YouTube 频道的字幕/转录文稿，保存为 Markdown 格式。

## 目录结构

```
youtube-transcript/
├── update_transcript.sh     # 主脚本
├── audio/                   # 音频缓存（yt-dlp 下载的原始音频 + whisper 转录 txt）
├── diaryofaceo/             # 频道目录，每个视频一个 .md 文件
├── hubermanlab/
└── xiaojunpodcast/
```

## 依赖

| 工具 | 用途 | 安装 |
|------|------|------|
| `bun` | 运行字幕获取脚本 | `brew install bun` |
| `yt-dlp` | 获取视频列表、下载音频 | `brew install yt-dlp` |
| `mlx_whisper` | 音频转录（Apple Silicon 加速） | `pip install mlx-whisper` |
| `python3` | 文本处理 | 系统自带 |

### baoyu-youtube-transcript skill

脚本依赖 [baoyu-youtube-transcript](https://github.com/baoyu/claude-skills) Claude Code skill 来获取 YouTube 字幕。

安装方式（在 Claude Code 中执行）：

```
/install baoyu-youtube-transcript
```

或手动克隆到以下任意位置，脚本会自动查找：

```
{项目目录}/.agents/skills/baoyu-youtube-transcript/
~/.claude/skills/baoyu-youtube-transcript/
~/.agents/skills/baoyu-youtube-transcript/
~/claude-config/skills/baoyu-youtube-transcript/
```

### HuggingFace 登录（首次使用 mlx_whisper）

首次运行需登录 HuggingFace 以下载模型：

```bash
python3 -c "from huggingface_hub import login; login(token='your_token')"
```

Token 在 https://huggingface.co/settings/tokens 获取。模型下载后缓存在本地，后续无需网络。

## 用法

```bash
# 处理所有频道目录
./update_transcript.sh

# 只处理指定频道
./update_transcript.sh --channel xiaojunpodcast
```

## 工作流程

每个视频按以下顺序处理：

1. **获取字幕**：通过 YouTube InnerTube API 直接拉取字幕（无需 API Key）
2. **回退转录**：若视频无字幕，则：
   - 用 `yt-dlp` 下载原始音频（webm/opus，无转码）
   - 用 `mlx_whisper large-v3-turbo` 转录（Apple Silicon GPU 加速，约 18x 实时速度）
   - 生成带 YAML frontmatter 的 Markdown 文件

## 跳过逻辑（避免重复处理）

- 字幕路径：channel 目录下已有同名 `.md` → SKIP
- Whisper 路径：channel 目录下已有包含该 `video_id` URL 的 `.md` → SKIP
- 音频已缓存（`audio/{video_id}.*`）→ 跳过下载
- 转录 txt 已缓存（`audio/{video_id}.txt`）→ 跳过转录，直接生成 md

## 输出格式

每个视频生成一个 `{title-slug}.md`，包含：

```markdown
---
title: "视频标题"
channel: 频道名
url: "https://www.youtube.com/watch?v=VIDEO_ID"
language: zh
transcription: whisper (mlx-community/whisper-large-v3-turbo)  # 仅 whisper 路径有此字段
---

# 视频标题

正文内容...
```

## 添加新频道

在项目目录下创建同名子目录即可，目录名需与 YouTube 频道 handle 一致（`@` 后面的部分）：

```bash
mkdir xiaojunpodcast   # 对应 https://www.youtube.com/@xiaojunpodcast
./update_transcript.sh --channel xiaojunpodcast
```

## 配置

脚本顶部可修改：

```bash
WHISPER_MODEL_ZH="mlx-community/whisper-large-v3-turbo"  # 中文：turbo（快 8x，效果好）
WHISPER_MODEL_EN="mlx-community/whisper-large-v3-mlx"    # 英文：large-v3（防幻觉）
AUDIO_DIR="$SCRIPT_DIR/audio"                             # 音频缓存目录
```
