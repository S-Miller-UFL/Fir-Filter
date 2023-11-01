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

-- DATE "10/29/2023 13:32:26"

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

ENTITY 	MultFP32 IS
    PORT (
	clk : IN std_logic;
	areset : IN std_logic;
	a : IN std_logic_vector(31 DOWNTO 0);
	b : IN std_logic_vector(31 DOWNTO 0);
	q : OUT std_logic_vector(31 DOWNTO 0)
	);
END MultFP32;

-- Design Ports Information
-- q[0]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[10]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[11]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[12]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[13]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[14]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[15]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[16]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[17]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[18]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[19]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[20]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[21]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[22]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[23]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[24]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[25]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[26]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[27]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[28]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[29]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[30]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[31]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- areset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[23]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[24]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[25]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[26]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[27]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[28]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[29]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[30]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[23]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[24]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[25]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[26]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[27]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[28]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[29]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[30]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[16]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[17]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[18]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[19]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[20]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[21]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[22]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[16]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[17]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[18]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[19]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[20]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[21]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[22]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[31]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[31]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MultFP32 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_areset : std_logic;
SIGNAL ww_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(31 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \areset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \q[8]~output_o\ : std_logic;
SIGNAL \q[9]~output_o\ : std_logic;
SIGNAL \q[10]~output_o\ : std_logic;
SIGNAL \q[11]~output_o\ : std_logic;
SIGNAL \q[12]~output_o\ : std_logic;
SIGNAL \q[13]~output_o\ : std_logic;
SIGNAL \q[14]~output_o\ : std_logic;
SIGNAL \q[15]~output_o\ : std_logic;
SIGNAL \q[16]~output_o\ : std_logic;
SIGNAL \q[17]~output_o\ : std_logic;
SIGNAL \q[18]~output_o\ : std_logic;
SIGNAL \q[19]~output_o\ : std_logic;
SIGNAL \q[20]~output_o\ : std_logic;
SIGNAL \q[21]~output_o\ : std_logic;
SIGNAL \q[22]~output_o\ : std_logic;
SIGNAL \q[23]~output_o\ : std_logic;
SIGNAL \q[24]~output_o\ : std_logic;
SIGNAL \q[25]~output_o\ : std_logic;
SIGNAL \q[26]~output_o\ : std_logic;
SIGNAL \q[27]~output_o\ : std_logic;
SIGNAL \q[28]~output_o\ : std_logic;
SIGNAL \q[29]~output_o\ : std_logic;
SIGNAL \q[30]~output_o\ : std_logic;
SIGNAL \q[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \multfp32_inst|Equal0~2_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \multfp32_inst|Equal0~0_combout\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \multfp32_inst|Equal0~3_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \multfp32_inst|Equal0~1_combout\ : std_logic;
SIGNAL \multfp32_inst|Equal0~4_combout\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \multfp32_inst|Equal0~5_combout\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \multfp32_inst|Equal0~6_combout\ : std_logic;
SIGNAL \multfp32_inst|Equal0~7_combout\ : std_logic;
SIGNAL \areset~input_o\ : std_logic;
SIGNAL \areset~inputclkctrl_outclk\ : std_logic;
SIGNAL \multfp32_inst|fracXIsZero_uid17_fpMulTest_delay|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[4][0]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[4][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[3][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[2][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[1][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[0][0]~q\ : std_logic;
SIGNAL \b[30]~input_o\ : std_logic;
SIGNAL \b[27]~input_o\ : std_logic;
SIGNAL \b[28]~input_o\ : std_logic;
SIGNAL \b[29]~input_o\ : std_logic;
SIGNAL \multfp32_inst|Equal2~1_combout\ : std_logic;
SIGNAL \b[23]~input_o\ : std_logic;
SIGNAL \b[24]~input_o\ : std_logic;
SIGNAL \b[26]~input_o\ : std_logic;
SIGNAL \b[25]~input_o\ : std_logic;
SIGNAL \multfp32_inst|Equal2~0_combout\ : std_logic;
SIGNAL \multfp32_inst|Equal2~2_combout\ : std_logic;
SIGNAL \multfp32_inst|excZ_y_uid29_fpMulTest_delay|delay_signals[0][0]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|excZ_y_uid29_fpMulTest_delay|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[4][0]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[4][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[3][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[2][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[1][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[0][0]~q\ : std_logic;
SIGNAL \a[27]~input_o\ : std_logic;
SIGNAL \a[29]~input_o\ : std_logic;
SIGNAL \a[28]~input_o\ : std_logic;
SIGNAL \a[30]~input_o\ : std_logic;
SIGNAL \multfp32_inst|Equal5~1_combout\ : std_logic;
SIGNAL \a[24]~input_o\ : std_logic;
SIGNAL \a[25]~input_o\ : std_logic;
SIGNAL \a[26]~input_o\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \multfp32_inst|Equal5~0_combout\ : std_logic;
SIGNAL \multfp32_inst|Equal5~2_combout\ : std_logic;
SIGNAL \multfp32_inst|excZ_x_uid15_fpMulTest_delay|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[4][0]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[4][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[3][0]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[3][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[2][0]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[2][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[1][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|Equal4~1_combout\ : std_logic;
SIGNAL \multfp32_inst|Equal4~0_combout\ : std_logic;
SIGNAL \multfp32_inst|Equal4~2_combout\ : std_logic;
SIGNAL \multfp32_inst|expXIsMax_uid30_fpMulTest_delay|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[4][0]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[4][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[3][0]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[3][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[2][0]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[2][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[1][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[0][0]~q\ : std_logic;
SIGNAL \b[18]~input_o\ : std_logic;
SIGNAL \b[19]~input_o\ : std_logic;
SIGNAL \b[16]~input_o\ : std_logic;
SIGNAL \b[17]~input_o\ : std_logic;
SIGNAL \multfp32_inst|Equal3~5_combout\ : std_logic;
SIGNAL \b[21]~input_o\ : std_logic;
SIGNAL \b[22]~input_o\ : std_logic;
SIGNAL \b[20]~input_o\ : std_logic;
SIGNAL \multfp32_inst|Equal3~6_combout\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \multfp32_inst|Equal3~2_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \multfp32_inst|Equal3~1_combout\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \multfp32_inst|Equal3~3_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \multfp32_inst|Equal3~0_combout\ : std_logic;
SIGNAL \multfp32_inst|Equal3~4_combout\ : std_logic;
SIGNAL \multfp32_inst|Equal3~7_combout\ : std_logic;
SIGNAL \multfp32_inst|fracXIsZero_uid31_fpMulTest_delay|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[4][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[3][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[2][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[1][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|concExc_uid90_fpMulTest_q[2]~0_combout\ : std_logic;
SIGNAL \multfp32_inst|Equal1~1_combout\ : std_logic;
SIGNAL \multfp32_inst|Equal1~0_combout\ : std_logic;
SIGNAL \multfp32_inst|Equal1~2_combout\ : std_logic;
SIGNAL \multfp32_inst|expXIsMax_uid16_fpMulTest_delay|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[4][0]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[4][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[3][0]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[3][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[2][0]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[2][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[1][0]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[1][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|concExc_uid90_fpMulTest_q[2]~1_combout\ : std_logic;
SIGNAL \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ : std_logic;
SIGNAL \multfp32_inst|expSum_uid44_fpMulTest_o[0]~10\ : std_logic;
SIGNAL \multfp32_inst|expSum_uid44_fpMulTest_o[1]~12\ : std_logic;
SIGNAL \multfp32_inst|expSum_uid44_fpMulTest_o[2]~14\ : std_logic;
SIGNAL \multfp32_inst|expSum_uid44_fpMulTest_o[3]~16\ : std_logic;
SIGNAL \multfp32_inst|expSum_uid44_fpMulTest_o[4]~18\ : std_logic;
SIGNAL \multfp32_inst|expSum_uid44_fpMulTest_o[5]~20\ : std_logic;
SIGNAL \multfp32_inst|expSum_uid44_fpMulTest_o[6]~22\ : std_logic;
SIGNAL \multfp32_inst|expSum_uid44_fpMulTest_o[7]~24\ : std_logic;
SIGNAL \multfp32_inst|expSum_uid44_fpMulTest_o[8]~25_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][8]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][8]~q\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][8]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][8]~q\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][8]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][8]~q\ : std_logic;
SIGNAL \multfp32_inst|expSum_uid44_fpMulTest_o[7]~23_combout\ : std_logic;
SIGNAL \multfp32_inst|expSum_uid44_fpMulTest_o[7]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][7]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][7]~q\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][7]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][7]~q\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][7]~q\ : std_logic;
SIGNAL \multfp32_inst|expSum_uid44_fpMulTest_o[6]~21_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][6]~q\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][6]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][6]~q\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][6]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][6]~q\ : std_logic;
SIGNAL \multfp32_inst|expSum_uid44_fpMulTest_o[5]~19_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][5]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][5]~q\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][5]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][5]~q\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][5]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][5]~q\ : std_logic;
SIGNAL \multfp32_inst|expSum_uid44_fpMulTest_o[4]~17_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][4]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][4]~q\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][4]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][4]~q\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][4]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][4]~q\ : std_logic;
SIGNAL \multfp32_inst|expSum_uid44_fpMulTest_o[3]~15_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][3]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][3]~q\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][3]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][3]~q\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][3]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][3]~q\ : std_logic;
SIGNAL \multfp32_inst|expSum_uid44_fpMulTest_o[2]~13_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][2]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][2]~q\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][2]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][2]~q\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][2]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][2]~q\ : std_logic;
SIGNAL \multfp32_inst|expSum_uid44_fpMulTest_o[0]~9_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][0]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][0]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][0]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|expSum_uid44_fpMulTest_o[1]~11_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][1]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][1]~q\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][1]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][1]~q\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][1]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][1]~q\ : std_logic;
SIGNAL \multfp32_inst|expSumMBias_uid46_fpMulTest_o[1]~10\ : std_logic;
SIGNAL \multfp32_inst|expSumMBias_uid46_fpMulTest_o[2]~12\ : std_logic;
SIGNAL \multfp32_inst|expSumMBias_uid46_fpMulTest_o[3]~14\ : std_logic;
SIGNAL \multfp32_inst|expSumMBias_uid46_fpMulTest_o[4]~16\ : std_logic;
SIGNAL \multfp32_inst|expSumMBias_uid46_fpMulTest_o[5]~18\ : std_logic;
SIGNAL \multfp32_inst|expSumMBias_uid46_fpMulTest_o[6]~20\ : std_logic;
SIGNAL \multfp32_inst|expSumMBias_uid46_fpMulTest_o[7]~22\ : std_logic;
SIGNAL \multfp32_inst|expSumMBias_uid46_fpMulTest_o[8]~24\ : std_logic;
SIGNAL \multfp32_inst|expSumMBias_uid46_fpMulTest_o[10]~25_combout\ : std_logic;
SIGNAL \multfp32_inst|expSumMBias_uid46_fpMulTest_o[8]~23_combout\ : std_logic;
SIGNAL \multfp32_inst|expSumMBias_uid46_fpMulTest_o[7]~21_combout\ : std_logic;
SIGNAL \multfp32_inst|expSumMBias_uid46_fpMulTest_o[6]~19_combout\ : std_logic;
SIGNAL \multfp32_inst|expSumMBias_uid46_fpMulTest_o[5]~17_combout\ : std_logic;
SIGNAL \multfp32_inst|expSumMBias_uid46_fpMulTest_o[4]~15_combout\ : std_logic;
SIGNAL \multfp32_inst|expSumMBias_uid46_fpMulTest_o[3]~13_combout\ : std_logic;
SIGNAL \multfp32_inst|expSumMBias_uid46_fpMulTest_o[2]~11_combout\ : std_logic;
SIGNAL \multfp32_inst|expSumMBias_uid46_fpMulTest_o[1]~9_combout\ : std_logic;
SIGNAL \multfp32_inst|expSumMBias_uid46_fpMulTest_o[1]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|expSumMBias_uid46_fpMulTest_o[0]~27_combout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~13\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~14\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~15\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~16\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~17\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~18\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~19\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~20\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~21\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~22\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~23\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT34\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT35\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[18]~31\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[19]~33\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[20]~35\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[21]~37\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[22]~39\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[23]~41\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[24]~43\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[25]~45\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[26]~47\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[27]~49\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[28]~51\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[29]~53\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[30]~55\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[31]~57\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[32]~59\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[33]~61\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[34]~63\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[35]~65\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[36]~67\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[37]~69\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[38]~71\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[39]~73\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[40]~75\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[41]~77\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[42]~79\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[43]~81\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[44]~83\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[45]~85\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[46]~87\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[47]~88_combout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[46]~86_combout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[45]~84_combout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[44]~82_combout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[43]~80_combout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[42]~78_combout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[41]~76_combout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~13\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~14\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~15\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~16\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~17\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~18\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~19\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~20\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~21\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~22\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~23\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][23]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][23]~q\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][22]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][22]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[40]~74_combout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[39]~72_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][21]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][21]~q\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][20]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][20]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[38]~70_combout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[37]~68_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][19]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][19]~q\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][18]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][18]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[36]~66_combout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[35]~64_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][17]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][17]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[34]~62_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][16]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][16]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[33]~60_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][15]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][15]~q\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][14]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][14]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[32]~58_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][13]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][13]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[31]~56_combout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[30]~54_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][12]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][12]~q\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][11]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][11]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[29]~52_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][10]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][10]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[28]~50_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][9]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][9]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[27]~48_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][8]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][8]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[26]~46_combout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[25]~44_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][7]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][7]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[24]~42_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][6]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][6]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[23]~40_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][5]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[22]~38_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][4]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][4]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[21]~36_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][3]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][3]~q\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][2]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][2]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[20]~34_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][1]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][1]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[19]~32_combout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[18]~30_combout\ : std_logic;
SIGNAL \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~31\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][19]~33\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][20]~35\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][21]~37\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~39\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]~41\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~43\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][25]~45\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]~47\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][27]~49\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]~51\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][29]~53\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]~55\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][31]~57\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]~59\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][33]~61\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]~63\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][35]~65\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]~67\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][37]~69\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]~71\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][39]~73\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]~75\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][41]~77\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][42]~79\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][43]~81\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][44]~83\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][45]~85\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][46]~87\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~88_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ : std_logic;
SIGNAL \multfp32_inst|redist7_normalizeBit_uid49_fpMulTest_b_1|delay_signals[0][0]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist7_normalizeBit_uid49_fpMulTest_b_1|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][46]~86_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][46]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][45]~84_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][45]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[23]~2_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][23]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][44]~82_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][44]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[22]~3_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][22]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][43]~80_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][43]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[21]~4_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][21]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][42]~78_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][42]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[20]~5_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][20]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][41]~76_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][41]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[19]~6_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][19]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]~74_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[18]~7_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][18]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][39]~72_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][39]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[17]~8_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][17]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]~70_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[16]~9_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][16]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][37]~68_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][37]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[15]~10_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][15]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]~66_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[14]~11_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][14]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][35]~64_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][35]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[13]~12_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][13]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]~62_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[12]~13_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][12]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][33]~60_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][33]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[11]~14_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][11]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]~58_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[10]~15_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][10]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][31]~56_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][31]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[9]~16_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][9]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]~54_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[8]~17_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][8]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][29]~52_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][29]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[7]~18_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][7]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][7]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]~50_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[6]~19_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][6]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][27]~48_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][27]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[5]~20_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][5]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]~46_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[4]~21_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][4]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][25]~44_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][25]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[3]~22_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][3]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~42_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[2]~23_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][2]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]~40_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[1]~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][1]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[0]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][0]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~30_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[1]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][1]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][1]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][19]~32_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][19]~q\ : std_logic;
SIGNAL \multfp32_inst|Equal7~6_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][21]~36_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][21]~q\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][20]~34_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][20]~q\ : std_logic;
SIGNAL \multfp32_inst|Equal7~7_combout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[2]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][2]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][2]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[5]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][5]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][5]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[4]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][4]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[3]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][3]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][3]~q\ : std_logic;
SIGNAL \multfp32_inst|Equal7~5_combout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[11]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][11]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][11]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[10]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][10]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][10]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[12]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][12]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[13]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][13]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][13]~q\ : std_logic;
SIGNAL \multfp32_inst|Equal7~2_combout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[14]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][14]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][14]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[15]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][15]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][15]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[16]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][16]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[17]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][17]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][17]~q\ : std_logic;
SIGNAL \multfp32_inst|Equal7~1_combout\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[9]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][9]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][9]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[7]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][7]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][7]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[6]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][6]~q\ : std_logic;
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[8]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][8]~feeder_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][8]~q\ : std_logic;
SIGNAL \multfp32_inst|Equal7~3_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~38_combout\ : std_logic;
SIGNAL \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~q\ : std_logic;
SIGNAL \multfp32_inst|Equal7~0_combout\ : std_logic;
SIGNAL \multfp32_inst|Equal7~4_combout\ : std_logic;
SIGNAL \multfp32_inst|Equal7~8_combout\ : std_logic;
SIGNAL \multfp32_inst|roundBitDetectionPattern_uid64_fpMulTest_delay|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[0]~1_combout\ : std_logic;
SIGNAL \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~24_cout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~26\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][1]~28\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][2]~30\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][3]~32\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][4]~34\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][5]~36\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][6]~38\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][7]~40\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][8]~42\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][9]~44\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][10]~46\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][11]~48\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][12]~50\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][13]~52\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][14]~54\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][15]~56\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][16]~58\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][17]~60\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][18]~62\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][19]~64\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][20]~66\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][21]~68\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][22]~70\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][0]~12\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][1]~14\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][2]~16\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][3]~18\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][4]~20\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][5]~22\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][6]~24\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][7]~26\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][8]~28\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][9]~30\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][11]~31_combout\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][11]~q\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][9]~29_combout\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][9]~q\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][8]~27_combout\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][8]~q\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][7]~25_combout\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][7]~q\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][6]~23_combout\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][6]~q\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][5]~21_combout\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][5]~q\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][4]~19_combout\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][4]~q\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][3]~17_combout\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][3]~q\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][2]~15_combout\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][2]~q\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][1]~13_combout\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][1]~q\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][0]~11_combout\ : std_logic;
SIGNAL \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|Add5~1_cout\ : std_logic;
SIGNAL \multfp32_inst|Add5~3_cout\ : std_logic;
SIGNAL \multfp32_inst|Add5~5_cout\ : std_logic;
SIGNAL \multfp32_inst|Add5~7_cout\ : std_logic;
SIGNAL \multfp32_inst|Add5~9_cout\ : std_logic;
SIGNAL \multfp32_inst|Add5~11_cout\ : std_logic;
SIGNAL \multfp32_inst|Add5~13_cout\ : std_logic;
SIGNAL \multfp32_inst|Add5~15_cout\ : std_logic;
SIGNAL \multfp32_inst|Add5~17_cout\ : std_logic;
SIGNAL \multfp32_inst|Add5~19_cout\ : std_logic;
SIGNAL \multfp32_inst|Add5~20_combout\ : std_logic;
SIGNAL \multfp32_inst|concExc_uid90_fpMulTest_q[1]~2_combout\ : std_logic;
SIGNAL \multfp32_inst|concExc_uid90_fpMulTest_q[1]~3_combout\ : std_logic;
SIGNAL \multfp32_inst|concExc_uid90_fpMulTest_q[1]~4_combout\ : std_logic;
SIGNAL \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~25_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|concExc_uid90_fpMulTest_q[0]~5_combout\ : std_logic;
SIGNAL \multfp32_inst|Add6~1_cout\ : std_logic;
SIGNAL \multfp32_inst|Add6~3_cout\ : std_logic;
SIGNAL \multfp32_inst|Add6~5_cout\ : std_logic;
SIGNAL \multfp32_inst|Add6~7_cout\ : std_logic;
SIGNAL \multfp32_inst|Add6~9_cout\ : std_logic;
SIGNAL \multfp32_inst|Add6~11_cout\ : std_logic;
SIGNAL \multfp32_inst|Add6~13_cout\ : std_logic;
SIGNAL \multfp32_inst|Add6~15_cout\ : std_logic;
SIGNAL \multfp32_inst|Add6~17_cout\ : std_logic;
SIGNAL \multfp32_inst|Add6~19_cout\ : std_logic;
SIGNAL \multfp32_inst|Add6~20_combout\ : std_logic;
SIGNAL \multfp32_inst|concExc_uid90_fpMulTest_q[0]~6_combout\ : std_logic;
SIGNAL \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux32~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][1]~27_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][1]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][1]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux31~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][2]~29_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][2]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][2]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux30~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][3]~31_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][3]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][3]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux29~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][4]~33_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][4]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][4]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux28~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][5]~35_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][5]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][5]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux27~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][6]~37_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][6]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][6]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux26~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][7]~39_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][7]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][7]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux25~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][8]~41_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][8]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][8]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux24~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][9]~43_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][9]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][9]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux23~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][10]~45_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][10]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][10]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux22~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][11]~47_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][11]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][11]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux21~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][12]~49_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][12]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][12]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux20~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][13]~51_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][13]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][13]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux19~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][14]~53_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][14]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][14]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux18~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][15]~55_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][15]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][15]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux17~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][16]~57_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][16]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][16]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux16~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][17]~59_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][17]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][17]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux15~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][18]~61_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][18]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][18]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux14~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][19]~63_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][19]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][19]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux13~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][20]~65_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][20]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][20]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux12~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][21]~67_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][21]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][21]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux11~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][22]~69_combout\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][22]~q\ : std_logic;
SIGNAL \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][22]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux10~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux9~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][1]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux8~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][2]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux7~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][3]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux6~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][4]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux5~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][5]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux4~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][6]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux3~0_combout\ : std_logic;
SIGNAL \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][7]~q\ : std_logic;
SIGNAL \multfp32_inst|Mux2~0_combout\ : std_logic;
SIGNAL \a[31]~input_o\ : std_logic;
SIGNAL \b[31]~input_o\ : std_logic;
SIGNAL \multfp32_inst|signR_uid48_fpMulTest_delay|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist8_signR_uid48_fpMulTest_q_6|delay_signals[4][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist8_signR_uid48_fpMulTest_q_6|delay_signals[3][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist8_signR_uid48_fpMulTest_q_6|delay_signals[2][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist8_signR_uid48_fpMulTest_q_6|delay_signals[1][0]~q\ : std_logic;
SIGNAL \multfp32_inst|redist8_signR_uid48_fpMulTest_q_6|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|signRPostExc_uid102_fpMulTest_delay|delay_signals[0][0]~q\ : std_logic;
SIGNAL \multfp32_inst|expSumMBias_uid46_fpMulTest_o\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \multfp32_inst|expSum_uid44_fpMulTest_o\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \multfp32_inst|signRPostExc_uid102_fpMulTest_qi\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \multfp32_inst|signR_uid48_fpMulTest_qi\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_areset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_areset <= areset;
ww_a <= a;
ww_b <= b;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAA_bus\ <= (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT23\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT22\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT21\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT20\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT19\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT18\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT17\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT16\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT15\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT14\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT13\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT12\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT11\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT10\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT9\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT8\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT7\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT6\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT5\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT4\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT3\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT2\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT1\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~dataout\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~23\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~22\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~21\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~20\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~19\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~18\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~17\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~16\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~15\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~14\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~13\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~12\);

\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~0\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~1\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~2\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~3\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~4\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~5\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~6\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~7\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~8\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~9\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~10\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2~11\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(0) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(1) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(2) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(3) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(4) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(5) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(17);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(6) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(18);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(7) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(19);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(8) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(20);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(9) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(21);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(10) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(22);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(11) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(23);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(12) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(24);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(13) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(25);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(14) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(26);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(15) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(27);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(16) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(28);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(17) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(29);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(18) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(30);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(19) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(31);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(20) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(32);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(21) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(33);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(22) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(34);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(23) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\(35);

\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAA_bus\ <= (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT35\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT34\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT33\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT32\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT31\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT30\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT29\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT28\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT27\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT26\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT25\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT24\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT23\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT22\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT21\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT20\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT19\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT18\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT17\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT16\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT15\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT14\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT13\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT12\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT11\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT10\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT9\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT8\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT7\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT6\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT5\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT4\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT3\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT2\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT1\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~dataout\);

\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(0) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(1) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(2) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(3) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(4) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(5) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(6) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(7) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(8) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(9) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(10) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(11) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(12) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(13) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(14) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(15) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(16) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(17) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(17);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(18) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(18);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(19) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(19);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(20) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(20);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(21) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(21);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(22) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(22);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(23) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(23);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(24) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(24);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(25) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(25);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(26) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(26);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(27) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(27);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(28) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(28);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(29) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(29);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(30) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(30);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(31) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(31);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(32) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(32);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(33) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(33);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(34) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(34);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(35) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\(35);

\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAA_bus\ <= (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT23\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT22\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT21\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT20\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT19\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT18\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT17\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT16\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT15\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT14\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT13\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT12\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT11\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT10\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT9\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT8\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT7\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT6\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT5\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT4\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT3\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT2\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT1\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~dataout\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~23\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~22\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~21\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~20\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~19\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~18\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~17\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~16\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~15\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~14\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~13\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~12\);

\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~0\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~1\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~2\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~3\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~4\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~5\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~6\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~7\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~8\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~9\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~10\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2~11\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(0) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(1) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(2) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(3) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(4) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(5) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(17);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(6) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(18);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(7) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(19);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(8) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(20);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(9) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(21);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(10) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(22);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(11) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(23);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(12) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(24);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(13) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(25);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(14) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(26);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(15) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(27);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(16) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(28);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(17) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(29);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(18) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(30);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(19) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(31);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(20) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(32);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(21) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(33);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(22) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(34);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(23) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\(35);

\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAA_bus\ <= (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT13\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT12\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT11\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT10\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT9\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT8\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT7\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT6\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT5\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT4\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT3\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT2\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT1\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~dataout\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~7\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~6\ & \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~5\ & 
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~4\);

\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2~0\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2~1\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2~2\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2~3\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(0) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(1) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(2) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(3) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(4) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(5) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(6) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(7) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(8) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(9) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(10) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(11) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(12) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(13) <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAOUT_bus\(17);

\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAA_bus\ <= (\b[17]~input_o\ & \b[16]~input_o\ & \b[15]~input_o\ & \b[14]~input_o\ & \b[13]~input_o\ & \b[12]~input_o\ & \b[11]~input_o\ & \b[10]~input_o\ & 
\b[9]~input_o\ & \b[8]~input_o\ & \b[7]~input_o\ & \b[6]~input_o\ & \b[5]~input_o\ & \b[4]~input_o\ & \b[3]~input_o\ & \b[2]~input_o\ & \b[1]~input_o\ & \b[0]~input_o\);

\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAB_bus\ <= (vcc & \a[22]~input_o\ & \a[21]~input_o\ & \a[20]~input_o\ & \a[19]~input_o\ & \a[18]~input_o\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd);

\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~12\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~13\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~14\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~15\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~16\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~17\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~18\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~19\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~20\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~21\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~22\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~23\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~dataout\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT1\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT2\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT3\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT4\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT5\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(17);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT6\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(18);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT7\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(19);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT8\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(20);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT9\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(21);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT10\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(22);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT11\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(23);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT12\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(24);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT13\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(25);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT14\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(26);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT15\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(27);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT16\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(28);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT17\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(29);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT18\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(30);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT19\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(31);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT20\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(32);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT21\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(33);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT22\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(34);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1~DATAOUT23\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\(35);

\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAA_bus\ <= (\a[17]~input_o\ & \a[16]~input_o\ & \a[15]~input_o\ & \a[14]~input_o\ & \a[13]~input_o\ & \a[12]~input_o\ & \a[11]~input_o\ & \a[10]~input_o\ & 
\a[9]~input_o\ & \a[8]~input_o\ & \a[7]~input_o\ & \a[6]~input_o\ & \a[5]~input_o\ & \a[4]~input_o\ & \a[3]~input_o\ & \a[2]~input_o\ & \a[1]~input_o\ & \a[0]~input_o\);

\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAB_bus\ <= (\b[17]~input_o\ & \b[16]~input_o\ & \b[15]~input_o\ & \b[14]~input_o\ & \b[13]~input_o\ & \b[12]~input_o\ & \b[11]~input_o\ & \b[10]~input_o\ & 
\b[9]~input_o\ & \b[8]~input_o\ & \b[7]~input_o\ & \b[6]~input_o\ & \b[5]~input_o\ & \b[4]~input_o\ & \b[3]~input_o\ & \b[2]~input_o\ & \b[1]~input_o\ & \b[0]~input_o\);

\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~dataout\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT1\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT2\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT3\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT4\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT5\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT6\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT7\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT8\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT9\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT10\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT11\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT12\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT13\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT14\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT15\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT16\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT17\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(17);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT18\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(18);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT19\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(19);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT20\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(20);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT21\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(21);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT22\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(22);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT23\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(23);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT24\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(24);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT25\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(25);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT26\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(26);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT27\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(27);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT28\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(28);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT29\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(29);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT30\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(30);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT31\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(31);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT32\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(32);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT33\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(33);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT34\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(34);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1~DATAOUT35\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\(35);

\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAA_bus\ <= (\a[17]~input_o\ & \a[16]~input_o\ & \a[15]~input_o\ & \a[14]~input_o\ & \a[13]~input_o\ & \a[12]~input_o\ & \a[11]~input_o\ & \a[10]~input_o\ & 
\a[9]~input_o\ & \a[8]~input_o\ & \a[7]~input_o\ & \a[6]~input_o\ & \a[5]~input_o\ & \a[4]~input_o\ & \a[3]~input_o\ & \a[2]~input_o\ & \a[1]~input_o\ & \a[0]~input_o\);

\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAB_bus\ <= (vcc & \b[22]~input_o\ & \b[21]~input_o\ & \b[20]~input_o\ & \b[19]~input_o\ & \b[18]~input_o\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd);

\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~12\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~13\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~14\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~15\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~16\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~17\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~18\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~19\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~20\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~21\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~22\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~23\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~dataout\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT1\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT2\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT3\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT4\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT5\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(17);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT6\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(18);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT7\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(19);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT8\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(20);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT9\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(21);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT10\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(22);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT11\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(23);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT12\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(24);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT13\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(25);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT14\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(26);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT15\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(27);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT16\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(28);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT17\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(29);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT18\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(30);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT19\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(31);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT20\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(32);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT21\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(33);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT22\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(34);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1~DATAOUT23\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\(35);

\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAA_bus\ <= (gnd & vcc & \a[22]~input_o\ & \a[21]~input_o\ & \a[20]~input_o\ & \a[19]~input_o\ & \a[18]~input_o\ & gnd & gnd);

\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & \b[22]~input_o\ & \b[21]~input_o\ & \b[20]~input_o\ & \b[19]~input_o\ & \b[18]~input_o\ & gnd & gnd);

\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~4\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~5\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~6\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~7\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~dataout\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT1\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT2\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT3\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT4\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT5\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT6\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT7\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT8\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT9\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT10\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT11\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT12\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1~DATAOUT13\ <= \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAOUT_bus\(17);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\areset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \areset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_areset~inputclkctrl_outclk\ <= NOT \areset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
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

-- Location: IOOBUF_X78_Y33_N16
\q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
\q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X78_Y29_N9
\q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux30~0_combout\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X78_Y29_N23
\q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux29~0_combout\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X78_Y33_N23
\q[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\q[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux27~0_combout\,
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X78_Y37_N23
\q[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux26~0_combout\,
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\q[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux25~0_combout\,
	devoe => ww_devoe,
	o => \q[7]~output_o\);

-- Location: IOOBUF_X78_Y30_N23
\q[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux24~0_combout\,
	devoe => ww_devoe,
	o => \q[8]~output_o\);

-- Location: IOOBUF_X78_Y44_N24
\q[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux23~0_combout\,
	devoe => ww_devoe,
	o => \q[9]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\q[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux22~0_combout\,
	devoe => ww_devoe,
	o => \q[10]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\q[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux21~0_combout\,
	devoe => ww_devoe,
	o => \q[11]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\q[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux20~0_combout\,
	devoe => ww_devoe,
	o => \q[12]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\q[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux19~0_combout\,
	devoe => ww_devoe,
	o => \q[13]~output_o\);

-- Location: IOOBUF_X78_Y36_N24
\q[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux18~0_combout\,
	devoe => ww_devoe,
	o => \q[14]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\q[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux17~0_combout\,
	devoe => ww_devoe,
	o => \q[15]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\q[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux16~0_combout\,
	devoe => ww_devoe,
	o => \q[16]~output_o\);

-- Location: IOOBUF_X78_Y36_N16
\q[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \q[17]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\q[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \q[18]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\q[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \q[19]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\q[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \q[20]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\q[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \q[21]~output_o\);

-- Location: IOOBUF_X78_Y36_N2
\q[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \q[22]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\q[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \q[23]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\q[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \q[24]~output_o\);

-- Location: IOOBUF_X78_Y15_N9
\q[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \q[25]~output_o\);

-- Location: IOOBUF_X78_Y3_N2
\q[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \q[26]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\q[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \q[27]~output_o\);

-- Location: IOOBUF_X78_Y30_N16
\q[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \q[28]~output_o\);

-- Location: IOOBUF_X78_Y3_N23
\q[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \q[29]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\q[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \q[30]~output_o\);

-- Location: IOOBUF_X78_Y3_N9
\q[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multfp32_inst|signRPostExc_uid102_fpMulTest_delay|delay_signals[0][0]~q\,
	devoe => ww_devoe,
	o => \q[31]~output_o\);

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

-- Location: IOIBUF_X78_Y20_N1
\a[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X78_Y17_N8
\a[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: IOIBUF_X78_Y21_N22
\a[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: IOIBUF_X78_Y17_N1
\a[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: LCCOMB_X69_Y23_N10
\multfp32_inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal0~2_combout\ = (!\a[9]~input_o\ & (!\a[8]~input_o\ & (!\a[10]~input_o\ & !\a[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[9]~input_o\,
	datab => \a[8]~input_o\,
	datac => \a[10]~input_o\,
	datad => \a[11]~input_o\,
	combout => \multfp32_inst|Equal0~2_combout\);

-- Location: IOIBUF_X69_Y0_N8
\a[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X78_Y21_N15
\a[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X78_Y21_N8
\a[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X78_Y17_N22
\a[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X69_Y23_N2
\multfp32_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal0~0_combout\ = (!\a[3]~input_o\ & (!\a[1]~input_o\ & (!\a[2]~input_o\ & !\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[0]~input_o\,
	combout => \multfp32_inst|Equal0~0_combout\);

-- Location: IOIBUF_X69_Y0_N22
\a[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: IOIBUF_X78_Y16_N15
\a[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: IOIBUF_X78_Y16_N1
\a[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: IOIBUF_X69_Y0_N15
\a[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: LCCOMB_X69_Y23_N4
\multfp32_inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal0~3_combout\ = (!\a[15]~input_o\ & (!\a[12]~input_o\ & (!\a[14]~input_o\ & !\a[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \a[12]~input_o\,
	datac => \a[14]~input_o\,
	datad => \a[13]~input_o\,
	combout => \multfp32_inst|Equal0~3_combout\);

-- Location: IOIBUF_X62_Y0_N22
\a[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X78_Y18_N1
\a[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X78_Y18_N8
\a[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X78_Y23_N15
\a[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X69_Y23_N12
\multfp32_inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal0~1_combout\ = (!\a[4]~input_o\ & (!\a[7]~input_o\ & (!\a[6]~input_o\ & !\a[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \a[7]~input_o\,
	datac => \a[6]~input_o\,
	datad => \a[5]~input_o\,
	combout => \multfp32_inst|Equal0~1_combout\);

-- Location: LCCOMB_X69_Y23_N6
\multfp32_inst|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal0~4_combout\ = (\multfp32_inst|Equal0~2_combout\ & (\multfp32_inst|Equal0~0_combout\ & (\multfp32_inst|Equal0~3_combout\ & \multfp32_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|Equal0~2_combout\,
	datab => \multfp32_inst|Equal0~0_combout\,
	datac => \multfp32_inst|Equal0~3_combout\,
	datad => \multfp32_inst|Equal0~1_combout\,
	combout => \multfp32_inst|Equal0~4_combout\);

-- Location: IOIBUF_X78_Y17_N15
\a[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\a[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

-- Location: IOIBUF_X78_Y18_N15
\a[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

-- Location: IOIBUF_X78_Y21_N1
\a[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

-- Location: LCCOMB_X69_Y23_N8
\multfp32_inst|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal0~5_combout\ = (!\a[18]~input_o\ & (!\a[16]~input_o\ & (!\a[19]~input_o\ & !\a[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datab => \a[16]~input_o\,
	datac => \a[19]~input_o\,
	datad => \a[17]~input_o\,
	combout => \multfp32_inst|Equal0~5_combout\);

-- Location: IOIBUF_X78_Y23_N1
\a[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

-- Location: IOIBUF_X62_Y0_N29
\a[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

-- Location: IOIBUF_X78_Y23_N22
\a[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

-- Location: LCCOMB_X69_Y23_N18
\multfp32_inst|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal0~6_combout\ = (!\a[21]~input_o\ & (!\a[22]~input_o\ & !\a[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[21]~input_o\,
	datac => \a[22]~input_o\,
	datad => \a[20]~input_o\,
	combout => \multfp32_inst|Equal0~6_combout\);

-- Location: LCCOMB_X69_Y23_N24
\multfp32_inst|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal0~7_combout\ = (\multfp32_inst|Equal0~4_combout\ & (\multfp32_inst|Equal0~5_combout\ & \multfp32_inst|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|Equal0~4_combout\,
	datac => \multfp32_inst|Equal0~5_combout\,
	datad => \multfp32_inst|Equal0~6_combout\,
	combout => \multfp32_inst|Equal0~7_combout\);

-- Location: IOIBUF_X0_Y18_N22
\areset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_areset,
	o => \areset~input_o\);

-- Location: CLKCTRL_G4
\areset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \areset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \areset~inputclkctrl_outclk\);

-- Location: FF_X69_Y23_N25
\multfp32_inst|fracXIsZero_uid17_fpMulTest_delay|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|Equal0~7_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|fracXIsZero_uid17_fpMulTest_delay|delay_signals[0][0]~q\);

-- Location: LCCOMB_X70_Y27_N24
\multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[4][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[4][0]~feeder_combout\ = \multfp32_inst|fracXIsZero_uid17_fpMulTest_delay|delay_signals[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|fracXIsZero_uid17_fpMulTest_delay|delay_signals[0][0]~q\,
	combout => \multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[4][0]~feeder_combout\);

-- Location: FF_X70_Y27_N25
\multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[4][0]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[4][0]~q\);

-- Location: FF_X74_Y27_N21
\multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[4][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[3][0]~q\);

-- Location: FF_X74_Y27_N19
\multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[3][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[2][0]~q\);

-- Location: FF_X74_Y27_N17
\multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[2][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[1][0]~q\);

-- Location: FF_X74_Y27_N13
\multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[1][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[0][0]~q\);

-- Location: IOIBUF_X78_Y31_N15
\b[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(30),
	o => \b[30]~input_o\);

-- Location: IOIBUF_X78_Y31_N22
\b[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(27),
	o => \b[27]~input_o\);

-- Location: IOIBUF_X78_Y31_N8
\b[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(28),
	o => \b[28]~input_o\);

-- Location: IOIBUF_X78_Y41_N23
\b[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(29),
	o => \b[29]~input_o\);

-- Location: LCCOMB_X76_Y31_N18
\multfp32_inst|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal2~1_combout\ = (!\b[30]~input_o\ & (!\b[27]~input_o\ & (!\b[28]~input_o\ & !\b[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[30]~input_o\,
	datab => \b[27]~input_o\,
	datac => \b[28]~input_o\,
	datad => \b[29]~input_o\,
	combout => \multfp32_inst|Equal2~1_combout\);

-- Location: IOIBUF_X78_Y34_N15
\b[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(23),
	o => \b[23]~input_o\);

-- Location: IOIBUF_X78_Y34_N1
\b[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(24),
	o => \b[24]~input_o\);

-- Location: IOIBUF_X78_Y31_N1
\b[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(26),
	o => \b[26]~input_o\);

-- Location: IOIBUF_X78_Y42_N15
\b[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(25),
	o => \b[25]~input_o\);

-- Location: LCCOMB_X77_Y31_N2
\multfp32_inst|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal2~0_combout\ = (!\b[23]~input_o\ & (!\b[24]~input_o\ & (!\b[26]~input_o\ & !\b[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[23]~input_o\,
	datab => \b[24]~input_o\,
	datac => \b[26]~input_o\,
	datad => \b[25]~input_o\,
	combout => \multfp32_inst|Equal2~0_combout\);

-- Location: LCCOMB_X76_Y31_N28
\multfp32_inst|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal2~2_combout\ = (\multfp32_inst|Equal2~1_combout\ & \multfp32_inst|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|Equal2~1_combout\,
	datad => \multfp32_inst|Equal2~0_combout\,
	combout => \multfp32_inst|Equal2~2_combout\);

-- Location: LCCOMB_X76_Y27_N2
\multfp32_inst|excZ_y_uid29_fpMulTest_delay|delay_signals[0][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|excZ_y_uid29_fpMulTest_delay|delay_signals[0][0]~feeder_combout\ = \multfp32_inst|Equal2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|Equal2~2_combout\,
	combout => \multfp32_inst|excZ_y_uid29_fpMulTest_delay|delay_signals[0][0]~feeder_combout\);

-- Location: FF_X76_Y27_N3
\multfp32_inst|excZ_y_uid29_fpMulTest_delay|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|excZ_y_uid29_fpMulTest_delay|delay_signals[0][0]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|excZ_y_uid29_fpMulTest_delay|delay_signals[0][0]~q\);

-- Location: LCCOMB_X76_Y27_N0
\multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[4][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[4][0]~feeder_combout\ = \multfp32_inst|excZ_y_uid29_fpMulTest_delay|delay_signals[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|excZ_y_uid29_fpMulTest_delay|delay_signals[0][0]~q\,
	combout => \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[4][0]~feeder_combout\);

-- Location: FF_X76_Y27_N1
\multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[4][0]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[4][0]~q\);

-- Location: FF_X75_Y27_N21
\multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[4][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[3][0]~q\);

-- Location: FF_X75_Y27_N25
\multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[3][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[2][0]~q\);

-- Location: FF_X75_Y27_N11
\multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[2][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[1][0]~q\);

-- Location: FF_X75_Y27_N27
\multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[1][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[0][0]~q\);

-- Location: IOIBUF_X78_Y41_N15
\a[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(27),
	o => \a[27]~input_o\);

-- Location: IOIBUF_X78_Y35_N22
\a[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(29),
	o => \a[29]~input_o\);

-- Location: IOIBUF_X78_Y34_N8
\a[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(28),
	o => \a[28]~input_o\);

-- Location: IOIBUF_X78_Y42_N22
\a[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(30),
	o => \a[30]~input_o\);

-- Location: LCCOMB_X77_Y31_N30
\multfp32_inst|Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal5~1_combout\ = (!\a[27]~input_o\ & (!\a[29]~input_o\ & (!\a[28]~input_o\ & !\a[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[27]~input_o\,
	datab => \a[29]~input_o\,
	datac => \a[28]~input_o\,
	datad => \a[30]~input_o\,
	combout => \multfp32_inst|Equal5~1_combout\);

-- Location: IOIBUF_X78_Y42_N8
\a[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(24),
	o => \a[24]~input_o\);

-- Location: IOIBUF_X78_Y35_N15
\a[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(25),
	o => \a[25]~input_o\);

-- Location: IOIBUF_X78_Y37_N8
\a[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(26),
	o => \a[26]~input_o\);

-- Location: IOIBUF_X78_Y42_N1
\a[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

-- Location: LCCOMB_X77_Y31_N0
\multfp32_inst|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal5~0_combout\ = (!\a[24]~input_o\ & (!\a[25]~input_o\ & (!\a[26]~input_o\ & !\a[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[24]~input_o\,
	datab => \a[25]~input_o\,
	datac => \a[26]~input_o\,
	datad => \a[23]~input_o\,
	combout => \multfp32_inst|Equal5~0_combout\);

-- Location: LCCOMB_X77_Y31_N26
\multfp32_inst|Equal5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal5~2_combout\ = (\multfp32_inst|Equal5~1_combout\ & \multfp32_inst|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|Equal5~1_combout\,
	datad => \multfp32_inst|Equal5~0_combout\,
	combout => \multfp32_inst|Equal5~2_combout\);

-- Location: FF_X77_Y31_N27
\multfp32_inst|excZ_x_uid15_fpMulTest_delay|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|Equal5~2_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|excZ_x_uid15_fpMulTest_delay|delay_signals[0][0]~q\);

-- Location: LCCOMB_X77_Y27_N26
\multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[4][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[4][0]~feeder_combout\ = \multfp32_inst|excZ_x_uid15_fpMulTest_delay|delay_signals[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|excZ_x_uid15_fpMulTest_delay|delay_signals[0][0]~q\,
	combout => \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[4][0]~feeder_combout\);

-- Location: FF_X77_Y27_N27
\multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[4][0]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[4][0]~q\);

-- Location: LCCOMB_X76_Y27_N28
\multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[3][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[3][0]~feeder_combout\ = \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[4][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[4][0]~q\,
	combout => \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[3][0]~feeder_combout\);

-- Location: FF_X76_Y27_N29
\multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[3][0]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[3][0]~q\);

-- Location: LCCOMB_X76_Y27_N8
\multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[2][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[2][0]~feeder_combout\ = \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[3][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[3][0]~q\,
	combout => \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[2][0]~feeder_combout\);

-- Location: FF_X76_Y27_N9
\multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[2][0]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[2][0]~q\);

-- Location: FF_X75_Y27_N29
\multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[2][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[1][0]~q\);

-- Location: FF_X75_Y27_N31
\multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[1][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[0][0]~q\);

-- Location: LCCOMB_X76_Y31_N4
\multfp32_inst|Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal4~1_combout\ = (\b[30]~input_o\ & (\b[27]~input_o\ & (\b[28]~input_o\ & \b[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[30]~input_o\,
	datab => \b[27]~input_o\,
	datac => \b[28]~input_o\,
	datad => \b[29]~input_o\,
	combout => \multfp32_inst|Equal4~1_combout\);

-- Location: LCCOMB_X77_Y31_N28
\multfp32_inst|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal4~0_combout\ = (\b[23]~input_o\ & (\b[24]~input_o\ & (\b[26]~input_o\ & \b[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[23]~input_o\,
	datab => \b[24]~input_o\,
	datac => \b[26]~input_o\,
	datad => \b[25]~input_o\,
	combout => \multfp32_inst|Equal4~0_combout\);

-- Location: LCCOMB_X76_Y31_N12
\multfp32_inst|Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal4~2_combout\ = (\multfp32_inst|Equal4~1_combout\ & \multfp32_inst|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|Equal4~1_combout\,
	datad => \multfp32_inst|Equal4~0_combout\,
	combout => \multfp32_inst|Equal4~2_combout\);

-- Location: FF_X76_Y31_N13
\multfp32_inst|expXIsMax_uid30_fpMulTest_delay|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|Equal4~2_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|expXIsMax_uid30_fpMulTest_delay|delay_signals[0][0]~q\);

-- Location: LCCOMB_X76_Y31_N20
\multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[4][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[4][0]~feeder_combout\ = \multfp32_inst|expXIsMax_uid30_fpMulTest_delay|delay_signals[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|expXIsMax_uid30_fpMulTest_delay|delay_signals[0][0]~q\,
	combout => \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[4][0]~feeder_combout\);

-- Location: FF_X76_Y31_N21
\multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[4][0]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[4][0]~q\);

-- Location: LCCOMB_X76_Y31_N8
\multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[3][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[3][0]~feeder_combout\ = \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[4][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[4][0]~q\,
	combout => \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[3][0]~feeder_combout\);

-- Location: FF_X76_Y31_N9
\multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[3][0]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[3][0]~q\);

-- Location: LCCOMB_X76_Y27_N30
\multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[2][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[2][0]~feeder_combout\ = \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[3][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[3][0]~q\,
	combout => \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[2][0]~feeder_combout\);

-- Location: FF_X76_Y27_N31
\multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[2][0]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[2][0]~q\);

-- Location: FF_X75_Y27_N19
\multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[2][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[1][0]~q\);

-- Location: FF_X75_Y27_N9
\multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[1][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[0][0]~q\);

-- Location: IOIBUF_X78_Y16_N8
\b[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(18),
	o => \b[18]~input_o\);

-- Location: IOIBUF_X78_Y16_N23
\b[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(19),
	o => \b[19]~input_o\);

-- Location: IOIBUF_X78_Y15_N15
\b[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(16),
	o => \b[16]~input_o\);

-- Location: IOIBUF_X78_Y33_N1
\b[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(17),
	o => \b[17]~input_o\);

-- Location: LCCOMB_X75_Y25_N12
\multfp32_inst|Equal3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal3~5_combout\ = (!\b[18]~input_o\ & (!\b[19]~input_o\ & (!\b[16]~input_o\ & !\b[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[18]~input_o\,
	datab => \b[19]~input_o\,
	datac => \b[16]~input_o\,
	datad => \b[17]~input_o\,
	combout => \multfp32_inst|Equal3~5_combout\);

-- Location: IOIBUF_X78_Y20_N8
\b[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(21),
	o => \b[21]~input_o\);

-- Location: IOIBUF_X78_Y20_N15
\b[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(22),
	o => \b[22]~input_o\);

-- Location: IOIBUF_X78_Y20_N23
\b[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(20),
	o => \b[20]~input_o\);

-- Location: LCCOMB_X75_Y24_N0
\multfp32_inst|Equal3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal3~6_combout\ = (!\b[21]~input_o\ & (!\b[22]~input_o\ & !\b[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[21]~input_o\,
	datac => \b[22]~input_o\,
	datad => \b[20]~input_o\,
	combout => \multfp32_inst|Equal3~6_combout\);

-- Location: IOIBUF_X78_Y23_N8
\b[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: IOIBUF_X78_Y24_N8
\b[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: IOIBUF_X78_Y33_N8
\b[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: IOIBUF_X78_Y29_N15
\b[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: LCCOMB_X75_Y25_N10
\multfp32_inst|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal3~2_combout\ = (!\b[8]~input_o\ & (!\b[9]~input_o\ & (!\b[11]~input_o\ & !\b[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[8]~input_o\,
	datab => \b[9]~input_o\,
	datac => \b[11]~input_o\,
	datad => \b[10]~input_o\,
	combout => \multfp32_inst|Equal3~2_combout\);

-- Location: IOIBUF_X78_Y25_N22
\b[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X78_Y18_N22
\b[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X78_Y29_N1
\b[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X78_Y30_N1
\b[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LCCOMB_X75_Y25_N8
\multfp32_inst|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal3~1_combout\ = (!\b[4]~input_o\ & (!\b[5]~input_o\ & (!\b[6]~input_o\ & !\b[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \b[5]~input_o\,
	datac => \b[6]~input_o\,
	datad => \b[7]~input_o\,
	combout => \multfp32_inst|Equal3~1_combout\);

-- Location: IOIBUF_X78_Y24_N23
\b[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: IOIBUF_X78_Y25_N1
\b[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: IOIBUF_X78_Y25_N15
\b[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: IOIBUF_X78_Y24_N15
\b[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: LCCOMB_X75_Y25_N4
\multfp32_inst|Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal3~3_combout\ = (!\b[12]~input_o\ & (!\b[13]~input_o\ & (!\b[15]~input_o\ & !\b[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[12]~input_o\,
	datab => \b[13]~input_o\,
	datac => \b[15]~input_o\,
	datad => \b[14]~input_o\,
	combout => \multfp32_inst|Equal3~3_combout\);

-- Location: IOIBUF_X78_Y24_N1
\b[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X78_Y15_N1
\b[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X78_Y25_N8
\b[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X78_Y15_N22
\b[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X75_Y25_N2
\multfp32_inst|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal3~0_combout\ = (!\b[3]~input_o\ & (!\b[2]~input_o\ & (!\b[1]~input_o\ & !\b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[2]~input_o\,
	datac => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \multfp32_inst|Equal3~0_combout\);

-- Location: LCCOMB_X75_Y25_N18
\multfp32_inst|Equal3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal3~4_combout\ = (\multfp32_inst|Equal3~2_combout\ & (\multfp32_inst|Equal3~1_combout\ & (\multfp32_inst|Equal3~3_combout\ & \multfp32_inst|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|Equal3~2_combout\,
	datab => \multfp32_inst|Equal3~1_combout\,
	datac => \multfp32_inst|Equal3~3_combout\,
	datad => \multfp32_inst|Equal3~0_combout\,
	combout => \multfp32_inst|Equal3~4_combout\);

-- Location: LCCOMB_X75_Y25_N24
\multfp32_inst|Equal3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal3~7_combout\ = (\multfp32_inst|Equal3~5_combout\ & (\multfp32_inst|Equal3~6_combout\ & \multfp32_inst|Equal3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|Equal3~5_combout\,
	datab => \multfp32_inst|Equal3~6_combout\,
	datad => \multfp32_inst|Equal3~4_combout\,
	combout => \multfp32_inst|Equal3~7_combout\);

-- Location: FF_X75_Y25_N25
\multfp32_inst|fracXIsZero_uid31_fpMulTest_delay|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|Equal3~7_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|fracXIsZero_uid31_fpMulTest_delay|delay_signals[0][0]~q\);

-- Location: FF_X75_Y27_N13
\multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|fracXIsZero_uid31_fpMulTest_delay|delay_signals[0][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[4][0]~q\);

-- Location: FF_X75_Y27_N17
\multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[4][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[3][0]~q\);

-- Location: FF_X75_Y27_N15
\multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[3][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[2][0]~q\);

-- Location: FF_X75_Y27_N23
\multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[2][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[1][0]~q\);

-- Location: FF_X75_Y27_N1
\multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[1][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[0][0]~q\);

-- Location: LCCOMB_X75_Y27_N8
\multfp32_inst|concExc_uid90_fpMulTest_q[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|concExc_uid90_fpMulTest_q[2]~0_combout\ = (\multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[0][0]~q\ & ((\multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[0][0]~q\) # 
-- (!\multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[0][0]~q\,
	datac => \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[0][0]~q\,
	datad => \multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[0][0]~q\,
	combout => \multfp32_inst|concExc_uid90_fpMulTest_q[2]~0_combout\);

-- Location: LCCOMB_X77_Y31_N22
\multfp32_inst|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal1~1_combout\ = (\a[27]~input_o\ & (\a[29]~input_o\ & (\a[28]~input_o\ & \a[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[27]~input_o\,
	datab => \a[29]~input_o\,
	datac => \a[28]~input_o\,
	datad => \a[30]~input_o\,
	combout => \multfp32_inst|Equal1~1_combout\);

-- Location: LCCOMB_X77_Y31_N24
\multfp32_inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal1~0_combout\ = (\a[24]~input_o\ & (\a[25]~input_o\ & (\a[26]~input_o\ & \a[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[24]~input_o\,
	datab => \a[25]~input_o\,
	datac => \a[26]~input_o\,
	datad => \a[23]~input_o\,
	combout => \multfp32_inst|Equal1~0_combout\);

-- Location: LCCOMB_X76_Y31_N6
\multfp32_inst|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal1~2_combout\ = (\multfp32_inst|Equal1~1_combout\ & \multfp32_inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|Equal1~1_combout\,
	datad => \multfp32_inst|Equal1~0_combout\,
	combout => \multfp32_inst|Equal1~2_combout\);

-- Location: FF_X76_Y31_N7
\multfp32_inst|expXIsMax_uid16_fpMulTest_delay|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|Equal1~2_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|expXIsMax_uid16_fpMulTest_delay|delay_signals[0][0]~q\);

-- Location: LCCOMB_X76_Y31_N22
\multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[4][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[4][0]~feeder_combout\ = \multfp32_inst|expXIsMax_uid16_fpMulTest_delay|delay_signals[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|expXIsMax_uid16_fpMulTest_delay|delay_signals[0][0]~q\,
	combout => \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[4][0]~feeder_combout\);

-- Location: FF_X76_Y31_N23
\multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[4][0]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[4][0]~q\);

-- Location: LCCOMB_X76_Y27_N18
\multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[3][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[3][0]~feeder_combout\ = \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[4][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[4][0]~q\,
	combout => \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[3][0]~feeder_combout\);

-- Location: FF_X76_Y27_N19
\multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[3][0]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[3][0]~q\);

-- Location: LCCOMB_X76_Y27_N22
\multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[2][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[2][0]~feeder_combout\ = \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[3][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[3][0]~q\,
	combout => \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[2][0]~feeder_combout\);

-- Location: FF_X76_Y27_N23
\multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[2][0]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[2][0]~q\);

-- Location: LCCOMB_X76_Y27_N12
\multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[1][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[1][0]~feeder_combout\ = \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[2][0]~q\,
	combout => \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[1][0]~feeder_combout\);

-- Location: FF_X76_Y27_N13
\multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[1][0]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[1][0]~q\);

-- Location: FF_X75_Y27_N7
\multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[1][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[0][0]~q\);

-- Location: LCCOMB_X74_Y27_N2
\multfp32_inst|concExc_uid90_fpMulTest_q[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|concExc_uid90_fpMulTest_q[2]~1_combout\ = (\multfp32_inst|concExc_uid90_fpMulTest_q[2]~0_combout\) # ((\multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[0][0]~q\ & 
-- ((\multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[0][0]~q\) # (!\multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[0][0]~q\,
	datac => \multfp32_inst|concExc_uid90_fpMulTest_q[2]~0_combout\,
	datad => \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[0][0]~q\,
	combout => \multfp32_inst|concExc_uid90_fpMulTest_q[2]~1_combout\);

-- Location: FF_X74_Y27_N3
\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|concExc_uid90_fpMulTest_q[2]~1_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\);

-- Location: LCCOMB_X77_Y31_N4
\multfp32_inst|expSum_uid44_fpMulTest_o[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|expSum_uid44_fpMulTest_o[0]~9_combout\ = (\a[23]~input_o\ & (\b[23]~input_o\ $ (VCC))) # (!\a[23]~input_o\ & (\b[23]~input_o\ & VCC))
-- \multfp32_inst|expSum_uid44_fpMulTest_o[0]~10\ = CARRY((\a[23]~input_o\ & \b[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[23]~input_o\,
	datab => \b[23]~input_o\,
	datad => VCC,
	combout => \multfp32_inst|expSum_uid44_fpMulTest_o[0]~9_combout\,
	cout => \multfp32_inst|expSum_uid44_fpMulTest_o[0]~10\);

-- Location: LCCOMB_X77_Y31_N6
\multfp32_inst|expSum_uid44_fpMulTest_o[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|expSum_uid44_fpMulTest_o[1]~11_combout\ = (\a[24]~input_o\ & ((\b[24]~input_o\ & (\multfp32_inst|expSum_uid44_fpMulTest_o[0]~10\ & VCC)) # (!\b[24]~input_o\ & (!\multfp32_inst|expSum_uid44_fpMulTest_o[0]~10\)))) # (!\a[24]~input_o\ & 
-- ((\b[24]~input_o\ & (!\multfp32_inst|expSum_uid44_fpMulTest_o[0]~10\)) # (!\b[24]~input_o\ & ((\multfp32_inst|expSum_uid44_fpMulTest_o[0]~10\) # (GND)))))
-- \multfp32_inst|expSum_uid44_fpMulTest_o[1]~12\ = CARRY((\a[24]~input_o\ & (!\b[24]~input_o\ & !\multfp32_inst|expSum_uid44_fpMulTest_o[0]~10\)) # (!\a[24]~input_o\ & ((!\multfp32_inst|expSum_uid44_fpMulTest_o[0]~10\) # (!\b[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[24]~input_o\,
	datab => \b[24]~input_o\,
	datad => VCC,
	cin => \multfp32_inst|expSum_uid44_fpMulTest_o[0]~10\,
	combout => \multfp32_inst|expSum_uid44_fpMulTest_o[1]~11_combout\,
	cout => \multfp32_inst|expSum_uid44_fpMulTest_o[1]~12\);

-- Location: LCCOMB_X77_Y31_N8
\multfp32_inst|expSum_uid44_fpMulTest_o[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|expSum_uid44_fpMulTest_o[2]~13_combout\ = ((\b[25]~input_o\ $ (\a[25]~input_o\ $ (!\multfp32_inst|expSum_uid44_fpMulTest_o[1]~12\)))) # (GND)
-- \multfp32_inst|expSum_uid44_fpMulTest_o[2]~14\ = CARRY((\b[25]~input_o\ & ((\a[25]~input_o\) # (!\multfp32_inst|expSum_uid44_fpMulTest_o[1]~12\))) # (!\b[25]~input_o\ & (\a[25]~input_o\ & !\multfp32_inst|expSum_uid44_fpMulTest_o[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[25]~input_o\,
	datab => \a[25]~input_o\,
	datad => VCC,
	cin => \multfp32_inst|expSum_uid44_fpMulTest_o[1]~12\,
	combout => \multfp32_inst|expSum_uid44_fpMulTest_o[2]~13_combout\,
	cout => \multfp32_inst|expSum_uid44_fpMulTest_o[2]~14\);

-- Location: LCCOMB_X77_Y31_N10
\multfp32_inst|expSum_uid44_fpMulTest_o[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|expSum_uid44_fpMulTest_o[3]~15_combout\ = (\a[26]~input_o\ & ((\b[26]~input_o\ & (\multfp32_inst|expSum_uid44_fpMulTest_o[2]~14\ & VCC)) # (!\b[26]~input_o\ & (!\multfp32_inst|expSum_uid44_fpMulTest_o[2]~14\)))) # (!\a[26]~input_o\ & 
-- ((\b[26]~input_o\ & (!\multfp32_inst|expSum_uid44_fpMulTest_o[2]~14\)) # (!\b[26]~input_o\ & ((\multfp32_inst|expSum_uid44_fpMulTest_o[2]~14\) # (GND)))))
-- \multfp32_inst|expSum_uid44_fpMulTest_o[3]~16\ = CARRY((\a[26]~input_o\ & (!\b[26]~input_o\ & !\multfp32_inst|expSum_uid44_fpMulTest_o[2]~14\)) # (!\a[26]~input_o\ & ((!\multfp32_inst|expSum_uid44_fpMulTest_o[2]~14\) # (!\b[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[26]~input_o\,
	datab => \b[26]~input_o\,
	datad => VCC,
	cin => \multfp32_inst|expSum_uid44_fpMulTest_o[2]~14\,
	combout => \multfp32_inst|expSum_uid44_fpMulTest_o[3]~15_combout\,
	cout => \multfp32_inst|expSum_uid44_fpMulTest_o[3]~16\);

-- Location: LCCOMB_X77_Y31_N12
\multfp32_inst|expSum_uid44_fpMulTest_o[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|expSum_uid44_fpMulTest_o[4]~17_combout\ = ((\a[27]~input_o\ $ (\b[27]~input_o\ $ (!\multfp32_inst|expSum_uid44_fpMulTest_o[3]~16\)))) # (GND)
-- \multfp32_inst|expSum_uid44_fpMulTest_o[4]~18\ = CARRY((\a[27]~input_o\ & ((\b[27]~input_o\) # (!\multfp32_inst|expSum_uid44_fpMulTest_o[3]~16\))) # (!\a[27]~input_o\ & (\b[27]~input_o\ & !\multfp32_inst|expSum_uid44_fpMulTest_o[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[27]~input_o\,
	datab => \b[27]~input_o\,
	datad => VCC,
	cin => \multfp32_inst|expSum_uid44_fpMulTest_o[3]~16\,
	combout => \multfp32_inst|expSum_uid44_fpMulTest_o[4]~17_combout\,
	cout => \multfp32_inst|expSum_uid44_fpMulTest_o[4]~18\);

-- Location: LCCOMB_X77_Y31_N14
\multfp32_inst|expSum_uid44_fpMulTest_o[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|expSum_uid44_fpMulTest_o[5]~19_combout\ = (\b[28]~input_o\ & ((\a[28]~input_o\ & (\multfp32_inst|expSum_uid44_fpMulTest_o[4]~18\ & VCC)) # (!\a[28]~input_o\ & (!\multfp32_inst|expSum_uid44_fpMulTest_o[4]~18\)))) # (!\b[28]~input_o\ & 
-- ((\a[28]~input_o\ & (!\multfp32_inst|expSum_uid44_fpMulTest_o[4]~18\)) # (!\a[28]~input_o\ & ((\multfp32_inst|expSum_uid44_fpMulTest_o[4]~18\) # (GND)))))
-- \multfp32_inst|expSum_uid44_fpMulTest_o[5]~20\ = CARRY((\b[28]~input_o\ & (!\a[28]~input_o\ & !\multfp32_inst|expSum_uid44_fpMulTest_o[4]~18\)) # (!\b[28]~input_o\ & ((!\multfp32_inst|expSum_uid44_fpMulTest_o[4]~18\) # (!\a[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[28]~input_o\,
	datab => \a[28]~input_o\,
	datad => VCC,
	cin => \multfp32_inst|expSum_uid44_fpMulTest_o[4]~18\,
	combout => \multfp32_inst|expSum_uid44_fpMulTest_o[5]~19_combout\,
	cout => \multfp32_inst|expSum_uid44_fpMulTest_o[5]~20\);

-- Location: LCCOMB_X77_Y31_N16
\multfp32_inst|expSum_uid44_fpMulTest_o[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|expSum_uid44_fpMulTest_o[6]~21_combout\ = ((\b[29]~input_o\ $ (\a[29]~input_o\ $ (!\multfp32_inst|expSum_uid44_fpMulTest_o[5]~20\)))) # (GND)
-- \multfp32_inst|expSum_uid44_fpMulTest_o[6]~22\ = CARRY((\b[29]~input_o\ & ((\a[29]~input_o\) # (!\multfp32_inst|expSum_uid44_fpMulTest_o[5]~20\))) # (!\b[29]~input_o\ & (\a[29]~input_o\ & !\multfp32_inst|expSum_uid44_fpMulTest_o[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[29]~input_o\,
	datab => \a[29]~input_o\,
	datad => VCC,
	cin => \multfp32_inst|expSum_uid44_fpMulTest_o[5]~20\,
	combout => \multfp32_inst|expSum_uid44_fpMulTest_o[6]~21_combout\,
	cout => \multfp32_inst|expSum_uid44_fpMulTest_o[6]~22\);

-- Location: LCCOMB_X77_Y31_N18
\multfp32_inst|expSum_uid44_fpMulTest_o[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|expSum_uid44_fpMulTest_o[7]~23_combout\ = (\b[30]~input_o\ & ((\a[30]~input_o\ & (\multfp32_inst|expSum_uid44_fpMulTest_o[6]~22\ & VCC)) # (!\a[30]~input_o\ & (!\multfp32_inst|expSum_uid44_fpMulTest_o[6]~22\)))) # (!\b[30]~input_o\ & 
-- ((\a[30]~input_o\ & (!\multfp32_inst|expSum_uid44_fpMulTest_o[6]~22\)) # (!\a[30]~input_o\ & ((\multfp32_inst|expSum_uid44_fpMulTest_o[6]~22\) # (GND)))))
-- \multfp32_inst|expSum_uid44_fpMulTest_o[7]~24\ = CARRY((\b[30]~input_o\ & (!\a[30]~input_o\ & !\multfp32_inst|expSum_uid44_fpMulTest_o[6]~22\)) # (!\b[30]~input_o\ & ((!\multfp32_inst|expSum_uid44_fpMulTest_o[6]~22\) # (!\a[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[30]~input_o\,
	datab => \a[30]~input_o\,
	datad => VCC,
	cin => \multfp32_inst|expSum_uid44_fpMulTest_o[6]~22\,
	combout => \multfp32_inst|expSum_uid44_fpMulTest_o[7]~23_combout\,
	cout => \multfp32_inst|expSum_uid44_fpMulTest_o[7]~24\);

-- Location: LCCOMB_X77_Y31_N20
\multfp32_inst|expSum_uid44_fpMulTest_o[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|expSum_uid44_fpMulTest_o[8]~25_combout\ = !\multfp32_inst|expSum_uid44_fpMulTest_o[7]~24\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \multfp32_inst|expSum_uid44_fpMulTest_o[7]~24\,
	combout => \multfp32_inst|expSum_uid44_fpMulTest_o[8]~25_combout\);

-- Location: FF_X77_Y31_N21
\multfp32_inst|expSum_uid44_fpMulTest_o[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|expSum_uid44_fpMulTest_o[8]~25_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|expSum_uid44_fpMulTest_o\(8));

-- Location: LCCOMB_X77_Y27_N28
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][8]~feeder_combout\ = \multfp32_inst|expSum_uid44_fpMulTest_o\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|expSum_uid44_fpMulTest_o\(8),
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][8]~feeder_combout\);

-- Location: FF_X77_Y27_N29
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][8]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][8]~q\);

-- Location: LCCOMB_X76_Y27_N16
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][8]~feeder_combout\ = \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][8]~q\,
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][8]~feeder_combout\);

-- Location: FF_X76_Y27_N17
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][8]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][8]~q\);

-- Location: LCCOMB_X76_Y27_N20
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][8]~feeder_combout\ = \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][8]~q\,
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][8]~feeder_combout\);

-- Location: FF_X76_Y27_N21
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][8]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][8]~q\);

-- Location: LCCOMB_X77_Y27_N20
\multfp32_inst|expSum_uid44_fpMulTest_o[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|expSum_uid44_fpMulTest_o[7]~feeder_combout\ = \multfp32_inst|expSum_uid44_fpMulTest_o[7]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|expSum_uid44_fpMulTest_o[7]~23_combout\,
	combout => \multfp32_inst|expSum_uid44_fpMulTest_o[7]~feeder_combout\);

-- Location: FF_X77_Y27_N21
\multfp32_inst|expSum_uid44_fpMulTest_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|expSum_uid44_fpMulTest_o[7]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|expSum_uid44_fpMulTest_o\(7));

-- Location: LCCOMB_X77_Y27_N2
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][7]~feeder_combout\ = \multfp32_inst|expSum_uid44_fpMulTest_o\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|expSum_uid44_fpMulTest_o\(7),
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][7]~feeder_combout\);

-- Location: FF_X77_Y27_N3
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][7]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][7]~q\);

-- Location: LCCOMB_X76_Y27_N26
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][7]~feeder_combout\ = \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][7]~q\,
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][7]~feeder_combout\);

-- Location: FF_X76_Y27_N27
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][7]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][7]~q\);

-- Location: FF_X72_Y27_N11
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][7]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][7]~q\);

-- Location: FF_X77_Y31_N17
\multfp32_inst|expSum_uid44_fpMulTest_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|expSum_uid44_fpMulTest_o[6]~21_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|expSum_uid44_fpMulTest_o\(6));

-- Location: FF_X77_Y31_N19
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|expSum_uid44_fpMulTest_o\(6),
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][6]~q\);

-- Location: LCCOMB_X76_Y31_N10
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][6]~feeder_combout\ = \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][6]~q\,
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][6]~feeder_combout\);

-- Location: FF_X76_Y31_N11
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][6]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][6]~q\);

-- Location: LCCOMB_X72_Y27_N6
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][6]~feeder_combout\ = \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][6]~q\,
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][6]~feeder_combout\);

-- Location: FF_X72_Y27_N7
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][6]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][6]~q\);

-- Location: FF_X77_Y31_N15
\multfp32_inst|expSum_uid44_fpMulTest_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|expSum_uid44_fpMulTest_o[5]~19_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|expSum_uid44_fpMulTest_o\(5));

-- Location: LCCOMB_X77_Y27_N12
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][5]~feeder_combout\ = \multfp32_inst|expSum_uid44_fpMulTest_o\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|expSum_uid44_fpMulTest_o\(5),
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][5]~feeder_combout\);

-- Location: FF_X77_Y27_N13
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][5]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][5]~q\);

-- Location: LCCOMB_X76_Y27_N4
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][5]~feeder_combout\ = \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][5]~q\,
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][5]~feeder_combout\);

-- Location: FF_X76_Y27_N5
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][5]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][5]~q\);

-- Location: LCCOMB_X72_Y27_N4
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][5]~feeder_combout\ = \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][5]~q\,
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][5]~feeder_combout\);

-- Location: FF_X72_Y27_N5
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][5]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][5]~q\);

-- Location: FF_X77_Y31_N13
\multfp32_inst|expSum_uid44_fpMulTest_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|expSum_uid44_fpMulTest_o[4]~17_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|expSum_uid44_fpMulTest_o\(4));

-- Location: LCCOMB_X77_Y27_N22
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][4]~feeder_combout\ = \multfp32_inst|expSum_uid44_fpMulTest_o\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|expSum_uid44_fpMulTest_o\(4),
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][4]~feeder_combout\);

-- Location: FF_X77_Y27_N23
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][4]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][4]~q\);

-- Location: LCCOMB_X76_Y27_N14
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][4]~feeder_combout\ = \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][4]~q\,
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][4]~feeder_combout\);

-- Location: FF_X76_Y27_N15
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][4]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][4]~q\);

-- Location: LCCOMB_X72_Y27_N30
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][4]~feeder_combout\ = \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][4]~q\,
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][4]~feeder_combout\);

-- Location: FF_X72_Y27_N31
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][4]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][4]~q\);

-- Location: FF_X77_Y31_N11
\multfp32_inst|expSum_uid44_fpMulTest_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|expSum_uid44_fpMulTest_o[3]~15_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|expSum_uid44_fpMulTest_o\(3));

-- Location: LCCOMB_X77_Y27_N4
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][3]~feeder_combout\ = \multfp32_inst|expSum_uid44_fpMulTest_o\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|expSum_uid44_fpMulTest_o\(3),
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][3]~feeder_combout\);

-- Location: FF_X77_Y27_N5
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][3]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][3]~q\);

-- Location: LCCOMB_X76_Y27_N24
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][3]~feeder_combout\ = \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][3]~q\,
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][3]~feeder_combout\);

-- Location: FF_X76_Y27_N25
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][3]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][3]~q\);

-- Location: LCCOMB_X72_Y27_N28
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][3]~feeder_combout\ = \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][3]~q\,
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][3]~feeder_combout\);

-- Location: FF_X72_Y27_N29
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][3]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][3]~q\);

-- Location: FF_X77_Y31_N9
\multfp32_inst|expSum_uid44_fpMulTest_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|expSum_uid44_fpMulTest_o[2]~13_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|expSum_uid44_fpMulTest_o\(2));

-- Location: LCCOMB_X77_Y27_N10
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][2]~feeder_combout\ = \multfp32_inst|expSum_uid44_fpMulTest_o\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|expSum_uid44_fpMulTest_o\(2),
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][2]~feeder_combout\);

-- Location: FF_X77_Y27_N11
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][2]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][2]~q\);

-- Location: LCCOMB_X76_Y27_N6
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][2]~feeder_combout\ = \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][2]~q\,
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][2]~feeder_combout\);

-- Location: FF_X76_Y27_N7
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][2]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][2]~q\);

-- Location: LCCOMB_X76_Y27_N10
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][2]~feeder_combout\ = \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][2]~q\,
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][2]~feeder_combout\);

-- Location: FF_X76_Y27_N11
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][2]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][2]~q\);

-- Location: FF_X77_Y31_N5
\multfp32_inst|expSum_uid44_fpMulTest_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|expSum_uid44_fpMulTest_o[0]~9_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|expSum_uid44_fpMulTest_o\(0));

-- Location: LCCOMB_X72_Y28_N18
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][0]~feeder_combout\ = \multfp32_inst|expSum_uid44_fpMulTest_o\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|expSum_uid44_fpMulTest_o\(0),
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][0]~feeder_combout\);

-- Location: FF_X72_Y28_N19
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][0]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][0]~q\);

