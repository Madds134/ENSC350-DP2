-- TSBrentKung_CIV.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of BrentKung on EP4CE115F29C7
-- (TSBrentKung_CIV.do compiles BrentKung_CIV.vho into library BrentKung_CIV; each netlist declares entity Adder,
--  so each candidate has its own library)
library BrentKung_CIV;
configuration TSBrentKung_CIV of TBAdder is
    for Test
        for DUT : Adder
            use entity BrentKung_CIV.Adder(structure);
        end for;
    end for;
end configuration TSBrentKung_CIV;
