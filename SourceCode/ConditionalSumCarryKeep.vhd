library ieee;
use ieee.std_logic_1164.all;

-- Recursive conditional-sum carry network with every level preserved (architecture RecursiveKeep).
-- Same function and recursion as architecture Recursive (ConditionalSumCarry.vhd), but each level's
-- conditional carries carry the 'keep' attribute (IEEE 1076.6), so synthesis must leave a LUT
-- boundary after every 2:1 mux level. Without it, Quartus rewrites mux(L, H1, H0) = H0 + L*H1
-- (because carry0 <= carry1) and collapses the tree into a lookahead ripple chain.
architecture RecursiveKeep of ConditionalSumCarry is
begin

    Recur: if N > 1 generate
        signal L0, L1, H0, H1 : std_logic_vector(N/2-1 downto 0);
        signal M0, M1         : std_logic_vector(N/2-1 downto 0);  -- this level's mux outputs
        -- One LUT boundary per mux: only the mux outputs are kept. The low half's carries only
        -- pass straight up, so keeping them would force a buffer cell per bit per level.
        attribute keep : boolean;
        attribute keep of M0, M1 : signal is true;
    begin
        LowHalf: entity work.ConditionalSumCarry(RecursiveKeep)
            generic map(N => N/2)
            port map(g => g(N/2-1 downto 0), p => p(N/2-1 downto 0), carry0 => L0, carry1 => L1);

        HighHalf: entity work.ConditionalSumCarry(RecursiveKeep)
            generic map(N => N/2)
            port map(g => g(N-1 downto N/2), p => p(N-1 downto N/2), carry0 => H0, carry1 => H1);

        -- Low half: its carries for an incoming 0 / 1 pass straight through
        carry0(N/2-1 downto 0) <= L0;
        carry1(N/2-1 downto 0) <= L1;

        -- High half: the low half's top carry selects which of the high half's carries is valid
        M0 <= H1 when L0(N/2-1) = '1' else H0;
        M1 <= H1 when L1(N/2-1) = '1' else H0;
        carry0(N-1 downto N/2) <= M0;
        carry1(N-1 downto N/2) <= M1;
    end generate Recur;

    -- Leaf (one bit): carry out for an incoming carry of 0 is g; for 1 it is g + p
    Leaf: if N = 1 generate
        carry0 <= g;
        carry1 <= g or p;
    end generate Leaf;
end architecture RecursiveKeep;
