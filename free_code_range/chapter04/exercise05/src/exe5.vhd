--exercise 5 chapter 4 
--library
library ieee;
use ieee.std_logic_1164.all;

--entity
entity exe5 is 
    port ( a : in std_logic_vector(7 downto 0);
           sel : in std_logic_vector(2 downto 0);
           mux_out : out std_logic
           );
    end exe5;

--architecture concurrent
architecture conc of exe5 is
begin
mux_out <= (a(0)and (not sel(0)) and (not sel(1)) and (not sel(2))) or (a(1) and sel(0) and (not sel(1)) and (not sel(2))) or 
           (a(2)and (not sel(0)) and sel(1) and (not sel(2))) or (a(3) and  sel(0) and sel(1) and (not sel(2))) or 
           (a(4)and (not sel(0)) and (not sel(1)) and sel(2)) or (a(5)and  sel(0) and (not sel(1)) and  sel(2)) or 
           (a(6)and (not sel(0)) and  sel(1) and sel(2)) or (a(7)and sel(0) and  sel(1) and sel(2));  
end conc;

--architecture conditional signal assignment
architecture cond of exe5 is 
begin
    mux_out <= a(0) when (sel = "000") else
               a(1) when (sel = "001") else
               a(2) when (sel = "010") else
               a(3) when (sel = "011") else
               a(4) when (sel = "100") else
               a(5) when (sel = "101") else
               a(6) when (sel = "110") else
               a(7) when (sel = "111") else
               '0';
end cond;
--architecture select signal assignment 
architecture sigas of exe5 is
begin
    with sel select
    mux_out <= a(0) when "000",
               a(1) when "001",
               a(2) when "010",
               a(3) when "011",
               a(4) when "100",
               a(5) when "101",
               a(6) when "110",
               a(7) when "111",
               '0' when others;
end sigas;
