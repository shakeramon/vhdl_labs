-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "07/09/2024 16:19:35"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	light_organ IS
    PORT (
	CLOCK : IN std_logic;
	RST_in : IN std_logic;
	RATE_in : IN std_logic;
	LEDS : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END light_organ;

-- Design Ports Information
-- LEDS[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[7]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[8]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[9]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[10]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[11]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[12]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[13]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[14]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[15]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_in	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RATE_in	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF light_organ IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_RST_in : std_logic;
SIGNAL ww_RATE_in : std_logic;
SIGNAL ww_LEDS : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \U2|shift_reg[0]~_wirecell_combout\ : std_logic;
SIGNAL \RST_in~input_o\ : std_logic;
SIGNAL \U3|dir~0_combout\ : std_logic;
SIGNAL \U3|dir~q\ : std_logic;
SIGNAL \U1|Add0~65_sumout\ : std_logic;
SIGNAL \U1|Add0~66\ : std_logic;
SIGNAL \U1|Add0~13_sumout\ : std_logic;
SIGNAL \U1|Add0~14\ : std_logic;
SIGNAL \U1|Add0~9_sumout\ : std_logic;
SIGNAL \U1|Add0~10\ : std_logic;
SIGNAL \U1|Add0~5_sumout\ : std_logic;
SIGNAL \U1|Add0~6\ : std_logic;
SIGNAL \U1|Add0~37_sumout\ : std_logic;
SIGNAL \U1|Add0~38\ : std_logic;
SIGNAL \U1|Add0~33_sumout\ : std_logic;
SIGNAL \U1|Add0~34\ : std_logic;
SIGNAL \U1|Add0~29_sumout\ : std_logic;
SIGNAL \RATE_in~input_o\ : std_logic;
SIGNAL \U1|Add0~30\ : std_logic;
SIGNAL \U1|Add0~25_sumout\ : std_logic;
SIGNAL \U1|count~3_combout\ : std_logic;
SIGNAL \U1|Add0~26\ : std_logic;
SIGNAL \U1|Add0~21_sumout\ : std_logic;
SIGNAL \U1|count~2_combout\ : std_logic;
SIGNAL \U1|Add0~22\ : std_logic;
SIGNAL \U1|Add0~17_sumout\ : std_logic;
SIGNAL \U1|count~1_combout\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|Add0~18\ : std_logic;
SIGNAL \U1|Add0~61_sumout\ : std_logic;
SIGNAL \U1|count~6_combout\ : std_logic;
SIGNAL \U1|Add0~62\ : std_logic;
SIGNAL \U1|Add0~57_sumout\ : std_logic;
SIGNAL \U1|count~5_combout\ : std_logic;
SIGNAL \U1|Add0~58\ : std_logic;
SIGNAL \U1|Add0~53_sumout\ : std_logic;
SIGNAL \U1|count~4_combout\ : std_logic;
SIGNAL \U1|Add0~54\ : std_logic;
SIGNAL \U1|Add0~49_sumout\ : std_logic;
SIGNAL \U1|Add0~50\ : std_logic;
SIGNAL \U1|Add0~45_sumout\ : std_logic;
SIGNAL \U1|Add0~46\ : std_logic;
SIGNAL \U1|Add0~41_sumout\ : std_logic;
SIGNAL \U1|Add0~42\ : std_logic;
SIGNAL \U1|Add0~1_sumout\ : std_logic;
SIGNAL \U1|count~0_combout\ : std_logic;
SIGNAL \U1|Add0~2\ : std_logic;
SIGNAL \U1|Add0~105_sumout\ : std_logic;
SIGNAL \U1|count~12_combout\ : std_logic;
SIGNAL \U1|Add0~106\ : std_logic;
SIGNAL \U1|Add0~101_sumout\ : std_logic;
SIGNAL \U1|count~11_combout\ : std_logic;
SIGNAL \U1|Add0~102\ : std_logic;
SIGNAL \U1|Add0~97_sumout\ : std_logic;
SIGNAL \U1|count~10_combout\ : std_logic;
SIGNAL \U1|Add0~98\ : std_logic;
SIGNAL \U1|Add0~93_sumout\ : std_logic;
SIGNAL \U1|Add0~94\ : std_logic;
SIGNAL \U1|Add0~89_sumout\ : std_logic;
SIGNAL \U1|Equal0~4_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Add0~90\ : std_logic;
SIGNAL \U1|Add0~85_sumout\ : std_logic;
SIGNAL \U1|Add0~86\ : std_logic;
SIGNAL \U1|Add0~81_sumout\ : std_logic;
SIGNAL \U1|Add0~82\ : std_logic;
SIGNAL \U1|Add0~77_sumout\ : std_logic;
SIGNAL \U1|count~9_combout\ : std_logic;
SIGNAL \U1|Add0~78\ : std_logic;
SIGNAL \U1|Add0~73_sumout\ : std_logic;
SIGNAL \U1|count~8_combout\ : std_logic;
SIGNAL \U1|Add0~74\ : std_logic;
SIGNAL \U1|Add0~69_sumout\ : std_logic;
SIGNAL \U1|count~7_combout\ : std_logic;
SIGNAL \U1|Equal0~3_combout\ : std_logic;
SIGNAL \U1|Equal0~2_combout\ : std_logic;
SIGNAL \U1|Equal0~5_combout\ : std_logic;
SIGNAL \U1|PULSE~q\ : std_logic;
SIGNAL \U2|shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \U2|shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \U2|shift_reg[4]~feeder_combout\ : std_logic;
SIGNAL \U2|shift_reg[5]~feeder_combout\ : std_logic;
SIGNAL \U2|shift_reg[6]~feeder_combout\ : std_logic;
SIGNAL \U2|shift_reg[7]~feeder_combout\ : std_logic;
SIGNAL \U2|shift_reg[8]~feeder_combout\ : std_logic;
SIGNAL \U2|shift_reg[9]~feeder_combout\ : std_logic;
SIGNAL \U2|shift_reg[10]~feeder_combout\ : std_logic;
SIGNAL \U2|shift_reg[11]~feeder_combout\ : std_logic;
SIGNAL \U2|shift_reg[12]~feeder_combout\ : std_logic;
SIGNAL \U2|shift_reg[13]~feeder_combout\ : std_logic;
SIGNAL \U2|shift_reg[14]~feeder_combout\ : std_logic;
SIGNAL \U2|shift_reg[15]~feeder_combout\ : std_logic;
SIGNAL \U2|shift_reg~0_combout\ : std_logic;
SIGNAL \U2|shift_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|count\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \U1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \U1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \U1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \U1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_shift_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_RATE_in~input_o\ : std_logic;
SIGNAL \ALT_INV_RST_in~input_o\ : std_logic;
SIGNAL \U1|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \U1|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \U1|ALT_INV_count\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \U1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \U1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \U1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \U1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_dir~q\ : std_logic;
SIGNAL \U1|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \U1|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \U1|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \U1|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \U1|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \U1|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \U1|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \U1|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \U1|ALT_INV_Add0~53_sumout\ : std_logic;

BEGIN

ww_CLOCK <= CLOCK;
ww_RST_in <= RST_in;
ww_RATE_in <= RATE_in;
LEDS <= ww_LEDS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U1|ALT_INV_Add0~25_sumout\ <= NOT \U1|Add0~25_sumout\;
\U1|ALT_INV_Add0~21_sumout\ <= NOT \U1|Add0~21_sumout\;
\U1|ALT_INV_Add0~17_sumout\ <= NOT \U1|Add0~17_sumout\;
\U1|ALT_INV_Add0~1_sumout\ <= NOT \U1|Add0~1_sumout\;
\U2|ALT_INV_shift_reg\(15) <= NOT \U2|shift_reg\(15);
\U2|ALT_INV_shift_reg\(14) <= NOT \U2|shift_reg\(14);
\U2|ALT_INV_shift_reg\(13) <= NOT \U2|shift_reg\(13);
\U2|ALT_INV_shift_reg\(12) <= NOT \U2|shift_reg\(12);
\U2|ALT_INV_shift_reg\(11) <= NOT \U2|shift_reg\(11);
\U2|ALT_INV_shift_reg\(10) <= NOT \U2|shift_reg\(10);
\U2|ALT_INV_shift_reg\(9) <= NOT \U2|shift_reg\(9);
\U2|ALT_INV_shift_reg\(8) <= NOT \U2|shift_reg\(8);
\U2|ALT_INV_shift_reg\(7) <= NOT \U2|shift_reg\(7);
\U2|ALT_INV_shift_reg\(6) <= NOT \U2|shift_reg\(6);
\U2|ALT_INV_shift_reg\(5) <= NOT \U2|shift_reg\(5);
\U2|ALT_INV_shift_reg\(4) <= NOT \U2|shift_reg\(4);
\U2|ALT_INV_shift_reg\(3) <= NOT \U2|shift_reg\(3);
\U2|ALT_INV_shift_reg\(2) <= NOT \U2|shift_reg\(2);
\U2|ALT_INV_shift_reg\(1) <= NOT \U2|shift_reg\(1);
\ALT_INV_RATE_in~input_o\ <= NOT \RATE_in~input_o\;
\ALT_INV_RST_in~input_o\ <= NOT \RST_in~input_o\;
\U1|ALT_INV_Equal0~5_combout\ <= NOT \U1|Equal0~5_combout\;
\U1|ALT_INV_Equal0~4_combout\ <= NOT \U1|Equal0~4_combout\;
\U1|ALT_INV_count\(17) <= NOT \U1|count\(17);
\U1|ALT_INV_count\(18) <= NOT \U1|count\(18);
\U1|ALT_INV_count\(19) <= NOT \U1|count\(19);
\U1|ALT_INV_count\(20) <= NOT \U1|count\(20);
\U1|ALT_INV_count\(21) <= NOT \U1|count\(21);
\U1|ALT_INV_Equal0~3_combout\ <= NOT \U1|Equal0~3_combout\;
\U1|ALT_INV_count\(22) <= NOT \U1|count\(22);
\U1|ALT_INV_count\(23) <= NOT \U1|count\(23);
\U1|ALT_INV_count\(24) <= NOT \U1|count\(24);
\U1|ALT_INV_count\(25) <= NOT \U1|count\(25);
\U1|ALT_INV_count\(26) <= NOT \U1|count\(26);
\U1|ALT_INV_count\(0) <= NOT \U1|count\(0);
\U1|ALT_INV_Equal0~2_combout\ <= NOT \U1|Equal0~2_combout\;
\U1|ALT_INV_count\(10) <= NOT \U1|count\(10);
\U1|ALT_INV_count\(11) <= NOT \U1|count\(11);
\U1|ALT_INV_count\(12) <= NOT \U1|count\(12);
\U1|ALT_INV_count\(13) <= NOT \U1|count\(13);
\U1|ALT_INV_count\(14) <= NOT \U1|count\(14);
\U1|ALT_INV_count\(15) <= NOT \U1|count\(15);
\U1|ALT_INV_Equal0~1_combout\ <= NOT \U1|Equal0~1_combout\;
\U1|ALT_INV_count\(4) <= NOT \U1|count\(4);
\U1|ALT_INV_count\(5) <= NOT \U1|count\(5);
\U1|ALT_INV_count\(6) <= NOT \U1|count\(6);
\U1|ALT_INV_count\(7) <= NOT \U1|count\(7);
\U1|ALT_INV_count\(8) <= NOT \U1|count\(8);
\U1|ALT_INV_count\(9) <= NOT \U1|count\(9);
\U1|ALT_INV_Equal0~0_combout\ <= NOT \U1|Equal0~0_combout\;
\U1|ALT_INV_count\(1) <= NOT \U1|count\(1);
\U1|ALT_INV_count\(2) <= NOT \U1|count\(2);
\U1|ALT_INV_count\(3) <= NOT \U1|count\(3);
\U1|ALT_INV_count\(16) <= NOT \U1|count\(16);
\U3|ALT_INV_dir~q\ <= NOT \U3|dir~q\;
\U2|ALT_INV_shift_reg\(0) <= NOT \U2|shift_reg\(0);
\U1|ALT_INV_Add0~105_sumout\ <= NOT \U1|Add0~105_sumout\;
\U1|ALT_INV_Add0~101_sumout\ <= NOT \U1|Add0~101_sumout\;
\U1|ALT_INV_Add0~97_sumout\ <= NOT \U1|Add0~97_sumout\;
\U1|ALT_INV_Add0~77_sumout\ <= NOT \U1|Add0~77_sumout\;
\U1|ALT_INV_Add0~73_sumout\ <= NOT \U1|Add0~73_sumout\;
\U1|ALT_INV_Add0~69_sumout\ <= NOT \U1|Add0~69_sumout\;
\U1|ALT_INV_Add0~61_sumout\ <= NOT \U1|Add0~61_sumout\;
\U1|ALT_INV_Add0~57_sumout\ <= NOT \U1|Add0~57_sumout\;
\U1|ALT_INV_Add0~53_sumout\ <= NOT \U1|Add0~53_sumout\;

-- Location: IOOBUF_X10_Y61_N42
\LEDS[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_shift_reg\(0),
	devoe => ww_devoe,
	o => ww_LEDS(0));

-- Location: IOOBUF_X10_Y61_N59
\LEDS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|shift_reg\(1),
	devoe => ww_devoe,
	o => ww_LEDS(1));

-- Location: IOOBUF_X10_Y61_N76
\LEDS[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|shift_reg\(2),
	devoe => ww_devoe,
	o => ww_LEDS(2));

-- Location: IOOBUF_X10_Y61_N93
\LEDS[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|shift_reg\(3),
	devoe => ww_devoe,
	o => ww_LEDS(3));

-- Location: IOOBUF_X21_Y61_N36
\LEDS[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|shift_reg\(4),
	devoe => ww_devoe,
	o => ww_LEDS(4));

-- Location: IOOBUF_X21_Y61_N53
\LEDS[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|shift_reg\(5),
	devoe => ww_devoe,
	o => ww_LEDS(5));

-- Location: IOOBUF_X19_Y61_N2
\LEDS[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|shift_reg\(6),
	devoe => ww_devoe,
	o => ww_LEDS(6));

-- Location: IOOBUF_X19_Y61_N19
\LEDS[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|shift_reg\(7),
	devoe => ww_devoe,
	o => ww_LEDS(7));

-- Location: IOOBUF_X14_Y61_N53
\LEDS[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|shift_reg\(8),
	devoe => ww_devoe,
	o => ww_LEDS(8));

-- Location: IOOBUF_X15_Y61_N36
\LEDS[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|shift_reg\(9),
	devoe => ww_devoe,
	o => ww_LEDS(9));

-- Location: IOOBUF_X15_Y61_N53
\LEDS[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|shift_reg\(10),
	devoe => ww_devoe,
	o => ww_LEDS(10));

-- Location: IOOBUF_X14_Y61_N36
\LEDS[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|shift_reg\(11),
	devoe => ww_devoe,
	o => ww_LEDS(11));

-- Location: IOOBUF_X14_Y61_N19
\LEDS[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|shift_reg\(12),
	devoe => ww_devoe,
	o => ww_LEDS(12));

-- Location: IOOBUF_X12_Y61_N53
\LEDS[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|shift_reg\(13),
	devoe => ww_devoe,
	o => ww_LEDS(13));

-- Location: IOOBUF_X12_Y61_N2
\LEDS[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|shift_reg\(14),
	devoe => ww_devoe,
	o => ww_LEDS(14));

-- Location: IOOBUF_X14_Y61_N2
\LEDS[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|shift_reg\(15),
	devoe => ww_devoe,
	o => ww_LEDS(15));

-- Location: IOIBUF_X68_Y22_N44
\CLOCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G10
\CLOCK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~input_o\,
	outclk => \CLOCK~inputCLKENA0_outclk\);

