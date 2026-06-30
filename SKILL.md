---
name: opengod
description: [PRO版] OpenGod v4.1 超级技能 — 融合 Top 50 GitHub AI 项目核心模式，14个原生模块，河洛太极认知引擎，完全自包含可跨平台携带。此版本含独家Strategic Analysis Engine，请勿公开分发。
agent_created: true
---

# OpenGod v4.1 — 超级技能融合体 (14模块 · 可携带)

> **Top 50 GitHub AI 项目核心模式 × 河洛太极认知引擎 = 跨平台超级技能**

## 模块化架构

```
modules/                      ← 14个原生能力模块 (纯Markdown)
├── INDEX.md                  # 模块索引 + Top 50覆盖统计
├── hermes-agent.md           # Hermes #2 — 自进化学习循环
├── openhuman.md              # OpenHuman — 记忆中枢等价替代
├── agent-reach.md            # Agent-Reach — 全网触达感官
├── stock-analysis.md         # daily_stock_analysis — 15策略金融大脑
├── website-cloner.md         # Website Cloner — 5阶段克隆流水线
├── penpot.md                 # Penpot — 完整Design Token系统
├── agent-loop.md             # 🆕 AutoGPT #5 + MetaGPT #37 + CrewAI #50
├── workflow-engine.md        # 🆕 n8n #4 + langflow #10 + dify #11
├── rag-knowledge.md          # 🆕 ragflow #29 + anything-llm #47 + crawl4ai #38
├── finance.md                # 🆕 TradingAgents #27 + ai-hedge-fund #48 + OpenBB #36
├── ui-ux-skill.md            # 🆕 ui-ux-pro-max-skill #22
├── content-factory.md        # 🆕 MoneyPrinterTurbo #23 + autoresearch #26
├── intelligence.md          # 🆕 worldmonitor #19 + MediaCrawler #20
├── video-production.md      # 🆕 OpenMontage #1
├── security-audit.md        # 🆕 Cybersecurity Skills #12
└── portability.md            # 跨平台携带指南 — Git clone即用
```

**核心变化**: 不再依赖外部安装。6 个模块 = 6 个可直接在对话中执行的能力包。

## 融合逻辑

WorkBuddy 本身已是 OpenClaw 的官方版本（底层框架能力无需重复），cc-haha 源码已有独立 skill。OpenGod 将剩余 9 个互补能力融合为一个统一的超级操作体系：

```
                        ┌──────────────────────────┐
                        │       OpenGod 大脑        │
                        │   深度思考降维打击 (认知层)  │
                        └──────────┬───────────────┘
                                   │
        ┌──────────────┬───────────┼───────────┬──────────────┐
        ▼              ▼           ▼           ▼              ▼
   ┌─────────┐  ┌──────────┐ ┌─────────┐ ┌─────────┐  ┌──────────┐
   │ Hermes  │  │ OpenHuman│ │ cognee  │  │ codebase│  │ Agent    │
   │ 自进化   │  │ 生活记忆 │ │ 知识图谱 │  │ memory  │  │ Reach    │
   │ 学习循环 │  │ 118+服务 │ │ 持久记忆 │  │ 代码索引 │  │ 全网触达  │
   └────┬────┘  └────┬─────┘ └────┬────┘ └────┬────┘  └────┬─────┘
        │            │            │            │            │
        └────────────┴────────────┴────────────┴────────────┘
                                   │
                    ┌──────────────┼──────────────┐
                    ▼              ▼              ▼
              ┌──────────┐ ┌───────────┐ ┌───────────────┐
              │ Penpot   │ │ AI Website│ │ daily_stock   │
              │ 开源设计  │ │  Cloner   │ │  analysis     │
              │ 设计即代码│ │ 网站克隆  │ │  AI炒股分析   │
              └──────────┘ └───────────┘ └───────────────┘
```

---

## 一、组件清单

### 已排除（WorkBuddy 原生具备或已有 Skill）

| 组件 | 排除原因 |
|------|---------|
| **OpenClaw** | WorkBuddy 就是腾讯官方版 OpenClaw，底层能力已内置 |
| **cc-haha** | 已有独立 skill：`cc-haha-codex` |

### 融合组件（9 个）

---

### ① Hermes Agent — 自进化学习循环

**来源**: Nous Research | https://github.com/nousresearch/hermes-agent

