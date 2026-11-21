# RunAllTS.do
# Runs the timing simulation of every design candidate, then collects the worst-case delays

do TSRipple_CIV.do
do TSRipple_CIVE30.do
do TSRipple_AII.do
do TSFastRipple_CIV.do
do TSFastRipple_CIVE30.do
do TSFastRipple_AII.do
do TSConditionalSum_CIV.do
do TSConditionalSum_CIVE30.do
do TSConditionalSum_AII.do
do TSBlockLookahead_CIV.do
do TSBlockLookahead_CIVE30.do
do TSBlockLookahead_AII.do
do TSBrentKung_CIV.do
do TSBrentKung_CIVE30.do
do TSBrentKung_AII.do
do TSKoggeStone_CIV.do
do TSKoggeStone_CIVE30.do
do TSKoggeStone_AII.do
do TSCarrySkip_CIV.do
do TSCarrySkip_CIVE30.do
do TSCarrySkip_AII.do

# Worst-case delays of every candidate into ../Documentation/OutputFiles/TimingResults.csv
source CollectTiming.tcl