-- Location: LCCOMB_X72_Y28_N28
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][0]~feeder_combout\ = \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][0]~q\,
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][0]~feeder_combout\);

-- Location: FF_X72_Y28_N29
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][0]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][0]~q\);

-- Location: LCCOMB_X72_Y28_N30
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][0]~feeder_combout\ = \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][0]~q\,
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][0]~feeder_combout\);

-- Location: FF_X72_Y28_N31
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][0]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][0]~q\);

-- Location: FF_X77_Y31_N7
\multfp32_inst|expSum_uid44_fpMulTest_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|expSum_uid44_fpMulTest_o[1]~11_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|expSum_uid44_fpMulTest_o\(1));

-- Location: LCCOMB_X72_Y31_N8
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][1]~feeder_combout\ = \multfp32_inst|expSum_uid44_fpMulTest_o\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|expSum_uid44_fpMulTest_o\(1),
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][1]~feeder_combout\);

-- Location: FF_X72_Y31_N9
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][1]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][1]~q\);

-- Location: LCCOMB_X72_Y27_N2
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][1]~feeder_combout\ = \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[2][1]~q\,
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][1]~feeder_combout\);

-- Location: FF_X72_Y27_N3
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][1]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][1]~q\);

-- Location: LCCOMB_X72_Y27_N0
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][1]~feeder_combout\ = \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[1][1]~q\,
	combout => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][1]~feeder_combout\);