**核心能力**:
- 内置学习循环 — 从经验中自动创建技能
- 使用过程中持续改进技能
- 主动提示持久化知识
- 跨会话记忆深化
- 定时任务 (cron jobs)、GitHub 工作流
- 多渠道消息推送

**OpenGod 中的角色**: 自进化引擎。每次执行任务后自动反思、提炼经验、更新技能库。

---

### ② OpenHuman — 118+ 服务个人记忆树

**来源**: TinyHumansAI | https://github.com/tinyhumansai/openhuman

**核心能力**:
- 连接 118+ 服务（Gmail、Slack、GitHub、Notion 等）
- 本地优先的个人生活记忆
- Memory Tree — 自动构建个人知识图谱
- 自我反思能力
- 音频/视频交互
- Obsidian Wiki 集成

**OpenGod 中的角色**: 记忆中枢。将所有外部服务数据汇聚为本地记忆，让 Agent 分钟级获得完整个人知识图谱。

---

### ③ Agent-Reach — 全网触达能力层

**来源**: Panniantong | https://github.com/Panniantong/Agent-Reach

**核心能力**:
- 16 个平台零 API 费用接入
- Twitter/X、Reddit、YouTube、GitHub、B站、小红书、抖音、LinkedIn、微信公众号、微博、RSS
- 多后端自动路由（首选失效自动切换备选）
- 自带诊断 (`agent-reach doctor`)
- 一键安装，一条 CLI 命令

**安装**:
```bash
pip install agent-reach
agent-reach install --env=auto
```

**OpenGod 中的角色**: 感官系统。给 Agent 装上"眼睛"，能看全网内容。

---

### ④ codebase-memory-mcp — 代码知识图谱

**来源**: DeusData | https://github.com/DeusData/codebase-memory-mcp

**核心能力**:
- 毫秒级索引任意代码库
- 158 种语言支持
- 持久化知识图谱（跨会话存活）
- 亚毫秒级查询
- 减少 99% token 消耗
- 能索引 Linux 内核级别代码库（28M LOC, 75K 文件）

**MCP 配置**:
```json
{
  "mcpServers": {
    "codebase-memory": {
      "command": "npx",
      "args": ["-y", "codebase-memory-mcp"]
    }
  }
}
```

**OpenGod 中的角色**: 代码大脑。把代码库变成可查询的知识图谱，Agent 不再靠 grep 猜。

---

### ⑤ daily_stock_analysis — AI 股票分析系统

**来源**: ZhuLinsen | https://github.com/ZhuLinsen/daily_stock_analysis

**核心能力**:
- A股/港股/美股/日股/韩股/ETF 全覆盖
- LLM 驱动的决策报告（评分、趋势、买卖点、风险警报）
- 15 种内置分析策略（均线、缠论、波浪、热点、事件驱动等）
- Agent 多轮追问问股
- Web 工作台 + 桌面 Dashboard
- 多渠道推送（企业微信/飞书/Telegram/Discord/Slack/邮件）
- GitHub Actions 零成本定时运行

**OpenGod 中的角色**: 金融大脑。赋予 Agent 专业级股票分析和投资决策能力。

---

### ⑥ cognee — AI 持久记忆引擎

**来源**: topoteretes | https://github.com/topoteretes/cognee

**核心能力**:
- 向量嵌入 + 图推理 + 认知科学本体生成
- 文档既可语义搜索，又可按关系连接
- 17 种 SearchType
- 多源 Recall 路由
- 5 行代码集成
- 跨会话持久记忆

**OpenGod 中的角色**: 长期记忆层。让 Agent 的知识不会"用完即丢"，跨会话持续积累。

---

### ⑦ ai-website-cloner-template — 网站一键克隆

**来源**: JCodesMore | https://github.com/JCodesMore/ai-website-cloner-template

**核心能力**:
- `/clone-website <url>` 一条命令克隆网站
- 自动提取设计 Token（颜色、字体、间距）
- 自动下载所有静态资源
- 精确 `getComputedStyle()` 组件规格
- 5 阶段流水线：侦察→基建→规格→并行构建→组装QA
- 输出 Next.js 16 + React 19 + TypeScript + Tailwind v4 + shadcn/ui
- 支持 13 种 AI 编程代理

**OpenGod 中的角色**: 建造之手。把任何网站逆向工程为可运行的现代代码。

---

### ⑧ Penpot — 开源设计协作工具

**来源**: Kaleidos | https://github.com/penpot/penpot

