-- TSRipple_AII.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of Ripple on EP2AGX45DF29C6
-- (TSRipple_AII.do compiles Ripple_AII.vho into library Ripple_AII; each netlist declares entity Adder,
--  so each candidate has its own library)
library Ripple_AII;
configuration TSRipple_AII of TBAdder is
    for Test
        for DUT : Adder
            use entity Ripple_AII.Adder(structure);
        end for;
    end for;
end configuration TSRipple_AII;
