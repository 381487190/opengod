# AI Website Cloner 建造之手 — 原生整合模块

来源: https://github.com/JCodesMore/ai-website-cloner-template (MIT)

## 5 阶段克隆流水线

```
Phase 1: 侦察 Recon
├─ 截图捕获（全页 + 每个区块）
├─ 设计 Token 提取（颜色/字体/间距/圆角/阴影）
├─ 交互扫描（滚动/点击/悬停/响应式断点）
└─ 产出: design-tokens.json + 完整截图集

Phase 2: 基础建设 Foundation
├─ 更新字体配置（@font-face 或 Google Fonts）
├─ 更新颜色变量（CSS variables → Tailwind config）
├─ 下载所有资源（图片/视频/图标/SVG）
└─ 产出: 完整的项目骨架

Phase 3: 组件规格 Spec
├─ 对每个 UI 区块编写详细规格
├─ 精确 getComputedStyle() 值（px 级）
├─ 状态覆盖（hover/active/disabled/focus）
├─ 响应式行为（mobile/tablet/desktop）
└─ 产出: docs/research/components/*.md

Phase 4: 并行构建 Build
├─ 在 Git worktree 中隔离环境
├─ 每个组件分配一个 Agent
├─ 并行同时构建所有区块
└─ 产出: src/components/*.tsx

Phase 5: 组装与 QA Assembly
├─ 合并所有 worktree
├─ 连接页面路由
├─ 与原始网站视觉对比
└─ 产出: 完整的 Next.js 应用
```

## 设计 Token 提取算法

```javascript
// 伪代码 — 浏览器中运行
function extractDesignTokens() {
  const tokens = {
    colors: {
      primary: getComputedColor('[class*="primary"], [class*="brand"]'),
      background: getBgColor('body'),
      text: getTextColor('body'),
      accent: extractAccentColors(),
      semantic: { success, warning, danger, info }
    },
    typography: {
      headings: extractLevels('h1,h2,h3,h4,h5,h6'),
      body: getComputedStyle('body').fontFamily,
      sizes: extractFontSizes(),
      weights: extractFontWeights()
    },
    spacing: {
      base: extractSpacingUnit(),
      scale: [xs, sm, md, lg, xl, 2xl]
    },
    borders: {
      radius: extractBorderRadius(),
      width: extractBorderWidths()
    }
  };
  return tokens;
}
```

## 关键设计参数提取清单

| 参数 | 提取方法 | 用途 |
|------|---------|------|
| 主色调 | 统计出现最多的颜色 | CSS --primary |
| 字体系统 | body font-family | Tailwind fontFamily |
| 间距单位 | 最常见的 gap/padding 值 | Tailwind spacing |
| 圆角系统 | button/card/input 的 border-radius | Tailwind borderRadius |
| 断点 | @media 查询值 | Tailwind screens |
| 阴影层级 | box-shadow 值按强度排序 | Tailwind boxShadow |

## 技术栈输出

```
Next.js 16 (App Router)
React 19 + TypeScript
Tailwind CSS v4
shadcn/ui (Radix 组件)
Lucide React 图标
```

## 在 OpenGod 中的执行方式

当用户要求克隆网站时：
1. 侦察阶段 → 使用 Agent-Reach 的 Jina Reader 获取页面内容
2. 设计 Token → 手动分析（AI Agent 无法运行浏览器 JS）
3. 组件规格 → 用结构拓扑分析页面结构拓扑（哪些区块、什么关系）
4. 构建 → 逐组件生成代码，并行不阻塞
5. QA → 自我检查颜色/间距/圆角是否与原站一致

_注意: 完整的 getComputedStyle() 需要浏览器环境，纯 AI 代理只能做近似分析。_
