-- TSConditionalSum_CIV_N16.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of ConditionalSum on EP4CE115F29C7
-- (TSConditionalSum_CIV_N16.do compiles ConditionalSum_CIV_N16.vho into library ConditionalSum_CIV_N16; each netlist declares entity Adder,
--  so each candidate has its own library)
library ConditionalSum_CIV_N16;
configuration TSConditionalSum_CIV_N16 of TBAdder is
    for Test
        for DUT : Adder
            use entity ConditionalSum_CIV_N16.Adder(structure);
        end for;
    end for;
end configuration TSConditionalSum_CIV_N16;
