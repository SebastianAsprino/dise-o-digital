
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PARCIAL3 is
	Port ( A, B, C, D, E, F, G, H, CLOCK_50: in  STD_LOGIC;
			 salida1, salida2, salida3, salida4, salida5, salida6, salida7, salida8,
			 SNR, SNV, SSR, SSV, SER, SEV, SOR, SOV : out STD_LOGIC;
			 segments_ABCD, segments_EFGH, contador_NS, contador_EO, contador1_NS, contador1_EO : out STD_LOGIC_VECTOR(6 downto 0));
end PARCIAL3;

architecture Behavioral of PARCIAL3 is
    signal NS : unsigned(2 downto 0);
    signal EO : unsigned(2 downto 0);
    signal NS_vector : std_logic_vector(3 downto 0);
    signal EO_vector : std_logic_vector(3 downto 0);
    signal tes : std_logic := '0';
    signal count : INTEGER range 0 to 20 := 20;
    signal clk_div : STD_LOGIC := '0';
    signal counter1 : INTEGER range 0 to 12500000 := 0;
    signal NS_is_greater, EO_is_greater : std_logic;
    
    component seg_7 is
        Port ( A, B, C, D: in std_logic;
               segments: out std_logic_vector(6 downto 0) );
    end component;
    
    component counter is
        Port ( 
               count : INTEGER range 0 to 20;
               unidades, decenas, unidades1, decenas1 : out STD_LOGIC_VECTOR(6 downto 0)
              );
    end component;
begin
    -- Contar el número de entradas activas
    NS <= ("00" & A) + ("00" & B) + ("00" & C) + ("00" & D);
    EO <= ("00" & E) + ("00" & F) + ("00" & G) + ("00" & H);
    
    NS_vector <= std_logic_vector(resize(NS, 4));
    EO_vector <= std_logic_vector(resize(EO, 4));
    
    EO_is_greater <= '1' when EO = 4 else '0';  -- Si hay 4 vehículos en EO
    NS_is_greater <= '1' when NS = 4 else '0';  -- Si hay 4 vehículos en NS
    
    -- Asignar las salidas basadas en el conteo
    salida1 <= NOT A;
    salida2 <= NOT B;
    salida3 <= NOT C;
    salida4 <= NOT D;
    salida5 <= NOT E;
    salida6 <= NOT F;
    salida7 <= NOT G;
    salida8 <= NOT H;
    
	 SNR <= NOT tes;
	 SNV <= tes;
	 
    SSR <= NOT tes;
    SSV <= tes;
	 
    SER <= tes;
    SEV <= NOT tes;
	 
    SOR <= tes;
    SOV <= NOT tes;
    
    -- Divisor de frecuencia
    process(CLOCK_50)
    begin
        if rising_edge(CLOCK_50) then
            if counter1 = 12500000 then
                counter1 <= 0;
                clk_div <= not clk_div;
            else
                counter1 <= counter1 + 1;
            end if;
        end if;
    end process;
    
    -- Proceso unificado para el control del semáforo
    process(clk_div)
    begin
        if rising_edge(clk_div) then
            if NS_is_greater = '1' then
                -- Prioridad absoluta para NS
                tes <= '1';
                count <= 20;
            elsif EO_is_greater = '1' then
                -- Prioridad secundaria para EO
                tes <= '0';
                count <= 20;
            elsif count = 0 then
                -- Cambio normal del semáforo
                count <= 20;
                tes <= not tes;
            else
                -- Decrementar el contador
                count <= count - 1;
            end if;
        end if;
    end process;

    -- Instanciar los displays de 7 segmentos
    display_ABCD: seg_7 port map (
        A => NS_vector(0),
        B => NS_vector(1),
        C => NS_vector(2),
        D => NS_vector(3),
        segments => segments_ABCD
    );
    
    display_EFGH: seg_7 port map (
        A => EO_vector(0),
        B => EO_vector(1),
        C => EO_vector(2),
        D => EO_vector(3),
        segments => segments_EFGH
    );
    
    display_counter: counter port map (
        count => count,
        unidades => contador_NS,
        decenas => contador1_NS,
        unidades1 => contador_EO,
        decenas1 => contador1_EO
    );
end Behavioral;
