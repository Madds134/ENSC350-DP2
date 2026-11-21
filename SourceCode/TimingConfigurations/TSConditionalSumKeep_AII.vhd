-- TSConditionalSumKeep_AII.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of ConditionalSumKeep on EP2AGX45DF29C6
-- (TSConditionalSumKeep_AII.do compiles ConditionalSumKeep_AII.vho into library ConditionalSumKeep_AII; each netlist declares entity Adder,
--  so each candidate has its own library)
library ConditionalSumKeep_AII;
configuration TSConditionalSumKeep_AII of TBAdder is
    for Test
        for DUT : Adder
            use entity ConditionalSumKeep_AII.Adder(structure);
        end for;
    end for;
end configuration TSConditionalSumKeep_AII;
