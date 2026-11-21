# Run and understand the timing experiment

Run these commands in a Linux terminal (Bash) from the **ENSC350-DP2 repository root**.
Use Python 3 (tested with 3.11), Quartus Prime Lite 20.1.1 with Cyclone IV E and
Arria II GX support, and ModelSim Intel FPGA Starter 2020.1 with its precompiled
device libraries. The scripts use the existing VHDL without changing it.

## 0. Set up the Linux tools and Python environment

Install the Linux editions of Quartus and ModelSim, including support for both
FPGA families and the simulator's device libraries. For example, if installed
under your home directory (adjust the paths if yours differ):

```bash
export PATH="$HOME/intelFPGA_lite/20.1/quartus/bin:$HOME/intelFPGA_lite/20.1/modelsim_ase/bin:$PATH"
command -v quartus_sh
command -v vsim
quartus_sh --version
vsim -version

python3 -m venv .timing-build/venv
source .timing-build/venv/bin/activate
python3 -m pip install -r Simulation/Timing/requirements.txt
```

The runner uses `quartus_sh` and `vsim` on Linux, without `.exe`. It searches
explicit `--*-bin` directories first, then `PATH`, then common installations
under `$HOME/intelFPGA_lite/20.1` and `/opt/intelFPGA_lite/20.1`.
Some ModelSim installations put `vsim` in `modelsim_ase/linuxaloem`; use that
directory if it contains your executable. The runner also searches it.
Use a fresh Linux checkout/build; regenerate compiled simulation libraries on
Linux instead of copying the ignored Windows build directory.

The published timing results were produced on Windows with the recorded tools.
The Linux command changes do not constitute a new Linux timing run. Rebuild on
Linux to obtain results for your installed toolchain.

## 1. Generate and check the inputs

```bash
python3 Simulation/TestVectors/GenAdderVectors.py --seed 350 --count 500 --out Simulation/AdderRandom.tvs
python3 Simulation/TestVectors/GenAdderVectors.py --timing-out Simulation/TestVectors/TimingVectorsDraft.tvs
python3 Simulation/TestVectors/GenAdderVectors.py --check Simulation/AdderRandom.tvs
python3 Simulation/TestVectors/GenAdderVectors.py --check Simulation/TestVectors/TimingVectorsDraft.tvs
```

The first file contains 500 random/directed vectors. The second contains seven
setup/trigger pairs, or 14 rows. Both should pass their checks. The separate old
`Adder00.tvs` intentionally fails its checker on line 17; it is not part of these
timing runs.

## 2. Start with one design

```bash
python3 Simulation/Timing/RunTiming.py --device EP4CE30F23C6 --topology CarrySkip
```

This compiles CarrySkip for the Cyclone IV E, then simulates three corners.
Inspect this folder while learning:

```text
.timing-build/EP4CE30F23C6_CarrySkip/
    timing.qsf                  device, source files and fitter settings
    timing.sdc                  combinational timing constraints
    compile.log                 complete Quartus compilation log
    output_files/               fitter/resource/timing reports
    simulation/modelsim/        post-fit VHDL and SDF timing files
    slow85/measurements.csv      measured output-event delays
    slow85/simulation.log        ModelSim/SDF/checker messages
    slow85/timing.vcd            waveform for independent checking
    slow0/                      slow process, 0 degrees C
    fast0/                      fast process, 0 degrees C
```

Quartus `--flow compile` performs synthesis, fitting, assembly, timing analysis,
and configured EDA netlist export. Each experiment includes only the selected
Adder architecture and its dependencies, so it cannot accidentally select
another architecture of the same entity.

The fitter assigns physical pins automatically because this experiment has no
board pinout. Both devices use 2.5 V I/O, fitter seed 1, and 0–85°C operating
temperature settings. Cyclone's core voltage is 1.2 V; Arria's is 0.9 V.
The virtual 1000 ns clock and zero external I/O delays constrain input-to-output
paths. The adder has no real clock or registers; this does not establish Fmax.

