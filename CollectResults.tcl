# CollectResults.tcl
# Reads the Quartus reports of every compiled candidate (read-only: no project, no recompile)
# and writes the cost table and the merged Quartus summary
# Run from the project root:
#   quartus_sh -t CollectResults.tcl         (cost only)
#   quartus_sh -t CollectResults.tcl -sta    (also STA results: only once the delay predictions are logged)

source Candidates.tcl

# Command-line arguments (quartus_sh passes them in quartus(args); plain tclsh uses argv)
if {[info exists quartus(args)]} { set Args $quartus(args) } else { set Args $argv }
set WithSTA [expr {[lsearch -exact $Args -sta] >= 0}]

# Read a whole text file into a string
proc ReadFile {Path} {
    set In [open $Path r]
    set Text [read $In]
    close $In
    return $Text
}

# First number in the report row whose label matches Label (e.g. "-- 4 input functions"), or "" if absent
proc RowValue {Text Label} {
    # "--" ends regexp's options, because labels such as "-- 4 input functions" start with a dash
    if {[regexp -- "$Label\\s*;\\s*(\[\\d,\]+)" $Text -> Value]} { return [string map {, ""} $Value] }
    return ""
}

# Slack of one STA corner from the .sta.summary text (e.g. Corner "Slow \\S+ 85C"), or "" if absent
proc CornerSlack {Text Corner} {
    if {[regexp -- "Type\\s*:\\s*$Corner Model Setup\[^\\n\]*\\nSlack\\s*:\\s*(-?\[\\d.\]+)" $Text -> Slack]} { return $Slack }
    return ""
}

file mkdir Documentation/OutputFiles
# One cost table / summary per width: the N = 64 files keep their names, the sweep adds _N<width>
set Suffix [expr {$N == 64 ? "" : "_N$N"}]
set CsvFile     Documentation/OutputFiles/CostResults$Suffix.csv
set SummaryFile Documentation/OutputFiles/QuartusSummary$Suffix.txt

# Cost table: totals, then the LUT-input breakdown that explains any gap from the prediction
#   Cyclone IV: LE, split into 4 / 3 / <=2 input functions
#   Arria II:   ALUT and ALM, ALUTs split into 7 / 6 / 5 / 4 / <=3 input functions
set Csv [open $CsvFile w]
set Header "Candidate,Device,N,LE,ALUT,ALM,In7,In6,In5,In4,In3,In2orLess,In3orLess"
if {$WithSTA} {
    # Path delay = constraint (1 ns) - slack, at each corner
    append Header ",DelaySlow85C_ns,DelaySlow0C_ns,DelayFast0C_ns"
}
puts $Csv $Header

foreach C $Candidates {
    lassign $C Rev Family Device
    set FitFile output_files/$Rev.fit.rpt
    if {![file exists $FitFile]} { continue }
    set Fit [ReadFile $FitFile]

    set Row [list $Rev $Device $N]
    lappend Row [RowValue $Fit "Total logic elements"]
    lappend Row [RowValue $Fit "Combinational ALUTs"]
    lappend Row [RowValue $Fit "ALMs:  partially or completely used"]
    foreach Inputs {7 6 5 4 3} {
        lappend Row [RowValue $Fit "-- $Inputs input functions"]
    }
    lappend Row [RowValue $Fit "-- <=2 input functions"]
    lappend Row [RowValue $Fit "-- <=3 input functions"]

    if {$WithSTA} {
        set StaFile output_files/$Rev.sta.summary
        set Sta [expr {[file exists $StaFile] ? [ReadFile $StaFile] : ""}]
        foreach Corner {{Slow \S+ 85C} {Slow \S+ 0C} {Fast \S+ 0C}} {
            set Slack [CornerSlack $Sta $Corner]
            lappend Row [expr {$Slack eq "" ? "" : [format %.3f [expr {1.0 - $Slack}]]}]
        }
    }
    puts $Csv [join $Row ,]
}
close $Csv
puts "Wrote $CsvFile"

# Merged Quartus summary (a deliverable): map + fit summaries, plus STA once it is allowed
set Stages {map fit}
if {$WithSTA} { lappend Stages sta }
set Out [open $SummaryFile w]
foreach C $Candidates {
    set Rev [lindex $C 0]
    foreach Stage $Stages {
        set File output_files/$Rev.$Stage.summary
        if {![file exists $File]} { continue }
        puts $Out "==================== $Rev : $Stage summary ===================="
        puts $Out [ReadFile $File]
    }
}
close $Out
puts "Wrote $SummaryFile"
