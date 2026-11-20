library ieee;
use ieee.std_logic_1164.all;

entity BLAN is
    generic( N : positive );
    port(
        g, p    : in std_logic_vector(N-1 downto 0); -- GP[i, i]
        Gpre, Ppre  : out std_logic_vector(N-1 downto 0) -- GP[i, 0]
    );
end entity BLAN;

architecture BrentKung of BLAN is
begin
    Leaf: if N = 1 generate
        Gpre <= g;
        Ppre <= p;
    end generate Leaf;

    Recur: if N > 1 generate
        signal gPair, pPair : std_logic_vector(N/2 - 1 downto 0); -- GP[2i+1, 2i]
        signal GPairPre, PPairPre   : std_logic_vector(N/2-1 downto 0); -- GP[2i+1, 0]
    begin
        -- Up-sweep (merge odd positions with even below it)
        UpSweep: for i in 0 to N/2-1 generate
            gPair(i) <= g(2*i+1) or (P(2*i+1) and g(2*i));
            pPair(i) <= p(2*i+1) and p(2*i);
        end generate UpSweep;

        -- Recurse the pairs
        Inner: entity work.BLAN(BrentKung)
            generic map (N => N/2 )
            port map( 
                g => gPair,
                p => pPair,
                Gpre => GPairPre,
                Ppre => PPairPre
            );
        
        -- Down sweep (combine prefix for each position)
        DownSweep: for i in 0 to N/2-1 generate
            Gpre(2*i+1) <= GPairPre(i); -- odd is already complete
            Ppre(2*i+1) <= PPairPre(i);

            Bottom: if i = 0 generate -- position 0
                GPre(0) <= g(0);
                Ppre(0) <= p(0);
            end generate Bottom;

            Even: if i > 0 generate -- last merge with GP[2i-1,0]
                Gpre(2*i) <= g(2*i) or (p(2*i) and GPairPre(i-1));
                Ppre(2*i) <= p(2*i) and PPairPre(i-1);
            end generate Even;
        end generate DownSweep;
    end generate Recur;
end architecture BrentKung;

            

