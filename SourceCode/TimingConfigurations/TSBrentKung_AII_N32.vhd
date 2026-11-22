-- TSBrentKung_AII_N32.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of BrentKung on EP2AGX45DF29C6
-- (TSBrentKung_AII_N32.do compiles BrentKung_AII_N32.vho into library BrentKung_AII_N32; each netlist declares entity Adder,
--  so each candidate has its own library)
library BrentKung_AII_N32;
configuration TSBrentKung_AII_N32 of TBAdder is
    for Test
        for DUT : Adder
            use entity BrentKung_AII_N32.Adder(structure);
        end for;
    end for;
end configuration TSBrentKung_AII_N32;
