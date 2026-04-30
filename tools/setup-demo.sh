#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DEMO_NAME="demo-walkthrough"
OPEN_FINDER=0
REPLACE=0

usage() {
  cat <<'EOF'
Usage: tools/setup-demo.sh [demo-name] [--open] [--replace]

Copies the finished example into projects/ so beginners can click through it
like a real generated project.

Examples:
  tools/setup-demo.sh
  tools/setup-demo.sh class-demo --open
  tools/setup-demo.sh demo-walkthrough --replace
EOF
}

while [ $# -gt 0 ]; do
  case "$1" in
    --open)
      OPEN_FINDER=1
      ;;
    --replace)
      REPLACE=1
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      DEMO_NAME="$1"
      ;;
  esac
  shift
done

SOURCE="$ROOT_DIR/examples/masterchef-pink-cup"
TARGET="$ROOT_DIR/projects/$DEMO_NAME"

if [ ! -d "$SOURCE" ]; then
  echo "Missing demo source: $SOURCE"
  exit 1
fi

mkdir -p "$ROOT_DIR/projects"

if [ -e "$TARGET" ]; then
  if [ "$REPLACE" -eq 1 ]; then
    rm -rf "$TARGET"
  else
    echo "Demo already exists: $TARGET"
    echo "Use --replace to recreate it. Keeping the existing demo."
  fi
fi

if [ ! -e "$TARGET" ]; then
  cp -R "$SOURCE" "$TARGET"
fi

cat > "$TARGET/START_HERE.md" <<EOF
# Demo Walkthrough

This is a finished storyboard video project copied from:

\`examples/masterchef-pink-cup/\`

Open these folders in order:

1. \`01-creative-brief/approved/\`
2. \`02-references/approved/\`
3. \`03-shot-list/approved/\`
4. \`04-image-prompts/approved/\`
5. \`05-storyboard-frames/approved/frames/\`
6. \`05-storyboard-frames/approved/storyboard-contact-sheet.jpg\`
7. \`06-video-prompts/approved/\`
8. \`07-transition-videos/approved/\`
9. \`08-stitching/approved/\`
10. \`09-final-output/\`

The important beginner lesson:

- Drafts live in \`attempts/\`.
- Locked files live in \`approved/\`.
- Rejected files live in \`disapproved/\`.
- The next step should only use files from \`approved/\`.
EOF

echo "Demo project ready: $TARGET"
echo "Start here: $TARGET/START_HERE.md"

if [ "$OPEN_FINDER" -eq 1 ] && command -v open >/dev/null 2>&1; then
  open "$TARGET"
fi
