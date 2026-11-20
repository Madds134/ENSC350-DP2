library ieee;
use ieee.std_logic_1164.all;

architecture KoggeStone of BLAN is
    function Log2(x : positive) return natural is
        variable r : natural := 0;
        variable v : positive := 1;
    begin
        while v < x loop
            v := v * 2;
            r := r + 1;
        end loop;
        return r;
    end function Log2;

    constant L : natural := Log2(N);

    -- Gk(k)(i), Pk(k)(i) is the GP position i after level k
    type LevelArray is array (0 to L) of std_logic_vector(N-1 downto 0);
    signal Gk, Pk : LevelArray;
begin
    Gk(0) <= g; -- Level 0 is single position, GP[i,i]
    Pk(0) <= p;

    Levels: for k in 1 to L generate
        constant D : natural := 2**(k-1); -- merge distance
    begin
        Bits: for i in 0 to N-1 generate
            Merge: if i >= D generate
                Gk(k)(i) <= Gk(k-1)(i) or (Pk(k-1)(i) and Gk(k-1)(i-D));
                Pk(k)(i) <= Pk(k-1)(i) and Pk(k-1)(i-D);
            end generate Merge;
            Pass: if i < D generate -- already complete down to 0
                GK(k)(i) <= Gk(k-1)(i);
                Pk(k)(i) <= Pk(k-1)(i);
            end generate Pass;
        end generate Bits;
    end generate Levels;

    -- GP[i, 0] for each position
    Gpre <= Gk(L);
    Ppre <= Pk(L); 
end architecture KoggeStone;
