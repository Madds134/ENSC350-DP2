-- TSConditionalSum_CIV.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of ConditionalSum on EP4CE115F29C7
-- (TSConditionalSum_CIV.do compiles ConditionalSum_CIV.vho into library ConditionalSum_CIV; each netlist declares entity Adder,
--  so each candidate has its own library)
library ConditionalSum_CIV;
configuration TSConditionalSum_CIV of TBAdder is
    for Test
        for DUT : Adder
            use entity ConditionalSum_CIV.Adder(structure);
        end for;
    end for;
end configuration TSConditionalSum_CIV;
