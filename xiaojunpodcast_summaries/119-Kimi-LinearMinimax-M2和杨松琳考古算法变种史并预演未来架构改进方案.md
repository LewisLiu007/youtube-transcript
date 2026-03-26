# Kimi Linear、Minimax M2与算法变种史

## 嘉宾
**杨松琳** - MIT CCL博士在读，线性注意力机制研究专家，Kimi Linear论文作者之一，Flash Linear Attention开源库主要贡献者

## 主要话题
- 线性注意力（Linear Attention）机制的原理与发展
- Kimi Linear的KDA模块设计与创新
- DeepSeek稀疏注意力 vs Kimi线性注意力的技术路线对比
- Minimax从M1混合注意力回退到M2全局注意力的原因
- 注意力机制在长文本推理中的效率问题

## 核心观点
1. **算力制约推动创新** - 中国有限的算力反而促进算法创新走在世界前沿，2025年架构创新尤为重要
2. **长文本问题的急迫性** - DeepSeek R1和Kimi 1.5使用数万token思维链，导致解码成本爆炸，推动混合注意力方案诞生
3. **技术路线的权衡** - DeepSeek选择稀疏注意力保留全量KV Cache；Kimi选择混合注意力大幅降低Cache占用
4. **粒度选择至关重要** - KDA通过从粗粒度衰减率升级到细粒度衰减率，在保证效率的同时显著提升性能
5. **评估体系决定选择** - Minimax M2回退全局注意力源于M1阶段评估不足，未能检测多跳推理能力
6. **线性注意力的代际问题** - Minimax M1采用的Lightning Attention技术相对陈旧，两年内线性注意力已有多次迭代升级

## 关键信息
- **Kimi Linear核心创新**：KDA（Kimi Data Attention）模块基于门控数据网络改进，引入细粒度衰减率机制
- **技术谱系**：Gated Linear Attention → Gated DataNet（粗粒度衰减）→ KDA（细粒度衰减）
- **架构对比**：
  - DeepSeek Sparse Attention：保留全量KV Cache，通过TopK选择降低单步成本
  - Kimi混合注意力：大幅减少KV Cache占用，同时提升批处理效率
  - Minimax M2：完全回归Full Attention
- **评估教训**：初期评估指标不完整导致算法选择失误，多跳推理能力检测缺失