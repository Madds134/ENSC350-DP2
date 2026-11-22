-- TSFastRipple_CIV_N8.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of FastRipple on EP4CE115F29C7
-- (TSFastRipple_CIV_N8.do compiles FastRipple_CIV_N8.vho into library FastRipple_CIV_N8; each netlist declares entity Adder,
--  so each candidate has its own library)
library FastRipple_CIV_N8;
configuration TSFastRipple_CIV_N8 of TBAdder is
    for Test
        for DUT : Adder
            use entity FastRipple_CIV_N8.Adder(structure);
        end for;
    end for;
end configuration TSFastRipple_CIV_N8;
