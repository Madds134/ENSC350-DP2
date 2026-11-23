# CollectTiming.tcl
# Reads the final line of every timing transcript (TS*.txt) and writes the measured-delay table
# Run from ModelSim (source CollectTiming.tcl) or any Tcl shell; paths are relative to this script

set Here [file dirname [file normalize [info script]]]
set OutDir [file join $Here .. Documentation OutputFiles]
file mkdir $OutDir

# Convert a VHDL time image such as "41727 ps" or "41.727 ns" to ns
proc ToNs {Value Unit} {
    switch -- $Unit {
        fs { set Ns [expr {$Value / 1.0e6}] }
        ps { set Ns [expr {$Value / 1.0e3}] }
        ns { set Ns [expr {$Value * 1.0}] }
        us { set Ns [expr {$Value * 1.0e3}] }
        default { return "" }
    }
    # 3 decimals = 1 ps, the simulation's time resolution
    return [format %.3f $Ns]
}

set Csv [open [file join $OutDir TimingResults.csv] w]
puts $Csv "Candidate,Topology,FPGA,N,VectorSet,Measurements,Failures,WorstS_ns,WorstSMeas,WorstStatus_ns,WorstStatusMeas"

foreach Transcript [lsort [glob -nocomplain -directory $Here TS*.txt]] {
    # TS<Candidate>.txt = directed vectors (Adder00*.tvs); TSRandom_<Candidate>.txt = the random set
    set Name [file rootname [file tail $Transcript]]
    if {[string match TSRandom_* $Name]} {
        set VectorSet Random
        set Rev [string range $Name 9 end]
    } else {
        set VectorSet Directed
        set Rev [string range $Name 2 end]
    }
    # Revision name = <Topology>_<FPGA>[_N<width>]; no width suffix means N = 64
    set Parts [split $Rev _]
    set Topo  [lindex $Parts 0]
    set Fpga  [lindex $Parts 1]
    set Width 64
    regexp {_N(\d+)$} $Rev -> Width
    set In [open $Transcript r]
    set Text [read $In]
    close $In

    # The testbench's last report:
    # "Simulation Completed: K measurements, F failures | worst S delay=T (meas i) | worst Status delay=T (meas j)"
    set Pattern {Simulation Completed: (\d+) measurements, (\d+) failures \| worst S delay=([\d.]+) (\w+) \(meas (\d+)\) \| worst Status delay=([\d.]+) (\w+) \(meas (\d+)\)}
    if {[regexp $Pattern $Text -> Count Fails SVal SUnit SMeas StVal StUnit StMeas]} {
        puts $Csv [join [list $Rev $Topo $Fpga $Width $VectorSet $Count $Fails [ToNs $SVal $SUnit] $SMeas [ToNs $StVal $StUnit] $StMeas] ,]
    } else {
        puts "CollectTiming: no completed run found in [file tail $Transcript]"
        puts $Csv "$Rev,$Topo,$Fpga,$Width,$VectorSet,,,,,,"
    }
}
close $Csv
puts "Wrote [file join $OutDir TimingResults.csv]"
