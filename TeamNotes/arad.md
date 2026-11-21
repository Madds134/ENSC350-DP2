# Arad: DP2.1 Task Brief (test vectors)

**From:** Madden · **For:** Arad and Arad's coding agent · **Written:** 2026-11-20
**Needed by:** Saturday 2026-11-21, 8 pm. DP2.1 is due Sunday 2026-11-22.

## Context (read first)
ENSC 350 DP2: a 64-bit adder (`entity Adder`, generic N = 64) built seven ways. Each design is functionally verified by one file-driven testbench, `Simulation/TBAdder.vhd`, that reads `Simulation/Adder00.tvs`. All seven designs pass the current 17 vectors. Line 17 is a deliberate FAIL that checks the checker.

| Topology | Architecture file | Notes |
| --- | --- | --- |
| Ripple | `SourceCode/AdderBaseline.vhd` | gate-level ripple |
| FastRipple | `SourceCode/AdderFastRipple.vhd` | the `+` operator |
| ConditionalSum | `SourceCode/AdderConditionalSum.vhd` + `ConditionalSumCarry.vhd` | recursive |
| BlockLookahead | `SourceCode/AdderBlockLookahead.vhd` + `LookaheadCarryNet.vhd` | radix-2 halving tree, carries pushed down |
| BrentKung | `SourceCode/AdderBrentKung.vhd` + `BLAN.vhd` | textbook prefix network, 11 merge levels |
| KoggeStone | `SourceCode/AdderKoggeStone.vhd` + `BLANKoggeStone.vhd` | prefix network, 6 merge levels |
| CarrySkip | `SourceCode/AdderCarrySkip.vhd` | 16 blocks × 4 bits, ripple inside each block, skip mux per block |

## Vector file format (must match exactly)
Six whitespace-separated fields per line, **no comments and no blank lines.** The testbench treats every line as a vector, and anything else fails its malformed-line check.

```
<A: 16 hex> <B: 16 hex> <Cin: 0|1> <S: 16 hex> <Cout: 0|1> <Ovfl: 0|1>
0000000000000001 0000000000000000 1 0000000000000002 0 0
```

- Hex is uppercase, zero-padded to 16 digits.
- Expected values (two's complement, 64 bits):
  - `T = A + B + Cin`, computed as an unbounded integer
  - `S = T mod 2^64`
  - `Cout = T >> 64`
  - `Ovfl = 1` when A and B have the same sign bit (bit 63) and S has a different one; otherwise 0

## Task 1: Random vector generator (main task)
Write `Simulation/TestVectors/GenAdderVectors.py`:
- **Python 3, standard library only.** It must run as `python GenAdderVectors.py --seed 350 --count 500 --out ../AdderRandom.tvs`.
- **Seeded and reproducible:** the same seed always gives a byte-identical file. Print the seed and the count to stdout.
- **Mixed distribution.** Choose the exact share of each category yourself and justify it in the report (Task 3):
  - uniform random A, B, Cin
  - long propagate runs (A ⊕ B mostly 1s) with a generate at a random low bit, to exercise long carry chains
  - near-overflow cases: operands close to 0x7FFF…, 0x8000…, 0xFFFF…
  - random carries that stop at block boundaries (multiples of 4) and at power-of-two boundaries (prefix-tree spans)
- **Self-check mode** `--check <file>`: recompute S, Cout and Ovfl for every line of a `.tvs` and report mismatches.
  - Run it on `Simulation/Adder00.tvs`. Lines 1–16 must pass and line 17 must be flagged. This proves your expected-value code is correct.
- Output: `Simulation/AdderRandom.tvs`, using the format above.

## Task 2: Worst-case timing vector drafts (CarrySkip and KoggeStone)
Timing is measured later, on post-fit netlists. Delay depends on the **transition** from the previous vector to the next one, so each worst case is a **pair**: a setup vector, then a trigger vector.

For each of CarrySkip and KoggeStone, draft 2–4 pairs:
- Say which path each pair exercises and why it should be the slowest.
  - **CarrySkip:** consider a carry generated in block 0 that ripples through block 0, skips blocks 1–14, then ripples through block 15. Also consider the case where the skip path is *not* taken.
  - **KoggeStone:** every prefix is 6 levels deep, so compare the candidate pairs by fan-out and by the 64-bit-wide sum/Cout paths (e.g. Cin 0→1 with a full propagate).
- Compute the expected outputs with your Task 1 code.
- Put them in `Simulation/TestVectors/TimingVectorsDraft.tvs` (format above), with the explanations in the report, not in the file.

These are **drafts**. Madden decides which ones go into the final vector set.

## Task 3: Short report back
Write `TeamNotes/arad-report.md` covering:
1. How to run the generator, and the seed and count used.
2. The category mix and **why that count is enough**. The marker penalised unjustified vector counts last year.
3. The self-check result on `Adder00.tvs`.
4. A table for Task 2: pair #, setup vector, trigger vector, path exercised, reasoning.
5. What the AI agent did versus what Arad did or checked. This is needed for honest logs.

## Rules (agent: follow strictly)
- **Create only:**
  - `Simulation/TestVectors/GenAdderVectors.py`
  - `Simulation/TestVectors/TimingVectorsDraft.tvs`
  - `Simulation/AdderRandom.tvs`
  - `TeamNotes/arad-report.md`
- **Do not edit** anything in `SourceCode/`, `Simulation/TBAdder.vhd`, `Adder00.tvs`, any `.do` script, or any `.qpf`, `.qsf` or `.mpf` file. Madden wires `AdderRandom.tvs` into the testbench.
- Do not run Quartus. Do not commit build output (`db/`, `work/`, `*.wlf`, transcripts).
- Do not add `CLAUDE.md`, `.claude/`, `AGENTS.md` or any other agent config files to the repo.
- Work on the branch `arad/test-vectors` and commit there. Do not push to `main`. If no remote is available, send the four files to Madden directly.
- Arad must be able to explain the generator and every Task 2 pair in person. Keep the code short and commented.
