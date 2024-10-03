library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_seg_7 is
end tb_seg_7;

architecture test of tb_seg_7 is
    -- Señales que conectarán con el DUT (Design Under Test)
    signal A, B, C, D: std_logic := '0';
    signal fa, fb, fc, fd, fe, ff, fg: std_logic;
    
    -- Instancia del diseño que quieres probar
    component seg_7
        Port (
            A, B, C, D: in std_logic;
            fa, fb, fc, fd, fe, ff, fg: out std_logic
        );
    end component;
    
begin
    -- Conexión entre señales locales y el DUT
    UUT: seg_7 Port map (A => A, B => B, C => C, D => D, fa => fa, fb => fb, fc => fc, fd => fd, fe => fe, ff => ff, fg => fg);

    -- Proceso para aplicar diferentes combinaciones de entradas
    stim_proc: process
    begin
        -- Caso 1: A = 0, B = 0, C = 0, D = 0
        A <= '0'; B <= '0'; C <= '0'; D <= '0';
        wait for 100 ns;
        
        -- Caso 2: A = 0, B = 0, C = 0, D = 1
        A <= '0'; B <= '0'; C <= '0'; D <= '1';
        wait for 100 ns;
        
        -- Caso 3: A = 0, B = 0, C = 1, D = 0
        A <= '0'; B <= '0'; C <= '1'; D <= '0';
        wait for 100 ns;
        
        -- Añade más casos según sea necesario

        wait;
    end process;
end test;
