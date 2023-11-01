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

-- DATE "10/25/2023 12:18:09"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	rom32 IS
    PORT (
	ROMaddr : IN std_logic_vector(9 DOWNTO 0);
	clk : IN std_logic;
	rden : IN std_logic;
	data : IN std_logic_vector(31 DOWNTO 0);
	wren : IN std_logic;
	output : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END rom32;

-- Design Ports Information
-- data[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[8]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[9]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[10]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[11]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[12]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[13]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[14]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[15]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[16]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[17]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[18]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[19]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[20]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[21]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[22]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[23]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[24]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[25]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[26]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[27]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[28]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[29]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[30]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[31]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[10]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[11]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[12]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[13]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[14]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[15]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[16]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[17]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[18]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[19]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[20]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[21]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[22]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[23]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[24]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[25]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[26]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[27]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[28]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[29]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[30]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[31]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rden	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMaddr[0]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMaddr[1]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMaddr[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMaddr[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMaddr[4]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMaddr[5]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMaddr[6]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMaddr[7]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMaddr[8]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMaddr[9]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rom32 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ROMaddr : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rden : std_logic;
SIGNAL ww_data : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_wren : std_logic;
SIGNAL ww_output : std_logic_vector(31 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \data[8]~input_o\ : std_logic;
SIGNAL \data[9]~input_o\ : std_logic;
SIGNAL \data[10]~input_o\ : std_logic;
SIGNAL \data[11]~input_o\ : std_logic;
SIGNAL \data[12]~input_o\ : std_logic;
SIGNAL \data[13]~input_o\ : std_logic;
SIGNAL \data[14]~input_o\ : std_logic;
SIGNAL \data[15]~input_o\ : std_logic;
SIGNAL \data[16]~input_o\ : std_logic;
SIGNAL \data[17]~input_o\ : std_logic;
SIGNAL \data[18]~input_o\ : std_logic;
SIGNAL \data[19]~input_o\ : std_logic;
SIGNAL \data[20]~input_o\ : std_logic;
SIGNAL \data[21]~input_o\ : std_logic;
SIGNAL \data[22]~input_o\ : std_logic;
SIGNAL \data[23]~input_o\ : std_logic;
SIGNAL \data[24]~input_o\ : std_logic;
SIGNAL \data[25]~input_o\ : std_logic;
SIGNAL \data[26]~input_o\ : std_logic;
SIGNAL \data[27]~input_o\ : std_logic;
SIGNAL \data[28]~input_o\ : std_logic;
SIGNAL \data[29]~input_o\ : std_logic;
SIGNAL \data[30]~input_o\ : std_logic;
SIGNAL \data[31]~input_o\ : std_logic;
SIGNAL \wren~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \output[8]~output_o\ : std_logic;
SIGNAL \output[9]~output_o\ : std_logic;
SIGNAL \output[10]~output_o\ : std_logic;
SIGNAL \output[11]~output_o\ : std_logic;
SIGNAL \output[12]~output_o\ : std_logic;
SIGNAL \output[13]~output_o\ : std_logic;
SIGNAL \output[14]~output_o\ : std_logic;
SIGNAL \output[15]~output_o\ : std_logic;
SIGNAL \output[16]~output_o\ : std_logic;
SIGNAL \output[17]~output_o\ : std_logic;
SIGNAL \output[18]~output_o\ : std_logic;
SIGNAL \output[19]~output_o\ : std_logic;
SIGNAL \output[20]~output_o\ : std_logic;
SIGNAL \output[21]~output_o\ : std_logic;
SIGNAL \output[22]~output_o\ : std_logic;
SIGNAL \output[23]~output_o\ : std_logic;
SIGNAL \output[24]~output_o\ : std_logic;
SIGNAL \output[25]~output_o\ : std_logic;
SIGNAL \output[26]~output_o\ : std_logic;
SIGNAL \output[27]~output_o\ : std_logic;
SIGNAL \output[28]~output_o\ : std_logic;
SIGNAL \output[29]~output_o\ : std_logic;
SIGNAL \output[30]~output_o\ : std_logic;
SIGNAL \output[31]~output_o\ : std_logic;
SIGNAL \rden~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ROM1|altsyncram_component|auto_generated|rden_a_store~q\ : std_logic;
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a0~0_combout\ : std_logic;
SIGNAL \ROMaddr[0]~input_o\ : std_logic;
SIGNAL \ROMaddr[1]~input_o\ : std_logic;
SIGNAL \ROMaddr[2]~input_o\ : std_logic;
SIGNAL \ROMaddr[3]~input_o\ : std_logic;
SIGNAL \ROMaddr[4]~input_o\ : std_logic;
SIGNAL \ROMaddr[5]~input_o\ : std_logic;
SIGNAL \ROMaddr[6]~input_o\ : std_logic;
SIGNAL \ROMaddr[7]~input_o\ : std_logic;
SIGNAL \ROMaddr[8]~input_o\ : std_logic;
SIGNAL \ROMaddr[9]~input_o\ : std_logic;
SIGNAL \ROM1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ROMaddr <= ROMaddr;
ww_clk <= clk;
ww_rden <= rden;
ww_data <= data;
ww_wren <= wren;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\ROMaddr[9]~input_o\ & \ROMaddr[8]~input_o\ & \ROMaddr[7]~input_o\ & \ROMaddr[6]~input_o\ & \ROMaddr[5]~input_o\ & \ROMaddr[4]~input_o\ & \ROMaddr[3]~input_o\ & \ROMaddr[2]~input_o\
& \ROMaddr[1]~input_o\ & \ROMaddr[0]~input_o\);

\ROM1|altsyncram_component|auto_generated|q_a\(0) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\ROM1|altsyncram_component|auto_generated|q_a\(1) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\ROM1|altsyncram_component|auto_generated|q_a\(2) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\ROM1|altsyncram_component|auto_generated|q_a\(3) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\ROM1|altsyncram_component|auto_generated|q_a\(4) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\ROM1|altsyncram_component|auto_generated|q_a\(5) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\ROM1|altsyncram_component|auto_generated|q_a\(6) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\ROM1|altsyncram_component|auto_generated|q_a\(7) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\ROM1|altsyncram_component|auto_generated|q_a\(8) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);

\ROM1|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\ROMaddr[9]~input_o\ & \ROMaddr[8]~input_o\ & \ROMaddr[7]~input_o\ & \ROMaddr[6]~input_o\ & \ROMaddr[5]~input_o\ & \ROMaddr[4]~input_o\ & \ROMaddr[3]~input_o\ & \ROMaddr[2]~input_o\
& \ROMaddr[1]~input_o\ & \ROMaddr[0]~input_o\);

\ROM1|altsyncram_component|auto_generated|q_a\(9) <= \ROM1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);
\ROM1|altsyncram_component|auto_generated|q_a\(10) <= \ROM1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(1);
\ROM1|altsyncram_component|auto_generated|q_a\(11) <= \ROM1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(2);
\ROM1|altsyncram_component|auto_generated|q_a\(12) <= \ROM1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(3);
\ROM1|altsyncram_component|auto_generated|q_a\(13) <= \ROM1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(4);
\ROM1|altsyncram_component|auto_generated|q_a\(14) <= \ROM1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(5);
\ROM1|altsyncram_component|auto_generated|q_a\(15) <= \ROM1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(6);
\ROM1|altsyncram_component|auto_generated|q_a\(16) <= \ROM1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(7);
\ROM1|altsyncram_component|auto_generated|q_a\(17) <= \ROM1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(8);

\ROM1|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\ROMaddr[9]~input_o\ & \ROMaddr[8]~input_o\ & \ROMaddr[7]~input_o\ & \ROMaddr[6]~input_o\ & \ROMaddr[5]~input_o\ & \ROMaddr[4]~input_o\ & \ROMaddr[3]~input_o\ & 
\ROMaddr[2]~input_o\ & \ROMaddr[1]~input_o\ & \ROMaddr[0]~input_o\);

