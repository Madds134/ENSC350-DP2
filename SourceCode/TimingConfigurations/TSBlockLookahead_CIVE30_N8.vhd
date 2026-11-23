-- TSBlockLookahead_CIVE30_N8.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of BlockLookahead on EP4CE30F23C6
-- (TSBlockLookahead_CIVE30_N8.do compiles BlockLookahead_CIVE30_N8.vho into library BlockLookahead_CIVE30_N8; each netlist declares entity Adder,
--  so each candidate has its own library)
library BlockLookahead_CIVE30_N8;
configuration TSBlockLookahead_CIVE30_N8 of TBAdder is
    for Test
        for DUT : Adder
            use entity BlockLookahead_CIVE30_N8.Adder(structure);
        end for;
    end for;
end configuration TSBlockLookahead_CIVE30_N8;
