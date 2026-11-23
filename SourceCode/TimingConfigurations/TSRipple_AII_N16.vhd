-- TSRipple_AII_N16.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of Ripple on EP2AGX45DF29C6
-- (TSRipple_AII_N16.do compiles Ripple_AII_N16.vho into library Ripple_AII_N16; each netlist declares entity Adder,
--  so each candidate has its own library)
library Ripple_AII_N16;
configuration TSRipple_AII_N16 of TBAdder is
    for Test
        for DUT : Adder
            use entity Ripple_AII_N16.Adder(structure);
        end for;
    end for;
end configuration TSRipple_AII_N16;
