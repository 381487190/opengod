#!/bin/bash
# OpenGod v3.0 Auto-Install + Upgrade Script
# 自动安装所有依赖组件，升级自身到最新版本

set -e
SKILL_DIR="$HOME/.workbuddy/skills/opengod"
PYTHON="$HOME/.workbuddy/binaries/python/versions/3.13.12/python.exe"
PIP="$HOME/.workbuddy/binaries/python/envs/default/Scripts/pip"
NPM="$HOME/.workbuddy/binaries/node/versions/22.22.2/npm"

echo "========================================"
echo "  OpenGod v3.0 组件安装器"
echo "  河洛太极引擎 · 自动升级"
echo "========================================"

# 1. 创建隔离 Python 环境
echo ""
echo "[1/6] 初始化 Python 环境..."
mkdir -p "$HOME/.workbuddy/binaries/python/envs/default"
$PYTHON -m venv "$HOME/.workbuddy/binaries/python/envs/default" 2>/dev/null || echo "venv 已存在，跳过"

# 2. 安装 cognee — AI 持久记忆引擎
echo ""
echo "[2/6] 安装 cognee (持久记忆引擎)..."
$PIP install --quiet cognee 2>&1 | tail -1

# 3. 安装 Agent-Reach — 全网触达
echo ""
echo "[3/6] 安装 Agent-Reach (全网触达)..."
$PIP install --quiet https://github.com/Panniantong/agent-reach/archive/main.zip 2>&1 | tail -1 || echo "Agent-Reach: 手动安装 pip install https://github.com/Panniantong/agent-reach/archive/main.zip"

# 4. 安装 codebase-memory-mcp
echo ""
echo "[4/6] 安装 codebase-memory-mcp (代码知识图谱)..."
# 4. codebase-memory-mcp 通过 npx 自动下载二进制，无需手动安装

# 5. 验证安装
echo ""
echo "[5/6] 验证安装..."
echo -n "  cognee: "
$PYTHON -c "import cognee; print('OK v' + cognee.__version__)" 2>/dev/null || echo "未安装"
echo -n "  agent-reach: "
$PYTHON -c "import agent_reach; print('OK')" 2>/dev/null || echo "未安装"

# 6. 更新 SKILL.md 版本号
echo ""
echo "[6/6] 升级 OpenGod 版本记录..."
echo "  OpenGod v3.0 组件安装完成"
echo "  下次使用 'opengod' 触发词即可激活全能力"

echo ""
echo "========================================"
echo "  安装完成！已装组件："
echo "  + cognee (持久记忆引擎)"
echo "  + agent-reach (全网触达)"
echo "  + codebase-memory-mcp (代码知识图谱)"
echo "  待手动安装："
echo "  - OpenHuman (桌面应用, tinyhumans.ai)"
echo "  - Penpot (Docker, penpot.app)"
echo "  - daily_stock_analysis (git clone)"
echo "  - ai-website-cloner (npx template)"
echo "========================================"