-- Location: MLABCELL_X14_Y60_N36
\U2|shift_reg[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|shift_reg[0]~_wirecell_combout\ = ( !\U2|shift_reg\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_shift_reg\(0),
	combout => \U2|shift_reg[0]~_wirecell_combout\);

-- Location: IOIBUF_X21_Y0_N18
\RST_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST_in,
	o => \RST_in~input_o\);

-- Location: MLABCELL_X14_Y60_N57
\U3|dir~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|dir~0_combout\ = ( \U3|dir~q\ & ( \U2|shift_reg\(15) ) ) # ( !\U3|dir~q\ & ( \U2|shift_reg\(15) ) ) # ( \U3|dir~q\ & ( !\U2|shift_reg\(15) & ( \U2|shift_reg\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_shift_reg\(0),
	datae => \U3|ALT_INV_dir~q\,
	dataf => \U2|ALT_INV_shift_reg\(15),
	combout => \U3|dir~0_combout\);

-- Location: FF_X14_Y60_N59
\U3|dir\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U3|dir~0_combout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|dir~q\);

-- Location: LABCELL_X15_Y60_N30
\U1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~65_sumout\ = SUM(( \U1|count\(0) ) + ( VCC ) + ( !VCC ))
-- \U1|Add0~66\ = CARRY(( \U1|count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_count\(0),
	cin => GND,
	sumout => \U1|Add0~65_sumout\,
	cout => \U1|Add0~66\);

-- Location: FF_X15_Y60_N32
\U1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|Add0~65_sumout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(0));

