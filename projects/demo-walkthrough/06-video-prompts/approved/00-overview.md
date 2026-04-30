# Video Prompts — Overview

Six video segments. Seedance 2.0. First-frame / last-frame chained.

```
F1 ──[Shot 1: 8s]──> F2 ──[Shot 2: 12s]──> F3 ──[Shot 3: 10s]──> F4 ──[Shot 4: 12s]──> F5 ──[Shot 5: 15s]──> F6 ──[Shot 6: 14s]──> F7
```

**Total runtime: 71 seconds.**

---

## Universal style block (applies to every shot)

> Photorealistic, hyper-detailed, broadcast-television cooking competition aesthetic (MasterChef US / Top Chef production look). Shot on Sony Venice cinema camera with a 35mm prime lens, 16:9.
>
> Lighting: bright multi-source — overhead industrial truss with bare-tube fixtures throwing hard key, kino-flo banks at both sides for soft fill, color temperature ~4800K, no deep shadows. Skin tones natural and clearly readable. Background lit; no fall-off.
>
> Color: high dynamic range, vibrant saturation, cool industrial silvers and whites with warm food and copper accents. Sharp focus throughout the frame except where shallow depth of field is explicitly called for.
>
> The viewer must clearly see every detail at all times.

---

## Continuity through-lines

These never break across the 6 shots:

- **Same character (Omni Reference A1)** — face, body, hair, energy
- **Same outfit** — white apron, dark grey crew-neck tee with sleeves rolled, white towel on right hip — apron only gets *dirtier*, never changes design
- **Same kitchen (Omni Reference A2)** — same architecture, same lighting, same clock
- **The countdown clock** progresses: 60:00 → 60:00 → falling → 24:13 → 08:42 → 00:31 → 00:00

If any single one of these breaks, the chain visibly snaps and the cut betrays itself.

---

## Pacing arc across the full 71 seconds

```
SHOT 1     SHOT 2     SHOT 3     SHOT 4     SHOT 5     SHOT 6
nerves →   chaos →    flow →     collapse → rebirth →  verdict
LOW        HIGH       MEDIUM     HIGH       VERY HIGH  MEDIUM→HIGH
density    density    density    density    density    density
```

The reel breathes between high-density bursts and low-density beats. Shot 5 is the densest (rapid-cut montage). Shot 1 and Shot 4's tail are the sparsest (held silences).

---

## Sound design notes (do NOT generate a finished video without thinking about this)

Each shot has a sound design arc paired with its visual arc:

- **Shot 1:** ambient kitchen hum, distant clatter, single low orchestral pulse rising. Heartbeat-like.
- **Shot 2:** starter buzzer, then full-volume kitchen war — pans clanging, shouts, footfalls, aggressive percussion.
- **Shot 3:** kitchen sound recedes. Solo piano or strings under the cooking. We're inside his head.
- **Shot 4:** loud collision, then **HARD CUT TO SILENCE** on the broken plate. Hold the silence.
- **Shot 5:** silence, single drum hit, another, full-tempo orchestral fight music building under rapid cuts. Climaxes on the final plate landing.
- **Shot 6:** ambient room tone only. Forks scraping. Breath. Silence during the judges' faces. Score doesn't return until the Critic smiles — then it floods in, big and warm. Single sustained note holds into the cut to black.

The silence-after-impact (Shot 4) and the silence-during-judging (Shot 6) are non-negotiable.

---

## Generation notes

1. **Generate stills first** (frames F1–F7). Don't start video gen until every still is locked.
2. **Generate video segments in order** (Shot 1 first, then Shot 2, etc.). Watching them assemble in story order helps you spot continuity breaks early.
3. **Each video segment uses its first frame and last frame as Seedance 2.0 anchors.** The prompt describes everything that happens between them.
4. **If a video drifts in identity, lighting, or apron state**, regenerate with stronger emphasis on the anchor frames. Don't accept drift.

---

## File index

- [shot-01-walk-to-station.md](shot-01-walk-to-station.md) — F1 → F2, 8s, "the entrance"
- [shot-02-sprint-to-pantry.md](shot-02-sprint-to-pantry.md) — F2 → F3, 12s, "the explosion"
- [shot-03-flow-state.md](shot-03-flow-state.md) — F3 → F4, 10s, "the dance"
- [shot-04-the-collapse.md](shot-04-the-collapse.md) — F4 → F5, 12s, "the fall"
- [shot-05-rebirth.md](shot-05-rebirth.md) — F5 → F6, 15s, "the comeback"
- [shot-06-the-verdict.md](shot-06-the-verdict.md) — F6 → F7, 14s, "the win"
