--seg_7
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity seg_7 is
    Port ( A, B, C, D: in std_logic;
           segments: out std_logic_vector(6 downto 0) );
end seg_7;

architecture behavioral of seg_7 is
begin
    segments(0) <= not((not C and not A) or B or (C and A) or D);
    segments(1) <= not((not C) or (not B and not A) or (B and A));
    segments(2) <= not((not B) or A or C);
    segments(3) <= not((not C and not A) or (not C and B) or (B and not A) or (C and not B and A) or D);
    segments(4) <= not((not C and not A) or (B and not A));
    segments(5) <= not((not B and not A) or (C and not B) or (C and not A) or D);
    segments(6) <= not((not C and B) or (C and not B) or (C and not A) or D);
end behavioral;