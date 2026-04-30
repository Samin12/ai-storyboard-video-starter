# Claude Code Newbie Setup

This guide is for the workshop flow where a beginner pastes the GitHub URL into Claude Code and asks it to set everything up.

## Copy-Paste Prompt

```text
Set up this AI storyboard video starter repo for me:

https://github.com/Samin12/ai-storyboard-video-starter

Please:
1. Clone the repo if needed.
2. Run the beginner environment setup.
3. Open the finished demo project in Finder so I can click around.
4. Show me where the approved images, video prompts, transition clips, stitching notes, and final videos are.
5. Create a blank project for my own video.
6. Start by helping me write the creative brief.
```

## What Claude Code Should Run

```bash
tools/setup-environment.sh --open
```

That creates:

```text
projects/demo-walkthrough/
projects/my-first-video/
projects/START_HERE_AFTER_SETUP.md
```

## What To Show In Finder

Open the finished demo first:

```text
projects/demo-walkthrough/
```

Point beginners to:

```text
01-creative-brief/approved/
02-references/approved/
04-image-prompts/approved/
05-storyboard-frames/approved/frames/
05-storyboard-frames/approved/storyboard-contact-sheet.jpg
06-video-prompts/approved/
07-transition-videos/approved/
08-stitching/approved/
09-final-output/
```

Then open the blank project:

```text
projects/my-first-video/
```

Start at:

```text
01-creative-brief/
```

## Saving Back To GitHub

After the user has generated useful project files and wants to upload progress:

```bash
tools/save-to-github.sh "Save storyboard project progress"
```

This stages the project work and final outputs, commits them, and pushes the current branch.
