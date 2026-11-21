-- TSConditionalSumKeep_CIV.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of ConditionalSumKeep on EP4CE115F29C7
-- (TSConditionalSumKeep_CIV.do compiles ConditionalSumKeep_CIV.vho into library ConditionalSumKeep_CIV; each netlist declares entity Adder,
--  so each candidate has its own library)
library ConditionalSumKeep_CIV;
configuration TSConditionalSumKeep_CIV of TBAdder is
    for Test
        for DUT : Adder
            use entity ConditionalSumKeep_CIV.Adder(structure);
        end for;
    end for;
end configuration TSConditionalSumKeep_CIV;
