
--exercise 2d
--library 
library ieee;
use ieee.std_logic_1164.all;
--entity
entity exe2d is
    port (a,b,c,d : in std_logic;
        y : out std_logic
        );
    end exe2d;

--conditional signal assignment
architecture cond of exe2d is
begin 
    y <= '1' when (a = '0' and b = '0' and c = '0' and d = '1') else
              '1' when (a = '0' and b = '0' and c = '1' and d = '0') else 
              '0';
end cond;

--select signal assignment
architecture sigas of exe2d is 
    signal cat_b : std_logic_vector(3 downto 0);

begin
    cat_b <= (a & b & c & d);
    with cat_b select
        y <= '1' when  "0001" |"0010",
               '0' when others;
end sigas;  