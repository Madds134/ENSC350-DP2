-- TSCarrySkip_CIVE30_N32.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of CarrySkip on EP4CE30F23C6
-- (TSCarrySkip_CIVE30_N32.do compiles CarrySkip_CIVE30_N32.vho into library CarrySkip_CIVE30_N32; each netlist declares entity Adder,
--  so each candidate has its own library)
library CarrySkip_CIVE30_N32;
configuration TSCarrySkip_CIVE30_N32 of TBAdder is
    for Test
        for DUT : Adder
            use entity CarrySkip_CIVE30_N32.Adder(structure);
        end for;
    end for;
end configuration TSCarrySkip_CIVE30_N32;