-- Location: FF_X72_Y27_N1
\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][1]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][1]~q\);

-- Location: LCCOMB_X72_Y27_N10
\multfp32_inst|expSumMBias_uid46_fpMulTest_o[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|expSumMBias_uid46_fpMulTest_o[1]~9_combout\ = (\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][0]~q\ & (\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][1]~q\ $ (VCC))) # 
-- (!\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][0]~q\ & (\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][1]~q\ & VCC))
-- \multfp32_inst|expSumMBias_uid46_fpMulTest_o[1]~10\ = CARRY((\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][0]~q\ & \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][1]~q\,
	datad => VCC,
	combout => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[1]~9_combout\,
	cout => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[1]~10\);

-- Location: LCCOMB_X72_Y27_N12
\multfp32_inst|expSumMBias_uid46_fpMulTest_o[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|expSumMBias_uid46_fpMulTest_o[2]~11_combout\ = (\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][2]~q\ & (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o[1]~10\)) # 
-- (!\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][2]~q\ & ((\multfp32_inst|expSumMBias_uid46_fpMulTest_o[1]~10\) # (GND)))
-- \multfp32_inst|expSumMBias_uid46_fpMulTest_o[2]~12\ = CARRY((!\multfp32_inst|expSumMBias_uid46_fpMulTest_o[1]~10\) # (!\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][2]~q\,
	datad => VCC,
	cin => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[1]~10\,
	combout => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[2]~11_combout\,
	cout => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[2]~12\);

-- Location: LCCOMB_X72_Y27_N14
\multfp32_inst|expSumMBias_uid46_fpMulTest_o[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|expSumMBias_uid46_fpMulTest_o[3]~13_combout\ = (\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][3]~q\ & (\multfp32_inst|expSumMBias_uid46_fpMulTest_o[2]~12\ $ (GND))) # 
-- (!\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][3]~q\ & (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o[2]~12\ & VCC))
-- \multfp32_inst|expSumMBias_uid46_fpMulTest_o[3]~14\ = CARRY((\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][3]~q\ & !\multfp32_inst|expSumMBias_uid46_fpMulTest_o[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][3]~q\,
	datad => VCC,
	cin => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[2]~12\,
	combout => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[3]~13_combout\,
	cout => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[3]~14\);

