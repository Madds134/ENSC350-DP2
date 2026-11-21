# CollectTiming.tcl
# Reads the final line of every timing transcript (TS*.txt) and writes the measured-delay table
# Run from ModelSim (source CollectTiming.tcl) or any Tcl shell; paths are relative to this script

set Here [file dirname [file normalize [info script]]]
set OutDir [file join $Here .. Documentation OutputFiles]
file mkdir $OutDir

# Convert a VHDL time image such as "41727 ps" or "41.727 ns" to ns
proc ToNs {Value Unit} {
    switch -- $Unit {
        fs { return [expr {$Value / 1.0e6}] }
        ps { return [expr {$Value / 1.0e3}] }
        ns { return [expr {$Value * 1.0}] }
        us { return [expr {$Value * 1.0e3}] }
        default { return "" }
    }
}

set Csv [open [file join $OutDir TimingResults.csv] w]
puts $Csv "Candidate,Measurements,Failures,WorstS_ns,WorstSMeas,WorstStatus_ns,WorstStatusMeas"

foreach Transcript [lsort [glob -nocomplain -directory $Here TS*.txt]] {
    set Rev [string range [file rootname [file tail $Transcript]] 2 end]
    set In [open $Transcript r]
    set Text [read $In]
    close $In

    # The testbench's last report:
    # "Simulation Completed: K measurements, F failures | worst S delay=T (meas i) | worst Status delay=T (meas j)"
    set Pattern {Simulation Completed: (\d+) measurements, (\d+) failures \| worst S delay=([\d.]+) (\w+) \(meas (\d+)\) \| worst Status delay=([\d.]+) (\w+) \(meas (\d+)\)}
    if {[regexp $Pattern $Text -> Count Fails SVal SUnit SMeas StVal StUnit StMeas]} {
        puts $Csv [join [list $Rev $Count $Fails [ToNs $SVal $SUnit] $SMeas [ToNs $StVal $StUnit] $StMeas] ,]
    } else {
        puts "CollectTiming: no completed run found in [file tail $Transcript]"
        puts $Csv "$Rev,,,,,,"
    }
}
close $Csv
puts "Wrote [file join $OutDir TimingResults.csv]"