## 3. Run all fourteen device/design combinations

```bash
python3 Simulation/Timing/RunTiming.py --jobs 2
```

Defaults are both devices and all seven architectures:

- `EP4CE30F23C6`: Cyclone IV E.
- `EP2AGX45DF29C6`: Arria II GX.
- Ripple, FastRipple, ConditionalSum, BlockLookahead, BrentKung, KoggeStone,
  CarrySkip.

Two jobs run independent experiments concurrently; omit `--jobs 2` to run one
at a time. Each Quartus fit can use four processors. The full run can take
several minutes or longer depending on the machine and ModelSim Starter's
capacity-related slowdown. The script stops with an error if a tool fails.
Runs overwrite that experiment's local logs and results.

To choose a subset:

```bash
python3 Simulation/Timing/RunTiming.py --device EP2AGX45DF29C6 --topology CarrySkip KoggeStone
```

To separate compilation from simulation:

```bash
python3 Simulation/Timing/RunTiming.py --jobs 2 --phase build
python3 Simulation/Timing/RunTiming.py --jobs 2 --phase simulate
```

The simulate phase requires existing successful fits. It rejects source changes
since compilation. After changing RTL, compile again. A fit and its matching
netlist/SDF must stay together. Also rebuild after changing device, fitter,
I/O, or constraint settings; source hashes alone do not detect those changes.

If the tools are not on `PATH`, pass their Linux installation directories
(adjust these example paths to match your installation):

```bash
python3 Simulation/Timing/RunTiming.py --jobs 2 \
  --quartus-bin "$HOME/intelFPGA_lite/20.1/quartus/bin" \
  --modelsim-bin "$HOME/intelFPGA_lite/20.1/modelsim_ase/bin"
```

## 4. Understand the timing simulation

Read [TimingTB.vhd](TimingTB.vhd) and `simulate()` in
[RunTiming.py](RunTiming.py). The generated ModelSim commands are essentially:

```tcl
vlib work
vmap work work
vcom -2008 ../simulation/modelsim/timing_6_1200mv_85c_slow.vho
vcom -2008 TimingTB.vhd
vsim -t 1ps -voptargs=+acc -gN=64 -sdfmax /TimingTB/DUT=../simulation/modelsim/timing_6_1200mv_85c_vhd_slow.sdo work.TimingTB
vcd file timing.vcd
vcd add /TimingTB/A /TimingTB/B /TimingTB/Cin /TimingTB/S /TimingTB/Cout /TimingTB/Ovfl
run -all
vcd flush
quit -f -code 0
```

These commands illustrate Cyclone slow 85°C. The script selects the corresponding
files for the other corners and the other device. Slow corners use `-sdfmax`;
fast 0°C uses `-sdfmin`. It verifies the simulator's successful SDF back-annotation
message. An RTL simulation without these fitted delays is not a timing result.

The testbench starts with zero inputs held for 200 ns. It then applies each row
directly and waits 200 ns. Row `i` starts at `i × 200 ns`. Rows 1–500 are random
vectors; rows 501/502 are CS1 setup/trigger, 503/504 are CS2, and so on through
513/514 for KS4. No X state is inserted between the setup and trigger.

At the end of each hold interval, `S'last_event` is the time elapsed since the
most recent change on the sum bus. Therefore:

```text
delay = 200 ns - S'last_event
```

The same calculation applies to Cout and Ovfl. If the most recent event predates
the interval, the raw CSV stores −1; the final tables show an empty cell. This
means **no event**, not measured zero delay. Several bits may change or glitch:
the recorded delay is the last event, not just the first edge. The testbench
also checks the final S/Cout/Ovfl against the vector's expected values.

All 514 rows are checked. Summary timing comparisons use 500 random transitions
and seven pair triggers, excluding the seven setup transitions. Pair CS2 is
the reverse of CS1; falling carry can settle differently from rising carry.
The observed maximum is limited to these transitions and the selected fit; it
is not proof of the global worst-case path or a measured hardware result.

