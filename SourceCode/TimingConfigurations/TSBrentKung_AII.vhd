-- TSBrentKung_AII.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of BrentKung on EP2AGX45DF29C6
-- (TSBrentKung_AII.do compiles BrentKung_AII.vho into library BrentKung_AII; each netlist declares entity Adder,
--  so each candidate has its own library)
library BrentKung_AII;
configuration TSBrentKung_AII of TBAdder is
    for Test
        for DUT : Adder
            use entity BrentKung_AII.Adder(structure);
        end for;
    end for;
end configuration TSBrentKung_AII;
