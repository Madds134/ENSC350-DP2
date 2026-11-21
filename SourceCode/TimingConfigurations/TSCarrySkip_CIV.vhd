-- TSCarrySkip_CIV.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of CarrySkip on EP4CE115F29C7
-- (TSCarrySkip_CIV.do compiles CarrySkip_CIV.vho into library CarrySkip_CIV; each netlist declares entity Adder,
--  so each candidate has its own library)
library CarrySkip_CIV;
configuration TSCarrySkip_CIV of TBAdder is
    for Test
        for DUT : Adder
            use entity CarrySkip_CIV.Adder(structure);
        end for;
    end for;
end configuration TSCarrySkip_CIV;
