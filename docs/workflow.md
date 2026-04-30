# Workflow

This is the recommended end-to-end process.

## 0. Choose Control Mode

Before the work starts, ask the user:

> Do you want approval at every step, or should I try my best and only stop when something is risky or unclear?

Default for beginners: approval at every step.

## 1. Creative Brief

Goal: decide what the video is about.

Create:

- Story premise
- Audience
- Format
- Mood
- Main character or product
- Required references
- What must not drift

Approval gate:

> Does this brief match the video you want?

Approved file goes in:

`01-creative-brief/approved/`

## 2. References

Goal: collect the visual anchors.

For product videos, ask for:

- Product photos
- Logo
- Packaging
- Brand colors
- Any required product angle

For SaaS videos, ask for:

- App screenshots
- Logo
- Dashboard pages
- UI states
- Brand style

For fun or cinematic videos, ask for:

- Character reference
- Location reference
- Style reference
- Props or objects that must repeat

Approval gate:

> Are these the references we should lock?

Approved assets go in:

`02-references/approved/`

## 3. Shot List

Goal: break the video into short shots.

Each shot should have:

- Shot number
- First frame
- Last frame
- Duration
- Emotional beat
- What changes
- What must stay consistent

Approval gate:

> Is this the right sequence before we write prompts?

Approved shot list goes in:

`03-shot-list/approved/`

## 4. Image Prompts

Goal: create the first and last frame prompts.

Do not generate video yet.

For every shot, write:

- First-frame prompt
- Last-frame prompt
- Reference images to use
- Continuity rules
- Negative prompt

Approval gate:

> Are these image prompts strong enough to generate storyboard frames?

Approved prompts go in:

`04-image-prompts/approved/`

## 5. Storyboard Frames

Goal: generate and approve the visual bookends.

Generate:

- Frame 01
- Frame 02
- Frame 03
- Continue until the storyboard is complete

For each shot:

- The last frame of one shot usually becomes the first frame of the next.
- Keep character, product, wardrobe, location, and lighting consistent.

Approval gate:

> Do these frames look consistent enough to become video anchors?

Approved frames go in:

`05-storyboard-frames/approved/`

## 6. Video Prompts

Goal: describe the motion between the locked frames.

Each video prompt should include:

- First frame reference
- Last frame reference
- Duration
- Camera movement
- Subject motion
- Timing beats
- Continuity locks
- What to avoid

Approval gate:

> Are these video prompts ready to run?

Approved prompts go in:

`06-video-prompts/approved/`

## 7. Transition Videos

Goal: generate each short video.

Keep the first and last frames as anchors.

Create attempts until one works.

Approval gate:

> Does this clip move correctly from the first frame to the last frame?

Approved clips go in:

`07-transition-videos/approved/`

## 8. Stitching

Goal: assemble the approved clips.

Check:

- Frame seams
- Audio seams
- Color jumps
- Character drift
- Product drift
- Timing

Use cuts, zooms, flashes, freezes, or crossfades only when they help hide a seam.

Approval gate:

> Does this feel like one continuous video?

Approved stitching files go in:

`08-stitching/approved/`

## 9. Final Output

Goal: export the final video.

Put final exports in:

`09-final-output/`

Optionally copy the strongest final file to:

`/final-outputs/`

This makes the finished work easy to find.
