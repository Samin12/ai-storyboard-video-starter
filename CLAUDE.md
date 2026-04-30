# Claude Code Setup Instructions

When a beginner pastes this repository URL into Claude Code and says "set this up", do this:

1. Clone the repo if it is not already cloned.
2. Run:

   ```bash
   tools/setup-environment.sh --open
   ```

3. Show the user these folders:

   ```text
   projects/demo-walkthrough/
   projects/my-first-video/
   ```

4. Explain that `projects/demo-walkthrough/` is the finished clickable example with real prompts, frames, clips, stitching notes, and final videos.
5. Explain that `projects/my-first-video/` is the blank project they will use for their own video.
6. Start the user at `projects/my-first-video/01-creative-brief/`.
7. Ask:

   ```text
   Do you want approval at every step, or should I use autopilot and only stop if something is risky or unclear?
   ```

8. Keep all generated files in the project folder:

   - Drafts and experiments go in `attempts/`.
   - Locked decisions go in `approved/`.
   - Rejected versions go in `disapproved/`.

9. If the user asks to upload or save the work to GitHub, run:

   ```bash
   tools/save-to-github.sh "Save storyboard project progress"
   ```

Do not delete the example project. It is the teaching walkthrough.
