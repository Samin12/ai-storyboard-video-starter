#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
MESSAGE="${1:-Save storyboard project progress}"

cd "$ROOT_DIR"

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "This folder is not a Git repository."
  exit 1
fi

git add README.md CLAUDE.md docs tools templates projects final-outputs examples

if git diff --cached --quiet; then
  echo "No changes to commit."
  exit 0
fi

git commit -m "$MESSAGE"
git push

echo "Saved to GitHub."
