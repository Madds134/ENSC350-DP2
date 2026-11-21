# Joey: DP2.1 report (diagrams and netlist checks)

**From:** Joey · **For:** Madden · **Branch:** `joey/diagrams` · **Briefs:** [joey.md](joey.md), [joey-figures.md](joey-figures.md)

## Status
| # | Figure | Status |
| --- | --- | --- |
| D1 | `Fig_BLAN_BrentKung_N8` | Revised per `joey-figures.md` |
| D2 | `Fig_BLAN_KoggeStone_N8` | Revised per `joey-figures.md` |
| D3 | `Fig_PrefixAdder_TopLevel` | Revised per `joey-figures.md` |
| D4 | `Fig_LookaheadCarryNet_N8` | Revised per `joey-figures.md` |
| D5 | `Fig_CarrySkip_Block` | Revised per `joey-figures.md` |
| D6 | `Fig_Verification_Flow` | Revised per `joey-figures.md` |
| Task 2 | Netlist checks, CarrySkip_CIV and ConditionalSum_CIV | Not started |

Each figure is in `Documentation/Images/` as an editable `.drawio` file and a PNG exported at 2× scale. All text is at least 21 px against a drawing at most 964 px wide, which is 10.2–11.3 pt when printed at page width (6.5 in). There is one font throughout, with red as the only highlight colour (blue is also used in D5).

## Revisions log (`joey-figures.md`)
- **Revised `Fig_CarrySkip_Block`:** larger font; the block is redrawn top to bottom so it is narrower, and the chain sits directly under it; a "Base = 4k, Top = 4k + 3" note is added; red marks the ripple path (cb(k) → Base … Top → rCOut(k) → OR → cb(k+1)) and blue the skip path, each with the label from the brief, and the chain uses the same colours.
- **Revised `Fig_BLAN_BrentKung_N8`:** larger font, tighter layout, and the deepest path (g(0) → Gpre(6)) highlighted in red as "deepest path: 4 merges" (see the mismatches below).
- **Revised `Fig_BLAN_KoggeStone_N8`:** larger font, tighter layout, and the bit 0 → bit 7 path highlighted in red as "bit 0 → bit 7: 3 merges".
- **Revised `Fig_LookaheadCarryNet_N8`:** larger font, and the serial cMid chain c(4) → c(6) → c(7) → c(8) highlighted in red as "carries pass down in series: about 2·log₂N levels". The leaf-level edge labels are shown on the bit 7 / bit 6 pair only, since the pattern is the same for every pair and the labels didn't fit at this font size on all four.
- **Revised `Fig_PrefixAdder_TopLevel`:** larger font and a tighter layout. No highlight, since `joey-figures.md` doesn't name one for D3.
- **Revised `Fig_Verification_Flow`:** larger font. `MakeTS.tcl` and the `TS<Candidate>` files now exist, so they are drawn solid; `MakeTS.tcl` takes its input from `Candidates.tcl` (as the script does), and the netlists go straight to the TS run. No highlight, as the brief says.

## Captions
- **D1 `Fig_BLAN_BrentKung_N8`:** Brent-Kung BLAN at N = 8: an up-sweep, an inner N = 4 BLAN on the odd positions (dashed, with its own N = 2 BLAN dotted), and a down-sweep, 11 merge cells in 5 rows. Notice that the deepest path (red, to Gpre(6)) passes only 4 merge cells, while the network uses far fewer cells than Kogge-Stone.
- **D2 `Fig_BLAN_KoggeStone_N8`:** Kogge-Stone BLAN at N = 8: at level D = 1, 2, 4 each position i ≥ D merges with i − D, 17 merge cells in 3 levels. Notice that every output, including bit 0 → bit 7 (red), is reached in only 3 merges, paid for with many more cells and long wires.
- **D3 `Fig_PrefixAdder_TopLevel`:** Top level shared by the BrentKung and KoggeStone adders: bit g/p, the BLAN, the carry stage c(i+1) = Gpre(i) + Ppre(i)·Cin, then S, Cout and Ovfl. Notice that only the BLAN block differs between the two architectures.
- **D4 `Fig_LookaheadCarryNet_N8`:** The LookaheadCarryNet halving tree (BlockLookahead) at N = 8: BG/BP go up the tree, and Cin and each node's cMid come back down to the leaves, which output the carries themselves. Notice the red cMid chain c(4) → c(6) → c(7) → c(8): carries pass down in series, about 2·log₂N levels in all.
- **D5 `Fig_CarrySkip_Block`:** One 4-bit carry-skip block (top) and three chained blocks (bottom). Base = 4k, Top = 4k + 3. Blue: skip path, used by a carry of 1. Red: ripple path, which sets the delay when the carry is 0.
- **D6 `Fig_Verification_Flow`:** Functional (FS) and timing (TS) verification share one testbench, TBAdder, with the DUT bound by an `FS<Topology>` or `TS<Candidate>` configuration. Notice that every TS input (revisions, netlists, TS scripts) is generated from the single candidate list in `Candidates.tcl`.

