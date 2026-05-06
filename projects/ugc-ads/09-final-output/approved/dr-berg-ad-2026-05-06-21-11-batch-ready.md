# Dr. Berg Ad Batch — 2026-05-06 21:11 UTC

## Status: READY TO GENERATE (blocked: out of Pro monthly credits)

Upgrade at: https://higgsfield.ai/mcp-pricing/646b5b5f-98a3-44ba-88a9-8f2fbbc09b5c

---

## Ad 1 — UGC (preset: `ugc`)

**Model:** `marketing_studio_video`  
**Product URL:** `https://www.drberg.com/`  
**Type:** `product`  
**Aspect ratio:** `9:16`  
**Avatar auto-pick:** Miso (id=45a4bd6d-3ab9-4b05-b3dd-a887dc594a44)

**Prompt:**
> A relatable woman in her kitchen holds up a Dr. Berg D3 & K2 vitamin bottle — orange label, 10,000 IU D3 + K2, 120 capsules. She ditched 5 separate supplement bottles for this one. Direct-to-camera UGC selfie energy. Morning light, warm kitchen. Hook: 'I was taking FIVE vitamins every morning... until I found this.' Benefits: immunity, bones, mood, energy. CTA: 'Link in bio.' Vertical 9:16.

---

## Ad 2 — Product Review (preset: `product_review`)

**Model:** `marketing_studio_video`  
**Product URL:** `https://www.drberg.com/`  
**Type:** `product`  
**Aspect ratio:** `9:16`  
**Avatar auto-pick:** Omar (id=ea6c745a-1a96-4ba3-bd85-f787d43e70e5)

**Prompt:**
> Authentic product review of Dr. Berg's D3 & K2 vitamin. Reviewer covers: 10,000 IU Vitamin D3 plus 100mcg K2 in one capsule, made in USA, 120 capsules (4-month supply). Benefits: immunity support, bone health, mood, energy. Skeptical-friend-who-just-tried-it tone. Warm kitchen, morning light. Label facing camera the entire time. Vertical 9:16.

---

## Ad 3 — TV Spot (preset: `tv_spot`)

**Model:** `marketing_studio_video`  
**Product URL:** `https://www.drberg.com/`  
**Type:** `product`  
**Aspect ratio:** `9:16`  
**Avatar auto-pick:** Maria (id=bbf8e803-f10b-4e39-801c-eb12850237ab)

**Prompt:**
> Cinematic TV spot for Dr. Berg's D3 & K2 vitamin. Story: cluttered counter of 5 generic supplement bottles replaced by one orange Dr. Berg bottle on a sunlit windowsill. Emotional arc: frustration → relief → confidence. Voiceover: 'One capsule. Immunity. Bones. Mood. Energy. Everything covered.' Dr. Berg D3 & K2, 10,000 IU, made in USA. Warm morning light throughout. Vertical 9:16.

---

## Notes
- All 3 jobs attempted at 2026-05-06 21:09–21:11 UTC — blocked by credit exhaustion.
- Working product entity in library: `8854a847-934a-4b32-808a-b93ab6fe9c6b` (from drberg.com homepage, status: completed).
- Direct D3&K2 product URL (drberg.com/en-us/vitamins-supplements/d3-k2-vitamin) fails to scrape — site blocks bots.
- File upload also blocked by sandbox network policy (S3 presigned PUT returns 403).
- Once credits are added, re-run these 3 generate_video calls and they will fire immediately.
