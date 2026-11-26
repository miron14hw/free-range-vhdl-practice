--library
library ieee;
use ieee.std_logic_1164.all;

entity exe1a is
    port( a , b  : in std_logic;
          y : out std_logic
          );
    end exe1a;
architecture if_cond of exe1a is
begin
    if_proc : process(a, b)
              begin
                if ((not a) and b) or (a) or (a and (not b)) 
                then y <= '1';
                else y <= '0';
                end if;
            end process if_proc;
end if_cond;
architecture case_cond of exe1a is
    signal ab : std_logic_vector(1 downto 0);
begin
    ab <= a & b;
    process (a,b,ab)
        begin
            case ab is
                when "01" => y <= '1';
                when "10" => y <= '1';
                when "11" => y <= '1';
                when others => y <= '0';
            end case;
        end process;
    end case_cond;


configuration cfg_if_func1a of exe1a is
    for if_cond
    end for;
end cfg_if_func1a;

configuration cfg_case_func1a of exe1a is
    for case_cond
    end for;
end cfg_case_func1a;