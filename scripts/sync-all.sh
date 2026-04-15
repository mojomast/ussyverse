#!/usr/bin/env bash
#
# sync-all.sh — Pull latest changes for all submodules
#
# Usage:
#   ./scripts/sync-all.sh              # Pull all submodules
#   ./scripts/sync-all.sh ai-agents    # Pull only ai-agents category
#   ./scripts/sync-all.sh --init       # Initialize + pull all
#
set -euo pipefail

MONOREPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${MONOREPO_ROOT}"

INIT=false
CATEGORY=""

while [[ $# -gt 0 ]]; do
    case "$1" in
        --init|-i)
            INIT=true
            shift
            ;;
        *)
            CATEGORY="$1"
            shift
            ;;
    esac
done

echo "🐙 Ussyverse Submodule Sync"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if $INIT; then
    echo "🔄 Initializing submodules..."
    git submodule update --init --recursive
fi

if [[ -n "${CATEGORY}" ]]; then
    # Sync only a specific category
    SUBMODULES=$(git submodule status | awk '{print $2}' | grep "^projects/${CATEGORY}/")
    if [[ -z "${SUBMODULES}" ]]; then
        echo "❌ No submodules found for category: ${CATEGORY}"
        exit 1
    fi
    
    echo "🔄 Syncing category: ${CATEGORY}"
    echo "${SUBMODULES}" | while read -r sub; do
        echo "  ⬇️  $(basename "${sub}")"
        git submodule update --remote "${sub}" 2>/dev/null || echo "  ⚠️  Failed: $(basename "${sub}")"
    done
else
    # Sync all
    TOTAL=$(git submodule status | wc -l)
    echo "🔄 Syncing all ${TOTAL} submodules..."
    git submodule update --remote --merge 2>&1 | while read -r line; do
        echo "  ${line}"
    done
fi

CHANGED=$(git diff --name-only 2>/dev/null | grep "^projects/" | head -20)
if [[ -n "${CHANGED}" ]]; then
    echo ""
    echo "📦 Updated submodules:"
    echo "${CHANGED}" | while read -r f; do
        echo "  ✅ ${f}"
    done
    echo ""
    echo "💾 Commit with: git add projects/ && git commit -m 'chore: sync submodules'"
else
    echo ""
    echo "✅ All submodules up to date"
fi
