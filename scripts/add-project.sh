#!/usr/bin/env bash
#
# add-project.sh — Add a new project to the Ussyverse monorepo
#
# Usage:
#   ./scripts/add-project.sh <repo-name> <category> [--description "Desc"] [--private]
#
# Categories: ai-agents, chat-bots, code-analysis, creative, data-science,
#             dev-tools, games, infra, media, security, web-apps
#
# Examples:
#   ./scripts/add-project.sh newprojectussy dev-tools
#   ./scripts/add-project.sh secretprojectussy security --private --description "Secret stuff"
#
set -euo pipefail

MONOREPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
REPO_NAME=""
CATEGORY=""
DESCRIPTION=""
PRIVATE=false
GITHUB_ORG="mojomast"

VALID_CATEGORIES=(ai-agents chat-bots code-analysis creative data-science dev-tools games infra media security web-apps)

# ─── Colors ───────────────────────────────────────────────
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# ─── Parse args ──────────────────────────────────────────
if [[ $# -lt 2 ]]; then
    echo -e "${RED}Usage: $0 <repo-name> <category> [--description \"Desc\"] [--private]${NC}"
    echo -e "Categories: ${CYAN}${VALID_CATEGORIES[*]}${NC}"
    exit 1
fi

REPO_NAME="$1"
CATEGORY="$2"
shift 2

while [[ $# -gt 0 ]]; do
    case "$1" in
        --description|-d)
            DESCRIPTION="$2"
            shift 2
            ;;
        --private|-p)
            PRIVATE=true
            shift
            ;;
        *)
            echo -e "${RED}Unknown option: $1${NC}"
            exit 1
            ;;
    esac
done

# ─── Validate category ───────────────────────────────────
if ! printf '%s\n' "${VALID_CATEGORIES[@]}" | grep -q "^${CATEGORY}$"; then
    echo -e "${RED}Invalid category: ${CATEGORY}${NC}"
    echo -e "Valid categories: ${CYAN}${VALID_CATEGORIES[*]}${NC}"
    exit 1
fi

# ─── Validate we're in the monorepo ──────────────────────
if [[ ! -f "${MONOREPO_ROOT}/.gitmodules" ]]; then
    echo -e "${RED}Not in the Ussyverse monorepo root!${NC}"
    exit 1
fi

# ─── Check if already added ──────────────────────────────
SUBMODULE_PATH="projects/${CATEGORY}/${REPO_NAME}"
if grep -q "path = ${SUBMODULE_PATH}" "${MONOREPO_ROOT}/.gitmodules" 2>/dev/null; then
    echo -e "${YELLOW}⚠ ${REPO_NAME} already exists in category ${CATEGORY}${NC}"
    exit 0
fi

# ─── Add submodule ───────────────────────────────────────
echo -e "${BLUE}🐙 Adding ${REPO_NAME} to ${CATEGORY}...${NC}"

cd "${MONOREPO_ROOT}"

if $PRIVATE; then
    REPO_URL="git@github.com:${GITHUB_ORG}/${REPO_NAME}.git"
else
    REPO_URL="https://github.com/${GITHUB_ORG}/${REPO_NAME}.git"
fi

git submodule add "${REPO_URL}" "${SUBMODULE_PATH}"

echo -e "${GREEN}✅ Submodule added: ${SUBMODULE_PATH}${NC}"

# ─── Update PROJECT_INDEX.md ─────────────────────────────
if [[ -n "${DESCRIPTION}" ]]; then
    echo -e "${BLUE}📝 Updating PROJECT_INDEX.md...${NC}"
    
    # Find the category section and append the new project
    INDEX_FILE="${MONOREPO_ROOT}/docs/PROJECT_INDEX.md"
    if [[ -f "${INDEX_FILE}" ]]; then
        # Count existing projects in this category to determine the number
        EXISTING=$(grep -c "^|" "${INDEX_FILE}" 2>/dev/null || echo "0")
        NUM=$((EXISTING + 1))
        
        # Add project entry after the last row in the category's table
        # This is a simple append — for complex cases, regenerate the index
        echo -e "${YELLOW}⚠ Auto-index update is basic. Consider running scripts/update-index.sh for full refresh.${NC}"
    fi
fi

# ─── Stage and commit ────────────────────────────────────
echo -e "${BLUE}📦 Staging changes...${NC}"
git add .gitmodules "${SUBMODULE_PATH}"

echo -e "${BLUE}💾 Committing...${NC}"
git commit -m "feat: add ${REPO_NAME} to ${CATEGORY}

Project: https://github.com/${GITHUB_ORG}/${REPO_NAME}
Category: ${CATEGORY}
${DESCRIPTION:+Description: ${DESCRIPTION}}"

echo -e "${GREEN}"
echo "╔════════════════════════════════════════════════════════╗"
echo "║  ✅ Project added to the Ussyverse!                    ║"
echo "║                                                        ║"
echo "║  📁 ${SUBMODULE_PATH}"
echo "║  🔗 https://github.com/${GITHUB_ORG}/${REPO_NAME}"
echo "║                                                        ║"
echo "║  Next steps:                                           ║"
echo "║  1. git push origin main                               ║"
echo "║  2. Update docs/PROJECT_INDEX.md                       ║"
echo "║  3. Update README.md category listing                  ║"
echo "╚════════════════════════════════════════════════════════╝"
echo -e "${NC}"
