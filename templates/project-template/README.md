# New Storyboard Video Project

Start here.

This folder is designed for beginners. Work in order. Do not skip approval gates unless you chose autopilot.

Each important folder includes visible placeholder notes so it is easy to understand in Finder.

If you want to see a completed example with real images, prompts, transition videos, stitching notes, and final exports, open:

```text
../demo-walkthrough/
```

If that folder does not exist yet, run this from the repo root:

```bash
tools/setup-demo.sh demo-walkthrough --open
```

## Steps

1. `01-creative-brief`
2. `02-references`
3. `03-shot-list`
4. `04-image-prompts`
5. `05-storyboard-frames`
6. `06-video-prompts`
7. `07-transition-videos`
8. `08-stitching`
9. `09-final-output`

## Folder Meaning

- `attempts/` - drafts and experiments.
- `approved/` - locked decisions.
- `disapproved/` - rejected versions.

## First Question

Ask the user:

```text
Do you want approval at every step, or should I use autopilot and only stop if something is risky or unclear?
```

Write the answer in:

`00-admin/approval-log.md`

## Where Files Go

- Rough ideas, drafts, and experiments go in `attempts/`.
- Final choices go in `approved/`.
- Rejected versions go in `disapproved/`.
- The next step should only use files from `approved/`.
