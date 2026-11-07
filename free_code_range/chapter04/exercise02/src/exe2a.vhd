--exercise 2
--entity 
library ieee;
use ieee.std_logic_1164.all;
entity exe2a is 
    port (A, B, C, D : in std_logic;
          output : out std_logic
    );
    end exe2a;

--conditional signal assignment 
architecture cond of exe2a is 
begin 
    output <= '1' when (a = '0' and c = '1' and d = '0' ) else
              '1' when  (b = '0' and c = '1') else
              '1' when  (b = '1' and  c = '1' and d = '0') else 
              '0';
    end cond;

--select signal assignment
architecture sigas of exe2a is
signal cat_b : std_logic_vector(3 downto 0);
begin 
    cat_b <= (a & b & c & d);
    with cat_b select 
        output <= '1' when "0010" | "0110" | "0011" |"1010" |"1011" |"1110",
                   '0' when others ;
end sigas;