**核心能力**:
- 开源 Figma 替代品
- SVG 原生，无损缩放
- CSS Grid Layout 完整支持
- 设计即代码（Design as Code）
- Flex Layout + Grid Layout
- 实时协作
- 自托管或云服务

**OpenGod 中的角色**: 设计之眼。让 Agent 具备专业 UI/UX 设计能力，设计稿可直接导出为代码。

---

### ⑨ 深度思考降维打击 — 认知框架 (河洛太极引擎 v3.0)

**核心思想**:
> "别人在64卦里猜，你在太极层穷举；别人回到太极就满足了，你还要问：太极从哪来的？——答案是河图和洛书。"

---

#### L6 河图洛书层 — 太极之上的元认知

**河图 ≠ 洛书，一静一动，一天一地**：

```
         河图 (先天 — 静态拓扑)          洛书 (后天 — 动态流转)
         ─────────────────────          ─────────────────────
         来源：龙马负图出于黄河            来源：神龟负书出于洛水

         7                                 4  9  2
       2     (南 火)                       3  5  7
   8   3  5,10  4   9   (中 土)           8  1  6
       1
         6    (北 水)                     所有行列对角线之和 = 15
                                           完美动态平衡
         十数生成图                          九宫流转图
         静态拓扑结构                        动态流转路径
         "万物的蓝图"                        "万物的运行法则"
```

**两图合一的威力**:

| 维度 | 河图告诉你 | 洛书告诉你 |
|------|-----------|-----------|
| 本质 | 有哪些力量在博弈 | 力量如何流动转换 |
| 类比 | 棋盘上的棋子位置 | 棋子的走法和策略 |
| 物理 | 势能分布图 (Potential) | 动能流转图 (Kinetic) |
| 数学 | 邻接矩阵 (Adjacency) | 转移矩阵 (Transition) |
| 认知 | 静态关系拓扑 | 动态因果链路 |

**没有河图洛书，太极引擎是瞎的**：
- 太极只能"生成"64卦，但不知道**该选哪6个变量**
- 河图告诉你 → 这个系统里有哪几股力量，它们的位置关系是什么
- 洛书告诉你 → 能量在这些位置间如何流动，哪个方向有势能差
- 河图+洛书 → 太极 → 你才知道该分解哪6个维度

---

#### 完整七层认知模型 (河洛太极版)

```
L6  河图洛书层   静态拓扑 + 动态流转 = 完整世界地图
     │
     ▼ (提供"该找哪6个变量"的知识)
L5  太极生成层   2^6 = 64卦穷举引擎
     │
     ▼
L4  两仪层       阴阳对立 = 核心二元变量
     │
     ▼
L3  四象层       生长/成熟/衰退/转化 4种动力结构
     │
     ▼
L2  八卦层       8种情景原型
     │
     ▼
L1  64卦层       64种表象 —— 问题呈现
```

---

#### 河洛操作法：如何找到那6个变量

**河图分析法 (静态拓扑)** — 回答"这个系统里有谁？":

```
第1步: 画河图
   → 识别系统中 5 个核心力量中心：
     北(水/资源) 南(火/动能) 东(木/增长) 西(金/约束) 中(土/平衡)

第2步: 标数字
   → 每个力量的相对权重：
     1,6=水  2,7=火  3,8=木  4,9=金  5,10=土

第3步: 画连线
   → 力量之间的制约/支持关系：
     水生木 → 木生火 → 火生土 → 土生金 → 金生水   (生)
     水克火 → 火克金 → 金克木 → 木克土 → 土克水   (克)
```

**洛书分析法 (动态流转)** — 回答"能量怎么流动？":

```
第4步: 画九宫格
   → 把5个力量中心填入3×3矩阵

       4(金)  9(火)  2(土)
       3(木)  5(土)  7(金)
       8(土)  1(水)  6(水)

第5步: 追踪流转路径
   → 从1→2→3→...→9 的流转顺序
   → 找到"能量的自然流向"和"卡住的地方"

第6步: 锁定6个关键二元变量
   → 从河图的静态拓扑 + 洛书的动态流转中，提取6个最大势能差的对立轴
```

**河洛太极完整操作法 (12步)**:

