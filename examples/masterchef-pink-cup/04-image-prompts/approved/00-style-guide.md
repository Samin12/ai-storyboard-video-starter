# Master Style Guide — Image Prompts

**Read this before generating any frame.** Every frame prompt is built on top of this guide. If a frame ever breaks one of these rules, the chain fails.

---

## Universal style block

Every frame prompt embeds (or implies) this block. Keep it identical across all 7:

> **STYLE:** Photorealistic, hyper-detailed, broadcast-television production quality. Shot on a Sony Venice cinema camera with a 35mm prime lens. Aspect ratio 16:9.
>
> **LIGHTING:** Bright, clean, multi-source — overhead industrial truss with bare-tube fixtures throwing hard key, kino-flo banks at both sides for soft fill. Color temperature ~4800K (slightly cool industrial white). No deep shadows. Skin tones natural and clearly readable. Background lit; no fall-off. Reference: MasterChef US, Top Chef, Hell's Kitchen production stills.
>
> **COLOR:** High dynamic range. Vibrant saturation. Cool industrial silvers and whites in the environment, warm accents from food and copper. Sharp focus throughout the frame, deep depth of field unless explicitly noted otherwise.
>
> **FORBIDDEN:** Moody/cinematic-shadow lighting. Deep blacks. Lens vignetting. Shallow-DoF face blur. Cartoon, anime, or painterly stylization. Soft focus. Faded color grade. The viewer must clearly see every detail.

---

## Character lock

The protagonist appears in all 7 frames. He must look identical across every frame.

> **THE MAN [A1]:** A man in his late 20s/early 30s, athletic medium build. Use the master Omni Reference asset A1 (built from photo plate P1) for face and identity. Hair short, neat, brown-black. Clean-shaven or light stubble — keep consistent.

**The outfit** — never changes, only gets dirtier:

> Plain white chef's apron tied at the waist with a single bow on his right hip. Underneath, a dark grey crew-neck cotton t-shirt with sleeves rolled to mid-forearm. Plain dark slim-fit chinos or jeans (only visible from waist down in some frames). White cotton kitchen towel tucked into the apron strings on his right hip. Black canvas knife roll bag — visible in F1.

---

## Apron progression (continuity tracker)

| Frame | Apron state | Specifics |
|---|---|---|
| F1 | **Pristine** | White, crisp, no marks. Knife roll over shoulder. Towel folded. |
| F2 | **Pristine** | Same as F1. Knife roll now unrolled on the station. |
| F3 | **First touches** | One streak of olive oil across the chest. Faint flour fingerprints on the right hip. Towel slightly displaced. |
| F4 | **Working stains** | Olive oil streak. Flour smudges. A thin smear of green herb oil across the stomach. Two small soot marks on the lower hem from pan handling. Towel partly yanked. |
| F5 | **Working stains** | Identical to F4 — this is the same moment in time as F4 but seconds later. **Don't add new stains here.** |
| F6 | **Wrecked** | Heavy flour dust across the chest. Multiple sauce splatters (one large red — tomato or roasted-pepper origin — across the lower right). Singed corner where a torch grazed it. Towel half-pulled-out. Visible sweat through the t-shirt at the chest and neck. |
| F7 | **Wrecked, settled** | Identical state to F6. Sweat pattern slightly larger. He's been standing still for the judging. |

---

## Clock progression (continuity tracker)

The massive central digital countdown clock is visible in some way in every frame. Bold orange-red digits on a black face. Use these readings:

| Frame | Clock | Why |
|---|---|---|
| F1 | **60:00** | Hasn't started; he's just walked in. |
| F2 | **60:00** | Frozen on display, about to start. |
| F3 | **30:00** | Deep in the cook. Halfway. |
| F4 | **24:13** | Plated early; admiring his work. |
| F5 | **08:42** | Time has passed — he stood frozen, the disaster set in. |
| F6 | **00:31** | Comeback dish landed with seconds to spare. |
| F7 | **00:00** | Service called. |

If the clock isn't framed in a particular shot, ensure no other clock-like element contradicts (e.g., don't let a wall clock show the wrong time).

---

## Environment lock — the kitchen [A2]

