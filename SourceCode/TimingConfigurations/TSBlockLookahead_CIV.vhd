-- TSBlockLookahead_CIV.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of BlockLookahead on EP4CE115F29C7
-- (TSBlockLookahead_CIV.do compiles BlockLookahead_CIV.vho into library BlockLookahead_CIV; each netlist declares entity Adder,
--  so each candidate has its own library)
library BlockLookahead_CIV;
configuration TSBlockLookahead_CIV of TBAdder is
    for Test
        for DUT : Adder
            use entity BlockLookahead_CIV.Adder(structure);
        end for;
    end for;
end configuration TSBlockLookahead_CIV;
