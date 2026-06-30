# OpenGod 可移植部署指南 — 跨平台携带

## 原理

OpenGod 是**纯 Markdown 技能**。所有模块都是 `.md` 文件，不依赖任何特定平台的 API。

```
一个文件夹带走全部能力:
opengod/
├── SKILL.md              ← 主入口，任何 AI Agent 都能加载
├── setup.sh              ← 一键安装依赖
├── modules/              ← 所有能力模块（纯文本）
└── learnings/            ← 你的经验积累（跨平台继承）
```

## 移植到其他平台

### 1. 另一个 WorkBuddy 实例
```bash
# 直接复制技能目录
cp -r ~/.workbuddy/skills/opengod /新电脑/.workbuddy/skills/

# 带 learnings 也复制
cp -r ~/.workbuddy/skills/opengod/learnings /新电脑/.workbuddy/skills/opengod/learnings/
```

### 2. 原始 OpenClaw
```bash
# OpenClaw 兼容 WorkBuddy 技能格式
cp -r opengod/ ~/.openclaw/skills/opengod/

# 安装基础依赖
python3 -m venv ~/.openclaw-venv
source ~/.openclaw-venv/bin/activate
pip install cognee
```

### 3. Claude Code / Cursor / Windsurf
```bash
# 将 SKILL.md 内容复制到系统提示词
# 或将整个目录放到项目根目录
cp -r opengod/ ./project/.skills/opengod/
```

### 4. 任何支持 MCP 的 Agent
```
opengod 不依赖 MCP，但可以用 MCP 增强:
  ├─ codebase-memory-mcp  → 代码知识图谱
  ├─ lexiang MCP          → 乐享知识库
  └─ tencent-docs MCP     → 腾讯文档
```

## 模块依赖关系

```
SKILL.md (主入口)
  ├─ modules/INDEX.md            ← 模块索引
  ├─ modules/hermes-agent.md     ← 无外部依赖
  ├─ modules/openhuman.md        ← 无外部依赖
  ├─ modules/agent-reach.md      ← 需 WebSearch/WebFetch
  ├─ modules/stock-analysis.md   ← 需 westock-data skill
  ├─ modules/finance.md          ← 需 westock-data skill
  ├─ modules/website-cloner.md   ← 无外部依赖
  ├─ modules/penpot.md           ← 无外部依赖（纯CSS Token）
  ├─ modules/agent-loop.md       ← 无外部依赖
  ├─ modules/workflow-engine.md  ← 无外部依赖
  ├─ modules/rag-knowledge.md    ← 需 MCP 连接器
  ├─ modules/ui-ux-skill.md      ← 无外部依赖（纯CSS Token）
  └─ modules/content-factory.md  ← 无外部依赖
```

## 自包含验证

```bash
# 验证 opengod 可以独立运行
cd ~/.workbuddy/skills/opengod
echo "检查所有模块文件..." && ls modules/ | wc -l
echo "检查 Main SKILL.md..." && head -3 SKILL.md
echo "OpenGod 已就绪，可移植。"
```

## Git 版本管理（推荐）

```bash
# 将 opengod 放入自己的 Git 仓库
cd ~/.workbuddy/skills/opengod
git init
git add .
git commit -m "OpenGod v4.1 — 14模块完整版，跨平台可移植"

# 推送到你的 GitHub
git remote add origin https://github.com/你的账号/opengod.git
git push -u origin main

# 在其他机器上直接 clone
git clone https://github.com/你的账号/opengod.git ~/.workbuddy/skills/opengod
```

## learnings/ 跨平台携带

```
你的经验是最值钱的资产:
  learnings/patterns.md      ← 积累的思维模式
  learnings/variables.md     ← 问题变量库
  learnings/cases.md         ← 成功与失败案例
  learnings/user-preferences ← 你的偏好和习惯

这些文件是纯 Markdown，放到任何 AI Agent 的上下文里都能用。
换平台时只需复制 learnings/ 目录即可继承全部经验。
```
