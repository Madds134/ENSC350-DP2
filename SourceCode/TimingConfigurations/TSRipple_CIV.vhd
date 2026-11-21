-- TSRipple_CIV.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of Ripple on EP4CE115F29C7
-- (TSRipple_CIV.do compiles Ripple_CIV.vho into library Ripple_CIV; each netlist declares entity Adder,
--  so each candidate has its own library)
library Ripple_CIV;
configuration TSRipple_CIV of TBAdder is
    for Test
        for DUT : Adder
            use entity Ripple_CIV.Adder(structure);
        end for;
    end for;
end configuration TSRipple_CIV;
