-- TSBlockLookahead_CIV_N16.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of BlockLookahead on EP4CE115F29C7
-- (TSBlockLookahead_CIV_N16.do compiles BlockLookahead_CIV_N16.vho into library BlockLookahead_CIV_N16; each netlist declares entity Adder,
--  so each candidate has its own library)
library BlockLookahead_CIV_N16;
configuration TSBlockLookahead_CIV_N16 of TBAdder is
    for Test
        for DUT : Adder
            use entity BlockLookahead_CIV_N16.Adder(structure);
        end for;
    end for;
end configuration TSBlockLookahead_CIV_N16;
