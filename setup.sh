#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export DOTFILES_DIR="$SCRIPT_DIR"

echo "=== Claude Code commands ==="
bash "$SCRIPT_DIR/scripts/setup-claude-commands.sh"

echo ""
echo "=== bin scripts ==="
bash "$SCRIPT_DIR/scripts/setup-bin.sh"

echo ""
echo "Setup complete."
