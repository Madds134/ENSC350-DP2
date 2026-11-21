-- TSFastRipple_CIV.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of FastRipple on EP4CE115F29C7
-- (TSFastRipple_CIV.do compiles FastRipple_CIV.vho into library FastRipple_CIV; each netlist declares entity Adder,
--  so each candidate has its own library)
library FastRipple_CIV;
configuration TSFastRipple_CIV of TBAdder is
    for Test
        for DUT : Adder
            use entity FastRipple_CIV.Adder(structure);
        end for;
    end for;
end configuration TSFastRipple_CIV;
