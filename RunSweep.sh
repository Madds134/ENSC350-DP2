#!/usr/bin/env bash
# RunSweep.sh
# Bonus N sweep (spec p.7): for each adder width, rebuild the directed test vectors, synthesize every
# candidate, collect cost and STA, generate the timing configurations/scripts, and run every timing
# simulation in batch mode. Revisions, netlists and transcripts get the suffix _N<width>.
# Run from the project root in Git Bash, with the Quartus GUI closed:
#   ./RunSweep.sh            (N = 8 16 32; N = 128 needs 387 I/O pins, more than the E30 package has)
#   ./RunSweep.sh 16         (one width)
set -e
Q=/c/intelFPGA_lite/20.1/quartus/bin64/quartus_sh.exe
VSIM=/c/intelFPGA_lite/20.1/modelsim_ase/win32aloem/vsim.exe
Widths=${*:-"8 16 32"}

for N in $Widths; do
    export ADDER_N=$N    # read by Candidates.tcl
    echo "==================== N = $N ===================="

    # Directed vectors for this width: the same rules as Adder00.tvs
    "$Q" -t Simulation/TestVectors/GenDirectedVectors.tcl "$N"

    # Synthesize every candidate at this width (revisions <Topology>_<FPGA>_N<N>)
    "$Q" -t SynthAll.tcl

    # Cost and STA results for this width (CostResults_N<N>.csv, QuartusSummary_N<N>.txt)
    "$Q" -t CollectResults.tcl -sta

    # Timing configurations + scripts for this width, then every timing simulation in batch mode
    # (onerror resume: one failed candidate doesn't stop the rest; CollectTiming reports it)
    (cd Simulation && "$Q" -t MakeTS.tcl && "$VSIM" -c -do "onerror {resume}; do RunAllTS_N$N.do; quit -f")
done
echo "Sweep finished: Documentation/OutputFiles/CostResults_N*.csv and TimingResults.csv"
