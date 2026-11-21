-- TSFastRipple_AII.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of FastRipple on EP2AGX45DF29C6
-- (TSFastRipple_AII.do compiles FastRipple_AII.vho into library FastRipple_AII; each netlist declares entity Adder,
--  so each candidate has its own library)
library FastRipple_AII;
configuration TSFastRipple_AII of TBAdder is
    for Test
        for DUT : Adder
            use entity FastRipple_AII.Adder(structure);
        end for;
    end for;
end configuration TSFastRipple_AII;
