-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "03/09/2023 18:47:18"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab3_top IS
    PORT (
	clkin_50 : IN std_logic;
	pb_n : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : BUFFER std_logic_vector(7 DOWNTO 0);
	seg7_data : BUFFER std_logic_vector(6 DOWNTO 0);
	seg7_char1 : BUFFER std_logic;
	seg7_char2 : BUFFER std_logic
	);
END LogicalStep_Lab3_top;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab3_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_pb_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HVAC_module|clk_divider:counter[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \pb_n[3]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \MUX|logic_out[3]~0_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \MUX|logic_out[2]~1_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \MUX|logic_out[0]~3_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \MUX|logic_out[1]~2_combout\ : std_logic;
SIGNAL \Decoder_up|Mux5~0_combout\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[1]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[1]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[1]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[2]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[2]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[2]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[3]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[3]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[3]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[4]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[4]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[4]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[5]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[5]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[5]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[6]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[6]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[6]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[7]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[7]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[7]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[8]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[8]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[8]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[9]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[9]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[9]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[10]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[11]~2_cout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[11]~4_cout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[11]~6_cout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[11]~8_cout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[11]~10_cout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[11]~12_cout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[11]~14_cout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[11]~16_cout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[11]~18_cout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[11]~20_cout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[11]~21_combout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[11]~q\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[11]~22\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[12]~1_combout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[12]~q\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[12]~2\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[13]~1_combout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[13]~q\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[13]~2\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[14]~1_combout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[14]~q\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[14]~2\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[15]~1_combout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[15]~q\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[15]~2\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[16]~1_combout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[16]~q\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[16]~2\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[17]~1_combout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[17]~q\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[17]~2\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[18]~1_combout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[18]~q\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[18]~2\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[19]~1_combout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[19]~q\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[19]~2\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[20]~1_combout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[20]~q\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[20]~2\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[21]~1_combout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[21]~q\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[21]~2\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[22]~1_combout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[22]~q\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[22]~2\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[23]~1_combout\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[23]~q\ : std_logic;
SIGNAL \HVAC_module|clk_divider:counter[23]~clkctrl_outclk\ : std_logic;
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \pb_n[2]~input_o\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \Energy_module|lights[3]~10_combout\ : std_logic;
SIGNAL \HVAC_module|Add2~3\ : std_logic;
SIGNAL \HVAC_module|Add2~4_combout\ : std_logic;
SIGNAL \HVAC_module|counter:cnt[2]~2_combout\ : std_logic;
SIGNAL \HVAC_module|counter:cnt[2]~1_combout\ : std_logic;
SIGNAL \HVAC_module|counter:cnt[2]~q\ : std_logic;
SIGNAL \HVAC_module|cnt~0_combout\ : std_logic;
SIGNAL \INST4|AgtB~2_combout\ : std_logic;
SIGNAL \INST4|AsmB~0_combout\ : std_logic;
SIGNAL \INST4|AsmB~1_combout\ : std_logic;
SIGNAL \INST4|AsmB~2_combout\ : std_logic;
SIGNAL \INST4|AgtB~0_combout\ : std_logic;
SIGNAL \INST4|AgtB~1_combout\ : std_logic;
SIGNAL \INST4|AgtB~3_combout\ : std_logic;
SIGNAL \HVAC_module|counter:cnt[2]~0_combout\ : std_logic;
SIGNAL \HVAC_module|counter:cnt[0]~0_combout\ : std_logic;
SIGNAL \HVAC_module|counter:cnt[0]~q\ : std_logic;
SIGNAL \HVAC_module|Add2~1_cout\ : std_logic;
SIGNAL \HVAC_module|Add2~2_combout\ : std_logic;
SIGNAL \HVAC_module|counter:cnt[1]~0_combout\ : std_logic;
SIGNAL \HVAC_module|counter:cnt[1]~q\ : std_logic;
SIGNAL \HVAC_module|Equal0~0_combout\ : std_logic;
SIGNAL \HVAC_module|counter~0_combout\ : std_logic;
SIGNAL \HVAC_module|Add2~5\ : std_logic;
SIGNAL \HVAC_module|Add2~6_combout\ : std_logic;
SIGNAL \HVAC_module|counter:cnt[3]~q\ : std_logic;
SIGNAL \Decoder_down|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \Decoder_up|Mux1~0_combout\ : std_logic;
SIGNAL \Decoder_down|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \Decoder_up|Mux0~0_combout\ : std_logic;
SIGNAL \Decoder_down|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \Energy_module|lights[1]~11_combout\ : std_logic;
SIGNAL \Energy_module|lights[2]~12_combout\ : std_logic;
SIGNAL \INST4|Com0|AeqB~0_combout\ : std_logic;
SIGNAL \INST4|AeqB~0_combout\ : std_logic;
SIGNAL \Tester_module|TEST_PASS~3_combout\ : std_logic;
SIGNAL \Tester_module|TEST_PASS~4_combout\ : std_logic;
SIGNAL \Tester_module|TEST_PASS~5_combout\ : std_logic;
SIGNAL \Tester_module|TEST_PASS~0_combout\ : std_logic;
SIGNAL \Tester_module|TEST_PASS~1_combout\ : std_logic;
SIGNAL \Tester_module|TEST_PASS~2_combout\ : std_logic;
SIGNAL \Tester_module|TEST_PASS~7_combout\ : std_logic;
SIGNAL \Tester_module|TEST_PASS~6_combout\ : std_logic;
SIGNAL \Tester_module|TEST_PASS~8_combout\ : std_logic;
SIGNAL \Tester_module|TEST_PASS~9_combout\ : std_logic;
SIGNAL \Decoder_down|Mux6~0_combout\ : std_logic;
SIGNAL \Decoder_up|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[0]~0_combout\ : std_logic;
SIGNAL \Decoder_up|Mux4~0_combout\ : std_logic;
SIGNAL \Decoder_down|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[2]~2_combout\ : std_logic;
SIGNAL \Decoder_up|Mux3~0_combout\ : std_logic;
SIGNAL \Decoder_down|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[3]~3_combout\ : std_logic;
SIGNAL \Decoder_down|Mux2~0_combout\ : std_logic;
SIGNAL \Decoder_up|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[4]~4_combout\ : std_logic;
SIGNAL \Energy_module|lights\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Energy_module|ALT_INV_lights[1]~11_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[2]~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pb_n[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_pb_n[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_pb_n[3]~input_o\ : std_logic;
SIGNAL \inst3|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;

BEGIN

ww_clkin_50 <= clkin_50;
ww_pb_n <= pb_n;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);

\HVAC_module|clk_divider:counter[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \HVAC_module|clk_divider:counter[23]~q\);
\Energy_module|ALT_INV_lights[1]~11_combout\ <= NOT \Energy_module|lights[1]~11_combout\;
\inst3|ALT_INV_DOUT[4]~4_combout\ <= NOT \inst3|DOUT[4]~4_combout\;
\inst3|ALT_INV_DOUT[3]~3_combout\ <= NOT \inst3|DOUT[3]~3_combout\;
\inst3|ALT_INV_DOUT[2]~2_combout\ <= NOT \inst3|DOUT[2]~2_combout\;
\inst3|ALT_INV_DOUT[0]~0_combout\ <= NOT \inst3|DOUT[0]~0_combout\;
\ALT_INV_pb_n[1]~input_o\ <= NOT \pb_n[1]~input_o\;
\ALT_INV_pb_n[0]~input_o\ <= NOT \pb_n[0]~input_o\;
\ALT_INV_pb_n[3]~input_o\ <= NOT \pb_n[3]~input_o\;
\inst3|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \inst3|clk_proc:COUNT[10]~q\;

-- Location: LCCOMB_X11_Y24_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X3_Y10_N23
\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst3|DOUT_TEMP[1]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst3|DOUT_TEMP[5]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst3|DOUT_TEMP[6]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST4|AgtB~3_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Energy_module|ALT_INV_lights[1]~11_combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Energy_module|lights[2]~12_combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Energy_module|lights\(3),
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pb_n[1]~input_o\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pb_n[0]~input_o\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Tester_module|TEST_PASS~9_combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pb_n[3]~input_o\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_DOUT[2]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_DOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_DOUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X1_Y10_N15
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X6_Y0_N15
\pb_n[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(3),
	o => \pb_n[3]~input_o\);

-- Location: IOIBUF_X10_Y20_N15
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: LCCOMB_X15_Y12_N12
\MUX|logic_out[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUX|logic_out[3]~0_combout\ = (\pb_n[3]~input_o\ & ((\sw[3]~input_o\))) # (!\pb_n[3]~input_o\ & (\sw[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \pb_n[3]~input_o\,
	datac => \sw[3]~input_o\,
	combout => \MUX|logic_out[3]~0_combout\);

-- Location: IOIBUF_X10_Y19_N22
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: LCCOMB_X15_Y12_N30
\MUX|logic_out[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUX|logic_out[2]~1_combout\ = (\pb_n[3]~input_o\ & (\sw[2]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb_n[3]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[6]~input_o\,
	combout => \MUX|logic_out[2]~1_combout\);

-- Location: IOIBUF_X0_Y5_N1
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X10_Y21_N15
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: LCCOMB_X15_Y12_N22
\MUX|logic_out[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUX|logic_out[0]~3_combout\ = (\pb_n[3]~input_o\ & (\sw[0]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb_n[3]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \MUX|logic_out[0]~3_combout\);

-- Location: IOIBUF_X10_Y19_N15
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X10_Y22_N15
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: LCCOMB_X15_Y12_N20
\MUX|logic_out[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUX|logic_out[1]~2_combout\ = (\pb_n[3]~input_o\ & (\sw[1]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb_n[3]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[5]~input_o\,
	combout => \MUX|logic_out[1]~2_combout\);

-- Location: LCCOMB_X15_Y12_N4
\Decoder_up|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder_up|Mux5~0_combout\ = (\MUX|logic_out[3]~0_combout\ & ((\MUX|logic_out[0]~3_combout\ & ((\MUX|logic_out[1]~2_combout\))) # (!\MUX|logic_out[0]~3_combout\ & (\MUX|logic_out[2]~1_combout\)))) # (!\MUX|logic_out[3]~0_combout\ & 
-- (\MUX|logic_out[2]~1_combout\ & (\MUX|logic_out[0]~3_combout\ $ (\MUX|logic_out[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|logic_out[3]~0_combout\,
	datab => \MUX|logic_out[2]~1_combout\,
	datac => \MUX|logic_out[0]~3_combout\,
	datad => \MUX|logic_out[1]~2_combout\,
	combout => \Decoder_up|Mux5~0_combout\);

-- Location: IOIBUF_X0_Y6_N22
\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

-- Location: CLKCTRL_G4
\clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X16_Y13_N0
\inst3|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[0]~0_combout\ = !\inst3|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|clk_proc:COUNT[0]~q\,
	combout => \inst3|clk_proc:COUNT[0]~0_combout\);

-- Location: FF_X16_Y13_N1
\inst3|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[0]~q\);

-- Location: LCCOMB_X15_Y13_N10
\inst3|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[1]~1_combout\ = (\inst3|clk_proc:COUNT[1]~q\ & (\inst3|clk_proc:COUNT[0]~q\ $ (VCC))) # (!\inst3|clk_proc:COUNT[1]~q\ & (\inst3|clk_proc:COUNT[0]~q\ & VCC))
-- \inst3|clk_proc:COUNT[1]~2\ = CARRY((\inst3|clk_proc:COUNT[1]~q\ & \inst3|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[1]~q\,
	datab => \inst3|clk_proc:COUNT[0]~q\,
	datad => VCC,
	combout => \inst3|clk_proc:COUNT[1]~1_combout\,
	cout => \inst3|clk_proc:COUNT[1]~2\);

-- Location: FF_X16_Y13_N7
\inst3|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \inst3|clk_proc:COUNT[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[1]~q\);

-- Location: LCCOMB_X15_Y13_N12
\inst3|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[2]~1_combout\ = (\inst3|clk_proc:COUNT[2]~q\ & (!\inst3|clk_proc:COUNT[1]~2\)) # (!\inst3|clk_proc:COUNT[2]~q\ & ((\inst3|clk_proc:COUNT[1]~2\) # (GND)))
-- \inst3|clk_proc:COUNT[2]~2\ = CARRY((!\inst3|clk_proc:COUNT[1]~2\) # (!\inst3|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[1]~2\,
	combout => \inst3|clk_proc:COUNT[2]~1_combout\,
	cout => \inst3|clk_proc:COUNT[2]~2\);

-- Location: LCCOMB_X16_Y13_N8
\inst3|clk_proc:COUNT[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[2]~feeder_combout\ = \inst3|clk_proc:COUNT[2]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|clk_proc:COUNT[2]~1_combout\,
	combout => \inst3|clk_proc:COUNT[2]~feeder_combout\);

-- Location: FF_X16_Y13_N9
\inst3|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[2]~q\);

-- Location: LCCOMB_X15_Y13_N14
\inst3|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[3]~1_combout\ = (\inst3|clk_proc:COUNT[3]~q\ & (\inst3|clk_proc:COUNT[2]~2\ $ (GND))) # (!\inst3|clk_proc:COUNT[3]~q\ & (!\inst3|clk_proc:COUNT[2]~2\ & VCC))
-- \inst3|clk_proc:COUNT[3]~2\ = CARRY((\inst3|clk_proc:COUNT[3]~q\ & !\inst3|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[2]~2\,
	combout => \inst3|clk_proc:COUNT[3]~1_combout\,
	cout => \inst3|clk_proc:COUNT[3]~2\);

-- Location: FF_X16_Y13_N15
\inst3|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \inst3|clk_proc:COUNT[3]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[3]~q\);

-- Location: LCCOMB_X15_Y13_N16
\inst3|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[4]~1_combout\ = (\inst3|clk_proc:COUNT[4]~q\ & (!\inst3|clk_proc:COUNT[3]~2\)) # (!\inst3|clk_proc:COUNT[4]~q\ & ((\inst3|clk_proc:COUNT[3]~2\) # (GND)))
-- \inst3|clk_proc:COUNT[4]~2\ = CARRY((!\inst3|clk_proc:COUNT[3]~2\) # (!\inst3|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[3]~2\,
	combout => \inst3|clk_proc:COUNT[4]~1_combout\,
	cout => \inst3|clk_proc:COUNT[4]~2\);

-- Location: FF_X16_Y13_N17
\inst3|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \inst3|clk_proc:COUNT[4]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[4]~q\);

-- Location: LCCOMB_X15_Y13_N18
\inst3|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[5]~1_combout\ = (\inst3|clk_proc:COUNT[5]~q\ & (\inst3|clk_proc:COUNT[4]~2\ $ (GND))) # (!\inst3|clk_proc:COUNT[5]~q\ & (!\inst3|clk_proc:COUNT[4]~2\ & VCC))
-- \inst3|clk_proc:COUNT[5]~2\ = CARRY((\inst3|clk_proc:COUNT[5]~q\ & !\inst3|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[4]~2\,
	combout => \inst3|clk_proc:COUNT[5]~1_combout\,
	cout => \inst3|clk_proc:COUNT[5]~2\);

-- Location: FF_X16_Y13_N19
\inst3|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \inst3|clk_proc:COUNT[5]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[5]~q\);

-- Location: LCCOMB_X15_Y13_N20
\inst3|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[6]~1_combout\ = (\inst3|clk_proc:COUNT[6]~q\ & (!\inst3|clk_proc:COUNT[5]~2\)) # (!\inst3|clk_proc:COUNT[6]~q\ & ((\inst3|clk_proc:COUNT[5]~2\) # (GND)))
-- \inst3|clk_proc:COUNT[6]~2\ = CARRY((!\inst3|clk_proc:COUNT[5]~2\) # (!\inst3|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[5]~2\,
	combout => \inst3|clk_proc:COUNT[6]~1_combout\,
	cout => \inst3|clk_proc:COUNT[6]~2\);

-- Location: FF_X15_Y13_N21
\inst3|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[6]~q\);

-- Location: LCCOMB_X15_Y13_N22
\inst3|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[7]~1_combout\ = (\inst3|clk_proc:COUNT[7]~q\ & (\inst3|clk_proc:COUNT[6]~2\ $ (GND))) # (!\inst3|clk_proc:COUNT[7]~q\ & (!\inst3|clk_proc:COUNT[6]~2\ & VCC))
-- \inst3|clk_proc:COUNT[7]~2\ = CARRY((\inst3|clk_proc:COUNT[7]~q\ & !\inst3|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[6]~2\,
	combout => \inst3|clk_proc:COUNT[7]~1_combout\,
	cout => \inst3|clk_proc:COUNT[7]~2\);

-- Location: FF_X15_Y13_N23
\inst3|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[7]~q\);

-- Location: LCCOMB_X15_Y13_N24
\inst3|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[8]~1_combout\ = (\inst3|clk_proc:COUNT[8]~q\ & (!\inst3|clk_proc:COUNT[7]~2\)) # (!\inst3|clk_proc:COUNT[8]~q\ & ((\inst3|clk_proc:COUNT[7]~2\) # (GND)))
-- \inst3|clk_proc:COUNT[8]~2\ = CARRY((!\inst3|clk_proc:COUNT[7]~2\) # (!\inst3|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[7]~2\,
	combout => \inst3|clk_proc:COUNT[8]~1_combout\,
	cout => \inst3|clk_proc:COUNT[8]~2\);

-- Location: FF_X15_Y13_N25
\inst3|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[8]~q\);

-- Location: LCCOMB_X15_Y13_N26
\inst3|clk_proc:COUNT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[9]~1_combout\ = (\inst3|clk_proc:COUNT[9]~q\ & (\inst3|clk_proc:COUNT[8]~2\ $ (GND))) # (!\inst3|clk_proc:COUNT[9]~q\ & (!\inst3|clk_proc:COUNT[8]~2\ & VCC))
-- \inst3|clk_proc:COUNT[9]~2\ = CARRY((\inst3|clk_proc:COUNT[9]~q\ & !\inst3|clk_proc:COUNT[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[8]~2\,
	combout => \inst3|clk_proc:COUNT[9]~1_combout\,
	cout => \inst3|clk_proc:COUNT[9]~2\);

-- Location: FF_X15_Y13_N27
\inst3|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[9]~q\);

-- Location: LCCOMB_X15_Y13_N28
\inst3|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[10]~1_combout\ = \inst3|clk_proc:COUNT[9]~2\ $ (\inst3|clk_proc:COUNT[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|clk_proc:COUNT[10]~q\,
	cin => \inst3|clk_proc:COUNT[9]~2\,
	combout => \inst3|clk_proc:COUNT[10]~1_combout\);

-- Location: FF_X15_Y13_N29
\inst3|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[10]~q\);

-- Location: LCCOMB_X16_Y13_N10
\HVAC_module|clk_divider:counter[11]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[11]~2_cout\ = CARRY((\inst3|clk_proc:COUNT[1]~q\ & \inst3|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[1]~q\,
	datab => \inst3|clk_proc:COUNT[0]~q\,
	datad => VCC,
	cout => \HVAC_module|clk_divider:counter[11]~2_cout\);

-- Location: LCCOMB_X16_Y13_N12
\HVAC_module|clk_divider:counter[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[11]~4_cout\ = CARRY((!\HVAC_module|clk_divider:counter[11]~2_cout\) # (!\inst3|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \HVAC_module|clk_divider:counter[11]~2_cout\,
	cout => \HVAC_module|clk_divider:counter[11]~4_cout\);

-- Location: LCCOMB_X16_Y13_N14
\HVAC_module|clk_divider:counter[11]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[11]~6_cout\ = CARRY((\inst3|clk_proc:COUNT[3]~q\ & !\HVAC_module|clk_divider:counter[11]~4_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \HVAC_module|clk_divider:counter[11]~4_cout\,
	cout => \HVAC_module|clk_divider:counter[11]~6_cout\);

-- Location: LCCOMB_X16_Y13_N16
\HVAC_module|clk_divider:counter[11]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[11]~8_cout\ = CARRY((!\HVAC_module|clk_divider:counter[11]~6_cout\) # (!\inst3|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \HVAC_module|clk_divider:counter[11]~6_cout\,
	cout => \HVAC_module|clk_divider:counter[11]~8_cout\);

-- Location: LCCOMB_X16_Y13_N18
\HVAC_module|clk_divider:counter[11]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[11]~10_cout\ = CARRY((\inst3|clk_proc:COUNT[5]~q\ & !\HVAC_module|clk_divider:counter[11]~8_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \HVAC_module|clk_divider:counter[11]~8_cout\,
	cout => \HVAC_module|clk_divider:counter[11]~10_cout\);

-- Location: LCCOMB_X16_Y13_N20
\HVAC_module|clk_divider:counter[11]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[11]~12_cout\ = CARRY((!\HVAC_module|clk_divider:counter[11]~10_cout\) # (!\inst3|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \HVAC_module|clk_divider:counter[11]~10_cout\,
	cout => \HVAC_module|clk_divider:counter[11]~12_cout\);

-- Location: LCCOMB_X16_Y13_N22
\HVAC_module|clk_divider:counter[11]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[11]~14_cout\ = CARRY((\inst3|clk_proc:COUNT[7]~q\ & !\HVAC_module|clk_divider:counter[11]~12_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \HVAC_module|clk_divider:counter[11]~12_cout\,
	cout => \HVAC_module|clk_divider:counter[11]~14_cout\);

-- Location: LCCOMB_X16_Y13_N24
\HVAC_module|clk_divider:counter[11]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[11]~16_cout\ = CARRY((!\HVAC_module|clk_divider:counter[11]~14_cout\) # (!\inst3|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \HVAC_module|clk_divider:counter[11]~14_cout\,
	cout => \HVAC_module|clk_divider:counter[11]~16_cout\);

-- Location: LCCOMB_X16_Y13_N26
\HVAC_module|clk_divider:counter[11]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[11]~18_cout\ = CARRY((\inst3|clk_proc:COUNT[9]~q\ & !\HVAC_module|clk_divider:counter[11]~16_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \HVAC_module|clk_divider:counter[11]~16_cout\,
	cout => \HVAC_module|clk_divider:counter[11]~18_cout\);

-- Location: LCCOMB_X16_Y13_N28
\HVAC_module|clk_divider:counter[11]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[11]~20_cout\ = CARRY((!\HVAC_module|clk_divider:counter[11]~18_cout\) # (!\inst3|clk_proc:COUNT[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[10]~q\,
	datad => VCC,
	cin => \HVAC_module|clk_divider:counter[11]~18_cout\,
	cout => \HVAC_module|clk_divider:counter[11]~20_cout\);

-- Location: LCCOMB_X16_Y13_N30
\HVAC_module|clk_divider:counter[11]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[11]~21_combout\ = (\HVAC_module|clk_divider:counter[11]~q\ & (\HVAC_module|clk_divider:counter[11]~20_cout\ $ (GND))) # (!\HVAC_module|clk_divider:counter[11]~q\ & (!\HVAC_module|clk_divider:counter[11]~20_cout\ & VCC))
-- \HVAC_module|clk_divider:counter[11]~22\ = CARRY((\HVAC_module|clk_divider:counter[11]~q\ & !\HVAC_module|clk_divider:counter[11]~20_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_module|clk_divider:counter[11]~q\,
	datad => VCC,
	cin => \HVAC_module|clk_divider:counter[11]~20_cout\,
	combout => \HVAC_module|clk_divider:counter[11]~21_combout\,
	cout => \HVAC_module|clk_divider:counter[11]~22\);

-- Location: FF_X16_Y13_N31
\HVAC_module|clk_divider:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_module|clk_divider:counter[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_module|clk_divider:counter[11]~q\);

-- Location: LCCOMB_X16_Y12_N0
\HVAC_module|clk_divider:counter[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[12]~1_combout\ = (\HVAC_module|clk_divider:counter[12]~q\ & (!\HVAC_module|clk_divider:counter[11]~22\)) # (!\HVAC_module|clk_divider:counter[12]~q\ & ((\HVAC_module|clk_divider:counter[11]~22\) # (GND)))
-- \HVAC_module|clk_divider:counter[12]~2\ = CARRY((!\HVAC_module|clk_divider:counter[11]~22\) # (!\HVAC_module|clk_divider:counter[12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_module|clk_divider:counter[12]~q\,
	datad => VCC,
	cin => \HVAC_module|clk_divider:counter[11]~22\,
	combout => \HVAC_module|clk_divider:counter[12]~1_combout\,
	cout => \HVAC_module|clk_divider:counter[12]~2\);

-- Location: FF_X16_Y12_N1
\HVAC_module|clk_divider:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_module|clk_divider:counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_module|clk_divider:counter[12]~q\);

-- Location: LCCOMB_X16_Y12_N2
\HVAC_module|clk_divider:counter[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[13]~1_combout\ = (\HVAC_module|clk_divider:counter[13]~q\ & (\HVAC_module|clk_divider:counter[12]~2\ $ (GND))) # (!\HVAC_module|clk_divider:counter[13]~q\ & (!\HVAC_module|clk_divider:counter[12]~2\ & VCC))
-- \HVAC_module|clk_divider:counter[13]~2\ = CARRY((\HVAC_module|clk_divider:counter[13]~q\ & !\HVAC_module|clk_divider:counter[12]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_module|clk_divider:counter[13]~q\,
	datad => VCC,
	cin => \HVAC_module|clk_divider:counter[12]~2\,
	combout => \HVAC_module|clk_divider:counter[13]~1_combout\,
	cout => \HVAC_module|clk_divider:counter[13]~2\);

-- Location: FF_X16_Y12_N3
\HVAC_module|clk_divider:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_module|clk_divider:counter[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_module|clk_divider:counter[13]~q\);

-- Location: LCCOMB_X16_Y12_N4
\HVAC_module|clk_divider:counter[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[14]~1_combout\ = (\HVAC_module|clk_divider:counter[14]~q\ & (!\HVAC_module|clk_divider:counter[13]~2\)) # (!\HVAC_module|clk_divider:counter[14]~q\ & ((\HVAC_module|clk_divider:counter[13]~2\) # (GND)))
-- \HVAC_module|clk_divider:counter[14]~2\ = CARRY((!\HVAC_module|clk_divider:counter[13]~2\) # (!\HVAC_module|clk_divider:counter[14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_module|clk_divider:counter[14]~q\,
	datad => VCC,
	cin => \HVAC_module|clk_divider:counter[13]~2\,
	combout => \HVAC_module|clk_divider:counter[14]~1_combout\,
	cout => \HVAC_module|clk_divider:counter[14]~2\);

-- Location: FF_X16_Y12_N5
\HVAC_module|clk_divider:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_module|clk_divider:counter[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_module|clk_divider:counter[14]~q\);

-- Location: LCCOMB_X16_Y12_N6
\HVAC_module|clk_divider:counter[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[15]~1_combout\ = (\HVAC_module|clk_divider:counter[15]~q\ & (\HVAC_module|clk_divider:counter[14]~2\ $ (GND))) # (!\HVAC_module|clk_divider:counter[15]~q\ & (!\HVAC_module|clk_divider:counter[14]~2\ & VCC))
-- \HVAC_module|clk_divider:counter[15]~2\ = CARRY((\HVAC_module|clk_divider:counter[15]~q\ & !\HVAC_module|clk_divider:counter[14]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_module|clk_divider:counter[15]~q\,
	datad => VCC,
	cin => \HVAC_module|clk_divider:counter[14]~2\,
	combout => \HVAC_module|clk_divider:counter[15]~1_combout\,
	cout => \HVAC_module|clk_divider:counter[15]~2\);

-- Location: FF_X16_Y12_N7
\HVAC_module|clk_divider:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_module|clk_divider:counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_module|clk_divider:counter[15]~q\);

-- Location: LCCOMB_X16_Y12_N8
\HVAC_module|clk_divider:counter[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[16]~1_combout\ = (\HVAC_module|clk_divider:counter[16]~q\ & (!\HVAC_module|clk_divider:counter[15]~2\)) # (!\HVAC_module|clk_divider:counter[16]~q\ & ((\HVAC_module|clk_divider:counter[15]~2\) # (GND)))
-- \HVAC_module|clk_divider:counter[16]~2\ = CARRY((!\HVAC_module|clk_divider:counter[15]~2\) # (!\HVAC_module|clk_divider:counter[16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_module|clk_divider:counter[16]~q\,
	datad => VCC,
	cin => \HVAC_module|clk_divider:counter[15]~2\,
	combout => \HVAC_module|clk_divider:counter[16]~1_combout\,
	cout => \HVAC_module|clk_divider:counter[16]~2\);

-- Location: FF_X16_Y12_N9
\HVAC_module|clk_divider:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_module|clk_divider:counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_module|clk_divider:counter[16]~q\);

-- Location: LCCOMB_X16_Y12_N10
\HVAC_module|clk_divider:counter[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[17]~1_combout\ = (\HVAC_module|clk_divider:counter[17]~q\ & (\HVAC_module|clk_divider:counter[16]~2\ $ (GND))) # (!\HVAC_module|clk_divider:counter[17]~q\ & (!\HVAC_module|clk_divider:counter[16]~2\ & VCC))
-- \HVAC_module|clk_divider:counter[17]~2\ = CARRY((\HVAC_module|clk_divider:counter[17]~q\ & !\HVAC_module|clk_divider:counter[16]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_module|clk_divider:counter[17]~q\,
	datad => VCC,
	cin => \HVAC_module|clk_divider:counter[16]~2\,
	combout => \HVAC_module|clk_divider:counter[17]~1_combout\,
	cout => \HVAC_module|clk_divider:counter[17]~2\);

-- Location: FF_X16_Y12_N11
\HVAC_module|clk_divider:counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_module|clk_divider:counter[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_module|clk_divider:counter[17]~q\);

-- Location: LCCOMB_X16_Y12_N12
\HVAC_module|clk_divider:counter[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[18]~1_combout\ = (\HVAC_module|clk_divider:counter[18]~q\ & (!\HVAC_module|clk_divider:counter[17]~2\)) # (!\HVAC_module|clk_divider:counter[18]~q\ & ((\HVAC_module|clk_divider:counter[17]~2\) # (GND)))
-- \HVAC_module|clk_divider:counter[18]~2\ = CARRY((!\HVAC_module|clk_divider:counter[17]~2\) # (!\HVAC_module|clk_divider:counter[18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_module|clk_divider:counter[18]~q\,
	datad => VCC,
	cin => \HVAC_module|clk_divider:counter[17]~2\,
	combout => \HVAC_module|clk_divider:counter[18]~1_combout\,
	cout => \HVAC_module|clk_divider:counter[18]~2\);

-- Location: FF_X16_Y12_N13
\HVAC_module|clk_divider:counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_module|clk_divider:counter[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_module|clk_divider:counter[18]~q\);

-- Location: LCCOMB_X16_Y12_N14
\HVAC_module|clk_divider:counter[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[19]~1_combout\ = (\HVAC_module|clk_divider:counter[19]~q\ & (\HVAC_module|clk_divider:counter[18]~2\ $ (GND))) # (!\HVAC_module|clk_divider:counter[19]~q\ & (!\HVAC_module|clk_divider:counter[18]~2\ & VCC))
-- \HVAC_module|clk_divider:counter[19]~2\ = CARRY((\HVAC_module|clk_divider:counter[19]~q\ & !\HVAC_module|clk_divider:counter[18]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_module|clk_divider:counter[19]~q\,
	datad => VCC,
	cin => \HVAC_module|clk_divider:counter[18]~2\,
	combout => \HVAC_module|clk_divider:counter[19]~1_combout\,
	cout => \HVAC_module|clk_divider:counter[19]~2\);

-- Location: FF_X16_Y12_N15
\HVAC_module|clk_divider:counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_module|clk_divider:counter[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_module|clk_divider:counter[19]~q\);

-- Location: LCCOMB_X16_Y12_N16
\HVAC_module|clk_divider:counter[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[20]~1_combout\ = (\HVAC_module|clk_divider:counter[20]~q\ & (!\HVAC_module|clk_divider:counter[19]~2\)) # (!\HVAC_module|clk_divider:counter[20]~q\ & ((\HVAC_module|clk_divider:counter[19]~2\) # (GND)))
-- \HVAC_module|clk_divider:counter[20]~2\ = CARRY((!\HVAC_module|clk_divider:counter[19]~2\) # (!\HVAC_module|clk_divider:counter[20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_module|clk_divider:counter[20]~q\,
	datad => VCC,
	cin => \HVAC_module|clk_divider:counter[19]~2\,
	combout => \HVAC_module|clk_divider:counter[20]~1_combout\,
	cout => \HVAC_module|clk_divider:counter[20]~2\);

-- Location: FF_X16_Y12_N17
\HVAC_module|clk_divider:counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_module|clk_divider:counter[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_module|clk_divider:counter[20]~q\);

-- Location: LCCOMB_X16_Y12_N18
\HVAC_module|clk_divider:counter[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[21]~1_combout\ = (\HVAC_module|clk_divider:counter[21]~q\ & (\HVAC_module|clk_divider:counter[20]~2\ $ (GND))) # (!\HVAC_module|clk_divider:counter[21]~q\ & (!\HVAC_module|clk_divider:counter[20]~2\ & VCC))
-- \HVAC_module|clk_divider:counter[21]~2\ = CARRY((\HVAC_module|clk_divider:counter[21]~q\ & !\HVAC_module|clk_divider:counter[20]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_module|clk_divider:counter[21]~q\,
	datad => VCC,
	cin => \HVAC_module|clk_divider:counter[20]~2\,
	combout => \HVAC_module|clk_divider:counter[21]~1_combout\,
	cout => \HVAC_module|clk_divider:counter[21]~2\);

-- Location: FF_X16_Y12_N19
\HVAC_module|clk_divider:counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_module|clk_divider:counter[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_module|clk_divider:counter[21]~q\);

-- Location: LCCOMB_X16_Y12_N20
\HVAC_module|clk_divider:counter[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[22]~1_combout\ = (\HVAC_module|clk_divider:counter[22]~q\ & (!\HVAC_module|clk_divider:counter[21]~2\)) # (!\HVAC_module|clk_divider:counter[22]~q\ & ((\HVAC_module|clk_divider:counter[21]~2\) # (GND)))
-- \HVAC_module|clk_divider:counter[22]~2\ = CARRY((!\HVAC_module|clk_divider:counter[21]~2\) # (!\HVAC_module|clk_divider:counter[22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_module|clk_divider:counter[22]~q\,
	datad => VCC,
	cin => \HVAC_module|clk_divider:counter[21]~2\,
	combout => \HVAC_module|clk_divider:counter[22]~1_combout\,
	cout => \HVAC_module|clk_divider:counter[22]~2\);

-- Location: FF_X16_Y12_N21
\HVAC_module|clk_divider:counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_module|clk_divider:counter[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_module|clk_divider:counter[22]~q\);

-- Location: LCCOMB_X16_Y12_N22
\HVAC_module|clk_divider:counter[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|clk_divider:counter[23]~1_combout\ = \HVAC_module|clk_divider:counter[23]~q\ $ (!\HVAC_module|clk_divider:counter[22]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_module|clk_divider:counter[23]~q\,
	cin => \HVAC_module|clk_divider:counter[22]~2\,
	combout => \HVAC_module|clk_divider:counter[23]~1_combout\);

-- Location: FF_X16_Y12_N23
\HVAC_module|clk_divider:counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_module|clk_divider:counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_module|clk_divider:counter[23]~q\);

-- Location: CLKCTRL_G8
\HVAC_module|clk_divider:counter[23]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \HVAC_module|clk_divider:counter[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \HVAC_module|clk_divider:counter[23]~clkctrl_outclk\);

-- Location: IOIBUF_X9_Y0_N22
\pb_n[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(1),
	o => \pb_n[1]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\pb_n[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(2),
	o => \pb_n[2]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\pb_n[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(0),
	o => \pb_n[0]~input_o\);

-- Location: LCCOMB_X15_Y11_N10
\Energy_module|lights[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Energy_module|lights[3]~10_combout\ = (\pb_n[1]~input_o\ & (\pb_n[2]~input_o\ & \pb_n[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb_n[1]~input_o\,
	datac => \pb_n[2]~input_o\,
	datad => \pb_n[0]~input_o\,
	combout => \Energy_module|lights[3]~10_combout\);

-- Location: LCCOMB_X16_Y11_N14
\HVAC_module|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|Add2~2_combout\ = (\HVAC_module|counter~0_combout\ & ((\HVAC_module|counter:cnt[1]~q\ & (!\HVAC_module|Add2~1_cout\)) # (!\HVAC_module|counter:cnt[1]~q\ & (\HVAC_module|Add2~1_cout\ & VCC)))) # (!\HVAC_module|counter~0_combout\ & 
-- ((\HVAC_module|counter:cnt[1]~q\ & ((\HVAC_module|Add2~1_cout\) # (GND))) # (!\HVAC_module|counter:cnt[1]~q\ & (!\HVAC_module|Add2~1_cout\))))
-- \HVAC_module|Add2~3\ = CARRY((\HVAC_module|counter~0_combout\ & (\HVAC_module|counter:cnt[1]~q\ & !\HVAC_module|Add2~1_cout\)) # (!\HVAC_module|counter~0_combout\ & ((\HVAC_module|counter:cnt[1]~q\) # (!\HVAC_module|Add2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_module|counter~0_combout\,
	datab => \HVAC_module|counter:cnt[1]~q\,
	datad => VCC,
	cin => \HVAC_module|Add2~1_cout\,
	combout => \HVAC_module|Add2~2_combout\,
	cout => \HVAC_module|Add2~3\);

-- Location: LCCOMB_X16_Y11_N16
\HVAC_module|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|Add2~4_combout\ = ((\HVAC_module|counter~0_combout\ $ (\HVAC_module|counter:cnt[2]~q\ $ (\HVAC_module|Add2~3\)))) # (GND)
-- \HVAC_module|Add2~5\ = CARRY((\HVAC_module|counter~0_combout\ & ((!\HVAC_module|Add2~3\) # (!\HVAC_module|counter:cnt[2]~q\))) # (!\HVAC_module|counter~0_combout\ & (!\HVAC_module|counter:cnt[2]~q\ & !\HVAC_module|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_module|counter~0_combout\,
	datab => \HVAC_module|counter:cnt[2]~q\,
	datad => VCC,
	cin => \HVAC_module|Add2~3\,
	combout => \HVAC_module|Add2~4_combout\,
	cout => \HVAC_module|Add2~5\);

-- Location: LCCOMB_X16_Y11_N8
\HVAC_module|counter:cnt[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|counter:cnt[2]~2_combout\ = !\HVAC_module|Add2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HVAC_module|Add2~4_combout\,
	combout => \HVAC_module|counter:cnt[2]~2_combout\);

-- Location: LCCOMB_X16_Y11_N10
\HVAC_module|counter:cnt[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|counter:cnt[2]~1_combout\ = (\pb_n[1]~input_o\ & (\pb_n[0]~input_o\ & (\pb_n[2]~input_o\ & \HVAC_module|counter:cnt[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[1]~input_o\,
	datab => \pb_n[0]~input_o\,
	datac => \pb_n[2]~input_o\,
	datad => \HVAC_module|counter:cnt[2]~0_combout\,
	combout => \HVAC_module|counter:cnt[2]~1_combout\);

-- Location: FF_X16_Y11_N9
\HVAC_module|counter:cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HVAC_module|clk_divider:counter[23]~clkctrl_outclk\,
	d => \HVAC_module|counter:cnt[2]~2_combout\,
	ena => \HVAC_module|counter:cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_module|counter:cnt[2]~q\);

-- Location: LCCOMB_X15_Y11_N16
\HVAC_module|cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|cnt~0_combout\ = (\HVAC_module|counter:cnt[1]~q\) # ((\HVAC_module|counter:cnt[0]~q\) # ((\HVAC_module|counter:cnt[2]~q\) # (!\HVAC_module|counter:cnt[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_module|counter:cnt[1]~q\,
	datab => \HVAC_module|counter:cnt[0]~q\,
	datac => \HVAC_module|counter:cnt[2]~q\,
	datad => \HVAC_module|counter:cnt[3]~q\,
	combout => \HVAC_module|cnt~0_combout\);

-- Location: LCCOMB_X16_Y11_N2
\INST4|AgtB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|AgtB~2_combout\ = (\MUX|logic_out[2]~1_combout\ & (!\HVAC_module|counter:cnt[2]~q\ & (\MUX|logic_out[3]~0_combout\ $ (!\HVAC_module|counter:cnt[3]~q\)))) # (!\MUX|logic_out[2]~1_combout\ & (\HVAC_module|counter:cnt[2]~q\ & 
-- (\MUX|logic_out[3]~0_combout\ $ (!\HVAC_module|counter:cnt[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|logic_out[2]~1_combout\,
	datab => \MUX|logic_out[3]~0_combout\,
	datac => \HVAC_module|counter:cnt[2]~q\,
	datad => \HVAC_module|counter:cnt[3]~q\,
	combout => \INST4|AgtB~2_combout\);

-- Location: LCCOMB_X16_Y11_N22
\INST4|AsmB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|AsmB~0_combout\ = (\MUX|logic_out[3]~0_combout\ & (!\MUX|logic_out[2]~1_combout\ & (!\HVAC_module|counter:cnt[2]~q\ & \HVAC_module|counter:cnt[3]~q\))) # (!\MUX|logic_out[3]~0_combout\ & ((\HVAC_module|counter:cnt[3]~q\) # 
-- ((!\MUX|logic_out[2]~1_combout\ & !\HVAC_module|counter:cnt[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|logic_out[2]~1_combout\,
	datab => \MUX|logic_out[3]~0_combout\,
	datac => \HVAC_module|counter:cnt[2]~q\,
	datad => \HVAC_module|counter:cnt[3]~q\,
	combout => \INST4|AsmB~0_combout\);

-- Location: LCCOMB_X16_Y11_N24
\INST4|AsmB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|AsmB~1_combout\ = (\MUX|logic_out[1]~2_combout\ & (!\MUX|logic_out[0]~3_combout\ & (!\HVAC_module|counter:cnt[0]~q\ & !\HVAC_module|counter:cnt[1]~q\))) # (!\MUX|logic_out[1]~2_combout\ & (((!\MUX|logic_out[0]~3_combout\ & 
-- !\HVAC_module|counter:cnt[0]~q\)) # (!\HVAC_module|counter:cnt[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|logic_out[1]~2_combout\,
	datab => \MUX|logic_out[0]~3_combout\,
	datac => \HVAC_module|counter:cnt[0]~q\,
	datad => \HVAC_module|counter:cnt[1]~q\,
	combout => \INST4|AsmB~1_combout\);

-- Location: LCCOMB_X16_Y11_N30
\INST4|AsmB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|AsmB~2_combout\ = (\INST4|AsmB~0_combout\) # ((\INST4|AgtB~2_combout\ & \INST4|AsmB~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST4|AgtB~2_combout\,
	datac => \INST4|AsmB~0_combout\,
	datad => \INST4|AsmB~1_combout\,
	combout => \INST4|AsmB~2_combout\);

-- Location: LCCOMB_X16_Y11_N26
\INST4|AgtB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|AgtB~0_combout\ = (\MUX|logic_out[3]~0_combout\ & (((\MUX|logic_out[2]~1_combout\ & \HVAC_module|counter:cnt[2]~q\)) # (!\HVAC_module|counter:cnt[3]~q\))) # (!\MUX|logic_out[3]~0_combout\ & (\MUX|logic_out[2]~1_combout\ & 
-- (\HVAC_module|counter:cnt[2]~q\ & !\HVAC_module|counter:cnt[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|logic_out[2]~1_combout\,
	datab => \MUX|logic_out[3]~0_combout\,
	datac => \HVAC_module|counter:cnt[2]~q\,
	datad => \HVAC_module|counter:cnt[3]~q\,
	combout => \INST4|AgtB~0_combout\);

-- Location: LCCOMB_X15_Y11_N14
\INST4|AgtB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|AgtB~1_combout\ = (\MUX|logic_out[1]~2_combout\ & ((\HVAC_module|counter:cnt[1]~q\) # ((\MUX|logic_out[0]~3_combout\ & \HVAC_module|counter:cnt[0]~q\)))) # (!\MUX|logic_out[1]~2_combout\ & (\MUX|logic_out[0]~3_combout\ & 
-- (\HVAC_module|counter:cnt[0]~q\ & \HVAC_module|counter:cnt[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|logic_out[0]~3_combout\,
	datab => \MUX|logic_out[1]~2_combout\,
	datac => \HVAC_module|counter:cnt[0]~q\,
	datad => \HVAC_module|counter:cnt[1]~q\,
	combout => \INST4|AgtB~1_combout\);

-- Location: LCCOMB_X16_Y11_N20
\INST4|AgtB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|AgtB~3_combout\ = (\INST4|AgtB~0_combout\) # ((\INST4|AgtB~2_combout\ & \INST4|AgtB~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST4|AgtB~2_combout\,
	datac => \INST4|AgtB~0_combout\,
	datad => \INST4|AgtB~1_combout\,
	combout => \INST4|AgtB~3_combout\);

-- Location: LCCOMB_X16_Y11_N28
\HVAC_module|counter:cnt[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|counter:cnt[2]~0_combout\ = (\INST4|AgtB~3_combout\ & (\HVAC_module|cnt~0_combout\)) # (!\INST4|AgtB~3_combout\ & (((!\HVAC_module|Equal0~0_combout\ & \INST4|AsmB~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_module|cnt~0_combout\,
	datab => \HVAC_module|Equal0~0_combout\,
	datac => \INST4|AsmB~2_combout\,
	datad => \INST4|AgtB~3_combout\,
	combout => \HVAC_module|counter:cnt[2]~0_combout\);

-- Location: LCCOMB_X15_Y11_N4
\HVAC_module|counter:cnt[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|counter:cnt[0]~0_combout\ = \HVAC_module|counter:cnt[0]~q\ $ (((\Energy_module|lights[3]~10_combout\ & \HVAC_module|counter:cnt[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Energy_module|lights[3]~10_combout\,
	datac => \HVAC_module|counter:cnt[0]~q\,
	datad => \HVAC_module|counter:cnt[2]~0_combout\,
	combout => \HVAC_module|counter:cnt[0]~0_combout\);

-- Location: FF_X15_Y11_N5
\HVAC_module|counter:cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HVAC_module|clk_divider:counter[23]~clkctrl_outclk\,
	d => \HVAC_module|counter:cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_module|counter:cnt[0]~q\);

-- Location: LCCOMB_X16_Y11_N12
\HVAC_module|Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|Add2~1_cout\ = CARRY(!\HVAC_module|counter:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_module|counter:cnt[0]~q\,
	datad => VCC,
	cout => \HVAC_module|Add2~1_cout\);

-- Location: LCCOMB_X16_Y11_N4
\HVAC_module|counter:cnt[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|counter:cnt[1]~0_combout\ = !\HVAC_module|Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HVAC_module|Add2~2_combout\,
	combout => \HVAC_module|counter:cnt[1]~0_combout\);

-- Location: FF_X16_Y11_N5
\HVAC_module|counter:cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HVAC_module|clk_divider:counter[23]~clkctrl_outclk\,
	d => \HVAC_module|counter:cnt[1]~0_combout\,
	ena => \HVAC_module|counter:cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_module|counter:cnt[1]~q\);

-- Location: LCCOMB_X16_Y11_N0
\HVAC_module|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|Equal0~0_combout\ = (\HVAC_module|counter:cnt[1]~q\ & (!\HVAC_module|counter:cnt[3]~q\ & (\HVAC_module|counter:cnt[0]~q\ & \HVAC_module|counter:cnt[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_module|counter:cnt[1]~q\,
	datab => \HVAC_module|counter:cnt[3]~q\,
	datac => \HVAC_module|counter:cnt[0]~q\,
	datad => \HVAC_module|counter:cnt[2]~q\,
	combout => \HVAC_module|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y11_N6
\HVAC_module|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|counter~0_combout\ = (!\HVAC_module|Equal0~0_combout\ & (\INST4|AsmB~2_combout\ & !\INST4|AgtB~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_module|Equal0~0_combout\,
	datac => \INST4|AsmB~2_combout\,
	datad => \INST4|AgtB~3_combout\,
	combout => \HVAC_module|counter~0_combout\);

-- Location: LCCOMB_X16_Y11_N18
\HVAC_module|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_module|Add2~6_combout\ = \HVAC_module|counter:cnt[3]~q\ $ (\HVAC_module|Add2~5\ $ (\HVAC_module|counter~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_module|counter:cnt[3]~q\,
	datad => \HVAC_module|counter~0_combout\,
	cin => \HVAC_module|Add2~5\,
	combout => \HVAC_module|Add2~6_combout\);

-- Location: FF_X16_Y11_N19
\HVAC_module|counter:cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HVAC_module|clk_divider:counter[23]~clkctrl_outclk\,
	d => \HVAC_module|Add2~6_combout\,
	ena => \HVAC_module|counter:cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_module|counter:cnt[3]~q\);

-- Location: LCCOMB_X15_Y12_N6
\Decoder_down|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder_down|Mux5~0_combout\ = (\HVAC_module|counter:cnt[3]~q\ & ((\HVAC_module|counter:cnt[0]~q\ & (!\HVAC_module|counter:cnt[2]~q\)) # (!\HVAC_module|counter:cnt[0]~q\ & ((!\HVAC_module|counter:cnt[1]~q\))))) # (!\HVAC_module|counter:cnt[3]~q\ & 
-- (!\HVAC_module|counter:cnt[2]~q\ & (\HVAC_module|counter:cnt[0]~q\ $ (\HVAC_module|counter:cnt[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_module|counter:cnt[3]~q\,
	datab => \HVAC_module|counter:cnt[2]~q\,
	datac => \HVAC_module|counter:cnt[0]~q\,
	datad => \HVAC_module|counter:cnt[1]~q\,
	combout => \Decoder_down|Mux5~0_combout\);

-- Location: LCCOMB_X15_Y12_N24
\inst3|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT_TEMP[1]~0_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (!\Decoder_up|Mux5~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((!\Decoder_down|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder_up|Mux5~0_combout\,
	datac => \inst3|clk_proc:COUNT[10]~q\,
	datad => \Decoder_down|Mux5~0_combout\,
	combout => \inst3|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X15_Y12_N14
\Decoder_up|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder_up|Mux1~0_combout\ = (\MUX|logic_out[3]~0_combout\ & (\MUX|logic_out[2]~1_combout\ & ((!\MUX|logic_out[1]~2_combout\)))) # (!\MUX|logic_out[3]~0_combout\ & ((\MUX|logic_out[2]~1_combout\ & (\MUX|logic_out[0]~3_combout\ & 
-- \MUX|logic_out[1]~2_combout\)) # (!\MUX|logic_out[2]~1_combout\ & ((\MUX|logic_out[0]~3_combout\) # (\MUX|logic_out[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|logic_out[3]~0_combout\,
	datab => \MUX|logic_out[2]~1_combout\,
	datac => \MUX|logic_out[0]~3_combout\,
	datad => \MUX|logic_out[1]~2_combout\,
	combout => \Decoder_up|Mux1~0_combout\);

-- Location: LCCOMB_X15_Y12_N0
\Decoder_down|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder_down|Mux1~0_combout\ = (\HVAC_module|counter:cnt[3]~q\ & (!\HVAC_module|counter:cnt[2]~q\ & ((\HVAC_module|counter:cnt[1]~q\)))) # (!\HVAC_module|counter:cnt[3]~q\ & ((\HVAC_module|counter:cnt[2]~q\ & ((!\HVAC_module|counter:cnt[1]~q\) # 
-- (!\HVAC_module|counter:cnt[0]~q\))) # (!\HVAC_module|counter:cnt[2]~q\ & (!\HVAC_module|counter:cnt[0]~q\ & !\HVAC_module|counter:cnt[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_module|counter:cnt[3]~q\,
	datab => \HVAC_module|counter:cnt[2]~q\,
	datac => \HVAC_module|counter:cnt[0]~q\,
	datad => \HVAC_module|counter:cnt[1]~q\,
	combout => \Decoder_down|Mux1~0_combout\);

-- Location: LCCOMB_X15_Y12_N2
\inst3|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT_TEMP[5]~1_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (!\Decoder_up|Mux1~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((!\Decoder_down|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[10]~q\,
	datac => \Decoder_up|Mux1~0_combout\,
	datad => \Decoder_down|Mux1~0_combout\,
	combout => \inst3|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X15_Y12_N16
\Decoder_up|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder_up|Mux0~0_combout\ = (\MUX|logic_out[3]~0_combout\) # ((\MUX|logic_out[2]~1_combout\ & ((!\MUX|logic_out[1]~2_combout\) # (!\MUX|logic_out[0]~3_combout\))) # (!\MUX|logic_out[2]~1_combout\ & ((\MUX|logic_out[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|logic_out[3]~0_combout\,
	datab => \MUX|logic_out[2]~1_combout\,
	datac => \MUX|logic_out[0]~3_combout\,
	datad => \MUX|logic_out[1]~2_combout\,
	combout => \Decoder_up|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y12_N28
\Decoder_down|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder_down|Mux0~0_combout\ = (\HVAC_module|counter:cnt[3]~q\) # ((\HVAC_module|counter:cnt[2]~q\ & ((!\HVAC_module|counter:cnt[1]~q\))) # (!\HVAC_module|counter:cnt[2]~q\ & ((\HVAC_module|counter:cnt[0]~q\) # (\HVAC_module|counter:cnt[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_module|counter:cnt[2]~q\,
	datab => \HVAC_module|counter:cnt[0]~q\,
	datac => \HVAC_module|counter:cnt[1]~q\,
	datad => \HVAC_module|counter:cnt[3]~q\,
	combout => \Decoder_down|Mux0~0_combout\);

-- Location: LCCOMB_X15_Y12_N26
\inst3|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT_TEMP[6]~2_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (\Decoder_up|Mux0~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((\Decoder_down|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder_up|Mux0~0_combout\,
	datac => \inst3|clk_proc:COUNT[10]~q\,
	datad => \Decoder_down|Mux0~0_combout\,
	combout => \inst3|DOUT_TEMP[6]~2_combout\);

-- Location: LCCOMB_X17_Y11_N20
\Energy_module|lights[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Energy_module|lights[1]~11_combout\ = (\INST4|AsmB~2_combout\) # ((\INST4|AgtB~0_combout\) # ((\INST4|AgtB~1_combout\ & \INST4|AgtB~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4|AsmB~2_combout\,
	datab => \INST4|AgtB~1_combout\,
	datac => \INST4|AgtB~0_combout\,
	datad => \INST4|AgtB~2_combout\,
	combout => \Energy_module|lights[1]~11_combout\);

-- Location: LCCOMB_X17_Y11_N30
\Energy_module|lights[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Energy_module|lights[2]~12_combout\ = (!\INST4|AgtB~3_combout\ & ((\INST4|AsmB~0_combout\) # ((\INST4|AgtB~2_combout\ & \INST4|AsmB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4|AgtB~3_combout\,
	datab => \INST4|AgtB~2_combout\,
	datac => \INST4|AsmB~1_combout\,
	datad => \INST4|AsmB~0_combout\,
	combout => \Energy_module|lights[2]~12_combout\);

-- Location: LCCOMB_X15_Y12_N8
\INST4|Com0|AeqB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|Com0|AeqB~0_combout\ = \HVAC_module|counter:cnt[0]~q\ $ (((\pb_n[3]~input_o\ & (!\sw[0]~input_o\)) # (!\pb_n[3]~input_o\ & ((!\sw[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \pb_n[3]~input_o\,
	datac => \HVAC_module|counter:cnt[0]~q\,
	datad => \sw[4]~input_o\,
	combout => \INST4|Com0|AeqB~0_combout\);

-- Location: LCCOMB_X15_Y11_N0
\INST4|AeqB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|AeqB~0_combout\ = ((\INST4|Com0|AeqB~0_combout\) # (\HVAC_module|counter:cnt[1]~q\ $ (!\MUX|logic_out[1]~2_combout\))) # (!\INST4|AgtB~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_module|counter:cnt[1]~q\,
	datab => \INST4|AgtB~2_combout\,
	datac => \INST4|Com0|AeqB~0_combout\,
	datad => \MUX|logic_out[1]~2_combout\,
	combout => \INST4|AeqB~0_combout\);

-- Location: LCCOMB_X15_Y11_N2
\Energy_module|lights[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Energy_module|lights\(3) = (\pb_n[0]~input_o\ & (\pb_n[1]~input_o\ & (\pb_n[2]~input_o\ & \INST4|AeqB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[0]~input_o\,
	datab => \pb_n[1]~input_o\,
	datac => \pb_n[2]~input_o\,
	datad => \INST4|AeqB~0_combout\,
	combout => \Energy_module|lights\(3));

-- Location: LCCOMB_X15_Y11_N26
\Tester_module|TEST_PASS~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tester_module|TEST_PASS~3_combout\ = (\sw[1]~input_o\ & (!\HVAC_module|counter:cnt[1]~q\ & ((!\HVAC_module|counter:cnt[0]~q\) # (!\sw[0]~input_o\)))) # (!\sw[1]~input_o\ & (((!\HVAC_module|counter:cnt[1]~q\) # (!\HVAC_module|counter:cnt[0]~q\)) # 
-- (!\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \HVAC_module|counter:cnt[0]~q\,
	datac => \sw[1]~input_o\,
	datad => \HVAC_module|counter:cnt[1]~q\,
	combout => \Tester_module|TEST_PASS~3_combout\);

-- Location: LCCOMB_X15_Y11_N28
\Tester_module|TEST_PASS~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tester_module|TEST_PASS~4_combout\ = (\Tester_module|TEST_PASS~3_combout\ & ((!\HVAC_module|counter:cnt[2]~q\) # (!\sw[2]~input_o\))) # (!\Tester_module|TEST_PASS~3_combout\ & (!\sw[2]~input_o\ & !\HVAC_module|counter:cnt[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tester_module|TEST_PASS~3_combout\,
	datab => \sw[2]~input_o\,
	datac => \HVAC_module|counter:cnt[2]~q\,
	combout => \Tester_module|TEST_PASS~4_combout\);

-- Location: LCCOMB_X15_Y11_N22
\Tester_module|TEST_PASS~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tester_module|TEST_PASS~5_combout\ = (\INST4|AgtB~3_combout\ & ((\sw[3]~input_o\ & ((!\Tester_module|TEST_PASS~4_combout\) # (!\HVAC_module|counter:cnt[3]~q\))) # (!\sw[3]~input_o\ & (!\HVAC_module|counter:cnt[3]~q\ & 
-- !\Tester_module|TEST_PASS~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \HVAC_module|counter:cnt[3]~q\,
	datac => \INST4|AgtB~3_combout\,
	datad => \Tester_module|TEST_PASS~4_combout\,
	combout => \Tester_module|TEST_PASS~5_combout\);

-- Location: LCCOMB_X15_Y11_N12
\Tester_module|TEST_PASS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tester_module|TEST_PASS~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\) # ((\HVAC_module|counter:cnt[0]~q\) # (\HVAC_module|counter:cnt[1]~q\)))) # (!\sw[1]~input_o\ & (\HVAC_module|counter:cnt[1]~q\ & ((\sw[0]~input_o\) # 
-- (\HVAC_module|counter:cnt[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \HVAC_module|counter:cnt[0]~q\,
	datac => \sw[1]~input_o\,
	datad => \HVAC_module|counter:cnt[1]~q\,
	combout => \Tester_module|TEST_PASS~0_combout\);

-- Location: LCCOMB_X15_Y11_N18
\Tester_module|TEST_PASS~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tester_module|TEST_PASS~1_combout\ = (\sw[2]~input_o\ & ((\HVAC_module|counter:cnt[2]~q\) # (\Tester_module|TEST_PASS~0_combout\))) # (!\sw[2]~input_o\ & (\HVAC_module|counter:cnt[2]~q\ & \Tester_module|TEST_PASS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[2]~input_o\,
	datac => \HVAC_module|counter:cnt[2]~q\,
	datad => \Tester_module|TEST_PASS~0_combout\,
	combout => \Tester_module|TEST_PASS~1_combout\);

-- Location: LCCOMB_X15_Y11_N20
\Tester_module|TEST_PASS~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tester_module|TEST_PASS~2_combout\ = (\INST4|AsmB~2_combout\ & ((\sw[3]~input_o\ & (\HVAC_module|counter:cnt[3]~q\ & !\Tester_module|TEST_PASS~1_combout\)) # (!\sw[3]~input_o\ & ((\HVAC_module|counter:cnt[3]~q\) # 
-- (!\Tester_module|TEST_PASS~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \HVAC_module|counter:cnt[3]~q\,
	datac => \INST4|AsmB~2_combout\,
	datad => \Tester_module|TEST_PASS~1_combout\,
	combout => \Tester_module|TEST_PASS~2_combout\);

-- Location: LCCOMB_X15_Y11_N30
\Tester_module|TEST_PASS~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tester_module|TEST_PASS~7_combout\ = (\sw[0]~input_o\ & (!\HVAC_module|counter:cnt[0]~q\ & (\sw[1]~input_o\ $ (\HVAC_module|counter:cnt[1]~q\)))) # (!\sw[0]~input_o\ & (\HVAC_module|counter:cnt[0]~q\ & (\sw[1]~input_o\ $ 
-- (\HVAC_module|counter:cnt[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \HVAC_module|counter:cnt[0]~q\,
	datac => \sw[1]~input_o\,
	datad => \HVAC_module|counter:cnt[1]~q\,
	combout => \Tester_module|TEST_PASS~7_combout\);

-- Location: LCCOMB_X15_Y11_N8
\Tester_module|TEST_PASS~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tester_module|TEST_PASS~6_combout\ = (\sw[3]~input_o\ & (\HVAC_module|counter:cnt[3]~q\ & (\HVAC_module|counter:cnt[2]~q\ $ (\sw[2]~input_o\)))) # (!\sw[3]~input_o\ & (!\HVAC_module|counter:cnt[3]~q\ & (\HVAC_module|counter:cnt[2]~q\ $ 
-- (\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \HVAC_module|counter:cnt[2]~q\,
	datac => \sw[2]~input_o\,
	datad => \HVAC_module|counter:cnt[3]~q\,
	combout => \Tester_module|TEST_PASS~6_combout\);

-- Location: LCCOMB_X15_Y11_N24
\Tester_module|TEST_PASS~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tester_module|TEST_PASS~8_combout\ = (\Tester_module|TEST_PASS~7_combout\ & (\Tester_module|TEST_PASS~6_combout\ & !\INST4|AeqB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tester_module|TEST_PASS~7_combout\,
	datab => \Tester_module|TEST_PASS~6_combout\,
	datad => \INST4|AeqB~0_combout\,
	combout => \Tester_module|TEST_PASS~8_combout\);

-- Location: LCCOMB_X15_Y11_N6
\Tester_module|TEST_PASS~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tester_module|TEST_PASS~9_combout\ = (!\pb_n[2]~input_o\ & ((\Tester_module|TEST_PASS~5_combout\) # ((\Tester_module|TEST_PASS~2_combout\) # (\Tester_module|TEST_PASS~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tester_module|TEST_PASS~5_combout\,
	datab => \pb_n[2]~input_o\,
	datac => \Tester_module|TEST_PASS~2_combout\,
	datad => \Tester_module|TEST_PASS~8_combout\,
	combout => \Tester_module|TEST_PASS~9_combout\);

-- Location: LCCOMB_X16_Y13_N4
\Decoder_down|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder_down|Mux6~0_combout\ = (\HVAC_module|counter:cnt[2]~q\ & (!\HVAC_module|counter:cnt[0]~q\ & (\HVAC_module|counter:cnt[3]~q\ $ (\HVAC_module|counter:cnt[1]~q\)))) # (!\HVAC_module|counter:cnt[2]~q\ & (\HVAC_module|counter:cnt[1]~q\ & 
-- ((\HVAC_module|counter:cnt[3]~q\) # (\HVAC_module|counter:cnt[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_module|counter:cnt[3]~q\,
	datab => \HVAC_module|counter:cnt[2]~q\,
	datac => \HVAC_module|counter:cnt[0]~q\,
	datad => \HVAC_module|counter:cnt[1]~q\,
	combout => \Decoder_down|Mux6~0_combout\);

-- Location: LCCOMB_X15_Y13_N0
\Decoder_up|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder_up|Mux6~0_combout\ = (\MUX|logic_out[2]~1_combout\ & (!\MUX|logic_out[1]~2_combout\ & ((\MUX|logic_out[3]~0_combout\) # (!\MUX|logic_out[0]~3_combout\)))) # (!\MUX|logic_out[2]~1_combout\ & (\MUX|logic_out[0]~3_combout\ & 
-- (\MUX|logic_out[3]~0_combout\ $ (!\MUX|logic_out[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|logic_out[2]~1_combout\,
	datab => \MUX|logic_out[3]~0_combout\,
	datac => \MUX|logic_out[0]~3_combout\,
	datad => \MUX|logic_out[1]~2_combout\,
	combout => \Decoder_up|Mux6~0_combout\);

-- Location: LCCOMB_X15_Y13_N2
\inst3|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[0]~0_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & ((\Decoder_up|Mux6~0_combout\))) # (!\inst3|clk_proc:COUNT[10]~q\ & (\Decoder_down|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_down|Mux6~0_combout\,
	datab => \inst3|clk_proc:COUNT[10]~q\,
	datad => \Decoder_up|Mux6~0_combout\,
	combout => \inst3|DOUT[0]~0_combout\);

-- Location: LCCOMB_X15_Y13_N4
\Decoder_up|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder_up|Mux4~0_combout\ = (\MUX|logic_out[2]~1_combout\ & (\MUX|logic_out[3]~0_combout\ & ((\MUX|logic_out[1]~2_combout\) # (!\MUX|logic_out[0]~3_combout\)))) # (!\MUX|logic_out[2]~1_combout\ & (!\MUX|logic_out[3]~0_combout\ & 
-- (!\MUX|logic_out[0]~3_combout\ & \MUX|logic_out[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|logic_out[2]~1_combout\,
	datab => \MUX|logic_out[3]~0_combout\,
	datac => \MUX|logic_out[0]~3_combout\,
	datad => \MUX|logic_out[1]~2_combout\,
	combout => \Decoder_up|Mux4~0_combout\);

-- Location: LCCOMB_X16_Y13_N2
\Decoder_down|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder_down|Mux4~0_combout\ = (\HVAC_module|counter:cnt[3]~q\ & (!\HVAC_module|counter:cnt[2]~q\ & ((\HVAC_module|counter:cnt[0]~q\) # (!\HVAC_module|counter:cnt[1]~q\)))) # (!\HVAC_module|counter:cnt[3]~q\ & (\HVAC_module|counter:cnt[2]~q\ & 
-- (\HVAC_module|counter:cnt[0]~q\ & !\HVAC_module|counter:cnt[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_module|counter:cnt[3]~q\,
	datab => \HVAC_module|counter:cnt[2]~q\,
	datac => \HVAC_module|counter:cnt[0]~q\,
	datad => \HVAC_module|counter:cnt[1]~q\,
	combout => \Decoder_down|Mux4~0_combout\);

-- Location: LCCOMB_X15_Y13_N6
\inst3|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[2]~2_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (\Decoder_up|Mux4~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((\Decoder_down|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[10]~q\,
	datac => \Decoder_up|Mux4~0_combout\,
	datad => \Decoder_down|Mux4~0_combout\,
	combout => \inst3|DOUT[2]~2_combout\);

-- Location: LCCOMB_X15_Y13_N8
\Decoder_up|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder_up|Mux3~0_combout\ = (\MUX|logic_out[1]~2_combout\ & ((\MUX|logic_out[2]~1_combout\ & ((\MUX|logic_out[0]~3_combout\))) # (!\MUX|logic_out[2]~1_combout\ & (\MUX|logic_out[3]~0_combout\ & !\MUX|logic_out[0]~3_combout\)))) # 
-- (!\MUX|logic_out[1]~2_combout\ & (!\MUX|logic_out[3]~0_combout\ & (\MUX|logic_out[2]~1_combout\ $ (\MUX|logic_out[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|logic_out[2]~1_combout\,
	datab => \MUX|logic_out[3]~0_combout\,
	datac => \MUX|logic_out[0]~3_combout\,
	datad => \MUX|logic_out[1]~2_combout\,
	combout => \Decoder_up|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y12_N26
\Decoder_down|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder_down|Mux3~0_combout\ = (\HVAC_module|counter:cnt[1]~q\ & (!\HVAC_module|counter:cnt[3]~q\ & (\HVAC_module|counter:cnt[2]~q\ $ (\HVAC_module|counter:cnt[0]~q\)))) # (!\HVAC_module|counter:cnt[1]~q\ & ((\HVAC_module|counter:cnt[2]~q\ & 
-- (\HVAC_module|counter:cnt[0]~q\ & \HVAC_module|counter:cnt[3]~q\)) # (!\HVAC_module|counter:cnt[2]~q\ & (!\HVAC_module|counter:cnt[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_module|counter:cnt[2]~q\,
	datab => \HVAC_module|counter:cnt[0]~q\,
	datac => \HVAC_module|counter:cnt[1]~q\,
	datad => \HVAC_module|counter:cnt[3]~q\,
	combout => \Decoder_down|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y13_N6
\inst3|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[3]~3_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (\Decoder_up|Mux3~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((\Decoder_down|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_up|Mux3~0_combout\,
	datab => \Decoder_down|Mux3~0_combout\,
	datad => \inst3|clk_proc:COUNT[10]~q\,
	combout => \inst3|DOUT[3]~3_combout\);

-- Location: LCCOMB_X15_Y12_N28
\Decoder_down|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder_down|Mux2~0_combout\ = (\HVAC_module|counter:cnt[1]~q\ & ((\HVAC_module|counter:cnt[2]~q\ & ((!\HVAC_module|counter:cnt[0]~q\))) # (!\HVAC_module|counter:cnt[2]~q\ & (!\HVAC_module|counter:cnt[3]~q\)))) # (!\HVAC_module|counter:cnt[1]~q\ & 
-- (!\HVAC_module|counter:cnt[3]~q\ & ((!\HVAC_module|counter:cnt[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_module|counter:cnt[3]~q\,
	datab => \HVAC_module|counter:cnt[2]~q\,
	datac => \HVAC_module|counter:cnt[0]~q\,
	datad => \HVAC_module|counter:cnt[1]~q\,
	combout => \Decoder_down|Mux2~0_combout\);

-- Location: LCCOMB_X15_Y12_N18
\Decoder_up|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder_up|Mux2~0_combout\ = (\MUX|logic_out[1]~2_combout\ & (!\MUX|logic_out[3]~0_combout\ & ((\MUX|logic_out[0]~3_combout\)))) # (!\MUX|logic_out[1]~2_combout\ & ((\MUX|logic_out[2]~1_combout\ & (!\MUX|logic_out[3]~0_combout\)) # 
-- (!\MUX|logic_out[2]~1_combout\ & ((\MUX|logic_out[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|logic_out[3]~0_combout\,
	datab => \MUX|logic_out[2]~1_combout\,
	datac => \MUX|logic_out[0]~3_combout\,
	datad => \MUX|logic_out[1]~2_combout\,
	combout => \Decoder_up|Mux2~0_combout\);

-- Location: LCCOMB_X15_Y12_N10
\inst3|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[4]~4_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & ((\Decoder_up|Mux2~0_combout\))) # (!\inst3|clk_proc:COUNT[10]~q\ & (\Decoder_down|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder_down|Mux2~0_combout\,
	datac => \inst3|clk_proc:COUNT[10]~q\,
	datad => \Decoder_up|Mux2~0_combout\,
	combout => \inst3|DOUT[4]~4_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;
END structure;


