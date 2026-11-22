-- TSBlockLookahead_AII_N32.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of BlockLookahead on EP2AGX45DF29C6
-- (TSBlockLookahead_AII_N32.do compiles BlockLookahead_AII_N32.vho into library BlockLookahead_AII_N32; each netlist declares entity Adder,
--  so each candidate has its own library)
library BlockLookahead_AII_N32;
configuration TSBlockLookahead_AII_N32 of TBAdder is
    for Test
        for DUT : Adder
            use entity BlockLookahead_AII_N32.Adder(structure);
        end for;
    end for;
end configuration TSBlockLookahead_AII_N32;
