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

-- DATE "07/22/2024 16:31:46"

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

ENTITY 	STOPWATCH IS
    PORT (
	CLK : IN std_logic;
	RSTn : IN std_logic;
	SW_START_STOP : IN std_logic;
	SW_CLEAR : IN std_logic;
	SW_LAP : IN std_logic;
	HUND_ONES_7SEG : BUFFER std_logic_vector(6 DOWNTO 0);
	HUND_TENS_7SEG : BUFFER std_logic_vector(6 DOWNTO 0);
	SEC_ONES_7SEG : BUFFER std_logic_vector(6 DOWNTO 0);
	SEC_TENS_7SEG : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END STOPWATCH;

-- Design Ports Information
-- HUND_ONES_7SEG[0]	=>  Location: PIN_V19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HUND_ONES_7SEG[1]	=>  Location: PIN_V18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HUND_ONES_7SEG[2]	=>  Location: PIN_V17,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HUND_ONES_7SEG[3]	=>  Location: PIN_W18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HUND_ONES_7SEG[4]	=>  Location: PIN_Y20,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HUND_ONES_7SEG[5]	=>  Location: PIN_Y19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HUND_ONES_7SEG[6]	=>  Location: PIN_Y18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HUND_TENS_7SEG[0]	=>  Location: PIN_AA18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HUND_TENS_7SEG[1]	=>  Location: PIN_AD26,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HUND_TENS_7SEG[2]	=>  Location: PIN_AB19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HUND_TENS_7SEG[3]	=>  Location: PIN_AE26,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HUND_TENS_7SEG[4]	=>  Location: PIN_AE25,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HUND_TENS_7SEG[5]	=>  Location: PIN_AC19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HUND_TENS_7SEG[6]	=>  Location: PIN_AF24,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SEC_ONES_7SEG[0]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SEC_ONES_7SEG[1]	=>  Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SEC_ONES_7SEG[2]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SEC_ONES_7SEG[3]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SEC_ONES_7SEG[4]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SEC_ONES_7SEG[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SEC_ONES_7SEG[6]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SEC_TENS_7SEG[0]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SEC_TENS_7SEG[1]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SEC_TENS_7SEG[2]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SEC_TENS_7SEG[3]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SEC_TENS_7SEG[4]	=>  Location: PIN_AC24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SEC_TENS_7SEG[5]	=>  Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SEC_TENS_7SEG[6]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLK	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RSTn	=>  Location: PIN_P11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW_START_STOP	=>  Location: PIN_AE19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW_CLEAR	=>  Location: PIN_AC10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW_LAP	=>  Location: PIN_Y11,	 I/O Standard: 1.2 V,	 Current Strength: Default


ARCHITECTURE structure OF STOPWATCH IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RSTn : std_logic;
SIGNAL ww_SW_START_STOP : std_logic;
SIGNAL ww_SW_CLEAR : std_logic;
SIGNAL ww_SW_LAP : std_logic;
SIGNAL ww_HUND_ONES_7SEG : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HUND_TENS_7SEG : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEC_ONES_7SEG : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEC_TENS_7SEG : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW_START_STOP~input_o\ : std_logic;
SIGNAL \RSTn~input_o\ : std_logic;
SIGNAL \in1|SIG_OUT~0_combout\ : std_logic;
SIGNAL \in1|SIG_OUT~q\ : std_logic;
SIGNAL \SW_LAP~input_o\ : std_logic;
SIGNAL \in3|SIG_OUT~0_combout\ : std_logic;
SIGNAL \in3|SIG_OUT~q\ : std_logic;
SIGNAL \in1|SIG_OUT~DUPLICATE_q\ : std_logic;
SIGNAL \SW_CLEAR~input_o\ : std_logic;
SIGNAL \in2|SIG_OUT~0_combout\ : std_logic;
SIGNAL \in2|SIG_OUT~q\ : std_logic;
SIGNAL \mid1|JOKER.st_count~q\ : std_logic;
SIGNAL \mid1|JOKER~8_combout\ : std_logic;
SIGNAL \mid1|JOKER.st_lap~q\ : std_logic;
SIGNAL \in2|SIG_OUT~DUPLICATE_q\ : std_logic;
SIGNAL \mid1|Selector1~0_combout\ : std_logic;
SIGNAL \mid1|JOKER.st_count~DUPLICATE_q\ : std_logic;
SIGNAL \in3|SIG_OUT~DUPLICATE_q\ : std_logic;
SIGNAL \mid1|Selector3~1_combout\ : std_logic;
SIGNAL \mid1|JOKER.st_stop~q\ : std_logic;
SIGNAL \mid1|Selector2~0_combout\ : std_logic;
SIGNAL \mid1|JOKER.st_stop~DUPLICATE_q\ : std_logic;
SIGNAL \mid1|Selector0~0_combout\ : std_logic;
SIGNAL \mid1|JOKER.st_idle~q\ : std_logic;
SIGNAL \mid1|Selector3~0_combout\ : std_logic;
SIGNAL \mid1|Selector3~2_combout\ : std_logic;
SIGNAL \mid1|COUNT_CLEAR~q\ : std_logic;
SIGNAL \mid3|hund_cnt_ones~4_combout\ : std_logic;
SIGNAL \mid1|Selector4~0_combout\ : std_logic;
SIGNAL \mid1|COUNT_ENABLE~q\ : std_logic;
SIGNAL \mid2|count[7]~1_combout\ : std_logic;
SIGNAL \mid2|count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|Add0~37_sumout\ : std_logic;
SIGNAL \mid2|count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|Add0~38\ : std_logic;
SIGNAL \mid2|Add0~41_sumout\ : std_logic;
SIGNAL \mid2|count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|Add0~42\ : std_logic;
SIGNAL \mid2|Add0~33_sumout\ : std_logic;
SIGNAL \mid2|Add0~34\ : std_logic;
SIGNAL \mid2|Add0~45_sumout\ : std_logic;
SIGNAL \mid2|count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|Add0~46\ : std_logic;
SIGNAL \mid2|Add0~49_sumout\ : std_logic;
SIGNAL \mid2|count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|Add0~50\ : std_logic;
SIGNAL \mid2|Add0~25_sumout\ : std_logic;
SIGNAL \mid2|count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|Add0~26\ : std_logic;
SIGNAL \mid2|Add0~29_sumout\ : std_logic;
SIGNAL \mid2|LessThan0~1_combout\ : std_logic;
SIGNAL \mid2|Add0~30\ : std_logic;
SIGNAL \mid2|Add0~53_sumout\ : std_logic;
SIGNAL \mid2|Add0~54\ : std_logic;
SIGNAL \mid2|Add0~1_sumout\ : std_logic;
SIGNAL \mid2|count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|Add0~2\ : std_logic;
SIGNAL \mid2|Add0~9_sumout\ : std_logic;
SIGNAL \mid2|Add0~10\ : std_logic;
SIGNAL \mid2|Add0~13_sumout\ : std_logic;
SIGNAL \mid2|count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|Add0~14\ : std_logic;
SIGNAL \mid2|Add0~17_sumout\ : std_logic;
SIGNAL \mid2|count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|Add0~18\ : std_logic;
SIGNAL \mid2|Add0~22\ : std_logic;
SIGNAL \mid2|Add0~73_sumout\ : std_logic;
SIGNAL \mid2|Add0~74\ : std_logic;
SIGNAL \mid2|Add0~5_sumout\ : std_logic;
SIGNAL \mid2|Add0~6\ : std_logic;
SIGNAL \mid2|Add0~57_sumout\ : std_logic;
SIGNAL \mid2|count[15]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|Add0~58\ : std_logic;
SIGNAL \mid2|Add0~61_sumout\ : std_logic;
SIGNAL \mid2|Add0~62\ : std_logic;
SIGNAL \mid2|Add0~65_sumout\ : std_logic;
SIGNAL \mid2|count[16]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|Add0~66\ : std_logic;
SIGNAL \mid2|Add0~69_sumout\ : std_logic;
SIGNAL \mid2|count[18]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|PULSE~0_combout\ : std_logic;
SIGNAL \mid2|LessThan0~2_combout\ : std_logic;
SIGNAL \mid2|count[7]~0_combout\ : std_logic;
SIGNAL \mid2|Add0~21_sumout\ : std_logic;
SIGNAL \mid2|count[12]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|LessThan0~0_combout\ : std_logic;
SIGNAL \mid2|PULSE~1_combout\ : std_logic;
SIGNAL \mid2|PULSE~2_combout\ : std_logic;
SIGNAL \mid2|PULSE~q\ : std_logic;
SIGNAL \mid3|hund_cnt_ones[1]~1_combout\ : std_logic;
SIGNAL \mid3|hund_cnt_ones[0]~DUPLICATE_q\ : std_logic;
SIGNAL \mid3|hund_cnt_ones~0_combout\ : std_logic;
SIGNAL \mid3|hund_cnt_ones~3_combout\ : std_logic;
SIGNAL \mid3|hund_cnt_ones~2_combout\ : std_logic;
SIGNAL \mid1|Selector5~1_combout\ : std_logic;
SIGNAL \mid1|Selector5~0_combout\ : std_logic;
SIGNAL \mid1|Selector5~2_combout\ : std_logic;
SIGNAL \mid1|SWITCH_NOT~q\ : std_logic;
SIGNAL \first_out|D_OUT[0]~0_combout\ : std_logic;
SIGNAL \first_out|D_OUT[1]~1_combout\ : std_logic;
SIGNAL \first_out|D_OUT[2]~2_combout\ : std_logic;
SIGNAL \first_out|D_OUT[3]~3_combout\ : std_logic;
SIGNAL \first_out|D_OUT[4]~4_combout\ : std_logic;
SIGNAL \first_out|D_OUT[5]~5_combout\ : std_logic;
SIGNAL \first_out|D_OUT[6]~6_combout\ : std_logic;
SIGNAL \mid3|hund_cnt_tens[2]~1_combout\ : std_logic;
SIGNAL \mid3|hund_cnt_tens~4_combout\ : std_logic;
SIGNAL \mid3|hund_cnt_tens[0]~DUPLICATE_q\ : std_logic;
SIGNAL \mid3|hund_cnt_tens~0_combout\ : std_logic;
SIGNAL \mid3|hund_cnt_tens~3_combout\ : std_logic;
SIGNAL \mid3|hund_cnt_tens~2_combout\ : std_logic;
SIGNAL \mid3|hund_cnt_tens[2]~DUPLICATE_q\ : std_logic;
SIGNAL \mid3|hund_cnt_tens[3]~DUPLICATE_q\ : std_logic;
SIGNAL \sec_out|D_OUT[0]~0_combout\ : std_logic;
SIGNAL \sec_out|D_OUT[1]~1_combout\ : std_logic;
SIGNAL \sec_out|D_OUT[2]~2_combout\ : std_logic;
SIGNAL \sec_out|D_OUT[3]~3_combout\ : std_logic;
SIGNAL \sec_out|D_OUT[4]~4_combout\ : std_logic;
SIGNAL \sec_out|D_OUT[5]~5_combout\ : std_logic;
SIGNAL \sec_out|D_OUT[6]~6_combout\ : std_logic;
SIGNAL \mid3|sec_cnt_ones~4_combout\ : std_logic;
SIGNAL \mid3|Equal1~0_combout\ : std_logic;
SIGNAL \mid3|Equal0~0_combout\ : std_logic;
SIGNAL \mid3|sec_cnt_ones[0]~1_combout\ : std_logic;
SIGNAL \mid3|sec_cnt_ones~2_combout\ : std_logic;
SIGNAL \mid3|sec_cnt_ones~0_combout\ : std_logic;
SIGNAL \mid3|sec_cnt_ones~3_combout\ : std_logic;
SIGNAL \mid3|sec_cnt_ones[0]~DUPLICATE_q\ : std_logic;
SIGNAL \third_out|D_OUT[0]~0_combout\ : std_logic;
SIGNAL \third_out|D_OUT[1]~1_combout\ : std_logic;
SIGNAL \third_out|D_OUT[2]~2_combout\ : std_logic;
SIGNAL \third_out|D_OUT[3]~3_combout\ : std_logic;
SIGNAL \third_out|D_OUT[4]~4_combout\ : std_logic;
SIGNAL \third_out|D_OUT[5]~5_combout\ : std_logic;
SIGNAL \third_out|D_OUT[6]~6_combout\ : std_logic;
SIGNAL \mid3|sec_cnt_tens~2_combout\ : std_logic;
SIGNAL \mid3|Equal2~0_combout\ : std_logic;
SIGNAL \mid3|sec_cnt_tens[0]~1_combout\ : std_logic;
SIGNAL \mid3|sec_cnt_tens~3_combout\ : std_logic;
SIGNAL \mid3|sec_cnt_tens~0_combout\ : std_logic;
SIGNAL \mid3|sec_cnt_tens[1]~DUPLICATE_q\ : std_logic;
SIGNAL \mid3|sec_cnt_tens[0]~DUPLICATE_q\ : std_logic;
SIGNAL \fourth_out|D_OUT[0]~0_combout\ : std_logic;
SIGNAL \fourth_out|D_OUT[1]~1_combout\ : std_logic;
SIGNAL \fourth_out|D_OUT[2]~2_combout\ : std_logic;
SIGNAL \fourth_out|D_OUT[3]~3_combout\ : std_logic;
SIGNAL \fourth_out|D_OUT[4]~4_combout\ : std_logic;
SIGNAL \fourth_out|D_OUT[5]~5_combout\ : std_logic;
SIGNAL \fourth_out|D_OUT[6]~6_combout\ : std_logic;
SIGNAL \mid3|sec_cnt_tens\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \mid3|HUND_TENS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mid2|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \mid3|HUND_ONES\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mid3|SEC_ONES\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mid3|SEC_TENS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mid3|hund_cnt_ones\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mid3|hund_cnt_tens\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mid3|sec_cnt_ones\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \in1|sig_in_d\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \in2|sig_in_d\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \in3|sig_in_d\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \mid2|ALT_INV_PULSE~q\ : std_logic;
SIGNAL \mid1|ALT_INV_COUNT_CLEAR~q\ : std_logic;
SIGNAL \mid3|ALT_INV_sec_cnt_tens\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \mid3|ALT_INV_sec_cnt_ones\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mid3|ALT_INV_hund_cnt_tens\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mid3|ALT_INV_hund_cnt_ones\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mid1|ALT_INV_SWITCH_NOT~q\ : std_logic;
SIGNAL \fourth_out|ALT_INV_D_OUT[5]~5_combout\ : std_logic;
SIGNAL \mid3|ALT_INV_SEC_TENS\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \mid3|ALT_INV_SEC_ONES\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mid3|ALT_INV_HUND_TENS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mid3|ALT_INV_HUND_ONES\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mid2|ALT_INV_count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \in3|ALT_INV_SIG_OUT~DUPLICATE_q\ : std_logic;
SIGNAL \in2|ALT_INV_SIG_OUT~DUPLICATE_q\ : std_logic;
SIGNAL \mid1|ALT_INV_JOKER.st_stop~DUPLICATE_q\ : std_logic;
SIGNAL \mid1|ALT_INV_JOKER.st_count~DUPLICATE_q\ : std_logic;
SIGNAL \in1|ALT_INV_SIG_OUT~DUPLICATE_q\ : std_logic;
SIGNAL \mid3|ALT_INV_sec_cnt_ones[0]~DUPLICATE_q\ : std_logic;
SIGNAL \mid3|ALT_INV_hund_cnt_tens[0]~DUPLICATE_q\ : std_logic;
SIGNAL \mid3|ALT_INV_hund_cnt_ones[0]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|ALT_INV_count[18]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|ALT_INV_count[16]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|ALT_INV_count[15]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|ALT_INV_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|ALT_INV_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|ALT_INV_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|ALT_INV_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|ALT_INV_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|ALT_INV_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|ALT_INV_count[12]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|ALT_INV_count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|ALT_INV_count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \mid2|ALT_INV_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \in3|ALT_INV_sig_in_d\ : std_logic_vector(3 DOWNTO 2);
SIGNAL \in2|ALT_INV_sig_in_d\ : std_logic_vector(3 DOWNTO 2);
SIGNAL \in1|ALT_INV_sig_in_d\ : std_logic_vector(3 DOWNTO 2);
SIGNAL \mid2|ALT_INV_PULSE~1_combout\ : std_logic;
SIGNAL \mid1|ALT_INV_COUNT_ENABLE~q\ : std_logic;
SIGNAL \mid2|ALT_INV_PULSE~0_combout\ : std_logic;
SIGNAL \mid2|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \mid2|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \mid2|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \mid1|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \mid1|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \mid3|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \mid3|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \mid3|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \mid1|ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL \mid1|ALT_INV_JOKER.st_lap~q\ : std_logic;
SIGNAL \in3|ALT_INV_SIG_OUT~q\ : std_logic;
SIGNAL \in2|ALT_INV_SIG_OUT~q\ : std_logic;
SIGNAL \mid1|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \mid1|ALT_INV_JOKER.st_stop~q\ : std_logic;
SIGNAL \mid1|ALT_INV_JOKER.st_count~q\ : std_logic;
SIGNAL \mid1|ALT_INV_JOKER.st_idle~q\ : std_logic;
SIGNAL \in1|ALT_INV_SIG_OUT~q\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RSTn <= RSTn;
ww_SW_START_STOP <= SW_START_STOP;
ww_SW_CLEAR <= SW_CLEAR;
ww_SW_LAP <= SW_LAP;
HUND_ONES_7SEG <= ww_HUND_ONES_7SEG;
HUND_TENS_7SEG <= ww_HUND_TENS_7SEG;
SEC_ONES_7SEG <= ww_SEC_ONES_7SEG;
SEC_TENS_7SEG <= ww_SEC_TENS_7SEG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\mid2|ALT_INV_PULSE~q\ <= NOT \mid2|PULSE~q\;
\mid1|ALT_INV_COUNT_CLEAR~q\ <= NOT \mid1|COUNT_CLEAR~q\;
\mid3|ALT_INV_sec_cnt_tens\(0) <= NOT \mid3|sec_cnt_tens\(0);
\mid3|ALT_INV_sec_cnt_tens\(1) <= NOT \mid3|sec_cnt_tens\(1);
\mid3|ALT_INV_sec_cnt_ones\(0) <= NOT \mid3|sec_cnt_ones\(0);
\mid3|ALT_INV_sec_cnt_ones\(1) <= NOT \mid3|sec_cnt_ones\(1);
\mid3|ALT_INV_sec_cnt_ones\(2) <= NOT \mid3|sec_cnt_ones\(2);
\mid3|ALT_INV_sec_cnt_ones\(3) <= NOT \mid3|sec_cnt_ones\(3);
\mid3|ALT_INV_hund_cnt_tens\(0) <= NOT \mid3|hund_cnt_tens\(0);
\mid3|ALT_INV_hund_cnt_tens\(1) <= NOT \mid3|hund_cnt_tens\(1);
\mid3|ALT_INV_hund_cnt_tens\(2) <= NOT \mid3|hund_cnt_tens\(2);
\mid3|ALT_INV_hund_cnt_tens\(3) <= NOT \mid3|hund_cnt_tens\(3);
\mid3|ALT_INV_hund_cnt_ones\(0) <= NOT \mid3|hund_cnt_ones\(0);
\mid3|ALT_INV_hund_cnt_ones\(1) <= NOT \mid3|hund_cnt_ones\(1);
\mid3|ALT_INV_hund_cnt_ones\(2) <= NOT \mid3|hund_cnt_ones\(2);
\mid1|ALT_INV_SWITCH_NOT~q\ <= NOT \mid1|SWITCH_NOT~q\;
\mid3|ALT_INV_hund_cnt_ones\(3) <= NOT \mid3|hund_cnt_ones\(3);
\fourth_out|ALT_INV_D_OUT[5]~5_combout\ <= NOT \fourth_out|D_OUT[5]~5_combout\;
\mid3|ALT_INV_SEC_TENS\(2) <= NOT \mid3|SEC_TENS\(2);
\mid3|ALT_INV_SEC_TENS\(0) <= NOT \mid3|SEC_TENS\(0);
\mid3|ALT_INV_SEC_TENS\(1) <= NOT \mid3|SEC_TENS\(1);
\mid3|ALT_INV_SEC_ONES\(0) <= NOT \mid3|SEC_ONES\(0);
\mid3|ALT_INV_SEC_ONES\(1) <= NOT \mid3|SEC_ONES\(1);
\mid3|ALT_INV_SEC_ONES\(2) <= NOT \mid3|SEC_ONES\(2);
\mid3|ALT_INV_SEC_ONES\(3) <= NOT \mid3|SEC_ONES\(3);
\mid3|ALT_INV_HUND_TENS\(0) <= NOT \mid3|HUND_TENS\(0);
\mid3|ALT_INV_HUND_TENS\(1) <= NOT \mid3|HUND_TENS\(1);
\mid3|ALT_INV_HUND_TENS\(2) <= NOT \mid3|HUND_TENS\(2);
\mid3|ALT_INV_HUND_TENS\(3) <= NOT \mid3|HUND_TENS\(3);
\mid3|ALT_INV_HUND_ONES\(0) <= NOT \mid3|HUND_ONES\(0);
\mid3|ALT_INV_HUND_ONES\(1) <= NOT \mid3|HUND_ONES\(1);
\mid3|ALT_INV_HUND_ONES\(2) <= NOT \mid3|HUND_ONES\(2);
\mid3|ALT_INV_HUND_ONES\(3) <= NOT \mid3|HUND_ONES\(3);
\mid2|ALT_INV_count\(13) <= NOT \mid2|count\(13);
\mid2|ALT_INV_count\(18) <= NOT \mid2|count\(18);
\mid2|ALT_INV_count\(17) <= NOT \mid2|count\(17);
\mid2|ALT_INV_count\(16) <= NOT \mid2|count\(16);
\mid2|ALT_INV_count\(15) <= NOT \mid2|count\(15);
\mid2|ALT_INV_count\(7) <= NOT \mid2|count\(7);
\mid2|ALT_INV_count\(4) <= NOT \mid2|count\(4);
\mid2|ALT_INV_count\(3) <= NOT \mid2|count\(3);
\mid2|ALT_INV_count\(1) <= NOT \mid2|count\(1);
\mid2|ALT_INV_count\(0) <= NOT \mid2|count\(0);
\mid2|ALT_INV_count\(2) <= NOT \mid2|count\(2);
\mid2|ALT_INV_count\(6) <= NOT \mid2|count\(6);
\mid2|ALT_INV_count\(5) <= NOT \mid2|count\(5);
\mid2|ALT_INV_count\(12) <= NOT \mid2|count\(12);
\mid2|ALT_INV_count\(11) <= NOT \mid2|count\(11);
\mid2|ALT_INV_count\(10) <= NOT \mid2|count\(10);
\mid2|ALT_INV_count\(9) <= NOT \mid2|count\(9);
\mid2|ALT_INV_count\(14) <= NOT \mid2|count\(14);
\mid2|ALT_INV_count\(8) <= NOT \mid2|count\(8);
\mid3|ALT_INV_sec_cnt_tens\(2) <= NOT \mid3|sec_cnt_tens\(2);
\in3|ALT_INV_SIG_OUT~DUPLICATE_q\ <= NOT \in3|SIG_OUT~DUPLICATE_q\;
\in2|ALT_INV_SIG_OUT~DUPLICATE_q\ <= NOT \in2|SIG_OUT~DUPLICATE_q\;
\mid1|ALT_INV_JOKER.st_stop~DUPLICATE_q\ <= NOT \mid1|JOKER.st_stop~DUPLICATE_q\;
\mid1|ALT_INV_JOKER.st_count~DUPLICATE_q\ <= NOT \mid1|JOKER.st_count~DUPLICATE_q\;
\in1|ALT_INV_SIG_OUT~DUPLICATE_q\ <= NOT \in1|SIG_OUT~DUPLICATE_q\;
\mid3|ALT_INV_sec_cnt_ones[0]~DUPLICATE_q\ <= NOT \mid3|sec_cnt_ones[0]~DUPLICATE_q\;
\mid3|ALT_INV_hund_cnt_tens[0]~DUPLICATE_q\ <= NOT \mid3|hund_cnt_tens[0]~DUPLICATE_q\;
\mid3|ALT_INV_hund_cnt_ones[0]~DUPLICATE_q\ <= NOT \mid3|hund_cnt_ones[0]~DUPLICATE_q\;
\mid2|ALT_INV_count[18]~DUPLICATE_q\ <= NOT \mid2|count[18]~DUPLICATE_q\;
\mid2|ALT_INV_count[16]~DUPLICATE_q\ <= NOT \mid2|count[16]~DUPLICATE_q\;
\mid2|ALT_INV_count[15]~DUPLICATE_q\ <= NOT \mid2|count[15]~DUPLICATE_q\;
\mid2|ALT_INV_count[4]~DUPLICATE_q\ <= NOT \mid2|count[4]~DUPLICATE_q\;
\mid2|ALT_INV_count[3]~DUPLICATE_q\ <= NOT \mid2|count[3]~DUPLICATE_q\;
\mid2|ALT_INV_count[1]~DUPLICATE_q\ <= NOT \mid2|count[1]~DUPLICATE_q\;
\mid2|ALT_INV_count[0]~DUPLICATE_q\ <= NOT \mid2|count[0]~DUPLICATE_q\;
\mid2|ALT_INV_count[6]~DUPLICATE_q\ <= NOT \mid2|count[6]~DUPLICATE_q\;
\mid2|ALT_INV_count[5]~DUPLICATE_q\ <= NOT \mid2|count[5]~DUPLICATE_q\;
\mid2|ALT_INV_count[12]~DUPLICATE_q\ <= NOT \mid2|count[12]~DUPLICATE_q\;
\mid2|ALT_INV_count[11]~DUPLICATE_q\ <= NOT \mid2|count[11]~DUPLICATE_q\;
\mid2|ALT_INV_count[10]~DUPLICATE_q\ <= NOT \mid2|count[10]~DUPLICATE_q\;
\mid2|ALT_INV_count[8]~DUPLICATE_q\ <= NOT \mid2|count[8]~DUPLICATE_q\;
\in3|ALT_INV_sig_in_d\(2) <= NOT \in3|sig_in_d\(2);
\in3|ALT_INV_sig_in_d\(3) <= NOT \in3|sig_in_d\(3);
\in2|ALT_INV_sig_in_d\(2) <= NOT \in2|sig_in_d\(2);
\in2|ALT_INV_sig_in_d\(3) <= NOT \in2|sig_in_d\(3);
\in1|ALT_INV_sig_in_d\(2) <= NOT \in1|sig_in_d\(2);
\in1|ALT_INV_sig_in_d\(3) <= NOT \in1|sig_in_d\(3);
\mid2|ALT_INV_PULSE~1_combout\ <= NOT \mid2|PULSE~1_combout\;
\mid1|ALT_INV_COUNT_ENABLE~q\ <= NOT \mid1|COUNT_ENABLE~q\;
\mid2|ALT_INV_PULSE~0_combout\ <= NOT \mid2|PULSE~0_combout\;
\mid2|ALT_INV_LessThan0~2_combout\ <= NOT \mid2|LessThan0~2_combout\;
\mid2|ALT_INV_LessThan0~1_combout\ <= NOT \mid2|LessThan0~1_combout\;
\mid2|ALT_INV_LessThan0~0_combout\ <= NOT \mid2|LessThan0~0_combout\;
\mid1|ALT_INV_Selector3~1_combout\ <= NOT \mid1|Selector3~1_combout\;
\mid1|ALT_INV_Selector3~0_combout\ <= NOT \mid1|Selector3~0_combout\;
\mid3|ALT_INV_Equal2~0_combout\ <= NOT \mid3|Equal2~0_combout\;
\mid3|ALT_INV_Equal1~0_combout\ <= NOT \mid3|Equal1~0_combout\;
\mid3|ALT_INV_Equal0~0_combout\ <= NOT \mid3|Equal0~0_combout\;
\mid1|ALT_INV_Selector5~1_combout\ <= NOT \mid1|Selector5~1_combout\;
\mid1|ALT_INV_JOKER.st_lap~q\ <= NOT \mid1|JOKER.st_lap~q\;
\in3|ALT_INV_SIG_OUT~q\ <= NOT \in3|SIG_OUT~q\;
\in2|ALT_INV_SIG_OUT~q\ <= NOT \in2|SIG_OUT~q\;
\mid1|ALT_INV_Selector5~0_combout\ <= NOT \mid1|Selector5~0_combout\;
\mid1|ALT_INV_JOKER.st_stop~q\ <= NOT \mid1|JOKER.st_stop~q\;
\mid1|ALT_INV_JOKER.st_count~q\ <= NOT \mid1|JOKER.st_count~q\;
\mid1|ALT_INV_JOKER.st_idle~q\ <= NOT \mid1|JOKER.st_idle~q\;
\in1|ALT_INV_SIG_OUT~q\ <= NOT \in1|SIG_OUT~q\;

-- Location: IOOBUF_X66_Y0_N2
\HUND_ONES_7SEG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \first_out|D_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HUND_ONES_7SEG(0));

-- Location: IOOBUF_X64_Y0_N2
\HUND_ONES_7SEG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \first_out|D_OUT[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HUND_ONES_7SEG(1));

-- Location: IOOBUF_X64_Y0_N19
\HUND_ONES_7SEG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \first_out|D_OUT[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HUND_ONES_7SEG(2));

-- Location: IOOBUF_X66_Y0_N19
\HUND_ONES_7SEG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \first_out|D_OUT[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HUND_ONES_7SEG(3));

-- Location: IOOBUF_X65_Y0_N2
\HUND_ONES_7SEG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \first_out|D_OUT[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HUND_ONES_7SEG(4));

-- Location: IOOBUF_X65_Y0_N19
\HUND_ONES_7SEG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \first_out|D_OUT[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HUND_ONES_7SEG(5));

-- Location: IOOBUF_X62_Y0_N42
\HUND_ONES_7SEG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \first_out|D_OUT[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HUND_ONES_7SEG(6));

-- Location: IOOBUF_X62_Y0_N59
\HUND_TENS_7SEG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sec_out|D_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HUND_TENS_7SEG(0));

