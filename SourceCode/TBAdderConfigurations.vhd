-- Functional of Ripple topology
configuration FSRipple of TBAdder is
    for Test
        for DUT : Adder
            use entity work.Adder(Baseline);
        end for;
    end for;
end configuration FSRipple;

-- Functional of BlockLookahead topology
configuration FSBlockLookahead of TBAdder is
    for Test
        for DUT : Adder
            use entity work.Adder(BlockLookahead);
        end for;
    end for;
end configuration FSBlockLookahead;