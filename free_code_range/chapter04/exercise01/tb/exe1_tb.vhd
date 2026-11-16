--test bench for the exe1
--library
library ieee;
use ieee.std_logic_1164.all;
--entity
entity test is
end test;
--archtectur
architecture dut of test is 
    --device under test
    component exercise1a 
    port(A, B : in std_logic;
        y  : out std_logic);
    end component;
        --testbench signals
        signal a_s, b_s, y_s : std_logic;
begin
    dut: exercise1a port map( A => a_s,
                     B => b_s,
                     y => y_s);
                     process 
                     begin
                        a_s <= '0'; b_s <= '0';
                        wait for 20 ns;
                        assert y_s = '0'
                            report "wrong output for A =0, B=0"
                            severity error;
                        b_s <= '1';
                        wait for 20 ns;
                        assert y_s = '1'
                            report "wrong output for A =0, B=1"
                            severity error;                        
                        a_s <= '1'; b_s <= '0';
                        wait for 20 ns;
                        assert y_s = '1'
                            report "wrong output for A =1, B=0"
                            severity error;                        
                        b_s <= '1';
                        wait for 20 ns;
                        assert y_s = '1'
                            report "wrong output for A =1, B=1"
                            severity error;
                        report "all test cases completed";
                        wait;                                                
                     end process;
end dut;