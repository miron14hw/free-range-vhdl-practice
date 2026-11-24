--testbench of the exercise 7 active low
library ieee;
use ieee.std_logic_1164.all;

entity test7 is
end test7;

--entity exe7 is 
--    port( a : in std_logic_vector(2 downto 0)
--          deco : out std_logic_vector (7 downto 0)
--        );
--    end exe6;
    
architecture dut of test7 is 
signal deco_out_conc_s, deco_out_cond_s, deco_out_sigas_s : std_logic_vector(7 downto 0);
signal a_s : std_logic_vector(2 downto 0);
begin
    dut1 : entity work.exe7(conc)
                  port map( a => a_s,
                            deco => deco_out_conc_s);
    dut2 : entity work.exe7(cond)
                  port map( a => a_s,
                            deco => deco_out_cond_s);
    dut3 : entity work.exe7(sigas)
                  port map( a => a_s,
                            deco => deco_out_sigas_s);
                  process 
                  begin
                  a_s <= "000";
                  wait for 20 ns;
                    assert deco_out_conc_s =  "11111110"
                     report "the concurent output should be the '11111110'"
                     severity error;   
                    assert deco_out_cond_s =  "11111110"
                     report "the conditional output should be the '11111110'"
                     severity error;
                    assert deco_out_sigas_s = "11111110"
                     report "the signal assignment output should be the '11111110'"
                     severity error;    
                  a_s <= "001";
                  wait for 20 ns;
                    assert deco_out_conc_s =  "11111101"
                     report "the concurrent output should be the '11111101'"
                     severity error;   
                    assert deco_out_cond_s =  "11111101"
                     report "the conditional output should be the '11111101'"
                     severity error;
                    assert deco_out_sigas_s = "11111101"
                     report "the signal assignment output should be the '11111101'"
                     severity error; 
                   a_s <= "010";
                  wait for 20 ns;
                    assert deco_out_conc_s =  "11111011"
                     report "the concurrent output should be the '11111011'"
                     severity error;   
                    assert deco_out_cond_s =  "11111011"
                     report "the conditional output should be the '11111011'"
                     severity error;
                    assert deco_out_sigas_s = "11111011"
                     report "the signal assignment output should be the '11111011'"
                     severity error;  
                    a_s <= "011";
                  wait for 20 ns;
                    assert deco_out_conc_s =  "11110111"
                     report "the concurrent output should be the '11110111'"
                     severity error;   
                    assert deco_out_cond_s =  "11110111"
                     report "the conditional output should be the '11110111'"
                     severity error;
                    assert deco_out_sigas_s = "11110111"
                     report "the signal assignment output should be the '11110111'"
                     severity error; 
                    a_s <= "100";
                  wait for 20 ns;
                    assert deco_out_conc_s =  "11101111"
                     report "the concurrent output should be the '11101111'"
                     severity error;   
                    assert deco_out_cond_s =  "11101111"
                     report "the conditional output should be the '11101111'"
                     severity error;
                    assert deco_out_sigas_s = "11101111"
                     report "the signal assignment output should be the '11101111'"
                     severity error; 
                     a_s <= "101";
                  wait for 20 ns;
                    assert deco_out_conc_s =  "11011111"
                     report "the concurrent output should be the '11011111'"
                     severity error;   
                    assert deco_out_cond_s =  "11011111"
                     report "the conditoinal output should be the '11011111'"
                     severity error;
                    assert deco_out_sigas_s = "11011111"
                     report "the signal assignment output should be the '11011111'"
                     severity error;
                     a_s <= "110";
                  wait for 20 ns;
                    assert deco_out_conc_s =  "10111111"
                     report "the concurrent output should be the '10111111'"
                     severity error;   
                    assert deco_out_cond_s =  "10111111"
                     report "the conditional output should be the '10111111'"
                     severity error;
                    assert deco_out_sigas_s = "10111111"
                     report "the signal assignment output should be the '10111111'"
                     severity error; 
                     a_s <= "111";
                  wait for 20 ns;
                    assert deco_out_conc_s =  "01111111"
                     report "the concurrent output should be the '01111111'"
                     severity error;   
                    assert deco_out_cond_s =  "01111111"
                     report "the conditional output should be the '01111111'"
                     severity error;
                    assert deco_out_sigas_s = "01111111"
                     report "the signal assignment output should be the '01111111'"
                     severity error;
                  report "all test cases completed";
                  wait;
                  end process; 
end dut;                         
                            