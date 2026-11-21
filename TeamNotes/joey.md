# Joey: DP2.1 Task Brief (diagrams and netlist checks)

**From:** Madden · **For:** Joey and Joey's Claude agent (using the draw.io CLI) · **Written:** 2026-11-21
**Time box:** until **2:30 pm today (Sat 2026-11-21)**. DP2.1 is due Sunday 2026-11-22. Do the tasks in order; stop at 2:30 and hand over whatever is finished.

## Context (read first)
ENSC 350 DP2 is a 64-bit adder (`entity Adder`, generic N, ports A, B, Cin → S, Cout, Ovfl), built 7 ways and synthesized on 3 FPGAs (21 candidates). Every design passes functional simulation, and all 21 are synthesized. Timing simulation is in progress.

The report needs **our own architecture diagrams**. Course guidelines §4.2–4.3 forbid screenshots from netlist viewers or wave windows, so every figure must be drawn. That's the main job here.

| Design | Source to draw from | Idea |
| --- | --- | --- |
| BLAN, Brent-Kung | `SourceCode/BLAN.vhd` (architecture `BrentKung`) | Textbook prefix network: GP[i,i] in, GP[i,0] out. Recursive: **up-sweep** merges pairs (2i+1, 2i), an **inner** BLAN runs on N/2, then a **down-sweep** fixes the even positions 2i (i ≥ 1). Position 0 is a wire |
| BLAN, Kogge-Stone | `SourceCode/BLANKoggeStone.vhd` | log₂N levels. At level k the distance is D = 2^(k−1): position i **merges** with i−D if i ≥ D, and otherwise **passes** through |
| Merge cell (∘) | both BLAN files | (G, P) = (G_hi + P_hi·G_lo, P_hi·P_lo) |
| Prefix adder top level | `SourceCode/AdderBrentKung.vhd`, `AdderKoggeStone.vhd` | g = A·B, p = A⊕B → BLAN → c(i+1) = G[i,0] + P[i,0]·Cin → S = p ⊕ c, Cout = c(N), Ovfl = c(N) ⊕ c(N−1) |
| LookaheadCarryNet (BlockLookahead) | `SourceCode/LookaheadCarryNet.vhd`, `AdderBlockLookahead.vhd` | Radix-2 halving tree that outputs **carries**, not prefixes. Each node: cMid = BG_lo + BP_lo·Cin feeds the high half; BG = BG_hi + BP_hi·BG_lo, BP = BP_hi·BP_lo go up. Leaf: c(1) = g + p·Cin |
| CarrySkip | `SourceCode/AdderCarrySkip.vhd` | 16 blocks of 4 bits. Inside a block the carry ripples. Block propagate BP = AND of the 4 p's. Skip: cb(k+1) = rCOut(k) + BP(k)·cb(k). `keep` on `cb` and `rCOut` |

Course reference: **Handout 6 (L06)**, block look-ahead / BLAN, covering the merge cell, Brent-Kung and Ladner-Fischer, plus carry-skip on pp. 7–8. Use **your own copy** of the handout for notation, and match its symbols (∘ cell, G/P) where you can.

## Task 1: Architecture diagrams (main task, about 2 h)
Draw each at **N = 8**, which is readable; the report states that it scales to 64. Label signals with the **names used in the VHDL**.

