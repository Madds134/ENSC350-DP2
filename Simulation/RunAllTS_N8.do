# RunAllTS_N8.do
# Runs the timing simulation of every design candidate (N = 8), then collects the worst-case delays

do TSRipple_CIV_N8.do
do TSRipple_CIVE30_N8.do
do TSRipple_AII_N8.do
do TSFastRipple_CIV_N8.do
do TSFastRipple_CIVE30_N8.do
do TSFastRipple_AII_N8.do
do TSConditionalSum_CIV_N8.do
do TSConditionalSum_CIVE30_N8.do
do TSConditionalSum_AII_N8.do
do TSConditionalSumKeep_CIV_N8.do
do TSConditionalSumKeep_CIVE30_N8.do
do TSConditionalSumKeep_AII_N8.do
do TSBlockLookahead_CIV_N8.do
do TSBlockLookahead_CIVE30_N8.do
do TSBlockLookahead_AII_N8.do
do TSBrentKung_CIV_N8.do
do TSBrentKung_CIVE30_N8.do
do TSBrentKung_AII_N8.do
do TSKoggeStone_CIV_N8.do
do TSKoggeStone_CIVE30_N8.do
do TSKoggeStone_AII_N8.do
do TSCarrySkip_CIV_N8.do
do TSCarrySkip_CIVE30_N8.do
do TSCarrySkip_AII_N8.do

# Worst-case delays of every candidate into ../Documentation/OutputFiles/TimingResults.csv
source CollectTiming.tcl