-- Location: LABCELL_X15_Y60_N33
\U1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~13_sumout\ = SUM(( \U1|count\(1) ) + ( VCC ) + ( \U1|Add0~66\ ))
-- \U1|Add0~14\ = CARRY(( \U1|count\(1) ) + ( VCC ) + ( \U1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_count\(1),
	cin => \U1|Add0~66\,
	sumout => \U1|Add0~13_sumout\,
	cout => \U1|Add0~14\);

-- Location: FF_X15_Y60_N35
\U1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|Add0~13_sumout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(1));

-- Location: LABCELL_X15_Y60_N36
\U1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~9_sumout\ = SUM(( \U1|count\(2) ) + ( VCC ) + ( \U1|Add0~14\ ))
-- \U1|Add0~10\ = CARRY(( \U1|count\(2) ) + ( VCC ) + ( \U1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_count\(2),
	cin => \U1|Add0~14\,
	sumout => \U1|Add0~9_sumout\,
	cout => \U1|Add0~10\);

-- Location: FF_X15_Y60_N38
\U1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|Add0~9_sumout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(2));

-- Location: LABCELL_X15_Y60_N39
\U1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~5_sumout\ = SUM(( \U1|count\(3) ) + ( VCC ) + ( \U1|Add0~10\ ))
-- \U1|Add0~6\ = CARRY(( \U1|count\(3) ) + ( VCC ) + ( \U1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_count\(3),
	cin => \U1|Add0~10\,
	sumout => \U1|Add0~5_sumout\,
	cout => \U1|Add0~6\);

-- Location: FF_X15_Y60_N41
\U1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|Add0~5_sumout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(3));

