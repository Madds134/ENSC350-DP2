# Arad: DP2.1 Report Drafting Brief

**From:** Madden · **For:** Arad and Arad's coding agent · **Written:** 2026-11-21
**Needed by:** Saturday 2026-11-21, 9 pm. DP2.1 is due Sunday 2026-11-22. Madden merges the drafts into `DP2-Report-G06-350-1267.docx` and makes the final edits.

## Goal
Draft the report sections that **don't depend on the timing results still to come**, using only the data already in the repo. Write in Markdown; Madden pastes and edits the text into the Word report.

## Ground rules (agent: follow strictly)
- **Branch `arad/report-draft`.** Create only `TeamNotes/ReportDraft/*.md`. Don't edit anything else, don't push to `main`, and don't add agent config files.
- **Use only the data listed in this brief and the repo files it names.** Don't run Quartus or ModelSim, and don't regenerate anything.
- **Don't use the results from the `arad/test-vectors` branch timing pipeline** (`Documentation/TimingResults/`, `TimingTB`) as measured results. That pipeline used a different testbench (no 'X' pre-stimulus) and a different `.sdc`, so its numbers aren't comparable. Leave it out entirely; Madden may add one cross-check sentence later.
- **No timing numbers for candidates other than Ripple.** They haven't been measured yet with the official flow, and Madden's predictions come first. Write `[TBD: timing]` wherever one would go.
- **Claim only what's true.** Write in neutral technical voice ("the testbench measures…", "a Tcl script generates…"). Never say a step was done by hand, or by a specific person, unless this brief says so. Don't invent numbers. If something isn't here, write `[TBD: …]`.
- **The audience** is an experienced engineer joining the project, not the TA. Be concise. The whole report is about 10 pages of content, and the spec says "be conservative with content". **Results and analysis should be 40–70% of the report**, so keep the design and method sections tight.
- **No screenshots** of netlist viewers or wave windows (Guidelines §4.2–4.3). Refer to figures as `[Figure: <name>]`. Joey is drawing them on branch `joey/diagrams`: `Fig_BLAN_BrentKung_N8`, `Fig_BLAN_KoggeStone_N8`, `Fig_PrefixAdder_TopLevel`, `Fig_LookaheadCarryNet_N8`, `Fig_CarrySkip_Block`, `Fig_Verification_Flow`.
- **References in IEEE style:** Handout 6 (L06, block look-ahead / BLAN); IEEE Std 1076.6-2004 (VHDL RTL synthesis, for `keep`); the Intel Cyclone IV and Arria II device handbooks; the Intel Quartus Prime Timing Analyzer user guide (SDC). Mark any reference you can't confirm as `[REF?]`.

## Sections to draft (one file each, in `TeamNotes/ReportDraft/`)
These follow the DP2.0 outline. Suggested lengths are for the final report.

| File | Section | Length |
| --- | --- | --- |
| `01-Introduction.md` | Problem, DUT spec, what DP2 adds over DP1 | ½ page |
| `02-BaselineDevice.md` | Ripple_CIV: cost, timing, critical path | ¾ page |
| `03-DesignCandidates.md` | 7 topologies × 3 FPGAs, device choice, naming | 1½ pages |
| `04-HierarchyConfigurations.md` | Component DUT, FS/TS configurations, a library per netlist | ½ page |
| `05-TestbenchVectors.md` | Measurement method, constants, vectors | 1 page |
| `06-ExperimentalProcedure.md` | `.sdc`, scripts, VHO/SDO, corners | ¾ page |
| `07-CostResults.md` | Cost table + analysis of each gap | 1½ pages |

Do **not** draft Performance Analysis, Cost-Performance Optimisation or Conclusions; they need the remaining timing data.

---

## Data you can use

### DUT and spec
- `entity Adder` (`SourceCode/Adder.vhd`): generic `N : natural := 64`; ports A, B (N bits), Cin → S (N bits), Cout, Ovfl (signed overflow = c(N) ⊕ c(N−1)). Purely combinational.
- DP2 objectives (spec p. 4): more candidates, components and configurations, one testbench, timing simulation, cost/performance analysis on Cyclone IV and Arria II.
- **Baseline Device** (spec p. 3): a 64-bit structural ripple adder on **Cyclone IV EP4CE115F29C7**.