-- Location: IOOBUF_X64_Y0_N36
\HUND_TENS_7SEG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sec_out|D_OUT[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HUND_TENS_7SEG(1));

-- Location: IOOBUF_X65_Y0_N36
\HUND_TENS_7SEG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sec_out|D_OUT[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HUND_TENS_7SEG(2));

-- Location: IOOBUF_X64_Y0_N53
\HUND_TENS_7SEG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sec_out|D_OUT[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HUND_TENS_7SEG(3));

-- Location: IOOBUF_X62_Y0_N76
\HUND_TENS_7SEG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sec_out|D_OUT[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HUND_TENS_7SEG(4));

-- Location: IOOBUF_X65_Y0_N53
\HUND_TENS_7SEG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sec_out|D_OUT[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HUND_TENS_7SEG(5));

-- Location: IOOBUF_X62_Y0_N93
\HUND_TENS_7SEG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sec_out|D_OUT[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HUND_TENS_7SEG(6));

-- Location: IOOBUF_X7_Y0_N36
\SEC_ONES_7SEG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \third_out|D_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_SEC_ONES_7SEG(0));

-- Location: IOOBUF_X7_Y0_N53
\SEC_ONES_7SEG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \third_out|D_OUT[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_SEC_ONES_7SEG(1));

-- Location: IOOBUF_X68_Y13_N22
\SEC_ONES_7SEG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \third_out|D_OUT[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_SEC_ONES_7SEG(2));

