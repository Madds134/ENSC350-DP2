-- TSBlockLookahead_AII.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of BlockLookahead on EP2AGX45DF29C6
-- (TSBlockLookahead_AII.do compiles BlockLookahead_AII.vho into library BlockLookahead_AII; each netlist declares entity Adder,
--  so each candidate has its own library)
library BlockLookahead_AII;
configuration TSBlockLookahead_AII of TBAdder is
    for Test
        for DUT : Adder
            use entity BlockLookahead_AII.Adder(structure);
        end for;
    end for;
end configuration TSBlockLookahead_AII;
