--library
library ieee;
use ieee.std_logic_1164.all;

--entity
entity exe1d is 
    port (a,b,c : in std_logic;
          y : out std_logic
          );
    end exe1d;

--if_cond sequential architecture
architecture if_cond of exe1d is 
begin
    process(a,b,c)
    begin
            if (((not a) or (not c) or b) and (a or b or (not c)) and ((not a) or b or c) and (a or (not b) or (not c)))
            then y <= '1';
            else y <= '0';
            end if;
        end process;
    end if_cond;

--case_cond sequential architecture
architecture case_cond of exe1d is 
    signal abc : std_logic_vector(2 downto 0);
begin
    abc <= a & b & c;
    process (a,b,c,abc)
        begin
            case abc is
                when "101" => y <= '0';
                when "001" => y <= '0';
                when "100" => y <= '0';
                when "011" => y <= '0';
                when others => y <= '1';
            end case;
        end process;
    end case_cond;


    