## Where the figures differ from the brief or the handout
1. **D1 path label:** `joey-figures.md` suggests labelling the deepest path "11 merges, 5 levels". In our code the deepest path at N = 8 (g(0) → Gpre(6)) passes through **4** merge cells: up-sweep (1), inner up-sweep (3), inner down-sweep (5), down-sweep (6). 11 is the total for the whole network and 5 is the number of rows; no single path has 5 cells, because the inner N = 2 row only feeds Gpre(7). The figure says "deepest path: 4 merges", and the caption gives the 11 and 5.
2. **D2 path label:** likewise, the bit 0 → bit 7 path has 3 merges; 17 is the network total. The figure says "3 merges", and the caption gives the 17.
3. **D5:** `joey.md` says "4 ripple full adders". The code has no full-adder component: g/p are computed once, each cell is c(i+1) = g(i) + p(i)·c(i), and the sum is S = p xor c for the whole vector. The figure draws each bit as a plain cell labelled with the code's signal names. The carry into the next block is cb(k+1), the skip-OR output, as in the code (`c(Base) <= cb(k)`).
4. **D6:** `SynthAll.tcl` also runs `CollectResults.tcl` itself at the end; the figure shows CollectResults reading the reports, which matches running it on its own.
5. **D4:** As `joey.md` says, this is our own carry tree (the BLAN64 = 2 × BLAN32 exam structure noted in `LookaheadCarryNet.vhd`), not the textbook prefix network, so the figure follows the code.
6. **Notation:** The merge cell is drawn as a circle containing ∘, with (G, P) = (G_hi + P_hi·G_lo, P_hi·P_lo). I haven't compared it against Handout 6 symbol by symbol yet.

Apart from items 1 and 2, no differences were found between the briefs' descriptions and the VHDL.

## Netlist checks (Task 2)
Not started.
- **CarrySkip_CIV:** recompiled locally (`quartus_sh -t SynthAll.tcl CarrySkip_CIV ConditionalSum_CIV`). `AdderCarrySkip.vhd` is unchanged on `main`, so this build is current. The viewers are still _to do_.
- **ConditionalSum_CIV:** the local build used the old VHDL from before `9bee52d` ("keep the recursive structure after synthesis"), so it has to be recompiled before checking.

## Who did what
- **Claude (agent, on Joey's machine):** Read the briefs, the VHDL (`BLAN.vhd`, `BLANKoggeStone.vhd`, `AdderBrentKung.vhd`, `AdderKoggeStone.vhd`, `LookaheadCarryNet.vhd`, `AdderBlockLookahead.vhd`, `AdderCarrySkip.vhd`) and the flow scripts. Drew and revised all six figures by writing a small Python script that outputs the `.drawio` XML (the merge cells and highlighted paths in D1 and D2 come from a copy of the VHDL recursion, with a check that each highlighted path follows real lo inputs), exported them with the draw.io CLI, checked each PNG visually against the code, and drafted this file. The script isn't committed, since only `Fig_*` files and this file are allowed. Also ran the CarrySkip_CIV / ConditionalSum_CIV recompile and restored the tracked files it rewrote. No timing reports were opened.
- **Joey:** Reviewed the first version of the figures and directed the changes to it: titles added and centred, explanatory text cut down to the structure and signal names, D4 retitled "Lookahead Carry Network (N = 8)", and the DP1 Conditional Sum figure (`Fig2-3_ConditionalSum`) retitled, centred and trimmed. _Fill in what else you checked or changed by hand:_
  - [ ] D1 checked against `BLAN.vhd` and Handout 6
  - [ ] D2 checked against `BLANKoggeStone.vhd`
  - [ ] D3 checked against `AdderBrentKung.vhd` / `AdderKoggeStone.vhd`
  - [ ] D4 checked against `LookaheadCarryNet.vhd`
  - [ ] D5 checked against `AdderCarrySkip.vhd`
  - [ ] D6 checked against the scripts
  - [ ] Can explain each figure in person
