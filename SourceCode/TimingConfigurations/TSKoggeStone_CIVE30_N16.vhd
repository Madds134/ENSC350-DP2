-- TSKoggeStone_CIVE30_N16.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of KoggeStone on EP4CE30F23C6
-- (TSKoggeStone_CIVE30_N16.do compiles KoggeStone_CIVE30_N16.vho into library KoggeStone_CIVE30_N16; each netlist declares entity Adder,
--  so each candidate has its own library)
library KoggeStone_CIVE30_N16;
configuration TSKoggeStone_CIVE30_N16 of TBAdder is
    for Test
        for DUT : Adder
            use entity KoggeStone_CIVE30_N16.Adder(structure);
        end for;
    end for;
end configuration TSKoggeStone_CIVE30_N16;
