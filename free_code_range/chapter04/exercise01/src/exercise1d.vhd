--concurrent signal assignment
--entity
library ieee;
use ieee.std_logic_1164.all;
entity exercise1d is 
    port (A,B, C, D : in std_logic;
          y : out std_logic
          );
    end exercise1d;
--concurrent architecture
architecture conc of exercise1d is
begin
    y <= (a or b or (not c) or (not d)) and (a or b or (not c) or  d);
end conc;