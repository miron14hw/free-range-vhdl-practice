--testbench
--library
library ieee;
use ieee.std_logic_1164.all;

--entity
entity test2a is 
end test2a;

--architecture
architecture dut of test2a is
    component exe2a port(
          A, B, C, D : in std_logic;
          y : out std_logic

    );
    end component;  
    --signal for testbench
    signal a_s, b_s, c_s, d_s , y_cond_s, y_select_s : std_logic;
begin
    --using the architecture conditoinal in test bench
    dut_cond   : entity work.exe2a(cond) 
        port map (a => a_s,
                  b => b_s,
                  c => c_s,
                  d => d_s,
                  y => y_cond_s);
    dut_select : entity work.exe2a(sigas)
       port map (a => a_s,
                  b => b_s,
                  c => c_s,
                  d => d_s,
                  y => y_select_s
                  );
    process 
    begin
        a_s <= '0'; b_s <= '0'; c_s <= '0'; d_s <= '0';                            
        wait for 20 ns;
        assert y_cond_s = '0'
            report "wrong conditional output of the a = '0'; b = '0'; c = '0'; d = '0'"
            severity error;
        assert y_select_s = '0'
            report "wrong select output of the a = '0'; b = '0'; c = '0'; d = '0'"
            severity error;
        d_s <= '1';
        wait for 20 ns;
        assert y_cond_s = '0'
            report "wrong conditional output of the a = '0'; b = '0', c = '0'; d = '1'"
            severity error;
        assert y_select_s = '0'
            report "wrong select output of the a = '0'; b = '0', c = '0'; d = '1'"
            severity error;
        c_s <= '1' ; d_s <= '0';
        wait for 20 ns;
        assert y_cond_s = '1'
            report "wrong conditional output of the a = '0'; b = '0'; c = '1'; d = '0'"
            severity error;
        assert y_select_s = '1'
            report "wrong select output of the a = '0'; b = '0'; c = '1'; d = '0'"
            severity error;     
        d_s <= '1';
        wait for 20 ns;
        assert y_cond_s = '1'
            report "wrong conditional output of the a = '0'; b = '0'; c = '1'; d = '1'"
            severity error;
        assert y_select_s = '1'
            report "wrong select output of the a = '0'; b = '0'; c = '1'; d = '1'"
            severity error;    
        b_s <= '1' ; c_s <= '0' ; d_s <= '0';
        wait for 20 ns;
        assert y_cond_s = '0'
            report "wrong conditoinal output of the a = '0'; b = '1'; c = '0'; d = '0'"
            severity error;
        assert y_select_s = '0'
            report "wrong select output of the a = '0'; b = '1'; c = '0'; d = '0'"
            severity error;    
        d_s <= '1';
        wait for 20 ns;
        assert y_cond_s = '0'
            report "wrong conditional output of the a = '0'; b = '1'; c = '0'; d = '1'"
            severity error;
        assert y_select_s = '0'
            report "wrong select output of the a = '0'; b = '1'; c = '0'; d = '1'"
            severity error;       
        c_s <= '1' ; d_s <= '0';
        wait for 20 ns;
        assert y_cond_s = '1'
            report "wrong conditional output of the a = '0'; b = '1'; c = '1'; d = '0'" 
            severity error;
        assert y_select_s = '1'
            report "wrong select output of the a = '0'; b = '1'; c = '1'; d = '0'" 
            severity error;     
         d_s <= '1';
        wait for 20 ns;
        assert y_cond_s = '0'
            report "wrong conditional output of the a = '0'; b = '1'; c = '1'; d = '1'"
            severity error;
        assert y_select_s = '0'
            report "wrong select output of the a = '0'; b = '1'; c = '1'; d = '1'"
            severity error;    
        a_s <= '1'; b_s <= '0'; c_s <= '0'; d_s <= '0';
        wait for 20 ns;
        assert y_cond_s = '0'
            report "wrong conditional output of the a = '1'; b = '0'; c = '0'; d = '0'"
            severity error;
        assert y_select_s = '0'
            report "wrong select output of the a = '1'; b = '0'; c = '0'; d = '0'"
            severity error;    
        d_s <= '1';
        wait for 20 ns;
        assert y_cond_s = '0'
            report "wrong conditional output of the a = '1'; b = '0'; c = '0'; d = '1'"
            severity error;
        assert y_select_s = '0'
            report "wrong select output of the a = '1'; b = '0'; c = '0'; d = '1'"
            severity error;       
            c_s <= '1' ; d_s <= '0';
        wait for 20 ns;
        assert y_cond_s = '1'
            report "wrong condtional output of the a = '1'; b = '0'; c = '1'; d = '0'"
            severity error;
        assert y_select_s = '1'
            report "wrong select output of the a = '1'; b = '0'; c = '1'; d = '0'"
            severity error;     
        d_s <= '1';
        wait for 20 ns;
        assert y_cond_s = '1'
            report "wrong conditional output of the a = '1'; b = '0'; c = '1'; d = '1'"
            severity error;
        assert y_select_s = '1'
            report "wrong select output of the a = '1'; b = '0'; c = '1'; d = '1'"
            severity error;    
            b_s <= '1' ; c_s <= '0' ; d_s <= '0';
        wait for 20 ns;
        assert y_cond_s = '0'
            report "wrong conditional output of the a = '1'; b = '1'; c = '0'; d = '0'"
            severity error;
        assert y_select_s = '0'
            report "wrong select output of the a = '1'; b = '1'; c = '0'; d = '0'"
            severity error;    
        d_s <= '1';
        wait for 20 ns;
        assert y_cond_s = '0'
            report "wrong conditional output of the a = '1'; b = '1'; c = '0'; d = '1'"
            severity error;
        assert y_select_s = '0'
            report "wrong select output of the a = '1'; b = '1'; c = '0'; d = '1'"
            severity error;       
            c_s <= '1' ; d_s <= '0';
        wait for 20 ns;
        assert y_cond_s = '1'
            report "wrong conditional output of the a = '1'; b = '1'; c = '1'; d = '0'"
            severity error;
        assert y_select_s = '1'
            report "wrong select output of the a = '1'; b = '1'; c = '1'; d = '0'"
            severity error;   
         d_s <= '1';
        wait for 20 ns;
        assert y_cond_s = '0'
            report "wrong conditional output of the a = '1'; b = '1'; c = '1'; d = '1'"
            severity error;
        assert y_select_s = '0'
            report "wrong select output of the a = '1'; b = '1'; c = '1'; d = '1'"
            severity error;    
        report "all test cases completed";
        wait;
        end process; 
    end dut;   