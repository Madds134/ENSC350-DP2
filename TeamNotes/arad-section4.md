# Arad: Section 4 Update (ConditionalSumKeep + resolved TBDs)

**From:** Madden · **For:** Arad and Arad's coding agent · **Written:** 2026-11-21
**Needed by:** tonight. DP2.1 is due Sunday 2026-11-22.

## Goal
Update **Section 4 (Implementation and Synthesis Results)** of the report so that it:
1. includes the new candidate **ConditionalSumKeep** on all three FPGAs;
2. replaces the ConditionalSum **[TBD: netlist inspection]** with the confirmed explanation;
3. regenerates **Figure 10** with the new candidate.

Section 6 (Cost-Performance) builds on these numbers, so Section 4 must state them first.

## Rules
- Edit only **Section 4** (and Figure 10). Sections 5 and up are finished; don't touch them.
- Use only the numbers below or from `Documentation/OutputFiles/CostResults.csv`. Don't invent numbers.
- **CarrySkip's +47 LE stays [TBD]** until Joey's netlist check comes back. Don't guess a cause.
- Neutral technical voice. Don't say who did what.
- If you regenerate Figure 10 with a script, keep the script in `Simulation/TestVectors/` or `Documentation/` and don't commit build output. Push only to a branch (e.g. `arad/section4`), never to `main`.
- Log honestly what the agent did and what you checked yourself.

## 1. Table 4: add one row
| Topology | Cyclone IV 115 (LE) | Cyclone IV 30 (LE) | Arria II (ALM) |
| --- | --- | --- | --- |
| ConditionalSumKeep | **513** | **513** | **292** (450 ALUTs) |

Put it directly under **Conditional Sum**, so the two are compared side by side. Update the caption/text if it says "seven topologies" or "21 candidates": there are now **8 topologies, 24 candidates**.

## 2. Figure 10: add ConditionalSumKeep
- Cyclone IV 115: **513 LE**
- Arria II: 292 ALM × 1.9123 = **558 LE-equivalents**

Also fix the caption: the bars are **LE-equivalents**, not "normalized" values. Suggested caption: *"Figure 10: Logic resources in Cyclone IV LE-equivalents (Arria II ALMs × 1.9123), N = 64."*

## 3. The prediction for ConditionalSumKeep (add to 4.1, Resource Estimation)
The DP1 "every mux built" model for the conditional-sum carry network:
- muxes: N·log₂N = 64 × 6 = **384** (each of the 6 recursion levels has 64 muxes: carry0 and carry1 for every high-half bit)
- Cin select: **64** · sums: **64** · Ovfl: **1**
- **Total = N·log₂N + 2N + 1 = 513 LE**

## 4. Replace the ConditionalSum [TBD] in 4.3 with this explanation (reword as needed)
> Conditional Sum required 187 LEs against approximately 230 predicted, because synthesis did not keep the recursive structure. Since a block that produces a carry with an incoming 0 also produces one with an incoming 1 (carry0 ≤ carry1), each 2:1 mux simplifies to H0 + L·H1, the lookahead form G + P·c. Quartus re-factored the whole tree into a carry chain: the post-fit critical path on Cyclone IV passes through 40 LUTs, advancing about two bits per LUT, instead of the 8 levels of the tree (critical-path report: `Documentation/OutputFiles/CriticalPath_ConditionalSum_CIV.txt`). On Arria II the same collapse occurred, but each six-input ALUT spans four to six bits, giving a 14-ALUT path (`CriticalPath_ConditionalSum_AII.txt`).
>
> To test this, a second candidate, ConditionalSumKeep (`ConditionalSumCarryKeep.vhd`, `AdderConditionalSumKeep.vhd`), uses the same recursion with the `keep` attribute (IEEE 1076.6) on each level's mux outputs. It used exactly 513 LEs on both Cyclone IV devices, the "every mux built" prediction above, and 292 ALMs on Arria II. Its LUT mix (128 four-input, 322 three-input, 63 with two or fewer inputs) is consistent with one LUT per mux. A first attempt, with `keep` on every half-result including the low-half carries that only pass straight up, used 900 LEs, 510 of them functions with two or fewer inputs: `keep` forced a buffer cell for each passed-through carry at every level. Moving `keep` to the mux outputs only removed those buffers.

Notes for the agent:
- The 900-LE attempt must stay in the report: the spec requires documenting design attempts that weren't optimal.
- Its timing is discussed in Section 5 (≈ 2.1× faster than the collapsed design on Cyclone IV). Don't repeat timing numbers in Section 4; a forward reference "(§5.4)" is enough.

## 5. Small fixes in Section 4 while you're there
- 4.1 says the 1 ns `set_max_delay` is "a common high-speed optimization target". Make it *"an intentionally unachievable target, so that every candidate receives the same speed effort from the Fitter"*.
- 4.1: "physical adaptive logic modules (ALMs)" → "adaptive logic modules (ALMs)".
- 4.3: "Absorption of intermediate propagate terms … has not been confirmed": keep it as a hypothesis. That's correct as written.

## 6. N sweep and links to later sections
Section 4 reports cost at **N = 64 only**. The N-sweep cost results (N = 8, 16, 32) belong in **§6.3 (Width Scaling)**, together with their delays, so cost and speed against N can be read side by side. **Don't put sweep tables or numbers in Section 4.** Add only the links below.

**a) In 4.1 (Resource Estimation), after the per-topology estimates, one sentence:**
> Each estimate is a function of N (for example 2N + 1 for Ripple and 2N·log₂N + 3 for Kogge-Stone); these formulas are compared with synthesis results at N = 8, 16, 32 and 64 in §6.3.

The formulas, for the agent's reference only (they're used in §6.3, not listed in Section 4):

| Topology | Predicted LE (Cyclone IV), L = log₂N |
| --- | --- |
| Ripple | 2N + 1 |
| FastRipple | N + 3 |
| ConditionalSumKeep | N·L + 2N + 1 |
| BlockLookahead | 4N − 2L − 1 |
| BrentKung | 6N − 2L − 3 |
| KoggeStone | 2N·L + 3 |
| CarrySkip | 11N/4 + 1 |

**b) Replace the last paragraph of 4.3** ("Overall, FastRipple was the least expensive…") with a version that points forward to where each question is answered:
> Overall, FastRipple was the least expensive implementation on every FPGA, and Kogge-Stone the most expensive. Cost alone does not identify the best design: Section 5 measures the delay of each candidate, Section 6.1 combines cost and delay into a single cost-performance figure, Section 6.2 evaluates the trade-off of forcing the conditional-sum structure with `keep`, and Section 6.3 examines how both cost and delay scale with N.

**c) In 4.3, after the ConditionalSumKeep explanation, one forward reference:**
> Its delay is compared with the collapsed design in §5.4, and the resulting cost-performance trade-off in §6.2.

**d) Section 3.3** (Variable Operand Width): change "will be discussed in Sections 5 (Performance Analysis) and 6 (Cost Analysis)" to:
> The results for N = 8, 16, 32 and 64 are discussed in §6.3.

Also remove "once validated": the sweep has finished (96 timing runs, all passing).

## Hand-back
Edit Section 4 in the shared report directly (or send the text to Madden), push the Figure 10 source and PNG to `arad/section4`, and message Madden when done.
