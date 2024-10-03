library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seg_7 is
    Port (
        A, B, C, D: in std_logic;
        fa, fb, fc, fd, fe, ff, fg: out std_logic	
    );
end seg_7;	
architecture behavioral of seg_7 is
begin
fa<=((not(B) and not(D)) or (B and D) or (A) or (not(B) and C));
fb<=((not(C) and not(D)) or (not(B)) or (C and D));
fc<=((not(C)) or (D) or (B));
fd<=((not(B) and not(D)) or (C and not(D)) or (B and not(C) and D) or (not(B) and C));
fe<=((not(B) and not(D)) or (C and not(D)));
ff<=((not(C) and not(D)) or (B and not(D)) or (B and not(C)) or (A));
fg<=((B and not(C)) or (not(B) and C) or (A) or (B and not(D)));
end behavioral;