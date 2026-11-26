--exercise1d testbench 
--library
library ieee;
use ieee.std_logic_1164.all;

--entity
entity test1c is
end test1c;

--architecture
architecture dut of test1c is
    --component instansiation 
    component exercise1c
         port (A,B, C, D : in std_logic;
               y : out std_logic
               );
         end component;
         --testbench signals
        signal a_s, b_s, c_s, d_s , y_if_s , y_case_s: std_logic;
begin
        dut1 : entity work.exe1c(if_cond)
    port map(a => a_s,
             b => b_s,
             c => c_s,
             d => d_s,
             y => y_if_s);
    dut2 : entity work.exe1c(case_cond)
    port map(a => a_s,
             b => b_s,
             c => c_s,
             d => d_s,
             y => y_case_s);
    process 
    begin
        a_s <= '0'; b_s <= '0'; c_s <= '0'; d_s <= '0';                            
        wait for 20 ns;
        assert y_case_s = '1'
            report "wrong case output of the a = '0'; b = '0'; c = '0'; d = '0'"
            severity error;
        assert y_if_s = '1'
            report "wrong if output of the a = '0'; b = '0'; c = '0'; d = '0'"
            severity error;
        d_s <= '1';
        wait for 20 ns;
        assert y_case_s = '1'
            report "wrong case output of the a = '0'; b = '0', c = '0'; d = '1'"
            severity error;
        assert y_if_s = '1'
            report "wrong if output of the a = '0'; b = '0'; c = '0'; d = '1'"
            severity error;
        c_s <= '1' ; d_s <= '0';
        wait for 20 ns;
        assert y_case_s = '1'
            report "wrong case output of the a = '0'; b = '0'; c = '1'; d = '0'"
            severity error;
        assert y_if_s = '1'
            report "wrong if output of the a = '0'; b = '0'; c = '1'; d = '0'"
            severity error; 
        d_s <= '1';
        wait for 20 ns;
        assert y_case_s = '1'
            report "wrong case output of the a = '0'; b = '0'; c = '1'; d = '1'"
            severity error;
        assert y_if_s = '1'
            report "wrong if output of the a = '0'; b = '0'; c = '1'; d = '1'"
            severity error;
        b_s <= '1' ; c_s <= '0' ; d_s <= '0';
        wait for 20 ns;
        assert y_case_s = '1'
            report "wrong case output of the a = '0'; b = '1'; c = '0'; d = '0'"
            severity error;
        assert y_if_s = '1'
            report "wrong if output of the a = '0'; b = '1'; c = '0'; d = '0'"
            severity error;    
        d_s <= '1';
        wait for 20 ns;
        assert y_case_s = '0'
            report "wrong case output of the a = '0'; b = '1'; c = '0'; d = '1'"
            severity error;
        assert y_if_s = '0'
            report "wrong if output of the a = '0'; b = '1'; c = '0'; d = '1'"
            severity error;
        c_s <= '1' ; d_s <= '0';
        wait for 20 ns;
        assert y_case_s = '1'
            report "wrong case output of the a = '0'; b = '1'; c = '1'; d = '0'" 
            severity error;
        assert y_if_s = '1'
            report "wrong if output of the a = '0'; b = '1'; c = '1'; d = '0'"
            severity error; 
         d_s <= '1';
        wait for 20 ns;
        assert y_case_s = '1'
            report "wrong case output of the a = '0'; b = '1'; c = '1'; d = '1'"
            severity error;
        assert y_if_s = '1'
            report "wrong if output of the a = '0'; b = '1'; c = '1'; d = '1'"
            severity error;    
        a_s <= '1'; b_s <= '0'; c_s <= '0'; d_s <= '0';
        wait for 20 ns;
        assert y_case_s = '0'
            report "wrong case output of the a = '1'; b = '0'; c = '0'; d = '0'"
            severity error;
        assert y_if_s = '0'
            report "wrong if output of the a = '1'; b = '0'; c = '0'; d = '0'"
            severity error;
        d_s <= '1';
        wait for 20 ns;
        assert y_case_s = '0'
            report "wrong  case output of the a = '1'; b = '0'; c = '0'; d = '1'"
            severity error;
        assert y_if_s = '0'
            report "wrong if output of the a = '1'; b = '0'; c = '0'; d = '1'"
            severity error;   
            c_s <= '1' ; d_s <= '0';
        wait for 20 ns;
        assert y_case_s = '0'
            report "wrong case output of the a = '1'; b = '0'; c = '1'; d = '0'"
            severity error;
        assert y_if_s = '0'
            report "wrong if output of the a = '1'; b = '0'; c = '1'; d = '0'"
            severity error; 
        d_s <= '1';
        wait for 20 ns;
        assert y_case_s = '0'
            report "wrong case output of the a = '1'; b = '0'; c = '1'; d = '1'"
            severity error;
        assert y_if_s = '0'
            report "wrong if output of the a = '1'; b = '0'; c = '1'; d = '1'"
            severity error;
            b_s <= '1' ; c_s <= '0' ; d_s <= '0';
        wait for 20 ns;
        assert y_case_s = '0'
            report "wrong case output of the a = '1'; b = '1'; c = '0'; d = '0'"
            severity error;
        assert y_if_s = '0'
            report "wrong if output of the a = '1'; b = '1'; c = '0'; d = '0'"
            severity error;
        d_s <= '1';
        wait for 20 ns;
        assert y_case_s = '0'
            report "wrong case output of the a = '1'; b = '1'; c = '0'; d = '1'"
            severity error;
        assert y_if_s = '0'
            report "wrong if output of the a = '1'; b = '1'; c = '0'; d = '1'"
            severity error;       
            c_s <= '1' ; d_s <= '0';
        wait for 20 ns;
        assert y_case_s = '0'
            report "wrong case output of the a = '1'; b = '1'; c = '1'; d = '0'"
            severity error;
        assert y_if_s = '0'
            report "wrong if output of the a = '1'; b = '1'; c = '1'; d = '0'"
            severity error;      
         d_s <= '1';
        wait for 20 ns;
        assert y_if_s = '1'
            report "wrong if output of the a = '1'; b = '1'; c = '1'; d = '1'"
            severity error;
        assert y_case_s = '1'
            report "wrong case output of the a = '1'; b = '1'; c = '1'; d = '1'"
            severity error;    
        report "all test cases completed";
        wait;
        end process;
    end dut;