-- Location: LCCOMB_X72_Y27_N16
\multfp32_inst|expSumMBias_uid46_fpMulTest_o[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|expSumMBias_uid46_fpMulTest_o[4]~15_combout\ = (\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][4]~q\ & (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o[3]~14\)) # 
-- (!\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][4]~q\ & ((\multfp32_inst|expSumMBias_uid46_fpMulTest_o[3]~14\) # (GND)))
-- \multfp32_inst|expSumMBias_uid46_fpMulTest_o[4]~16\ = CARRY((!\multfp32_inst|expSumMBias_uid46_fpMulTest_o[3]~14\) # (!\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][4]~q\,
	datad => VCC,
	cin => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[3]~14\,
	combout => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[4]~15_combout\,
	cout => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[4]~16\);

-- Location: LCCOMB_X72_Y27_N18
\multfp32_inst|expSumMBias_uid46_fpMulTest_o[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|expSumMBias_uid46_fpMulTest_o[5]~17_combout\ = (\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][5]~q\ & (\multfp32_inst|expSumMBias_uid46_fpMulTest_o[4]~16\ $ (GND))) # 
-- (!\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][5]~q\ & (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o[4]~16\ & VCC))
-- \multfp32_inst|expSumMBias_uid46_fpMulTest_o[5]~18\ = CARRY((\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][5]~q\ & !\multfp32_inst|expSumMBias_uid46_fpMulTest_o[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][5]~q\,
	datad => VCC,
	cin => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[4]~16\,
	combout => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[5]~17_combout\,
	cout => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[5]~18\);

-- Location: LCCOMB_X72_Y27_N20
\multfp32_inst|expSumMBias_uid46_fpMulTest_o[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|expSumMBias_uid46_fpMulTest_o[6]~19_combout\ = (\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][6]~q\ & (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o[5]~18\)) # 
-- (!\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][6]~q\ & ((\multfp32_inst|expSumMBias_uid46_fpMulTest_o[5]~18\) # (GND)))
-- \multfp32_inst|expSumMBias_uid46_fpMulTest_o[6]~20\ = CARRY((!\multfp32_inst|expSumMBias_uid46_fpMulTest_o[5]~18\) # (!\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][6]~q\,
	datad => VCC,
	cin => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[5]~18\,
	combout => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[6]~19_combout\,
	cout => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[6]~20\);

-- Location: LCCOMB_X72_Y27_N22
\multfp32_inst|expSumMBias_uid46_fpMulTest_o[7]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|expSumMBias_uid46_fpMulTest_o[7]~21_combout\ = (\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][7]~q\ & ((GND) # (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o[6]~20\))) # 
-- (!\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][7]~q\ & (\multfp32_inst|expSumMBias_uid46_fpMulTest_o[6]~20\ $ (GND)))
-- \multfp32_inst|expSumMBias_uid46_fpMulTest_o[7]~22\ = CARRY((\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][7]~q\) # (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][7]~q\,
	datad => VCC,
	cin => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[6]~20\,
	combout => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[7]~21_combout\,
	cout => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[7]~22\);

-- Location: LCCOMB_X72_Y27_N24
\multfp32_inst|expSumMBias_uid46_fpMulTest_o[8]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|expSumMBias_uid46_fpMulTest_o[8]~23_combout\ = (\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][8]~q\ & (\multfp32_inst|expSumMBias_uid46_fpMulTest_o[7]~22\ & VCC)) # 
-- (!\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][8]~q\ & (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o[7]~22\))
-- \multfp32_inst|expSumMBias_uid46_fpMulTest_o[8]~24\ = CARRY((!\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][8]~q\ & !\multfp32_inst|expSumMBias_uid46_fpMulTest_o[7]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][8]~q\,
	datad => VCC,
	cin => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[7]~22\,
	combout => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[8]~23_combout\,
	cout => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[8]~24\);

-- Location: LCCOMB_X72_Y27_N26
\multfp32_inst|expSumMBias_uid46_fpMulTest_o[10]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|expSumMBias_uid46_fpMulTest_o[10]~25_combout\ = \multfp32_inst|expSumMBias_uid46_fpMulTest_o[8]~24\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[8]~24\,
	combout => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[10]~25_combout\);

-- Location: FF_X72_Y27_N27
\multfp32_inst|expSumMBias_uid46_fpMulTest_o[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[10]~25_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(10));

-- Location: FF_X72_Y27_N25
\multfp32_inst|expSumMBias_uid46_fpMulTest_o[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[8]~23_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(8));

-- Location: FF_X72_Y27_N23
\multfp32_inst|expSumMBias_uid46_fpMulTest_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[7]~21_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(7));

-- Location: FF_X72_Y27_N21
\multfp32_inst|expSumMBias_uid46_fpMulTest_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[6]~19_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(6));

-- Location: FF_X72_Y27_N19
\multfp32_inst|expSumMBias_uid46_fpMulTest_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[5]~17_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(5));

-- Location: FF_X72_Y27_N17
\multfp32_inst|expSumMBias_uid46_fpMulTest_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[4]~15_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(4));

-- Location: FF_X72_Y27_N15
\multfp32_inst|expSumMBias_uid46_fpMulTest_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[3]~13_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(3));

-- Location: FF_X72_Y27_N13
\multfp32_inst|expSumMBias_uid46_fpMulTest_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[2]~11_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(2));

-- Location: LCCOMB_X71_Y27_N30
\multfp32_inst|expSumMBias_uid46_fpMulTest_o[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|expSumMBias_uid46_fpMulTest_o[1]~feeder_combout\ = \multfp32_inst|expSumMBias_uid46_fpMulTest_o[1]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[1]~9_combout\,
	combout => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[1]~feeder_combout\);

-- Location: FF_X71_Y27_N31
\multfp32_inst|expSumMBias_uid46_fpMulTest_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[1]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(1));

-- Location: LCCOMB_X72_Y28_N4
\multfp32_inst|expSumMBias_uid46_fpMulTest_o[0]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|expSumMBias_uid46_fpMulTest_o[0]~27_combout\ = !\multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|redist9_expSum_uid44_fpMulTest_q_4|delay_signals[0][0]~q\,
	combout => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[0]~27_combout\);

-- Location: FF_X72_Y28_N5
\multfp32_inst|expSumMBias_uid46_fpMulTest_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|expSumMBias_uid46_fpMulTest_o[0]~27_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(0));

-- Location: DSPMULT_X68_Y23_N0
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \clk~inputclkctrl_outclk\,
	aclr => \areset~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X68_Y23_N2
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	aclr => \areset~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPMULT_X68_Y24_N0
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clk~inputclkctrl_outclk\,
	aclr => \areset~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X68_Y24_N2
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	aclr => \areset~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPMULT_X68_Y25_N0
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clk~inputclkctrl_outclk\,
	aclr => \areset~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X68_Y25_N2
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	aclr => \areset~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X69_Y25_N2
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[18]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[18]~30_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(18) & 
-- (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(0) $ (VCC))) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(18) & 
-- (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(0) & VCC))
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[18]~31\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(18) & 
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(18),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(0),
	datad => VCC,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[18]~30_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[18]~31\);

-- Location: LCCOMB_X69_Y25_N4
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[19]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[19]~32_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(19) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(1) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[18]~31\ & VCC)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(1) & (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[18]~31\)))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(19) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(1) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[18]~31\)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(1) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[18]~31\) # 
-- (GND)))))
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[19]~33\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(19) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(1) & !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[18]~31\)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(19) & ((!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[18]~31\) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(19),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(1),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[18]~31\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[19]~32_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[19]~33\);

-- Location: LCCOMB_X69_Y25_N6
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[20]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[20]~34_combout\ = ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(2) $ 
-- (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(20) $ (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[19]~33\)))) # (GND)
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[20]~35\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(2) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(20)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[19]~33\))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(2) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(20) & 
-- !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[19]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(2),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(20),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[19]~33\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[20]~34_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[20]~35\);

-- Location: LCCOMB_X69_Y25_N8
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[21]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[21]~36_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(21) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(3) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[20]~35\ & VCC)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(3) & (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[20]~35\)))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(21) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(3) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[20]~35\)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(3) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[20]~35\) # 
-- (GND)))))
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[21]~37\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(21) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(3) & !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[20]~35\)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(21) & ((!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[20]~35\) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(21),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(3),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[20]~35\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[21]~36_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[21]~37\);

-- Location: LCCOMB_X69_Y25_N10
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[22]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[22]~38_combout\ = ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(22) $ 
-- (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(4) $ (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[21]~37\)))) # (GND)
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[22]~39\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(22) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(4)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[21]~37\))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(22) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(4) & 
-- !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[21]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(22),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(4),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[21]~37\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[22]~38_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[22]~39\);