-- Location: IOOBUF_X68_Y12_N5
\SEC_ONES_7SEG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \third_out|D_OUT[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_SEC_ONES_7SEG(3));

-- Location: IOOBUF_X68_Y10_N62
\SEC_ONES_7SEG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \third_out|D_OUT[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_SEC_ONES_7SEG(4));

-- Location: IOOBUF_X68_Y11_N22
\SEC_ONES_7SEG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \third_out|D_OUT[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_SEC_ONES_7SEG(5));

-- Location: IOOBUF_X68_Y11_N5
\SEC_ONES_7SEG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \third_out|D_OUT[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_SEC_ONES_7SEG(6));

-- Location: IOOBUF_X68_Y13_N56
\SEC_TENS_7SEG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fourth_out|D_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_SEC_TENS_7SEG(0));

-- Location: IOOBUF_X68_Y13_N39
\SEC_TENS_7SEG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fourth_out|D_OUT[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_SEC_TENS_7SEG(1));

-- Location: IOOBUF_X68_Y11_N56
\SEC_TENS_7SEG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fourth_out|D_OUT[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_SEC_TENS_7SEG(2));

-- Location: IOOBUF_X68_Y11_N39
\SEC_TENS_7SEG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fourth_out|D_OUT[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_SEC_TENS_7SEG(3));

-- Location: IOOBUF_X68_Y12_N39
\SEC_TENS_7SEG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fourth_out|D_OUT[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_SEC_TENS_7SEG(4));

-- Location: IOOBUF_X68_Y10_N96
\SEC_TENS_7SEG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fourth_out|ALT_INV_D_OUT[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_SEC_TENS_7SEG(5));

-- Location: IOOBUF_X68_Y10_N79
\SEC_TENS_7SEG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fourth_out|D_OUT[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_SEC_TENS_7SEG(6));

-- Location: IOIBUF_X68_Y22_N44
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G10
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X50_Y0_N35
\SW_START_STOP~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_START_STOP,
	o => \SW_START_STOP~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\RSTn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RSTn,
	o => \RSTn~input_o\);

-- Location: FF_X58_Y4_N55
\in1|sig_in_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \SW_START_STOP~input_o\,
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in1|sig_in_d\(1));

-- Location: FF_X58_Y4_N38
\in1|sig_in_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \in1|sig_in_d\(1),
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in1|sig_in_d\(2));

-- Location: FF_X58_Y4_N22
\in1|sig_in_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \in1|sig_in_d\(2),
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in1|sig_in_d\(3));

-- Location: LABCELL_X58_Y4_N3
\in1|SIG_OUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \in1|SIG_OUT~0_combout\ = ( !\in1|sig_in_d\(3) & ( \in1|sig_in_d\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \in1|ALT_INV_sig_in_d\(2),
	dataf => \in1|ALT_INV_sig_in_d\(3),
	combout => \in1|SIG_OUT~0_combout\);

-- Location: FF_X58_Y4_N5
\in1|SIG_OUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \in1|SIG_OUT~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in1|SIG_OUT~q\);

-- Location: IOIBUF_X10_Y0_N58
\SW_LAP~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_LAP,
	o => \SW_LAP~input_o\);

-- Location: FF_X58_Y4_N25
\in3|sig_in_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \SW_LAP~input_o\,
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in3|sig_in_d\(1));

-- Location: FF_X58_Y4_N11
\in3|sig_in_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \in3|sig_in_d\(1),
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in3|sig_in_d\(2));

-- Location: FF_X58_Y4_N46
\in3|sig_in_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \in3|sig_in_d\(2),
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in3|sig_in_d\(3));

-- Location: LABCELL_X58_Y4_N33
\in3|SIG_OUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \in3|SIG_OUT~0_combout\ = ( !\in3|sig_in_d\(3) & ( \in3|sig_in_d\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \in3|ALT_INV_sig_in_d\(2),
	dataf => \in3|ALT_INV_sig_in_d\(3),
	combout => \in3|SIG_OUT~0_combout\);

-- Location: FF_X58_Y4_N35
\in3|SIG_OUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \in3|SIG_OUT~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in3|SIG_OUT~q\);

-- Location: FF_X58_Y4_N4
\in1|SIG_OUT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \in1|SIG_OUT~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in1|SIG_OUT~DUPLICATE_q\);

-- Location: IOIBUF_X12_Y0_N52
\SW_CLEAR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_CLEAR,
	o => \SW_CLEAR~input_o\);

-- Location: FF_X58_Y4_N7
\in2|sig_in_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \SW_CLEAR~input_o\,
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in2|sig_in_d\(1));

-- Location: FF_X58_Y4_N59
\in2|sig_in_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \in2|sig_in_d\(1),
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in2|sig_in_d\(2));

-- Location: FF_X58_Y4_N13
\in2|sig_in_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \in2|sig_in_d\(2),
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in2|sig_in_d\(3));

-- Location: LABCELL_X58_Y4_N30
\in2|SIG_OUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \in2|SIG_OUT~0_combout\ = ( !\in2|sig_in_d\(3) & ( \in2|sig_in_d\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \in2|ALT_INV_sig_in_d\(2),
	dataf => \in2|ALT_INV_sig_in_d\(3),
	combout => \in2|SIG_OUT~0_combout\);

-- Location: FF_X58_Y4_N32
\in2|SIG_OUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \in2|SIG_OUT~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in2|SIG_OUT~q\);

-- Location: FF_X58_Y4_N49
\mid1|JOKER.st_count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid1|Selector1~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid1|JOKER.st_count~q\);

-- Location: LABCELL_X58_Y4_N51
\mid1|JOKER~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid1|JOKER~8_combout\ = ( \in3|SIG_OUT~q\ & ( (!\in1|SIG_OUT~DUPLICATE_q\ & (!\in2|SIG_OUT~q\ & \mid1|JOKER.st_count~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \in1|ALT_INV_SIG_OUT~DUPLICATE_q\,
	datac => \in2|ALT_INV_SIG_OUT~q\,
	datad => \mid1|ALT_INV_JOKER.st_count~q\,
	dataf => \in3|ALT_INV_SIG_OUT~q\,
	combout => \mid1|JOKER~8_combout\);

-- Location: FF_X58_Y4_N53
\mid1|JOKER.st_lap\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid1|JOKER~8_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid1|JOKER.st_lap~q\);

-- Location: FF_X58_Y4_N31
\in2|SIG_OUT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \in2|SIG_OUT~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in2|SIG_OUT~DUPLICATE_q\);

-- Location: LABCELL_X58_Y4_N48
\mid1|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid1|Selector1~0_combout\ = ( \in2|SIG_OUT~DUPLICATE_q\ & ( (\in1|SIG_OUT~DUPLICATE_q\ & (!\mid1|JOKER.st_lap~q\ & !\mid1|JOKER.st_count~q\)) ) ) # ( !\in2|SIG_OUT~DUPLICATE_q\ & ( ((!\in1|SIG_OUT~DUPLICATE_q\ & (!\in3|SIG_OUT~q\ & 
-- \mid1|JOKER.st_count~q\)) # (\in1|SIG_OUT~DUPLICATE_q\ & ((!\mid1|JOKER.st_count~q\)))) # (\mid1|JOKER.st_lap~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111110001111001111111000111100110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \in3|ALT_INV_SIG_OUT~q\,
	datab => \in1|ALT_INV_SIG_OUT~DUPLICATE_q\,
	datac => \mid1|ALT_INV_JOKER.st_lap~q\,
	datad => \mid1|ALT_INV_JOKER.st_count~q\,
	dataf => \in2|ALT_INV_SIG_OUT~DUPLICATE_q\,
	combout => \mid1|Selector1~0_combout\);

-- Location: FF_X58_Y4_N50
\mid1|JOKER.st_count~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid1|Selector1~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid1|JOKER.st_count~DUPLICATE_q\);

-- Location: FF_X58_Y4_N34
\in3|SIG_OUT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \in3|SIG_OUT~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in3|SIG_OUT~DUPLICATE_q\);

-- Location: LABCELL_X58_Y4_N15
\mid1|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid1|Selector3~1_combout\ = (\mid1|JOKER.st_count~DUPLICATE_q\ & (!\mid1|COUNT_CLEAR~q\ & ((\in3|SIG_OUT~DUPLICATE_q\) # (\in1|SIG_OUT~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100000001000100010000000100010001000000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid1|ALT_INV_JOKER.st_count~DUPLICATE_q\,
	datab => \mid1|ALT_INV_COUNT_CLEAR~q\,
	datac => \in1|ALT_INV_SIG_OUT~DUPLICATE_q\,
	datad => \in3|ALT_INV_SIG_OUT~DUPLICATE_q\,
	combout => \mid1|Selector3~1_combout\);

-- Location: FF_X58_Y4_N29
\mid1|JOKER.st_stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid1|Selector2~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid1|JOKER.st_stop~q\);

-- Location: LABCELL_X58_Y4_N27
\mid1|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid1|Selector2~0_combout\ = ( \in2|SIG_OUT~q\ & ( (\mid1|JOKER.st_count~DUPLICATE_q\ & \in1|SIG_OUT~DUPLICATE_q\) ) ) # ( !\in2|SIG_OUT~q\ & ( (!\in1|SIG_OUT~DUPLICATE_q\ & ((\mid1|JOKER.st_stop~q\))) # (\in1|SIG_OUT~DUPLICATE_q\ & 
-- (\mid1|JOKER.st_count~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid1|ALT_INV_JOKER.st_count~DUPLICATE_q\,
	datac => \in1|ALT_INV_SIG_OUT~DUPLICATE_q\,
	datad => \mid1|ALT_INV_JOKER.st_stop~q\,
	dataf => \in2|ALT_INV_SIG_OUT~q\,
	combout => \mid1|Selector2~0_combout\);

-- Location: FF_X58_Y4_N28
\mid1|JOKER.st_stop~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid1|Selector2~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid1|JOKER.st_stop~DUPLICATE_q\);

