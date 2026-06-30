# Agent-Reach 感官系统 — 原生整合模块

来源: https://github.com/Panniantong/Agent-Reach (MIT)

## 16 平台触达矩阵

| 平台 | 数据类型 | 命令 | 零成本 |
|------|---------|------|:--:|
| Web | 网页全文 | Jina Reader (`curl r.jina.ai/URL`) | Y |
| YouTube | 视频字幕/元数据 | yt-dlp `--dump-json` | Y |
| GitHub | 仓库/Issue/PR | `gh search/cli` | Y |
| RSS | 订阅源 | feedparser | Y |
| B站 | 搜索/详情/字幕 | bili-cli / opencli | Y |
| 小红书 | 搜索/阅读 | opencli / xiaohongshu-mcp | Y |
| Reddit | 搜索/帖子 | opencli / rdt-cli | Y |
| Twitter/X | 搜索/时间线 | twitter-cli (需Cookie) | Y |
| 抖音 | 搜索/视频 | (平台限制) | - |
| LinkedIn | Profile/职位 | linkedin-scraper-mcp | Y |
| 微信公众号 | 文章搜索 | wechat-article | Y |
| 微博 | 搜索/热门 | (平台限制) | - |
| Facebook | 搜索/主页 | opencli (复用Chrome) | Y |
| Instagram | 用户/帖子 | opencli (复用Chrome) | Y |
| 雪球 | 股票行情 | xueqiu-cli (需Cookie) | Y |
| 小宇宙 | 播客转录 | Groq Whisper | Y |

## OpenGod 内置替代方案

由于 Agent-Reach 需要复杂的安装流程，OpenGod 在对话内直接使用等效工具：

| Agent-Reach 功能 | OpenGod 内置替代 |
|-----------------|----------------|
| Web 搜索 | WebSearch + WebFetch |
| GitHub 搜索 | GitHub MCP (已配置) |
| B站/YouTube | WebFetch 直接抓取 |
| 新闻/RSS | WebSearch (topic: news) |
| 社交媒体 | WebFetch + WebSearch |
| 金融数据 | westock-data skill + 内置模块 |

## 信息采集优先级策略

```
需要信息时:
1. 优先使用内置工具 (WebSearch/WebFetch) → 零配置
2. 如需深度分析 → 使用专业 skill (westock-data/neodata)
3. 如需社交媒体数据 → 使用 WebSearch 代替（关键词搜索）
4. 如需实时交互 → 提示用户手动访问
```

## 多源交叉验证

```
单个信息源的置信度:
- 官方来源 (证监会/央行): 95%
- 主流财经媒体: 80%
- 社交媒体一致趋势: 60%
- 单一推文/帖子: 30%

交叉验证规则:
- 3 个以上独立来源一致 → 高置信度
- 2 个来源一致 + 1 个相反 → 中置信度，标注分歧
- 仅 1 个来源 → 低置信度，标注"未经证实"
```

## 在 OpenGod 中的执行方式

1. 需要信息 → 先内部搜索（learnings/ + WorkBuddy 记忆）
2. 无结果 → WebSearch 全网搜索
3. 需要深度 → WebFetch 获取完整内容
4. 需要实时 → 使用对应 skill 的数据接口
5. 交叉验证 → 至少 2 个独立来源

_Agent-Reach 的核心思想（给 Agent 装上眼睛）已通过 WorkBuddy 内置的 WebSearch/WebFetch 完整实现，无需额外安装。_