| # | File (in `Documentation/Images/`) | Content |
| --- | --- | --- |
| D1 | `Fig_BLAN_BrentKung_N8` | Brent-Kung BLAN at N = 8: inputs (g,p)₀…₇ at the top, ∘ cells, (G,P)[i,0] outputs at the bottom. Mark the up-sweep, the inner N = 4 BLAN (dashed box) and the down-sweep. It should show **11 merges** (formula 2N − 2 − log₂N) |
| D2 | `Fig_BLAN_KoggeStone_N8` | Kogge-Stone at N = 8: 3 levels (D = 1, 2, 4). ∘ where i ≥ D, a plain wire (pass) where i < D. It should show **17 merges** (N·log₂N − (N−1)) |
| D3 | `Fig_PrefixAdder_TopLevel` | The shared top level for BrentKung and KoggeStone: bit g/p → BLAN box → carry stage (G[i,0] + P[i,0]·Cin) → sum XOR, Cout, Ovfl. One figure serves both |
| D4 | `Fig_LookaheadCarryNet_N8` | The halving tree at N = 8: the root splits into two N = 4 nodes, then N = 2, then leaves. At each node show cMid going to the high half and BG/BP going up. Make the contrast with D1 clear: **this tree produces carries, not prefixes** |
| D5 | `Fig_CarrySkip_Block` | One 4-bit block: 4 ripple full adders, the 4-input AND for BP, the OR for cb(k+1) = rCOut + BP·cb. Add a small strip of 3 blocks chained together to show the skip path. Mark `keep` on cb/rCOut |
| D6 | `Fig_Verification_Flow` | `Candidates.tcl` → `SynthAll.tcl` (Quartus: 21 revisions, `Adder.sdc`) → `.vho`/`.sdo` in `Simulation/ModelSim/` → `MakeTS.tcl` → `TS<Candidate>.do` + `SourceCode/TimingConfigurations/TS<Candidate>.vhd` → `TBAdder` (component DUT bound by configuration; netlist in its own library) → transcripts → `CollectResults.tcl` / `CollectTiming.tcl` → CSVs. The FS path is the same, but with `FS<Topology>` configurations bound to the RTL architectures |

**Format:**
- Save the editable `.drawio` **and** a PNG export (draw.io CLI: `drawio -x -f png -s 2 -o <file>.png <file>.drawio`).
- Match the style of the existing DP1 figures in `Documentation/Images/`: white background, black lines, sans-serif labels, no colour fills except to highlight one path.
- **Check each figure against the VHDL,** not only against the handout. Where our code differs from the textbook (for example, D4 is not a textbook prefix network), draw our code.
- Put one line under each figure in `TeamNotes/joey-report.md` saying what it shows, so Madden can write the captions.

## Task 2: Netlist checks for CarrySkip and ConditionalSum (about 30 min, only if Task 1 is done)
Build outputs aren't in git, so recompile just these two (Quartus GUI closed):
```
quartus_sh -t SynthAll.tcl CarrySkip_CIV ConditionalSum_CIV
```
Then, in Quartus (open `DP2.qpf`, pick the revision), use Tools → Netlist Viewers → **RTL Viewer** and **Technology Map Viewer (Post-Fitting)**:
- **CarrySkip_CIV:** is each block's skip OR, cb(k+1) = rCOut + BP·cb, still in the **post-fit** netlist? Or did Quartus reduce it to a plain ripple? (Cost: 224 LE against 177 predicted.)
- **ConditionalSum_CIV:** are the parallel conditional sum/carry selections still there, or did it partly collapse to a ripple? (Cost: 187 LE against about 230 predicted.)

Write **a few sentences per design** in `TeamNotes/joey-report.md`. **No screenshots in the report**; a capture kept only as working evidence may go in `Documentation/Images/` with a name starting `Evidence_`.

## Rules (agent: follow strictly)
- **Work on branch `joey/diagrams`.** Commit there and push the branch; never push to `main`.
- **Create only:** files in `Documentation/Images/` (`Fig_*`, `Evidence_*`) and `TeamNotes/joey-report.md`.
- **Do not edit** anything in `SourceCode/`, `Simulation/`, the Tcl scripts, `Adder.sdc`, or any `.qpf`, `.qsf` or `.mpf`. If something looks wrong, write it in the report instead.
- **Do not open Timing Analyzer reports and do not report any timing numbers** (`*.sta.rpt`, `*.sta.summary`, `Documentation/OutputFiles/CriticalPath_*`, `TS*.txt`). Madden's delay predictions are not logged yet, and seeing results first would invalidate them. Cost numbers are fine.
- Do not commit build output (`db/`, `output_files/`, `Simulation/work/`), and don't add agent config files (`CLAUDE.md`, `.claude/`, `AGENTS.md`).
- **Honest records:** in `joey-report.md`, say which parts the agent drew and which parts Joey checked or changed by hand. Joey's log must only claim what Joey did. Joey should be able to explain each diagram in person.

## Hand-back (by 2:30 pm)
Push `joey/diagrams` and message Madden with:
1. which diagrams are done, and which are partial or not started;
2. `TeamNotes/joey-report.md`: a one-line caption per figure, the netlist findings, and what the agent did versus what Joey did;
3. any place where a diagram disagrees with the VHDL or the handout.
