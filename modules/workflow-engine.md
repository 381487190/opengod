# 工作流自动化引擎 — 原生整合模块

来源融合: n8n(#4) + langflow(#10) + dify(#11) + deer-flow(#34) + ComfyUI(#15)

## 节点式工作流模型（ComfyUI 风格）

```
┌─────┐     ┌─────┐     ┌─────┐
│触发  │────→│处理A │────→│处理B │──┐
│节点  │     │节点  │     │节点  │  │
└─────┘     └─────┘     └─────┘  │
                                 ▼
┌─────┐     ┌─────┐     ┌─────┐
│输出  │←────│处理D │←────│条件  │
│节点  │     │节点  │     │分支  │
└─────┘     └─────┘     └─────┘
```

### 节点类型标准

| 类型 | 功能 | 示例 |
|------|------|------|
| Trigger | 启动工作流 | 定时器/Webhook/手动 |
| AI | LLM 调用 | 文本生成/分析/翻译 |
| Transform | 数据转换 | 格式转换/过滤/合并 |
| Condition | 条件分支 | if-else/switch 路由 |
| HTTP | API 调用 | REST/GraphQL 请求 |
| Database | 数据读写 | CRUD 操作 |
| File | 文件操作 | 读写/压缩/转换 |
| Output | 结果输出 | 推送/存储/展示 |

## 并行/串行编排规则

```yaml
# 工作流定义格式
workflow:
  name: "日产3000篇AI文章"
  
  # 串行链：一步一步执行
  serial:
    - step: "关键词获取"
      tool: Agent-Reach
      depends_on: []
    
    - step: "AI内容生成"
      tool: LLM_API
      depends_on: ["关键词获取"]
    
    - step: "内容发布"
      tool: CMS_API  
      depends_on: ["AI内容生成"]
  
  # 并行组：同时执行
  parallel:
    - step: "配图生成"
      tool: ImageGen
      depends_on: ["AI内容生成"]
    
    - step: "SEO优化"
      tool: SEO_Tool
      depends_on: ["AI内容生成"]
    
    - step: "内链生成"
      tool: Link_Builder
      depends_on: ["AI内容生成"]
```

## Dify/Langflow 知识库模式

```
知识库构建:
  文档上传 → 文本分割 → 向量化 → 存入索引

检索:
  用户提问 → 向量搜索 → 召回Top-K → LLM总结 → 返回答案

高级RAG:
  问题 → 多路召回(向量+关键词+图谱) → 重排序 → LLM回答
```

## n8n 自动化编排

```
事件驱动自动化:
  GitHub Push → 触发构建 → 运行测试 → 通过? → 部署
                                    ↓ 失败
                                 通知开发者

定时自动化:
  每日09:00 → 抓取竞品数据 → 生成对比报告 → 推送企业微信

Webhook自动化:
  用户注册 → 发送欢迎邮件 → 创建CRM记录 → 分配销售跟进
```

## 工作流模板库（OpenGod 内置）

| 模板 | 场景 | 串行步 | 并行步 |
|------|------|:--:|:--:|
| content-factory | AI内容生产 | 4 | 3 |
| competitor-monitor | 竞品监控 | 3 | 4 |
| code-review | 代码审查 | 2 | 3 |
| research-report | 调研报告 | 5 | 2 |
| social-post | 社媒发布 | 3 | 1 |

## 在 OpenGod 中的执行方式

1. 描述需求 → 自动匹配或创建节点工作流
2. 识别可并行任务 → 同时执行
3. 识别依赖链 → 串行执行
4. 条件分支 → 根据中间结果自动路由
5. 执行完成后 → 通过 Hermes 记录效率和改进点
