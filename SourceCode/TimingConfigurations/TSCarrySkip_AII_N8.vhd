-- TSCarrySkip_AII_N8.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of CarrySkip on EP2AGX45DF29C6
-- (TSCarrySkip_AII_N8.do compiles CarrySkip_AII_N8.vho into library CarrySkip_AII_N8; each netlist declares entity Adder,
--  so each candidate has its own library)
library CarrySkip_AII_N8;
configuration TSCarrySkip_AII_N8 of TBAdder is
    for Test
        for DUT : Adder
            use entity CarrySkip_AII_N8.Adder(structure);
        end for;
    end for;
end configuration TSCarrySkip_AII_N8;