-- Location: LCCOMB_X69_Y25_N12
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[23]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[23]~40_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(23) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(5) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[22]~39\ & VCC)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(5) & (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[22]~39\)))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(23) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(5) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[22]~39\)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(5) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[22]~39\) # 
-- (GND)))))
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[23]~41\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(23) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(5) & !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[22]~39\)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(23) & ((!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[22]~39\) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(23),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(5),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[22]~39\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[23]~40_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[23]~41\);

-- Location: LCCOMB_X69_Y25_N14
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[24]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[24]~42_combout\ = ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(6) $ 
-- (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(24) $ (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[23]~41\)))) # (GND)
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[24]~43\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(6) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(24)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[23]~41\))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(6) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(24) & 
-- !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[23]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(6),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(24),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[23]~41\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[24]~42_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[24]~43\);

-- Location: LCCOMB_X69_Y25_N16
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[25]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[25]~44_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(7) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(25) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[24]~43\ & VCC)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(25) & (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[24]~43\)))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(7) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(25) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[24]~43\)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(25) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[24]~43\) 
-- # (GND)))))
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[25]~45\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(7) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(25) & !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[24]~43\)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(7) & ((!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[24]~43\) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(7),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(25),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[24]~43\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[25]~44_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[25]~45\);

-- Location: LCCOMB_X69_Y25_N18
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[26]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[26]~46_combout\ = ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(26) $ 
-- (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(8) $ (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[25]~45\)))) # (GND)
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[26]~47\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(26) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(8)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[25]~45\))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(26) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(8) & 
-- !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[25]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(26),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(8),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[25]~45\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[26]~46_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[26]~47\);

-- Location: LCCOMB_X69_Y25_N20
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[27]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[27]~48_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(27) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(9) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[26]~47\ & VCC)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(9) & (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[26]~47\)))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(27) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(9) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[26]~47\)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(9) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[26]~47\) # 
-- (GND)))))
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[27]~49\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(27) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(9) & !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[26]~47\)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(27) & ((!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[26]~47\) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(27),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(9),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[26]~47\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[27]~48_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[27]~49\);

-- Location: LCCOMB_X69_Y25_N22
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[28]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[28]~50_combout\ = ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(28) $ 
-- (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(10) $ (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[27]~49\)))) # (GND)
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[28]~51\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(28) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(10)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[27]~49\))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(28) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(10) & 
-- !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[27]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(28),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(10),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[27]~49\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[28]~50_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[28]~51\);

-- Location: LCCOMB_X69_Y25_N24
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[29]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[29]~52_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(29) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(11) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[28]~51\ & VCC)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(11) & (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[28]~51\)))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(29) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(11) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[28]~51\)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(11) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[28]~51\) # 
-- (GND)))))
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[29]~53\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(29) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(11) & !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[28]~51\)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(29) & ((!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[28]~51\) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(29),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(11),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[28]~51\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[29]~52_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[29]~53\);

-- Location: LCCOMB_X69_Y25_N26
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[30]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[30]~54_combout\ = ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(12) $ 
-- (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(30) $ (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[29]~53\)))) # (GND)
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[30]~55\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(12) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(30)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[29]~53\))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(12) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(30) & 
-- !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[29]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(12),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(30),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[29]~53\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[30]~54_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[30]~55\);

-- Location: LCCOMB_X69_Y25_N28
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[31]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[31]~56_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(13) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(31) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[30]~55\ & VCC)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(31) & (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[30]~55\)))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(13) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(31) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[30]~55\)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(31) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[30]~55\) 
-- # (GND)))))
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[31]~57\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(13) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(31) & !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[30]~55\)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(13) & ((!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[30]~55\) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(13),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(31),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[30]~55\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[31]~56_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[31]~57\);

-- Location: LCCOMB_X69_Y25_N30
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[32]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[32]~58_combout\ = ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(32) $ 
-- (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(14) $ (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[31]~57\)))) # (GND)
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[32]~59\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(32) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(14)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[31]~57\))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(32) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(14) & 
-- !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[31]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(32),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(14),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[31]~57\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[32]~58_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[32]~59\);

-- Location: LCCOMB_X69_Y24_N0
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[33]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[33]~60_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(33) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(15) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[32]~59\ & VCC)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(15) & (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[32]~59\)))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(33) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(15) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[32]~59\)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(15) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[32]~59\) # 
-- (GND)))))
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[33]~61\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(33) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(15) & !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[32]~59\)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(33) & ((!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[32]~59\) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(33),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(15),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[32]~59\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[33]~60_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[33]~61\);

-- Location: LCCOMB_X69_Y24_N2
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[34]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[34]~62_combout\ = ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(34) $ 
-- (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(16) $ (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[33]~61\)))) # (GND)
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[34]~63\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(34) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(16)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[33]~61\))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(34) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(16) & 
-- !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[33]~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(34),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(16),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[33]~61\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[34]~62_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[34]~63\);

-- Location: LCCOMB_X69_Y24_N4
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[35]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[35]~64_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(17) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(35) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[34]~63\ & VCC)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(35) & (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[34]~63\)))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(17) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(35) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[34]~63\)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(35) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[34]~63\) 
-- # (GND)))))
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[35]~65\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(17) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(35) & !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[34]~63\)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(17) & ((!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[34]~63\) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(17),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(35),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[34]~63\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[35]~64_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[35]~65\);

-- Location: LCCOMB_X69_Y24_N6
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[36]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[36]~66_combout\ = ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(18) $ 
-- (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(0) $ (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[35]~65\)))) # (GND)
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[36]~67\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(18) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(0)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[35]~65\))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(18) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(0) & 
-- !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[35]~65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(18),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(0),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[35]~65\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[36]~66_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[36]~67\);

-- Location: LCCOMB_X69_Y24_N8
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[37]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[37]~68_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(1) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(19) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[36]~67\ & VCC)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(19) & (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[36]~67\)))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(1) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(19) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[36]~67\)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(19) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[36]~67\) # 
-- (GND)))))
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[37]~69\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(1) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(19) & !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[36]~67\)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(1) & ((!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[36]~67\) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(1),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(19),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[36]~67\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[37]~68_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[37]~69\);

-- Location: LCCOMB_X69_Y24_N10
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[38]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[38]~70_combout\ = ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(20) $ 
-- (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(2) $ (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[37]~69\)))) # (GND)
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[38]~71\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(20) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(2)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[37]~69\))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(20) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(2) & 
-- !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[37]~69\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(20),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(2),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[37]~69\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[38]~70_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[38]~71\);

-- Location: LCCOMB_X69_Y24_N12
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[39]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[39]~72_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(3) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(21) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[38]~71\ & VCC)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(21) & (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[38]~71\)))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(3) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(21) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[38]~71\)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(21) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[38]~71\) # 
-- (GND)))))
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[39]~73\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(3) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(21) & !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[38]~71\)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(3) & ((!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[38]~71\) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(3),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(21),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[38]~71\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[39]~72_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[39]~73\);

-- Location: LCCOMB_X69_Y24_N14
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[40]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[40]~74_combout\ = ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(4) $ 
-- (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(22) $ (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[39]~73\)))) # (GND)
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[40]~75\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(4) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(22)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[39]~73\))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(4) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(22) & 
-- !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[39]~73\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(4),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(22),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[39]~73\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[40]~74_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[40]~75\);

-- Location: LCCOMB_X69_Y24_N16
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[41]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[41]~76_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(23) & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(5) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[40]~75\ & VCC)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(5) & (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[40]~75\)))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(23) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(5) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[40]~75\)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(5) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[40]~75\) # 
-- (GND)))))
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[41]~77\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(23) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(5) & !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[40]~75\)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(23) & ((!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[40]~75\) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im5_component|auto_generated|result\(23),
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(5),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[40]~75\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[41]~76_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[41]~77\);

-- Location: LCCOMB_X69_Y24_N18
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[42]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[42]~78_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(6) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[41]~77\ $ 
-- (GND))) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(6) & (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[41]~77\ & VCC))
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[42]~79\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(6) & !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[41]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(6),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[41]~77\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[42]~78_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[42]~79\);

-- Location: LCCOMB_X69_Y24_N20
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[43]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[43]~80_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(7) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[42]~79\)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(7) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[42]~79\) # 
-- (GND)))
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[43]~81\ = CARRY((!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[42]~79\) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(7),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[42]~79\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[43]~80_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[43]~81\);

-- Location: LCCOMB_X69_Y24_N22
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[44]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[44]~82_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(8) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[43]~81\ $ 
-- (GND))) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(8) & (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[43]~81\ & VCC))
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[44]~83\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(8) & !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[43]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(8),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[43]~81\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[44]~82_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[44]~83\);

-- Location: LCCOMB_X69_Y24_N24
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[45]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[45]~84_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(9) & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[44]~83\)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(9) & ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[44]~83\) # 
-- (GND)))
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[45]~85\ = CARRY((!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[44]~83\) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(9),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[44]~83\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[45]~84_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[45]~85\);

-- Location: LCCOMB_X69_Y24_N26
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[46]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[46]~86_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(10) & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[45]~85\ 
-- $ (GND))) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(10) & (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[45]~85\ & VCC))
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[46]~87\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(10) & !\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[45]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(10),
	datad => VCC,
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[45]~85\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[46]~86_combout\,
	cout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[46]~87\);

-- Location: LCCOMB_X69_Y24_N28
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[47]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[47]~88_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(11) $ (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[46]~87\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im0_component|auto_generated|result\(11),
	cin => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[46]~87\,
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[47]~88_combout\);

-- Location: FF_X69_Y24_N29
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[47]~88_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(47));

-- Location: FF_X69_Y24_N27
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[46]~86_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(46));

-- Location: FF_X69_Y24_N25
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[45]~84_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(45));

-- Location: FF_X69_Y24_N23
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[44]~82_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(44));

-- Location: FF_X69_Y24_N21
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[43]~80_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(43));

-- Location: FF_X69_Y24_N19
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[42]~78_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(42));

-- Location: FF_X69_Y24_N17
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[41]~76_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(41));

-- Location: DSPMULT_X68_Y26_N0
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clk~inputclkctrl_outclk\,
	aclr => \areset~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X68_Y26_N2
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	aclr => \areset~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X69_Y26_N22
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][23]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(23),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][23]~feeder_combout\);

-- Location: FF_X69_Y26_N23
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][23]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][23]~q\);

-- Location: LCCOMB_X69_Y26_N24
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][22]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(22),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][22]~feeder_combout\);

-- Location: FF_X69_Y26_N25
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][22]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][22]~q\);

-- Location: FF_X69_Y24_N15
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[40]~74_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(40));

-- Location: FF_X69_Y24_N13
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[39]~72_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(39));

-- Location: LCCOMB_X69_Y26_N2
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][21]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(21),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][21]~feeder_combout\);

-- Location: FF_X69_Y26_N3
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][21]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][21]~q\);

-- Location: LCCOMB_X69_Y26_N28
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][20]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(20),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][20]~feeder_combout\);

-- Location: FF_X69_Y26_N29
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][20]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][20]~q\);

-- Location: FF_X69_Y24_N11
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[38]~70_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(38));

-- Location: FF_X69_Y24_N9
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[37]~68_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(37));

-- Location: LCCOMB_X69_Y26_N10
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][19]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(19),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][19]~feeder_combout\);

-- Location: FF_X69_Y26_N11
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][19]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][19]~q\);

-- Location: LCCOMB_X70_Y24_N30
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][18]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(18),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][18]~feeder_combout\);

-- Location: FF_X70_Y24_N31
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][18]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][18]~q\);

-- Location: FF_X69_Y24_N7
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[36]~66_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(36));

-- Location: FF_X69_Y24_N5
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[35]~64_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(35));

-- Location: LCCOMB_X69_Y26_N20
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][17]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(17),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][17]~feeder_combout\);

-- Location: FF_X69_Y26_N21
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][17]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][17]~q\);

-- Location: FF_X69_Y24_N3
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[34]~62_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(34));

-- Location: LCCOMB_X69_Y26_N14
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][16]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(16),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][16]~feeder_combout\);

-- Location: FF_X69_Y26_N15
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][16]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][16]~q\);

-- Location: FF_X69_Y24_N1
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[33]~60_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(33));

-- Location: LCCOMB_X69_Y24_N30
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][15]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(15),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][15]~feeder_combout\);

-- Location: FF_X69_Y24_N31
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][15]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][15]~q\);

-- Location: LCCOMB_X69_Y26_N4
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][14]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(14),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][14]~feeder_combout\);

-- Location: FF_X69_Y26_N5
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][14]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][14]~q\);

-- Location: FF_X69_Y25_N31
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[32]~58_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(32));

-- Location: LCCOMB_X69_Y26_N6
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][13]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(13),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][13]~feeder_combout\);

-- Location: FF_X69_Y26_N7
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][13]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][13]~q\);

-- Location: FF_X69_Y25_N29
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[31]~56_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(31));

-- Location: FF_X69_Y25_N27
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[30]~54_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(30));

-- Location: LCCOMB_X69_Y26_N0
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][12]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(12),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][12]~feeder_combout\);

-- Location: FF_X69_Y26_N1
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][12]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][12]~q\);

-- Location: LCCOMB_X69_Y26_N26
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][11]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(11),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][11]~feeder_combout\);

-- Location: FF_X69_Y26_N27
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][11]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][11]~q\);

-- Location: FF_X69_Y25_N25
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[29]~52_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(29));

-- Location: LCCOMB_X69_Y26_N8
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][10]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(10),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][10]~feeder_combout\);

-- Location: FF_X69_Y26_N9
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][10]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][10]~q\);

-- Location: FF_X69_Y25_N23
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[28]~50_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(28));

-- Location: LCCOMB_X69_Y26_N18
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][9]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(9),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][9]~feeder_combout\);

-- Location: FF_X69_Y26_N19
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][9]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][9]~q\);

-- Location: FF_X69_Y25_N21
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[27]~48_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(27));

-- Location: LCCOMB_X69_Y26_N16
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][8]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(8),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][8]~feeder_combout\);

-- Location: FF_X69_Y26_N17
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][8]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][8]~q\);

-- Location: FF_X69_Y25_N19
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[26]~46_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(26));

-- Location: FF_X69_Y25_N17
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[25]~44_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(25));

-- Location: LCCOMB_X69_Y26_N30
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][7]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(7),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][7]~feeder_combout\);

-- Location: FF_X69_Y26_N31
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][7]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][7]~q\);

-- Location: FF_X69_Y25_N15
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[24]~42_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(24));

-- Location: LCCOMB_X69_Y26_N12
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][6]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(6),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][6]~feeder_combout\);

-- Location: FF_X69_Y26_N13
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][6]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][6]~q\);

-- Location: FF_X69_Y25_N13
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[23]~40_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(23));

-- Location: FF_X70_Y25_N1
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(5),
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][5]~q\);

-- Location: FF_X69_Y25_N11
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[22]~38_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(22));

-- Location: LCCOMB_X71_Y25_N24
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][4]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(4),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][4]~feeder_combout\);

-- Location: FF_X71_Y25_N25
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][4]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][4]~q\);

-- Location: FF_X69_Y25_N9
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[21]~36_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(21));

-- Location: LCCOMB_X71_Y25_N22
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][3]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(3),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][3]~feeder_combout\);

-- Location: FF_X71_Y25_N23
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][3]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][3]~q\);

-- Location: LCCOMB_X69_Y25_N0
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][2]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(2),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][2]~feeder_combout\);

-- Location: FF_X69_Y25_N1
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][2]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][2]~q\);

-- Location: FF_X69_Y25_N7
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[20]~34_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(20));

-- Location: LCCOMB_X71_Y25_N4
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][1]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(1),
	combout => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][1]~feeder_combout\);

-- Location: FF_X71_Y25_N5
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][1]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][1]~q\);

-- Location: FF_X69_Y25_N5
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[19]~32_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(19));

-- Location: FF_X69_Y25_N3
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[18]~30_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(18));

-- Location: FF_X70_Y25_N3
\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im8_component|auto_generated|result\(0),
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][0]~q\);

-- Location: LCCOMB_X70_Y25_N2
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~30_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(18) & 
-- (\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][0]~q\ $ (VCC))) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(18) & 
-- (\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][0]~q\ & VCC))
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~31\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(18) & 
-- \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(18),
	datab => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][0]~q\,
	datad => VCC,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~30_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~31\);

-- Location: LCCOMB_X70_Y25_N4
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][19]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][19]~32_combout\ = (\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][1]~q\ & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(19) & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~31\ & VCC)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(19) & 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~31\)))) # (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][1]~q\ & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(19) & (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~31\)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(19) & 
-- ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~31\) # (GND)))))
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][19]~33\ = CARRY((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][1]~q\ & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(19) & !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~31\)) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][1]~q\ & ((!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~31\) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][1]~q\,
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(19),
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~31\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][19]~32_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][19]~33\);

-- Location: LCCOMB_X70_Y25_N6
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][20]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][20]~34_combout\ = ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][2]~q\ $ 
-- (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(20) $ (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][19]~33\)))) # (GND)
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][20]~35\ = CARRY((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][2]~q\ & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(20)) # (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][19]~33\))) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][2]~q\ & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(20) & 
-- !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][19]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][2]~q\,
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(20),
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][19]~33\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][20]~34_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][20]~35\);

-- Location: LCCOMB_X70_Y25_N8
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][21]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][21]~36_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(21) & 
-- ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][3]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][20]~35\ & VCC)) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][3]~q\ & (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][20]~35\)))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(21) & ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][3]~q\ & 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][20]~35\)) # (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][3]~q\ & 
-- ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][20]~35\) # (GND)))))
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][21]~37\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(21) & 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][3]~q\ & !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][20]~35\)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(21) & ((!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][20]~35\) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(21),
	datab => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][3]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][20]~35\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][21]~36_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][21]~37\);

-- Location: LCCOMB_X70_Y25_N10
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~38_combout\ = ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(22) $ 
-- (\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][4]~q\ $ (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][21]~37\)))) # (GND)
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~39\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(22) & 
-- ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][4]~q\) # (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][21]~37\))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(22) & (\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][4]~q\ & 
-- !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][21]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(22),
	datab => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][4]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][21]~37\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~38_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~39\);

-- Location: LCCOMB_X70_Y25_N12
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]~40_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(23) & 
-- ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][5]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~39\ & VCC)) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][5]~q\ & (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~39\)))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(23) & ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][5]~q\ & 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~39\)) # (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][5]~q\ & 
-- ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~39\) # (GND)))))
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]~41\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(23) & 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][5]~q\ & !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~39\)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(23) & ((!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~39\) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(23),
	datab => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][5]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~39\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]~40_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]~41\);

-- Location: LCCOMB_X70_Y25_N14
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~42_combout\ = ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(24) $ 
-- (\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][6]~q\ $ (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]~41\)))) # (GND)
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~43\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(24) & 
-- ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][6]~q\) # (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]~41\))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(24) & (\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][6]~q\ & 
-- !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(24),
	datab => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][6]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]~41\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~42_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~43\);

-- Location: LCCOMB_X70_Y25_N16
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][25]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][25]~44_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(25) & 
-- ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][7]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~43\ & VCC)) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][7]~q\ & (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~43\)))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(25) & ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][7]~q\ & 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~43\)) # (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][7]~q\ & 
-- ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~43\) # (GND)))))
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][25]~45\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(25) & 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][7]~q\ & !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~43\)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(25) & ((!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~43\) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(25),
	datab => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][7]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~43\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][25]~44_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][25]~45\);

-- Location: LCCOMB_X70_Y25_N18
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]~46_combout\ = ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][8]~q\ $ 
-- (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(26) $ (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][25]~45\)))) # (GND)
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]~47\ = CARRY((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][8]~q\ & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(26)) # (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][25]~45\))) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][8]~q\ & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(26) & 
-- !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][25]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][8]~q\,
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(26),
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][25]~45\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]~46_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]~47\);

-- Location: LCCOMB_X70_Y25_N20
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][27]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][27]~48_combout\ = (\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][9]~q\ & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(27) & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]~47\ & VCC)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(27) & 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]~47\)))) # (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][9]~q\ & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(27) & (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]~47\)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(27) & 
-- ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]~47\) # (GND)))))
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][27]~49\ = CARRY((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][9]~q\ & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(27) & !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]~47\)) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][9]~q\ & ((!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]~47\) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][9]~q\,
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(27),
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]~47\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][27]~48_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][27]~49\);

-- Location: LCCOMB_X70_Y25_N22
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]~50_combout\ = ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][10]~q\ $ 
-- (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(28) $ (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][27]~49\)))) # (GND)
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]~51\ = CARRY((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][10]~q\ & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(28)) # (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][27]~49\))) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][10]~q\ & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(28) & 
-- !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][27]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][10]~q\,
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(28),
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][27]~49\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]~50_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]~51\);

-- Location: LCCOMB_X70_Y25_N24
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][29]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][29]~52_combout\ = (\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][11]~q\ & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(29) & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]~51\ & VCC)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(29) & 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]~51\)))) # (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][11]~q\ & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(29) & (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]~51\)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(29) & 
-- ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]~51\) # (GND)))))
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][29]~53\ = CARRY((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][11]~q\ & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(29) & !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]~51\)) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][11]~q\ & ((!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]~51\) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][11]~q\,
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(29),
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]~51\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][29]~52_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][29]~53\);

-- Location: LCCOMB_X70_Y25_N26
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]~54_combout\ = ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(30) $ 
-- (\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][12]~q\ $ (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][29]~53\)))) # (GND)
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]~55\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(30) & 
-- ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][12]~q\) # (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][29]~53\))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(30) & (\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][12]~q\ & 
-- !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][29]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(30),
	datab => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][12]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][29]~53\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]~54_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]~55\);

-- Location: LCCOMB_X70_Y25_N28
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][31]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][31]~56_combout\ = (\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][13]~q\ & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(31) & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]~55\ & VCC)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(31) & 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]~55\)))) # (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][13]~q\ & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(31) & (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]~55\)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(31) & 
-- ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]~55\) # (GND)))))
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][31]~57\ = CARRY((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][13]~q\ & 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(31) & !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]~55\)) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][13]~q\ & ((!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]~55\) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][13]~q\,
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(31),
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]~55\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][31]~56_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][31]~57\);

