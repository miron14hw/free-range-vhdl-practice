--exercise 6 of chapter 4
--decoder 3:8 active high
--library
library ieee;
use ieee.std_logic_1164.all;
--entity
entity exe6 is 
    port( a : in std_logic_vector(2 downto 0)
          deco : out std_logic_vector (7 downto 0)
        );
    end exe6;

--architecture concurrent
architecture conc of exe6 is
begin
    deco(0) <= (not a(0)) and  (not a(1)) and (not a(2)); 
    deco(1) <=  a(0) and  (not a(1)) and (not a(2));
    deco(2) <= (not a(0)) and  a(1) and (not a(2));
    deco(3) <=  a(0) and   a(1) and (not a(2));
    deco(4) <= (not a(0)) and  (not a(1)) and  a(2);
    deco(5) <= a(0) and  (not a(1)) and a(2);
    deco(6) <= (not a(0)) and  a(1) and  a(2);
    deco(7) <=  a(0) and   a(1) and  a(2);
end conc;
--architecture conditional 
architecture cond of exe6 is 
begin
    deco(0) <= '1' when a = "000" else '0' ; 
    deco(1) <= '1' when a = "001" else '0' ;
    deco(2) <= '1' when a = "010" else '0' ;
    deco(3) <= '1' when a = "011" else '0' ;
    deco(4) <= '1' when a = "100" else '0' ;
    deco(5) <= '1' when a = "101" else '0' ;
    deco(6) <= '1' when a = "110" else '0' ;
    deco(7) <= '1' when a = "111" else '0' ;
    end cond;
--architecture select signal assignment
architecture sigas of exe6 is 
begin 
    with a select
        deco <= "00000001" when "000",
                "00000010" when "001",
                "00000100" when "010",
                "00001000" when "011",
                "00010000" when "100",
                "00100000" when "101",
                "01000000" when "110",
                "10000000" when "111",
                "00000000" when others;
end sigas;
