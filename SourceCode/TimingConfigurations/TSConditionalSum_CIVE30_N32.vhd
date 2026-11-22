-- TSConditionalSum_CIVE30_N32.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of ConditionalSum on EP4CE30F23C6
-- (TSConditionalSum_CIVE30_N32.do compiles ConditionalSum_CIVE30_N32.vho into library ConditionalSum_CIVE30_N32; each netlist declares entity Adder,
--  so each candidate has its own library)
library ConditionalSum_CIVE30_N32;
configuration TSConditionalSum_CIVE30_N32 of TBAdder is
    for Test
        for DUT : Adder
            use entity ConditionalSum_CIVE30_N32.Adder(structure);
        end for;
    end for;
end configuration TSConditionalSum_CIVE30_N32;