-- Location: LCCOMB_X70_Y25_N30
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]~58_combout\ = ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][14]~q\ $ 
-- (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(32) $ (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][31]~57\)))) # (GND)
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]~59\ = CARRY((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][14]~q\ & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(32)) # (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][31]~57\))) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][14]~q\ & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(32) & 
-- !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][31]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][14]~q\,
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(32),
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][31]~57\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]~58_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]~59\);

-- Location: LCCOMB_X70_Y24_N0
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][33]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][33]~60_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(33) & 
-- ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][15]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]~59\ & VCC)) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][15]~q\ & (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]~59\)))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(33) & ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][15]~q\ & 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]~59\)) # (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][15]~q\ & 
-- ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]~59\) # (GND)))))
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][33]~61\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(33) & 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][15]~q\ & !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]~59\)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(33) & ((!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]~59\) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(33),
	datab => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][15]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]~59\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][33]~60_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][33]~61\);

-- Location: LCCOMB_X70_Y24_N2
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]~62_combout\ = ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(34) $ 
-- (\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][16]~q\ $ (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][33]~61\)))) # (GND)
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]~63\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(34) & 
-- ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][16]~q\) # (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][33]~61\))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(34) & (\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][16]~q\ & 
-- !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][33]~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(34),
	datab => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][16]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][33]~61\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]~62_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]~63\);

-- Location: LCCOMB_X70_Y24_N4
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][35]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][35]~64_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(35) & 
-- ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][17]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]~63\ & VCC)) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][17]~q\ & (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]~63\)))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(35) & ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][17]~q\ & 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]~63\)) # (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][17]~q\ & 
-- ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]~63\) # (GND)))))
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][35]~65\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(35) & 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][17]~q\ & !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]~63\)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(35) & ((!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]~63\) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(35),
	datab => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][17]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]~63\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][35]~64_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][35]~65\);

-- Location: LCCOMB_X70_Y24_N6
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]~66_combout\ = ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][18]~q\ $ 
-- (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(36) $ (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][35]~65\)))) # (GND)
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]~67\ = CARRY((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][18]~q\ & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(36)) # (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][35]~65\))) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][18]~q\ & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(36) & 
-- !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][35]~65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][18]~q\,
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(36),
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][35]~65\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]~66_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]~67\);

-- Location: LCCOMB_X70_Y24_N8
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][37]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][37]~68_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(37) & 
-- ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][19]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]~67\ & VCC)) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][19]~q\ & (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]~67\)))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(37) & ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][19]~q\ & 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]~67\)) # (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][19]~q\ & 
-- ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]~67\) # (GND)))))
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][37]~69\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(37) & 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][19]~q\ & !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]~67\)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(37) & ((!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]~67\) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(37),
	datab => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][19]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]~67\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][37]~68_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][37]~69\);

-- Location: LCCOMB_X70_Y24_N10
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]~70_combout\ = ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][20]~q\ $ 
-- (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(38) $ (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][37]~69\)))) # (GND)
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]~71\ = CARRY((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][20]~q\ & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(38)) # (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][37]~69\))) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][20]~q\ & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(38) & 
-- !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][37]~69\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][20]~q\,
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(38),
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][37]~69\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]~70_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]~71\);

-- Location: LCCOMB_X70_Y24_N12
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][39]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][39]~72_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(39) & 
-- ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][21]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]~71\ & VCC)) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][21]~q\ & (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]~71\)))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(39) & ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][21]~q\ & 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]~71\)) # (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][21]~q\ & 
-- ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]~71\) # (GND)))))
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][39]~73\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(39) & 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][21]~q\ & !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]~71\)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(39) & ((!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]~71\) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(39),
	datab => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][21]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]~71\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][39]~72_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][39]~73\);

-- Location: LCCOMB_X70_Y24_N14
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]~74_combout\ = ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][22]~q\ $ 
-- (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(40) $ (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][39]~73\)))) # (GND)
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]~75\ = CARRY((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][22]~q\ & 
-- ((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(40)) # (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][39]~73\))) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][22]~q\ & (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(40) & 
-- !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][39]~73\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][22]~q\,
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(40),
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][39]~73\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]~74_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]~75\);

-- Location: LCCOMB_X70_Y24_N16
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][41]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][41]~76_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(41) & 
-- ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][23]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]~75\ & VCC)) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][23]~q\ & (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]~75\)))) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(41) & ((\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][23]~q\ & 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]~75\)) # (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][23]~q\ & 
-- ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]~75\) # (GND)))))
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][41]~77\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(41) & 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][23]~q\ & !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]~75\)) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(41) & ((!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]~75\) # 
-- (!\multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(41),
	datab => \multfp32_inst|redist0_prodXY_uid105_prod_uid47_fpMulTest_im8_q_1|delay_signals[0][23]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]~75\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][41]~76_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][41]~77\);

-- Location: LCCOMB_X70_Y24_N18
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][42]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][42]~78_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(42) & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][41]~77\ 
-- $ (GND))) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(42) & (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][41]~77\ & VCC))
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][42]~79\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(42) & !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][41]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(42),
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][41]~77\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][42]~78_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][42]~79\);

-- Location: LCCOMB_X70_Y24_N20
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][43]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][43]~80_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(43) & 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][42]~79\)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(43) & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][42]~79\) 
-- # (GND)))
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][43]~81\ = CARRY((!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][42]~79\) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(43),
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][42]~79\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][43]~80_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][43]~81\);

-- Location: LCCOMB_X70_Y24_N22
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][44]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][44]~82_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(44) & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][43]~81\ 
-- $ (GND))) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(44) & (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][43]~81\ & VCC))
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][44]~83\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(44) & !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][43]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(44),
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][43]~81\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][44]~82_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][44]~83\);

-- Location: LCCOMB_X70_Y24_N24
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][45]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][45]~84_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(45) & 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][44]~83\)) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(45) & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][44]~83\) 
-- # (GND)))
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][45]~85\ = CARRY((!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][44]~83\) # 
-- (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(45),
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][44]~83\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][45]~84_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][45]~85\);

-- Location: LCCOMB_X70_Y24_N26
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][46]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][46]~86_combout\ = (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(46) & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][45]~85\ 
-- $ (GND))) # (!\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(46) & (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][45]~85\ & VCC))
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][46]~87\ = CARRY((\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(46) & !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][45]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(46),
	datad => VCC,
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][45]~85\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][46]~86_combout\,
	cout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][46]~87\);

-- Location: LCCOMB_X70_Y24_N28
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~88_combout\ = \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][46]~87\ $ (\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(47))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(47),
	cin => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][46]~87\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~88_combout\);

-- Location: FF_X70_Y24_N29
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~88_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\);

-- Location: LCCOMB_X70_Y28_N4
\multfp32_inst|redist7_normalizeBit_uid49_fpMulTest_b_1|delay_signals[0][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist7_normalizeBit_uid49_fpMulTest_b_1|delay_signals[0][0]~feeder_combout\ = \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	combout => \multfp32_inst|redist7_normalizeBit_uid49_fpMulTest_b_1|delay_signals[0][0]~feeder_combout\);

-- Location: FF_X70_Y28_N5
\multfp32_inst|redist7_normalizeBit_uid49_fpMulTest_b_1|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist7_normalizeBit_uid49_fpMulTest_b_1|delay_signals[0][0]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist7_normalizeBit_uid49_fpMulTest_b_1|delay_signals[0][0]~q\);

-- Location: FF_X70_Y24_N27
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][46]~86_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][46]~q\);

-- Location: FF_X70_Y24_N25
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][45]~84_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][45]~q\);

-- Location: LCCOMB_X70_Y28_N14
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[23]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[23]~2_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][46]~q\)) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][45]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][46]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][45]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[23]~2_combout\);

-- Location: FF_X70_Y28_N15
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[23]~2_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][23]~q\);

-- Location: FF_X70_Y24_N23
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][44]~82_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][44]~q\);

-- Location: LCCOMB_X70_Y28_N12
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[22]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[22]~3_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][45]~q\))) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][44]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][44]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][45]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[22]~3_combout\);

-- Location: FF_X70_Y28_N13
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[22]~3_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][22]~q\);

-- Location: FF_X70_Y24_N21
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][43]~80_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][43]~q\);

-- Location: LCCOMB_X70_Y28_N26
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[21]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[21]~4_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][44]~q\)) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][43]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][44]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][43]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[21]~4_combout\);

-- Location: FF_X70_Y28_N27
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[21]~4_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][21]~q\);

-- Location: FF_X70_Y24_N19
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][42]~78_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][42]~q\);

-- Location: LCCOMB_X70_Y28_N0
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[20]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[20]~5_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][43]~q\))) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][42]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][42]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][43]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[20]~5_combout\);

-- Location: FF_X70_Y28_N1
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[20]~5_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][20]~q\);

-- Location: FF_X70_Y24_N17
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][41]~76_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][41]~q\);

-- Location: LCCOMB_X70_Y28_N2
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[19]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[19]~6_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][42]~q\))) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][41]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][41]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][42]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[19]~6_combout\);

-- Location: FF_X70_Y28_N3
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[19]~6_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][19]~q\);

-- Location: FF_X70_Y24_N15
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]~74_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]~q\);

-- Location: LCCOMB_X70_Y28_N8
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[18]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[18]~7_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][41]~q\)) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][41]~q\,
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[18]~7_combout\);

-- Location: FF_X70_Y28_N9
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[18]~7_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][18]~q\);

-- Location: FF_X70_Y24_N13
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][39]~72_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][39]~q\);

-- Location: LCCOMB_X70_Y28_N10
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[17]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[17]~8_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]~q\)) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][39]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][40]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][39]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[17]~8_combout\);

-- Location: FF_X70_Y28_N11
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[17]~8_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][17]~q\);

-- Location: FF_X70_Y24_N11
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]~70_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]~q\);

-- Location: LCCOMB_X70_Y28_N20
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[16]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[16]~9_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][39]~q\))) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][39]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[16]~9_combout\);

-- Location: FF_X70_Y28_N21
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[16]~9_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][16]~q\);

-- Location: FF_X70_Y24_N9
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][37]~68_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][37]~q\);

-- Location: LCCOMB_X70_Y28_N18
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[15]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[15]~10_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]~q\)) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][37]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][38]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][37]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[15]~10_combout\);

-- Location: FF_X70_Y28_N19
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[15]~10_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][15]~q\);

-- Location: FF_X70_Y24_N7
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]~66_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]~q\);

-- Location: LCCOMB_X70_Y28_N24
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[14]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[14]~11_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][37]~q\)) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][37]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[14]~11_combout\);

-- Location: FF_X70_Y28_N25
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[14]~11_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][14]~q\);

-- Location: FF_X70_Y24_N5
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][35]~64_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][35]~q\);

-- Location: LCCOMB_X70_Y28_N22
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[13]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[13]~12_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]~q\))) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][35]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][35]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][36]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[13]~12_combout\);

-- Location: FF_X70_Y28_N23
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[13]~12_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][13]~q\);

-- Location: FF_X70_Y24_N3
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]~62_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]~q\);

-- Location: LCCOMB_X70_Y28_N28
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[12]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[12]~13_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][35]~q\)) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][35]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[12]~13_combout\);

-- Location: FF_X70_Y28_N29
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[12]~13_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][12]~q\);

-- Location: FF_X70_Y24_N1
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][33]~60_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][33]~q\);

-- Location: LCCOMB_X70_Y28_N30
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[11]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[11]~14_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]~q\)) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][33]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][34]~q\,
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][33]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[11]~14_combout\);

-- Location: FF_X70_Y28_N31
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[11]~14_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][11]~q\);

-- Location: FF_X70_Y25_N31
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]~58_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]~q\);

-- Location: LCCOMB_X70_Y28_N16
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[10]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[10]~15_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][33]~q\)) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][33]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[10]~15_combout\);

-- Location: FF_X70_Y28_N17
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[10]~15_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][10]~q\);

-- Location: FF_X70_Y25_N29
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][31]~56_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][31]~q\);

-- Location: LCCOMB_X70_Y28_N6
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[9]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[9]~16_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]~q\)) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][32]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][31]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[9]~16_combout\);

-- Location: FF_X70_Y28_N7
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[9]~16_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][9]~q\);

-- Location: FF_X70_Y25_N27
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]~54_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]~q\);

-- Location: LCCOMB_X70_Y29_N16
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[8]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[8]~17_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][31]~q\)) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][31]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[8]~17_combout\);

-- Location: FF_X70_Y29_N17
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[8]~17_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][8]~q\);

-- Location: FF_X70_Y25_N25
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][29]~52_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][29]~q\);

-- Location: LCCOMB_X70_Y29_N6
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[7]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[7]~18_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]~q\)) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][30]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][29]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[7]~18_combout\);

-- Location: LCCOMB_X72_Y29_N4
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][7]~feeder_combout\ = \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[7]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[7]~18_combout\,
	combout => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][7]~feeder_combout\);

-- Location: FF_X72_Y29_N5
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][7]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][7]~q\);

-- Location: FF_X70_Y25_N23
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]~50_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]~q\);

-- Location: LCCOMB_X70_Y29_N4
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[6]~19_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][29]~q\)) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][29]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[6]~19_combout\);

-- Location: FF_X71_Y29_N3
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[6]~19_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][6]~q\);

-- Location: FF_X70_Y25_N21
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][27]~48_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][27]~q\);

-- Location: LCCOMB_X71_Y29_N12
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[5]~20_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]~q\))) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][27]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][28]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[5]~20_combout\);

-- Location: FF_X71_Y29_N13
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[5]~20_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][5]~q\);

-- Location: FF_X70_Y25_N19
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]~46_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]~q\);

-- Location: LCCOMB_X71_Y29_N6
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[4]~21_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][27]~q\)) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][27]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[4]~21_combout\);

-- Location: FF_X71_Y29_N7
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[4]~21_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][4]~q\);

-- Location: FF_X70_Y25_N17
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][25]~44_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][25]~q\);

-- Location: LCCOMB_X71_Y29_N8
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[3]~22_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]~q\))) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][25]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][26]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[3]~22_combout\);

-- Location: FF_X71_Y29_N9
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[3]~22_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][3]~q\);

-- Location: FF_X70_Y25_N15
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~42_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~q\);

-- Location: LCCOMB_X71_Y29_N10
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[2]~23_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][25]~q\))) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~q\,
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][25]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[2]~23_combout\);

-- Location: FF_X71_Y29_N11
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[2]~23_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][2]~q\);

-- Location: FF_X70_Y25_N13
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]~40_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]~q\);

-- Location: LCCOMB_X71_Y29_N0
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[1]~0_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~q\))) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[1]~0_combout\);

-- Location: FF_X71_Y29_N1
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[1]~0_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][1]~q\);

-- Location: LCCOMB_X69_Y29_N10
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[0]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(0),
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[0]~feeder_combout\);

-- Location: FF_X69_Y29_N11
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[0]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(0));

-- Location: LCCOMB_X69_Y29_N14
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][0]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(0),
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][0]~feeder_combout\);

-- Location: FF_X69_Y29_N15
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][0]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][0]~q\);

-- Location: LCCOMB_X70_Y29_N28
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~feeder_combout\ = \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~30_combout\,
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~feeder_combout\);

-- Location: FF_X70_Y29_N29
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~q\);

-- Location: LCCOMB_X69_Y29_N20
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[1]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(1),
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[1]~feeder_combout\);

-- Location: FF_X69_Y29_N21
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[1]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(1));

-- Location: LCCOMB_X69_Y29_N16
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][1]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(1),
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][1]~feeder_combout\);

-- Location: FF_X69_Y29_N17
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][1]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][1]~q\);

-- Location: FF_X70_Y25_N5
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][19]~32_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][19]~q\);

-- Location: LCCOMB_X70_Y29_N12
\multfp32_inst|Equal7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal7~6_combout\ = (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][0]~q\ & (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~q\ & 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][1]~q\ & !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][19]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][18]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][1]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][19]~q\,
	combout => \multfp32_inst|Equal7~6_combout\);

-- Location: FF_X70_Y25_N9
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][21]~36_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][21]~q\);

-- Location: FF_X70_Y25_N7
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][20]~34_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][20]~q\);

-- Location: LCCOMB_X70_Y25_N0
\multfp32_inst|Equal7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal7~7_combout\ = (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][21]~q\ & !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][20]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][21]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][20]~q\,
	combout => \multfp32_inst|Equal7~7_combout\);

-- Location: LCCOMB_X67_Y25_N16
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[2]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(2),
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[2]~feeder_combout\);

-- Location: FF_X67_Y25_N17
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[2]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(2));

-- Location: LCCOMB_X67_Y25_N22
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][2]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(2),
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][2]~feeder_combout\);

-- Location: FF_X67_Y25_N23
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][2]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][2]~q\);

-- Location: LCCOMB_X67_Y25_N0
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[5]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(5),
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[5]~feeder_combout\);

-- Location: FF_X67_Y25_N1
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[5]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(5));

-- Location: LCCOMB_X67_Y25_N24
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][5]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(5),
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][5]~feeder_combout\);

-- Location: FF_X67_Y25_N25
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][5]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][5]~q\);

-- Location: LCCOMB_X67_Y25_N14
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[4]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(4),
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[4]~feeder_combout\);

-- Location: FF_X67_Y25_N15
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[4]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(4));

-- Location: FF_X67_Y25_N11
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(4),
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][4]~q\);

-- Location: LCCOMB_X67_Y25_N4
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[3]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(3),
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[3]~feeder_combout\);

-- Location: FF_X67_Y25_N5
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[3]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(3));

-- Location: LCCOMB_X67_Y25_N18
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][3]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(3),
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][3]~feeder_combout\);

-- Location: FF_X67_Y25_N19
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][3]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][3]~q\);

-- Location: LCCOMB_X67_Y25_N10
\multfp32_inst|Equal7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal7~5_combout\ = (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][2]~q\ & (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][5]~q\ & 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][4]~q\ & !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][2]~q\,
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][5]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][4]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][3]~q\,
	combout => \multfp32_inst|Equal7~5_combout\);

-- Location: LCCOMB_X67_Y25_N28
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[11]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(11),
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[11]~feeder_combout\);

-- Location: FF_X67_Y25_N29
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[11]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(11));

-- Location: LCCOMB_X67_Y25_N6
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][11]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(11),
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][11]~feeder_combout\);

-- Location: FF_X67_Y25_N7
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][11]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][11]~q\);

-- Location: LCCOMB_X67_Y25_N12
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[10]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(10),
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[10]~feeder_combout\);

-- Location: FF_X67_Y25_N13
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[10]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(10));

-- Location: LCCOMB_X67_Y25_N8
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][10]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(10),
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][10]~feeder_combout\);

-- Location: FF_X67_Y25_N9
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][10]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][10]~q\);

-- Location: LCCOMB_X67_Y25_N26
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[12]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(12),
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[12]~feeder_combout\);

-- Location: FF_X67_Y25_N27
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[12]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(12));

-- Location: FF_X67_Y25_N31
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(12),
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][12]~q\);

-- Location: LCCOMB_X67_Y25_N20
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[13]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(13),
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[13]~feeder_combout\);

-- Location: FF_X67_Y25_N21
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[13]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(13));

-- Location: LCCOMB_X67_Y25_N2
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][13]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(13),
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][13]~feeder_combout\);

-- Location: FF_X67_Y25_N3
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][13]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][13]~q\);

-- Location: LCCOMB_X67_Y25_N30
\multfp32_inst|Equal7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal7~2_combout\ = (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][11]~q\ & (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][10]~q\ & 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][12]~q\ & !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][11]~q\,
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][10]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][12]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][13]~q\,
	combout => \multfp32_inst|Equal7~2_combout\);

-- Location: LCCOMB_X69_Y29_N18
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[14]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(14),
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[14]~feeder_combout\);

-- Location: FF_X69_Y29_N19
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[14]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(14));

-- Location: LCCOMB_X69_Y29_N26
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][14]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(14),
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][14]~feeder_combout\);

-- Location: FF_X69_Y29_N27
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][14]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][14]~q\);

-- Location: LCCOMB_X69_Y29_N8
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[15]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(15),
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[15]~feeder_combout\);

-- Location: FF_X69_Y29_N9
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[15]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(15));

-- Location: LCCOMB_X69_Y29_N28
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][15]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(15),
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][15]~feeder_combout\);

-- Location: FF_X69_Y29_N29
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][15]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][15]~q\);

-- Location: LCCOMB_X69_Y29_N22
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[16]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(16),
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[16]~feeder_combout\);

-- Location: FF_X69_Y29_N23
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[16]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(16));

-- Location: FF_X69_Y29_N7
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(16),
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][16]~q\);

-- Location: LCCOMB_X69_Y29_N4
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[17]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(17),
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[17]~feeder_combout\);

-- Location: FF_X69_Y29_N5
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[17]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(17));

-- Location: LCCOMB_X69_Y29_N12
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][17]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(17),
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][17]~feeder_combout\);

-- Location: FF_X69_Y29_N13
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][17]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][17]~q\);

-- Location: LCCOMB_X69_Y29_N6
\multfp32_inst|Equal7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal7~1_combout\ = (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][14]~q\ & (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][15]~q\ & 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][16]~q\ & !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][14]~q\,
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][15]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][16]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][17]~q\,
	combout => \multfp32_inst|Equal7~1_combout\);

-- Location: LCCOMB_X65_Y25_N20
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[9]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(9),
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[9]~feeder_combout\);

-- Location: FF_X65_Y25_N21
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[9]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(9));

-- Location: LCCOMB_X65_Y25_N12
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][9]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(9),
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][9]~feeder_combout\);

-- Location: FF_X65_Y25_N13
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][9]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][9]~q\);

-- Location: LCCOMB_X65_Y25_N28
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[7]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(7),
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[7]~feeder_combout\);

-- Location: FF_X65_Y25_N29
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[7]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(7));

-- Location: LCCOMB_X65_Y25_N4
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][7]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(7),
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][7]~feeder_combout\);

-- Location: FF_X65_Y25_N5
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][7]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][7]~q\);

-- Location: LCCOMB_X65_Y25_N22
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[6]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(6),
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[6]~feeder_combout\);

-- Location: FF_X65_Y25_N23
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[6]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(6));

