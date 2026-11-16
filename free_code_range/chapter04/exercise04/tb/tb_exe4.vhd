--exercise 3
--library
library ieee;
use ieee.std_logic_1164.all;
--library for for loop
use ieee.numeric_std.all;

--entity
entity test4 is 
end test4;

--architecture
architecture dut of test4 is 

        --testbench signal 
        signal a_s : std_logic_vector(7 downto 0);
        signal or_out_conc ,or_out_cond , or_out_select : std_logic;
begin 
    dut1 : entity work.exe4(conc)
        port map(a => a_s,
             or_out => or_out_conc
             );
    dut2 : entity work.exe4(cond)
        port map(a => a_s,
             or_out => or_out_cond
             );
    dut3 : entity work.exe4(sigas)
                port map(a => a_s,
             or_out => or_out_select
             );
            proc: process 
                  begin
                    for i in 0 to 255 loop 
                        a_s <= std_logic_vector(to_unsigned(i,8));
                        wait for 20 ns;
                        if i = 0 then 
                                assert or_out_conc = '0'
                                   report "the concurent or output is wrong it should be 0"
                                   severity error;                           
                               assert or_out_cond = '0'
                                   report "the conditional or output is wrong it should be 0"
                                   severity error;
                               assert or_out_select = '0'
                                   report "the select or output is wrong it should be 0"
                                   severity error;
                            else
                                assert or_out_conc = '1'
                                   report "the concurent or output is wrong it should be 1"
                                   severity error;
                                assert or_out_cond = '1'
                                   report "the conditional or output is wrong it should be 1"
                                   severity error;
                               assert or_out_select = '1'
                                   report "the select or output is wrong it should be 1"
                                   severity error;
                            end if;
                    end loop;
                    report "all test cases completed";
                    wait;      
                end process proc;
end dut;                                                

