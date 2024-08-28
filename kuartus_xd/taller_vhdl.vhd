library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity taller_vhdl is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        C : in STD_LOGIC;
        F : out STD_LOGIC		
    );
end taller_vhdl;

architecture Behavioral of taller_vhdl is
begin
    F <= (A AND(not C)) or (A and B);
end Behavioral;
