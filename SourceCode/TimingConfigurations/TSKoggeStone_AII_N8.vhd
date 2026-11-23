-- TSKoggeStone_AII_N8.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of KoggeStone on EP2AGX45DF29C6
-- (TSKoggeStone_AII_N8.do compiles KoggeStone_AII_N8.vho into library KoggeStone_AII_N8; each netlist declares entity Adder,
--  so each candidate has its own library)
library KoggeStone_AII_N8;
configuration TSKoggeStone_AII_N8 of TBAdder is
    for Test
        for DUT : Adder
            use entity KoggeStone_AII_N8.Adder(structure);
        end for;
    end for;
end configuration TSKoggeStone_AII_N8;
