library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FINAL is
	Port ( 
		CLOCK_50	:in STD_LOGIC; -- Señal de reloj
		key0		:in STD_LOGIC; -- Ingreso de carro
		key1		:in STD_LOGIC; -- Salida de carro
		sw0		:in STD_LOGIC; -- Reset normal
		sw1		:in STD_LOGIC; -- Pausa sistema
		sw2		:in STD_LOGIC; -- Reset a máxima capacidad
		leds		:out STD_LOGIC_VECTOR(4 downto 0); -- LEDs de estado
		unidades	:out STD_LOGIC_VECTOR(6 downto 0); -- Display 7 segmentos
		decenas	:out STD_LOGIC_VECTOR(6 downto 0)  -- Display 7 segmentos
	);
end FINAL;

-- Este módulo implementa un sistema de control de estacionamiento que gestiona:
-- - Conteo de espacios ocupados/disponibles
-- - Diferentes estados del sistema (normal, pausado, lleno, etc.)
-- - Visualización en displays 7 segmentos y LEDs indicadore

architecture Behavioral of FINAL is
	 -- Definición de estados posibles del sistema y señales principales
    -- para el control de tiempo, conteo de espacios y detección de cambios
	type estado_type is (NORMAL, PAUSADO, LLENO, VACIO, MANTENIMIENTO);
	signal estado_actual, estado_siguiente : estado_type;
	constant MAX_CONT					:integer := 12500000;
	constant MAX_ESPACIOS			:integer := 50;
	signal contador					:integer range 0 to MAX_CONT := 0;
	signal cambio_estado				:std_logic := '0';
	signal count						:integer range 0 to MAX_ESPACIOS := 0;
	signal key0_prev, key1_prev	:std_logic := '0';

	component counter is
	Port ( 
		count			:in integer range 0 to 50;
		unidades		:out STD_LOGIC_VECTOR(6 downto 0);
		decenas		:out STD_LOGIC_VECTOR(6 downto 0)
	);
	end component;

begin

    -- Divisor de frecuencia: Genera una base de tiempo para sincronizar
    -- las operaciones del sistema
	process(CLOCK_50, sw0)
	begin
		if sw0 = '1' then
			contador <= 0;
			cambio_estado <= '0';
		elsif rising_edge(CLOCK_50) then
			if contador = MAX_CONT then
				contador <= 0;
				cambio_estado <= '1';
			else
				contador <= contador + 1;
				cambio_estado <= '0';
			end if;
		end if;
	end process;

    -- Proceso principal de control: Maneja la lógica de estados y el
    -- contador de espacios. Responde a entradas de usuario (botones/switches)
    -- y gestiona las transiciones entre estados
	process(CLOCK_50, sw0, sw2)
	begin
		if sw0 = '1' then
			count <= 0;
			estado_actual <= VACIO;
		elsif sw2 = '1' then
			count <= MAX_ESPACIOS;
			estado_actual <= LLENO;
		elsif rising_edge(CLOCK_50) then
			-- Almacenar valores previos de keys para detección de flancos
			key0_prev <= key0;
			key1_prev <= key1;
			if sw1 = '1' then
				estado_actual <= PAUSADO;
			else
				case estado_actual is
					when NORMAL =>
						-- Detectar flanco de bajada de key0 (entrada de carro)
						if key0_prev = '1' and key0 = '0' and count < MAX_ESPACIOS then
							count <= count + 1;
							if count = MAX_ESPACIOS - 1 then
								estado_actual <= LLENO;
							end if;
						-- Detectar flanco de bajada de key1 (salida de carro)
						elsif key1_prev = '1' and key1 = '0' and count > 0 then
							count <= count - 1;
							if count = 1 then
								estado_actual <= VACIO;
							end if;
						end if;
					when PAUSADO =>
						if sw1 = '0' then
							estado_actual <= NORMAL;
						end if;
					when LLENO =>
						if key1_prev = '1' and key1 = '0' then
							count <= count - 1;
							estado_actual <= NORMAL;
						end if;
					when VACIO =>
						if key0_prev = '1' and key0 = '0' then
							count <= count + 1;
							estado_actual <= NORMAL;
						end if;
					when MANTENIMIENTO =>
						estado_actual <= NORMAL;
					end case;
			end if;
		end if;
	end process;

    -- Control de indicadores LED: Asigna diferentes patrones de LED
    -- para indicar visualmente el estado actual del sistema
	process(estado_actual)
	begin
		case estado_actual is
			when NORMAL =>
				leds <= "00001";
			when PAUSADO =>
				leds <= "00010";
			when LLENO =>
				leds <= "00100";
			when VACIO =>
				leds <= "01000";
			when MANTENIMIENTO =>
				leds <= "10000";
		end case;
	end process;

	-- Instancia del contador para mostrar en 2x7 segmentos
	display_counter	:counter
	port map (
		count		=> count,
		unidades	=> unidades,
		decenas	=> decenas
	);
end Behavioral;