## 5. Create Excel, CSV tables, graphs and the report section

Activate the environment created in step 0 (if opening a new terminal):

```bash
source .timing-build/venv/bin/activate
```

After all fourteen experiments have finished:

```bash
python3 Simulation/Timing/CreateResults.py
```

[CreateResults.py](CreateResults.py) requires all 42 corner runs. It checks fit
success, source hashes, input vectors, SDF annotation, all expected outputs, and
independently compares every CSV output-event time with the actual VCD waveform.
It then creates:

- `Documentation/TimingResults/AdderTimingResults.xlsx`: numeric summaries,
  per-corner data, all 21,588 measurements, vectors, validation, embedded figures
  and an editable Excel chart.
- CSV copies of the design summary, corner summary, timing-pair results, full
  measurements and vectors.
- PNG and SVG comparison graphs and representative timing waveforms.
- `validation.json`: hashes and run metadata.
- A generated timing-results section in `TeamNotes/arad-report.md`. Rerunning
  replaces that generated section, preserving the original vector report above it.

## Bonus: repeat the timing experiment at several widths

The bonus measures **timing only** at N = **8, 16, 32, 64**. All seven designs
support these powers of two; CarrySkip also requires a multiple of its four-bit
block size. Keep 64 as the baseline and compile every smaller width separately.

After the Linux setup in step 0, run the complete sweep and create its results:

```bash
python3 Simulation/Timing/RunTiming.py --width 8 16 32 64 --jobs 2 --reuse
python3 Simulation/Timing/CreateWidthResults.py
```

This covers 56 device/design/width combinations and 168 corner simulations.
`--reuse` skips complete matching runs, so an existing 64-bit baseline saves
14 compilations and 42 simulations. Without existing builds it runs all widths.
It checks source/vector matches and successful completion; it is not a cache
for changed tool versions, fitter settings or testbench behavior. Omit `--reuse`
after changing those. All analysis still checks the final values and compares
every recorded output-event delay with the actual VCD waveform.

For a small first experiment, or to understand each stage separately:

```bash
python3 Simulation/Timing/RunTiming.py --width 8 --device EP4CE30F23C6 --topology CarrySkip
python3 Simulation/Timing/RunTiming.py --width 8 16 32 --jobs 2 --phase build
python3 Simulation/Timing/RunTiming.py --width 8 16 32 --jobs 2 --phase simulate
```

The runner reconstructs and checks these files for each N automatically:

```text
Simulation/TestVectors/WidthSweep/AdderRandom_N8.tvs
Simulation/TestVectors/WidthSweep/TimingVectorsDraft_N8.tvs
```

The same naming applies to N16, N32 and N64. To generate/check one width manually:

```bash
python3 Simulation/TestVectors/GenAdderVectors.py --width 8 --seed 350 --count 500 --out Simulation/TestVectors/WidthSweep/AdderRandom_N8.tvs
python3 Simulation/TestVectors/GenAdderVectors.py --width 8 --timing-out Simulation/TestVectors/WidthSweep/TimingVectorsDraft_N8.tvs
python3 Simulation/TestVectors/GenAdderVectors.py --width 8 --check Simulation/TestVectors/WidthSweep/AdderRandom_N8.tvs
python3 Simulation/TestVectors/GenAdderVectors.py --width 8 --check Simulation/TestVectors/WidthSweep/TimingVectorsDraft_N8.tvs
```

The N64 files are byte-identical to the original baseline inputs. Each width has
the same category counts: 200 uniform, 125 long-propagate, 100 near-overflow,
75 boundary-stop. Carry origins and offsets near signed/unsigned limits scale
with N. Seed 350 makes each width reproducible; the smaller inputs are freshly
constructed, not truncated 64-bit words. Some 8-bit inputs repeat; this remains
a directed sample rather than exhaustive verification.

