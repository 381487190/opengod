# Video Production 视频工厂 — 原生整合模块

来源: OpenMontage (Trending #1, 周增 29.8k Stars)

## 12 条视频生产线

| # | 流水线 | 产出 | 最佳场景 |
|---|--------|------|---------|
| 1 | Animated Explainer | AI解说教育视频 | 教程/科普 |
| 2 | Animation | 动态图形/文字动画 | 社媒/产品演示 |
| 3 | Avatar Spokesperson | 虚拟人视频 | 企业/培训 |
| 4 | Cinematic | 电影级预告片 | 品牌/推广 |
| 5 | Clip Factory | 长视频→短视频批量 | 内容再利用 |
| 6 | Documentary Montage | 库存素材蒙太奇 | 视频论文/B-roll |
| 7 | Hybrid | 素材+AI增强视觉 | 现有素材升级 |
| 8 | Localization & Dub | 字幕/配音/翻译 | 多语分发 |
| 9 | Podcast Repurpose | 播客→视频 | 音频内容视频化 |
| 10 | Screen Demo | 软件屏幕录制 | 产品演示 |
| 11 | Talking Head | 演讲者视频 | 演讲/Vlog |
| 12 | AI Short Film | AI短片 | 创意叙事 |

## 标准生产流水线 (7阶段)

```
Research → Proposal → Script → Scene_Plan → Assets → Edit → Compose
  研究       提案       脚本       分镜        素材      剪辑     合成
```

每个阶段有独立的 Director Skill 指导 AI 执行。

## 工具评分矩阵 (7维度)

| 维度 | 权重 | 说明 |
|------|:--:|------|
| 任务适配度 | 30% | 此工具是否最适合该任务 |
| 输出质量 | 20% | 画面/音频质量 |
| 控制特性 | 15% | 可控参数数量 |
| 可靠性 | 15% | 失败率/稳定性 |
| 成本效率 | 10% | API费用 |
| 延迟 | 5% | 生成速度 |
| 连续性 | 5% | 风格一致性 |

## 在 OpenGod 中的执行方式

```
用户: "做一个AI绘画教程视频"
  │
  ▼
Content-Factory 模块 → 生成脚本
  │
  ▼
Video Production 模块 → 匹配流水线(Animated Explainer)
  │
  ▼
7阶段自动推进:
  Research → WebSearch 最新AI绘画趋势
  Proposal → Agent Loop 生成提案(需用户确认)
  Script → LLM 生成分镜脚本
  Scene_Plan → 映射到 agnes-ai 图像生成
  Assets → 调用 agnes-image-gen 配图
  Edit → workflow-engine 编排素材顺序
  Compose → 建议输出格式(MP4/GIF)
```

_完整渲染需外部视频工具(FFmpeg/Remotion)，此模块处理到 Edit 阶段。_
