# Security Audit 安全审计 — 原生整合模块

来源: Anthropic-Cybersecurity-Skills (Trending #12, 周增 25.8k Stars)

## 817 条结构化安全技能

覆盖 6 大安全框架 + 29 个安全域：

### 六大框架映射

| 框架 | 用途 | 技能数 |
|------|------|:--:|
| MITRE ATT&CK | 攻击行为分类 | 300+ |
| NIST CSF 2.0 | 网络安全框架 | 150+ |
| MITRE ATLAS | AI系统攻击 | 120+ |
| D3FEND | 防御技术映射 | 100+ |
| NIST AI RMF | AI风险管理 | 80+ |
| MITRE F3 | 反欺诈 | 60+ |

### 29 个安全域

```
Web安全 / 云安全 / 容器安全 / API安全 / 供应链安全
移动安全 / IoT安全 / 工控安全 / AI模型安全 / 数据安全
身份认证 / 访问控制 / 加密通信 / 密钥管理 / 日志审计
威胁情报 / 漏洞管理 / 渗透测试 / 代码审计 / 配置审计
合规检查 / 隐私保护 / 事件响应 / 取证分析 / 恶意软件
社会工程 / 物理安全 / 业务连续性 / 第三方风险
```

## 安全审计标准流程

```
Step 1: Scope — 确定审计范围(代码库/API/配置/依赖)
Step 2: Framework — 选择合适的框架(MITRE/NIST/OWASP)
Step 3: Scan — 自动化扫描
  ├─ 代码静态分析 (SAST)
  ├─ 依赖漏洞检查 (SCA)
  ├─ 密钥泄露扫描
  └─ 配置合规检查
Step 4: Analyze — AI分析扫描结果
Step 5: Report — 生成审计报告(风险等级 + 修复建议)
Step 6: Verify — 验证修复是否有效
```

## 常见漏洞检测矩阵

| 漏洞类型 | 检测方法 | 严重度 |
|------|------|:--:|
| 硬编码密钥 | grep + 模式匹配 | Critical |
| SQL注入 | AST分析动态SQL拼接 | Critical |
| XSS | HTML上下文分析 | High |
| 命令注入 | Shell命令参数追踪 | Critical |
| 路径遍历 | 文件路径拼接检测 | High |
| 不安全的反序列化 | pickle/unserialize检测 | High |
| 弱加密算法 | MD5/SHA1/DES检测 | Medium |
| 权限缺失 | 端点认证检查 | High |

## 在 OpenGod 中的执行方式

当用户请求代码安全审计时：
1. 加载此模块 → 自动匹配适用框架
2. 扫描代码库(本地文件 + 依赖)
3. 按 OWASP Top 10 分类风险
4. 输出: 风险等级 + 漏洞位置 + 修复代码
5. 通过 Hermes 记录审计结果到 learnings/bugs.md
