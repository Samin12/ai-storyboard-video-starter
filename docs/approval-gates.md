# Approval Gates

Approval gates prevent drift.

Every step should produce a visible artifact before the next step starts.

## The Three Folders

Use these folders at every stage:

- `attempts/` for rough versions.
- `approved/` for locked versions.
- `disapproved/` for rejected versions.

Never delete a rejected attempt if it teaches something. Move it to `disapproved/` and write one sentence explaining why.

## Suggested Approval Message

Use this after every stage:

```text
Here is the current result.

Approve this and move forward, or revise?

If revising, tell me what feels wrong:
- Story
- Character
- Product
- Location
- Style
- Timing
- Other
```

## What Approval Means

Approval means:

- The next step can depend on this file.
- The file should be copied into `approved/`.
- Future prompts should reference the approved file.

## What Disapproval Means

Disapproval means:

- Keep the file for comparison.
- Move it into `disapproved/`.
- Make a new attempt.
- Do not build later steps from it.

## Autopilot Mode

Sometimes the user wants speed.

Use this message:

```text
I can ask for approval at every step, or I can use autopilot and only stop if something is risky or unclear.
```

Autopilot still uses the same folders. It just means the assistant makes reasonable calls without waiting for every approval.
