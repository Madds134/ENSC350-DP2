-- TSConditionalSum_AII.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of ConditionalSum on EP2AGX45DF29C6
-- (TSConditionalSum_AII.do compiles ConditionalSum_AII.vho into library ConditionalSum_AII; each netlist declares entity Adder,
--  so each candidate has its own library)
library ConditionalSum_AII;
configuration TSConditionalSum_AII of TBAdder is
    for Test
        for DUT : Adder
            use entity ConditionalSum_AII.Adder(structure);
        end for;
    end for;
end configuration TSConditionalSum_AII;