> **THE KITCHEN [A2]:** A vast competition kitchen in an industrial-chic warehouse-style space. 24 polished stainless-steel cooking stations laid out in two long rows, each station equipped with a flat induction surface, gas range, knife magnet, prep board, and small refrigerated drawer. Polished black floors with a subtle reflective sheen. Tall stainless and copper cookware racks along the side walls. The pass — a long horizontal stainless steel station — sits at the far end, framed by judges' positions. Industrial truss ceiling 25 feet up, dense with bare-tube fixtures and softboxes. A massive central digital countdown clock hangs above the pass, visible from every station. The space feels enormous, lit, and serious.

Use Omni Reference A2 for every frame that shows the kitchen interior.

---

## Environment lock — the pantry [A3]

> **THE PANTRY [A3]:** A vast walk-in ingredient room. Tall floor-to-ceiling shelves on both sides loaded with fresh produce in wooden crates, jars of spices, bottles of oils, hanging bunches of herbs, butcher-paper-wrapped meats on a chilled center display, fresh fish on ice. The lighting is similarly bright but adds warmer accents — pendant lights with amber bulbs over the herb shelves. Wooden floors. Felt warmer than the main kitchen, but still very visible.

Use Omni Reference A3 for the pantry frame (F3).

---

## The dishes (recurring objects)

Three plates appear in the film. Each must be its own carefully-built Omni Reference asset:

- **A4 — The Peak Dish:** A pristine restaurant-quality plate. Three perfectly seared scallops (golden crust, mother-of-pearl interior visible) arranged in a triangle on a white circular plate. Beneath them: a small swoosh of cauliflower purée. A delicate herb oil drizzle. A single edible nasturtium flower as garnish. Nothing else. Michelin-tier composition.

- **A5 — The Ruined Dish:** *The same plate as A4, but smashed on a polished black floor.* Porcelain shards radiating outward. Scallops scattered, two intact, one crushed. Cauliflower purée splattered in a long curve. Herb oil pooled. The single nasturtium flower lying upside-down a foot from the wreckage.

- **A6 — The Comeback Dish:** A *different* dish on a clean white circular plate — rustic where A4 was refined. Torn rough chunks of charred sourdough bread (visibly burnt at the edges). Wedges of blistered cherry tomato. A single perfect runny egg yolk centered, glossy and golden. Hand-torn fresh basil leaves. A bright swoosh of olive oil. Generous, abundant, almost messy. The kind of dish you'd kill to eat. Visually undeniable but *clearly not the same dish* as A4.

---

## The judges (introduced in F7)

Three judges. Always together, behind the pass. Each is a clear archetype.

- **A7 — The Veteran:** A man in his 60s. Tall. White full beard, neatly trimmed. Pale piercing blue-grey eyes. Wears an immaculate double-breasted white chef coat with embroidered monogram. Posture upright, hands often clasped behind his back. The face that has run kitchens for 40 years.

- **A8 — The Critic:** A woman in her 40s. Dark hair pulled back tight. High sharp cheekbones, neutral expression that reveals nothing. Wears a tailored dark navy blazer over a white blouse. Holds a clipboard and a black pen. Glasses pushed up on her head.

- **A9 — The Warm Heart:** A man in his 50s. Salt-and-pepper hair. Kind eyes with deep crow's-feet. Lined face that smiles easily. Wears a relaxed open chef coat over a t-shirt — less formal than the Veteran. The only one who might root for you.

Always show them as a row of three behind the pass. The Veteran on the left, the Critic in the middle, the Warm Heart on the right (from camera POV).

---

## Camera language

These are stills — no motion blur on the subject. But each frame implies its place in a moving film, so framing matters:

- **Wide hero shots (F1, F7):** low angle, subject centered, monumental scale.
- **Medium working shots (F3, F4, F6):** chest-up to waist-up, eye-level, classic broadcast-cooking-show framing.
- **Tight environmental shots (F2):** medium-tight, station and clock both visible.
- **Low angle drama (F5):** floor level, debris in foreground, tilt up to find subject.

---

## Negative prompt (universal)

Apply this to every frame:

> dark moody lighting, deep shadows, dim room, soft focus, motion blur on subject, faded color grade, vignetting, cartoon style, anime, painterly, low resolution, distorted face, extra fingers, deformed hands, multiple aprons, conflicting clothing, unreadable clock, illegible numbers, contestants in colors other than white aprons.