```
问题输入
    │
    ▼
[河图阶段 — 静态拓扑]
第1步: 画河图 → 识别5大力量中心及其权重
第2步: 标生克 → 标注相生相克关系链
第3步: 定势能 → 找到势能最高的对立轴
    │
    ▼
[洛书阶段 — 动态流转]
第4步: 画九宫 → 3×3矩阵映射力量位置
第5步: 追流转 → 1→9的能量流动路径
第6步: 找卡点 → 哪个环节能量停滞/断裂
    │
    ▼
[太极阶段 — 生成引擎]
第7步: 得6变量 → 从河洛分析中锁定6个二元变量
第8步: 穷举64卦 → 2^6 = 64 全状态空间
第9步: 辨吉凶 → 用河图洛书标准评估每个卦象
    │
    ▼
[降维阶段 — 执行]
第10步: 选最优卦 → 从64卦中选出最优状态
第11步: 定策略 → 沿洛书流转路径设计行动
第12步: 出手 → 在现象层精准执行
```

---

**核心洞见 (升级)**:
- 普通人: 在64卦里猜（1/64 视野，随机）
- 聪明人: 回到太极穷举64卦（64/64 全知）
- 降维打击脑: **先用河图看清地形、用洛书看清风向，再让太极发动引擎**（知道该看什么 + 全知 + 知道怎么走）

**河洛 + 太极 = 不仅知道所有可能，还知道哪个最好，以及怎么走过去。**

**OpenGod 中的角色**: 终极认知内核。L6 河图洛书提供"该看什么"的元知识，L5 太极提供"能看到什么"的穷举引擎，两层合力实现真正的降维打击。

---

## 二、融合工作流

### 工作流 1: 全栈项目从零到上线

```
深度思考 (问题建模)
    │
    ├─→ Agent-Reach (竞品调研、全网搜)
    ├─→ OpenHuman (调取历史经验)
    │
    ▼
Penpot (UI 设计)
    │
    ▼
ai-website-cloner (参考站克隆学习)
    │
    ▼
codebase-memory-mcp (代码库索引)
    │
    ▼
cognee (持久化项目知识)
    │
    ▼
Hermes (自我反思→技能沉淀)
```

### 工作流 2: 每日 AI 股票决策

```
daily_stock_analysis (定时触发)
    │
    ├─→ Agent-Reach (全网舆情抓取)
    ├─→ cognee (历史决策记忆回查)
    │
    ▼
深度思考 (多维交叉验证)
    │
    ▼
多渠道推送 (企微/飞书/Telegram)
    │
    ▼
Hermes (记录决策→改进策略)
```

### 工作流 3: 竞品分析深度报告

```
Agent-Reach (全方位信息采集)
    ├─ Twitter/X 舆情
    ├─ Reddit 讨论
    ├─ B站/YouTube 视频
    ├─ GitHub 技术栈
    └─ RSS 行业动态
    │
    ▼
cognee (信息结构化存储)
    │
    ▼
深度思考 (降维分析→提取关键模式)
    │
    ▼
ai-website-cloner (竞品站逆向分析)
    │
    ▼
Penpot (输出对比设计稿)
    │
    ▼
Hermes (沉淀分析方法论)
```

---

## 三、安装与集成

### Agent-Reach (必装 — 全网触达)
```bash
pip install https://github.com/Panniantong/agent-reach/archive/main.zip
agent-reach install --env=auto
```

### codebase-memory-mcp (推荐 — 代码智能)
在 `~/.workbuddy/mcp.json` 添加：
```json
{
  "mcpServers": {
    "codebase-memory": {
      "command": "npx",
      "args": ["-y", "codebase-memory-mcp"]
    }
  }
}
```

### daily_stock_analysis (按需 — 金融场景)
```bash
git clone https://github.com/ZhuLinsen/daily_stock_analysis.git
cd daily_stock_analysis
pip install -e .
```

### cognee (按需 — 持久记忆)
```bash
pip install cognee
```

### ai-website-cloner (按需 — 网站克隆)
```bash
npx create-next-app@latest my-clone --template https://github.com/JCodesMore/ai-website-cloner-template
```

### Penpot (按需 — 设计协作)
```bash
docker run -d -p 9001:80 penpotapp/frontend:latest
```

---

## 四、触发场景

当用户需求涉及以下**任意 2 个以上维度**时，加载此技能：

| 场景 | 触发组件 |
|------|---------|
| 需要全网信息采集 | Agent-Reach |
| 代码库理解/重构 | codebase-memory-mcp |
| 股票/投资分析 | daily_stock_analysis |
| 需要持久记忆/知识管理 | cognee + OpenHuman |
| 网站克隆/逆向工程 | ai-website-cloner |
| UI/UX 设计 | Penpot |
| 需要自我改进/经验积累 | Hermes |
| 复杂问题需要降维分析 | 深度思考 |