\ROM1|altsyncram_component|auto_generated|q_a\(18) <= \ROM1|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);
\ROM1|altsyncram_component|auto_generated|q_a\(19) <= \ROM1|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(1);
\ROM1|altsyncram_component|auto_generated|q_a\(20) <= \ROM1|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(2);
\ROM1|altsyncram_component|auto_generated|q_a\(21) <= \ROM1|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(3);
\ROM1|altsyncram_component|auto_generated|q_a\(22) <= \ROM1|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(4);
\ROM1|altsyncram_component|auto_generated|q_a\(23) <= \ROM1|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(5);
\ROM1|altsyncram_component|auto_generated|q_a\(24) <= \ROM1|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(6);
\ROM1|altsyncram_component|auto_generated|q_a\(25) <= \ROM1|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(7);
\ROM1|altsyncram_component|auto_generated|q_a\(26) <= \ROM1|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(8);

\ROM1|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\ROMaddr[9]~input_o\ & \ROMaddr[8]~input_o\ & \ROMaddr[7]~input_o\ & \ROMaddr[6]~input_o\ & \ROMaddr[5]~input_o\ & \ROMaddr[4]~input_o\ & \ROMaddr[3]~input_o\ & 
\ROMaddr[2]~input_o\ & \ROMaddr[1]~input_o\ & \ROMaddr[0]~input_o\);

