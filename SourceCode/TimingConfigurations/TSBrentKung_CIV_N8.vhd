-- TSBrentKung_CIV_N8.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of BrentKung on EP4CE115F29C7
-- (TSBrentKung_CIV_N8.do compiles BrentKung_CIV_N8.vho into library BrentKung_CIV_N8; each netlist declares entity Adder,
--  so each candidate has its own library)
library BrentKung_CIV_N8;
configuration TSBrentKung_CIV_N8 of TBAdder is
    for Test
        for DUT : Adder
            use entity BrentKung_CIV_N8.Adder(structure);
        end for;
    end for;
end configuration TSBrentKung_CIV_N8;
