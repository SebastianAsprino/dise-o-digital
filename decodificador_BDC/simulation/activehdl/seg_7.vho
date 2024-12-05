-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "10/14/2024 22:44:33"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Active-HDL (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	seg_7 IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	segments : OUT std_logic_vector(6 DOWNTO 0)
	);
END seg_7;

-- Design Ports Information
-- segments[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF seg_7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_segments : std_logic_vector(6 DOWNTO 0);
SIGNAL \segments[0]~output_o\ : std_logic;
SIGNAL \segments[1]~output_o\ : std_logic;
SIGNAL \segments[2]~output_o\ : std_logic;
SIGNAL \segments[3]~output_o\ : std_logic;
SIGNAL \segments[4]~output_o\ : std_logic;
SIGNAL \segments[5]~output_o\ : std_logic;
SIGNAL \segments[6]~output_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \segments~0_combout\ : std_logic;
SIGNAL \segments~1_combout\ : std_logic;
SIGNAL \segments~2_combout\ : std_logic;
SIGNAL \segments~3_combout\ : std_logic;
SIGNAL \segments~4_combout\ : std_logic;
SIGNAL \segments~5_combout\ : std_logic;
SIGNAL \segments~6_combout\ : std_logic;
SIGNAL \ALT_INV_segments~2_combout\ : std_logic;
SIGNAL \ALT_INV_segments~1_combout\ : std_logic;
SIGNAL \ALT_INV_segments~0_combout\ : std_logic;
SIGNAL \ALT_INV_segments~3_combout\ : std_logic;
SIGNAL \ALT_INV_segments~4_combout\ : std_logic;
SIGNAL \ALT_INV_segments~6_combout\ : std_logic;
SIGNAL \ALT_INV_segments~5_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
segments <= ww_segments;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_segments~2_combout\ <= NOT \segments~2_combout\;
\ALT_INV_segments~1_combout\ <= NOT \segments~1_combout\;
\ALT_INV_segments~0_combout\ <= NOT \segments~0_combout\;
\ALT_INV_segments~3_combout\ <= NOT \segments~3_combout\;
\ALT_INV_segments~4_combout\ <= NOT \segments~4_combout\;
\ALT_INV_segments~6_combout\ <= NOT \segments~6_combout\;
\ALT_INV_segments~5_combout\ <= NOT \segments~5_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y25_N16
\segments[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_segments~0_combout\,
	devoe => ww_devoe,
	o => \segments[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\segments[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_segments~1_combout\,
	devoe => ww_devoe,
	o => \segments[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\segments[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_segments~2_combout\,
	devoe => ww_devoe,
	o => \segments[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\segments[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_segments~3_combout\,
	devoe => ww_devoe,
	o => \segments[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\segments[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_segments~4_combout\,
	devoe => ww_devoe,
	o => \segments[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\segments[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_segments~5_combout\,
	devoe => ww_devoe,
	o => \segments[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\segments[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_segments~6_combout\,
	devoe => ww_devoe,
	o => \segments[6]~output_o\);

-- Location: IOIBUF_X115_Y14_N8
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: LCCOMB_X114_Y6_N0
\segments~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segments~0_combout\ = (\D~input_o\) # ((\B~input_o\) # (\A~input_o\ $ (!\C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \D~input_o\,
	datac => \B~input_o\,
	datad => \C~input_o\,
	combout => \segments~0_combout\);

-- Location: LCCOMB_X114_Y6_N26
\segments~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segments~1_combout\ = (\B~input_o\ $ (!\A~input_o\)) # (!\C~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~input_o\,
	datac => \B~input_o\,
	datad => \A~input_o\,
	combout => \segments~1_combout\);

-- Location: LCCOMB_X114_Y6_N12
\segments~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segments~2_combout\ = (\C~input_o\) # ((\A~input_o\) # (!\B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~input_o\,
	datac => \B~input_o\,
	datad => \A~input_o\,
	combout => \segments~2_combout\);

-- Location: LCCOMB_X114_Y6_N22
\segments~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \segments~3_combout\ = (\D~input_o\) # ((\A~input_o\ & (\B~input_o\ $ (\C~input_o\))) # (!\A~input_o\ & ((\B~input_o\) # (!\C~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \D~input_o\,
	datac => \B~input_o\,
	datad => \C~input_o\,
	combout => \segments~3_combout\);

-- Location: LCCOMB_X114_Y6_N8
\segments~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segments~4_combout\ = (!\A~input_o\ & ((\B~input_o\) # (!\C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~input_o\,
	datac => \B~input_o\,
	datad => \A~input_o\,
	combout => \segments~4_combout\);

-- Location: LCCOMB_X114_Y6_N2
\segments~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \segments~5_combout\ = (\D~input_o\) # ((\A~input_o\ & (!\B~input_o\ & \C~input_o\)) # (!\A~input_o\ & ((\C~input_o\) # (!\B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \D~input_o\,
	datac => \B~input_o\,
	datad => \C~input_o\,
	combout => \segments~5_combout\);

-- Location: LCCOMB_X114_Y6_N4
\segments~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segments~6_combout\ = (\D~input_o\) # ((\B~input_o\ & ((!\C~input_o\) # (!\A~input_o\))) # (!\B~input_o\ & ((\C~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \D~input_o\,
	datac => \B~input_o\,
	datad => \C~input_o\,
	combout => \segments~6_combout\);

ww_segments(0) <= \segments[0]~output_o\;

ww_segments(1) <= \segments[1]~output_o\;

ww_segments(2) <= \segments[2]~output_o\;

ww_segments(3) <= \segments[3]~output_o\;

ww_segments(4) <= \segments[4]~output_o\;

ww_segments(5) <= \segments[5]~output_o\;

ww_segments(6) <= \segments[6]~output_o\;
END structure;


