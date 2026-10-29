#!/usr/bin/env bash
set -e

REPO="tavanhvannala677-beep/skills-screenshot-to-compose-tawan"
BRANCH="main"
RAW_URL="https://raw.githubusercontent.com/${REPO}/${BRANCH}/SKILL.md"
SKILL_NAME="screenshot-to-compose"

# Check installation target:
# Usage:
#   install.sh           -> Global install to ~/.agents/skills (works for all projects)
#   install.sh --local   -> Local install to current project's .agents/skills
if [ "$1" = "--local" ] || [ "$1" = "-l" ]; then
    TARGET_DIR=".agents/skills/${SKILL_NAME}"
    SCOPE="Local Project: $(pwd)"
else
    TARGET_DIR="$HOME/.agents/skills/${SKILL_NAME}"
    SCOPE="Global (All Projects): $HOME/.agents/skills"
fi

echo "=============================================="
echo "🚀 Installing '${SKILL_NAME}' skill..."
echo "📍 Target Scope: ${SCOPE}"
echo "=============================================="

mkdir -p "${TARGET_DIR}"

if command -v curl >/dev/null 2>&1; then
    curl -fsSL "${RAW_URL}" -o "${TARGET_DIR}/SKILL.md"
elif command -v wget >/dev/null 2>&1; then
    wget -qO "${TARGET_DIR}/SKILL.md" "${RAW_URL}"
else
    echo "❌ Error: Neither curl nor wget was found."
    exit 1
fi

echo "✅ Installed successfully!"
echo "📄 File: ${TARGET_DIR}/SKILL.md"
echo ""
echo "✨ How to use in Codex:"
echo "   Type '\$screenshot-to-compose' and attach your screenshot or Figma design!"
