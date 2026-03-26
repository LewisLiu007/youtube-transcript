# 逐篇讲解DeepSeek、Kimi、MiniMax注意力机制新论文——"硬件上的暴力美学"

## 嘉宾
- **杨松林**：MIT计算机科学与人工智能实验室(CSAIL)博士二年级，导师为Yunking，研究方向为硬件高效的序列建模，专注于高效注意力机制和线性注意力
- **张小军**：播客主持人

## 主要话题
- DeepSeek和Kimi的动态稀疏注意力(Dynamic Sparse Attention)机制
- MiniMax的混合注意力模型(线性+稀疏注意力结合)
- 注意力机制的硬件优化设计
- 长文本处理和推理时间扩展(Test Time Scaling)的技术需求
- 三家公司不同的技术路线和产品策略差异

## 核心观点
- **DeepSeek和Kimi采用动态稀疏注意力**：相比传统静态稀疏模式，动态性由query决定，每个token可选择性关注不同的key-value块，既快又精准
- **DeepSeek首次将动态稀疏注意力用于大规模预训练**：开创性地实现了硬件原生支持，打破之前仅用于推理加速的局限
- **硬件友好设计是关键**：通过算法设计与硬件对齐，实现prefilling和decoding双向加速
- **NSA(Native Sparse Attention)性能超越Full Attention**：在长文本、推理等多个基准测试中表现优于传统Transformer
- **架构创新体现不同公司哲学**：DeepSeek坚持架构创新而非单纯堆数据，反映出技术风险与机遇的权衡
- **推理时间扩展驱动技术选择**：为支持长思维链和Test Time Scaling，需要更高效的解码方案
- **MiniMax的线性注意力方案**：提供另一种思路，常数空间和时间复杂度更友好长推理序列

## 关键信息
- **论文发布**：DeepSeek和Kimi同日发布注意力机制论文；MiniMax在春节前发布相关工作
- **技术基础**：主要参考韩松MIT团队的Quest工作(ICML 2024)
- **核心机制**：将KV分块压缩为块级表示，Query动态选择Top-N块进行细粒度Attention
- **应用场景**：处理长文本(Prefilling问题)、支持长思维链推理、优化推理延迟
- **DeepSeek五日开源计划**：预计包括基础设施框架、MoE模型、稀疏注意力开源实现等
- **性能指标**：在长文本基准、推理能力等多个维度压制Full Attention，训练/推理速度均显著提升