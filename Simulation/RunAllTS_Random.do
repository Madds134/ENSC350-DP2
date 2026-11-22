# RunAllTS_Random.do
# Runs the timing simulation of every design candidate (N = 64), then collects the worst-case delays

do TSRandom_Ripple_CIV.do
do TSRandom_Ripple_CIVE30.do
do TSRandom_Ripple_AII.do
do TSRandom_FastRipple_CIV.do
do TSRandom_FastRipple_CIVE30.do
do TSRandom_FastRipple_AII.do
do TSRandom_ConditionalSum_CIV.do
do TSRandom_ConditionalSum_CIVE30.do
do TSRandom_ConditionalSum_AII.do
do TSRandom_ConditionalSumKeep_CIV.do
do TSRandom_ConditionalSumKeep_CIVE30.do
do TSRandom_ConditionalSumKeep_AII.do
do TSRandom_BlockLookahead_CIV.do
do TSRandom_BlockLookahead_CIVE30.do
do TSRandom_BlockLookahead_AII.do
do TSRandom_BrentKung_CIV.do
do TSRandom_BrentKung_CIVE30.do
do TSRandom_BrentKung_AII.do
do TSRandom_KoggeStone_CIV.do
do TSRandom_KoggeStone_CIVE30.do
do TSRandom_KoggeStone_AII.do
do TSRandom_CarrySkip_CIV.do
do TSRandom_CarrySkip_CIVE30.do
do TSRandom_CarrySkip_AII.do

# Worst-case delays of every candidate into ../Documentation/OutputFiles/TimingResults.csv
source CollectTiming.tcl
