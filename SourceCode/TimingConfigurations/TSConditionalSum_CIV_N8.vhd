-- TSConditionalSum_CIV_N8.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of ConditionalSum on EP4CE115F29C7
-- (TSConditionalSum_CIV_N8.do compiles ConditionalSum_CIV_N8.vho into library ConditionalSum_CIV_N8; each netlist declares entity Adder,
--  so each candidate has its own library)
library ConditionalSum_CIV_N8;
configuration TSConditionalSum_CIV_N8 of TBAdder is
    for Test
        for DUT : Adder
            use entity ConditionalSum_CIV_N8.Adder(structure);
        end for;
    end for;
end configuration TSConditionalSum_CIV_N8;
