# OpenHuman 记忆中枢 — 原生整合模块

来源: https://github.com/tinyhumansai/openhuman

## Memory Tree 架构

```
┌─────────────────────────────────────────────┐
│              Memory Tree (本地)              │
│                                             │
│  ┌─────────┐                                │
│  │ Identity │ ← 我是谁、我在做什么             │
│  └────┬────┘                                │
│       │                                     │
│  ┌────┴──────────────────────────┐          │
│  │         118+ Service Nodes     │          │
│  │  ┌──────┐ ┌──────┐ ┌──────┐  │          │
│  │  │Gmail │ │Slack │ │GitHub│  │          │
│  │  └──┬───┘ └──┬───┘ └──┬───┘  │          │
│  │     │        │        │      │          │
│  │  ┌──┴────────┴────────┴───┐  │          │
│  │  │   Knowledge Graph        │  │          │
│  │  │   自动关联跨服务信息       │  │          │
│  │  └─────────────────────────┘  │          │
│  └───────────────────────────────┘          │
│                                             │
│  ┌─────────────────────────────┐            │
│  │  Self-Reflection Engine      │            │
│  │  定期反思 → 更新记忆 → 调整行为│            │
│  └─────────────────────────────┘            │
└─────────────────────────────────────────────┘
```

## 记忆分层模型

| 层级 | 存储 | 容量 | 访问速度 |
|------|------|------|---------|
| 工作记忆 | 当前对话窗口 | 有限 | 即时 |
| 短期记忆 | SQLite + FTS5 | 近7天对话 | 毫秒 |
| 长期记忆 | Memory Tree + 向量 | 无限 | 秒级 |
| 元记忆 | Self-Reflection | 精华摘要 | 按需 |

## OpenGod 中的等价实现

由于 OpenHuman 是桌面应用（非 pip 包），OpenGod 用以下方式等价实现其能力：

### 等价 L4 记忆层
```
原始 OpenHuman:               OpenGod 替代:
─────────────────             ─────────────
118+ 服务连接       →         WorkBuddy 连接器 (26个已接入)
Gmail/Slack/GitHub  →         ima-mcp + lexiang + tencent-docs
Memory Tree         →         cognee 知识图谱 + learnings/ 目录
Self-Reflection     →         Hermes 自进化模块 (modules/hermes-agent.md)
Obsidian Wiki       →         learnings/ 目录 (Markdown 兼容)
```

### 数据自动摄入规则
```
1. 每次对话结束 → 自动提取关键信息
2. 发现可复用知识 → 写入 learnings/patterns.md
3. 发现用户偏好 → 写入 learnings/user-preferences.md
4. 发现错误模式 → 写入 learnings/bugs.md
5. 每7天 → 清理过期笔记，合并重复模式
```

## 跨服务知识图谱构建

```python
# 伪代码 — 从多源数据构建统一图谱
def build_knowledge_graph():
    sources = [
        WorkBuddy 对话记录,
        腾讯文档内容,
        乐享知识库,
        ima 知识库,
        GitHub 仓库,
        learnings/ 目录
    ]
    
    for source in sources:
        entities = extract_entities(source)
        relations = extract_relations(source)
        graph.add(entities, relations)
    
    # 交叉关联
    graph.link_across_sources()
    graph.prune_duplicates()
    
    return graph
```

## 在 OpenGod 中的执行方式

1. 加载此模块 → 等同于激活 Memory Tree
2. 每次任务前 → 扫描 learnings/ 获取相关经验
3. 每次任务后 → 自动写入新发现到 learnings/
4. 跨会话查询 → 通过 conversation_search 回溯历史对话
5. 定期整理 → Hermes Cron 每周整理 learnings/
