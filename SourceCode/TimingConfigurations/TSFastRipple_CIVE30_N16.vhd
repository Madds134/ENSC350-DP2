-- TSFastRipple_CIVE30_N16.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of FastRipple on EP4CE30F23C6
-- (TSFastRipple_CIVE30_N16.do compiles FastRipple_CIVE30_N16.vho into library FastRipple_CIVE30_N16; each netlist declares entity Adder,
--  so each candidate has its own library)
library FastRipple_CIVE30_N16;
configuration TSFastRipple_CIVE30_N16 of TBAdder is
    for Test
        for DUT : Adder
            use entity FastRipple_CIVE30_N16.Adder(structure);
        end for;
    end for;
end configuration TSFastRipple_CIVE30_N16;
