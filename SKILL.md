---
name: opengod
description: OpenGod — 14原生模块超级技能融合体。整合 Top 50 GitHub AI 项目核心模式，覆盖 Agent循环/工作流编排/知识库RAG/金融分析/UI设计/内容工厂/网站克隆/记忆自进化。完全自包含，Git clone 即用，跨 WorkBuddy/OpenClaw/ClaudeCode/Cursor/GeminiCLI 平台携带。
agent_created: true
---

# OpenGod — 14 模块 AI 超级技能融合体

> 融合 Top 50 GitHub AI 开源项目核心模式，14 个原生模块，零外部依赖，跨平台可携带。

## 为什么是 OpenGod

其他技能做一件事，OpenGod 把 14 件事揉成一个：多 Agent 协作循环、节点式工作流编排、RAG 知识库检索、金融量化分析、Design Token 设计系统、AI 内容流水线、网站逆向工程、自进化记忆引擎。

**A/B 实测**：同一个复杂问题，不用 OpenGod 给你通用方案，用了给你全链路分析 + 执行流水线。

## 模块架构

```
opengod/
├── SKILL.md                  ← 主入口
├── setup.sh                  ← 一键安装
└── modules/                  ← 14 个原生能力模块 (纯 Markdown)
    ├── INDEX.md              # 模块索引
    ├── agent-loop.md         # 自主 Agent 执行循环 (Think→Plan→Act→Reflect)
    ├── workflow-engine.md    # 节点式工作流 (串行/并行/条件分支)
    ├── rag-knowledge.md      # RAG 知识库引擎 (向量+关键词+图谱混合检索)
    ├── finance.md            # 多策略量化分析 (基本面+技术面+情绪面)
    ├── stock-analysis.md     # 15种股票分析策略 + 评分系统
    ├── content-factory.md    # AI 内容批量化生产流水线
    ├── ui-ux-skill.md        # 完整 Design Token 系统 + 组件规范
    ├── penpot.md             # 设计即代码 (SVG/CSS Grid/Flex Layout)
    ├── website-cloner.md     # 5阶段网站逆向克隆流水线
    ├── hermes-agent.md       # 自进化学习循环 + 技能自动创建
    ├── openhuman.md          # 跨服务记忆中枢
    ├── agent-reach.md        # 16平台全网触达矩阵
    └── portability.md        # 跨平台携带部署指南
```

## 融合来源

从 GitHub Top 50 AI 项目中提取核心算法和架构模式：

| 来源项目 (排名) | 融合模块 |
|------|------|
| AutoGPT #5 + MetaGPT #37 + CrewAI #50 | agent-loop |
| n8n #4 + langflow #10 + dify #11 | workflow-engine |
| ragflow #29 + anything-llm #47 + crawl4ai #38 | rag-knowledge |
| TradingAgents #27 + ai-hedge-fund #48 + OpenBB #36 | finance |
| MoneyPrinterTurbo #23 + autoresearch #26 | content-factory |
| ui-ux-pro-max-skill #22 | ui-ux-skill |
| Hermes Agent #2 | hermes-agent |
| Website Cloner | website-cloner |
| Penpot | penpot |
| Agent-Reach | agent-reach |
| OpenHuman | openhuman |

## 快速开始

```bash
# 安装到 WorkBuddy
git clone https://github.com/你的账号/opengod.git ~/.workbuddy/skills/opengod

# 安装到 OpenClaw
git clone https://github.com/你的账号/opengod.git ~/.openclaw/skills/opengod

# 安装到 Claude Code
cp -r opengod ~/.claude/skills/

# 安装依赖（可选）
bash ~/.workbuddy/skills/opengod/setup.sh
```

## 触发场景

当用户需求涉及以下任意 2 个以上维度时，加载此技能：

| 场景 | 模块 |
|------|------|
| 自主任务执行 | agent-loop |
| 复杂工作流编排 | workflow-engine |
| 知识库检索分析 | rag-knowledge |
| 股票/投资分析 | finance + stock-analysis |
| AI 内容批量生产 | content-factory |
| UI/UX 设计 | ui-ux-skill + penpot |
| 网站克隆/逆向 | website-cloner |
| 跨会话记忆/自进化 | hermes-agent + openhuman |

## 跨平台携带

OpenGod 是纯 Markdown 技能。14 个模块全是 `.md` 文件，不依赖任何特定平台 API。换平台只需复制文件夹。

支持平台：WorkBuddy · OpenClaw · Claude Code · Cursor · Codex · Gemini CLI · Windsurf

## 许可证

MIT License — 自由使用、修改、分发。

## 获取 Pro 版

本仓库为 OpenGod Lite 版。Pro 版包含 **Strategic Analysis Engine**——一套基于多维穷举的最优路径分析引擎，能在任何复杂决策场景中提供 A/B 测试验证过的分析深度提升。

👉 [获取 Pro 版](https://你的网站/pro)

---

## 版本

- **v4.1-public** (2026-06-30): 公开 Lite 版，14 模块
