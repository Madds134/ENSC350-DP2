-- TSCarrySkip_AII.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of CarrySkip on EP2AGX45DF29C6
-- (TSCarrySkip_AII.do compiles CarrySkip_AII.vho into library CarrySkip_AII; each netlist declares entity Adder,
--  so each candidate has its own library)
library CarrySkip_AII;
configuration TSCarrySkip_AII of TBAdder is
    for Test
        for DUT : Adder
            use entity CarrySkip_AII.Adder(structure);
        end for;
    end for;
end configuration TSCarrySkip_AII;
