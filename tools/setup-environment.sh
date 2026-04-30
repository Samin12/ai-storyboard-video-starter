#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DEMO_NAME="demo-walkthrough"
PROJECT_NAME="my-first-video"
OPEN_FINDER=0
REPLACE_DEMO=0

usage() {
  cat <<'EOF'
Usage: tools/setup-environment.sh [--demo-name name] [--project-name name] [--open] [--replace-demo]

Beginner setup for Claude Code workshops.

Creates:
  projects/demo-walkthrough/   a finished clickable example with real media
  projects/my-first-video/     a blank project for the user's own video

Examples:
  tools/setup-environment.sh
  tools/setup-environment.sh --open
  tools/setup-environment.sh --project-name launch-video --open
EOF
}

while [ $# -gt 0 ]; do
  case "$1" in
    --demo-name)
      DEMO_NAME="${2:-}"
      shift
      ;;
    --project-name)
      PROJECT_NAME="${2:-}"
      shift
      ;;
    --open)
      OPEN_FINDER=1
      ;;
    --replace-demo)
      REPLACE_DEMO=1
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown option: $1"
      usage
      exit 1
      ;;
  esac
  shift
done

if [ -z "$DEMO_NAME" ] || [ -z "$PROJECT_NAME" ]; then
  echo "Demo name and project name cannot be empty."
  exit 1
fi

DEMO_ARGS=("$DEMO_NAME")
if [ "$OPEN_FINDER" -eq 1 ]; then
  DEMO_ARGS+=("--open")
fi
if [ "$REPLACE_DEMO" -eq 1 ]; then
  DEMO_ARGS+=("--replace")
fi

"$ROOT_DIR/tools/setup-demo.sh" "${DEMO_ARGS[@]}"

PROJECT_TARGET="$ROOT_DIR/projects/$PROJECT_NAME"
if [ -e "$PROJECT_TARGET" ]; then
  echo "Blank project already exists: $PROJECT_TARGET"
else
  "$ROOT_DIR/tools/create-project.sh" "$PROJECT_NAME"
fi

cat > "$ROOT_DIR/projects/START_HERE_AFTER_SETUP.md" <<EOF
# Start Here After Setup

You now have two projects:

## Finished demo

\`projects/$DEMO_NAME/\`

Use this to show beginners what a completed storyboard workflow looks like.

Open these first:

- \`projects/$DEMO_NAME/05-storyboard-frames/approved/storyboard-contact-sheet.jpg\`
- \`projects/$DEMO_NAME/05-storyboard-frames/approved/frames/\`
- \`projects/$DEMO_NAME/07-transition-videos/approved/\`
- \`projects/$DEMO_NAME/09-final-output/\`

## Blank project

\`projects/$PROJECT_NAME/\`

Use this for the user's own video. Start here:

\`projects/$PROJECT_NAME/01-creative-brief/\`

Ask the user:

\`\`\`text
Do you want approval at every step, or should I use autopilot and only stop if something is risky or unclear?
\`\`\`

## Save progress to GitHub

When the user wants to upload project progress, run:

\`\`\`bash
tools/save-to-github.sh "Save storyboard project progress"
\`\`\`
EOF

echo
echo "Beginner environment ready."
echo "Finished demo: $ROOT_DIR/projects/$DEMO_NAME"
echo "Blank project:  $PROJECT_TARGET"
echo "Setup guide:    $ROOT_DIR/projects/START_HERE_AFTER_SETUP.md"

if [ "$OPEN_FINDER" -eq 1 ] && command -v open >/dev/null 2>&1; then
  open "$PROJECT_TARGET"
  open "$ROOT_DIR/projects/START_HERE_AFTER_SETUP.md"
fi