### Topologies (architectures of `Adder`, in `SourceCode/`)
| Topology | Architecture / files | Principle |
| --- | --- | --- |
| Ripple (the Baseline) | `Baseline` in `AdderBaseline.vhd` | Gate-level ripple: sum and majority carry per bit. **The architecture is named `Baseline`; the topology is called `Ripple`.** |
| FastRipple | `AdderFastRipple.vhd` | The `+` operator, which maps to the FPGA's dedicated carry chain |
| ConditionalSum | `ConditionalSumCarry.vhd`, `AdderConditionalSum.vhd` | Recursive halving. Each half computes carries for an incoming carry of 0 and of 1, and the lower half's top carry selects (2:1 mux). Cin selects at the end. Only the carry network is recursive; the sums are formed once |
| BlockLookahead | `LookaheadCarryNet.vhd`, `AdderBlockLookahead.vhd` | Radix-2 halving tree that outputs **carries** directly: cMid = BG_lo + BP_lo·Cin feeds the high half, and BG/BP go up. Not a prefix network |
| BrentKung | `BLAN.vhd` (`architecture BrentKung`), `AdderBrentKung.vhd` | Textbook prefix BLAN (Handout 6): GP[i,i] in, GP[i,0] out, built from an up-sweep, an inner BLAN on N/2, and a down-sweep. The adder forms c(i+1) = G[i,0] + P[i,0]·Cin |
| KoggeStone | `BLANKoggeStone.vhd`, `AdderKoggeStone.vhd` | Prefix BLAN with log₂N levels. Level k merges position i with i − 2^(k−1). Same top level as BrentKung, so the comparison is fair |
| CarrySkip | `AdderCarrySkip.vhd` | 16 blocks of 4 bits, ripple inside each block, block propagate BP. Skip: cb(k+1) = rCOut(k) + BP(k)·cb(k). The skip is logically redundant, so `attribute keep` (IEEE 1076.6) on `cb` and `rCOut` stops synthesis removing it |

Merge cell (∘): (G, P) = (G_hi + P_hi·G_lo, P_hi·P_lo). The 64-bit merge counts are **120 for Brent-Kung** (2N − 2 − log₂N) and **321 for Kogge-Stone** (N·log₂N − (N−1)).

### FPGAs and candidates (7 × 3 = 21)
| Suffix | Part | Why |
| --- | --- | --- |
| `_CIV` | Cyclone IV EP4CE115F29C7 (speed grade C7) | Required for the Baseline (spec p. 3); the spec's "weak recommendation" (p. 7) |
| `_CIVE30` | Cyclone IV EP4CE30F23C6 (C6) | Spec p. 7: "select a version that fits your design and avoids inclusion of unnecessary additional hardware resources". The design needs **195 I/O pins** (64 + 64 + 64 + 3), and the largest candidate uses under 600 LE, so the pin count decides the part. Running both Cyclone IVs separates topology effects from device effects |
| `_AII` | Arria II GX EP2AGX45DF29C6 (C6) | The second family (ALMs with 6-input ALUTs) |

Candidate = Quartus revision `<Topology>_<FPGA>`, e.g. `KoggeStone_CIVE30`. The Baseline Device is `Ripple_CIV`.

### Hierarchy and configurations
- **One testbench**, `Simulation/TBAdder.vhd`. The DUT is a **component** `Adder`, instance `DUT`.
- **Functional:** `SourceCode/TBAdderConfigurations.vhd` holds `FS<Topology>` configurations binding `DUT` to `work.Adder(<architecture>)`.
- **Timing:** every Quartus netlist (`.vho`) declares the same `entity Adder`, so each one is compiled into **its own library**, named after the candidate. Each `SourceCode/TimingConfigurations/TS<Candidate>.vhd` contains `library <Candidate>; configuration TS<Candidate> of TBAdder … use entity <Candidate>.Adder(structure)`. There's one file per candidate, because a single file would need all 21 libraries to compile.
- ModelSim warns `vsim-8713` ("suspect default binding") because the component has generic N and the netlist entity has none. It's harmless: the measured delays are non-zero, which proves the netlist is bound.

### Testbench method (`Simulation/TBAdder.vhd`)
Spec p. 5 requires each measurement to start with 'X' for PreStimTime, apply the vector until the outputs are stable, measure the S and Status (Cout and Ovfl) delays, check the result, report index/true/actual values, and report the worst case at the end.
- **Generics:** `N` (default 64) and `TestVectorFile` (default `Adder00.tvs`), settable with `vsim -g…`. These are also the hook for an N sweep.
- **Constants** (explaining them is a known mark-loser):
  - **PreStimTime = 100 ns** of 'X' on every input, longer than any delay, so every output goes X first and the new vector always produces a final event to measure. The longest STA path on the Baseline is 41.7 ns.
  - **StableTime = 20 ns**: outputs count as settled after 20 ns with no event. This assumes that no output, once it is settling, stays quiet for 20 ns and then changes again. One LUT plus its wire is under 1 ns.
  - **Timeout = 500 ns**: a safety net; an assert fires if the outputs don't settle.
