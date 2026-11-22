-- TSBlockLookahead_AII_N16.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of BlockLookahead on EP2AGX45DF29C6
-- (TSBlockLookahead_AII_N16.do compiles BlockLookahead_AII_N16.vho into library BlockLookahead_AII_N16; each netlist declares entity Adder,
--  so each candidate has its own library)
library BlockLookahead_AII_N16;
configuration TSBlockLookahead_AII_N16 of TBAdder is
    for Test
        for DUT : Adder
            use entity BlockLookahead_AII_N16.Adder(structure);
        end for;
    end for;
end configuration TSBlockLookahead_AII_N16;
