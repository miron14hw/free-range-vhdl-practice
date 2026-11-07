
--exercise 2c
--library 
library ieee;
use ieee.std_logic_1164.all;
--entity
entity exe2c is
    port (a,b,c,d : in std_logic;
        output : out std_logic
        );
    end exe2c;

--conditional signal assignment
architecture cond of exe2c is
begin 
    output <= '0' when (a = '1' and b = '1' and c = '0' or d = '0') else
              '0' when (a = '1' and b = '1' and c = '0' or d = '1') else 
              '1';
end cond;

--select signal assignment
architecture sigas of exe2c is 
    signal cat_b : std_logic(3 downto 0);

begin
    cat_b <= (a & b & c & d);
    with cat_b select
        out <= '0' when  "1100" |"1101" ,
               '1' when others;  