# Joey: DP2.1 report (diagrams and netlist checks)

**From:** Joey · **For:** Madden · **Branch:** `joey/diagrams` · **Brief:** [joey.md](joey.md)

## Status
| # | Figure | Status |
| --- | --- | --- |
| D1 | `Fig_BLAN_BrentKung_N8` | Done |
| D2 | `Fig_BLAN_KoggeStone_N8` | Done |
| D3 | `Fig_PrefixAdder_TopLevel` | Done |
| D4 | `Fig_LookaheadCarryNet_N8` | Done |
| D5 | `Fig_CarrySkip_Block` | Done |
| D6 | `Fig_Verification_Flow` | Done (two boxes drawn as planned, see below) |
| Task 2 | Netlist checks, CarrySkip_CIV and ConditionalSum_CIV | Not started |

Each figure is in `Documentation/Images/` as an editable `.drawio` file and a PNG exported at 2× scale.

## Captions (one line each)
- **D1 `Fig_BLAN_BrentKung_N8`:** Brent-Kung BLAN at N = 8, as built by `BLAN(BrentKung)`. The up-sweep merges pairs into gPair/pPair, an inner N = 4 BLAN (dashed; its own inner N = 2 BLAN dotted) runs on the odd positions, and the down-sweep completes the even positions. 11 merge cells, depth 5.
- **D2 `Fig_BLAN_KoggeStone_N8`:** Kogge-Stone BLAN at N = 8, as built by `BLAN(KoggeStone)`. At level k (D = 1, 2, 4), position i merges with i − D when i ≥ D and passes through otherwise. 17 merge cells, depth 3.
- **D3 `Fig_PrefixAdder_TopLevel`:** Top level shared by the BrentKung and KoggeStone adders. Bit g/p, then the BLAN, then the carry stage c(i+1) = Gpre(i) + Ppre(i)·Cin, then S = p ⊕ c, Cout = c(N) and Ovfl = c(N) ⊕ c(N−1). Only the BLAN architecture differs between the two.
- **D4 `Fig_LookaheadCarryNet_N8`:** The LookaheadCarryNet halving tree at N = 8 (BlockLookahead). Cin enters at the root and is pushed down (Cin to the low half, cMid = BGL + BPL·Cin to the high half) while BG/BP go up. The leaves output the carries themselves, unlike the BLAN in D1.
- **D5 `Fig_CarrySkip_Block`:** One 4-bit CarrySkip block: a ripple chain ending in rCOut(k), BP(k) = AND of the block's p bits, and the skip OR cb(k+1) = rCOut(k) + BP(k)·cb(k), with the skip path highlighted and `keep` marked on cb/rCOut. Below it, three blocks are chained to show the skip path running block to block.
- **D6 `Fig_Verification_Flow`:** The verification flow. FS: RTL is bound to TBAdder through the `FS<Topology>` configurations. TS: `Candidates.tcl` feeds `SynthAll.tcl` (21 Quartus revisions with `Adder.sdc`), which gives cost reports and `.vho`/`.sdo` netlists; these are bound to the same TBAdder through `TS<Candidate>` configurations, and the transcripts are collected into CSVs.

## Where the figures differ from the brief or the handout
1. **D6: `MakeTS.tcl` and `SourceCode/TimingConfigurations/TS<Candidate>.vhd` aren't in the repo yet** (checked at `cd418c7`). They're drawn dashed and labelled "planned". If their names or roles change, update the figure.
2. **D6:** `SynthAll.tcl` also runs `CollectResults.tcl` itself at the end; the figure shows CollectResults reading the reports, which matches running it on its own.
3. **D5:** The brief says "4 ripple full adders". The code has no full-adder component: g/p are computed once, each cell is c(i+1) = g(i) + p(i)·c(i), and the sum is S = p xor c for the whole vector. The figure draws each bit as a plain cell labelled with the code's signal names (g, p in; c, S out). The carry into the next block is cb(k+1), the skip-OR output, not rCOut(k), as in the code (`c(Base) <= cb(k)`).
4. **D4:** As the brief says, this is our own carry tree (the BLAN64 = 2 × BLAN32 exam structure noted in `LookaheadCarryNet.vhd`), not the textbook prefix network, so the figure follows the code.
5. **Bit order:** D1, D2 and D4 put the MSB on the left (position 7 … 0). D5 puts the LSB on the left so that the carry flows left to right through the gates.
6. **Notation:** The merge cell is drawn as a circle containing ∘, with (G, P) = (G_hi + P_hi·G_lo, P_hi·P_lo). I haven't compared it against Handout 6 symbol by symbol yet; see the checklist below.

No differences were found between the brief's description of the VHDL and the VHDL itself. The merge counts (11 and 17) come from the recursion in the code.

## Netlist checks (Task 2)
Not started. It needs a recompile with `quartus_sh -t SynthAll.tcl CarrySkip_CIV ConditionalSum_CIV`, then the RTL Viewer and the post-fit Technology Map Viewer in the Quartus GUI.
- **CarrySkip_CIV:** _to do_
- **ConditionalSum_CIV:** _to do_

## Who did what
- **Claude (agent, on Joey's machine):** Read the brief and the VHDL (`BLAN.vhd`, `BLANKoggeStone.vhd`, `AdderBrentKung.vhd`, `AdderKoggeStone.vhd`, `LookaheadCarryNet.vhd`, `AdderBlockLookahead.vhd`, `AdderCarrySkip.vhd`) and the flow scripts. Drew all six figures by writing a small Python script that outputs the `.drawio` XML (the merge cells in D1 and D2 come from a copy of the VHDL recursion), exported them with the draw.io CLI, checked each PNG visually against the code, and drafted this file. The script isn't committed, since only `Fig_*` files and this file are allowed. No timing reports were opened.
- **Joey:** _fill in what you checked or changed by hand_
  - [ ] D1 checked against `BLAN.vhd` and Handout 6
  - [ ] D2 checked against `BLANKoggeStone.vhd`
  - [ ] D3 checked against `AdderBrentKung.vhd` / `AdderKoggeStone.vhd`
  - [ ] D4 checked against `LookaheadCarryNet.vhd`
  - [ ] D5 checked against `AdderCarrySkip.vhd`
  - [ ] D6 checked against the scripts
  - [ ] Can explain each figure in person
