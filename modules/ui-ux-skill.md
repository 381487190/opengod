# UI/UX 设计技能 — 原生整合模块

来源融合: ui-ux-pro-max-skill(#22) + Penpot 模块

## 设计系统生成器

### 完整 Design Token 输出模板

```css
/* === OpenGod Design System v1.0 === */

:root {
  /* 主色调 — 7级渐变 */
  --color-primary-50:  #EEEDFE;
  --color-primary-100: #CECBF6;
  --color-primary-200: #AFA9EC;
  --color-primary-400: #7F77DD;
  --color-primary-600: #534AB7;
  --color-primary-800: #3C3489;
  --color-primary-900: #26215C;

  /* 语义色 */
  --color-success: #639922;
  --color-warning: #EF9F27;
  --color-danger:  #E24B4A;
  --color-info:    #378ADD;

  /* 表面色 */
  --color-bg-primary:   #FFFFFF;
  --color-bg-secondary: #F8F9FA;
  --color-bg-tertiary:  #F1F3F5;

  /* 文字色 */
  --color-text-primary:   #1A1A1A;
  --color-text-secondary: #6B7280;
  --color-text-tertiary:  #9CA3AF;

  /* 间距系统 — 8px基数 */
  --space-xs:  4px;
  --space-sm:  8px;
  --space-md:  16px;
  --space-lg:  24px;
  --space-xl:  32px;
  --space-2xl: 48px;
  --space-3xl: 64px;

  /* 圆角系统 */
  --radius-sm:  4px;
  --radius-md:  8px;
  --radius-lg:  12px;
  --radius-xl:  16px;
  --radius-full: 9999px;

  /* 字体系统 */
  --font-sans: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
  --font-mono: "Fira Code", "Cascadia Code", "JetBrains Mono", monospace;

  /* 字号 */
  --text-xs:  11px;
  --text-sm:  12px;
  --text-base: 13px;
  --text-md:  14px;
  --text-lg:  15px;
  --text-xl:  18px;
  --text-2xl: 24px;
  --text-3xl: 32px;

  /* 行高 */
  --leading-tight:  1.25;
  --leading-normal: 1.5;
  --leading-relaxed:1.625;

  /* 字重 — 仅两个 */
  --weight-normal: 400;
  --weight-medium: 500;

  /* 边框 */
  --border-thin:  0.5px solid #E5E7EB;
  --border-normal:1px solid #D1D5DB;
  --border-thick: 2px solid #9CA3AF;

  /* 过渡 */
  --transition-fast: 150ms ease;
  --transition-normal: 250ms ease;
}
```

## 组件设计模式

### Button 组件规范

```
状态表:
  default  → bg-primary-600, text-white
  hover    → bg-primary-700, shadow-sm
  active   → bg-primary-800, scale(0.98)
  disabled → bg-gray-200, text-gray-400, cursor-not-allowed
  loading  → bg-primary-600, spinner icon + "loading..."

变体:
  primary   → filled bg
  secondary → outlined border
  ghost     → transparent bg, hover bg
  danger    → bg-danger, text-white

尺寸:
  sm → h=32px, px=12px, text-sm
  md → h=40px, px=16px, text-base
  lg → h=48px, px=24px, text-md
```

### Card 组件规范

```
结构:
  ┌─────────────────────┐
  │ [Image/Icon]        │  ← 可选缩略图
  │                     │
  │ Title               │  ← 14px/500
  │ Description text... │  ← 13px/400, secondary
  │                     │
  │ [Action Button]     │  ← 右对齐
  └─────────────────────┘

样式:
  bg: var(--color-bg-primary)
  border: var(--border-thin)
  radius: var(--radius-lg)
  padding: 16px
  max-width: 360px
```

## 响应式断点系统

```css
/* 移动优先 */
/* sm */ @media (min-width: 640px)  { ... }
/* md */ @media (min-width: 768px)  { ... }
/* lg */ @media (min-width: 1024px) { ... }
/* xl */ @media (min-width: 1280px) { ... }

/* 布局列数 */
mobile:  1列 (全宽)
tablet:  2列 (50/50)
desktop: 3列 (33/33/33)
wide:    4列 (25/25/25/25)
```

## 在 OpenGod 中的执行方式

1. 用户说"设计一个XX页面" → 从 Design Token 出发
2. 自动应用间距/圆角/字号系统 → 所有数值来自 Token
3. 组件按 variant × size × state 生成所有状态
4. 响应式断点自动添加
5. 输出 Tailwind 或原生 CSS（用户自选）
