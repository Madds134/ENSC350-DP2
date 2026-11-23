-- TSConditionalSum_AII_N16.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of ConditionalSum on EP2AGX45DF29C6
-- (TSConditionalSum_AII_N16.do compiles ConditionalSum_AII_N16.vho into library ConditionalSum_AII_N16; each netlist declares entity Adder,
--  so each candidate has its own library)
library ConditionalSum_AII_N16;
configuration TSConditionalSum_AII_N16 of TBAdder is
    for Test
        for DUT : Adder
            use entity ConditionalSum_AII_N16.Adder(structure);
        end for;
    end for;
end configuration TSConditionalSum_AII_N16;
