# Joey: Figure Revisions (follow-up to `joey.md`)

**From:** Madden · **For:** Joey and Joey's Claude agent (draw.io CLI) · **Written:** 2026-11-21
**Focus:** revise the figures on `joey/diagrams` so they're report-ready. Do this **before** anything else in `joey.md`. Same branch and same rules as `joey.md`: edit only `Documentation/Images/Fig_*` and `TeamNotes/joey-report.md`, and push only `joey/diagrams`.

## 1. The CarrySkip figure (`Fig_CarrySkip_Block`): specific fixes
The logic is **correct**; it was checked against `SourceCode/AdderCarrySkip.vhd` (ripple through Base…Top, rCOut(k), BP(k) = AND of the 4 p's, cb(k+1) = rCOut(k) + BP(k)·cb(k), `keep` on cb/rCOut, cb(0) = Cin). Don't change the logic. Fix the presentation:

1. **Larger text.** The labels are far too small for the drawing. Use **10–11 pt minimum at the printed size** (the figure will be about page width). The DP1 marker wrote "make the text bigger" on a figure like this one.
2. **Remove the white space.** Close the gap between the block and the chain, and trim the margins. The DP1 marker also wrote "avoid white spaces". Putting the chain beside the block, or directly under it with no gap, is fine.
3. **Define Base and Top in the figure**, as a small note: `Base = 4k, Top = 4k + 3`.
4. **Colour the two paths the report discusses** (this is the most important change):
   - **Blue = the skip path** (already done). Add the label **"skip: carry = 1 passes in one step (vector #3)"**.
   - **Red = the ripple path:** cb(k) → Base → Base+1 → Base+2 → Top → rCOut(k) → OR → cb(k+1). Add the label **"critical when the carry is 0 (vector #2): the OR output can't settle until rCOut does"**.
   - In the chain strip, colour the same two paths the same way.
   - *Why:* measured from 'X', a carry of 0 can't use the OR skip, so CarrySkip ends up slower than Ripple (44.85 vs 38.98 ns on Cyclone IV). The figure should *show* that reason (Guidelines §4.2: "coloured annotations that point to what the text discusses").
5. **The caption** (put it in `joey-report.md`, not inside the image):
   *"One 4-bit carry-skip block (top) and three chained blocks (bottom). Base = 4k, Top = 4k + 3. Blue: skip path, used by a carry of 1. Red: ripple path, which sets the delay when the carry is 0."*

## 2. Apply the same checklist to every other figure (D1–D6)
For each `Fig_*` file:
- [ ] **Text 10–11 pt minimum** at the printed size; same font everywhere.
- [ ] **No large white space**: tight margins, compact layout.
- [ ] **Labels match the VHDL signal names exactly** (g, p, G, P, Gpre, Ppre, cMid, BG, BP, cb, rCOut, c(i)…).
- [ ] **A connection dot** wherever lines join; few line crossings.
- [ ] **A title** in the figure, and the **caption in `joey-report.md`**: one sentence on what it shows, one on what to notice.
- [ ] **One coloured highlight** of the thing the report discusses, for example:
  - Brent-Kung (D1): the deepest path (a down-sweep position such as bit 6 at N = 8); label it "11 merges, 5 levels".
  - Kogge-Stone (D2): one full path from bit 0 to bit 7; label it "17 merges, 3 levels".
  - LookaheadCarryNet (D4): the serial cMid chain to the top bit (c4 → c6 → c7 at N = 8); label it "carries pass down in series: about 2·log₂N levels".
  - Verification flow (D6): no highlight needed.
- [ ] Export the PNG at 2× scale (`drawio -x -f png -s 2 -o <file>.png <file>.drawio`) and keep the `.drawio`.

**Don't change any logic** unless it disagrees with the VHDL. If it does, write the disagreement in `joey-report.md` and leave the figure as it is.

## 3. Hand-back
Push `joey/diagrams` and message Madden with: which figures are revised, the captions (in `joey-report.md`), and any mismatch with the VHDL. Log the specific figures you changed (e.g. "Revised Fig_CarrySkip_Block: font, layout, critical-path colouring"), not "worked on diagrams".
