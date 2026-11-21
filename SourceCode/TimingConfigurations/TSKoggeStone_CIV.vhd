-- TSKoggeStone_CIV.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of KoggeStone on EP4CE115F29C7
-- (TSKoggeStone_CIV.do compiles KoggeStone_CIV.vho into library KoggeStone_CIV; each netlist declares entity Adder,
--  so each candidate has its own library)
library KoggeStone_CIV;
configuration TSKoggeStone_CIV of TBAdder is
    for Test
        for DUT : Adder
            use entity KoggeStone_CIV.Adder(structure);
        end for;
    end for;
end configuration TSKoggeStone_CIV;
