# Project Status — UGC Ads for Dr. Berg D3 & K2

## Current step
`08-stitching` — ready for editor / VO / captions.

## What is locked
- **Creative brief:** `01-creative-brief/approved/creative-brief.md`
- **References:** `02-references/approved/product-reference.md` + `02-references/attempts/product-front.jpg`
- **Shot list with dialogue:** `03-shot-list/approved/shot-list.md`
- **Image prompts:** `04-image-prompts/approved/image-prompts.md`
- **Storyboard frames (6):** `05-storyboard-frames/approved/frames/frame-01-hook.png` … `frame-06-cta.png`
- **Seedance video prompts:** `06-video-prompts/approved/seedance-prompts.md`
- **Transition video clips (6):** `07-transition-videos/approved/clip-01-hook.mp4` … `clip-06-cta.mp4`
- **Stitching plan:** `08-stitching/approved/stitching-plan.md`

## Models used
- **Image generation:** Higgsfield → `gpt_image_2` (OpenAI) at 2K, 9:16, high quality, with the product photo passed as a media reference to lock bottle identity.
- **Video generation:** Higgsfield → `seedance_2_0` (Bytedance) at 1080p, 9:16, 5s per clip, std mode, each generated frame passed as `start_image` to lock the opening composition.

## What's left
- Layer voiceover on the 6 clips (record or synth).
- Add captions + background music.
- Export the final stitched MP4 to `09-final-output/approved/`.

## Current blocker
None — autopilot reached the natural editor handoff point.