- **Measurement:** T0 = the moment the vector is applied. A loop `wait on TBS, TBCout, TBOvfl for StableTime` runs until there have been no events for StableTime. Then **delay = (now − T0) − signal'last_event**. Status uses the later of Cout and Ovfl.
- Each vector's report line has: index, PASS/FAIL, A, B, Cin, expected and actual S/Cout/Ovfl, and the S and Status delays. The final line is `Simulation Completed: K measurements, F failures | worst S delay=… (meas i) | worst Status delay=… (meas j)`.
- The wave window (`wave.do`) shows the index, stimulus, expected values, DUT outputs, and the `TBDelayS`/`TBDelayStatus` traces.
- **Vectors:** `Simulation/Adder00.tvs` has 17 lines in the format `{A B Cin S Cout Ovfl}` (hex). Lines 1–13 come from DP1; 14–16 were added for propagate chains that stop partway (Cin into 0001, 0000FFFF, 00000000FFFFFFFF); line 17 is a **deliberate FAIL** that proves the checker works. **All 7 topologies pass functional simulation** (17 measurements, 1 failure, which is #17). Worst-case timing vectors are `[TBD]`. Madden is adding them.

### Experimental procedure
- **`Adder.sdc`:** `set_max_delay -from [all_inputs] -to [all_outputs] 1.000`. It's an impossible 1 ns target, so the Fitter applies the **same maximum speed effort** to every candidate. Without a constraint Quartus optimizes for area only; in DP1 that collapsed ConditionalSum to a near-ripple. Path delay = 1 ns − slack. **Setup is fully constrained** (0 unconstrained paths). Hold is unconstrained by design, because only maximum delay matters for a combinational adder. SDC = Synopsys Design Constraints.
- **Scripts:**
  - `Candidates.tcl`: the shared candidate list.
  - `SynthAll.tcl`: creates each revision from `Ripple_CIV`, sets the family, device and core voltage (Arria II 0.9 V), sets only that topology's files, `Adder.sdc` and N, and runs a full compile. About 40 s per candidate.
  - `CollectResults.tcl`: reads the reports into `Documentation/OutputFiles/CostResults.csv` and the merged summary `QuartusSummary.txt`.
  - `Simulation/MakeTS.tcl`: generates the 21 TS configurations, the 21 `TS<Candidate>.do` scripts and `RunAllTS.do`.
  - `Simulation/CollectTiming.tcl`: reads the transcripts into a CSV.
  - The FS/TS scripts each name a unique transcript, compile, start the configuration, load the wave layout and run (spec p. 6).
- **VHO/SDO** (explaining them is a known mark-loser): the `.vho` is Quartus's post-fit VHDL netlist, built from device primitives (`cycloneive`/`arriaii` libraries). The `.sdo` is an SDF file of delays for every cell and wire in that netlist. ModelSim back-annotates the SDF onto the netlist (`vsim -sdfmax /TBAdder/DUT=<cand>_vhd.sdo`), so the simulation shows real post-fit delays. Both are written to `Simulation/ModelSim/`.
- **Corners:** Quartus writes slow 85 °C, slow 0 °C and fast 0 °C models. The default `<cand>_vhd.sdo` is the **slowest** corner: **slow 85 °C on Cyclone IV, but slow 0 °C on Arria II** (temperature inversion at the 0.9 V core: STA slack −29.881 ns at 0 °C vs −29.810 at 85 °C). The simulations use the default, and the STA comparisons use the same corner.

### Baseline results (Ripple, all three parts): these numbers are final
| | Ripple_CIV | Ripple_CIVE30 | Ripple_AII |
| --- | --- | --- | --- |
| Cost | 162 LE | 162 LE | 150 ALUT / 90 ALM |
| Simulated worst S (vector) | 38.706 ns (#2) | 33.790 ns (#2) | 31.422 ns (#2) |
| Simulated worst Status | 38.983 ns (#2) | 34.005 ns (#2) | 31.371 ns (#2) |
| Floor (vector #1) S / Status | 9.104 / 7.005 ns | 8.654 / 6.506 ns | 9.324 / 7.041 ns |
| STA worst path (same corner) | Cin → Ovfl, 41.727 ns | B[0] → Ovfl, 35.074 ns | B[0] → S[62], 30.881 ns |
| LUTs on that path | 65 | 65 | 58 |
| Wiring (IC) / cells | 59% / 41% | 57% / 43% | 51% / 49% |

Points worth making (the source files are `Documentation/OutputFiles/CriticalPath_Ripple_*.txt` and `Simulation/TSRipple_*.txt`):
- **The worst vector is #2 (A = FFFF…, B = 0, Cin = 0), a full propagate run.** Measuring from X, even a carry of 0 must settle bit by bit, so the longest propagate run is the worst case whatever Cin is. Delay rises with chain length: vectors #10–13 give S = 9.3, 11.4, 15.9, 23.5 ns on CIV.
- **The 65 LUTs on the CIV path** are carries C1–C63, C64 and the Ovfl XOR. Quartus reports "66 logic levels" because it also counts an I/O buffer.
- **The LUT cell delay depends on the input used:** 0.125 ns through `datad` vs 0.280 ns through `datac`, alternating along the chain. The average LUT cell is about 0.21 ns and the average wire about 0.37 ns, so **routing costs more than logic**. There are long hops of up to 2.77 ns where the chain jumps across the chip.
- **The E30 (C6)** has the same 65 LUTs, with cells about 13% faster and wiring about 18% faster than the 115 (C7).
- **Arria II's 6-input ALUT** computes two carry bits per ALUT from bit 52 up (C[54] from C[52], a 5-input function). These are 5 of its 13 five-input ALUTs. That shortens the path to Ovfl, so S[62] becomes the worst output.
- **Simulated vs STA:** on CIV and E30 the simulation is below STA, as expected (vectors can't exercise every path). **On AII the simulation is 0.54 ns above STA.** The working hypothesis is X-pessimism: leaving X uses the slower of the rise and fall delays. State it as a hypothesis.
- **LUT-delay bound** (spec p. 7). The floor F contains I/O plus about 2 LUT levels, so t ≈ (D_worst − F) ÷ (L − 2): **CIV ≈ 0.508 ns, E30 ≈ 0.436 ns, AII ≈ 0.395 ns** per LUT plus its wire. The simple bound D/L gives about 0.60 / 0.52 / 0.54 ns. Explain that "LUT delay" here really means LUT plus its interconnect.

### Cost results (all 21; `Documentation/OutputFiles/CostResults.csv`): final
Predicted values (logged before synthesis) are shown in brackets: LE on Cyclone IV, ALM on Arria II.

| Topology | CIV LE | CIVE30 LE | AII ALUT / ALM |
| --- | --- | --- | --- |
| Ripple | 162 [129] | 162 | 150 / 90 [65] |
| FastRipple | 67 [67] | 67 | 66 / 34 [34] |
| ConditionalSum | 187 [~230] | 187 | 180 / 147 [120] |
| BlockLookahead | 221 [243] | 221 | 182 / 135 [~122] |
| BrentKung | 316 [369] | 316 | 258 / 182 [~185] |
| KoggeStone | 570 [771] | 574 | 571 / 365 [~386] |
| CarrySkip | 224 [177] | 224 | 186 / 130 [~89] |

The CSV also has the LUT-input breakdown (In4/In3/In2orLess on CIV; In7…In3orLess on AII). Use it to explain gaps.
- **Prediction method:** count the logic functions; one ≤ 4-input function = 1 LE; ALM ≈ functions ÷ 2, with DP1 showing about +30% looser packing on a nearly empty device. A merge cell is **2 LEs** (separate G and P outputs).
- **Ripple +33:** the same split-carry pattern as DP1 (66/64/32 vs DP1's 65/64/32). Every second carry is split into two partial terms, and the next bit's LEs absorb the OR through their spare 4th input, so each pair of bits costs 5 LEs instead of 4. One more LE than DP1, probably from the speed effort under the `.sdc` (not verified).
- **FastRipple:** exact; it uses the carry chain.
- **The trees came in under prediction** (KoggeStone −201, BrentKung −53, BlockLookahead −22). The likely cause is P terms being absorbed into the LUTs that use them (408 of KoggeStone's 570 LEs are 4-input). State this as a hypothesis.
- **CarrySkip came in 47 over.** Cause `[TBD: Joey's netlist check]`.
- **ConditionalSum** came in under prediction; whether its structure was kept is `[TBD: Joey's netlist check]`.
- **CIV vs CIVE30:** identical except KoggeStone (570 vs 574) and ConditionalSum's LUT mix. Same LE architecture, so only the fitter differs.
- **Arria II:** ALUT vs ALM packing slack (e.g. Ripple 150 ALUT → 90 ALM, not 75). To compare families, use the ALM→LE factor **k = 1.9123** from DP1 (LE-eq = ALM × k), and normalize to the Baseline (162 LE).

## Hand-back
Push `arad/report-draft` with the 7 section files, and list every `[TBD]` and `[REF?]` in the push message. **Arad: read each draft before pushing, and write in your log what you reviewed or changed yourself.**
