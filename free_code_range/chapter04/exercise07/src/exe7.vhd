--exercise 7 of chapter 4
--decoder 3:8 active low
--library
library ieee;
use ieee.std_logic_1164.all;
--entity
entity exe7 is 
    port( a : in std_logic_vector(2 downto 0);
          deco : out std_logic_vector (7 downto 0)
        );
    end exe7;

--architecture concurrent
architecture conc of exe7 is
begin
    deco(0) <= ((not a(0)) and  (not a(1)) and (not a(2))); 
    deco(1) <= (a(0) and  (not a(1)) and (not a(2)));
    deco(2) <= ((not a(0)) and  a(1) and (not a(2)));
    deco(3) <= (a(0) and   a(1) and (not a(2)));
    deco(4) <= ((not a(0)) and  (not a(1)) and  a(2));
    deco(5) <= (a(0) and  (not a(1)) and a(2));
    deco(6) <= ((not a(0)) and  a(1) and  a(2));
    deco(7) <= (a(0) and   a(1) and  a(2));
end conc;
--architecture conditional 
architecture cond of exe7 is 
begin
    deco(0) <= '0' when a = "000" else '1' ; 
    deco(1) <= '0' when a = "001" else '1' ;
    deco(2) <= '0' when a = "010" else '1' ;
    deco(3) <= '0' when a = "011" else '1' ;
    deco(4) <= '0' when a = "100" else '1' ;
    deco(5) <= '0' when a = "101" else '1' ;
    deco(6) <= '0' when a = "110" else '1' ;
    deco(7) <= '0' when a = "111" else '1' ;
    end cond;
--architecture select signal assignment
architecture sigas of exe7 is 
begin 
    with a select
        deco <= "11111110" when "000",
                "11111101" when "001",
                "11111011" when "010",
                "11110111" when "011",
                "11101111" when "100",
                "11011111" when "101",
                "10111111" when "110",
                "01111111" when "111",
                "11111111" when others;
end sigas;
