--concurrent signal assignment
--entity
library ieee;
use ieee.std_logic_1164.all;
entity exercise1e is 
    port (A,B, C : in std_logic;
          y : out std_logic
          );
    end exercise1e;
--concurrent architecture
architecture conc of exercise1e is
begin
    y <= (b or (not a ) or (not c)) and (a or b or (not c)) and ((not a) or b or c) and (a or (not b) or (not c));
end conc;