-- Location: LABCELL_X15_Y60_N42
\U1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~37_sumout\ = SUM(( \U1|count\(4) ) + ( VCC ) + ( \U1|Add0~6\ ))
-- \U1|Add0~38\ = CARRY(( \U1|count\(4) ) + ( VCC ) + ( \U1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_count\(4),
	cin => \U1|Add0~6\,
	sumout => \U1|Add0~37_sumout\,
	cout => \U1|Add0~38\);

-- Location: FF_X15_Y60_N44
\U1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|Add0~37_sumout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(4));

-- Location: LABCELL_X15_Y60_N45
\U1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~33_sumout\ = SUM(( \U1|count\(5) ) + ( VCC ) + ( \U1|Add0~38\ ))
-- \U1|Add0~34\ = CARRY(( \U1|count\(5) ) + ( VCC ) + ( \U1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_count\(5),
	cin => \U1|Add0~38\,
	sumout => \U1|Add0~33_sumout\,
	cout => \U1|Add0~34\);

-- Location: FF_X15_Y60_N47
\U1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|Add0~33_sumout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(5));

-- Location: LABCELL_X15_Y60_N48
\U1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~29_sumout\ = SUM(( \U1|count\(6) ) + ( VCC ) + ( \U1|Add0~34\ ))
-- \U1|Add0~30\ = CARRY(( \U1|count\(6) ) + ( VCC ) + ( \U1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_count\(6),
	cin => \U1|Add0~34\,
	sumout => \U1|Add0~29_sumout\,
	cout => \U1|Add0~30\);

-- Location: FF_X15_Y60_N50
\U1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|Add0~29_sumout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(6));

-- Location: IOIBUF_X14_Y0_N35
\RATE_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RATE_in,
	o => \RATE_in~input_o\);

