-- TSKoggeStone_AII_N32.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of KoggeStone on EP2AGX45DF29C6
-- (TSKoggeStone_AII_N32.do compiles KoggeStone_AII_N32.vho into library KoggeStone_AII_N32; each netlist declares entity Adder,
--  so each candidate has its own library)
library KoggeStone_AII_N32;
configuration TSKoggeStone_AII_N32 of TBAdder is
    for Test
        for DUT : Adder
            use entity KoggeStone_AII_N32.Adder(structure);
        end for;
    end for;
end configuration TSKoggeStone_AII_N32;
