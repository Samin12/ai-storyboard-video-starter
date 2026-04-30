# AI Storyboard Video Starter

A beginner-friendly repo for making controlled AI videos with a storyboard workflow.

The core idea is simple:

> Do not ask an AI video model for one long video.  
> Break the story into short shots. Lock the first frame and last frame. Generate the motion between them. Approve every step.

This repo gives you:

- A step-by-step workflow.
- A copy/paste prompt for working with any LLM.
- A reusable folder template.
- Approval gates for every phase.
- A complete example project using a MasterChef-style pink cup demo.

![Storyboard to Video](docs/images/storyboard-to-video-process.png)

## Quick Start

1. Copy this repo or run `tools/create-project.sh my-video-name`.
2. Open your new project folder.
3. Start at `01-creative-brief`.
4. Do not move files into `approved/` until you approve them.
5. Generate first and last frames before generating video.
6. Generate transition videos.
7. Stitch the approved clips.
8. Put your finished export in `09-final-output/` and optionally copy it to the repo-level `final-outputs/`.

## The Folder Rule

Every creative step has three zones:

- `attempts/` - drafts, experiments, rough ideas.
- `approved/` - locked decisions that the next step can depend on.
- `disapproved/` - rejected versions, kept for learning and comparison.

This is the whole control system. Beginners get lost when every file lives in one folder. This repo keeps decisions visible.

## The Approval Rule

At each step, ask:

> Approve this and move forward, or revise?

You can also choose an autopilot mode:

> Try your best and only stop when something is risky or unclear.

Use `templates/prompt-cards/llm-start-here.md` when working with an LLM.

## Workflow

1. Creative brief
2. Reference collection
3. Shot list
4. Image prompts
5. Storyboard frames
6. Video prompts
7. Transition videos
8. Stitching
9. Final output

Read the full process here:

- [Workflow](docs/workflow.md)
- [Approval Gates](docs/approval-gates.md)
- [Reference Types](docs/reference-types.md)
- [Stitching Notes](docs/stitching-notes.md)
- [Demo Deliverable Script](docs/demo-deliverable-script.md)

## Example

Open this folder:

[examples/masterchef-pink-cup](examples/masterchef-pink-cup)

It shows the full process using the assets from the demo:

- Creative brief
- Reference image and support cup
- First/last storyboard frames
- Video prompts
- Transition videos
- Seam/stitching review
- Final output

## Tools You Can Use

This workflow is tool-agnostic. It works with:

- GPT image models
- Nano Banana or other image generators
- Seedance, Kling, Runway, Pika, Veo, or other video generators
- Any LLM that can help write prompts
- `ffmpeg` for stitching

The important thing is not the tool. The important thing is the folder discipline and approval flow.

## Beginner Mental Model

Think like a director:

- The brief decides the story.
- References decide what must stay consistent.
- First and last frames decide the shot.
- The video model fills in the movement.
- Stitching turns short controlled shots into a longer video.

That is how you get long-form control without asking the model to remember everything at once.