-- Location: LABCELL_X15_Y60_N51
\U1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~25_sumout\ = SUM(( \U1|count\(7) ) + ( VCC ) + ( \U1|Add0~30\ ))
-- \U1|Add0~26\ = CARRY(( \U1|count\(7) ) + ( VCC ) + ( \U1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_count\(7),
	cin => \U1|Add0~30\,
	sumout => \U1|Add0~25_sumout\,
	cout => \U1|Add0~26\);

-- Location: LABCELL_X15_Y60_N6
\U1|count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|count~3_combout\ = ( \U1|Add0~25_sumout\ & ( (!\U1|Equal0~5_combout\) # (\RATE_in~input_o\) ) ) # ( !\U1|Add0~25_sumout\ & ( (\U1|Equal0~5_combout\ & \RATE_in~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_RATE_in~input_o\,
	dataf => \U1|ALT_INV_Add0~25_sumout\,
	combout => \U1|count~3_combout\);

-- Location: FF_X15_Y60_N8
\U1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|count~3_combout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(7));

-- Location: LABCELL_X15_Y60_N54
\U1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~21_sumout\ = SUM(( \U1|count\(8) ) + ( VCC ) + ( \U1|Add0~26\ ))
-- \U1|Add0~22\ = CARRY(( \U1|count\(8) ) + ( VCC ) + ( \U1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_count\(8),
	cin => \U1|Add0~26\,
	sumout => \U1|Add0~21_sumout\,
	cout => \U1|Add0~22\);

-- Location: LABCELL_X15_Y60_N9
\U1|count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|count~2_combout\ = ( !\U1|Equal0~5_combout\ & ( \U1|Add0~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_Add0~21_sumout\,
	dataf => \U1|ALT_INV_Equal0~5_combout\,
	combout => \U1|count~2_combout\);

-- Location: FF_X15_Y60_N11
\U1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|count~2_combout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(8));

-- Location: LABCELL_X15_Y60_N57
\U1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~17_sumout\ = SUM(( \U1|count\(9) ) + ( VCC ) + ( \U1|Add0~22\ ))
-- \U1|Add0~18\ = CARRY(( \U1|count\(9) ) + ( VCC ) + ( \U1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_count\(9),
	cin => \U1|Add0~22\,
	sumout => \U1|Add0~17_sumout\,
	cout => \U1|Add0~18\);

-- Location: LABCELL_X15_Y60_N0
\U1|count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|count~1_combout\ = ( \U1|Add0~17_sumout\ & ( !\U1|Equal0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_Equal0~5_combout\,
	dataf => \U1|ALT_INV_Add0~17_sumout\,
	combout => \U1|count~1_combout\);

-- Location: FF_X15_Y60_N2
\U1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|count~1_combout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(9));

-- Location: LABCELL_X15_Y60_N24
\U1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Equal0~1_combout\ = ( !\U1|count\(5) & ( !\U1|count\(4) & ( (!\U1|count\(6) & (!\U1|count\(7) & (!\U1|count\(9) & !\U1|count\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_count\(6),
	datab => \U1|ALT_INV_count\(7),
	datac => \U1|ALT_INV_count\(9),
	datad => \U1|ALT_INV_count\(8),
	datae => \U1|ALT_INV_count\(5),
	dataf => \U1|ALT_INV_count\(4),
	combout => \U1|Equal0~1_combout\);

-- Location: LABCELL_X15_Y59_N0
\U1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~61_sumout\ = SUM(( \U1|count\(10) ) + ( VCC ) + ( \U1|Add0~18\ ))
-- \U1|Add0~62\ = CARRY(( \U1|count\(10) ) + ( VCC ) + ( \U1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_count\(10),
	cin => \U1|Add0~18\,
	sumout => \U1|Add0~61_sumout\,
	cout => \U1|Add0~62\);

-- Location: MLABCELL_X14_Y59_N15
\U1|count~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|count~6_combout\ = ( !\U1|Equal0~5_combout\ & ( \U1|Add0~61_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_Add0~61_sumout\,
	dataf => \U1|ALT_INV_Equal0~5_combout\,
	combout => \U1|count~6_combout\);

-- Location: FF_X14_Y59_N17
\U1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|count~6_combout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(10));

-- Location: LABCELL_X15_Y59_N3
\U1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~57_sumout\ = SUM(( \U1|count\(11) ) + ( VCC ) + ( \U1|Add0~62\ ))
-- \U1|Add0~58\ = CARRY(( \U1|count\(11) ) + ( VCC ) + ( \U1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_count\(11),
	cin => \U1|Add0~62\,
	sumout => \U1|Add0~57_sumout\,
	cout => \U1|Add0~58\);

-- Location: MLABCELL_X14_Y59_N6
\U1|count~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|count~5_combout\ = ( !\U1|Equal0~5_combout\ & ( \U1|Add0~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_Add0~57_sumout\,
	dataf => \U1|ALT_INV_Equal0~5_combout\,
	combout => \U1|count~5_combout\);

-- Location: FF_X14_Y59_N8
\U1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|count~5_combout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(11));

-- Location: LABCELL_X15_Y59_N6
\U1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~53_sumout\ = SUM(( \U1|count\(12) ) + ( VCC ) + ( \U1|Add0~58\ ))
-- \U1|Add0~54\ = CARRY(( \U1|count\(12) ) + ( VCC ) + ( \U1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_count\(12),
	cin => \U1|Add0~58\,
	sumout => \U1|Add0~53_sumout\,
	cout => \U1|Add0~54\);

-- Location: LABCELL_X15_Y60_N3
\U1|count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|count~4_combout\ = ( \U1|Add0~53_sumout\ & ( (!\U1|Equal0~5_combout\) # (!\RATE_in~input_o\) ) ) # ( !\U1|Add0~53_sumout\ & ( (\U1|Equal0~5_combout\ & !\RATE_in~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_RATE_in~input_o\,
	dataf => \U1|ALT_INV_Add0~53_sumout\,
	combout => \U1|count~4_combout\);

-- Location: FF_X15_Y60_N5
\U1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|count~4_combout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(12));

-- Location: LABCELL_X15_Y59_N9
\U1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~49_sumout\ = SUM(( \U1|count\(13) ) + ( VCC ) + ( \U1|Add0~54\ ))
-- \U1|Add0~50\ = CARRY(( \U1|count\(13) ) + ( VCC ) + ( \U1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_count\(13),
	cin => \U1|Add0~54\,
	sumout => \U1|Add0~49_sumout\,
	cout => \U1|Add0~50\);

-- Location: FF_X15_Y59_N11
\U1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|Add0~49_sumout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(13));

-- Location: LABCELL_X15_Y59_N12
\U1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~45_sumout\ = SUM(( \U1|count\(14) ) + ( VCC ) + ( \U1|Add0~50\ ))
-- \U1|Add0~46\ = CARRY(( \U1|count\(14) ) + ( VCC ) + ( \U1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_count\(14),
	cin => \U1|Add0~50\,
	sumout => \U1|Add0~45_sumout\,
	cout => \U1|Add0~46\);

-- Location: FF_X15_Y59_N14
\U1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|Add0~45_sumout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(14));

-- Location: LABCELL_X15_Y59_N15
\U1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~41_sumout\ = SUM(( \U1|count\(15) ) + ( VCC ) + ( \U1|Add0~46\ ))
-- \U1|Add0~42\ = CARRY(( \U1|count\(15) ) + ( VCC ) + ( \U1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_count\(15),
	cin => \U1|Add0~46\,
	sumout => \U1|Add0~41_sumout\,
	cout => \U1|Add0~42\);

-- Location: FF_X15_Y59_N17
\U1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|Add0~41_sumout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(15));

-- Location: LABCELL_X15_Y59_N18
\U1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~1_sumout\ = SUM(( \U1|count\(16) ) + ( VCC ) + ( \U1|Add0~42\ ))
-- \U1|Add0~2\ = CARRY(( \U1|count\(16) ) + ( VCC ) + ( \U1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_count\(16),
	cin => \U1|Add0~42\,
	sumout => \U1|Add0~1_sumout\,
	cout => \U1|Add0~2\);

-- Location: MLABCELL_X14_Y59_N12
\U1|count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|count~0_combout\ = ( \U1|Equal0~5_combout\ & ( \RATE_in~input_o\ ) ) # ( !\U1|Equal0~5_combout\ & ( \U1|Add0~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_RATE_in~input_o\,
	dataf => \U1|ALT_INV_Equal0~5_combout\,
	combout => \U1|count~0_combout\);

-- Location: FF_X14_Y59_N14
\U1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|count~0_combout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(16));

-- Location: LABCELL_X15_Y59_N21
\U1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~105_sumout\ = SUM(( \U1|count\(17) ) + ( VCC ) + ( \U1|Add0~2\ ))
-- \U1|Add0~106\ = CARRY(( \U1|count\(17) ) + ( VCC ) + ( \U1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_count\(17),
	cin => \U1|Add0~2\,
	sumout => \U1|Add0~105_sumout\,
	cout => \U1|Add0~106\);

-- Location: MLABCELL_X14_Y59_N9
\U1|count~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|count~12_combout\ = ( \U1|Equal0~5_combout\ & ( !\RATE_in~input_o\ ) ) # ( !\U1|Equal0~5_combout\ & ( \U1|Add0~105_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_RATE_in~input_o\,
	datad => \U1|ALT_INV_Add0~105_sumout\,
	dataf => \U1|ALT_INV_Equal0~5_combout\,
	combout => \U1|count~12_combout\);

-- Location: FF_X14_Y59_N11
\U1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|count~12_combout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(17));

-- Location: LABCELL_X15_Y59_N24
\U1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~101_sumout\ = SUM(( \U1|count\(18) ) + ( VCC ) + ( \U1|Add0~106\ ))
-- \U1|Add0~102\ = CARRY(( \U1|count\(18) ) + ( VCC ) + ( \U1|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_count\(18),
	cin => \U1|Add0~106\,
	sumout => \U1|Add0~101_sumout\,
	cout => \U1|Add0~102\);

-- Location: MLABCELL_X14_Y59_N54
\U1|count~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|count~11_combout\ = ( \U1|Equal0~5_combout\ & ( \RATE_in~input_o\ ) ) # ( !\U1|Equal0~5_combout\ & ( \U1|Add0~101_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_Add0~101_sumout\,
	datad => \ALT_INV_RATE_in~input_o\,
	dataf => \U1|ALT_INV_Equal0~5_combout\,
	combout => \U1|count~11_combout\);

-- Location: FF_X14_Y59_N56
\U1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|count~11_combout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(18));

-- Location: LABCELL_X15_Y59_N27
\U1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~97_sumout\ = SUM(( \U1|count\(19) ) + ( VCC ) + ( \U1|Add0~102\ ))
-- \U1|Add0~98\ = CARRY(( \U1|count\(19) ) + ( VCC ) + ( \U1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_count\(19),
	cin => \U1|Add0~102\,
	sumout => \U1|Add0~97_sumout\,
	cout => \U1|Add0~98\);

-- Location: MLABCELL_X14_Y59_N18
\U1|count~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|count~10_combout\ = ( \U1|Add0~97_sumout\ & ( \U1|Equal0~5_combout\ & ( !\RATE_in~input_o\ ) ) ) # ( !\U1|Add0~97_sumout\ & ( \U1|Equal0~5_combout\ & ( !\RATE_in~input_o\ ) ) ) # ( \U1|Add0~97_sumout\ & ( !\U1|Equal0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RATE_in~input_o\,
	datae => \U1|ALT_INV_Add0~97_sumout\,
	dataf => \U1|ALT_INV_Equal0~5_combout\,
	combout => \U1|count~10_combout\);

-- Location: FF_X14_Y59_N20
\U1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|count~10_combout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(19));

-- Location: LABCELL_X15_Y59_N30
\U1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~93_sumout\ = SUM(( \U1|count\(20) ) + ( VCC ) + ( \U1|Add0~98\ ))
-- \U1|Add0~94\ = CARRY(( \U1|count\(20) ) + ( VCC ) + ( \U1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_count\(20),
	cin => \U1|Add0~98\,
	sumout => \U1|Add0~93_sumout\,
	cout => \U1|Add0~94\);

-- Location: FF_X15_Y59_N32
\U1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|Add0~93_sumout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(20));

-- Location: LABCELL_X15_Y59_N33
\U1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~89_sumout\ = SUM(( \U1|count\(21) ) + ( VCC ) + ( \U1|Add0~94\ ))
-- \U1|Add0~90\ = CARRY(( \U1|count\(21) ) + ( VCC ) + ( \U1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_count\(21),
	cin => \U1|Add0~94\,
	sumout => \U1|Add0~89_sumout\,
	cout => \U1|Add0~90\);

-- Location: FF_X15_Y59_N35
\U1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|Add0~89_sumout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(21));

-- Location: MLABCELL_X14_Y59_N51
\U1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Equal0~4_combout\ = ( !\U1|count\(21) & ( (!\U1|count\(20) & (!\U1|count\(17) & (!\U1|count\(19) & !\U1|count\(18)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_count\(20),
	datab => \U1|ALT_INV_count\(17),
	datac => \U1|ALT_INV_count\(19),
	datad => \U1|ALT_INV_count\(18),
	dataf => \U1|ALT_INV_count\(21),
	combout => \U1|Equal0~4_combout\);

-- Location: LABCELL_X15_Y60_N15
\U1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (!\U1|count\(2) & (!\U1|count\(3) & !\U1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_count\(2),
	datac => \U1|ALT_INV_count\(3),
	datad => \U1|ALT_INV_count\(1),
	combout => \U1|Equal0~0_combout\);

-- Location: LABCELL_X15_Y59_N36
\U1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~85_sumout\ = SUM(( \U1|count\(22) ) + ( VCC ) + ( \U1|Add0~90\ ))
-- \U1|Add0~86\ = CARRY(( \U1|count\(22) ) + ( VCC ) + ( \U1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_count\(22),
	cin => \U1|Add0~90\,
	sumout => \U1|Add0~85_sumout\,
	cout => \U1|Add0~86\);

-- Location: FF_X15_Y59_N38
\U1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|Add0~85_sumout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(22));

-- Location: LABCELL_X15_Y59_N39
\U1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~81_sumout\ = SUM(( \U1|count\(23) ) + ( VCC ) + ( \U1|Add0~86\ ))
-- \U1|Add0~82\ = CARRY(( \U1|count\(23) ) + ( VCC ) + ( \U1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_count\(23),
	cin => \U1|Add0~86\,
	sumout => \U1|Add0~81_sumout\,
	cout => \U1|Add0~82\);

-- Location: FF_X15_Y59_N41
\U1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|Add0~81_sumout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(23));

-- Location: LABCELL_X15_Y59_N42
\U1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~77_sumout\ = SUM(( \U1|count\(24) ) + ( VCC ) + ( \U1|Add0~82\ ))
-- \U1|Add0~78\ = CARRY(( \U1|count\(24) ) + ( VCC ) + ( \U1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_count\(24),
	cin => \U1|Add0~82\,
	sumout => \U1|Add0~77_sumout\,
	cout => \U1|Add0~78\);

-- Location: LABCELL_X15_Y59_N57
\U1|count~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|count~9_combout\ = ( \U1|Add0~77_sumout\ & ( (!\U1|Equal0~5_combout\) # (\RATE_in~input_o\) ) ) # ( !\U1|Add0~77_sumout\ & ( (\U1|Equal0~5_combout\ & \RATE_in~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_RATE_in~input_o\,
	dataf => \U1|ALT_INV_Add0~77_sumout\,
	combout => \U1|count~9_combout\);

-- Location: FF_X15_Y59_N59
\U1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|count~9_combout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(24));

-- Location: LABCELL_X15_Y59_N45
\U1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~73_sumout\ = SUM(( \U1|count\(25) ) + ( VCC ) + ( \U1|Add0~78\ ))
-- \U1|Add0~74\ = CARRY(( \U1|count\(25) ) + ( VCC ) + ( \U1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_count\(25),
	cin => \U1|Add0~78\,
	sumout => \U1|Add0~73_sumout\,
	cout => \U1|Add0~74\);

-- Location: MLABCELL_X14_Y59_N57
\U1|count~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|count~8_combout\ = ( \U1|Add0~73_sumout\ & ( (!\U1|Equal0~5_combout\) # (!\RATE_in~input_o\) ) ) # ( !\U1|Add0~73_sumout\ & ( (\U1|Equal0~5_combout\ & !\RATE_in~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_RATE_in~input_o\,
	dataf => \U1|ALT_INV_Add0~73_sumout\,
	combout => \U1|count~8_combout\);

-- Location: FF_X14_Y59_N59
\U1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|count~8_combout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(25));

-- Location: LABCELL_X15_Y59_N48
\U1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~69_sumout\ = SUM(( \U1|count\(26) ) + ( VCC ) + ( \U1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_count\(26),
	cin => \U1|Add0~74\,
	sumout => \U1|Add0~69_sumout\);

-- Location: LABCELL_X15_Y59_N54
\U1|count~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|count~7_combout\ = ( \U1|Add0~69_sumout\ & ( (!\U1|Equal0~5_combout\) # (\RATE_in~input_o\) ) ) # ( !\U1|Add0~69_sumout\ & ( (\U1|Equal0~5_combout\ & \RATE_in~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_RATE_in~input_o\,
	dataf => \U1|ALT_INV_Add0~69_sumout\,
	combout => \U1|count~7_combout\);

-- Location: FF_X15_Y59_N56
\U1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|count~7_combout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(26));

-- Location: MLABCELL_X14_Y59_N36
\U1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Equal0~3_combout\ = ( !\U1|count\(22) & ( !\U1|count\(0) & ( (!\U1|count\(23) & (!\U1|count\(25) & (!\U1|count\(26) & !\U1|count\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_count\(23),
	datab => \U1|ALT_INV_count\(25),
	datac => \U1|ALT_INV_count\(26),
	datad => \U1|ALT_INV_count\(24),
	datae => \U1|ALT_INV_count\(22),
	dataf => \U1|ALT_INV_count\(0),
	combout => \U1|Equal0~3_combout\);

-- Location: MLABCELL_X14_Y59_N24
\U1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Equal0~2_combout\ = ( !\U1|count\(15) & ( !\U1|count\(12) & ( (!\U1|count\(11) & (!\U1|count\(10) & (!\U1|count\(13) & !\U1|count\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_count\(11),
	datab => \U1|ALT_INV_count\(10),
	datac => \U1|ALT_INV_count\(13),
	datad => \U1|ALT_INV_count\(14),
	datae => \U1|ALT_INV_count\(15),
	dataf => \U1|ALT_INV_count\(12),
	combout => \U1|Equal0~2_combout\);

-- Location: MLABCELL_X14_Y59_N30
\U1|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Equal0~5_combout\ = ( \U1|Equal0~3_combout\ & ( \U1|Equal0~2_combout\ & ( (\U1|Equal0~1_combout\ & (!\U1|count\(16) & (\U1|Equal0~4_combout\ & \U1|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_Equal0~1_combout\,
	datab => \U1|ALT_INV_count\(16),
	datac => \U1|ALT_INV_Equal0~4_combout\,
	datad => \U1|ALT_INV_Equal0~0_combout\,
	datae => \U1|ALT_INV_Equal0~3_combout\,
	dataf => \U1|ALT_INV_Equal0~2_combout\,
	combout => \U1|Equal0~5_combout\);

-- Location: FF_X14_Y59_N32
\U1|PULSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|Equal0~5_combout\,
	clrn => \ALT_INV_RST_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PULSE~q\);

-- Location: FF_X14_Y60_N38
\U2|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U2|shift_reg[0]~_wirecell_combout\,
	asdata => \U2|shift_reg\(2),
	clrn => \ALT_INV_RST_in~input_o\,
	sload => \U3|dir~q\,
	ena => \U1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|shift_reg\(1));

-- Location: MLABCELL_X14_Y60_N45
\U2|shift_reg[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|shift_reg[2]~feeder_combout\ = ( \U2|shift_reg\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_shift_reg\(1),
	combout => \U2|shift_reg[2]~feeder_combout\);

-- Location: FF_X14_Y60_N47
\U2|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U2|shift_reg[2]~feeder_combout\,
	asdata => \U2|shift_reg\(3),
	clrn => \ALT_INV_RST_in~input_o\,
	sload => \U3|dir~q\,
	ena => \U1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|shift_reg\(2));

-- Location: MLABCELL_X14_Y60_N48
\U2|shift_reg[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|shift_reg[3]~feeder_combout\ = \U2|shift_reg\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_shift_reg\(2),
	combout => \U2|shift_reg[3]~feeder_combout\);

-- Location: FF_X14_Y60_N50
\U2|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U2|shift_reg[3]~feeder_combout\,
	asdata => \U2|shift_reg\(4),
	clrn => \ALT_INV_RST_in~input_o\,
	sload => \U3|dir~q\,
	ena => \U1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|shift_reg\(3));

-- Location: MLABCELL_X14_Y59_N3
\U2|shift_reg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|shift_reg[4]~feeder_combout\ = \U2|shift_reg\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_shift_reg\(3),
	combout => \U2|shift_reg[4]~feeder_combout\);

-- Location: FF_X14_Y59_N5
\U2|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U2|shift_reg[4]~feeder_combout\,
	asdata => \U2|shift_reg\(5),
	clrn => \ALT_INV_RST_in~input_o\,
	sload => \U3|dir~q\,
	ena => \U1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|shift_reg\(4));

-- Location: MLABCELL_X14_Y59_N42
\U2|shift_reg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|shift_reg[5]~feeder_combout\ = \U2|shift_reg\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_shift_reg\(4),
	combout => \U2|shift_reg[5]~feeder_combout\);

-- Location: FF_X14_Y59_N44
\U2|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U2|shift_reg[5]~feeder_combout\,
	asdata => \U2|shift_reg\(6),
	clrn => \ALT_INV_RST_in~input_o\,
	sload => \U3|dir~q\,
	ena => \U1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|shift_reg\(5));

-- Location: MLABCELL_X14_Y59_N45
\U2|shift_reg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|shift_reg[6]~feeder_combout\ = ( \U2|shift_reg\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_shift_reg\(5),
	combout => \U2|shift_reg[6]~feeder_combout\);

-- Location: FF_X14_Y59_N47
\U2|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U2|shift_reg[6]~feeder_combout\,
	asdata => \U2|shift_reg\(7),
	clrn => \ALT_INV_RST_in~input_o\,
	sload => \U3|dir~q\,
	ena => \U1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|shift_reg\(6));

-- Location: MLABCELL_X14_Y59_N0
\U2|shift_reg[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|shift_reg[7]~feeder_combout\ = \U2|shift_reg\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_shift_reg\(6),
	combout => \U2|shift_reg[7]~feeder_combout\);

-- Location: FF_X14_Y59_N2
\U2|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U2|shift_reg[7]~feeder_combout\,
	asdata => \U2|shift_reg\(8),
	clrn => \ALT_INV_RST_in~input_o\,
	sload => \U3|dir~q\,
	ena => \U1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|shift_reg\(7));

-- Location: MLABCELL_X14_Y59_N48
\U2|shift_reg[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|shift_reg[8]~feeder_combout\ = \U2|shift_reg\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_shift_reg\(7),
	combout => \U2|shift_reg[8]~feeder_combout\);

-- Location: FF_X14_Y59_N50
\U2|shift_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U2|shift_reg[8]~feeder_combout\,
	asdata => \U2|shift_reg\(9),
	clrn => \ALT_INV_RST_in~input_o\,
	sload => \U3|dir~q\,
	ena => \U1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|shift_reg\(8));

-- Location: LABCELL_X15_Y60_N12
\U2|shift_reg[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|shift_reg[9]~feeder_combout\ = ( \U2|shift_reg\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_shift_reg\(8),
	combout => \U2|shift_reg[9]~feeder_combout\);

-- Location: FF_X15_Y60_N14
\U2|shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U2|shift_reg[9]~feeder_combout\,
	asdata => \U2|shift_reg\(10),
	clrn => \ALT_INV_RST_in~input_o\,
	sload => \U3|dir~q\,
	ena => \U1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|shift_reg\(9));

-- Location: LABCELL_X15_Y60_N18
\U2|shift_reg[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|shift_reg[10]~feeder_combout\ = ( \U2|shift_reg\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_shift_reg\(9),
	combout => \U2|shift_reg[10]~feeder_combout\);

-- Location: FF_X15_Y60_N20
\U2|shift_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U2|shift_reg[10]~feeder_combout\,
	asdata => \U2|shift_reg\(11),
	clrn => \ALT_INV_RST_in~input_o\,
	sload => \U3|dir~q\,
	ena => \U1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|shift_reg\(10));

-- Location: LABCELL_X15_Y60_N21
\U2|shift_reg[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|shift_reg[11]~feeder_combout\ = \U2|shift_reg\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_shift_reg\(10),
	combout => \U2|shift_reg[11]~feeder_combout\);

-- Location: FF_X15_Y60_N23
\U2|shift_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U2|shift_reg[11]~feeder_combout\,
	asdata => \U2|shift_reg\(12),
	clrn => \ALT_INV_RST_in~input_o\,
	sload => \U3|dir~q\,
	ena => \U1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|shift_reg\(11));

-- Location: MLABCELL_X14_Y60_N18
\U2|shift_reg[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|shift_reg[12]~feeder_combout\ = \U2|shift_reg\(11)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_shift_reg\(11),
	combout => \U2|shift_reg[12]~feeder_combout\);

-- Location: FF_X14_Y60_N20
\U2|shift_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U2|shift_reg[12]~feeder_combout\,
	asdata => \U2|shift_reg\(13),
	clrn => \ALT_INV_RST_in~input_o\,
	sload => \U3|dir~q\,
	ena => \U1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|shift_reg\(12));

-- Location: MLABCELL_X14_Y60_N24
\U2|shift_reg[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|shift_reg[13]~feeder_combout\ = ( \U2|shift_reg\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_shift_reg\(12),
	combout => \U2|shift_reg[13]~feeder_combout\);

-- Location: FF_X14_Y60_N26
\U2|shift_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U2|shift_reg[13]~feeder_combout\,
	asdata => \U2|shift_reg\(14),
	clrn => \ALT_INV_RST_in~input_o\,
	sload => \U3|dir~q\,
	ena => \U1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|shift_reg\(13));

-- Location: MLABCELL_X14_Y60_N30
\U2|shift_reg[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|shift_reg[14]~feeder_combout\ = ( \U2|shift_reg\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_shift_reg\(13),
	combout => \U2|shift_reg[14]~feeder_combout\);

-- Location: FF_X14_Y60_N32
\U2|shift_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U2|shift_reg[14]~feeder_combout\,
	asdata => \U2|shift_reg\(15),
	clrn => \ALT_INV_RST_in~input_o\,
	sload => \U3|dir~q\,
	ena => \U1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|shift_reg\(14));

-- Location: MLABCELL_X14_Y60_N39
\U2|shift_reg[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|shift_reg[15]~feeder_combout\ = ( \U2|shift_reg\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_shift_reg\(14),
	combout => \U2|shift_reg[15]~feeder_combout\);

-- Location: FF_X14_Y60_N41
\U2|shift_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U2|shift_reg[15]~feeder_combout\,
	asdata => \U2|shift_reg[0]~_wirecell_combout\,
	clrn => \ALT_INV_RST_in~input_o\,
	sload => \U3|dir~q\,
	ena => \U1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|shift_reg\(15));

-- Location: MLABCELL_X14_Y60_N15
\U2|shift_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|shift_reg~0_combout\ = ( !\U3|dir~q\ & ( \U2|shift_reg\(1) & ( !\U2|shift_reg\(15) ) ) ) # ( \U3|dir~q\ & ( !\U2|shift_reg\(1) ) ) # ( !\U3|dir~q\ & ( !\U2|shift_reg\(1) & ( !\U2|shift_reg\(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111111110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_shift_reg\(15),
	datae => \U3|ALT_INV_dir~q\,
	dataf => \U2|ALT_INV_shift_reg\(1),
	combout => \U2|shift_reg~0_combout\);

-- Location: FF_X14_Y60_N17
\U2|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U2|shift_reg~0_combout\,
	clrn => \ALT_INV_RST_in~input_o\,
	ena => \U1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|shift_reg\(0));

-- Location: MLABCELL_X55_Y53_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


