# Penpot 设计之眼 — 原生整合模块

来源: https://github.com/penpot/penpot (MPL 2.0)

## 设计系统核心

### Design Tokens — 单一真相源

```
┌─────────────────────────────────────────┐
│            Design Tokens                 │
│  ┌─────────┐ ┌─────────┐ ┌───────────┐  │
│  │ Colors   │ │ Typo    │ │ Spacing   │  │
│  │ ·primary │ │ ·heading│ │ ·xs:4     │  │
│  │ ·surface │ │ ·body   │ │ ·sm:8     │  │
│  │ ·text    │ │ ·mono   │ │ ·md:16    │  │
│  │ ·accent  │ │ ·size   │ │ ·lg:24    │  │
│  └─────────┘ └─────────┘ └───────────┘  │
│  ┌─────────┐ ┌─────────┐ ┌───────────┐  │
│  │ Radius   │ │ Shadows │ │ Borders   │  │
│  │ ·sm:4    │ │ ·sm:..  │ │ ·thin:1   │  │
│  │ ·md:8    │ │ ·md:..  │ │ ·thick:2  │  │
│  │ ·lg:16   │ │ ·lg:..  │ │ ·color:.. │  │
│  └─────────┘ └─────────┘ └───────────┘  │
└─────────────────────────────────────────┘
         ↓                    ↓
    CSS Variables        Tailwind Config
    --color-primary       colors.primary
```

### 6 大 Token 类别

| 类别 | 变量示例 | CSS 映射 |
|------|---------|---------|
| Color | primary.500, surface.light | --color-primary-500 |
| Typography | heading.xl, body.sm | font-size, font-weight, line-height |
| Spacing | xs(4), sm(8), md(16), lg(24), xl(32) | padding, margin, gap |
| Border Radius | sm(4), md(8), lg(16), full(9999) | border-radius |
| Shadow | sm, md, lg (x, y, blur, spread, color) | box-shadow |
| Border | thin(1px), thick(2px), color variants | border-width, border-color |

### CSS Grid Layout — 真实响应式

```css
/* Penpot 的 Grid 直接映射到 CSS Grid */
.container {
  display: grid;
  grid-template-columns: repeat(12, 1fr);
  grid-template-rows: auto;
  gap: 16px;
}

/* Flex Layout 映射 */
.row {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
  gap: 12px;
}
```

## 组件与变体系统

```
组件 = 基础结构 + 属性集

Button 组件:
├─ variant: primary | secondary | ghost | destructive
├─ size: sm | md | lg
├─ state: default | hover | active | disabled | loading
└─ icon: left | right | none

生成的变体数 = 4 × 3 × 5 × 3 = 180 种状态
```

## Design to Code 流程

```
Penpot 设计稿
    │
    ▼
MCP Server → 输出结构化 JSON
    │
    ▼
AI Agent 读取 JSON
    │
    ▼
生成对应代码:
  ├─ React/Vue 组件
  ├─ Tailwind/CSS 样式
  └─ 响应式断点逻辑
```

## 颜色系统设计规范（OpenGod 内置）

```
Light Theme 调色板:
  primary:    #7F77DD (purple-400)
  primary-bg: #EEEDFE (purple-50)
  surface:    #F9F9F9
  text:       #1A1A1A
  text-muted: #6B6B6B
  border:     #E5E5E5

  success:    #639922 (green-400)
  warning:    #EF9F27 (amber-300)
  danger:     #E24B4A (red-400)
  info:       #378ADD (blue-400)

间距系统 (8px base):
  xs: 4px   sm: 8px   md: 16px
  lg: 24px  xl: 32px  2xl: 48px

圆角系统:
  sm: 4px   md: 8px   lg: 12px   xl: 16px   full: 9999px

字体系统:
  sans: -apple-system, BlinkMacSystemFont, "Segoe UI", ...
  mono: "Fira Code", "Cascadia Code", monospace
  字号: 11/12/13/14/15/16/20/24/32
```

## 在 OpenGod 中的执行方式

当需要 UI 设计时：
1. 应用内置颜色系统 → 选择语义色（primary/surface/text/accent）
2. 使用 8px 间距网格 → 所有间距为 8 的倍数
3. 应用组件变体 → 按 variant × size × state 生成状态
4. 直接输出 Tailwind CSS 代码（无需经过 Penpot 工具）
5. 设计审查 → 用结构拓扑分析信息架构（哪些元素、什么层级关系）

_OpenGod 内置了一套完整的 Design Token 系统，可以在不安装 Penpot 的情况下直接生成高质量 UI。_
