library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Módulo counter: Cuenta de forma regresiva de 20 a 0 y muestra el valor en un display de 7 segmentos
entity counter is
    Port ( 
           count : INTEGER range 0 to 50;
           unidades, decenas : out STD_LOGIC_VECTOR(6 downto 0) -- displays
          );
end counter;

architecture Behavioral of counter is
    -- Tabla de conversión de números a segmentos
    type segment_lut is array (0 to 9) of STD_LOGIC_VECTOR(6 downto 0); 
    constant seg_table : segment_lut := (
        "1000000",  -- 0
        "1111001",  -- 1
        "0100100",  -- 2
        "0110000",  -- 3
        "0011001",  -- 4
        "0010010",  -- 5
        "0000010",  -- 6
        "1111000",  -- 7
        "0000000",  -- 8
        "0010000"   -- 9
    );
begin

    -- Decodificador de 7 segmentos para unidades y decenas
    unidades <= seg_table(count mod 10);
    decenas <= seg_table(count / 10);


end Behavioral;
