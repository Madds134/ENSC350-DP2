-- TSKoggeStone_CIVE30_N32.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of KoggeStone on EP4CE30F23C6
-- (TSKoggeStone_CIVE30_N32.do compiles KoggeStone_CIVE30_N32.vho into library KoggeStone_CIVE30_N32; each netlist declares entity Adder,
--  so each candidate has its own library)
library KoggeStone_CIVE30_N32;
configuration TSKoggeStone_CIVE30_N32 of TBAdder is
    for Test
        for DUT : Adder
            use entity KoggeStone_CIVE30_N32.Adder(structure);
        end for;
    end for;
end configuration TSKoggeStone_CIVE30_N32;
