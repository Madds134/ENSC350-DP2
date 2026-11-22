-- TSBrentKung_CIVE30_N16.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of BrentKung on EP4CE30F23C6
-- (TSBrentKung_CIVE30_N16.do compiles BrentKung_CIVE30_N16.vho into library BrentKung_CIVE30_N16; each netlist declares entity Adder,
--  so each candidate has its own library)
library BrentKung_CIVE30_N16;
configuration TSBrentKung_CIVE30_N16 of TBAdder is
    for Test
        for DUT : Adder
            use entity BrentKung_CIVE30_N16.Adder(structure);
        end for;
    end for;
end configuration TSBrentKung_CIVE30_N16;
