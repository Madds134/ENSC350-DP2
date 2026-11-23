-- TSConditionalSumKeep_AII_N8.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of ConditionalSumKeep on EP2AGX45DF29C6
-- (TSConditionalSumKeep_AII_N8.do compiles ConditionalSumKeep_AII_N8.vho into library ConditionalSumKeep_AII_N8; each netlist declares entity Adder,
--  so each candidate has its own library)
library ConditionalSumKeep_AII_N8;
configuration TSConditionalSumKeep_AII_N8 of TBAdder is
    for Test
        for DUT : Adder
            use entity ConditionalSumKeep_AII_N8.Adder(structure);
        end for;
    end for;
end configuration TSConditionalSumKeep_AII_N8;
