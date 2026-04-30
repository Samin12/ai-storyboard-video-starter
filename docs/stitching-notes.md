# Stitching Notes

Stitching is where the video becomes one piece.

## Good Seams

A good seam usually cuts on:

- A flash
- A fast camera move
- A matching pose
- A matching object
- A sound hit
- A moment of motion blur

## Fixing Rough Seams

Use small fixes:

- Trim dead frames
- Add a tiny push-in
- Add a white flash
- Add a one-frame freeze
- Add a short crossfade
- Cut on a sound hit

Do not overuse transitions. The best transition is usually invisible.

## Beginner Checklist

Before final export, check:

- Does the character still look like the same person?
- Does the product still look like the same product?
- Does the location feel continuous?
- Does the color jump?
- Does the audio pop?
- Does the timing drag?

## Simple ffmpeg Stitch

Create a text file called `concat-list.txt`:

```text
file 'shot-01.mp4'
file 'shot-02.mp4'
file 'shot-03.mp4'
```

Then run:

```bash
ffmpeg -f concat -safe 0 -i concat-list.txt -c copy final-output.mp4
```

If the files have different frame rates, audio layouts, or codecs, re-export them to one shared format first.