-- Location: FF_X65_Y25_N27
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(6),
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][6]~q\);

-- Location: LCCOMB_X65_Y25_N10
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[8]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_im11_component|auto_generated|result\(8),
	combout => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[8]~feeder_combout\);

-- Location: FF_X65_Y25_N11
\multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o[8]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(8));

-- Location: LCCOMB_X65_Y25_N18
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][8]~feeder_combout\ = \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|prodXY_uid105_prod_uid47_fpMulTest_result_add_0_0_o\(8),
	combout => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][8]~feeder_combout\);

-- Location: FF_X65_Y25_N19
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][8]~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][8]~q\);

-- Location: LCCOMB_X65_Y25_N26
\multfp32_inst|Equal7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal7~3_combout\ = (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][9]~q\ & (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][7]~q\ & 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][6]~q\ & !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][9]~q\,
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][7]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][6]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][8]~q\,
	combout => \multfp32_inst|Equal7~3_combout\);

-- Location: FF_X70_Y25_N11
\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~38_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~q\);

-- Location: LCCOMB_X71_Y29_N4
\multfp32_inst|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal7~0_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~q\ & (((!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]~q\ & 
-- !\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\)))) # (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~q\ & 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]~q\ & 
-- \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][24]~q\,
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~q\,
	datac => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	combout => \multfp32_inst|Equal7~0_combout\);

-- Location: LCCOMB_X70_Y29_N18
\multfp32_inst|Equal7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal7~4_combout\ = (\multfp32_inst|Equal7~2_combout\ & (\multfp32_inst|Equal7~1_combout\ & (\multfp32_inst|Equal7~3_combout\ & \multfp32_inst|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|Equal7~2_combout\,
	datab => \multfp32_inst|Equal7~1_combout\,
	datac => \multfp32_inst|Equal7~3_combout\,
	datad => \multfp32_inst|Equal7~0_combout\,
	combout => \multfp32_inst|Equal7~4_combout\);

-- Location: LCCOMB_X70_Y29_N14
\multfp32_inst|Equal7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Equal7~8_combout\ = (\multfp32_inst|Equal7~6_combout\ & (\multfp32_inst|Equal7~7_combout\ & (\multfp32_inst|Equal7~5_combout\ & \multfp32_inst|Equal7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|Equal7~6_combout\,
	datab => \multfp32_inst|Equal7~7_combout\,
	datac => \multfp32_inst|Equal7~5_combout\,
	datad => \multfp32_inst|Equal7~4_combout\,
	combout => \multfp32_inst|Equal7~8_combout\);

-- Location: FF_X70_Y29_N15
\multfp32_inst|roundBitDetectionPattern_uid64_fpMulTest_delay|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|Equal7~8_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|roundBitDetectionPattern_uid64_fpMulTest_delay|delay_signals[0][0]~q\);

-- Location: LCCOMB_X71_Y29_N2
\multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[0]~1_combout\ = (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & ((\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]~q\))) # 
-- (!\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\ & (\multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][22]~q\,
	datab => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][23]~q\,
	datad => \multfp32_inst|redist1_osig_uid106_prod_uid47_fpMulTest_b_1|delay_signals[0][47]~q\,
	combout => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[0]~1_combout\);

-- Location: FF_X71_Y29_N15
\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|fracRPostNorm_uid53_fpMulTest_q[0]~1_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][0]~q\);

-- Location: LCCOMB_X71_Y29_N14
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~24_cout\ = CARRY((!\multfp32_inst|roundBitDetectionPattern_uid64_fpMulTest_delay|delay_signals[0][0]~q\ & 
-- \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|roundBitDetectionPattern_uid64_fpMulTest_delay|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][0]~q\,
	datad => VCC,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~24_cout\);

-- Location: LCCOMB_X71_Y29_N16
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~25_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][1]~q\ & 
-- (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~24_cout\)) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][1]~q\ & 
-- ((\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~24_cout\) # (GND)))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~26\ = CARRY((!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~24_cout\) # 
-- (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][1]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~24_cout\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~25_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~26\);

-- Location: LCCOMB_X71_Y29_N18
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][1]~27_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][2]~q\ & (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~26\ $ 
-- (GND))) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][2]~q\ & (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~26\ & VCC))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][1]~28\ = CARRY((\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][2]~q\ & !\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][2]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~26\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][1]~27_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][1]~28\);

-- Location: LCCOMB_X71_Y29_N20
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][2]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][2]~29_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][3]~q\ & (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][1]~28\)) 
-- # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][3]~q\ & ((\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][1]~28\) # (GND)))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][2]~30\ = CARRY((!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][1]~28\) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][3]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][1]~28\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][2]~29_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][2]~30\);

-- Location: LCCOMB_X71_Y29_N22
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][3]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][3]~31_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][4]~q\ & (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][2]~30\ $ 
-- (GND))) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][4]~q\ & (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][2]~30\ & VCC))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][3]~32\ = CARRY((\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][4]~q\ & !\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][2]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][4]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][2]~30\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][3]~31_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][3]~32\);

-- Location: LCCOMB_X71_Y29_N24
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][4]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][4]~33_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][5]~q\ & (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][3]~32\)) 
-- # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][5]~q\ & ((\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][3]~32\) # (GND)))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][4]~34\ = CARRY((!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][3]~32\) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][5]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][3]~32\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][4]~33_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][4]~34\);

-- Location: LCCOMB_X71_Y29_N26
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][5]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][5]~35_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][6]~q\ & (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][4]~34\ $ 
-- (GND))) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][6]~q\ & (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][4]~34\ & VCC))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][5]~36\ = CARRY((\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][6]~q\ & !\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][4]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][6]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][4]~34\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][5]~35_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][5]~36\);

-- Location: LCCOMB_X71_Y29_N28
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][6]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][6]~37_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][7]~q\ & (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][5]~36\)) 
-- # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][7]~q\ & ((\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][5]~36\) # (GND)))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][6]~38\ = CARRY((!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][5]~36\) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][7]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][5]~36\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][6]~37_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][6]~38\);

-- Location: LCCOMB_X71_Y29_N30
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][7]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][7]~39_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][8]~q\ & (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][6]~38\ $ 
-- (GND))) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][8]~q\ & (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][6]~38\ & VCC))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][7]~40\ = CARRY((\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][8]~q\ & !\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][6]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][8]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][6]~38\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][7]~39_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][7]~40\);

-- Location: LCCOMB_X71_Y28_N0
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][8]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][8]~41_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][9]~q\ & (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][7]~40\)) 
-- # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][9]~q\ & ((\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][7]~40\) # (GND)))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][8]~42\ = CARRY((!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][7]~40\) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][9]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][7]~40\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][8]~41_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][8]~42\);

-- Location: LCCOMB_X71_Y28_N2
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][9]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][9]~43_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][10]~q\ & (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][8]~42\ $ 
-- (GND))) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][10]~q\ & (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][8]~42\ & VCC))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][9]~44\ = CARRY((\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][10]~q\ & !\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][8]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][10]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][8]~42\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][9]~43_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][9]~44\);

-- Location: LCCOMB_X71_Y28_N4
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][10]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][10]~45_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][11]~q\ & 
-- (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][9]~44\)) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][11]~q\ & ((\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][9]~44\) # 
-- (GND)))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][10]~46\ = CARRY((!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][9]~44\) # 
-- (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][11]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][9]~44\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][10]~45_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][10]~46\);

-- Location: LCCOMB_X71_Y28_N6
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][11]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][11]~47_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][12]~q\ & (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][10]~46\ 
-- $ (GND))) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][12]~q\ & (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][10]~46\ & VCC))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][11]~48\ = CARRY((\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][12]~q\ & !\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][10]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][12]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][10]~46\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][11]~47_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][11]~48\);

-- Location: LCCOMB_X71_Y28_N8
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][12]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][12]~49_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][13]~q\ & 
-- (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][11]~48\)) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][13]~q\ & ((\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][11]~48\) # 
-- (GND)))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][12]~50\ = CARRY((!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][11]~48\) # 
-- (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][13]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][11]~48\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][12]~49_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][12]~50\);

-- Location: LCCOMB_X71_Y28_N10
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][13]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][13]~51_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][14]~q\ & (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][12]~50\ 
-- $ (GND))) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][14]~q\ & (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][12]~50\ & VCC))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][13]~52\ = CARRY((\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][14]~q\ & !\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][12]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][14]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][12]~50\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][13]~51_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][13]~52\);

-- Location: LCCOMB_X71_Y28_N12
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][14]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][14]~53_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][15]~q\ & 
-- (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][13]~52\)) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][15]~q\ & ((\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][13]~52\) # 
-- (GND)))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][14]~54\ = CARRY((!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][13]~52\) # 
-- (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][15]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][13]~52\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][14]~53_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][14]~54\);

-- Location: LCCOMB_X71_Y28_N14
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][15]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][15]~55_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][16]~q\ & (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][14]~54\ 
-- $ (GND))) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][16]~q\ & (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][14]~54\ & VCC))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][15]~56\ = CARRY((\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][16]~q\ & !\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][14]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][16]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][14]~54\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][15]~55_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][15]~56\);

-- Location: LCCOMB_X71_Y28_N16
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][16]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][16]~57_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][17]~q\ & 
-- (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][15]~56\)) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][17]~q\ & ((\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][15]~56\) # 
-- (GND)))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][16]~58\ = CARRY((!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][15]~56\) # 
-- (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][17]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][15]~56\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][16]~57_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][16]~58\);

-- Location: LCCOMB_X71_Y28_N18
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][17]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][17]~59_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][18]~q\ & (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][16]~58\ 
-- $ (GND))) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][18]~q\ & (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][16]~58\ & VCC))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][17]~60\ = CARRY((\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][18]~q\ & !\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][16]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][18]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][16]~58\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][17]~59_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][17]~60\);

-- Location: LCCOMB_X71_Y28_N20
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][18]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][18]~61_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][19]~q\ & 
-- (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][17]~60\)) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][19]~q\ & ((\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][17]~60\) # 
-- (GND)))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][18]~62\ = CARRY((!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][17]~60\) # 
-- (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][19]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][17]~60\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][18]~61_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][18]~62\);

-- Location: LCCOMB_X71_Y28_N22
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][19]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][19]~63_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][20]~q\ & (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][18]~62\ 
-- $ (GND))) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][20]~q\ & (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][18]~62\ & VCC))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][19]~64\ = CARRY((\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][20]~q\ & !\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][18]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][20]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][18]~62\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][19]~63_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][19]~64\);

-- Location: LCCOMB_X71_Y28_N24
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][20]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][20]~65_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][21]~q\ & 
-- (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][19]~64\)) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][21]~q\ & ((\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][19]~64\) # 
-- (GND)))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][20]~66\ = CARRY((!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][19]~64\) # 
-- (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][21]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][19]~64\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][20]~65_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][20]~66\);

-- Location: LCCOMB_X71_Y28_N26
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][21]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][21]~67_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][22]~q\ & (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][20]~66\ 
-- $ (GND))) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][22]~q\ & (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][20]~66\ & VCC))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][21]~68\ = CARRY((\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][22]~q\ & !\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][20]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][22]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][20]~66\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][21]~67_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][21]~68\);

-- Location: LCCOMB_X71_Y28_N28
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][22]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][22]~69_combout\ = (\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][23]~q\ & 
-- (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][21]~68\)) # (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][23]~q\ & ((\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][21]~68\) # 
-- (GND)))
-- \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][22]~70\ = CARRY((!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][21]~68\) # 
-- (!\multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist6_fracRPostNorm_uid53_fpMulTest_q_1|delay_signals[0][23]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][21]~68\,
	combout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][22]~69_combout\,
	cout => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][22]~70\);

-- Location: LCCOMB_X71_Y28_N30
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][0]~11_combout\ = ((\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(0) $ (\multfp32_inst|redist7_normalizeBit_uid49_fpMulTest_b_1|delay_signals[0][0]~q\ $ 
-- (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][22]~70\)))) # (GND)
-- \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][0]~12\ = CARRY((\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(0) & ((\multfp32_inst|redist7_normalizeBit_uid49_fpMulTest_b_1|delay_signals[0][0]~q\) # 
-- (!\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][22]~70\))) # (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(0) & (\multfp32_inst|redist7_normalizeBit_uid49_fpMulTest_b_1|delay_signals[0][0]~q\ & 
-- !\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][22]~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(0),
	datab => \multfp32_inst|redist7_normalizeBit_uid49_fpMulTest_b_1|delay_signals[0][0]~q\,
	datad => VCC,
	cin => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][22]~70\,
	combout => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][0]~11_combout\,
	cout => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][0]~12\);

-- Location: LCCOMB_X71_Y27_N0
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][1]~13_combout\ = (\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(1) & (!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][0]~12\)) # 
-- (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(1) & ((\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][0]~12\) # (GND)))
-- \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][1]~14\ = CARRY((!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][0]~12\) # (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(1),
	datad => VCC,
	cin => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][0]~12\,
	combout => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][1]~13_combout\,
	cout => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][1]~14\);

-- Location: LCCOMB_X71_Y27_N2
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][2]~15_combout\ = (\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(2) & (\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][1]~14\ $ (GND))) # 
-- (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(2) & (!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][1]~14\ & VCC))
-- \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][2]~16\ = CARRY((\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(2) & !\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(2),
	datad => VCC,
	cin => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][1]~14\,
	combout => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][2]~15_combout\,
	cout => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][2]~16\);

-- Location: LCCOMB_X71_Y27_N4
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][3]~17_combout\ = (\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(3) & (!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][2]~16\)) # 
-- (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(3) & ((\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][2]~16\) # (GND)))
-- \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][3]~18\ = CARRY((!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][2]~16\) # (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(3),
	datad => VCC,
	cin => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][2]~16\,
	combout => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][3]~17_combout\,
	cout => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][3]~18\);

-- Location: LCCOMB_X71_Y27_N6
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][4]~19_combout\ = (\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(4) & (\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][3]~18\ $ (GND))) # 
-- (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(4) & (!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][3]~18\ & VCC))
-- \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][4]~20\ = CARRY((\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(4) & !\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(4),
	datad => VCC,
	cin => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][3]~18\,
	combout => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][4]~19_combout\,
	cout => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][4]~20\);

-- Location: LCCOMB_X71_Y27_N8
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][5]~21_combout\ = (\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(5) & (!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][4]~20\)) # 
-- (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(5) & ((\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][4]~20\) # (GND)))
-- \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][5]~22\ = CARRY((!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][4]~20\) # (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(5),
	datad => VCC,
	cin => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][4]~20\,
	combout => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][5]~21_combout\,
	cout => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][5]~22\);

-- Location: LCCOMB_X71_Y27_N10
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][6]~23_combout\ = (\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(6) & (\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][5]~22\ $ (GND))) # 
-- (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(6) & (!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][5]~22\ & VCC))
-- \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][6]~24\ = CARRY((\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(6) & !\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(6),
	datad => VCC,
	cin => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][5]~22\,
	combout => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][6]~23_combout\,
	cout => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][6]~24\);

-- Location: LCCOMB_X71_Y27_N12
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][7]~25_combout\ = (\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(7) & (!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][6]~24\)) # 
-- (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(7) & ((\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][6]~24\) # (GND)))
-- \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][7]~26\ = CARRY((!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][6]~24\) # (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(7),
	datad => VCC,
	cin => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][6]~24\,
	combout => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][7]~25_combout\,
	cout => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][7]~26\);

-- Location: LCCOMB_X71_Y27_N14
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][8]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][8]~27_combout\ = (\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(8) & (\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][7]~26\ $ (GND))) # 
-- (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(8) & (!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][7]~26\ & VCC))
-- \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][8]~28\ = CARRY((\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(8) & !\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(8),
	datad => VCC,
	cin => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][7]~26\,
	combout => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][8]~27_combout\,
	cout => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][8]~28\);

-- Location: LCCOMB_X71_Y27_N16
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][9]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][9]~29_combout\ = (\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(10) & (!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][8]~28\)) # 
-- (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(10) & ((\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][8]~28\) # (GND)))
-- \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][9]~30\ = CARRY((!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][8]~28\) # (!\multfp32_inst|expSumMBias_uid46_fpMulTest_o\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(10),
	datad => VCC,
	cin => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][8]~28\,
	combout => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][9]~29_combout\,
	cout => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][9]~30\);

-- Location: LCCOMB_X71_Y27_N18
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][11]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][11]~31_combout\ = \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(10) $ (!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|expSumMBias_uid46_fpMulTest_o\(10),
	cin => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][9]~30\,
	combout => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][11]~31_combout\);

-- Location: FF_X71_Y27_N19
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][11]~31_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][11]~q\);

-- Location: FF_X71_Y27_N17
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][9]~29_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][9]~q\);

-- Location: FF_X71_Y27_N15
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][8]~27_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][8]~q\);

-- Location: FF_X71_Y27_N13
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][7]~25_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][7]~q\);

-- Location: FF_X71_Y27_N11
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][6]~23_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][6]~q\);

-- Location: FF_X71_Y27_N9
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][5]~21_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][5]~q\);

-- Location: FF_X71_Y27_N7
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][4]~19_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][4]~q\);

-- Location: FF_X71_Y27_N5
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][3]~17_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][3]~q\);

-- Location: FF_X71_Y27_N3
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][2]~15_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][2]~q\);

-- Location: FF_X71_Y27_N1
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][1]~13_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][1]~q\);

-- Location: FF_X71_Y28_N31
\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][0]~11_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][0]~q\);

-- Location: LCCOMB_X74_Y27_N6
\multfp32_inst|Add5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add5~1_cout\ = CARRY((\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][1]~q\ & \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][1]~q\,
	datab => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][0]~q\,
	datad => VCC,
	cout => \multfp32_inst|Add5~1_cout\);

-- Location: LCCOMB_X74_Y27_N8
\multfp32_inst|Add5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add5~3_cout\ = CARRY((!\multfp32_inst|Add5~1_cout\) # (!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][2]~q\,
	datad => VCC,
	cin => \multfp32_inst|Add5~1_cout\,
	cout => \multfp32_inst|Add5~3_cout\);

-- Location: LCCOMB_X74_Y27_N10
\multfp32_inst|Add5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add5~5_cout\ = CARRY((\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][3]~q\ & !\multfp32_inst|Add5~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][3]~q\,
	datad => VCC,
	cin => \multfp32_inst|Add5~3_cout\,
	cout => \multfp32_inst|Add5~5_cout\);

-- Location: LCCOMB_X74_Y27_N12
\multfp32_inst|Add5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add5~7_cout\ = CARRY((!\multfp32_inst|Add5~5_cout\) # (!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][4]~q\,
	datad => VCC,
	cin => \multfp32_inst|Add5~5_cout\,
	cout => \multfp32_inst|Add5~7_cout\);

-- Location: LCCOMB_X74_Y27_N14
\multfp32_inst|Add5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add5~9_cout\ = CARRY((\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][5]~q\ & !\multfp32_inst|Add5~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][5]~q\,
	datad => VCC,
	cin => \multfp32_inst|Add5~7_cout\,
	cout => \multfp32_inst|Add5~9_cout\);

-- Location: LCCOMB_X74_Y27_N16
\multfp32_inst|Add5~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add5~11_cout\ = CARRY((!\multfp32_inst|Add5~9_cout\) # (!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][6]~q\,
	datad => VCC,
	cin => \multfp32_inst|Add5~9_cout\,
	cout => \multfp32_inst|Add5~11_cout\);

-- Location: LCCOMB_X74_Y27_N18
\multfp32_inst|Add5~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add5~13_cout\ = CARRY((\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][7]~q\ & !\multfp32_inst|Add5~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][7]~q\,
	datad => VCC,
	cin => \multfp32_inst|Add5~11_cout\,
	cout => \multfp32_inst|Add5~13_cout\);

-- Location: LCCOMB_X74_Y27_N20
\multfp32_inst|Add5~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add5~15_cout\ = CARRY((!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][8]~q\ & !\multfp32_inst|Add5~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][8]~q\,
	datad => VCC,
	cin => \multfp32_inst|Add5~13_cout\,
	cout => \multfp32_inst|Add5~15_cout\);

-- Location: LCCOMB_X74_Y27_N22
\multfp32_inst|Add5~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add5~17_cout\ = CARRY((\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][9]~q\) # (!\multfp32_inst|Add5~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][9]~q\,
	datad => VCC,
	cin => \multfp32_inst|Add5~15_cout\,
	cout => \multfp32_inst|Add5~17_cout\);

-- Location: LCCOMB_X74_Y27_N24
\multfp32_inst|Add5~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add5~19_cout\ = CARRY((!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][11]~q\ & !\multfp32_inst|Add5~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][11]~q\,
	datad => VCC,
	cin => \multfp32_inst|Add5~17_cout\,
	cout => \multfp32_inst|Add5~19_cout\);

-- Location: LCCOMB_X74_Y27_N26
\multfp32_inst|Add5~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add5~20_combout\ = \multfp32_inst|Add5~19_cout\ $ (\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][11]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][11]~q\,
	cin => \multfp32_inst|Add5~19_cout\,
	combout => \multfp32_inst|Add5~20_combout\);

