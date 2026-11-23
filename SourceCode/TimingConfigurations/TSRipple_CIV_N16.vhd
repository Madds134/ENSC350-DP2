-- TSRipple_CIV_N16.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of Ripple on EP4CE115F29C7
-- (TSRipple_CIV_N16.do compiles Ripple_CIV_N16.vho into library Ripple_CIV_N16; each netlist declares entity Adder,
--  so each candidate has its own library)
library Ripple_CIV_N16;
configuration TSRipple_CIV_N16 of TBAdder is
    for Test
        for DUT : Adder
            use entity Ripple_CIV_N16.Adder(structure);
        end for;
    end for;
end configuration TSRipple_CIV_N16;
