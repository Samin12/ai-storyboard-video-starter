#!/usr/bin/env bash
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: tools/create-project.sh my-video-name"
  exit 1
fi

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SLUG="$1"
TARGET="$ROOT_DIR/projects/$SLUG"

if [ -e "$TARGET" ]; then
  echo "Project already exists: $TARGET"
  exit 1
fi

mkdir -p "$ROOT_DIR/projects"
cp -R "$ROOT_DIR/templates/project-template" "$TARGET"

echo "Created project: $TARGET"
echo "Start here: $TARGET/README.md"
