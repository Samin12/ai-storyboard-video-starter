# Stitching Plan — Final 30-second UGC Ad

## What's ready
6 vertical 9:16 clips, 5 seconds each, in `07-transition-videos/approved/`:

| Order | File | Beat | Dialogue line |
|-------|------|------|----------------|
| 1 | `clip-01-hook.mp4` | HOOK | "Wait — I was taking FIVE different vitamins every morning... until I found this one bottle." |
| 2 | `clip-02-problem.mp4` | PROBLEM (VO) | "Vitamin D, K2, magnesium, zinc, B-complex — my counter looked like a pharmacy." |
| 3 | `clip-03-reveal.mp4` | REVEAL | "Then I found Dr. Berg's D3 and K2. Ten thousand IU of D, plus K2 — both in one capsule." |
| 4 | `clip-04-demonstration.mp4` | DEMO (VO) | "One capsule a day. That's it. Immunity, bones, mood, energy — all covered." |
| 5 | `clip-05-proof.mp4` | PROOF (VO) | "10,000 IU is the dose that actually does something. Made in the USA. 120 capsules." |
| 6 | `clip-06-cta.mp4` | CTA | "Stop wasting money on five separate bottles. Link's in my bio — go grab one." |

## Stitching steps (CapCut / Premiere / DaVinci / ffmpeg)

1. **Import all 6 clips** in order on a single video track. Total runtime: 30s.
2. **Strip Seedance native audio** — it's auto-generated ambience and may not match the dialogue. Mute every clip's audio track.
3. **Record (or generate) the voiceover** for the 6 dialogue lines from the table above. Options:
   - Record yourself or talent on a phone mic.
   - Use ElevenLabs / Higgsfield voice for a synthetic creator voice.
   - Hire a UGC voiceover gig on Fiverr (search "UGC ad voiceover female").
4. **Lay the VO** on a second audio track. Time-stretch each clip ±0.3s if needed so the VO lands cleanly inside its 5s window. Shots 1, 3, 6 are mouth-on-camera — sync to lip movement. Shots 2, 4, 5 are voice-over (no on-screen mouth) — flexible timing.
5. **Add captions** burned into the video. Use the dialogue text. Big bold sans-serif (Inter / Helvetica / Montserrat 80pt+), white with black drop shadow or thick stroke. Centered, lower-third on people shots, mid-frame on product shots.
6. **Background music** — optional but recommended. Pick a low, upbeat, lo-fi or trendy royalty-free track from Epidemic Sound / Artlist. Duck under VO to ~-18 dB during dialogue, ~-10 dB during product shots.
7. **Add a CTA card on shot 6** — animated text "LINK IN BIO" or "Shop Dr. Berg" at the bottom of the frame, last 2 seconds.
8. **Add a 0.3s cross-dissolve** between shots, OR leave hard cuts (more authentic UGC feel).
9. **Export** as 1080×1920 H.264 MP4, 30 fps, ~10 Mbps to `09-final-output/approved/final-ad-v1.mp4`.

## Quick ffmpeg concat (no edits, just stitched)

```bash
cd projects/ugc-ads/07-transition-videos/approved
printf "file 'clip-01-hook.mp4'\nfile 'clip-02-problem.mp4'\nfile 'clip-03-reveal.mp4'\nfile 'clip-04-demonstration.mp4'\nfile 'clip-05-proof.mp4'\nfile 'clip-06-cta.mp4'\n" > concat.txt
ffmpeg -f concat -safe 0 -i concat.txt -c copy ../../09-final-output/approved/final-ad-v1-rough.mp4
```

This gives you a rough 30-second cut with the original Seedance audio. Use it as a sanity check, then replace audio in your editor for the polished version.

## Variants to A/B test
Once v1 is shipped, the cheapest variants are:
- **Different hook line** (regenerate clip 1 only with Seedance using the same start_image but new prompt).
- **Different CTA** (regenerate clip 6 with "$5 off code in bio" or similar).
- **Different talent ethnicity / age / gender** (regenerate frames 1, 3, 4, 6 with new image prompt, then redo videos).
