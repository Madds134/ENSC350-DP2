-- TSRipple_CIVE30.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of Ripple on EP4CE30F23C6
-- (TSRipple_CIVE30.do compiles Ripple_CIVE30.vho into library Ripple_CIVE30; each netlist declares entity Adder,
--  so each candidate has its own library)
library Ripple_CIVE30;
configuration TSRipple_CIVE30 of TBAdder is
    for Test
        for DUT : Adder
            use entity Ripple_CIVE30.Adder(structure);
        end for;
    end for;
end configuration TSRipple_CIVE30;
