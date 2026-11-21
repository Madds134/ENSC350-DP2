-- TSConditionalSumKeep_CIVE30.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of ConditionalSumKeep on EP4CE30F23C6
-- (TSConditionalSumKeep_CIVE30.do compiles ConditionalSumKeep_CIVE30.vho into library ConditionalSumKeep_CIVE30; each netlist declares entity Adder,
--  so each candidate has its own library)
library ConditionalSumKeep_CIVE30;
configuration TSConditionalSumKeep_CIVE30 of TBAdder is
    for Test
        for DUT : Adder
            use entity ConditionalSumKeep_CIVE30.Adder(structure);
        end for;
    end for;
end configuration TSConditionalSumKeep_CIVE30;
