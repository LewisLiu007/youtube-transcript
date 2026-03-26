# 逐段讲解Kimi K2报告并对照ChatGPT Agent、Qwen3-Coder等："系统工程的力量"

## 嘉宾
**郑博源** - 俄亥俄州立大学第三年博士生，研究方向为Language Agent（语言智能体），专注于Computer Use Agent研究

## 主要话题
- Agent的定义、分类及与Language Model的核心区别
- Coding Agent、Search Agent、Tool Use Agent、Computer Use Agent等应用场景
- Kimi K2、Qwen3-Coder、OpenAI Agent等技术方案的差异
- In-context Learning范式 vs End-to-End训练的优劣权衡
- 多智能体系统的设计与协作机制
- Agent发展面临的技术挑战（长规划、复杂任务、多步骤协调）

## 核心观点
- **Agent的本质** - 区别于Language Model在于Agent需感知环境、理解观察、生成并执行动作与环境交互
- **系统工程的力量** - Kimi K2成功在于将所有技巧、prompt调优、参数配置融合为完整工程方案，而非单纯技术突破
- **两种范式** - Minus采用in-context learning快速迭代，易于调优多智能体系统；端到端训练则在特定场景更强大但数据获取困难
- **应用成熟度差异** - Coding Agent已非常成熟(如Cursor、Windsurf)；Computer Use Agent仍存在长规划、复杂任务处理等瓶颈
- **研究空间仍大** - OpenAI Agent表现未达预期，给初创企业和研究者留下充足探索空间

## 关键信息
- **Agent观察空间与动作空间不同**：Coding Agent观察代码库、动作是生成/修改代码；Computer Use Agent观察GUI截图、动作是点击/输入
- **Kimi K2的创新** - 强调工程化系统方案，将prompt、参数、流程完整打包，易于复现和扩展
- **多智能体协作** - 不同角色分工(如产品经理Agent、编码Agent、调试Agent)，通过prompt设计即可实现协作
- **强化学习瓶颈** - 多智能体场景下reward分配困难，难以清晰追踪哪个agent应获得信号反馈
- **博源研究进展** - 从HTML理解→GUI理解→Action Grounding→长规划→强化学习逐步推进