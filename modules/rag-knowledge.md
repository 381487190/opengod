# RAG 知识库引擎 — 原生整合模块

来源融合: ragflow(#29) + anything-llm(#47) + crawl4ai(#38) + Firecrawl

## RAG 核心流水线

```
数据源层
  ├─ 本地文件 (PDF/Word/Markdown/代码)
  ├─ 网页 (Firecrawl/crawl4ai 抓取)
  ├─ 数据库 (SQL/NoSQL 抽取)
  ├─ API 数据 (实时接口)
  └─ 对话历史 (WorkBuddy 记忆)
       │
       ▼
文本处理层
  ├─ 文本提取 (OCR/解析)
  ├─ 智能分块 (语义切分，非固定长度)
  ├─ 元数据标记 (来源/时间/类型)
  └─ 去重清洗 (MD5 + 语义去重)
       │
       ▼
向量化层
  ├─ Embedding 模型 (text-embedding-3)
  ├─ 向量索引 (FAISS/Milvus/Qdrant)
  └─ 多模态 (文本+图片+代码)
       │
       ▼
检索层 (17种 SearchType - 来自 cognee)
  ├─ 语义搜索 (向量相似度)
  ├─ 关键词搜索 (BM25)
  ├─ 混合搜索 (向量+关键词)
  ├─ 图搜索 (知识图谱关联)
  └─ 时间搜索 (按时间范围)
       │
       ▼
重排序层
  ├─ Cross-encoder 重排
  ├─ 多样性过滤
  └─ 上下文窗口优化
       │
       ▼
LLM 生成层
  ├─ 上下文注入
  ├─ 多源交叉验证
  └─ 引用溯源
```

## 智能分块算法

```python
# 语义分块，不是固定500字
def semantic_chunk(text, max_chunk=1024, overlap=128):
    chunks = []
    # 按段落/标题自然分割
    sections = split_by_heading(text)
    for section in sections:
        if len(section) <= max_chunk:
            chunks.append(section)
        else:
            # 超长段落 → 按句子分割 + 重叠
            sentences = split_by_sentence(section)
            # 滑动窗口分块
            ...
    return chunks
```

## crawl4ai 网页抓取模式

```
一键抓取流程:
  URL → fetch HTML → 清洗(去广告/导航/footer) → 
  → 提取正文(Markdown) → 提取元数据(title/date/author) →
  → 提取结构化数据(表格/列表) → 返回结构化JSON
```

## AnythingLLM 本地知识库模式

```
本地部署:
  ├─ 零配置启动
  ├─ 拖拽文件即导入
  ├─ 支持 20+ 文档类型
  ├─ 多种向量数据库可选
  └─ 多用户/多工作区

工作区隔离:
  工作区A (产品文档) ≠ 工作区B (技术规范)
  每个工作区有独立的向量索引
  用户切换工作区 = 切换知识上下文
```

## OpenGod 内置 RAG 执行模式

由于 OpenGod 是纯文本技能（不运行向量数据库），RAG 以以下方式等效执行：

```
1. 数据接入:
   ├─ WorkBuddy 对话记忆 (内置)
   ├─ lexiang 知识库 (MCP 已连接)
   ├─ ima 知识库 (MCP 已连接)
   ├─ learnings/ 目录 (本地文件)
   └─ WebFetch/WebSearch (网络)

2. 检索等效:
   ├─ conversation_search (历史对话)
   ├─ lexiang_search (乐享知识库)
   ├─ ima-mcp search_knowledge (ima知识库)
   └─ Grep/Grep (本地代码搜索)

3. 重排序等效:
   ├─ 相关性评分 (时间新鲜度 + 语义匹配)
   └─ 去重合并 (多源结果的相同内容只保留一份)
```

## 快速接入命令

```bash
# 将当前工作目录索引为知识库
# 等效于 ragflow 的知识库创建，但用 OpenGod 方式
echo "索引当前项目到 learnings/..." 
# 所有关键文件和决策自动写入 learnings/patterns.md
```
