library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

-- Single testbench for every Adder design candidate (DP2).
-- Reads Adder00.tvs for test vectors.
entity TBAdder is
end entity TBAdder;

architecture Test of TBAdder is
    constant N  : natural := 64;
    constant TestVectorFile : string := "Adder00.tvs";
    constant PreStimTime    : time := 1 ns;
    constant PostStimTime   : time := 10 ns;

    -- Signals for the DUT ports
    signal TBA, TBB, TBS : std_logic_vector(N-1 downto 0);
    signal TBCin, TBCout, TBOvfl : std_logic;

    -- Expected values
    signal TBtrueS    : std_logic_vector(N-1 downto 0);
    signal TBtrueCout : std_logic;
    signal TBtrueOvfl : std_logic;

    -- Index in file
    signal TBMeasurementIndex : natural := 0;

    -- DUT as a component
    component Adder is
        generic ( N : natural := 64 );
        port ( A, B       : in  std_logic_vector(N-1 downto 0);
               S          : out std_logic_vector(N-1 downto 0);
               Cin        : in  std_logic;
               Cout, Ovfl : out std_logic );
    end component Adder;
begin
    -- DUT instantiated through the component via configuration
    DUT: Adder
        generic map (N => N)
        port map (A => TBA, B => TBB, Cin => TBCin,
                  S => TBS, Cout => TBCout, Ovfl => TBOvfl);

    MAIN: process
        file VectorFile     : text;
        variable LineBuffer : line;
        variable A_var, B_var, S_var : std_logic_vector(N-1 downto 0);
        variable Cin_var, Cout_var, Ovfl_var : std_logic;
        variable Measurement_Index : natural;
        variable Failures : natural;
        variable Status : string(1 to 4);
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
            TBMeasurementIndex <= Measurement_Index;

            -- Pre stim
            TBA <= (others => 'X');
            TBB <= (others => 'X');
            TBCin <= 'X';
            wait for PreStimTime;

            -- Apply stim
            TBA <= A_var;
            TBB <= B_var;
            TBCin <= Cin_var;
            TBtrueS <= S_var;
            TBtrueCout <= Cout_var;
            TBtrueOvfl <= Ovfl_var;
            wait for PostStimTime;

            -- Report
            if TBS = TBtrueS and TBCout = TBtrueCout and TBOvfl = TBtrueOvfl then
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
                   " | actual S=" & to_hstring(TBS) &
                   " Cout=" & to_string(TBCout) & " Ovfl=" & to_string(TBOvfl);

            Measurement_Index := Measurement_Index + 1;
        end loop;

        report "Simulation Completed: " & integer'image(Measurement_Index - 1) &
               " measurements, " & integer'image(Failures) & " failures";
        file_close(VectorFile);
        wait;
    end process MAIN;
end architecture Test;
