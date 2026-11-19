library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Recursive Condition Sum carry network
entity ConditionalSumCarry is
    generic(N   : positive);
    port(
        g, p    : in std_logic_vector(N-1 downto 0);
        carry0, carry1  : out std_logic_vector(N-1 downto 0)
    );
end entity ConditionalSumCarry;

architecture Recursive of ConditionalSumCarry is
begin

    Recur: if N > 1 Generate
        signal L0, L1, H0, H1   : std_logic_vector(N/2-1 downto 0);
    begin
        LowHalf: entity work.ConditionalSumCarry(Recursive)
            generic map(N=>N/2)
            port map(
                g => g(N/2-1 downto 0), 
                p => p(N/2-1 downto 0), 
                carry0 => L0, 
                carry1 => L1
            );

        HighHalf: entity work.ConditionalSumCarry(Recursive)
            generic map(N => N/2)
            port map(
                g => g(N-1 downto N/2), 
                p => p(N-1 downto N/2), 
                carry0 => H0, 
                carry1 => H1
            );

        -- Low half gets carry in
        carry0(N/2-1 downto 0) <= L0;
        carry1(N/2-1 downto 0) <= L1;

        carry0(N-1 downto N/2) <= H1 when L0(N/2-1) = '1' else H0;
        carry1(N-1 downto N/2) <= H1 when L1(N/2-1) = '1' else H0;
    end generate Recur;

    leaf: if N = 1 generate
    begin
        carry0 <= g or (p and "0");
        carry1 <= g or (p and "1");
    end generate leaf;
end architecture Recursive;