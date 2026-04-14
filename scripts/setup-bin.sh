#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="${DOTFILES_DIR:-$HOME/GitHub/dotfiles}"
SOURCE_DIR="$DOTFILES_DIR/bin"
TARGET_DIR="$HOME/.local/bin"
BACKUP_DIR="$HOME/.local/backup/bin-$(date +%Y%m%d-%H%M%S)"

mkdir -p "$TARGET_DIR"

for src in "$SOURCE_DIR"/*; do
  [ -e "$src" ] || continue
  name="$(basename "$src")"
  dest="$TARGET_DIR/$name"

  if [ -L "$dest" ]; then
    current="$(readlink "$dest" || true)"
    if [ "$current" = "$src" ]; then
      echo "skip: $dest already linked"
      continue
    fi
  fi

  if [ -e "$dest" ] || [ -L "$dest" ]; then
    mkdir -p "$BACKUP_DIR"
    mv "$dest" "$BACKUP_DIR/$name"
    echo "backup: $name -> $BACKUP_DIR/$name"
  fi

  ln -s "$src" "$dest"
  chmod +x "$src"
  echo "link: $dest -> $src"
done
