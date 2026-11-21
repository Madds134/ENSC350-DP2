-- TSKoggeStone_AII.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of KoggeStone on EP2AGX45DF29C6
-- (TSKoggeStone_AII.do compiles KoggeStone_AII.vho into library KoggeStone_AII; each netlist declares entity Adder,
--  so each candidate has its own library)
library KoggeStone_AII;
configuration TSKoggeStone_AII of TBAdder is
    for Test
        for DUT : Adder
            use entity KoggeStone_AII.Adder(structure);
        end for;
    end for;
end configuration TSKoggeStone_AII;
