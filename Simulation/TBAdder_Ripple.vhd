library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

-- Testbench for the ripple topology
-- read Adder00.tvs for test vectors
entity TBAdder_Ripple is
end entity TBAdder_Ripple;

architecture Test of TBAdder_Ripple is
    constant N  : natural := 64;
    constant TestVectorFile : string := "Adder00.tvs";
    constant PreStimTime    : time := 1 ns;
    constant PostStimTime   : time := 10 ns;

    -- DUT ports
    signal TB_A, TB_B, TB_S : std_logic_vector(N-1 downto 0);
    signal TB_Cin, TB_Cout, TB_Ovfl : std_logic;

    -- Expected values
    signal TB_S_expected    : std_logic_vector(N-1 downto 0);
    signal TB_Cout_expected : std_logic;
    signal TB_Ovfl_expected : std_logic;   

    -- Copy of the index for the wave window
    signal TB_Measurement_Index : natural := 0;
begin
    -- Instantiate the DUT
    DUT: entity work.Adder(Baseline)
        generic map (N => N)
        port map (A => TB_A, B => TB_B, Cin => TB_Cin,
                  S => TB_S, Cout => TB_Cout, Ovfl => TB_Ovfl);
        
    MAIN: process
        file VectorFile     : text;
        variable LineBuffer : line;
        variable A_var, B_var, S_var : std_logic_vector(N-1 downto 0);
        variable Cin_var, Cout_var, Ovfl_var : std_logic;
        Variable Measurement_Index : natural;
        Variable Failures : natural;
        Variable Status : string(1 to 4);
    begin
        file_open(VectorFile, TestVectorFile, read_mode);
        report "TestVectors from " & TestVectorFile;
        Measurement_Index := 1;
        Failures :=  0;

        while not endFile(VectorFile) loop
            readline(VectorFile, LineBuffer);
            hread(LineBuffer, A_var);
            hread(LineBuffer, B_var);
            read(LineBuffer, Cin_var);
            hread(LineBuffer, S_var);
            read(LineBuffer, Cout_var);
            read(LineBuffer, Ovfl_var);
            TB_Measurement_Index <= Measurement_Index;

            -- Pre stim
            TB_A <= (others => 'X');
            TB_B <= (others => 'X');
            TB_Cin <= 'X';
            wait for PreStimTime;

            -- Apply stim
            TB_A <= A_var;
            TB_B <= B_var;
            TB_Cin <= Cin_var;
            TB_S_expected <= S_var;
            TB_Cout_expected <= Cout_var;
            TB_Ovfl_expected <= Ovfl_var;
            wait for PostStimTime;

            -- Report
            if TB_S = TB_S_expected and TB_Cout = TB_Cout_expected and TB_Ovfl = TB_Ovfl_expected then
                Status := "PASS";
            else
                Status := "FAIL";
                Failures := Failures + 1;
            end if;
            report "Meas " & integer'image(Measurement_Index) & " " & Status &
                   " | A=" & to_hstring(A_var) & " B=" & to_hstring(B_var) &
                   " Cin=" & to_string(Cin_var) &
                   " | expected S=" & to_hstring(S_var) &
                   " Cout=" & to_string(Cout_var) & " Ovfl=" & to_string(Ovfl_var) &
                   " | actual S=" & to_hstring(TB_S) &
                   " Cout=" & to_string(TB_Cout) & " Ovfl=" & to_string(TB_Ovfl);
            
            Measurement_Index := Measurement_Index + 1;
        end loop;

        report "Simulation Completed: " & integer'image(Measurement_Index - 1) &
               " measurements, " & integer'image(Failures) & " failures";
        file_close(VectorFile);
        wait;
    end process MAIN;
end architecture Test;   