-- Location: LCCOMB_X75_Y27_N0
\multfp32_inst|concExc_uid90_fpMulTest_q[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|concExc_uid90_fpMulTest_q[1]~2_combout\ = (\multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[0][0]~q\ & ((\multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[0][0]~q\))) # 
-- (!\multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[0][0]~q\ & (!\multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[0][0]~q\,
	datac => \multfp32_inst|redist10_fracXIsZero_uid31_fpMulTest_q_6|delay_signals[0][0]~q\,
	combout => \multfp32_inst|concExc_uid90_fpMulTest_q[1]~2_combout\);

-- Location: LCCOMB_X75_Y27_N4
\multfp32_inst|concExc_uid90_fpMulTest_q[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|concExc_uid90_fpMulTest_q[1]~3_combout\ = (\multfp32_inst|concExc_uid90_fpMulTest_q[1]~2_combout\ & ((\multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[0][0]~q\ & 
-- (\multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[0][0]~q\)) # (!\multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[0][0]~q\ & ((!\multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist13_fracXIsZero_uid17_fpMulTest_q_6|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[0][0]~q\,
	datac => \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[0][0]~q\,
	datad => \multfp32_inst|concExc_uid90_fpMulTest_q[1]~2_combout\,
	combout => \multfp32_inst|concExc_uid90_fpMulTest_q[1]~3_combout\);

-- Location: LCCOMB_X74_Y27_N0
\multfp32_inst|concExc_uid90_fpMulTest_q[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|concExc_uid90_fpMulTest_q[1]~4_combout\ = (\multfp32_inst|concExc_uid90_fpMulTest_q[1]~3_combout\ & ((\multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[0][0]~q\) # 
-- ((\multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[0][0]~q\) # (!\multfp32_inst|Add5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[0][0]~q\,
	datac => \multfp32_inst|Add5~20_combout\,
	datad => \multfp32_inst|concExc_uid90_fpMulTest_q[1]~3_combout\,
	combout => \multfp32_inst|concExc_uid90_fpMulTest_q[1]~4_combout\);

-- Location: FF_X74_Y27_N1
\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|concExc_uid90_fpMulTest_q[1]~4_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\);

-- Location: FF_X71_Y29_N17
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~25_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~q\);

-- Location: FF_X72_Y29_N1
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][0]~q\);

-- Location: LCCOMB_X75_Y27_N6
\multfp32_inst|concExc_uid90_fpMulTest_q[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|concExc_uid90_fpMulTest_q[0]~5_combout\ = (\multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[0][0]~q\ & (((\multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[0][0]~q\) # 
-- (!\multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[0][0]~q\)))) # (!\multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[0][0]~q\ & (!\multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[0][0]~q\ & 
-- ((\multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[0][0]~q\) # (!\multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist11_expXIsMax_uid30_fpMulTest_q_6|delay_signals[0][0]~q\,
	datac => \multfp32_inst|redist14_expXIsMax_uid16_fpMulTest_q_6|delay_signals[0][0]~q\,
	datad => \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[0][0]~q\,
	combout => \multfp32_inst|concExc_uid90_fpMulTest_q[0]~5_combout\);

-- Location: LCCOMB_X75_Y27_N10
\multfp32_inst|Add6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add6~1_cout\ = CARRY((!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][1]~q\ & !\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][1]~q\,
	datab => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][0]~q\,
	datad => VCC,
	cout => \multfp32_inst|Add6~1_cout\);

-- Location: LCCOMB_X75_Y27_N12
\multfp32_inst|Add6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add6~3_cout\ = CARRY((\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][2]~q\) # (!\multfp32_inst|Add6~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][2]~q\,
	datad => VCC,
	cin => \multfp32_inst|Add6~1_cout\,
	cout => \multfp32_inst|Add6~3_cout\);

-- Location: LCCOMB_X75_Y27_N14
\multfp32_inst|Add6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add6~5_cout\ = CARRY((!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][3]~q\ & !\multfp32_inst|Add6~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][3]~q\,
	datad => VCC,
	cin => \multfp32_inst|Add6~3_cout\,
	cout => \multfp32_inst|Add6~5_cout\);

-- Location: LCCOMB_X75_Y27_N16
\multfp32_inst|Add6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add6~7_cout\ = CARRY((\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][4]~q\) # (!\multfp32_inst|Add6~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][4]~q\,
	datad => VCC,
	cin => \multfp32_inst|Add6~5_cout\,
	cout => \multfp32_inst|Add6~7_cout\);

-- Location: LCCOMB_X75_Y27_N18
\multfp32_inst|Add6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add6~9_cout\ = CARRY((!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][5]~q\ & !\multfp32_inst|Add6~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][5]~q\,
	datad => VCC,
	cin => \multfp32_inst|Add6~7_cout\,
	cout => \multfp32_inst|Add6~9_cout\);

-- Location: LCCOMB_X75_Y27_N20
\multfp32_inst|Add6~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add6~11_cout\ = CARRY((\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][6]~q\) # (!\multfp32_inst|Add6~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][6]~q\,
	datad => VCC,
	cin => \multfp32_inst|Add6~9_cout\,
	cout => \multfp32_inst|Add6~11_cout\);

-- Location: LCCOMB_X75_Y27_N22
\multfp32_inst|Add6~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add6~13_cout\ = CARRY((!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][7]~q\ & !\multfp32_inst|Add6~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][7]~q\,
	datad => VCC,
	cin => \multfp32_inst|Add6~11_cout\,
	cout => \multfp32_inst|Add6~13_cout\);

-- Location: LCCOMB_X75_Y27_N24
\multfp32_inst|Add6~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add6~15_cout\ = CARRY((\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][8]~q\) # (!\multfp32_inst|Add6~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][8]~q\,
	datad => VCC,
	cin => \multfp32_inst|Add6~13_cout\,
	cout => \multfp32_inst|Add6~15_cout\);

-- Location: LCCOMB_X75_Y27_N26
\multfp32_inst|Add6~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add6~17_cout\ = CARRY((!\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][9]~q\ & !\multfp32_inst|Add6~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][9]~q\,
	datad => VCC,
	cin => \multfp32_inst|Add6~15_cout\,
	cout => \multfp32_inst|Add6~17_cout\);

-- Location: LCCOMB_X75_Y27_N28
\multfp32_inst|Add6~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add6~19_cout\ = CARRY((\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][11]~q\) # (!\multfp32_inst|Add6~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][11]~q\,
	datad => VCC,
	cin => \multfp32_inst|Add6~17_cout\,
	cout => \multfp32_inst|Add6~19_cout\);

-- Location: LCCOMB_X75_Y27_N30
\multfp32_inst|Add6~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Add6~20_combout\ = \multfp32_inst|Add6~19_cout\ $ (\multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][11]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][11]~q\,
	cin => \multfp32_inst|Add6~19_cout\,
	combout => \multfp32_inst|Add6~20_combout\);

-- Location: LCCOMB_X75_Y27_N2
\multfp32_inst|concExc_uid90_fpMulTest_q[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|concExc_uid90_fpMulTest_q[0]~6_combout\ = (\multfp32_inst|concExc_uid90_fpMulTest_q[0]~5_combout\ & ((\multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[0][0]~q\) # 
-- ((\multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[0][0]~q\) # (!\multfp32_inst|Add6~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|concExc_uid90_fpMulTest_q[0]~5_combout\,
	datab => \multfp32_inst|redist15_excZ_x_uid15_fpMulTest_q_6|delay_signals[0][0]~q\,
	datac => \multfp32_inst|redist12_excZ_y_uid29_fpMulTest_q_6|delay_signals[0][0]~q\,
	datad => \multfp32_inst|Add6~20_combout\,
	combout => \multfp32_inst|concExc_uid90_fpMulTest_q[0]~6_combout\);

-- Location: FF_X75_Y27_N3
\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|concExc_uid90_fpMulTest_q[0]~6_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\);

-- Location: LCCOMB_X72_Y29_N0
\multfp32_inst|Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux32~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & 
-- ((\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\) # (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][0]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	combout => \multfp32_inst|Mux32~0_combout\);

-- Location: FF_X71_Y29_N19
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][1]~27_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][1]~q\);

-- Location: FF_X72_Y29_N27
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][1]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][1]~q\);

-- Location: LCCOMB_X72_Y29_N26
\multfp32_inst|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux31~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][1]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][1]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	combout => \multfp32_inst|Mux31~0_combout\);

-- Location: FF_X71_Y29_N21
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][2]~29_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][2]~q\);

-- Location: FF_X72_Y29_N13
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][2]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][2]~q\);

-- Location: LCCOMB_X72_Y29_N12
\multfp32_inst|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux30~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][2]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][2]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	combout => \multfp32_inst|Mux30~0_combout\);

-- Location: FF_X71_Y29_N23
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][3]~31_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][3]~q\);

-- Location: FF_X72_Y29_N11
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][3]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][3]~q\);

-- Location: LCCOMB_X72_Y29_N10
\multfp32_inst|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux29~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][3]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][3]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	combout => \multfp32_inst|Mux29~0_combout\);

-- Location: FF_X71_Y29_N25
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][4]~33_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][4]~q\);

-- Location: FF_X72_Y29_N25
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][4]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][4]~q\);

-- Location: LCCOMB_X72_Y29_N24
\multfp32_inst|Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux28~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][4]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][4]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	combout => \multfp32_inst|Mux28~0_combout\);

-- Location: FF_X71_Y29_N27
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][5]~35_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][5]~q\);

-- Location: FF_X72_Y29_N7
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][5]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][5]~q\);

-- Location: LCCOMB_X72_Y29_N6
\multfp32_inst|Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux27~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][5]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][5]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	combout => \multfp32_inst|Mux27~0_combout\);

-- Location: FF_X71_Y29_N29
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][6]~37_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][6]~q\);

-- Location: FF_X72_Y29_N29
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][6]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][6]~q\);

-- Location: LCCOMB_X72_Y29_N28
\multfp32_inst|Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux26~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][6]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][6]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	combout => \multfp32_inst|Mux26~0_combout\);

-- Location: FF_X71_Y29_N31
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][7]~39_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][7]~q\);

-- Location: FF_X72_Y29_N15
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][7]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][7]~q\);

-- Location: LCCOMB_X72_Y29_N14
\multfp32_inst|Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux25~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][7]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][7]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	combout => \multfp32_inst|Mux25~0_combout\);

-- Location: FF_X71_Y28_N1
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][8]~41_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][8]~q\);

-- Location: FF_X74_Y28_N9
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][8]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][8]~q\);

-- Location: LCCOMB_X74_Y28_N8
\multfp32_inst|Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux24~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][8]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][8]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	combout => \multfp32_inst|Mux24~0_combout\);

-- Location: FF_X71_Y28_N3
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][9]~43_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][9]~q\);

-- Location: FF_X74_Y28_N19
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][9]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][9]~q\);

-- Location: LCCOMB_X74_Y28_N18
\multfp32_inst|Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux23~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][9]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][9]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	combout => \multfp32_inst|Mux23~0_combout\);

-- Location: FF_X71_Y28_N5
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][10]~45_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][10]~q\);

-- Location: FF_X74_Y28_N17
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][10]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][10]~q\);

-- Location: LCCOMB_X74_Y28_N16
\multfp32_inst|Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux22~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][10]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][10]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	combout => \multfp32_inst|Mux22~0_combout\);

-- Location: FF_X71_Y28_N7
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][11]~47_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][11]~q\);

-- Location: FF_X74_Y28_N31
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][11]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][11]~q\);

-- Location: LCCOMB_X74_Y28_N30
\multfp32_inst|Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux21~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][11]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][11]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	combout => \multfp32_inst|Mux21~0_combout\);

-- Location: FF_X71_Y28_N9
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][12]~49_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][12]~q\);

-- Location: FF_X74_Y28_N1
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][12]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][12]~q\);

-- Location: LCCOMB_X74_Y28_N0
\multfp32_inst|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux20~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][12]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][12]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	combout => \multfp32_inst|Mux20~0_combout\);

-- Location: FF_X71_Y28_N11
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][13]~51_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][13]~q\);

-- Location: FF_X74_Y28_N11
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][13]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][13]~q\);

-- Location: LCCOMB_X74_Y28_N10
\multfp32_inst|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux19~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][13]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][13]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	combout => \multfp32_inst|Mux19~0_combout\);

-- Location: FF_X71_Y28_N13
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][14]~53_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][14]~q\);

-- Location: FF_X74_Y28_N29
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][14]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][14]~q\);

-- Location: LCCOMB_X74_Y28_N28
\multfp32_inst|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux18~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][14]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][14]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	combout => \multfp32_inst|Mux18~0_combout\);

-- Location: FF_X71_Y28_N15
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][15]~55_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][15]~q\);

-- Location: FF_X74_Y28_N23
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][15]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][15]~q\);

-- Location: LCCOMB_X74_Y28_N22
\multfp32_inst|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux17~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][15]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][15]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	combout => \multfp32_inst|Mux17~0_combout\);

-- Location: FF_X71_Y28_N17
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][16]~57_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][16]~q\);

-- Location: FF_X74_Y28_N21
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][16]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][16]~q\);

-- Location: LCCOMB_X74_Y28_N20
\multfp32_inst|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux16~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][16]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][16]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	combout => \multfp32_inst|Mux16~0_combout\);

-- Location: FF_X71_Y28_N19
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][17]~59_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][17]~q\);

-- Location: FF_X74_Y28_N27
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][17]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][17]~q\);

-- Location: LCCOMB_X74_Y28_N26
\multfp32_inst|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux15~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][17]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][17]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	combout => \multfp32_inst|Mux15~0_combout\);

-- Location: FF_X71_Y28_N21
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][18]~61_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][18]~q\);

-- Location: FF_X74_Y28_N25
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][18]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][18]~q\);

-- Location: LCCOMB_X74_Y28_N24
\multfp32_inst|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux14~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][18]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][18]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	combout => \multfp32_inst|Mux14~0_combout\);

-- Location: FF_X71_Y28_N23
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][19]~63_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][19]~q\);

-- Location: FF_X74_Y28_N7
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][19]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][19]~q\);

-- Location: LCCOMB_X74_Y28_N6
\multfp32_inst|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux13~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][19]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][19]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	combout => \multfp32_inst|Mux13~0_combout\);

-- Location: FF_X71_Y28_N25
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][20]~65_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][20]~q\);

-- Location: FF_X74_Y28_N13
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][20]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][20]~q\);

-- Location: LCCOMB_X74_Y28_N12
\multfp32_inst|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux12~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][20]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][20]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	combout => \multfp32_inst|Mux12~0_combout\);

-- Location: FF_X71_Y28_N27
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][21]~67_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][21]~q\);

-- Location: FF_X74_Y28_N15
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][21]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][21]~q\);

-- Location: LCCOMB_X74_Y28_N14
\multfp32_inst|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux11~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][21]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][21]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	combout => \multfp32_inst|Mux11~0_combout\);

-- Location: FF_X71_Y28_N29
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][22]~69_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][22]~q\);

-- Location: FF_X74_Y28_N5
\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[1][22]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][22]~q\);

-- Location: LCCOMB_X74_Y28_N4
\multfp32_inst|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux10~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & 
-- (\multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][22]~q\ & !\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datac => \multfp32_inst|redist5_fracRPreExc_uid70_fpMulTest_b_2|delay_signals[0][22]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	combout => \multfp32_inst|Mux10~0_combout\);

-- Location: FF_X74_Y27_N5
\multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][0]~q\);

-- Location: LCCOMB_X74_Y27_N4
\multfp32_inst|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux9~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & ((\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\ & 
-- ((!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\))) # (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\ & ((\multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][0]~q\) # 
-- (\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	datac => \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][0]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	combout => \multfp32_inst|Mux9~0_combout\);

-- Location: FF_X71_Y27_N23
\multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][1]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][1]~q\);

-- Location: LCCOMB_X71_Y27_N22
\multfp32_inst|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux8~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & ((\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & 
-- (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\)) # (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & ((\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\) # 
-- (\multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	datac => \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][1]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	combout => \multfp32_inst|Mux8~0_combout\);

-- Location: FF_X72_Y27_N9
\multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][2]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][2]~q\);

-- Location: LCCOMB_X72_Y27_N8
\multfp32_inst|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux7~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & ((\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & 
-- (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\)) # (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & ((\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\) # 
-- (\multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	datac => \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][2]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	combout => \multfp32_inst|Mux7~0_combout\);

-- Location: FF_X71_Y27_N29
\multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][3]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][3]~q\);

-- Location: LCCOMB_X71_Y27_N28
\multfp32_inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux6~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & ((\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & 
-- (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\)) # (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & ((\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\) # 
-- (\multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	datac => \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][3]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	combout => \multfp32_inst|Mux6~0_combout\);

-- Location: FF_X71_Y27_N25
\multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][4]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][4]~q\);

-- Location: LCCOMB_X71_Y27_N24
\multfp32_inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux5~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & ((\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & 
-- (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\)) # (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & ((\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\) # 
-- (\multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	datac => \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][4]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	combout => \multfp32_inst|Mux5~0_combout\);

-- Location: FF_X74_Y27_N29
\multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][5]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][5]~q\);

-- Location: LCCOMB_X74_Y27_N28
\multfp32_inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux4~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & ((\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\ & 
-- ((!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\))) # (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\ & ((\multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][5]~q\) # 
-- (\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	datac => \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][5]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	combout => \multfp32_inst|Mux4~0_combout\);

-- Location: FF_X71_Y27_N21
\multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][6]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][6]~q\);

-- Location: LCCOMB_X71_Y27_N20
\multfp32_inst|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux3~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & ((\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & 
-- (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\)) # (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & ((\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\) # 
-- (\multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	datac => \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][6]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	combout => \multfp32_inst|Mux3~0_combout\);

-- Location: FF_X71_Y27_N27
\multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist4_expRPreExcExt_uid71_fpMulTest_b_1|delay_signals[0][7]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][7]~q\);

-- Location: LCCOMB_X71_Y27_N26
\multfp32_inst|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|Mux2~0_combout\ = (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\ & ((\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & 
-- (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\)) # (!\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\ & ((\multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\) # 
-- (\multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][2]~q\,
	datab => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][1]~q\,
	datac => \multfp32_inst|redist3_expRPreExc_uid72_fpMulTest_b_1|delay_signals[0][7]~q\,
	datad => \multfp32_inst|redist2_concExc_uid90_fpMulTest_q_1|delay_signals[0][0]~q\,
	combout => \multfp32_inst|Mux2~0_combout\);

-- Location: IOIBUF_X78_Y35_N1
\a[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(31),
	o => \a[31]~input_o\);

-- Location: IOIBUF_X78_Y35_N8
\b[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(31),
	o => \b[31]~input_o\);

-- Location: LCCOMB_X74_Y31_N4
\multfp32_inst|signR_uid48_fpMulTest_qi[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|signR_uid48_fpMulTest_qi\(0) = \a[31]~input_o\ $ (\b[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[31]~input_o\,
	datad => \b[31]~input_o\,
	combout => \multfp32_inst|signR_uid48_fpMulTest_qi\(0));

-- Location: FF_X74_Y31_N5
\multfp32_inst|signR_uid48_fpMulTest_delay|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|signR_uid48_fpMulTest_qi\(0),
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|signR_uid48_fpMulTest_delay|delay_signals[0][0]~q\);

-- Location: FF_X74_Y27_N11
\multfp32_inst|redist8_signR_uid48_fpMulTest_q_6|delay_signals[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|signR_uid48_fpMulTest_delay|delay_signals[0][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist8_signR_uid48_fpMulTest_q_6|delay_signals[4][0]~q\);

-- Location: FF_X74_Y27_N9
\multfp32_inst|redist8_signR_uid48_fpMulTest_q_6|delay_signals[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist8_signR_uid48_fpMulTest_q_6|delay_signals[4][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist8_signR_uid48_fpMulTest_q_6|delay_signals[3][0]~q\);

-- Location: FF_X74_Y27_N15
\multfp32_inst|redist8_signR_uid48_fpMulTest_q_6|delay_signals[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist8_signR_uid48_fpMulTest_q_6|delay_signals[3][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist8_signR_uid48_fpMulTest_q_6|delay_signals[2][0]~q\);

-- Location: FF_X74_Y27_N23
\multfp32_inst|redist8_signR_uid48_fpMulTest_q_6|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist8_signR_uid48_fpMulTest_q_6|delay_signals[2][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist8_signR_uid48_fpMulTest_q_6|delay_signals[1][0]~q\);

-- Location: FF_X74_Y27_N7
\multfp32_inst|redist8_signR_uid48_fpMulTest_q_6|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multfp32_inst|redist8_signR_uid48_fpMulTest_q_6|delay_signals[1][0]~q\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|redist8_signR_uid48_fpMulTest_q_6|delay_signals[0][0]~q\);

-- Location: LCCOMB_X74_Y27_N30
\multfp32_inst|signRPostExc_uid102_fpMulTest_qi[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multfp32_inst|signRPostExc_uid102_fpMulTest_qi\(0) = (!\multfp32_inst|concExc_uid90_fpMulTest_q[2]~1_combout\ & \multfp32_inst|redist8_signR_uid48_fpMulTest_q_6|delay_signals[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multfp32_inst|concExc_uid90_fpMulTest_q[2]~1_combout\,
	datad => \multfp32_inst|redist8_signR_uid48_fpMulTest_q_6|delay_signals[0][0]~q\,
	combout => \multfp32_inst|signRPostExc_uid102_fpMulTest_qi\(0));

-- Location: FF_X74_Y27_N31
\multfp32_inst|signRPostExc_uid102_fpMulTest_delay|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multfp32_inst|signRPostExc_uid102_fpMulTest_qi\(0),
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multfp32_inst|signRPostExc_uid102_fpMulTest_delay|delay_signals[0][0]~q\);

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

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(7) <= \q[7]~output_o\;

ww_q(8) <= \q[8]~output_o\;

ww_q(9) <= \q[9]~output_o\;

ww_q(10) <= \q[10]~output_o\;

ww_q(11) <= \q[11]~output_o\;

ww_q(12) <= \q[12]~output_o\;

ww_q(13) <= \q[13]~output_o\;

ww_q(14) <= \q[14]~output_o\;

ww_q(15) <= \q[15]~output_o\;

ww_q(16) <= \q[16]~output_o\;

ww_q(17) <= \q[17]~output_o\;

ww_q(18) <= \q[18]~output_o\;

ww_q(19) <= \q[19]~output_o\;

ww_q(20) <= \q[20]~output_o\;

ww_q(21) <= \q[21]~output_o\;

ww_q(22) <= \q[22]~output_o\;

ww_q(23) <= \q[23]~output_o\;

ww_q(24) <= \q[24]~output_o\;

ww_q(25) <= \q[25]~output_o\;

ww_q(26) <= \q[26]~output_o\;

ww_q(27) <= \q[27]~output_o\;

ww_q(28) <= \q[28]~output_o\;

ww_q(29) <= \q[29]~output_o\;

ww_q(30) <= \q[30]~output_o\;

ww_q(31) <= \q[31]~output_o\;
END structure;


