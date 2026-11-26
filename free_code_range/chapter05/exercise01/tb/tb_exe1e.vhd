library ieee;
use ieee.std_logic_1164.all;

--entity
entity test1e is
end test1e;

--architecture
architecture dut of test1e is
    signal a_s,b_s, c_s, d_s ,y_if_s, y_case_s : std_logic;
begin
    dut1 : entity work.exe1e(if_cond)
    port map(a => a_s,
             b => b_s,
             c => c_s,
             d => d_s,
             y => y_if_s);
    dut2 : entity work.exe1e(case_cond)
    port map(a => a_s,
             b => b_s,
             c => c_s,
             d => d_s,
             y => y_case_s);
    process
    begin
        loop1 : for i in  0 to 1 loop
                    if i =0 
                    then a_s <= '0';
                    else
                        a_s <= '1';
                    end if;  
         loop2 : for j in  0 to 1 loop
                     if j = 0
                     then b_s <= '0';
                     else 
                         b_s <= '1';
                     end if;
           loop3 : for k in  0 to 1 loop
                       if k =0 
                       then c_s <= '0';
                       else
                           c_s <= '1';
                       end if;  
              loop4 : for n in  0 to 1 loop
                          if n = 0
                          then d_s <= '0';
                          else 
                              d_s <= '1';
                          end if;            
                          wait for 20 ns;
                  if ((i = 0 and j = 0 and k = 0 and n =1) or (i = 0 and j = 0 and k = 1 and n =0)) 
                  then 
                      assert y_if_s = '1'
                      report "the if_cond output should be '1'"
                      severity error;
                      assert y_case_s = '1'
                      report "the case_cond output should be '1'"
                      severity error;
                  else
                      assert y_if_s = '0'
                      report "the if_cond output should be '0'"
                      severity error;
                      assert y_case_s = '0'
                      report "the case_cond output should be '0'"
                      severity error;
                  end if;
              end loop loop4;
           end loop loop3;
         end loop loop2;
    end loop loop1;
    report "All test cases completed";
    wait;
end process; 
end dut;
            
