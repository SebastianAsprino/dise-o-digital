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

-- DATE "10/02/2024 21:08:50"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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
SIGNAL a_aALTERA_ASDO_DATA1_a_apadout : std_logic;
SIGNAL a_aALTERA_FLASH_nCE_nCSO_a_apadout : std_logic;
SIGNAL a_aALTERA_DATA0_a_apadout : std_logic;
SIGNAL a_aALTERA_ASDO_DATA1_a_aibuf_o : std_logic;
SIGNAL a_aALTERA_FLASH_nCE_nCSO_a_aibuf_o : std_logic;
SIGNAL a_aALTERA_DATA0_a_aibuf_o : std_logic;

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
	fa : BUFFER std_logic;
	fb : BUFFER std_logic;
	fc : BUFFER std_logic;
	fd : BUFFER std_logic;
	fe : BUFFER std_logic;
	ff : BUFFER std_logic;
	fg : BUFFER std_logic
	);
END seg_7;

-- Design Ports Information
-- fa	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fb	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fc	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fd	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fe	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ff	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fg	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_fa : std_logic;
SIGNAL ww_fb : std_logic;
SIGNAL ww_fc : std_logic;
SIGNAL ww_fd : std_logic;
SIGNAL ww_fe : std_logic;
SIGNAL ww_ff : std_logic;
SIGNAL ww_fg : std_logic;
SIGNAL fa_aoutput_o : std_logic;
SIGNAL fb_aoutput_o : std_logic;
SIGNAL fc_aoutput_o : std_logic;
SIGNAL fd_aoutput_o : std_logic;
SIGNAL fe_aoutput_o : std_logic;
SIGNAL ff_aoutput_o : std_logic;
SIGNAL fg_aoutput_o : std_logic;
SIGNAL B_ainput_o : std_logic;
SIGNAL D_ainput_o : std_logic;
SIGNAL A_ainput_o : std_logic;
SIGNAL C_ainput_o : std_logic;
SIGNAL fa_a0_combout : std_logic;
SIGNAL fb_a0_combout : std_logic;
SIGNAL fc_a0_combout : std_logic;
SIGNAL fd_a0_combout : std_logic;
SIGNAL fd_a1_combout : std_logic;
SIGNAL ff_a0_combout : std_logic;
SIGNAL fg_a0_combout : std_logic;

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
fa <= ww_fa;
fb <= ww_fb;
fc <= ww_fc;
fd <= ww_fd;
fe <= ww_fe;
ff <= ww_ff;
fg <= ww_fg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
fa_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => fa_a0_combout,
	devoe => ww_devoe,
	o => fa_aoutput_o);

-- Location: IOOBUF_X94_Y73_N2
fb_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => fb_a0_combout,
	devoe => ww_devoe,
	o => fb_aoutput_o);

-- Location: IOOBUF_X94_Y73_N9
fc_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => fc_a0_combout,
	devoe => ww_devoe,
	o => fc_aoutput_o);

-- Location: IOOBUF_X107_Y73_N16
fd_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => fd_a0_combout,
	devoe => ww_devoe,
	o => fd_aoutput_o);

-- Location: IOOBUF_X87_Y73_N16
fe_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => fd_a1_combout,
	devoe => ww_devoe,
	o => fe_aoutput_o);

-- Location: IOOBUF_X87_Y73_N9
ff_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ff_a0_combout,
	devoe => ww_devoe,
	o => ff_aoutput_o);

-- Location: IOOBUF_X72_Y73_N9
fg_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => fg_a0_combout,
	devoe => ww_devoe,
	o => fg_aoutput_o);

-- Location: IOIBUF_X115_Y14_N1
B_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => B_ainput_o);

-- Location: IOIBUF_X115_Y13_N8
D_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => D_ainput_o);

-- Location: IOIBUF_X115_Y17_N1
A_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => A_ainput_o);

-- Location: IOIBUF_X115_Y15_N8
C_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => C_ainput_o);

-- Location: LCCOMB_X96_Y70_N8
fa_a0 : cycloneive_lcell_comb
-- Equation(s):
-- fa_a0_combout = (A_ainput_o) # ((B_ainput_o & (D_ainput_o)) # (!B_ainput_o & ((C_ainput_o) # (!D_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B_ainput_o,
	datab => D_ainput_o,
	datac => A_ainput_o,
	datad => C_ainput_o,
	combout => fa_a0_combout);

-- Location: LCCOMB_X96_Y70_N10
fb_a0 : cycloneive_lcell_comb
-- Equation(s):
-- fb_a0_combout = (D_ainput_o $ (!C_ainput_o)) # (!B_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => D_ainput_o,
	datac => B_ainput_o,
	datad => C_ainput_o,
	combout => fb_a0_combout);

-- Location: LCCOMB_X96_Y70_N28
fc_a0 : cycloneive_lcell_comb
-- Equation(s):
-- fc_a0_combout = (D_ainput_o) # ((B_ainput_o) # (!C_ainput_o))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => D_ainput_o,
	datac => B_ainput_o,
	datad => C_ainput_o,
	combout => fc_a0_combout);

-- Location: LCCOMB_X96_Y70_N14
fd_a0 : cycloneive_lcell_comb
-- Equation(s):
-- fd_a0_combout = (D_ainput_o & (B_ainput_o $ (C_ainput_o))) # (!D_ainput_o & ((C_ainput_o) # (!B_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => D_ainput_o,
	datac => B_ainput_o,
	datad => C_ainput_o,
	combout => fd_a0_combout);

-- Location: LCCOMB_X96_Y70_N0
fd_a1 : cycloneive_lcell_comb
-- Equation(s):
-- fd_a1_combout = (!D_ainput_o & ((C_ainput_o) # (!B_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => D_ainput_o,
	datac => B_ainput_o,
	datad => C_ainput_o,
	combout => fd_a1_combout);

-- Location: LCCOMB_X96_Y70_N26
ff_a0 : cycloneive_lcell_comb
-- Equation(s):
-- ff_a0_combout = (A_ainput_o) # ((B_ainput_o & ((!C_ainput_o) # (!D_ainput_o))) # (!B_ainput_o & (!D_ainput_o & !C_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B_ainput_o,
	datab => D_ainput_o,
	datac => A_ainput_o,
	datad => C_ainput_o,
	combout => ff_a0_combout);

-- Location: LCCOMB_X96_Y70_N20
fg_a0 : cycloneive_lcell_comb
-- Equation(s):
-- fg_a0_combout = (A_ainput_o) # ((B_ainput_o & ((!C_ainput_o) # (!D_ainput_o))) # (!B_ainput_o & ((C_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B_ainput_o,
	datab => D_ainput_o,
	datac => A_ainput_o,
	datad => C_ainput_o,
	combout => fg_a0_combout);

ww_fa <= fa_aoutput_o;

ww_fb <= fb_aoutput_o;

ww_fc <= fc_aoutput_o;

ww_fd <= fd_aoutput_o;

ww_fe <= fe_aoutput_o;

ww_ff <= ff_aoutput_o;

ww_fg <= fg_aoutput_o;
END structure;