For the seven timing pairs, define `M = 2**N - 1`, `H = 2**(N-1)`,
`T = 15 << (N-4)`, and `L = 1 << (N-4)`. Each tuple below is `(A, B, Cin)`;
the generator recomputes S/Cout/Ovfl at the selected width.

| Pair | Setup | Trigger | Width-dependent path |
| --- | --- | --- | --- |
| CS1 | `(H-1, 0, 0)` | `(H-1, 1, 0)` | Generate at bit 0; propagate to the sign bit through N/4 four-bit blocks |
| CS2 | `(H-1, 1, 0)` | `(H-1, 0, 0)` | Reverse CS1; falling carry through the ripple/skip OR network |
| CS3 | `(T, 0, 0)` | `(T, L, 0)` | Local generate/ripple in the top four-bit block; skip is not taken |
| KS1 | `(M, 0, 0)` | `(M, 0, 1)` | Rising Cin with full-width propagation |
| KS2 | `(M, 0, 1)` | `(M, 0, 0)` | Falling Cin with full-width propagation |
| KS3 | `(M, 0, 0)` | `(M, 1, 0)` | Bit-0 generate change through the prefix network |
| KS4 | `(M-1, 0, 1)` | `(M, 0, 1)` | Bit-0 propagate change, Cin held high |

At N=8, CS1/CS2 have two blocks and no middle skip blocks. At N=16/32/64
they have 2/6/14 middle blocks. KoggeStone has 3/4/5/6 prefix stages.
All seven pairs run on every topology, so their names do not restrict where
they can expose a slow transition.

In the generated Quartus QSF, `set_parameter -name N 8` overrides the original
Adder entity's generic without editing the RTL. ModelSim separately uses
`-gN=8` for the generic testbench. The fitted DUT netlist already has fixed-width
ports. The bench constructs `vectors_N8.tvs` from its generic; the runner copies
the concatenated random/pair rows into that file. Smaller-width builds use
`.timing-build/<device>_<topology>_N8/`; N64 keeps the original folder names.

`CreateWidthResults.py` needs the completed four-width sweep and the published
baseline `Documentation/TimingResults/design_summary.csv`. It confirms the
64-bit results have not changed. If intentionally rebuilding the baseline with
different RTL/tools/settings, regenerate it with `CreateResults.py` first.
The bonus output directory is `Documentation/TimingResults/WidthSweep/`:

- `AdderWidthTimingResults.xlsx`: compact width comparison, design/corner
  summaries, timing-pair measurements, vectors, validation, and editable charts.
- `width_comparison.csv`: the report's 14-row table, with one column per N.
- `design_summary.csv`, `corner_summary.csv`, `timing_pairs.csv`, `vectors.csv`,
  `validation.csv`, `validation.json`: detailed timing results and evidence.
- `measurements.csv`: all 86,352 checked rows, including setup transitions;
  join with `vectors.csv` by **Width and Index** for the exact inputs.
- `timing_vs_width.png` and `.svg`: separate device panels with seven topology
  curves, at doubling-width steps. Lines connect samples, not measured
  intermediate widths or fitted break-points.

The script inserts/replaces a small bonus section **above** the original timing
section in `TeamNotes/arad-report.md`. It reports which topology is fastest at
each sampled N and whether that winner changes. The metric is the largest
observed last-output-event delay across both slow corners, including I/O and
routing. Only one fitter seed is used; these are not exhaustive timing bounds.
Cost is left to the separate cost analysis.

## 6. Check what will be shared

```bash
git status --short
git diff --check
git check-ignore .timing-build/EP4CE30F23C6_CarrySkip/timing.qsf
```

The scripts/testbench, `.gitignore`, report, workbook, CSVs and figures are the
shareable changes. `.timing-build/` contains all generated Quartus projects,
databases, programming files, netlists, SDF, ModelSim libraries, VCDs and logs;
it is ignored. Do not force-add that folder. Nothing in these scripts commits
or pushes automatically.
