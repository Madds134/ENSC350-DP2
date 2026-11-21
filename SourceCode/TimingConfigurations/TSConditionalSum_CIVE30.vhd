-- TSConditionalSum_CIVE30.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of ConditionalSum on EP4CE30F23C6
-- (TSConditionalSum_CIVE30.do compiles ConditionalSum_CIVE30.vho into library ConditionalSum_CIVE30; each netlist declares entity Adder,
--  so each candidate has its own library)
library ConditionalSum_CIVE30;
configuration TSConditionalSum_CIVE30 of TBAdder is
    for Test
        for DUT : Adder
            use entity ConditionalSum_CIVE30.Adder(structure);
        end for;
    end for;
end configuration TSConditionalSum_CIVE30;
