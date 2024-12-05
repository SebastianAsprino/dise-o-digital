--parcial_2
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity parcial_2 is
    Port ( A, B, C, D, E, F, G, H : in  STD_LOGIC;
           salida1, salida2, salida3, salida4, salida5, salida6, salida7, salida8, 
			  SNR, SNV, SSR, SSV, SER, SEV, SOR, SOV : out STD_LOGIC;
           segments_ABCD, segments_EFGH : out STD_LOGIC_VECTOR(6 downto 0));
end parcial_2;

architecture Behavioral of parcial_2 is
    signal NS : unsigned(2 downto 0);
    signal EO : unsigned(2 downto 0);
	 signal NS_vector : std_logic_vector(3 downto 0);
    signal EO_vector : std_logic_vector(3 downto 0);
	 signal EO_is_greater : std_logic;

    component seg_7 is
        Port ( A, B, C, D: in std_logic;
               segments: out std_logic_vector(6 downto 0) );
    end component;

begin
    -- Contar el número de entradas activas
    NS <= ("00" & A) + ("00" & B) + ("00" & C) + ("00" & D);
    EO <= ("00" & E) + ("00" & F) + ("00" & G) + ("00" & H);
	 
	 NS_vector <= std_logic_vector(resize(NS, 4));
    EO_vector <= std_logic_vector(resize(EO, 4));
    EO_is_greater <= '1' when EO > NS else '0';
    -- Asignar las salidas basadas en el conteo
    salida1 <= NOT A;
    salida2 <= NOT B;
    salida3 <= NOT C;
    salida4 <= NOT D;
    
    salida5 <= NOT E;
    salida6 <= NOT F;
    salida7 <= NOT G;
    salida8 <= NOT H;
    
    SNR <= EO_is_greater;
	 SNV <= not EO_is_greater;
    SSR <= EO_is_greater;
    SSV <= not EO_is_greater;
    SER <= not EO_is_greater;
    SEV <= EO_is_greater;
    SOR <= not EO_is_greater;
    SOV <= EO_is_greater;
    
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
end Behavioral;