\ROM1|altsyncram_component|auto_generated|q_a\(27) <= \ROM1|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);
\ROM1|altsyncram_component|auto_generated|q_a\(28) <= \ROM1|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(1);
\ROM1|altsyncram_component|auto_generated|q_a\(29) <= \ROM1|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(2);
\ROM1|altsyncram_component|auto_generated|q_a\(30) <= \ROM1|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(3);
\ROM1|altsyncram_component|auto_generated|q_a\(31) <= \ROM1|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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

-- Location: IOOBUF_X78_Y25_N2
\output[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X78_Y29_N2
\output[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X78_Y29_N23
\output[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X78_Y29_N16
\output[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X78_Y25_N9
\output[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X78_Y25_N23
\output[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X78_Y29_N9
\output[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X78_Y18_N2
\output[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X78_Y18_N9
\output[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \output[8]~output_o\);

-- Location: IOOBUF_X78_Y21_N16
\output[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \output[9]~output_o\);

-- Location: IOOBUF_X78_Y17_N16
\output[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \output[10]~output_o\);

-- Location: IOOBUF_X78_Y15_N16
\output[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \output[11]~output_o\);

-- Location: IOOBUF_X78_Y21_N2
\output[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \output[12]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\output[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \output[13]~output_o\);

-- Location: IOOBUF_X78_Y15_N23
\output[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \output[14]~output_o\);

-- Location: IOOBUF_X78_Y17_N9
\output[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \output[15]~output_o\);

-- Location: IOOBUF_X78_Y17_N23
\output[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \output[16]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\output[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \output[17]~output_o\);

-- Location: IOOBUF_X78_Y16_N24
\output[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \output[18]~output_o\);

-- Location: IOOBUF_X78_Y17_N2
\output[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \output[19]~output_o\);

-- Location: IOOBUF_X78_Y16_N9
\output[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \output[20]~output_o\);

-- Location: IOOBUF_X78_Y20_N24
\output[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \output[21]~output_o\);

-- Location: IOOBUF_X78_Y20_N9
\output[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \output[22]~output_o\);

-- Location: IOOBUF_X78_Y15_N9
\output[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \output[23]~output_o\);

-- Location: IOOBUF_X78_Y16_N16
\output[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \output[24]~output_o\);

-- Location: IOOBUF_X78_Y15_N2
\output[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \output[25]~output_o\);

-- Location: IOOBUF_X78_Y16_N2
\output[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \output[26]~output_o\);

-- Location: IOOBUF_X78_Y30_N23
\output[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \output[27]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\output[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \output[28]~output_o\);

-- Location: IOOBUF_X78_Y30_N2
\output[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \output[29]~output_o\);

-- Location: IOOBUF_X78_Y23_N23
\output[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \output[30]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\output[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \output[31]~output_o\);

-- Location: IOIBUF_X78_Y20_N15
\rden~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rden,
	o => \rden~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: FF_X74_Y22_N21
\ROM1|altsyncram_component|auto_generated|rden_a_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rden~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ROM1|altsyncram_component|auto_generated|rden_a_store~q\);

-- Location: LCCOMB_X74_Y22_N20
\ROM1|altsyncram_component|auto_generated|ram_block1a0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ROM1|altsyncram_component|auto_generated|ram_block1a0~0_combout\ = (\rden~input_o\) # (\ROM1|altsyncram_component|auto_generated|rden_a_store~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rden~input_o\,
	datac => \ROM1|altsyncram_component|auto_generated|rden_a_store~q\,
	combout => \ROM1|altsyncram_component|auto_generated|ram_block1a0~0_combout\);

-- Location: IOIBUF_X78_Y20_N1
\ROMaddr[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ROMaddr(0),
	o => \ROMaddr[0]~input_o\);

-- Location: IOIBUF_X78_Y24_N23
\ROMaddr[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ROMaddr(1),
	o => \ROMaddr[1]~input_o\);

-- Location: IOIBUF_X78_Y18_N15
\ROMaddr[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ROMaddr(2),
	o => \ROMaddr[2]~input_o\);

-- Location: IOIBUF_X78_Y25_N15
\ROMaddr[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ROMaddr(3),
	o => \ROMaddr[3]~input_o\);

-- Location: IOIBUF_X78_Y24_N8
\ROMaddr[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ROMaddr(4),
	o => \ROMaddr[4]~input_o\);

-- Location: IOIBUF_X78_Y23_N15
\ROMaddr[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ROMaddr(5),
	o => \ROMaddr[5]~input_o\);

-- Location: IOIBUF_X78_Y18_N22
\ROMaddr[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ROMaddr(6),
	o => \ROMaddr[6]~input_o\);

-- Location: IOIBUF_X78_Y24_N1
\ROMaddr[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ROMaddr(7),
	o => \ROMaddr[7]~input_o\);

-- Location: IOIBUF_X78_Y24_N15
\ROMaddr[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ROMaddr(8),
	o => \ROMaddr[8]~input_o\);

-- Location: IOIBUF_X78_Y23_N1
\ROMaddr[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ROMaddr(9),
	o => \ROMaddr[9]~input_o\);

-- Location: M9K_X73_Y22_N0
\ROM1|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"C5087D6CFE83B4F139DF91FD5EA23EFE727876F419FEB10E29073A41E2843EB67F41DA789CEFC8FEAF511F7F393C3B7A0CFF58871483AFA0F1421F5B3FA0ED3C4E77E47F57A88FBF9C9E1DBD067FAC438A41A0D078A10FAD9FD0769E273BF23FABD447DFCE4F0EDE833FD621C520EE683C5087D6CFE83B4F139DF91FD5EA23EF",
	mem_init3 => X"E727876F419FEB10E2907F941E2843EB67F41DA789CEFC8FEAF511F7F393C3B7A0CFF58871483DC20F1421F5B3FA0ED3C4E77E47F57A88FBF9C9E1DBD067FAC438A41B85078A10FAD9FD0769E273BF23FABD447DFCE4F0EDE833FD621C520D4283C5087D6CFE83B4F139DF91FD5EA23EFE727876F419FEB10E29069941E2843EB67F41DA789CEFC8FEAF511F7F393C3B7A0CFF58871483CEA0F1421F5B3FA0ED3C4E77E47F57A88FBF9C9E1DBD067FAC438A41879078A10FAD9FD0769E273BF23FABD447DFCE4F0EDE833FD621C520F8C83C5087D6CFE83B4F139DF91FD5EA23EFE727876F419FEB10E2906C941E2843EB67F41DA789CEFC8FEAF511F7F393C3",
	mem_init2 => X"B7A0CFF588714838820F1421F5B3FA0ED3C4E77E47F57A88FBF9C9E1DBD067FAC438A418E1078A10FAD9FD0769E273BF23FABD447DFCE4F0EDE833FD621C520FE083C5087D6CFE83B4F139DF91FD5EA23EFE727876F419FEB10E2907D441E2843EB67F41DA789CEFC8FEAF511F7F393C3B7A0CFF58871483A8A0F1421F5B3FA0ED3C4E77E47F57A88FBF9C9E1DBD067FAC438A41A69078A10FAD9FD0769E273BF23FABD447DFCE4F0EDE833FD621C520FC683C5087D6CFE83B4F139DF91FD5EA23EFE727876F419FEB10E29073A41E2843EB67F41DA789CEFC8FEAF511F7F393C3B7A0CFF5887148341A0F1421F5B3FA0ED3C4E77E47F57A88FBF9C9E1DBD067",
	mem_init1 => X"FAC438A41FE5078A10FAD9FD0769E273BF23FABD447DFCE4F0EDE833FD621C520DC283C5087D6CFE83B4F139DF91FD5EA23EFE727876F419FEB10E29069941E2843EB67F41DA789CEFC8FEAF511F7F393C3B7A0CFF588714830F20F1421F5B3FA0ED3C4E77E47F57A88FBF9C9E1DBD067FAC438A41B25078A10FAD9FD0769E273BF23FABD447DFCE4F0EDE833FD621C520C7083C5087D6CFE83B4F139DF91FD5EA23EFE727876F419FEB10E2907D441E2843EB67F41DA789CEFC8FEAF511F7F393C3B7A0CFF588714834D20F1421F5B3FA0ED3C4E77E47F57A88FBF9C9E1DBD067FAC438A41CE9078A10FAD9FD0769E273BF23FABD447DFCE4F0EDE833FD621C",
	mem_init0 => X"520FF283C5087D6CFE83B4F139DF91FD5EA23EFE727876F419FEB10E29069941E2843EB67F41DA789CEFC8FEAF511F7F393C3B7A0CFF5887148364A0F1421F5B3FA0ED3C4E77E47F57A88FBF9C9E1DBD067FAC438A41F51078A10FAD9FD0769E273BF23FABD447DFCE4F0EDE833FD621C520E7483C5087D6CFE83B4F139DF91FD5EA23EFE727876F419FEB10E29069941E2843EB67F41DA789CEFC8FEAF511F7F393C3B7A0CFF58871483EA20F1421F5B3FA0ED3C4E77E47F57A88FBF9C9E1DBD067FAC438A41A65078A10FAD9FD0769E273BF23FABD447DFCE4F0EDE833FD621C520D3283C5087D6CFE83B4F139DF91FD5EA23EFE727876F419FEB10E290600",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "FIR_INPUT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:ROM1|altsyncram:altsyncram_component|altsyncram_nas3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => \rden~input_o\,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ROM1|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portaaddr => \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y21_N0
\ROM1|altsyncram_component|auto_generated|ram_block1a9\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"B197A74CF8C0EB8E1BB0CB4EA7596D8437C71D4619F3A2F58EFF08BFD8CBD3A67C6075C70DD865A753ACB6C21BE38EA30CF9D17AC77F195FEC65E9D33E303AE386EC32D3A9D65B610DF1C751867CE8BD63BFCDAFF632F4E99F181D71C3761969D4EB2DB086F8E3A8C33E745EB1DFE557FB197A74CF8C0EB8E1BB0CB4EA7596D8",
	mem_init3 => X"437C71D4619F3A2F58EFEE8BFD8CBD3A67C6075C70DD865A753ACB6C21BE38EA30CF9D17AC77F425FEC65E9D33E303AE386EC32D3A9D65B610DF1C751867CE8BD63BFADEFF632F4E99F181D71C3761969D4EB2DB086F8E3A8C33E745EB1DFCA77FB197A74CF8C0EB8E1BB0CB4EA7596D8437C71D4619F3A2F58EFE2DBFD8CBD3A67C6075C70DD865A753ACB6C21BE38EA30CF9D17AC77F1A5FEC65E9D33E303AE386EC32D3A9D65B610DF1C751867CE8BD63BFF02FF632F4E99F181D71C3761969D4EB2DB086F8E3A8C33E745EB1DFCBD7FB197A74CF8C0EB8E1BB0CB4EA7596D8437C71D4619F3A2F58EFE66BFD8CBD3A67C6075C70DD865A753ACB6C21BE38",
	mem_init2 => X"EA30CF9D17AC77F465FEC65E9D33E303AE386EC32D3A9D65B610DF1C751867CE8BD63BFD02FF632F4E99F181D71C3761969D4EB2DB086F8E3A8C33E745EB1DFD6B7FB197A74CF8C0EB8E1BB0CB4EA7596D8437C71D4619F3A2F58EFE15BFD8CBD3A67C6075C70DD865A753ACB6C21BE38EA30CF9D17AC77FCB5FEC65E9D33E303AE386EC32D3A9D65B610DF1C751867CE8BD63BFF12FF632F4E99F181D71C3761969D4EB2DB086F8E3A8C33E745EB1DFFE37FB197A74CF8C0EB8E1BB0CB4EA7596D8437C71D4619F3A2F58EFF08BFD8CBD3A67C6075C70DD865A753ACB6C21BE38EA30CF9D17AC77F9B5FEC65E9D33E303AE386EC32D3A9D65B610DF1C751867",
	mem_init1 => X"CE8BD63BFBA2FF632F4E99F181D71C3761969D4EB2DB086F8E3A8C33E745EB1DFD6F7FB197A74CF8C0EB8E1BB0CB4EA7596D8437C71D4619F3A2F58EFE2DBFD8CBD3A67C6075C70DD865A753ACB6C21BE38EA30CF9D17AC77FE05FEC65E9D33E303AE386EC32D3A9D65B610DF1C751867CE8BD63BF99AFF632F4E99F181D71C3761969D4EB2DB086F8E3A8C33E745EB1DFE817FB197A74CF8C0EB8E1BB0CB4EA7596D8437C71D4619F3A2F58EFE15BFD8CBD3A67C6075C70DD865A753ACB6C21BE38EA30CF9D17AC77FE25FEC65E9D33E303AE386EC32D3A9D65B610DF1C751867CE8BD63BFC22FF632F4E99F181D71C3761969D4EB2DB086F8E3A8C33E745EB",
	mem_init0 => X"1DFDD17FB197A74CF8C0EB8E1BB0CB4EA7596D8437C71D4619F3A2F58EFE2DBFD8CBD3A67C6075C70DD865A753ACB6C21BE38EA30CF9D17AC77F335FEC65E9D33E303AE386EC32D3A9D65B610DF1C751867CE8BD63BF856FF632F4E99F181D71C3761969D4EB2DB086F8E3A8C33E745EB1DFE117FB197A74CF8C0EB8E1BB0CB4EA7596D8437C71D4619F3A2F58EFE2DBFD8CBD3A67C6075C70DD865A753ACB6C21BE38EA30CF9D17AC77F0ADFEC65E9D33E303AE386EC32D3A9D65B610DF1C751867CE8BD63BF8B6FF632F4E99F181D71C3761969D4EB2DB086F8E3A8C33E745EB1DFC5B7FB197A74CF8C0EB8E1BB0CB4EA7596D8437C71D4619F3A2F58EFE00",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "FIR_INPUT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:ROM1|altsyncram:altsyncram_component|altsyncram_nas3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => \rden~input_o\,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ROM1|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portaaddr => \ROM1|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y20_N0
\ROM1|altsyncram_component|auto_generated|ram_block1a18\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"ECF8BB9E1EEF87BBE1EEF87ADD6F0F77C3DDF0F77C3DCF1767CA97F2F67C5DCF0F77C3DDF0F77C3D6EB787BBE1EEF87BBE1EE78BB3E54A797B3E2EE787BBE1EEF87BBE1EB75BC3DDF0F77C3DDF0F73C5D9F2A67CBD9F1773C3DDF0F77C3DDF0F5BADE1EEF87BBE1EEF87B9E2ECF9533E5ECF8BB9E1EEF87BBE1EEF87ADD6F0F7",
	mem_init3 => X"7C3DDF0F77C3DCF1767CA88F2F67C5DCF0F77C3DDF0F77C3D6EB787BBE1EEF87BBE1EE78BB3E54F797B3E2EE787BBE1EEF87BBE1EB75BC3DDF0F77C3DDF0F73C5D9F2A03CBD9F1773C3DDF0F77C3DDF0F5BADE1EEF87BBE1EEF87B9E2ECF952DE5ECF8BB9E1EEF87BBE1EEF87ADD6F0F77C3DDF0F77C3DCF1767CA8EF2F67C5DCF0F77C3DDF0F77C3D6EB787BBE1EEF87BBE1EE78BB3E548797B3E2EE787BBE1EEF87BBE1EB75BC3DDF0F77C3DDF0F73C5D9F29E7CBD9F1773C3DDF0F77C3DDF0F5BADE1EEF87BBE1EEF87B9E2ECF9507E5ECF8BB9E1EEF87BBE1EEF87ADD6F0F77C3DDF0F77C3DCF1767CA85F2F67C5DCF0F77C3DDF0F77C3D6EB787BBE1EEF",
	mem_init2 => X"87BBE1EE78BB3E542F97B3E2EE787BBE1EEF87BBE1EB75BC3DDF0F77C3DDF0F73C5D9F29B3CBD9F1773C3DDF0F77C3DDF0F5BADE1EEF87BBE1EEF87B9E2ECF94F5E5ECF8BB9E1EEF87BBE1EEF87ADD6F0F77C3DDF0F77C3DCF1767CA84F2F67C5DCF0F77C3DDF0F77C3D6EB787BBE1EEF87BBE1EE78BB3E537F97B3E2EE787BBE1EEF87BBE1EB75BC3DDF0F77C3DDF0F73C5D9F29C7CBD9F1773C3DDF0F77C3DDF0F5BADE1EEF87BBE1EEF87B9E2ECF94E7E5ECF8BB9E1EEF87BBE1EEF87ADD6F0F77C3DDF0F77C3DCF1767CA77F2F67C5DCF0F77C3DDF0F77C3D6EB787BBE1EEF87BBE1EE78BB3E53CF97B3E2EE787BBE1EEF87BBE1EB75BC3DDF0F77C3DDF0",
	mem_init1 => X"F73C5D9F29A3CBD9F1773C3DDF0F77C3DDF0F5BADE1EEF87BBE1EEF87B9E2ECF94C1E5ECF8BB9E1EEF87BBE1EEF87ADD6F0F77C3DDF0F77C3DCF1767CA6EF2F67C5DCF0F77C3DDF0F77C3D6EB787BBE1EEF87BBE1EE78BB3E52CF97B3E2EE787BBE1EEF87BBE1EB75BC3DDF0F77C3DDF0F73C5D9F2997CBD9F1773C3DDF0F77C3DDF0F5BADE1EEF87BBE1EEF87B9E2ECF9499E5ECF8BB9E1EEF87BBE1EEF87ADD6F0F77C3DDF0F77C3DCF1767CA64F2F67C5DCF0F77C3DDF0F77C3D6EB787BBE1EEF87BBE1EE78BB3E528F97B3E2EE787BBE1EEF87BBE1EB75BC3DDF0F77C3DDF0F73C5D9F295FCBD9F1773C3DDF0F77C3DDF0F5BADE1EEF87BBE1EEF87B9E2E",
	mem_init0 => X"CF9491E5ECF8BB9E1EEF87BBE1EEF87ADD6F0F77C3DDF0F77C3DCF1767CA4EF2F67C5DCF0F77C3DDF0F77C3D6EB787BBE1EEF87BBE1EE78BB3E522F97B3E2EE787BBE1EEF87BBE1EB75BC3DDF0F77C3DDF0F73C5D9F2913CBD9F1773C3DDF0F77C3DDF0F5BADE1EEF87BBE1EEF87B9E2ECF946FE5ECF8BB9E1EEF87BBE1EEF87ADD6F0F77C3DDF0F77C3DCF1767CA2EF2F67C5DCF0F77C3DDF0F77C3D6EB787BBE1EEF87BBE1EE78BB3E512797B3E2EE787BBE1EEF87BBE1EB75BC3DDF0F77C3DDF0F73C5D9F283BCBD9F1773C3DDF0F77C3DDF0F5BADE1EEF87BBE1EEF87B9E2ECF97DDE5ECF8BB9E1EEF87BBE1EEF87ADD6F0F77C3DDF0F77C3DCF1767CA00",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "FIR_INPUT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:ROM1|altsyncram:altsyncram_component|altsyncram_nas3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => \rden~input_o\,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ROM1|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portaaddr => \ROM1|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM1|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y23_N0
\ROM1|altsyncram_component|auto_generated|ram_block1a27\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0B85C2E170B85C2E170B85C2E070381C0E070381C0E070381C0E150B85C2E170B85C2E170B85C2E170381C0E070381C0E070381C0E070A85C2E170B85C2E170B85C2E170B81C0E070381C0E070381C0E07038542E170B85C2E170B85C2E170B85C0E070381C0E070381C0E070381C2A170B85C2E170B85C2E170B85C2E070381",
	mem_init3 => X"C0E070381C0E070381C0E150B85C2E170B85C2E170B85C2E170381C0E070381C0E070381C0E070A85C2E170B85C2E170B85C2E170B81C0E070381C0E070381C0E07038542E170B85C2E170B85C2E170B85C0E070381C0E070381C0E070381C2A170B85C2E170B85C2E170B85C2E070381C0E070381C0E070381C0E150B85C2E170B85C2E170B85C2E170381C0E070381C0E070381C0E070A85C2E170B85C2E170B85C2E170B81C0E070381C0E070381C0E07038542E170B85C2E170B85C2E170B85C0E070381C0E070381C0E070381C2A170B85C2E170B85C2E170B85C2E070381C0E070381C0E070381C0E150B85C2E170B85C2E170B85C2E170381C0E07038",
	mem_init2 => X"1C0E070381C0E070A85C2E170B85C2E170B85C2E170B81C0E070381C0E070381C0E07038542E170B85C2E170B85C2E170B85C0E070381C0E070381C0E070381C2A170B85C2E170B85C2E170B85C2E070381C0E070381C0E070381C0E150B85C2E170B85C2E170B85C2E170381C0E070381C0E070381C0E070A85C2E170B85C2E170B85C2E170B81C0E070381C0E070381C0E07038542E170B85C2E170B85C2E170B85C0E070381C0E070381C0E070381C2A170B85C2E170B85C2E170B85C2E070381C0E070381C0E070381C0E150B85C2E170B85C2E170B85C2E170381C0E070381C0E070381C0E070A85C2E170B85C2E170B85C2E170B81C0E070381C0E0703",
	mem_init1 => X"81C0E07038542E170B85C2E170B85C2E170B85C0E070381C0E070381C0E070381C2A170B85C2E170B85C2E170B85C2E070381C0E070381C0E070381C0E150B85C2E170B85C2E170B85C2E170381C0E070381C0E070381C0E070A85C2E170B85C2E170B85C2E170B81C0E070381C0E070381C0E07038542E170B85C2E170B85C2E170B85C0E070381C0E070381C0E070381C2A170B85C2E170B85C2E170B85C2E070381C0E070381C0E070381C0E150B85C2E170B85C2E170B85C2E170381C0E070381C0E070381C0E070A85C2E170B85C2E170B85C2E170B81C0E070381C0E070381C0E07038542E170B85C2E170B85C2E170B85C0E070381C0E070381C0E070",
	mem_init0 => X"381C2A170B85C2E170B85C2E170B85C2E070381C0E070381C0E070381C0E150B85C2E170B85C2E170B85C2E170381C0E070381C0E070381C0E070A85C2E170B85C2E170B85C2E170B81C0E070381C0E070381C0E07038542E170B85C2E170B85C2E170B85C0E070381C0E070381C0E070381C2A170B85C2E170B85C2E170B85C2E070381C0E070381C0E070381C0E150B85C2E170B85C2E170B85C2E170381C0E070381C0E070381C0E070A85C2E170B85C2E170B85C2E170B81C0E070381C0E070381C0E07038542E170B85C2E170B85C2E170B85C0E070381C0E070381C0E070381C28170B85C2E170B85C2E170B85C2E070381C0E070381C0E070381C0E00",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "FIR_INPUT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:ROM1|altsyncram:altsyncram_component|altsyncram_nas3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => \rden~input_o\,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ROM1|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portaaddr => \ROM1|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM1|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: IOIBUF_X51_Y0_N1
\data[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: IOIBUF_X78_Y34_N23
\data[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\data[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\data[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: IOIBUF_X24_Y39_N15
\data[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\data[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(5),
	o => \data[5]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\data[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(6),
	o => \data[6]~input_o\);

-- Location: IOIBUF_X69_Y54_N22
\data[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(7),
	o => \data[7]~input_o\);

-- Location: IOIBUF_X54_Y54_N8
\data[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(8),
	o => \data[8]~input_o\);

-- Location: IOIBUF_X66_Y54_N1
\data[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(9),
	o => \data[9]~input_o\);

-- Location: IOIBUF_X49_Y54_N8
\data[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(10),
	o => \data[10]~input_o\);

-- Location: IOIBUF_X58_Y54_N22
\data[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(11),
	o => \data[11]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\data[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(12),
	o => \data[12]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\data[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(13),
	o => \data[13]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\data[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(14),
	o => \data[14]~input_o\);

-- Location: IOIBUF_X78_Y37_N22
\data[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(15),
	o => \data[15]~input_o\);

-- Location: IOIBUF_X58_Y0_N29
\data[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(16),
	o => \data[16]~input_o\);

-- Location: IOIBUF_X78_Y3_N1
\data[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(17),
	o => \data[17]~input_o\);

-- Location: IOIBUF_X0_Y37_N22
\data[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(18),
	o => \data[18]~input_o\);

-- Location: IOIBUF_X49_Y0_N29
\data[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(19),
	o => \data[19]~input_o\);

-- Location: IOIBUF_X58_Y54_N8
\data[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(20),
	o => \data[20]~input_o\);

-- Location: IOIBUF_X78_Y36_N8
\data[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(21),
	o => \data[21]~input_o\);

-- Location: IOIBUF_X78_Y36_N1
\data[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(22),
	o => \data[22]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\data[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(23),
	o => \data[23]~input_o\);

-- Location: IOIBUF_X56_Y54_N8
\data[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(24),
	o => \data[24]~input_o\);

-- Location: IOIBUF_X69_Y54_N15
\data[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(25),
	o => \data[25]~input_o\);

-- Location: IOIBUF_X51_Y0_N29
\data[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(26),
	o => \data[26]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\data[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(27),
	o => \data[27]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\data[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(28),
	o => \data[28]~input_o\);

-- Location: IOIBUF_X51_Y0_N22
\data[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(29),
	o => \data[29]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\data[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(30),
	o => \data[30]~input_o\);

-- Location: IOIBUF_X78_Y45_N15
\data[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(31),
	o => \data[31]~input_o\);

-- Location: IOIBUF_X46_Y54_N1
\wren~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wren,
	o => \wren~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
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

-- Location: ADCBLOCK_X43_Y52_N0
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

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
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
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;

ww_output(8) <= \output[8]~output_o\;

ww_output(9) <= \output[9]~output_o\;

ww_output(10) <= \output[10]~output_o\;

ww_output(11) <= \output[11]~output_o\;

ww_output(12) <= \output[12]~output_o\;

ww_output(13) <= \output[13]~output_o\;

ww_output(14) <= \output[14]~output_o\;

ww_output(15) <= \output[15]~output_o\;

ww_output(16) <= \output[16]~output_o\;

ww_output(17) <= \output[17]~output_o\;

ww_output(18) <= \output[18]~output_o\;

ww_output(19) <= \output[19]~output_o\;

ww_output(20) <= \output[20]~output_o\;

ww_output(21) <= \output[21]~output_o\;

ww_output(22) <= \output[22]~output_o\;

ww_output(23) <= \output[23]~output_o\;

ww_output(24) <= \output[24]~output_o\;

ww_output(25) <= \output[25]~output_o\;

ww_output(26) <= \output[26]~output_o\;

ww_output(27) <= \output[27]~output_o\;

ww_output(28) <= \output[28]~output_o\;

ww_output(29) <= \output[29]~output_o\;

ww_output(30) <= \output[30]~output_o\;

ww_output(31) <= \output[31]~output_o\;
END structure;


