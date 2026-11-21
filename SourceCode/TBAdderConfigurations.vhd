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

-- Functional of BrentKung topology
configuration FSBrentKung of TBAdder is
    for Test
        for DUT : Adder
            use entity work.Adder(BrentKung);
        end for;
    end for;
end configuration FSBrentKung;

-- Functional of KoggeStone topology
configuration FSKoggeStone of TBAdder is
    for Test
        for DUT : Adder
            use entity work.Adder(KoggeStone);
        end for;
    end for;
end configuration FSKoggeStone;

-- Functional of CarrySkip topology
configuration FSCarrySkip of TBAdder is
    for Test
        for DUT : Adder
            use entity work.Adder(CarrySkip);
        end for;
    end for;
end configuration FSCarrySkip;

-- Functional of FastRipple topology ('+' operator, DP1)
configuration FSFastRipple of TBAdder is
    for Test
        for DUT : Adder
            use entity work.Adder(FastRipple);
        end for;
    end for;
end configuration FSFastRipple;

-- Functional of ConditionalSum topology (DP1)
configuration FSConditionalSum of TBAdder is
    for Test
        for DUT : Adder
            use entity work.Adder(ConditionalSum);
        end for;
    end for;
end configuration FSConditionalSum;

-- Functional of ConditionalSumKeep topology (carry network kept with 'keep')
configuration FSConditionalSumKeep of TBAdder is
    for Test
        for DUT : Adder
            use entity work.Adder(ConditionalSumKeep);
        end for;
    end for;
end configuration FSConditionalSumKeep;