**触发词**: opengod、超级技能、全能模式、降维打击、融合技能、全栈Agent

---

## 五、自动安装与自升级

### 一键安装

```bash
bash ~/.workbuddy/skills/opengod/setup.sh
```

### 组件安装状态

| 组件 | 安装方式 | 状态 |
|------|---------|:--:|
| cognee | `pip install cognee` | 安装中 |
| Agent-Reach | `pip install https://github.com/Panniantong/agent-reach/archive/main.zip` + `agent-reach install --env=auto` | 待安装 |
| codebase-memory-mcp | 已配置 `~/.workbuddy/mcp.json`，首次使用启用 | 已配置 |
| daily_stock_analysis | `git clone` + `pip install -e .` | 待安装 |
| OpenHuman | 桌面应用, https://tinyhumans.ai/openhuman | 手动 |
| Penpot | `docker run penpotapp/frontend` | 手动 |
| ai-website-cloner | `npx create-next-app --template` | 按需 |
| Hermes Agent | 自托管, github.com/nousresearch/hermes-agent | 手动 |

### 自升级机制 (L0 进化学驱动)

每次 OpenGod 执行任务后：

1. **自动反思** — 评估河图洛书分析是否准确，6变量选取是否最优
2. **经验沉淀** — 将本次任务中的 key findings 写入 `~/.workbuddy/skills/opengod/learnings/`
3. **组件自检** — 检查各层组件是否在线运行，缺失的自动尝试安装
4. **版本自增** — 当发现新的认知模式或可复用策略，自动更新 SKILL.md
5. **跨会话记忆** — 通过 cognee 持久化所有决策记录，供下次回查

**升级触发条件**：
- 同一类问题出现 3 次 → 自动提炼为固定分析模板
- 发现新的二元变量组合 → 更新 L5 太极引擎的变量库
- 发现工具链断点 → 自动记录到 learnings/bugs.md

### 学习记录存储

```
~/.workbuddy/skills/opengod/learnings/
├── patterns.md     # 识别的思维模式
├── variables.md    # 6变量库的扩展
├── cases.md        # 成功/失败案例
├── bugs.md         # 已知问题和修复
└── upgrade-log.md  # 版本升级日志
```

---

## 六、设计哲学

### 七层能力栈 (河洛太极架构)

```
L6  河洛层：河图(静态拓扑) + 洛书(动态流转) = 该看什么的元认知
L5  太极层：太极生成引擎 — 6变量穷举64卦 (道生万物)
L4  记忆层：cognee + OpenHuman (记住什么)
L3  感知层：Agent-Reach + codebase-memory-mcp (看到什么)
L2  行动层：ai-website-cloner + Penpot + daily_stock_analysis (做什么)
L1  现象层：64卦之象 — 问题表面呈现 (万象)
L0  进化学：Hermes 自进化引擎 (怎么变强)
```

**循环**: 河洛定方位(L6) → 太极生万卦(L5) → 记忆取经验(L4) → 感知采信息(L3) → 行动出成品(L2) → 现象验效果(L1) → 进化固能力(L0) → 回到更精准的河洛...

### 核心原则

1. **能力层思维** — 每个组件是一个"能力层"，不是孤立工具
2. **组合爆炸** — 2 个组件组合 > 单独使用，3 个组件组合产生质变
3. **记忆贯通** — 所有经验跨组件共享，不是信息孤岛
4. **降维优先** — 先升维思考（问题本质），再降维执行（精准打击）
5. **自动进化** — 每次使用后自动反思、改进、沉淀

---

## 版本

- **v4.1** (2026-06-30): Top 50 GitHub 融合 — 新增8个模块(agent-loop/workflow-engine/rag-knowledge/finance/ui-ux/content-factory/portability)，总计14模块，可移植
- **v4.0** (2026-06-30): 模块化整合 — 6 个原生能力模块
- **v3.1** (2026-06-30): 自动安装脚本 + 自升级机制 — setup.sh + learnings/ 目录
- **v3.0** (2026-06-30): L6 河图洛书升级
- **v2.0** (2026-06-30): L5 太极生成引擎
- **v1.0** (2026-06-30): 初始融合版