-- Location: LABCELL_X58_Y4_N42
\mid1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid1|Selector0~0_combout\ = ( \mid1|JOKER.st_idle~q\ & ( \mid1|JOKER.st_stop~DUPLICATE_q\ & ( (!\in2|SIG_OUT~q\) # ((\in1|SIG_OUT~q\ & !\mid1|JOKER.st_lap~q\)) ) ) ) # ( !\mid1|JOKER.st_idle~q\ & ( \mid1|JOKER.st_stop~DUPLICATE_q\ & ( (\in1|SIG_OUT~q\ & 
-- ((!\in2|SIG_OUT~q\) # (!\mid1|JOKER.st_lap~q\))) ) ) ) # ( \mid1|JOKER.st_idle~q\ & ( !\mid1|JOKER.st_stop~DUPLICATE_q\ & ( (!\in2|SIG_OUT~q\) # ((!\mid1|JOKER.st_lap~q\ & ((!\mid1|JOKER.st_count~DUPLICATE_q\) # (\in1|SIG_OUT~q\)))) ) ) ) # ( 
-- !\mid1|JOKER.st_idle~q\ & ( !\mid1|JOKER.st_stop~DUPLICATE_q\ & ( (\in1|SIG_OUT~q\ & ((!\in2|SIG_OUT~q\) # (!\mid1|JOKER.st_lap~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000100111111011100110001010101010001001101110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \in1|ALT_INV_SIG_OUT~q\,
	datab => \in2|ALT_INV_SIG_OUT~q\,
	datac => \mid1|ALT_INV_JOKER.st_count~DUPLICATE_q\,
	datad => \mid1|ALT_INV_JOKER.st_lap~q\,
	datae => \mid1|ALT_INV_JOKER.st_idle~q\,
	dataf => \mid1|ALT_INV_JOKER.st_stop~DUPLICATE_q\,
	combout => \mid1|Selector0~0_combout\);

-- Location: FF_X58_Y4_N44
\mid1|JOKER.st_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid1|Selector0~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid1|JOKER.st_idle~q\);

-- Location: LABCELL_X58_Y4_N12
\mid1|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid1|Selector3~0_combout\ = ( \in2|SIG_OUT~q\ & ( (!\mid1|JOKER.st_count~DUPLICATE_q\ & (\mid1|JOKER.st_idle~q\ & !\mid1|JOKER.st_stop~q\)) ) ) # ( !\in2|SIG_OUT~q\ & ( (\mid1|JOKER.st_idle~q\ & ((!\mid1|JOKER.st_stop~q\) # (\mid1|COUNT_CLEAR~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000011000011110000001100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid1|ALT_INV_JOKER.st_count~DUPLICATE_q\,
	datab => \mid1|ALT_INV_COUNT_CLEAR~q\,
	datac => \mid1|ALT_INV_JOKER.st_idle~q\,
	datad => \mid1|ALT_INV_JOKER.st_stop~q\,
	dataf => \in2|ALT_INV_SIG_OUT~q\,
	combout => \mid1|Selector3~0_combout\);

-- Location: LABCELL_X58_Y4_N39
\mid1|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid1|Selector3~2_combout\ = ( \mid1|Selector3~0_combout\ & ( (!\mid1|Selector3~1_combout\ & ((!\in2|SIG_OUT~q\) # (!\mid1|JOKER.st_lap~q\))) ) ) # ( !\mid1|Selector3~0_combout\ & ( (\in1|SIG_OUT~q\ & (!\mid1|Selector3~1_combout\ & ((!\in2|SIG_OUT~q\) # 
-- (!\mid1|JOKER.st_lap~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000000010001000100000011001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \in1|ALT_INV_SIG_OUT~q\,
	datab => \mid1|ALT_INV_Selector3~1_combout\,
	datac => \in2|ALT_INV_SIG_OUT~q\,
	datad => \mid1|ALT_INV_JOKER.st_lap~q\,
	dataf => \mid1|ALT_INV_Selector3~0_combout\,
	combout => \mid1|Selector3~2_combout\);

-- Location: FF_X58_Y4_N41
\mid1|COUNT_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid1|Selector3~2_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid1|COUNT_CLEAR~q\);

-- Location: MLABCELL_X60_Y4_N21
\mid3|hund_cnt_ones~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|hund_cnt_ones~4_combout\ = (\mid1|COUNT_CLEAR~q\ & !\mid3|hund_cnt_ones\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid1|ALT_INV_COUNT_CLEAR~q\,
	datad => \mid3|ALT_INV_hund_cnt_ones\(0),
	combout => \mid3|hund_cnt_ones~4_combout\);

-- Location: LABCELL_X58_Y4_N18
\mid1|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid1|Selector4~0_combout\ = ( \mid1|COUNT_ENABLE~q\ & ( \in2|SIG_OUT~q\ & ( (!\mid1|JOKER.st_count~DUPLICATE_q\ & (!\mid1|JOKER.st_lap~q\ & \in1|SIG_OUT~DUPLICATE_q\)) ) ) ) # ( !\mid1|COUNT_ENABLE~q\ & ( \in2|SIG_OUT~q\ & ( 
-- (!\mid1|JOKER.st_count~DUPLICATE_q\ & (!\mid1|JOKER.st_lap~q\ & \in1|SIG_OUT~DUPLICATE_q\)) ) ) ) # ( \mid1|COUNT_ENABLE~q\ & ( !\in2|SIG_OUT~q\ & ( (!\mid1|JOKER.st_count~DUPLICATE_q\ $ (!\in1|SIG_OUT~DUPLICATE_q\)) # (\mid1|JOKER.st_lap~q\) ) ) ) # ( 
-- !\mid1|COUNT_ENABLE~q\ & ( !\in2|SIG_OUT~q\ & ( ((!\mid1|JOKER.st_count~DUPLICATE_q\ & ((\in1|SIG_OUT~DUPLICATE_q\))) # (\mid1|JOKER.st_count~DUPLICATE_q\ & (!\in3|SIG_OUT~q\ & !\in1|SIG_OUT~DUPLICATE_q\))) # (\mid1|JOKER.st_lap~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001110111011011101111011101100000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid1|ALT_INV_JOKER.st_count~DUPLICATE_q\,
	datab => \mid1|ALT_INV_JOKER.st_lap~q\,
	datac => \in3|ALT_INV_SIG_OUT~q\,
	datad => \in1|ALT_INV_SIG_OUT~DUPLICATE_q\,
	datae => \mid1|ALT_INV_COUNT_ENABLE~q\,
	dataf => \in2|ALT_INV_SIG_OUT~q\,
	combout => \mid1|Selector4~0_combout\);

-- Location: FF_X58_Y4_N20
\mid1|COUNT_ENABLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid1|Selector4~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid1|COUNT_ENABLE~q\);

-- Location: LABCELL_X58_Y4_N57
\mid2|count[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|count[7]~1_combout\ = (!\mid1|COUNT_CLEAR~q\) # (\mid1|COUNT_ENABLE~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid1|ALT_INV_COUNT_ENABLE~q\,
	datab => \mid1|ALT_INV_COUNT_CLEAR~q\,
	combout => \mid2|count[7]~1_combout\);

-- Location: FF_X55_Y4_N20
\mid2|count[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~29_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count[6]~DUPLICATE_q\);

-- Location: MLABCELL_X55_Y4_N0
\mid2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|Add0~37_sumout\ = SUM(( \mid2|count[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \mid2|Add0~38\ = CARRY(( \mid2|count[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mid2|ALT_INV_count[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \mid2|Add0~37_sumout\,
	cout => \mid2|Add0~38\);

-- Location: FF_X55_Y4_N2
\mid2|count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~37_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count[0]~DUPLICATE_q\);

-- Location: MLABCELL_X55_Y4_N3
\mid2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|Add0~41_sumout\ = SUM(( \mid2|count[1]~DUPLICATE_q\ ) + ( GND ) + ( \mid2|Add0~38\ ))
-- \mid2|Add0~42\ = CARRY(( \mid2|count[1]~DUPLICATE_q\ ) + ( GND ) + ( \mid2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid2|ALT_INV_count[1]~DUPLICATE_q\,
	cin => \mid2|Add0~38\,
	sumout => \mid2|Add0~41_sumout\,
	cout => \mid2|Add0~42\);

-- Location: FF_X55_Y4_N5
\mid2|count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~41_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count[1]~DUPLICATE_q\);

-- Location: MLABCELL_X55_Y4_N6
\mid2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|Add0~33_sumout\ = SUM(( \mid2|count\(2) ) + ( GND ) + ( \mid2|Add0~42\ ))
-- \mid2|Add0~34\ = CARRY(( \mid2|count\(2) ) + ( GND ) + ( \mid2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mid2|ALT_INV_count\(2),
	cin => \mid2|Add0~42\,
	sumout => \mid2|Add0~33_sumout\,
	cout => \mid2|Add0~34\);

-- Location: FF_X55_Y4_N7
\mid2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~33_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count\(2));

-- Location: MLABCELL_X55_Y4_N9
\mid2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|Add0~45_sumout\ = SUM(( \mid2|count[3]~DUPLICATE_q\ ) + ( GND ) + ( \mid2|Add0~34\ ))
-- \mid2|Add0~46\ = CARRY(( \mid2|count[3]~DUPLICATE_q\ ) + ( GND ) + ( \mid2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mid2|ALT_INV_count[3]~DUPLICATE_q\,
	cin => \mid2|Add0~34\,
	sumout => \mid2|Add0~45_sumout\,
	cout => \mid2|Add0~46\);

-- Location: FF_X55_Y4_N11
\mid2|count[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~45_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count[3]~DUPLICATE_q\);

-- Location: MLABCELL_X55_Y4_N12
\mid2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|Add0~49_sumout\ = SUM(( \mid2|count[4]~DUPLICATE_q\ ) + ( GND ) + ( \mid2|Add0~46\ ))
-- \mid2|Add0~50\ = CARRY(( \mid2|count[4]~DUPLICATE_q\ ) + ( GND ) + ( \mid2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mid2|ALT_INV_count[4]~DUPLICATE_q\,
	cin => \mid2|Add0~46\,
	sumout => \mid2|Add0~49_sumout\,
	cout => \mid2|Add0~50\);

-- Location: FF_X55_Y4_N14
\mid2|count[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~49_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count[4]~DUPLICATE_q\);

-- Location: MLABCELL_X55_Y4_N15
\mid2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|Add0~25_sumout\ = SUM(( \mid2|count[5]~DUPLICATE_q\ ) + ( GND ) + ( \mid2|Add0~50\ ))
-- \mid2|Add0~26\ = CARRY(( \mid2|count[5]~DUPLICATE_q\ ) + ( GND ) + ( \mid2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mid2|ALT_INV_count[5]~DUPLICATE_q\,
	cin => \mid2|Add0~50\,
	sumout => \mid2|Add0~25_sumout\,
	cout => \mid2|Add0~26\);

-- Location: FF_X55_Y4_N17
\mid2|count[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~25_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count[5]~DUPLICATE_q\);

-- Location: MLABCELL_X55_Y4_N18
\mid2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|Add0~29_sumout\ = SUM(( \mid2|count[6]~DUPLICATE_q\ ) + ( GND ) + ( \mid2|Add0~26\ ))
-- \mid2|Add0~30\ = CARRY(( \mid2|count[6]~DUPLICATE_q\ ) + ( GND ) + ( \mid2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mid2|ALT_INV_count[6]~DUPLICATE_q\,
	cin => \mid2|Add0~26\,
	sumout => \mid2|Add0~29_sumout\,
	cout => \mid2|Add0~30\);

-- Location: FF_X55_Y4_N19
\mid2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~29_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count\(6));

-- Location: FF_X55_Y4_N16
\mid2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~25_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count\(5));

-- Location: LABCELL_X56_Y4_N39
\mid2|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|LessThan0~1_combout\ = ( !\mid2|count\(5) & ( !\mid2|count\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mid2|ALT_INV_count\(6),
	dataf => \mid2|ALT_INV_count\(5),
	combout => \mid2|LessThan0~1_combout\);

-- Location: FF_X55_Y4_N47
\mid2|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~57_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count\(15));

-- Location: MLABCELL_X55_Y4_N21
\mid2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|Add0~53_sumout\ = SUM(( \mid2|count\(7) ) + ( GND ) + ( \mid2|Add0~30\ ))
-- \mid2|Add0~54\ = CARRY(( \mid2|count\(7) ) + ( GND ) + ( \mid2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mid2|ALT_INV_count\(7),
	cin => \mid2|Add0~30\,
	sumout => \mid2|Add0~53_sumout\,
	cout => \mid2|Add0~54\);

-- Location: FF_X55_Y4_N22
\mid2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~53_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count\(7));

-- Location: MLABCELL_X55_Y4_N24
\mid2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|Add0~1_sumout\ = SUM(( \mid2|count[8]~DUPLICATE_q\ ) + ( GND ) + ( \mid2|Add0~54\ ))
-- \mid2|Add0~2\ = CARRY(( \mid2|count[8]~DUPLICATE_q\ ) + ( GND ) + ( \mid2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mid2|ALT_INV_count[8]~DUPLICATE_q\,
	cin => \mid2|Add0~54\,
	sumout => \mid2|Add0~1_sumout\,
	cout => \mid2|Add0~2\);

-- Location: FF_X55_Y4_N26
\mid2|count[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~1_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count[8]~DUPLICATE_q\);

-- Location: MLABCELL_X55_Y4_N27
\mid2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|Add0~9_sumout\ = SUM(( \mid2|count\(9) ) + ( GND ) + ( \mid2|Add0~2\ ))
-- \mid2|Add0~10\ = CARRY(( \mid2|count\(9) ) + ( GND ) + ( \mid2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mid2|ALT_INV_count\(9),
	cin => \mid2|Add0~2\,
	sumout => \mid2|Add0~9_sumout\,
	cout => \mid2|Add0~10\);

-- Location: FF_X55_Y4_N28
\mid2|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~9_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count\(9));

-- Location: MLABCELL_X55_Y4_N30
\mid2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|Add0~13_sumout\ = SUM(( \mid2|count[10]~DUPLICATE_q\ ) + ( GND ) + ( \mid2|Add0~10\ ))
-- \mid2|Add0~14\ = CARRY(( \mid2|count[10]~DUPLICATE_q\ ) + ( GND ) + ( \mid2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mid2|ALT_INV_count[10]~DUPLICATE_q\,
	cin => \mid2|Add0~10\,
	sumout => \mid2|Add0~13_sumout\,
	cout => \mid2|Add0~14\);

-- Location: FF_X55_Y4_N32
\mid2|count[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~13_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count[10]~DUPLICATE_q\);

-- Location: MLABCELL_X55_Y4_N33
\mid2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|Add0~17_sumout\ = SUM(( \mid2|count[11]~DUPLICATE_q\ ) + ( GND ) + ( \mid2|Add0~14\ ))
-- \mid2|Add0~18\ = CARRY(( \mid2|count[11]~DUPLICATE_q\ ) + ( GND ) + ( \mid2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid2|ALT_INV_count[11]~DUPLICATE_q\,
	cin => \mid2|Add0~14\,
	sumout => \mid2|Add0~17_sumout\,
	cout => \mid2|Add0~18\);

-- Location: FF_X55_Y4_N35
\mid2|count[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~17_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count[11]~DUPLICATE_q\);

-- Location: MLABCELL_X55_Y4_N36
\mid2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|Add0~21_sumout\ = SUM(( \mid2|count\(12) ) + ( GND ) + ( \mid2|Add0~18\ ))
-- \mid2|Add0~22\ = CARRY(( \mid2|count\(12) ) + ( GND ) + ( \mid2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mid2|ALT_INV_count\(12),
	cin => \mid2|Add0~18\,
	sumout => \mid2|Add0~21_sumout\,
	cout => \mid2|Add0~22\);

-- Location: MLABCELL_X55_Y4_N39
\mid2|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|Add0~73_sumout\ = SUM(( \mid2|count\(13) ) + ( GND ) + ( \mid2|Add0~22\ ))
-- \mid2|Add0~74\ = CARRY(( \mid2|count\(13) ) + ( GND ) + ( \mid2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mid2|ALT_INV_count\(13),
	cin => \mid2|Add0~22\,
	sumout => \mid2|Add0~73_sumout\,
	cout => \mid2|Add0~74\);

-- Location: FF_X55_Y4_N40
\mid2|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~73_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count\(13));

-- Location: MLABCELL_X55_Y4_N42
\mid2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|Add0~5_sumout\ = SUM(( \mid2|count\(14) ) + ( GND ) + ( \mid2|Add0~74\ ))
-- \mid2|Add0~6\ = CARRY(( \mid2|count\(14) ) + ( GND ) + ( \mid2|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mid2|ALT_INV_count\(14),
	cin => \mid2|Add0~74\,
	sumout => \mid2|Add0~5_sumout\,
	cout => \mid2|Add0~6\);

-- Location: FF_X55_Y4_N43
\mid2|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~5_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count\(14));

-- Location: MLABCELL_X55_Y4_N45
\mid2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|Add0~57_sumout\ = SUM(( \mid2|count\(15) ) + ( GND ) + ( \mid2|Add0~6\ ))
-- \mid2|Add0~58\ = CARRY(( \mid2|count\(15) ) + ( GND ) + ( \mid2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mid2|ALT_INV_count\(15),
	cin => \mid2|Add0~6\,
	sumout => \mid2|Add0~57_sumout\,
	cout => \mid2|Add0~58\);

-- Location: FF_X55_Y4_N46
\mid2|count[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~57_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count[15]~DUPLICATE_q\);

-- Location: MLABCELL_X55_Y4_N48
\mid2|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|Add0~61_sumout\ = SUM(( \mid2|count\(16) ) + ( GND ) + ( \mid2|Add0~58\ ))
-- \mid2|Add0~62\ = CARRY(( \mid2|count\(16) ) + ( GND ) + ( \mid2|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mid2|ALT_INV_count\(16),
	cin => \mid2|Add0~58\,
	sumout => \mid2|Add0~61_sumout\,
	cout => \mid2|Add0~62\);

-- Location: FF_X55_Y4_N50
\mid2|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~61_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count\(16));

-- Location: MLABCELL_X55_Y4_N51
\mid2|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|Add0~65_sumout\ = SUM(( \mid2|count\(17) ) + ( GND ) + ( \mid2|Add0~62\ ))
-- \mid2|Add0~66\ = CARRY(( \mid2|count\(17) ) + ( GND ) + ( \mid2|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mid2|ALT_INV_count\(17),
	cin => \mid2|Add0~62\,
	sumout => \mid2|Add0~65_sumout\,
	cout => \mid2|Add0~66\);

-- Location: FF_X55_Y4_N52
\mid2|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~65_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count\(17));

-- Location: FF_X55_Y4_N49
\mid2|count[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~61_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count[16]~DUPLICATE_q\);

-- Location: FF_X55_Y4_N56
\mid2|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~69_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count\(18));

-- Location: MLABCELL_X55_Y4_N54
\mid2|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|Add0~69_sumout\ = SUM(( \mid2|count\(18) ) + ( GND ) + ( \mid2|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mid2|ALT_INV_count\(18),
	cin => \mid2|Add0~66\,
	sumout => \mid2|Add0~69_sumout\);

-- Location: FF_X55_Y4_N55
\mid2|count[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~69_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count[18]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y4_N18
\mid2|PULSE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|PULSE~0_combout\ = ( \mid2|count[16]~DUPLICATE_q\ & ( \mid2|count[18]~DUPLICATE_q\ & ( (\mid2|count[15]~DUPLICATE_q\ & (\mid2|count\(17) & ((\mid2|count\(13)) # (\mid2|count\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid2|ALT_INV_count[15]~DUPLICATE_q\,
	datab => \mid2|ALT_INV_count\(14),
	datac => \mid2|ALT_INV_count\(17),
	datad => \mid2|ALT_INV_count\(13),
	datae => \mid2|ALT_INV_count[16]~DUPLICATE_q\,
	dataf => \mid2|ALT_INV_count[18]~DUPLICATE_q\,
	combout => \mid2|PULSE~0_combout\);

-- Location: FF_X55_Y4_N13
\mid2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~49_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count\(4));

-- Location: FF_X55_Y4_N10
\mid2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~45_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count\(3));

-- Location: FF_X55_Y4_N4
\mid2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~41_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count\(1));

-- Location: FF_X55_Y4_N1
\mid2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~37_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count\(0));

-- Location: LABCELL_X56_Y4_N12
\mid2|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|LessThan0~2_combout\ = ( !\mid2|count\(7) & ( \mid2|count\(0) & ( (!\mid2|count\(4)) # ((!\mid2|count\(3)) # ((!\mid2|count\(2)) # (!\mid2|count\(1)))) ) ) ) # ( !\mid2|count\(7) & ( !\mid2|count\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid2|ALT_INV_count\(4),
	datab => \mid2|ALT_INV_count\(3),
	datac => \mid2|ALT_INV_count\(2),
	datad => \mid2|ALT_INV_count\(1),
	datae => \mid2|ALT_INV_count\(7),
	dataf => \mid2|ALT_INV_count\(0),
	combout => \mid2|LessThan0~2_combout\);

-- Location: FF_X55_Y4_N25
\mid2|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~1_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count\(8));

-- Location: LABCELL_X56_Y4_N54
\mid2|count[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|count[7]~0_combout\ = ( \mid1|COUNT_CLEAR~q\ & ( \mid2|count\(8) & ( (\mid2|PULSE~0_combout\ & ((!\mid2|LessThan0~0_combout\) # ((!\mid2|LessThan0~1_combout\) # (!\mid2|LessThan0~2_combout\)))) ) ) ) # ( !\mid1|COUNT_CLEAR~q\ & ( \mid2|count\(8) ) ) 
-- # ( \mid1|COUNT_CLEAR~q\ & ( !\mid2|count\(8) & ( (!\mid2|LessThan0~0_combout\ & \mid2|PULSE~0_combout\) ) ) ) # ( !\mid1|COUNT_CLEAR~q\ & ( !\mid2|count\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000010100000101011111111111111110000111100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid2|ALT_INV_LessThan0~0_combout\,
	datab => \mid2|ALT_INV_LessThan0~1_combout\,
	datac => \mid2|ALT_INV_PULSE~0_combout\,
	datad => \mid2|ALT_INV_LessThan0~2_combout\,
	datae => \mid1|ALT_INV_COUNT_CLEAR~q\,
	dataf => \mid2|ALT_INV_count\(8),
	combout => \mid2|count[7]~0_combout\);

-- Location: FF_X55_Y4_N38
\mid2|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~21_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count\(12));

-- Location: FF_X55_Y4_N37
\mid2|count[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~21_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count[12]~DUPLICATE_q\);

-- Location: FF_X55_Y4_N31
\mid2|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~13_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count\(10));

-- Location: FF_X55_Y4_N34
\mid2|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|Add0~17_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \mid2|count[7]~0_combout\,
	ena => \mid2|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|count\(11));

-- Location: LABCELL_X56_Y4_N36
\mid2|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|LessThan0~0_combout\ = ( !\mid2|count\(11) & ( (!\mid2|count[12]~DUPLICATE_q\ & (!\mid2|count\(14) & (!\mid2|count\(10) & !\mid2|count\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid2|ALT_INV_count[12]~DUPLICATE_q\,
	datab => \mid2|ALT_INV_count\(14),
	datac => \mid2|ALT_INV_count\(10),
	datad => \mid2|ALT_INV_count\(9),
	dataf => \mid2|ALT_INV_count\(11),
	combout => \mid2|LessThan0~0_combout\);

-- Location: LABCELL_X58_Y4_N54
\mid2|PULSE~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|PULSE~1_combout\ = (\mid1|COUNT_ENABLE~q\ & \mid1|COUNT_CLEAR~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid1|ALT_INV_COUNT_ENABLE~q\,
	datab => \mid1|ALT_INV_COUNT_CLEAR~q\,
	combout => \mid2|PULSE~1_combout\);

-- Location: LABCELL_X56_Y4_N24
\mid2|PULSE~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid2|PULSE~2_combout\ = ( \mid2|count\(8) & ( \mid2|LessThan0~2_combout\ & ( (\mid2|PULSE~0_combout\ & (\mid2|PULSE~1_combout\ & ((!\mid2|LessThan0~0_combout\) # (!\mid2|LessThan0~1_combout\)))) ) ) ) # ( !\mid2|count\(8) & ( \mid2|LessThan0~2_combout\ & 
-- ( (!\mid2|LessThan0~0_combout\ & (\mid2|PULSE~0_combout\ & \mid2|PULSE~1_combout\)) ) ) ) # ( \mid2|count\(8) & ( !\mid2|LessThan0~2_combout\ & ( (\mid2|PULSE~0_combout\ & \mid2|PULSE~1_combout\) ) ) ) # ( !\mid2|count\(8) & ( !\mid2|LessThan0~2_combout\ 
-- & ( (!\mid2|LessThan0~0_combout\ & (\mid2|PULSE~0_combout\ & \mid2|PULSE~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000111100000000000010100000000000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid2|ALT_INV_LessThan0~0_combout\,
	datab => \mid2|ALT_INV_LessThan0~1_combout\,
	datac => \mid2|ALT_INV_PULSE~0_combout\,
	datad => \mid2|ALT_INV_PULSE~1_combout\,
	datae => \mid2|ALT_INV_count\(8),
	dataf => \mid2|ALT_INV_LessThan0~2_combout\,
	combout => \mid2|PULSE~2_combout\);

-- Location: FF_X56_Y4_N25
\mid2|PULSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid2|PULSE~2_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid2|PULSE~q\);

-- Location: LABCELL_X58_Y4_N36
\mid3|hund_cnt_ones[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|hund_cnt_ones[1]~1_combout\ = ( \mid1|COUNT_CLEAR~q\ & ( \mid2|PULSE~q\ ) ) # ( !\mid1|COUNT_CLEAR~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mid2|ALT_INV_PULSE~q\,
	dataf => \mid1|ALT_INV_COUNT_CLEAR~q\,
	combout => \mid3|hund_cnt_ones[1]~1_combout\);

-- Location: FF_X60_Y4_N23
\mid3|hund_cnt_ones[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|hund_cnt_ones~4_combout\,
	clrn => \RSTn~input_o\,
	ena => \mid3|hund_cnt_ones[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|hund_cnt_ones\(0));

-- Location: FF_X60_Y4_N22
\mid3|hund_cnt_ones[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|hund_cnt_ones~4_combout\,
	clrn => \RSTn~input_o\,
	ena => \mid3|hund_cnt_ones[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|hund_cnt_ones[0]~DUPLICATE_q\);

-- Location: MLABCELL_X60_Y4_N12
\mid3|hund_cnt_ones~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|hund_cnt_ones~0_combout\ = ( \mid3|hund_cnt_ones\(1) & ( (\mid1|COUNT_CLEAR~q\ & (!\mid3|hund_cnt_ones\(3) $ (((!\mid3|hund_cnt_ones\(2)) # (!\mid3|hund_cnt_ones\(0)))))) ) ) # ( !\mid3|hund_cnt_ones\(1) & ( (\mid1|COUNT_CLEAR~q\ & 
-- (\mid3|hund_cnt_ones\(3) & ((!\mid3|hund_cnt_ones\(0)) # (\mid3|hund_cnt_ones\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110001000000000011000100000001001100100000000100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_hund_cnt_ones\(2),
	datab => \mid1|ALT_INV_COUNT_CLEAR~q\,
	datac => \mid3|ALT_INV_hund_cnt_ones\(0),
	datad => \mid3|ALT_INV_hund_cnt_ones\(3),
	dataf => \mid3|ALT_INV_hund_cnt_ones\(1),
	combout => \mid3|hund_cnt_ones~0_combout\);

-- Location: FF_X60_Y4_N13
\mid3|hund_cnt_ones[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|hund_cnt_ones~0_combout\,
	clrn => \RSTn~input_o\,
	ena => \mid3|hund_cnt_ones[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|hund_cnt_ones\(3));

-- Location: MLABCELL_X60_Y4_N15
\mid3|hund_cnt_ones~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|hund_cnt_ones~3_combout\ = ( \mid3|hund_cnt_ones\(3) & ( (\mid1|COUNT_CLEAR~q\ & ((!\mid3|hund_cnt_ones[0]~DUPLICATE_q\ & ((\mid3|hund_cnt_ones\(1)))) # (\mid3|hund_cnt_ones[0]~DUPLICATE_q\ & (\mid3|hund_cnt_ones\(2) & !\mid3|hund_cnt_ones\(1))))) ) 
-- ) # ( !\mid3|hund_cnt_ones\(3) & ( (\mid1|COUNT_CLEAR~q\ & (!\mid3|hund_cnt_ones[0]~DUPLICATE_q\ $ (!\mid3|hund_cnt_ones\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000000001001100000000000100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_hund_cnt_ones\(2),
	datab => \mid1|ALT_INV_COUNT_CLEAR~q\,
	datac => \mid3|ALT_INV_hund_cnt_ones[0]~DUPLICATE_q\,
	datad => \mid3|ALT_INV_hund_cnt_ones\(1),
	dataf => \mid3|ALT_INV_hund_cnt_ones\(3),
	combout => \mid3|hund_cnt_ones~3_combout\);

-- Location: FF_X60_Y4_N16
\mid3|hund_cnt_ones[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|hund_cnt_ones~3_combout\,
	clrn => \RSTn~input_o\,
	ena => \mid3|hund_cnt_ones[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|hund_cnt_ones\(1));

-- Location: MLABCELL_X60_Y4_N18
\mid3|hund_cnt_ones~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|hund_cnt_ones~2_combout\ = ( \mid3|hund_cnt_ones\(1) & ( (\mid1|COUNT_CLEAR~q\ & (!\mid3|hund_cnt_ones\(0) $ (!\mid3|hund_cnt_ones\(2)))) ) ) # ( !\mid3|hund_cnt_ones\(1) & ( (\mid1|COUNT_CLEAR~q\ & \mid3|hund_cnt_ones\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid1|ALT_INV_COUNT_CLEAR~q\,
	datac => \mid3|ALT_INV_hund_cnt_ones\(0),
	datad => \mid3|ALT_INV_hund_cnt_ones\(2),
	dataf => \mid3|ALT_INV_hund_cnt_ones\(1),
	combout => \mid3|hund_cnt_ones~2_combout\);

-- Location: FF_X60_Y4_N20
\mid3|hund_cnt_ones[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|hund_cnt_ones~2_combout\,
	clrn => \RSTn~input_o\,
	ena => \mid3|hund_cnt_ones[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|hund_cnt_ones\(2));

-- Location: LABCELL_X58_Y4_N6
\mid1|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid1|Selector5~1_combout\ = ( \mid1|SWITCH_NOT~q\ & ( \mid1|JOKER.st_count~DUPLICATE_q\ & ( (((!\in3|SIG_OUT~DUPLICATE_q\ & !\in1|SIG_OUT~DUPLICATE_q\)) # (\mid1|JOKER.st_stop~DUPLICATE_q\)) # (\mid1|JOKER.st_lap~q\) ) ) ) # ( !\mid1|SWITCH_NOT~q\ & ( 
-- \mid1|JOKER.st_count~DUPLICATE_q\ & ( (\in3|SIG_OUT~DUPLICATE_q\ & !\in1|SIG_OUT~DUPLICATE_q\) ) ) ) # ( \mid1|SWITCH_NOT~q\ & ( !\mid1|JOKER.st_count~DUPLICATE_q\ & ( (\mid1|JOKER.st_stop~DUPLICATE_q\) # (\mid1|JOKER.st_lap~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111111101000100010001001000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \in3|ALT_INV_SIG_OUT~DUPLICATE_q\,
	datab => \in1|ALT_INV_SIG_OUT~DUPLICATE_q\,
	datac => \mid1|ALT_INV_JOKER.st_lap~q\,
	datad => \mid1|ALT_INV_JOKER.st_stop~DUPLICATE_q\,
	datae => \mid1|ALT_INV_SWITCH_NOT~q\,
	dataf => \mid1|ALT_INV_JOKER.st_count~DUPLICATE_q\,
	combout => \mid1|Selector5~1_combout\);

-- Location: LABCELL_X58_Y4_N24
\mid1|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid1|Selector5~0_combout\ = ( \mid1|JOKER.st_idle~q\ & ( (!\mid1|JOKER.st_count~DUPLICATE_q\ & !\mid1|JOKER.st_stop~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid1|ALT_INV_JOKER.st_count~DUPLICATE_q\,
	datab => \mid1|ALT_INV_JOKER.st_stop~DUPLICATE_q\,
	dataf => \mid1|ALT_INV_JOKER.st_idle~q\,
	combout => \mid1|Selector5~0_combout\);

-- Location: LABCELL_X58_Y4_N0
\mid1|Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid1|Selector5~2_combout\ = ( \in2|SIG_OUT~DUPLICATE_q\ & ( (\in1|SIG_OUT~q\ & (!\mid1|Selector5~0_combout\ & \mid1|SWITCH_NOT~q\)) ) ) # ( !\in2|SIG_OUT~DUPLICATE_q\ & ( ((\in1|SIG_OUT~q\ & (!\mid1|Selector5~0_combout\ & \mid1|SWITCH_NOT~q\))) # 
-- (\mid1|Selector5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110011001100110111001100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \in1|ALT_INV_SIG_OUT~q\,
	datab => \mid1|ALT_INV_Selector5~1_combout\,
	datac => \mid1|ALT_INV_Selector5~0_combout\,
	datad => \mid1|ALT_INV_SWITCH_NOT~q\,
	dataf => \in2|ALT_INV_SIG_OUT~DUPLICATE_q\,
	combout => \mid1|Selector5~2_combout\);

-- Location: FF_X58_Y4_N2
\mid1|SWITCH_NOT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid1|Selector5~2_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid1|SWITCH_NOT~q\);

-- Location: FF_X60_Y4_N8
\mid3|HUND_ONES[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \mid3|hund_cnt_ones\(2),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \mid1|ALT_INV_SWITCH_NOT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|HUND_ONES\(2));

-- Location: FF_X60_Y4_N35
\mid3|HUND_ONES[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \mid3|hund_cnt_ones[0]~DUPLICATE_q\,
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \mid1|ALT_INV_SWITCH_NOT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|HUND_ONES\(0));

-- Location: FF_X60_Y4_N44
\mid3|HUND_ONES[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \mid3|hund_cnt_ones\(1),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \mid1|ALT_INV_SWITCH_NOT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|HUND_ONES\(1));

-- Location: FF_X60_Y4_N32
\mid3|HUND_ONES[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \mid3|hund_cnt_ones\(3),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \mid1|ALT_INV_SWITCH_NOT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|HUND_ONES\(3));

-- Location: LABCELL_X61_Y4_N30
\first_out|D_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \first_out|D_OUT[0]~0_combout\ = ( \mid3|HUND_ONES\(3) & ( (\mid3|HUND_ONES\(1)) # (\mid3|HUND_ONES\(2)) ) ) # ( !\mid3|HUND_ONES\(3) & ( (!\mid3|HUND_ONES\(1) & (!\mid3|HUND_ONES\(2) $ (!\mid3|HUND_ONES\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mid3|ALT_INV_HUND_ONES\(2),
	datac => \mid3|ALT_INV_HUND_ONES\(0),
	datad => \mid3|ALT_INV_HUND_ONES\(1),
	dataf => \mid3|ALT_INV_HUND_ONES\(3),
	combout => \first_out|D_OUT[0]~0_combout\);

-- Location: LABCELL_X61_Y4_N33
\first_out|D_OUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \first_out|D_OUT[1]~1_combout\ = ( \mid3|HUND_ONES\(3) & ( (\mid3|HUND_ONES\(1)) # (\mid3|HUND_ONES\(2)) ) ) # ( !\mid3|HUND_ONES\(3) & ( (\mid3|HUND_ONES\(2) & (!\mid3|HUND_ONES\(0) $ (!\mid3|HUND_ONES\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_HUND_ONES\(0),
	datac => \mid3|ALT_INV_HUND_ONES\(2),
	datad => \mid3|ALT_INV_HUND_ONES\(1),
	dataf => \mid3|ALT_INV_HUND_ONES\(3),
	combout => \first_out|D_OUT[1]~1_combout\);

-- Location: MLABCELL_X60_Y4_N48
\first_out|D_OUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \first_out|D_OUT[2]~2_combout\ = ( \mid3|HUND_ONES\(2) & ( \mid3|HUND_ONES\(3) ) ) # ( !\mid3|HUND_ONES\(2) & ( (\mid3|HUND_ONES\(1) & ((!\mid3|HUND_ONES\(0)) # (\mid3|HUND_ONES\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110011001100000011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mid3|ALT_INV_HUND_ONES\(1),
	datac => \mid3|ALT_INV_HUND_ONES\(0),
	datad => \mid3|ALT_INV_HUND_ONES\(3),
	dataf => \mid3|ALT_INV_HUND_ONES\(2),
	combout => \first_out|D_OUT[2]~2_combout\);

-- Location: LABCELL_X61_Y4_N36
\first_out|D_OUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \first_out|D_OUT[3]~3_combout\ = ( \mid3|HUND_ONES\(3) & ( (\mid3|HUND_ONES\(1)) # (\mid3|HUND_ONES\(2)) ) ) # ( !\mid3|HUND_ONES\(3) & ( (!\mid3|HUND_ONES\(2) & (\mid3|HUND_ONES\(0) & !\mid3|HUND_ONES\(1))) # (\mid3|HUND_ONES\(2) & (!\mid3|HUND_ONES\(0) 
-- $ (\mid3|HUND_ONES\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000011001111000000001100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mid3|ALT_INV_HUND_ONES\(2),
	datac => \mid3|ALT_INV_HUND_ONES\(0),
	datad => \mid3|ALT_INV_HUND_ONES\(1),
	dataf => \mid3|ALT_INV_HUND_ONES\(3),
	combout => \first_out|D_OUT[3]~3_combout\);

-- Location: MLABCELL_X60_Y4_N30
\first_out|D_OUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \first_out|D_OUT[4]~4_combout\ = ((!\mid3|HUND_ONES\(1) & (\mid3|HUND_ONES\(2))) # (\mid3|HUND_ONES\(1) & ((\mid3|HUND_ONES\(3))))) # (\mid3|HUND_ONES\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111101111111001011110111111100101111011111110010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_HUND_ONES\(1),
	datab => \mid3|ALT_INV_HUND_ONES\(2),
	datac => \mid3|ALT_INV_HUND_ONES\(0),
	datad => \mid3|ALT_INV_HUND_ONES\(3),
	combout => \first_out|D_OUT[4]~4_combout\);

-- Location: LABCELL_X61_Y4_N39
\first_out|D_OUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \first_out|D_OUT[5]~5_combout\ = ( \mid3|HUND_ONES\(3) & ( (\mid3|HUND_ONES\(1)) # (\mid3|HUND_ONES\(2)) ) ) # ( !\mid3|HUND_ONES\(3) & ( (!\mid3|HUND_ONES\(0) & (!\mid3|HUND_ONES\(2) & \mid3|HUND_ONES\(1))) # (\mid3|HUND_ONES\(0) & 
-- ((!\mid3|HUND_ONES\(2)) # (\mid3|HUND_ONES\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101010011010100110100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_HUND_ONES\(0),
	datab => \mid3|ALT_INV_HUND_ONES\(2),
	datac => \mid3|ALT_INV_HUND_ONES\(1),
	dataf => \mid3|ALT_INV_HUND_ONES\(3),
	combout => \first_out|D_OUT[5]~5_combout\);

-- Location: MLABCELL_X60_Y4_N33
\first_out|D_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \first_out|D_OUT[6]~6_combout\ = ( \mid3|HUND_ONES\(3) & ( (\mid3|HUND_ONES\(2)) # (\mid3|HUND_ONES\(1)) ) ) # ( !\mid3|HUND_ONES\(3) & ( (!\mid3|HUND_ONES\(1) & (!\mid3|HUND_ONES\(2))) # (\mid3|HUND_ONES\(1) & (\mid3|HUND_ONES\(2) & \mid3|HUND_ONES\(0))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100101101000001010010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_HUND_ONES\(1),
	datac => \mid3|ALT_INV_HUND_ONES\(2),
	datad => \mid3|ALT_INV_HUND_ONES\(0),
	dataf => \mid3|ALT_INV_HUND_ONES\(3),
	combout => \first_out|D_OUT[6]~6_combout\);

-- Location: MLABCELL_X60_Y4_N24
\mid3|hund_cnt_tens[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|hund_cnt_tens[2]~1_combout\ = ( \mid2|PULSE~q\ & ( \mid3|hund_cnt_ones[0]~DUPLICATE_q\ & ( (!\mid1|COUNT_CLEAR~q\) # ((\mid3|hund_cnt_ones\(3) & (!\mid3|hund_cnt_ones\(2) & !\mid3|hund_cnt_ones\(1)))) ) ) ) # ( !\mid2|PULSE~q\ & ( 
-- \mid3|hund_cnt_ones[0]~DUPLICATE_q\ & ( !\mid1|COUNT_CLEAR~q\ ) ) ) # ( \mid2|PULSE~q\ & ( !\mid3|hund_cnt_ones[0]~DUPLICATE_q\ & ( !\mid1|COUNT_CLEAR~q\ ) ) ) # ( !\mid2|PULSE~q\ & ( !\mid3|hund_cnt_ones[0]~DUPLICATE_q\ & ( !\mid1|COUNT_CLEAR~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101011101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid1|ALT_INV_COUNT_CLEAR~q\,
	datab => \mid3|ALT_INV_hund_cnt_ones\(3),
	datac => \mid3|ALT_INV_hund_cnt_ones\(2),
	datad => \mid3|ALT_INV_hund_cnt_ones\(1),
	datae => \mid2|ALT_INV_PULSE~q\,
	dataf => \mid3|ALT_INV_hund_cnt_ones[0]~DUPLICATE_q\,
	combout => \mid3|hund_cnt_tens[2]~1_combout\);

-- Location: FF_X56_Y4_N46
\mid3|hund_cnt_tens[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|hund_cnt_tens~4_combout\,
	clrn => \RSTn~input_o\,
	ena => \mid3|hund_cnt_tens[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|hund_cnt_tens\(0));

-- Location: LABCELL_X56_Y4_N45
\mid3|hund_cnt_tens~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|hund_cnt_tens~4_combout\ = (\mid1|COUNT_CLEAR~q\ & !\mid3|hund_cnt_tens\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mid1|ALT_INV_COUNT_CLEAR~q\,
	datad => \mid3|ALT_INV_hund_cnt_tens\(0),
	combout => \mid3|hund_cnt_tens~4_combout\);

-- Location: FF_X56_Y4_N47
\mid3|hund_cnt_tens[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|hund_cnt_tens~4_combout\,
	clrn => \RSTn~input_o\,
	ena => \mid3|hund_cnt_tens[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|hund_cnt_tens[0]~DUPLICATE_q\);

-- Location: FF_X60_Y4_N56
\mid3|HUND_TENS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \mid3|hund_cnt_tens[0]~DUPLICATE_q\,
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \mid1|ALT_INV_SWITCH_NOT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|HUND_TENS\(0));

-- Location: FF_X56_Y4_N44
\mid3|hund_cnt_tens[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|hund_cnt_tens~2_combout\,
	clrn => \RSTn~input_o\,
	ena => \mid3|hund_cnt_tens[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|hund_cnt_tens\(2));

-- Location: LABCELL_X56_Y4_N6
\mid3|hund_cnt_tens~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|hund_cnt_tens~0_combout\ = ( \mid3|hund_cnt_tens\(1) & ( (\mid1|COUNT_CLEAR~q\ & (!\mid3|hund_cnt_tens\(3) $ (((!\mid3|hund_cnt_tens\(2)) # (!\mid3|hund_cnt_tens\(0)))))) ) ) # ( !\mid3|hund_cnt_tens\(1) & ( (\mid1|COUNT_CLEAR~q\ & 
-- (\mid3|hund_cnt_tens\(3) & ((!\mid3|hund_cnt_tens\(0)) # (\mid3|hund_cnt_tens\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010001000000000101000100000001010101000000000101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid1|ALT_INV_COUNT_CLEAR~q\,
	datab => \mid3|ALT_INV_hund_cnt_tens\(2),
	datac => \mid3|ALT_INV_hund_cnt_tens\(0),
	datad => \mid3|ALT_INV_hund_cnt_tens\(3),
	dataf => \mid3|ALT_INV_hund_cnt_tens\(1),
	combout => \mid3|hund_cnt_tens~0_combout\);

-- Location: FF_X56_Y4_N8
\mid3|hund_cnt_tens[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|hund_cnt_tens~0_combout\,
	clrn => \RSTn~input_o\,
	ena => \mid3|hund_cnt_tens[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|hund_cnt_tens\(3));

-- Location: LABCELL_X56_Y4_N9
\mid3|hund_cnt_tens~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|hund_cnt_tens~3_combout\ = ( \mid3|hund_cnt_tens\(3) & ( (\mid1|COUNT_CLEAR~q\ & ((!\mid3|hund_cnt_tens[0]~DUPLICATE_q\ & ((\mid3|hund_cnt_tens\(1)))) # (\mid3|hund_cnt_tens[0]~DUPLICATE_q\ & (\mid3|hund_cnt_tens\(2) & !\mid3|hund_cnt_tens\(1))))) ) 
-- ) # ( !\mid3|hund_cnt_tens\(3) & ( (\mid1|COUNT_CLEAR~q\ & (!\mid3|hund_cnt_tens[0]~DUPLICATE_q\ $ (!\mid3|hund_cnt_tens\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000000001010100000000000101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid1|ALT_INV_COUNT_CLEAR~q\,
	datab => \mid3|ALT_INV_hund_cnt_tens\(2),
	datac => \mid3|ALT_INV_hund_cnt_tens[0]~DUPLICATE_q\,
	datad => \mid3|ALT_INV_hund_cnt_tens\(1),
	dataf => \mid3|ALT_INV_hund_cnt_tens\(3),
	combout => \mid3|hund_cnt_tens~3_combout\);

-- Location: FF_X56_Y4_N10
\mid3|hund_cnt_tens[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|hund_cnt_tens~3_combout\,
	clrn => \RSTn~input_o\,
	ena => \mid3|hund_cnt_tens[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|hund_cnt_tens\(1));

-- Location: LABCELL_X56_Y4_N42
\mid3|hund_cnt_tens~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|hund_cnt_tens~2_combout\ = ( \mid3|hund_cnt_tens\(0) & ( (\mid1|COUNT_CLEAR~q\ & (!\mid3|hund_cnt_tens\(1) $ (!\mid3|hund_cnt_tens\(2)))) ) ) # ( !\mid3|hund_cnt_tens\(0) & ( (\mid1|COUNT_CLEAR~q\ & \mid3|hund_cnt_tens\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mid1|ALT_INV_COUNT_CLEAR~q\,
	datac => \mid3|ALT_INV_hund_cnt_tens\(1),
	datad => \mid3|ALT_INV_hund_cnt_tens\(2),
	dataf => \mid3|ALT_INV_hund_cnt_tens\(0),
	combout => \mid3|hund_cnt_tens~2_combout\);

-- Location: FF_X56_Y4_N43
\mid3|hund_cnt_tens[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|hund_cnt_tens~2_combout\,
	clrn => \RSTn~input_o\,
	ena => \mid3|hund_cnt_tens[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|hund_cnt_tens[2]~DUPLICATE_q\);

-- Location: FF_X60_Y4_N59
\mid3|HUND_TENS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \mid3|hund_cnt_tens[2]~DUPLICATE_q\,
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \mid1|ALT_INV_SWITCH_NOT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|HUND_TENS\(2));

-- Location: FF_X60_Y4_N2
\mid3|HUND_TENS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \mid3|hund_cnt_tens\(1),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \mid1|ALT_INV_SWITCH_NOT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|HUND_TENS\(1));

-- Location: FF_X56_Y4_N7
\mid3|hund_cnt_tens[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|hund_cnt_tens~0_combout\,
	clrn => \RSTn~input_o\,
	ena => \mid3|hund_cnt_tens[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|hund_cnt_tens[3]~DUPLICATE_q\);

-- Location: FF_X60_Y4_N53
\mid3|HUND_TENS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \mid3|hund_cnt_tens[3]~DUPLICATE_q\,
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \mid1|ALT_INV_SWITCH_NOT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|HUND_TENS\(3));

-- Location: MLABCELL_X60_Y4_N3
\sec_out|D_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec_out|D_OUT[0]~0_combout\ = ( \mid3|HUND_TENS\(3) & ( (\mid3|HUND_TENS\(1)) # (\mid3|HUND_TENS\(2)) ) ) # ( !\mid3|HUND_TENS\(3) & ( (!\mid3|HUND_TENS\(1) & (!\mid3|HUND_TENS\(0) $ (!\mid3|HUND_TENS\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000011001100000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_HUND_TENS\(0),
	datab => \mid3|ALT_INV_HUND_TENS\(2),
	datad => \mid3|ALT_INV_HUND_TENS\(1),
	dataf => \mid3|ALT_INV_HUND_TENS\(3),
	combout => \sec_out|D_OUT[0]~0_combout\);

-- Location: MLABCELL_X60_Y4_N6
\sec_out|D_OUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec_out|D_OUT[1]~1_combout\ = ( \mid3|HUND_TENS\(0) & ( (!\mid3|HUND_TENS\(1) & (\mid3|HUND_TENS\(2))) # (\mid3|HUND_TENS\(1) & ((\mid3|HUND_TENS\(3)))) ) ) # ( !\mid3|HUND_TENS\(0) & ( (!\mid3|HUND_TENS\(1) & (\mid3|HUND_TENS\(2) & \mid3|HUND_TENS\(3))) 
-- # (\mid3|HUND_TENS\(1) & ((\mid3|HUND_TENS\(3)) # (\mid3|HUND_TENS\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_HUND_TENS\(1),
	datab => \mid3|ALT_INV_HUND_TENS\(2),
	datac => \mid3|ALT_INV_HUND_TENS\(3),
	dataf => \mid3|ALT_INV_HUND_TENS\(0),
	combout => \sec_out|D_OUT[1]~1_combout\);

-- Location: MLABCELL_X60_Y4_N9
\sec_out|D_OUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec_out|D_OUT[2]~2_combout\ = (!\mid3|HUND_TENS\(2) & (\mid3|HUND_TENS\(1) & ((!\mid3|HUND_TENS\(0)) # (\mid3|HUND_TENS\(3))))) # (\mid3|HUND_TENS\(2) & (((\mid3|HUND_TENS\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000111010001110000011101000111000001110100011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_HUND_TENS\(1),
	datab => \mid3|ALT_INV_HUND_TENS\(2),
	datac => \mid3|ALT_INV_HUND_TENS\(3),
	datad => \mid3|ALT_INV_HUND_TENS\(0),
	combout => \sec_out|D_OUT[2]~2_combout\);

-- Location: MLABCELL_X60_Y4_N51
\sec_out|D_OUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec_out|D_OUT[3]~3_combout\ = ( \mid3|HUND_TENS\(0) & ( (!\mid3|HUND_TENS\(1) & (!\mid3|HUND_TENS\(2) $ (\mid3|HUND_TENS\(3)))) # (\mid3|HUND_TENS\(1) & ((\mid3|HUND_TENS\(3)) # (\mid3|HUND_TENS\(2)))) ) ) # ( !\mid3|HUND_TENS\(0) & ( 
-- (!\mid3|HUND_TENS\(1) & (\mid3|HUND_TENS\(2))) # (\mid3|HUND_TENS\(1) & ((\mid3|HUND_TENS\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111110100101010111111010010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_HUND_TENS\(1),
	datac => \mid3|ALT_INV_HUND_TENS\(2),
	datad => \mid3|ALT_INV_HUND_TENS\(3),
	dataf => \mid3|ALT_INV_HUND_TENS\(0),
	combout => \sec_out|D_OUT[3]~3_combout\);

-- Location: MLABCELL_X60_Y4_N57
\sec_out|D_OUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec_out|D_OUT[4]~4_combout\ = ( \mid3|HUND_TENS\(0) ) # ( !\mid3|HUND_TENS\(0) & ( (!\mid3|HUND_TENS\(1) & ((\mid3|HUND_TENS\(2)))) # (\mid3|HUND_TENS\(1) & (\mid3|HUND_TENS\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_HUND_TENS\(1),
	datac => \mid3|ALT_INV_HUND_TENS\(3),
	datad => \mid3|ALT_INV_HUND_TENS\(2),
	dataf => \mid3|ALT_INV_HUND_TENS\(0),
	combout => \sec_out|D_OUT[4]~4_combout\);

-- Location: MLABCELL_X60_Y4_N0
\sec_out|D_OUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec_out|D_OUT[5]~5_combout\ = ( \mid3|HUND_TENS\(3) & ( (\mid3|HUND_TENS\(1)) # (\mid3|HUND_TENS\(2)) ) ) # ( !\mid3|HUND_TENS\(3) & ( (!\mid3|HUND_TENS\(2) & ((\mid3|HUND_TENS\(1)) # (\mid3|HUND_TENS\(0)))) # (\mid3|HUND_TENS\(2) & (\mid3|HUND_TENS\(0) 
-- & \mid3|HUND_TENS\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001111000011001100111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mid3|ALT_INV_HUND_TENS\(2),
	datac => \mid3|ALT_INV_HUND_TENS\(0),
	datad => \mid3|ALT_INV_HUND_TENS\(1),
	dataf => \mid3|ALT_INV_HUND_TENS\(3),
	combout => \sec_out|D_OUT[5]~5_combout\);

-- Location: MLABCELL_X60_Y4_N54
\sec_out|D_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec_out|D_OUT[6]~6_combout\ = ( \mid3|HUND_TENS\(3) & ( (\mid3|HUND_TENS\(2)) # (\mid3|HUND_TENS\(1)) ) ) # ( !\mid3|HUND_TENS\(3) & ( (!\mid3|HUND_TENS\(1) & (!\mid3|HUND_TENS\(2))) # (\mid3|HUND_TENS\(1) & (\mid3|HUND_TENS\(2) & \mid3|HUND_TENS\(0))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010011001100010001001100101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_HUND_TENS\(1),
	datab => \mid3|ALT_INV_HUND_TENS\(2),
	datad => \mid3|ALT_INV_HUND_TENS\(0),
	dataf => \mid3|ALT_INV_HUND_TENS\(3),
	combout => \sec_out|D_OUT[6]~6_combout\);

-- Location: LABCELL_X61_Y4_N27
\mid3|sec_cnt_ones~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|sec_cnt_ones~4_combout\ = (\mid1|COUNT_CLEAR~q\ & !\mid3|sec_cnt_ones\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid1|ALT_INV_COUNT_CLEAR~q\,
	datad => \mid3|ALT_INV_sec_cnt_ones\(0),
	combout => \mid3|sec_cnt_ones~4_combout\);

-- Location: LABCELL_X56_Y4_N33
\mid3|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|Equal1~0_combout\ = ( !\mid3|hund_cnt_tens\(2) & ( (!\mid3|hund_cnt_tens\(1) & (\mid3|hund_cnt_tens\(3) & \mid3|hund_cnt_tens[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_hund_cnt_tens\(1),
	datac => \mid3|ALT_INV_hund_cnt_tens\(3),
	datad => \mid3|ALT_INV_hund_cnt_tens[0]~DUPLICATE_q\,
	dataf => \mid3|ALT_INV_hund_cnt_tens\(2),
	combout => \mid3|Equal1~0_combout\);

-- Location: MLABCELL_X60_Y4_N36
\mid3|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|Equal0~0_combout\ = ( \mid3|hund_cnt_ones[0]~DUPLICATE_q\ & ( (\mid3|hund_cnt_ones\(3) & (!\mid3|hund_cnt_ones\(2) & !\mid3|hund_cnt_ones\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mid3|ALT_INV_hund_cnt_ones\(3),
	datac => \mid3|ALT_INV_hund_cnt_ones\(2),
	datad => \mid3|ALT_INV_hund_cnt_ones\(1),
	dataf => \mid3|ALT_INV_hund_cnt_ones[0]~DUPLICATE_q\,
	combout => \mid3|Equal0~0_combout\);

-- Location: LABCELL_X56_Y4_N30
\mid3|sec_cnt_ones[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|sec_cnt_ones[0]~1_combout\ = ( \mid3|Equal0~0_combout\ & ( (!\mid1|COUNT_CLEAR~q\) # ((\mid2|PULSE~q\ & \mid3|Equal1~0_combout\)) ) ) # ( !\mid3|Equal0~0_combout\ & ( !\mid1|COUNT_CLEAR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mid2|ALT_INV_PULSE~q\,
	datac => \mid3|ALT_INV_Equal1~0_combout\,
	datad => \mid1|ALT_INV_COUNT_CLEAR~q\,
	dataf => \mid3|ALT_INV_Equal0~0_combout\,
	combout => \mid3|sec_cnt_ones[0]~1_combout\);

-- Location: FF_X61_Y4_N28
\mid3|sec_cnt_ones[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|sec_cnt_ones~4_combout\,
	clrn => \RSTn~input_o\,
	ena => \mid3|sec_cnt_ones[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|sec_cnt_ones\(0));

-- Location: LABCELL_X61_Y4_N48
\mid3|sec_cnt_ones~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|sec_cnt_ones~2_combout\ = ( \mid3|sec_cnt_ones\(1) & ( (\mid1|COUNT_CLEAR~q\ & (!\mid3|sec_cnt_ones\(0) $ (!\mid3|sec_cnt_ones\(2)))) ) ) # ( !\mid3|sec_cnt_ones\(1) & ( (\mid1|COUNT_CLEAR~q\ & \mid3|sec_cnt_ones\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid1|ALT_INV_COUNT_CLEAR~q\,
	datab => \mid3|ALT_INV_sec_cnt_ones\(0),
	datad => \mid3|ALT_INV_sec_cnt_ones\(2),
	dataf => \mid3|ALT_INV_sec_cnt_ones\(1),
	combout => \mid3|sec_cnt_ones~2_combout\);

-- Location: FF_X61_Y4_N49
\mid3|sec_cnt_ones[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|sec_cnt_ones~2_combout\,
	clrn => \RSTn~input_o\,
	ena => \mid3|sec_cnt_ones[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|sec_cnt_ones\(2));

-- Location: LABCELL_X61_Y4_N51
\mid3|sec_cnt_ones~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|sec_cnt_ones~0_combout\ = ( \mid3|sec_cnt_ones\(2) & ( (\mid1|COUNT_CLEAR~q\ & (!\mid3|sec_cnt_ones\(3) $ (((!\mid3|sec_cnt_ones\(0)) # (!\mid3|sec_cnt_ones\(1)))))) ) ) # ( !\mid3|sec_cnt_ones\(2) & ( (\mid1|COUNT_CLEAR~q\ & (\mid3|sec_cnt_ones\(3) 
-- & ((!\mid3|sec_cnt_ones\(0)) # (\mid3|sec_cnt_ones\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000101000000000100010100000001010101000000000101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid1|ALT_INV_COUNT_CLEAR~q\,
	datab => \mid3|ALT_INV_sec_cnt_ones\(0),
	datac => \mid3|ALT_INV_sec_cnt_ones\(1),
	datad => \mid3|ALT_INV_sec_cnt_ones\(3),
	dataf => \mid3|ALT_INV_sec_cnt_ones\(2),
	combout => \mid3|sec_cnt_ones~0_combout\);

-- Location: FF_X61_Y4_N53
\mid3|sec_cnt_ones[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|sec_cnt_ones~0_combout\,
	clrn => \RSTn~input_o\,
	ena => \mid3|sec_cnt_ones[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|sec_cnt_ones\(3));

-- Location: LABCELL_X61_Y4_N24
\mid3|sec_cnt_ones~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|sec_cnt_ones~3_combout\ = ( \mid3|sec_cnt_ones\(2) & ( (\mid1|COUNT_CLEAR~q\ & (!\mid3|sec_cnt_ones\(0) $ (!\mid3|sec_cnt_ones\(1)))) ) ) # ( !\mid3|sec_cnt_ones\(2) & ( (\mid1|COUNT_CLEAR~q\ & ((!\mid3|sec_cnt_ones\(0) & ((\mid3|sec_cnt_ones\(1)))) 
-- # (\mid3|sec_cnt_ones\(0) & (!\mid3|sec_cnt_ones\(3) & !\mid3|sec_cnt_ones\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000100000100000100010000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid1|ALT_INV_COUNT_CLEAR~q\,
	datab => \mid3|ALT_INV_sec_cnt_ones\(0),
	datac => \mid3|ALT_INV_sec_cnt_ones\(3),
	datad => \mid3|ALT_INV_sec_cnt_ones\(1),
	dataf => \mid3|ALT_INV_sec_cnt_ones\(2),
	combout => \mid3|sec_cnt_ones~3_combout\);

-- Location: FF_X61_Y4_N25
\mid3|sec_cnt_ones[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|sec_cnt_ones~3_combout\,
	clrn => \RSTn~input_o\,
	ena => \mid3|sec_cnt_ones[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|sec_cnt_ones\(1));

-- Location: FF_X61_Y4_N23
\mid3|SEC_ONES[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \mid3|sec_cnt_ones\(1),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \mid1|ALT_INV_SWITCH_NOT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|SEC_ONES\(1));

-- Location: FF_X61_Y4_N44
\mid3|SEC_ONES[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \mid3|sec_cnt_ones\(2),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \mid1|ALT_INV_SWITCH_NOT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|SEC_ONES\(2));

-- Location: FF_X61_Y4_N29
\mid3|sec_cnt_ones[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|sec_cnt_ones~4_combout\,
	clrn => \RSTn~input_o\,
	ena => \mid3|sec_cnt_ones[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|sec_cnt_ones[0]~DUPLICATE_q\);

-- Location: FF_X61_Y4_N20
\mid3|SEC_ONES[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \mid3|sec_cnt_ones[0]~DUPLICATE_q\,
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \mid1|ALT_INV_SWITCH_NOT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|SEC_ONES\(0));

-- Location: FF_X61_Y4_N47
\mid3|SEC_ONES[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \mid3|sec_cnt_ones\(3),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \mid1|ALT_INV_SWITCH_NOT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|SEC_ONES\(3));

-- Location: MLABCELL_X60_Y4_N45
\third_out|D_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \third_out|D_OUT[0]~0_combout\ = ( \mid3|SEC_ONES\(3) & ( (\mid3|SEC_ONES\(2)) # (\mid3|SEC_ONES\(1)) ) ) # ( !\mid3|SEC_ONES\(3) & ( (!\mid3|SEC_ONES\(1) & (!\mid3|SEC_ONES\(2) $ (!\mid3|SEC_ONES\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_SEC_ONES\(1),
	datab => \mid3|ALT_INV_SEC_ONES\(2),
	datad => \mid3|ALT_INV_SEC_ONES\(0),
	dataf => \mid3|ALT_INV_SEC_ONES\(3),
	combout => \third_out|D_OUT[0]~0_combout\);

-- Location: MLABCELL_X60_Y4_N39
\third_out|D_OUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \third_out|D_OUT[1]~1_combout\ = ( \mid3|SEC_ONES\(3) & ( (\mid3|SEC_ONES\(1)) # (\mid3|SEC_ONES\(2)) ) ) # ( !\mid3|SEC_ONES\(3) & ( (\mid3|SEC_ONES\(2) & (!\mid3|SEC_ONES\(0) $ (!\mid3|SEC_ONES\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_SEC_ONES\(0),
	datac => \mid3|ALT_INV_SEC_ONES\(2),
	datad => \mid3|ALT_INV_SEC_ONES\(1),
	dataf => \mid3|ALT_INV_SEC_ONES\(3),
	combout => \third_out|D_OUT[1]~1_combout\);

-- Location: MLABCELL_X60_Y4_N42
\third_out|D_OUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \third_out|D_OUT[2]~2_combout\ = ( \mid3|SEC_ONES\(3) & ( (\mid3|SEC_ONES\(2)) # (\mid3|SEC_ONES\(1)) ) ) # ( !\mid3|SEC_ONES\(3) & ( (\mid3|SEC_ONES\(1) & (!\mid3|SEC_ONES\(2) & !\mid3|SEC_ONES\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_SEC_ONES\(1),
	datab => \mid3|ALT_INV_SEC_ONES\(2),
	datac => \mid3|ALT_INV_SEC_ONES\(0),
	dataf => \mid3|ALT_INV_SEC_ONES\(3),
	combout => \third_out|D_OUT[2]~2_combout\);

-- Location: LABCELL_X61_Y4_N45
\third_out|D_OUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \third_out|D_OUT[3]~3_combout\ = ( \mid3|SEC_ONES\(0) & ( (!\mid3|SEC_ONES\(1) & (!\mid3|SEC_ONES\(2) $ (\mid3|SEC_ONES\(3)))) # (\mid3|SEC_ONES\(1) & ((\mid3|SEC_ONES\(3)) # (\mid3|SEC_ONES\(2)))) ) ) # ( !\mid3|SEC_ONES\(0) & ( (!\mid3|SEC_ONES\(1) & 
-- (\mid3|SEC_ONES\(2))) # (\mid3|SEC_ONES\(1) & ((\mid3|SEC_ONES\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111110100101010111111010010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_SEC_ONES\(1),
	datac => \mid3|ALT_INV_SEC_ONES\(2),
	datad => \mid3|ALT_INV_SEC_ONES\(3),
	dataf => \mid3|ALT_INV_SEC_ONES\(0),
	combout => \third_out|D_OUT[3]~3_combout\);

-- Location: LABCELL_X61_Y4_N42
\third_out|D_OUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \third_out|D_OUT[4]~4_combout\ = ((!\mid3|SEC_ONES\(1) & ((\mid3|SEC_ONES\(2)))) # (\mid3|SEC_ONES\(1) & (\mid3|SEC_ONES\(3)))) # (\mid3|SEC_ONES\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111110111111000111111011111100011111101111110001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_SEC_ONES\(1),
	datab => \mid3|ALT_INV_SEC_ONES\(3),
	datac => \mid3|ALT_INV_SEC_ONES\(0),
	datad => \mid3|ALT_INV_SEC_ONES\(2),
	combout => \third_out|D_OUT[4]~4_combout\);

-- Location: LABCELL_X61_Y4_N21
\third_out|D_OUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \third_out|D_OUT[5]~5_combout\ = ( \mid3|SEC_ONES\(2) & ( ((\mid3|SEC_ONES\(0) & \mid3|SEC_ONES\(1))) # (\mid3|SEC_ONES\(3)) ) ) # ( !\mid3|SEC_ONES\(2) & ( ((\mid3|SEC_ONES\(0) & !\mid3|SEC_ONES\(3))) # (\mid3|SEC_ONES\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011111111010001001111111100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_SEC_ONES\(0),
	datab => \mid3|ALT_INV_SEC_ONES\(3),
	datad => \mid3|ALT_INV_SEC_ONES\(1),
	dataf => \mid3|ALT_INV_SEC_ONES\(2),
	combout => \third_out|D_OUT[5]~5_combout\);

-- Location: LABCELL_X61_Y4_N18
\third_out|D_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \third_out|D_OUT[6]~6_combout\ = ( \mid3|SEC_ONES\(2) & ( ((\mid3|SEC_ONES\(1) & \mid3|SEC_ONES\(0))) # (\mid3|SEC_ONES\(3)) ) ) # ( !\mid3|SEC_ONES\(2) & ( !\mid3|SEC_ONES\(3) $ (\mid3|SEC_ONES\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mid3|ALT_INV_SEC_ONES\(3),
	datac => \mid3|ALT_INV_SEC_ONES\(1),
	datad => \mid3|ALT_INV_SEC_ONES\(0),
	dataf => \mid3|ALT_INV_SEC_ONES\(2),
	combout => \third_out|D_OUT[6]~6_combout\);

-- Location: LABCELL_X56_Y4_N0
\mid3|sec_cnt_tens~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|sec_cnt_tens~2_combout\ = (\mid1|COUNT_CLEAR~q\ & !\mid3|sec_cnt_tens\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mid1|ALT_INV_COUNT_CLEAR~q\,
	datad => \mid3|ALT_INV_sec_cnt_tens\(0),
	combout => \mid3|sec_cnt_tens~2_combout\);

-- Location: LABCELL_X61_Y4_N54
\mid3|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|Equal2~0_combout\ = ( !\mid3|sec_cnt_ones\(2) & ( (!\mid3|sec_cnt_ones\(1) & (\mid3|sec_cnt_ones\(3) & \mid3|sec_cnt_ones[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mid3|ALT_INV_sec_cnt_ones\(1),
	datac => \mid3|ALT_INV_sec_cnt_ones\(3),
	datad => \mid3|ALT_INV_sec_cnt_ones[0]~DUPLICATE_q\,
	dataf => \mid3|ALT_INV_sec_cnt_ones\(2),
	combout => \mid3|Equal2~0_combout\);

-- Location: LABCELL_X56_Y4_N51
\mid3|sec_cnt_tens[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|sec_cnt_tens[0]~1_combout\ = ( \mid3|Equal1~0_combout\ & ( (!\mid1|COUNT_CLEAR~q\) # ((\mid3|Equal0~0_combout\ & (\mid2|PULSE~q\ & \mid3|Equal2~0_combout\))) ) ) # ( !\mid3|Equal1~0_combout\ & ( !\mid1|COUNT_CLEAR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011011100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_Equal0~0_combout\,
	datab => \mid1|ALT_INV_COUNT_CLEAR~q\,
	datac => \mid2|ALT_INV_PULSE~q\,
	datad => \mid3|ALT_INV_Equal2~0_combout\,
	dataf => \mid3|ALT_INV_Equal1~0_combout\,
	combout => \mid3|sec_cnt_tens[0]~1_combout\);

-- Location: FF_X56_Y4_N2
\mid3|sec_cnt_tens[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|sec_cnt_tens~2_combout\,
	clrn => \RSTn~input_o\,
	ena => \mid3|sec_cnt_tens[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|sec_cnt_tens\(0));

-- Location: FF_X56_Y4_N50
\mid3|sec_cnt_tens[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|sec_cnt_tens~0_combout\,
	clrn => \RSTn~input_o\,
	ena => \mid3|sec_cnt_tens[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|sec_cnt_tens\(1));

-- Location: LABCELL_X56_Y4_N3
\mid3|sec_cnt_tens~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|sec_cnt_tens~3_combout\ = ( \mid3|sec_cnt_tens\(1) & ( !\mid3|sec_cnt_tens\(0) $ (!\mid3|sec_cnt_tens\(2)) ) ) # ( !\mid3|sec_cnt_tens\(1) & ( (!\mid3|sec_cnt_tens\(0) & \mid3|sec_cnt_tens\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_sec_cnt_tens\(0),
	datad => \mid3|ALT_INV_sec_cnt_tens\(2),
	dataf => \mid3|ALT_INV_sec_cnt_tens\(1),
	combout => \mid3|sec_cnt_tens~3_combout\);

-- Location: FF_X56_Y4_N4
\mid3|sec_cnt_tens[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|sec_cnt_tens~3_combout\,
	clrn => \RSTn~input_o\,
	sclr => \mid1|ALT_INV_COUNT_CLEAR~q\,
	ena => \mid3|sec_cnt_tens[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|sec_cnt_tens\(2));

-- Location: LABCELL_X56_Y4_N48
\mid3|sec_cnt_tens~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mid3|sec_cnt_tens~0_combout\ = ( \mid3|sec_cnt_tens\(2) & ( (\mid1|COUNT_CLEAR~q\ & (!\mid3|sec_cnt_tens\(0) & \mid3|sec_cnt_tens\(1))) ) ) # ( !\mid3|sec_cnt_tens\(2) & ( (\mid1|COUNT_CLEAR~q\ & (!\mid3|sec_cnt_tens\(0) $ (!\mid3|sec_cnt_tens\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mid1|ALT_INV_COUNT_CLEAR~q\,
	datac => \mid3|ALT_INV_sec_cnt_tens\(0),
	datad => \mid3|ALT_INV_sec_cnt_tens\(1),
	dataf => \mid3|ALT_INV_sec_cnt_tens\(2),
	combout => \mid3|sec_cnt_tens~0_combout\);

-- Location: FF_X56_Y4_N49
\mid3|sec_cnt_tens[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|sec_cnt_tens~0_combout\,
	clrn => \RSTn~input_o\,
	ena => \mid3|sec_cnt_tens[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|sec_cnt_tens[1]~DUPLICATE_q\);

-- Location: FF_X61_Y4_N59
\mid3|SEC_TENS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \mid3|sec_cnt_tens[1]~DUPLICATE_q\,
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \mid1|ALT_INV_SWITCH_NOT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|SEC_TENS\(1));

-- Location: FF_X56_Y4_N1
\mid3|sec_cnt_tens[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \mid3|sec_cnt_tens~2_combout\,
	clrn => \RSTn~input_o\,
	ena => \mid3|sec_cnt_tens[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|sec_cnt_tens[0]~DUPLICATE_q\);

-- Location: FF_X61_Y4_N2
\mid3|SEC_TENS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \mid3|sec_cnt_tens[0]~DUPLICATE_q\,
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \mid1|ALT_INV_SWITCH_NOT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|SEC_TENS\(0));

-- Location: FF_X61_Y4_N5
\mid3|SEC_TENS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \mid3|sec_cnt_tens\(2),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \mid1|ALT_INV_SWITCH_NOT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mid3|SEC_TENS\(2));

-- Location: LABCELL_X61_Y4_N6
\fourth_out|D_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourth_out|D_OUT[0]~0_combout\ = (!\mid3|SEC_TENS\(1) & (!\mid3|SEC_TENS\(0) $ (!\mid3|SEC_TENS\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mid3|ALT_INV_SEC_TENS\(1),
	datac => \mid3|ALT_INV_SEC_TENS\(0),
	datad => \mid3|ALT_INV_SEC_TENS\(2),
	combout => \fourth_out|D_OUT[0]~0_combout\);

-- Location: LABCELL_X61_Y4_N9
\fourth_out|D_OUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourth_out|D_OUT[1]~1_combout\ = (\mid3|SEC_TENS\(2) & (!\mid3|SEC_TENS\(0) $ (!\mid3|SEC_TENS\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_SEC_TENS\(0),
	datab => \mid3|ALT_INV_SEC_TENS\(1),
	datad => \mid3|ALT_INV_SEC_TENS\(2),
	combout => \fourth_out|D_OUT[1]~1_combout\);

-- Location: LABCELL_X61_Y4_N12
\fourth_out|D_OUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourth_out|D_OUT[2]~2_combout\ = (\mid3|SEC_TENS\(1) & (!\mid3|SEC_TENS\(0) & !\mid3|SEC_TENS\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mid3|ALT_INV_SEC_TENS\(1),
	datac => \mid3|ALT_INV_SEC_TENS\(0),
	datad => \mid3|ALT_INV_SEC_TENS\(2),
	combout => \fourth_out|D_OUT[2]~2_combout\);

-- Location: LABCELL_X61_Y4_N15
\fourth_out|D_OUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourth_out|D_OUT[3]~3_combout\ = (!\mid3|SEC_TENS\(0) & (!\mid3|SEC_TENS\(1) & \mid3|SEC_TENS\(2))) # (\mid3|SEC_TENS\(0) & (!\mid3|SEC_TENS\(1) $ (\mid3|SEC_TENS\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010011001010001001001100101000100100110010100010010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_SEC_TENS\(0),
	datab => \mid3|ALT_INV_SEC_TENS\(1),
	datad => \mid3|ALT_INV_SEC_TENS\(2),
	combout => \fourth_out|D_OUT[3]~3_combout\);

-- Location: LABCELL_X61_Y4_N57
\fourth_out|D_OUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourth_out|D_OUT[4]~4_combout\ = ( \mid3|SEC_TENS\(2) & ( (!\mid3|SEC_TENS\(1)) # (\mid3|SEC_TENS\(0)) ) ) # ( !\mid3|SEC_TENS\(2) & ( \mid3|SEC_TENS\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_SEC_TENS\(0),
	datad => \mid3|ALT_INV_SEC_TENS\(1),
	dataf => \mid3|ALT_INV_SEC_TENS\(2),
	combout => \fourth_out|D_OUT[4]~4_combout\);

-- Location: LABCELL_X61_Y4_N0
\fourth_out|D_OUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourth_out|D_OUT[5]~5_combout\ = (!\mid3|SEC_TENS\(1) & ((!\mid3|SEC_TENS\(0)) # (\mid3|SEC_TENS\(2)))) # (\mid3|SEC_TENS\(1) & (\mid3|SEC_TENS\(2) & !\mid3|SEC_TENS\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100001100110011110000110011001111000011001100111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mid3|ALT_INV_SEC_TENS\(1),
	datac => \mid3|ALT_INV_SEC_TENS\(2),
	datad => \mid3|ALT_INV_SEC_TENS\(0),
	combout => \fourth_out|D_OUT[5]~5_combout\);

-- Location: LABCELL_X61_Y4_N3
\fourth_out|D_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourth_out|D_OUT[6]~6_combout\ = (!\mid3|SEC_TENS\(1) & ((!\mid3|SEC_TENS\(2)))) # (\mid3|SEC_TENS\(1) & (\mid3|SEC_TENS\(0) & \mid3|SEC_TENS\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000010001110011000001000111001100000100011100110000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mid3|ALT_INV_SEC_TENS\(0),
	datab => \mid3|ALT_INV_SEC_TENS\(1),
	datad => \mid3|ALT_INV_SEC_TENS\(2),
	combout => \fourth_out|D_OUT[6]~6_combout\);

-- Location: LABCELL_X67_Y48_N3
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


