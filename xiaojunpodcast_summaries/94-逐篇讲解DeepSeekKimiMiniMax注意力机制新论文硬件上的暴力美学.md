# 逐篇讲解DeepSeek、Kimi、MiniMax注意力机制新论文——"硬件上的暴力美学"

## 嘉宾
- **杨松林**：MIT计算机科学与人工智能实验室（MIT CSAIL）博士二年级，导师是Yong King，研究方向为硬件高效的序列建模，主要聚焦高效注意力和线性注意力
- **张小军**：播客主持人

## 主要话题
- DeepSeek和Kimi同天发布的动态稀疏注意力（Dynamic Sparse Attention）机制
- MiniMax发布的混合型注意力机制（线性与标准注意力结合）
- 注意力机制在大模型中的基础作用及其复杂度问题
- 硬件与算法协同设计的优化策略
- 长文本处理和推理时间扩展（Test Time Scaling）的技术需求

## 核心观点
- **DeepSeek和Kimi的共同选择**：两家企业都采用动态稀疏注意力处理长文本，反映出Test Time Scaling和推理效率已成行业重点
- **DeepSeek的架构创新理念**：DeepSeek坚持做架构创新而非简单堆数据，体现技术远见和风险承担精神
- **硬件友好设计至关重要**：Native Sparse Attention能在硬件上原生训练，实现既快又好的双重目标，超越Full Attention
- **MiniMax的替代方案**：用线性注意力替换多个层，降低推理时间复杂度，对Test Inference Scaling更友好
- **动态vs静态稀疏**：动态稀疏由query实时决定，相比预定义模式的静态稀疏更具灵活性

## 关键信息
- **Native Sparse Attention核心机制**：将Key和Value分块（block）压缩，Query与块级表示做粗粒度注意力，后选Top-N块进行细粒度注意力，结合门控输出
- **核心改进点**：算法层面优化硬件亲和性，使前向、反向传播均快于Full Attention
- **应用场景**：支持Prefilling（文本处理）和Decoding（推理）两个阶段，解决长文本平方复杂度问题
- **DeepSeek后续计划**：宣布连续五天开源五个项目，涉及基础设施框架和MOE等工程工作
- **技术哲学差异**：DeepSeek/Kimi聚焦Test Time Scaling和推理效率，而MiniMax更强调线性复杂度的稳定性