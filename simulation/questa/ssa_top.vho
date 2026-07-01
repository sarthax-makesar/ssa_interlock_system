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
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "06/27/2026 00:36:42"

-- 
-- Device: Altera EP4CGX75DF27C8 Package FBGA672
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ssa_top IS
    PORT (
	clk_fast_pin : IN std_logic;
	clk_telemetry_pin : IN std_logic;
	clk_sys_pin : IN std_logic;
	rst_n_pin : IN std_logic;
	interlock_reset_pin : IN std_logic;
	adc_p_refl_pin : IN std_logic_vector(15 DOWNTO 0);
	adc_p_drive_pin : IN std_logic_vector(15 DOWNTO 0);
	module_fault_vector_pin : IN std_logic_vector(239 DOWNTO 0);
	rf_gate_disable_pin : BUFFER std_logic;
	psu_contactor_pin : BUFFER std_logic
	);
END ssa_top;

-- Design Ports Information
-- rf_gate_disable_pin	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- psu_contactor_pin	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_drive_pin[11]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_drive_pin[10]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_drive_pin[9]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_drive_pin[8]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_drive_pin[7]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_drive_pin[6]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_drive_pin[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_drive_pin[4]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_drive_pin[3]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_drive_pin[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_drive_pin[1]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_drive_pin[0]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_refl_pin[12]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_refl_pin[13]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_refl_pin[14]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_refl_pin[15]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_fast_pin	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n_pin	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_drive_pin[12]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_drive_pin[13]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_drive_pin[14]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_drive_pin[15]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_sys_pin	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- interlock_reset_pin	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[220]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[221]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[222]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[223]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[224]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[225]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[226]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[227]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[212]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[213]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[214]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[215]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[216]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[217]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[218]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[219]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[228]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[229]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[230]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[231]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[232]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[233]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[234]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[235]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[204]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[205]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[206]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[207]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[208]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[209]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[210]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[211]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[196]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[197]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[198]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[199]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[200]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[201]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[202]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[203]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[188]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[189]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[190]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[191]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[192]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[193]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[194]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[195]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[180]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[181]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[182]	=>  Location: PIN_W23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[183]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[184]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[185]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[186]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[187]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[172]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[173]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[174]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[175]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[176]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[177]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[178]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[179]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[164]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[165]	=>  Location: PIN_N23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[166]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[167]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[168]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[169]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[170]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[171]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[156]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[157]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[158]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[159]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[160]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[161]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[162]	=>  Location: PIN_N24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[163]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[148]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[149]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[150]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[151]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[152]	=>  Location: PIN_E23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[153]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[154]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[155]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[140]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[141]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[142]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[143]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[144]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[145]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[146]	=>  Location: PIN_K24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[147]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[132]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[133]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[134]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[135]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[136]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[137]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[138]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[139]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[124]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[125]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[126]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[127]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[128]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[129]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[130]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[131]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[116]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[117]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[118]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[119]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[120]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[121]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[122]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[123]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[108]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[109]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[110]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[111]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[112]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[113]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[114]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[115]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[100]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[101]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[102]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[103]	=>  Location: PIN_A24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[104]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[105]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[106]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[107]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[92]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[93]	=>  Location: PIN_F23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[94]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[95]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[96]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[97]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[98]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[99]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[84]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[85]	=>  Location: PIN_P23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[86]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[87]	=>  Location: PIN_P24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[88]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[89]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[90]	=>  Location: PIN_K23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[91]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[76]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[77]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[78]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[79]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[80]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[81]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[82]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[83]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[68]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[69]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[70]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[71]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[72]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[73]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[74]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[75]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[60]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[61]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[62]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[63]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[64]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[65]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[66]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[67]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[52]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[53]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[54]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[55]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[56]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[57]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[58]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[59]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[3]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[2]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[0]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[1]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[4]	=>  Location: PIN_AD16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[5]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[12]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[13]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[14]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[15]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[16]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[17]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[18]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[19]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[10]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[11]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[8]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[9]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[7]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[6]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[44]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[45]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[46]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[47]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[48]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[49]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[50]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[51]	=>  Location: PIN_AC16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[28]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[29]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[30]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[31]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[32]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[33]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[34]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[35]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[20]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[21]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[22]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[23]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[24]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[25]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[26]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[27]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[36]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[37]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[38]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[39]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[40]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[41]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[42]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[43]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[236]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[237]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[238]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- module_fault_vector_pin[239]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_telemetry_pin	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_refl_pin[11]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_refl_pin[10]	=>  Location: PIN_AD13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_refl_pin[9]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_refl_pin[8]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_refl_pin[7]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_refl_pin[6]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_refl_pin[5]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_refl_pin[4]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_refl_pin[3]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_refl_pin[2]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_refl_pin[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_p_refl_pin[0]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ssa_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_fast_pin : std_logic;
SIGNAL ww_clk_telemetry_pin : std_logic;
SIGNAL ww_clk_sys_pin : std_logic;
SIGNAL ww_rst_n_pin : std_logic;
SIGNAL ww_interlock_reset_pin : std_logic;
SIGNAL ww_adc_p_refl_pin : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_adc_p_drive_pin : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_module_fault_vector_pin : std_logic_vector(239 DOWNTO 0);
SIGNAL ww_rf_gate_disable_pin : std_logic;
SIGNAL ww_psu_contactor_pin : std_logic;
SIGNAL \clk_fast_pin~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst_n_pin~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_sys_pin~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_p_drive_pin[11]~input_o\ : std_logic;
SIGNAL \adc_p_drive_pin[10]~input_o\ : std_logic;
SIGNAL \adc_p_drive_pin[9]~input_o\ : std_logic;
SIGNAL \adc_p_drive_pin[8]~input_o\ : std_logic;
SIGNAL \adc_p_drive_pin[7]~input_o\ : std_logic;
SIGNAL \adc_p_drive_pin[6]~input_o\ : std_logic;
SIGNAL \adc_p_drive_pin[5]~input_o\ : std_logic;
SIGNAL \adc_p_drive_pin[4]~input_o\ : std_logic;
SIGNAL \adc_p_drive_pin[3]~input_o\ : std_logic;
SIGNAL \adc_p_drive_pin[2]~input_o\ : std_logic;
SIGNAL \adc_p_drive_pin[1]~input_o\ : std_logic;
SIGNAL \adc_p_drive_pin[0]~input_o\ : std_logic;
SIGNAL \rf_gate_disable_pin~output_o\ : std_logic;
SIGNAL \psu_contactor_pin~output_o\ : std_logic;
SIGNAL \clk_fast_pin~input_o\ : std_logic;
SIGNAL \clk_fast_pin~inputclkctrl_outclk\ : std_logic;
SIGNAL \adc_p_drive_pin[15]~input_o\ : std_logic;
SIGNAL \adc_p_drive_pin[14]~input_o\ : std_logic;
SIGNAL \adc_p_drive_pin[12]~input_o\ : std_logic;
SIGNAL \adc_p_drive_pin[13]~input_o\ : std_logic;
SIGNAL \u_overdrive_comp|LessThan0~0_combout\ : std_logic;
SIGNAL \rst_n_pin~input_o\ : std_logic;
SIGNAL \rst_n_pin~inputclkctrl_outclk\ : std_logic;
SIGNAL \u_overdrive_comp|trip_overdrive~q\ : std_logic;
SIGNAL \clk_sys_pin~input_o\ : std_logic;
SIGNAL \clk_sys_pin~inputclkctrl_outclk\ : std_logic;
SIGNAL \interlock_reset_pin~input_o\ : std_logic;
SIGNAL \u_filter|Add0~35\ : std_logic;
SIGNAL \u_filter|Add0~36_combout\ : std_logic;
SIGNAL \u_filter|Add0~30_combout\ : std_logic;
SIGNAL \adc_p_refl_pin[15]~input_o\ : std_logic;
SIGNAL \u_filter|scale_prod_1[25]~feeder_combout\ : std_logic;
SIGNAL \u_filter|Add0~28_combout\ : std_logic;
SIGNAL \u_filter|Add0~26_combout\ : std_logic;
SIGNAL \adc_p_refl_pin[13]~input_o\ : std_logic;
SIGNAL \u_filter|scale_prod_1[23]~feeder_combout\ : std_logic;
SIGNAL \u_filter|Add0~24_combout\ : std_logic;
SIGNAL \adc_p_refl_pin[12]~input_o\ : std_logic;
SIGNAL \adc_p_refl_pin[11]~input_o\ : std_logic;
SIGNAL \u_filter|scale_prod_1[21]~feeder_combout\ : std_logic;
SIGNAL \u_filter|Add0~20_combout\ : std_logic;
SIGNAL \u_filter|Add0~18_combout\ : std_logic;
SIGNAL \u_filter|Add0~16_combout\ : std_logic;
SIGNAL \adc_p_refl_pin[9]~input_o\ : std_logic;
SIGNAL \adc_p_refl_pin[8]~input_o\ : std_logic;
SIGNAL \u_filter|scale_prod_1[18]~feeder_combout\ : std_logic;
SIGNAL \u_filter|Add0~14_combout\ : std_logic;
SIGNAL \u_filter|Add0~10_combout\ : std_logic;
SIGNAL \adc_p_refl_pin[5]~input_o\ : std_logic;
SIGNAL \u_filter|scale_prod_1[15]~feeder_combout\ : std_logic;
SIGNAL \u_filter|Add0~8_combout\ : std_logic;
SIGNAL \u_filter|Add0~6_combout\ : std_logic;
SIGNAL \adc_p_refl_pin[4]~input_o\ : std_logic;
SIGNAL \u_filter|scale_prod_2[14]~18_combout\ : std_logic;
SIGNAL \u_filter|Add0~4_combout\ : std_logic;
SIGNAL \adc_p_refl_pin[3]~input_o\ : std_logic;
SIGNAL \u_filter|Add0~1\ : std_logic;
SIGNAL \u_filter|Add0~2_combout\ : std_logic;
SIGNAL \adc_p_refl_pin[2]~input_o\ : std_logic;
SIGNAL \adc_p_refl_pin[1]~input_o\ : std_logic;
SIGNAL \u_filter|Add0~0_combout\ : std_logic;
SIGNAL \adc_p_refl_pin[0]~input_o\ : std_logic;
SIGNAL \u_filter|iir_sum[14]~19_cout\ : std_logic;
SIGNAL \u_filter|iir_sum[14]~21_cout\ : std_logic;
SIGNAL \u_filter|iir_sum[14]~23_cout\ : std_logic;
SIGNAL \u_filter|iir_sum[14]~25_cout\ : std_logic;
SIGNAL \u_filter|iir_sum[14]~26_combout\ : std_logic;
SIGNAL \u_filter|p_refl_filtered[0]~feeder_combout\ : std_logic;
SIGNAL \u_filter|scale_prod_2[14]~19\ : std_logic;
SIGNAL \u_filter|scale_prod_2[15]~20_combout\ : std_logic;
SIGNAL \u_filter|iir_sum[14]~27\ : std_logic;
SIGNAL \u_filter|iir_sum[15]~28_combout\ : std_logic;
SIGNAL \u_filter|y_delayed[15]~feeder_combout\ : std_logic;
SIGNAL \u_filter|scale_prod_2[15]~21\ : std_logic;
SIGNAL \u_filter|scale_prod_2[16]~22_combout\ : std_logic;
SIGNAL \adc_p_refl_pin[6]~input_o\ : std_logic;
SIGNAL \u_filter|iir_sum[15]~29\ : std_logic;
SIGNAL \u_filter|iir_sum[16]~30_combout\ : std_logic;
SIGNAL \u_filter|y_delayed[16]~feeder_combout\ : std_logic;
SIGNAL \u_filter|Add0~3\ : std_logic;
SIGNAL \u_filter|Add0~5\ : std_logic;
SIGNAL \u_filter|Add0~7\ : std_logic;
SIGNAL \u_filter|Add0~9\ : std_logic;
SIGNAL \u_filter|Add0~11\ : std_logic;
SIGNAL \u_filter|Add0~12_combout\ : std_logic;
SIGNAL \u_filter|scale_prod_2[16]~23\ : std_logic;
SIGNAL \u_filter|scale_prod_2[17]~24_combout\ : std_logic;
SIGNAL \adc_p_refl_pin[7]~input_o\ : std_logic;
SIGNAL \u_filter|scale_prod_1[17]~feeder_combout\ : std_logic;
SIGNAL \u_filter|iir_sum[16]~31\ : std_logic;
SIGNAL \u_filter|iir_sum[17]~32_combout\ : std_logic;
SIGNAL \u_filter|y_delayed[17]~feeder_combout\ : std_logic;
SIGNAL \u_filter|scale_prod_2[17]~25\ : std_logic;
SIGNAL \u_filter|scale_prod_2[18]~26_combout\ : std_logic;
SIGNAL \u_filter|iir_sum[17]~33\ : std_logic;
SIGNAL \u_filter|iir_sum[18]~34_combout\ : std_logic;
SIGNAL \u_filter|y_delayed[18]~feeder_combout\ : std_logic;
SIGNAL \u_filter|scale_prod_2[18]~27\ : std_logic;
SIGNAL \u_filter|scale_prod_2[19]~28_combout\ : std_logic;
SIGNAL \u_filter|iir_sum[18]~35\ : std_logic;
SIGNAL \u_filter|iir_sum[19]~36_combout\ : std_logic;
SIGNAL \u_filter|y_delayed[19]~feeder_combout\ : std_logic;
SIGNAL \u_filter|scale_prod_2[19]~29\ : std_logic;
SIGNAL \u_filter|scale_prod_2[20]~30_combout\ : std_logic;
SIGNAL \adc_p_refl_pin[10]~input_o\ : std_logic;
SIGNAL \u_filter|scale_prod_1[20]~feeder_combout\ : std_logic;
SIGNAL \u_filter|iir_sum[19]~37\ : std_logic;
SIGNAL \u_filter|iir_sum[20]~38_combout\ : std_logic;
SIGNAL \u_filter|scale_prod_2[20]~31\ : std_logic;
SIGNAL \u_filter|scale_prod_2[21]~32_combout\ : std_logic;
SIGNAL \u_filter|iir_sum[20]~39\ : std_logic;
SIGNAL \u_filter|iir_sum[21]~40_combout\ : std_logic;
SIGNAL \u_filter|y_delayed[21]~feeder_combout\ : std_logic;
SIGNAL \u_filter|Add0~13\ : std_logic;
SIGNAL \u_filter|Add0~15\ : std_logic;
SIGNAL \u_filter|Add0~17\ : std_logic;
SIGNAL \u_filter|Add0~19\ : std_logic;
SIGNAL \u_filter|Add0~21\ : std_logic;
SIGNAL \u_filter|Add0~22_combout\ : std_logic;
SIGNAL \u_filter|scale_prod_2[21]~33\ : std_logic;
SIGNAL \u_filter|scale_prod_2[22]~34_combout\ : std_logic;
SIGNAL \u_filter|iir_sum[21]~41\ : std_logic;
SIGNAL \u_filter|iir_sum[22]~42_combout\ : std_logic;
SIGNAL \u_filter|y_delayed[22]~feeder_combout\ : std_logic;
SIGNAL \u_filter|scale_prod_2[22]~35\ : std_logic;
SIGNAL \u_filter|scale_prod_2[23]~36_combout\ : std_logic;
SIGNAL \u_filter|iir_sum[22]~43\ : std_logic;
SIGNAL \u_filter|iir_sum[23]~44_combout\ : std_logic;
SIGNAL \u_filter|y_delayed[23]~feeder_combout\ : std_logic;
SIGNAL \u_filter|scale_prod_2[23]~37\ : std_logic;
SIGNAL \u_filter|scale_prod_2[24]~38_combout\ : std_logic;
SIGNAL \adc_p_refl_pin[14]~input_o\ : std_logic;
SIGNAL \u_filter|scale_prod_1[24]~feeder_combout\ : std_logic;
SIGNAL \u_filter|iir_sum[23]~45\ : std_logic;
SIGNAL \u_filter|iir_sum[24]~46_combout\ : std_logic;
SIGNAL \u_filter|y_delayed[24]~feeder_combout\ : std_logic;
SIGNAL \u_filter|scale_prod_2[24]~39\ : std_logic;
SIGNAL \u_filter|scale_prod_2[25]~40_combout\ : std_logic;
SIGNAL \u_filter|iir_sum[24]~47\ : std_logic;
SIGNAL \u_filter|iir_sum[25]~48_combout\ : std_logic;
SIGNAL \u_filter|y_delayed[25]~feeder_combout\ : std_logic;
SIGNAL \u_filter|scale_prod_2[25]~41\ : std_logic;
SIGNAL \u_filter|scale_prod_2[26]~42_combout\ : std_logic;
SIGNAL \u_filter|iir_sum[25]~49\ : std_logic;
SIGNAL \u_filter|iir_sum[26]~50_combout\ : std_logic;
SIGNAL \u_filter|Add0~23\ : std_logic;
SIGNAL \u_filter|Add0~25\ : std_logic;
SIGNAL \u_filter|Add0~27\ : std_logic;
SIGNAL \u_filter|Add0~29\ : std_logic;
SIGNAL \u_filter|Add0~31\ : std_logic;
SIGNAL \u_filter|Add0~32_combout\ : std_logic;
SIGNAL \u_filter|scale_prod_2[26]~43\ : std_logic;
SIGNAL \u_filter|scale_prod_2[27]~44_combout\ : std_logic;
SIGNAL \u_filter|iir_sum[26]~51\ : std_logic;
SIGNAL \u_filter|iir_sum[27]~52_combout\ : std_logic;
SIGNAL \u_filter|scale_prod_2[27]~45\ : std_logic;
SIGNAL \u_filter|scale_prod_2[28]~47\ : std_logic;
SIGNAL \u_filter|scale_prod_2[29]~48_combout\ : std_logic;
SIGNAL \u_filter|iir_sum[27]~53\ : std_logic;
SIGNAL \u_filter|iir_sum[28]~55\ : std_logic;
SIGNAL \u_filter|iir_sum[29]~56_combout\ : std_logic;
SIGNAL \u_filter|scale_prod_2[29]~49\ : std_logic;
SIGNAL \u_filter|scale_prod_2[30]~50_combout\ : std_logic;
SIGNAL \u_filter|iir_sum[29]~57\ : std_logic;
SIGNAL \u_filter|iir_sum[30]~58_combout\ : std_logic;
SIGNAL \u_filter|scale_prod_2[30]~51\ : std_logic;
SIGNAL \u_filter|scale_prod_2[31]~52_combout\ : std_logic;
SIGNAL \u_filter|iir_sum[30]~59\ : std_logic;
SIGNAL \u_filter|iir_sum[31]~60_combout\ : std_logic;
SIGNAL \u_filter|Add0~33\ : std_logic;
SIGNAL \u_filter|Add0~34_combout\ : std_logic;
SIGNAL \u_filter|scale_prod_2[28]~46_combout\ : std_logic;
SIGNAL \u_filter|iir_sum[28]~54_combout\ : std_logic;
SIGNAL \u_filter|y_delayed[28]~feeder_combout\ : std_logic;
SIGNAL \u_slow_comp|LessThan0~0_combout\ : std_logic;
SIGNAL \u_slow_comp|LessThan0~1_combout\ : std_logic;
SIGNAL \u_slow_comp|LessThan0~2_combout\ : std_logic;
SIGNAL \u_slow_comp|trip_slow~q\ : std_logic;
SIGNAL \u_sync_slow|cmp_gc_sync|sync0~q\ : std_logic;
SIGNAL \u_sync_slow|cmp_gc_sync|sync1~feeder_combout\ : std_logic;
SIGNAL \u_sync_slow|cmp_gc_sync|sync1~q\ : std_logic;
SIGNAL \u_sync_slow|synced_o~feeder_combout\ : std_logic;
SIGNAL \u_sync_slow|synced_o~q\ : std_logic;
SIGNAL \u_sync_overdrive|cmp_gc_sync|sync0~feeder_combout\ : std_logic;
SIGNAL \u_sync_overdrive|cmp_gc_sync|sync0~q\ : std_logic;
SIGNAL \u_sync_overdrive|cmp_gc_sync|sync1~feeder_combout\ : std_logic;
SIGNAL \u_sync_overdrive|cmp_gc_sync|sync1~q\ : std_logic;
SIGNAL \u_sync_overdrive|synced_o~q\ : std_logic;
SIGNAL \u_fast_comp|LessThan0~0_combout\ : std_logic;
SIGNAL \u_fast_comp|trip_fast~q\ : std_logic;
SIGNAL \u_sync_fast|cmp_gc_sync|sync0~feeder_combout\ : std_logic;
SIGNAL \u_sync_fast|cmp_gc_sync|sync0~q\ : std_logic;
SIGNAL \u_sync_fast|cmp_gc_sync|sync1~q\ : std_logic;
SIGNAL \u_sync_fast|synced_o~feeder_combout\ : std_logic;
SIGNAL \u_sync_fast|synced_o~q\ : std_logic;
SIGNAL \u_central_brain|latched_fast~0_combout\ : std_logic;
SIGNAL \clk_telemetry_pin~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[234]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[233]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[235]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[232]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add232~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[230]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[231]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[229]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[228]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add228~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add232~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add228~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add232~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add228~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add230~1\ : std_logic;
SIGNAL \u_health_mon|Add230~3\ : std_logic;
SIGNAL \u_health_mon|Add230~5\ : std_logic;
SIGNAL \u_health_mon|Add230~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[217]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[216]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[219]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[218]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add216~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[212]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[215]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[214]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[213]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add212~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add212~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add216~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add212~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add216~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add214~1\ : std_logic;
SIGNAL \u_health_mon|Add214~3\ : std_logic;
SIGNAL \u_health_mon|Add214~5\ : std_logic;
SIGNAL \u_health_mon|Add214~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[220]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[221]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[223]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[222]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add220~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[225]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[226]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[227]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[224]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add224~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add220~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add224~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add224~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add220~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add222~1\ : std_logic;
SIGNAL \u_health_mon|Add222~3\ : std_logic;
SIGNAL \u_health_mon|Add222~5\ : std_logic;
SIGNAL \u_health_mon|Add222~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add222~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add214~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add214~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add222~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add214~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add222~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add218~1\ : std_logic;
SIGNAL \u_health_mon|Add218~3\ : std_logic;
SIGNAL \u_health_mon|Add218~5\ : std_logic;
SIGNAL \u_health_mon|Add218~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add230~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add218~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add230~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add218~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add218~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add230~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add226~1\ : std_logic;
SIGNAL \u_health_mon|Add226~3\ : std_logic;
SIGNAL \u_health_mon|Add226~5\ : std_logic;
SIGNAL \u_health_mon|Add226~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[41]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[40]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[43]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[42]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add40~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[36]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[39]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[37]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[38]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add36~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add36~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add40~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add40~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add36~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add38~1\ : std_logic;
SIGNAL \u_health_mon|Add38~3\ : std_logic;
SIGNAL \u_health_mon|Add38~5\ : std_logic;
SIGNAL \u_health_mon|Add38~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[23]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[20]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[22]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[21]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add20~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[25]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[26]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[27]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[24]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add24~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add20~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add24~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add20~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add24~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add22~1\ : std_logic;
SIGNAL \u_health_mon|Add22~3\ : std_logic;
SIGNAL \u_health_mon|Add22~5\ : std_logic;
SIGNAL \u_health_mon|Add22~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[32]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[35]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[33]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[34]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add32~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[29]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[30]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[31]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[28]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add28~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add28~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add32~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add28~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add32~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add30~1\ : std_logic;
SIGNAL \u_health_mon|Add30~3\ : std_logic;
SIGNAL \u_health_mon|Add30~5\ : std_logic;
SIGNAL \u_health_mon|Add30~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add30~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add22~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add30~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add22~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add22~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add30~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add26~1\ : std_logic;
SIGNAL \u_health_mon|Add26~3\ : std_logic;
SIGNAL \u_health_mon|Add26~5\ : std_logic;
SIGNAL \u_health_mon|Add26~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add26~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add38~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add26~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add38~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add38~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add26~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add34~1\ : std_logic;
SIGNAL \u_health_mon|Add34~3\ : std_logic;
SIGNAL \u_health_mon|Add34~5\ : std_logic;
SIGNAL \u_health_mon|Add34~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[3]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[0]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[2]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[1]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add2~0_combout\ : std_logic;
SIGNAL \u_health_mon|total_faults~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[4]~input_o\ : std_logic;
SIGNAL \u_health_mon|total_faults~1_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[5]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add3~1_cout\ : std_logic;
SIGNAL \u_health_mon|Add3~3\ : std_logic;
SIGNAL \u_health_mon|Add3~5\ : std_logic;
SIGNAL \u_health_mon|Add3~7\ : std_logic;
SIGNAL \u_health_mon|Add3~8_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[15]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[14]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[13]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[12]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add12~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[16]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[18]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[17]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[19]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add16~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add16~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add12~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add16~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add12~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add14~1\ : std_logic;
SIGNAL \u_health_mon|Add14~3\ : std_logic;
SIGNAL \u_health_mon|Add14~5\ : std_logic;
SIGNAL \u_health_mon|Add14~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add14~4_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[9]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[8]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add7~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[10]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[11]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add9~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add9~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add7~1_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[7]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add8~1_cout\ : std_logic;
SIGNAL \u_health_mon|Add8~3\ : std_logic;
SIGNAL \u_health_mon|Add8~5\ : std_logic;
SIGNAL \u_health_mon|Add8~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add8~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add14~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add14~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add8~2_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[6]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add10~1_cout\ : std_logic;
SIGNAL \u_health_mon|Add10~3\ : std_logic;
SIGNAL \u_health_mon|Add10~5\ : std_logic;
SIGNAL \u_health_mon|Add10~7\ : std_logic;
SIGNAL \u_health_mon|Add10~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add10~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add3~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add3~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add10~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add10~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add3~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add18~1\ : std_logic;
SIGNAL \u_health_mon|Add18~3\ : std_logic;
SIGNAL \u_health_mon|Add18~5\ : std_logic;
SIGNAL \u_health_mon|Add18~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[50]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[48]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[51]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[49]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add48~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[45]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[44]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[47]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[46]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add44~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add48~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add44~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add44~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add48~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add46~1\ : std_logic;
SIGNAL \u_health_mon|Add46~3\ : std_logic;
SIGNAL \u_health_mon|Add46~5\ : std_logic;
SIGNAL \u_health_mon|Add46~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add18~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add46~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add18~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add46~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add46~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add18~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add42~1\ : std_logic;
SIGNAL \u_health_mon|Add42~3\ : std_logic;
SIGNAL \u_health_mon|Add42~5\ : std_logic;
SIGNAL \u_health_mon|Add42~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add42~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add34~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add42~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add34~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add42~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add34~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add50~1\ : std_logic;
SIGNAL \u_health_mon|Add50~3\ : std_logic;
SIGNAL \u_health_mon|Add50~5\ : std_logic;
SIGNAL \u_health_mon|Add50~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[82]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[81]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[83]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[80]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add80~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[77]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[79]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[76]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[78]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add76~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add80~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add76~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add80~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add76~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add78~1\ : std_logic;
SIGNAL \u_health_mon|Add78~3\ : std_logic;
SIGNAL \u_health_mon|Add78~5\ : std_logic;
SIGNAL \u_health_mon|Add78~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[68]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[69]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[71]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[70]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add68~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[72]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[75]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[73]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[74]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add72~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add72~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add68~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add68~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add72~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add70~1\ : std_logic;
SIGNAL \u_health_mon|Add70~3\ : std_logic;
SIGNAL \u_health_mon|Add70~5\ : std_logic;
SIGNAL \u_health_mon|Add70~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add78~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add70~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add70~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add78~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add78~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add70~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add74~1\ : std_logic;
SIGNAL \u_health_mon|Add74~3\ : std_logic;
SIGNAL \u_health_mon|Add74~5\ : std_logic;
SIGNAL \u_health_mon|Add74~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[57]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[56]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[59]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[58]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add56~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[53]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[52]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[54]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[55]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add52~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add56~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add52~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add56~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add52~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add54~1\ : std_logic;
SIGNAL \u_health_mon|Add54~3\ : std_logic;
SIGNAL \u_health_mon|Add54~5\ : std_logic;
SIGNAL \u_health_mon|Add54~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[67]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[66]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[65]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[64]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add64~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[62]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[60]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[63]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[61]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add60~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add64~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add60~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add64~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add60~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add62~1\ : std_logic;
SIGNAL \u_health_mon|Add62~3\ : std_logic;
SIGNAL \u_health_mon|Add62~5\ : std_logic;
SIGNAL \u_health_mon|Add62~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add54~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add62~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add62~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add54~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add54~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add62~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add58~1\ : std_logic;
SIGNAL \u_health_mon|Add58~3\ : std_logic;
SIGNAL \u_health_mon|Add58~5\ : std_logic;
SIGNAL \u_health_mon|Add58~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add58~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add74~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add74~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add58~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add58~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add74~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add66~1\ : std_logic;
SIGNAL \u_health_mon|Add66~3\ : std_logic;
SIGNAL \u_health_mon|Add66~5\ : std_logic;
SIGNAL \u_health_mon|Add66~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add66~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add50~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add66~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add50~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add66~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add50~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add82~1\ : std_logic;
SIGNAL \u_health_mon|Add82~3\ : std_logic;
SIGNAL \u_health_mon|Add82~5\ : std_logic;
SIGNAL \u_health_mon|Add82~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[185]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[186]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[184]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[187]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add184~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[180]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[183]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[182]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[181]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add180~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add184~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add180~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add184~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add180~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add182~1\ : std_logic;
SIGNAL \u_health_mon|Add182~3\ : std_logic;
SIGNAL \u_health_mon|Add182~5\ : std_logic;
SIGNAL \u_health_mon|Add182~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[188]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[191]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[189]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[190]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add188~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[192]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[194]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[193]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[195]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add192~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add192~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add188~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add188~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add192~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add190~1\ : std_logic;
SIGNAL \u_health_mon|Add190~3\ : std_logic;
SIGNAL \u_health_mon|Add190~5\ : std_logic;
SIGNAL \u_health_mon|Add190~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add190~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add182~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add182~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add190~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add190~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add182~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add186~1\ : std_logic;
SIGNAL \u_health_mon|Add186~3\ : std_logic;
SIGNAL \u_health_mon|Add186~5\ : std_logic;
SIGNAL \u_health_mon|Add186~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[210]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[208]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[209]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[211]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add208~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[207]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[206]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[204]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[205]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add204~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add208~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add204~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add208~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add204~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add206~1\ : std_logic;
SIGNAL \u_health_mon|Add206~3\ : std_logic;
SIGNAL \u_health_mon|Add206~5\ : std_logic;
SIGNAL \u_health_mon|Add206~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[203]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[201]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[200]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[202]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add200~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[196]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[197]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[198]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[199]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add196~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add196~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add200~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add196~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add200~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add198~1\ : std_logic;
SIGNAL \u_health_mon|Add198~3\ : std_logic;
SIGNAL \u_health_mon|Add198~5\ : std_logic;
SIGNAL \u_health_mon|Add198~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add206~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add198~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add206~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add198~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add206~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add198~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add202~1\ : std_logic;
SIGNAL \u_health_mon|Add202~3\ : std_logic;
SIGNAL \u_health_mon|Add202~5\ : std_logic;
SIGNAL \u_health_mon|Add202~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add202~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add186~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add202~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add186~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add202~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add186~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add194~1\ : std_logic;
SIGNAL \u_health_mon|Add194~3\ : std_logic;
SIGNAL \u_health_mon|Add194~5\ : std_logic;
SIGNAL \u_health_mon|Add194~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[171]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[170]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[169]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[168]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add168~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[167]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[166]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[164]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[165]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add164~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add164~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add168~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add168~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add164~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add166~1\ : std_logic;
SIGNAL \u_health_mon|Add166~3\ : std_logic;
SIGNAL \u_health_mon|Add166~5\ : std_logic;
SIGNAL \u_health_mon|Add166~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[176]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[178]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[177]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[179]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add176~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[175]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[172]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[173]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[174]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add172~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add176~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add172~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add176~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add172~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add174~1\ : std_logic;
SIGNAL \u_health_mon|Add174~3\ : std_logic;
SIGNAL \u_health_mon|Add174~5\ : std_logic;
SIGNAL \u_health_mon|Add174~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add174~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add166~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add166~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add174~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add174~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add166~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add170~1\ : std_logic;
SIGNAL \u_health_mon|Add170~3\ : std_logic;
SIGNAL \u_health_mon|Add170~5\ : std_logic;
SIGNAL \u_health_mon|Add170~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[155]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[152]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[153]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[154]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add152~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[148]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[151]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[149]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[150]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add148~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add152~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add148~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add152~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add148~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add150~1\ : std_logic;
SIGNAL \u_health_mon|Add150~3\ : std_logic;
SIGNAL \u_health_mon|Add150~5\ : std_logic;
SIGNAL \u_health_mon|Add150~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[160]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[162]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[161]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[163]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add160~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[159]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[158]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[156]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[157]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add156~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add160~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add156~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add160~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add156~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add158~1\ : std_logic;
SIGNAL \u_health_mon|Add158~3\ : std_logic;
SIGNAL \u_health_mon|Add158~5\ : std_logic;
SIGNAL \u_health_mon|Add158~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add158~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add150~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add150~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add158~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add150~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add158~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add154~1\ : std_logic;
SIGNAL \u_health_mon|Add154~3\ : std_logic;
SIGNAL \u_health_mon|Add154~5\ : std_logic;
SIGNAL \u_health_mon|Add154~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add170~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add154~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add154~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add170~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add154~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add170~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add162~1\ : std_logic;
SIGNAL \u_health_mon|Add162~3\ : std_logic;
SIGNAL \u_health_mon|Add162~5\ : std_logic;
SIGNAL \u_health_mon|Add162~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add162~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add194~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add162~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add194~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add162~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add194~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add178~1\ : std_logic;
SIGNAL \u_health_mon|Add178~3\ : std_logic;
SIGNAL \u_health_mon|Add178~5\ : std_logic;
SIGNAL \u_health_mon|Add178~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[113]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[114]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[112]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[115]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add112~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[110]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[108]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[109]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[111]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add108~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add108~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add112~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add112~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add108~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add110~1\ : std_logic;
SIGNAL \u_health_mon|Add110~3\ : std_logic;
SIGNAL \u_health_mon|Add110~5\ : std_logic;
SIGNAL \u_health_mon|Add110~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[106]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[104]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[105]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[107]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add104~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[100]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[101]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[103]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[102]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add100~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add100~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add104~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add100~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add104~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add102~1\ : std_logic;
SIGNAL \u_health_mon|Add102~3\ : std_logic;
SIGNAL \u_health_mon|Add102~5\ : std_logic;
SIGNAL \u_health_mon|Add102~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add102~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add110~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add102~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add110~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add102~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add110~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add106~1\ : std_logic;
SIGNAL \u_health_mon|Add106~3\ : std_logic;
SIGNAL \u_health_mon|Add106~5\ : std_logic;
SIGNAL \u_health_mon|Add106~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[94]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[92]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[95]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[93]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add92~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[97]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[98]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[99]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[96]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add96~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add92~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add96~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add96~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add92~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add94~1\ : std_logic;
SIGNAL \u_health_mon|Add94~3\ : std_logic;
SIGNAL \u_health_mon|Add94~5\ : std_logic;
SIGNAL \u_health_mon|Add94~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[88]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[89]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[90]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[91]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add88~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[86]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[85]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[84]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[87]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add84~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add84~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add88~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add84~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add88~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add86~1\ : std_logic;
SIGNAL \u_health_mon|Add86~3\ : std_logic;
SIGNAL \u_health_mon|Add86~5\ : std_logic;
SIGNAL \u_health_mon|Add86~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add94~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add86~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add86~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add94~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add86~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add94~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add90~1\ : std_logic;
SIGNAL \u_health_mon|Add90~3\ : std_logic;
SIGNAL \u_health_mon|Add90~5\ : std_logic;
SIGNAL \u_health_mon|Add90~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add90~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add106~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add90~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add106~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add90~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add106~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add98~1\ : std_logic;
SIGNAL \u_health_mon|Add98~3\ : std_logic;
SIGNAL \u_health_mon|Add98~5\ : std_logic;
SIGNAL \u_health_mon|Add98~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[131]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[130]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[128]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[129]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add128~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[124]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[125]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[126]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[127]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add124~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add124~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add128~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add128~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add124~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add126~1\ : std_logic;
SIGNAL \u_health_mon|Add126~3\ : std_logic;
SIGNAL \u_health_mon|Add126~5\ : std_logic;
SIGNAL \u_health_mon|Add126~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[120]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[121]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[122]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[123]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add120~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[119]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[118]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[117]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[116]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add116~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add120~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add116~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add120~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add116~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add118~1\ : std_logic;
SIGNAL \u_health_mon|Add118~3\ : std_logic;
SIGNAL \u_health_mon|Add118~5\ : std_logic;
SIGNAL \u_health_mon|Add118~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add126~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add118~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add126~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add118~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add126~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add118~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add122~1\ : std_logic;
SIGNAL \u_health_mon|Add122~3\ : std_logic;
SIGNAL \u_health_mon|Add122~5\ : std_logic;
SIGNAL \u_health_mon|Add122~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[146]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[144]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[145]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[147]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add144~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[142]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[141]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[140]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[143]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add140~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add144~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add140~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add144~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add140~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add142~1\ : std_logic;
SIGNAL \u_health_mon|Add142~3\ : std_logic;
SIGNAL \u_health_mon|Add142~5\ : std_logic;
SIGNAL \u_health_mon|Add142~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[138]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[136]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[139]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[137]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add136~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[132]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[133]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[135]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[134]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add132~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add136~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add132~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add136~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add132~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add134~1\ : std_logic;
SIGNAL \u_health_mon|Add134~3\ : std_logic;
SIGNAL \u_health_mon|Add134~5\ : std_logic;
SIGNAL \u_health_mon|Add134~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add134~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add142~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add142~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add134~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add142~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add134~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add138~1\ : std_logic;
SIGNAL \u_health_mon|Add138~3\ : std_logic;
SIGNAL \u_health_mon|Add138~5\ : std_logic;
SIGNAL \u_health_mon|Add138~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add138~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add122~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add122~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add138~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add138~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add122~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add130~1\ : std_logic;
SIGNAL \u_health_mon|Add130~3\ : std_logic;
SIGNAL \u_health_mon|Add130~5\ : std_logic;
SIGNAL \u_health_mon|Add130~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add130~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add98~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add130~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add98~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add130~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add98~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add114~1\ : std_logic;
SIGNAL \u_health_mon|Add114~3\ : std_logic;
SIGNAL \u_health_mon|Add114~5\ : std_logic;
SIGNAL \u_health_mon|Add114~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add114~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add178~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add114~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add178~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add114~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add178~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add146~1\ : std_logic;
SIGNAL \u_health_mon|Add146~3\ : std_logic;
SIGNAL \u_health_mon|Add146~5\ : std_logic;
SIGNAL \u_health_mon|Add146~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add146~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add82~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add146~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add82~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add146~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add82~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add210~1\ : std_logic;
SIGNAL \u_health_mon|Add210~3\ : std_logic;
SIGNAL \u_health_mon|Add210~5\ : std_logic;
SIGNAL \u_health_mon|Add210~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add210~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add226~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add210~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add226~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add210~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add226~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add234~1\ : std_logic;
SIGNAL \u_health_mon|Add234~3\ : std_logic;
SIGNAL \u_health_mon|Add234~5\ : std_logic;
SIGNAL \u_health_mon|Add234~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add234~4_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[236]~input_o\ : std_logic;
SIGNAL \module_fault_vector_pin[237]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add235~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add234~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add235~1_combout\ : std_logic;
SIGNAL \u_health_mon|Add234~0_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[238]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add236~1_cout\ : std_logic;
SIGNAL \u_health_mon|Add236~3\ : std_logic;
SIGNAL \u_health_mon|Add236~5\ : std_logic;
SIGNAL \u_health_mon|Add236~7\ : std_logic;
SIGNAL \u_health_mon|Add236~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add236~6_combout\ : std_logic;
SIGNAL \u_health_mon|Add236~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add236~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add238~1\ : std_logic;
SIGNAL \u_health_mon|Add238~3\ : std_logic;
SIGNAL \u_health_mon|Add238~5\ : std_logic;
SIGNAL \u_health_mon|Add238~6_combout\ : std_logic;
SIGNAL \module_fault_vector_pin[239]~input_o\ : std_logic;
SIGNAL \u_health_mon|Add218~7\ : std_logic;
SIGNAL \u_health_mon|Add218~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add226~7\ : std_logic;
SIGNAL \u_health_mon|Add226~9\ : std_logic;
SIGNAL \u_health_mon|Add226~10_combout\ : std_logic;
SIGNAL \u_health_mon|Add58~7\ : std_logic;
SIGNAL \u_health_mon|Add58~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add74~7\ : std_logic;
SIGNAL \u_health_mon|Add74~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add66~7\ : std_logic;
SIGNAL \u_health_mon|Add66~9\ : std_logic;
SIGNAL \u_health_mon|Add66~10_combout\ : std_logic;
SIGNAL \u_health_mon|Add26~7\ : std_logic;
SIGNAL \u_health_mon|Add26~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add34~7\ : std_logic;
SIGNAL \u_health_mon|Add34~9\ : std_logic;
SIGNAL \u_health_mon|Add34~10_combout\ : std_logic;
SIGNAL \u_health_mon|Add10~9\ : std_logic;
SIGNAL \u_health_mon|Add10~10_combout\ : std_logic;
SIGNAL \u_health_mon|Add18~7\ : std_logic;
SIGNAL \u_health_mon|Add18~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add42~7\ : std_logic;
SIGNAL \u_health_mon|Add42~9\ : std_logic;
SIGNAL \u_health_mon|Add42~10_combout\ : std_logic;
SIGNAL \u_health_mon|Add42~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add34~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add50~7\ : std_logic;
SIGNAL \u_health_mon|Add50~9\ : std_logic;
SIGNAL \u_health_mon|Add50~10_combout\ : std_logic;
SIGNAL \u_health_mon|Add66~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add50~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add82~7\ : std_logic;
SIGNAL \u_health_mon|Add82~9\ : std_logic;
SIGNAL \u_health_mon|Add82~10_combout\ : std_logic;
SIGNAL \u_health_mon|Add106~7\ : std_logic;
SIGNAL \u_health_mon|Add106~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add90~7\ : std_logic;
SIGNAL \u_health_mon|Add90~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add98~7\ : std_logic;
SIGNAL \u_health_mon|Add98~9\ : std_logic;
SIGNAL \u_health_mon|Add98~10_combout\ : std_logic;
SIGNAL \u_health_mon|Add122~7\ : std_logic;
SIGNAL \u_health_mon|Add122~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add138~7\ : std_logic;
SIGNAL \u_health_mon|Add138~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add130~7\ : std_logic;
SIGNAL \u_health_mon|Add130~9\ : std_logic;
SIGNAL \u_health_mon|Add130~10_combout\ : std_logic;
SIGNAL \u_health_mon|Add98~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add130~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add114~7\ : std_logic;
SIGNAL \u_health_mon|Add114~9\ : std_logic;
SIGNAL \u_health_mon|Add114~10_combout\ : std_logic;
SIGNAL \u_health_mon|Add202~7\ : std_logic;
SIGNAL \u_health_mon|Add202~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add186~7\ : std_logic;
SIGNAL \u_health_mon|Add186~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add194~7\ : std_logic;
SIGNAL \u_health_mon|Add194~9\ : std_logic;
SIGNAL \u_health_mon|Add194~10_combout\ : std_logic;
SIGNAL \u_health_mon|Add154~7\ : std_logic;
SIGNAL \u_health_mon|Add154~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add170~7\ : std_logic;
SIGNAL \u_health_mon|Add170~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add162~7\ : std_logic;
SIGNAL \u_health_mon|Add162~9\ : std_logic;
SIGNAL \u_health_mon|Add162~10_combout\ : std_logic;
SIGNAL \u_health_mon|Add162~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add194~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add178~7\ : std_logic;
SIGNAL \u_health_mon|Add178~9\ : std_logic;
SIGNAL \u_health_mon|Add178~10_combout\ : std_logic;
SIGNAL \u_health_mon|Add114~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add178~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add146~7\ : std_logic;
SIGNAL \u_health_mon|Add146~9\ : std_logic;
SIGNAL \u_health_mon|Add146~10_combout\ : std_logic;
SIGNAL \u_health_mon|Add146~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add82~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add210~7\ : std_logic;
SIGNAL \u_health_mon|Add210~9\ : std_logic;
SIGNAL \u_health_mon|Add210~10_combout\ : std_logic;
SIGNAL \u_health_mon|Add226~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add210~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add234~7\ : std_logic;
SIGNAL \u_health_mon|Add234~9\ : std_logic;
SIGNAL \u_health_mon|Add234~10_combout\ : std_logic;
SIGNAL \u_health_mon|Add234~8_combout\ : std_logic;
SIGNAL \u_health_mon|Add236~9\ : std_logic;
SIGNAL \u_health_mon|Add236~11\ : std_logic;
SIGNAL \u_health_mon|Add236~12_combout\ : std_logic;
SIGNAL \u_health_mon|Add236~10_combout\ : std_logic;
SIGNAL \u_health_mon|Add238~7\ : std_logic;
SIGNAL \u_health_mon|Add238~9\ : std_logic;
SIGNAL \u_health_mon|Add238~10_combout\ : std_logic;
SIGNAL \u_health_mon|Add238~8_combout\ : std_logic;
SIGNAL \u_health_mon|LessThan0~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add50~11\ : std_logic;
SIGNAL \u_health_mon|Add50~12_combout\ : std_logic;
SIGNAL \u_health_mon|Add82~11\ : std_logic;
SIGNAL \u_health_mon|Add82~12_combout\ : std_logic;
SIGNAL \u_health_mon|Add114~11\ : std_logic;
SIGNAL \u_health_mon|Add114~12_combout\ : std_logic;
SIGNAL \u_health_mon|Add178~11\ : std_logic;
SIGNAL \u_health_mon|Add178~12_combout\ : std_logic;
SIGNAL \u_health_mon|Add146~11\ : std_logic;
SIGNAL \u_health_mon|Add146~12_combout\ : std_logic;
SIGNAL \u_health_mon|Add210~11\ : std_logic;
SIGNAL \u_health_mon|Add210~12_combout\ : std_logic;
SIGNAL \u_health_mon|Add234~11\ : std_logic;
SIGNAL \u_health_mon|Add234~12_combout\ : std_logic;
SIGNAL \u_health_mon|Add236~13\ : std_logic;
SIGNAL \u_health_mon|Add236~14_combout\ : std_logic;
SIGNAL \u_health_mon|Add238~11\ : std_logic;
SIGNAL \u_health_mon|Add238~12_combout\ : std_logic;
SIGNAL \u_health_mon|Add82~13\ : std_logic;
SIGNAL \u_health_mon|Add82~14_combout\ : std_logic;
SIGNAL \u_health_mon|Add146~13\ : std_logic;
SIGNAL \u_health_mon|Add146~14_combout\ : std_logic;
SIGNAL \u_health_mon|Add210~13\ : std_logic;
SIGNAL \u_health_mon|Add210~14_combout\ : std_logic;
SIGNAL \u_health_mon|Add234~13\ : std_logic;
SIGNAL \u_health_mon|Add234~14_combout\ : std_logic;
SIGNAL \u_health_mon|Add236~15\ : std_logic;
SIGNAL \u_health_mon|Add236~16_combout\ : std_logic;
SIGNAL \u_health_mon|Add238~13\ : std_logic;
SIGNAL \u_health_mon|Add238~14_combout\ : std_logic;
SIGNAL \u_health_mon|LessThan0~5_combout\ : std_logic;
SIGNAL \u_health_mon|LessThan0~1_combout\ : std_logic;
SIGNAL \u_health_mon|LessThan0~0_combout\ : std_logic;
SIGNAL \u_health_mon|LessThan0~2_combout\ : std_logic;
SIGNAL \u_health_mon|Add238~0_combout\ : std_logic;
SIGNAL \u_health_mon|Add238~4_combout\ : std_logic;
SIGNAL \u_health_mon|Add238~2_combout\ : std_logic;
SIGNAL \u_health_mon|LessThan0~3_combout\ : std_logic;
SIGNAL \u_health_mon|LessThan0~6_combout\ : std_logic;
SIGNAL \u_health_mon|trip_unbalance~q\ : std_logic;
SIGNAL \u_sync_unbalance|cmp_gc_sync|sync0~q\ : std_logic;
SIGNAL \u_sync_unbalance|cmp_gc_sync|sync1~feeder_combout\ : std_logic;
SIGNAL \u_sync_unbalance|cmp_gc_sync|sync1~q\ : std_logic;
SIGNAL \u_sync_unbalance|synced_o~feeder_combout\ : std_logic;
SIGNAL \u_sync_unbalance|synced_o~q\ : std_logic;
SIGNAL \u_central_brain|latched_fast~1_combout\ : std_logic;
SIGNAL \u_central_brain|latched_fast~q\ : std_logic;
SIGNAL \u_central_brain|latched_unbalance~0_combout\ : std_logic;
SIGNAL \u_central_brain|latched_unbalance~q\ : std_logic;
SIGNAL \u_central_brain|latched_slow~0_combout\ : std_logic;
SIGNAL \u_central_brain|latched_slow~q\ : std_logic;
SIGNAL \u_central_brain|latched_overdrive~0_combout\ : std_logic;
SIGNAL \u_central_brain|latched_overdrive~q\ : std_logic;
SIGNAL \u_central_brain|system_is_tripped~0_combout\ : std_logic;
SIGNAL \u_central_brain|rf_gate_disable_o~q\ : std_logic;
SIGNAL \rf_gate_disable_pin~0_combout\ : std_logic;
SIGNAL \u_central_brain|psu_contactor_o~0_combout\ : std_logic;
SIGNAL \u_central_brain|psu_contactor_o~q\ : std_logic;
SIGNAL \u_filter|iir_sum\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \u_filter|scale_prod_2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u_filter|y_delayed\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u_filter|scale_prod_1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u_filter|p_refl_filtered\ : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_fast_pin <= clk_fast_pin;
ww_clk_telemetry_pin <= clk_telemetry_pin;
ww_clk_sys_pin <= clk_sys_pin;
ww_rst_n_pin <= rst_n_pin;
ww_interlock_reset_pin <= interlock_reset_pin;
ww_adc_p_refl_pin <= adc_p_refl_pin;
ww_adc_p_drive_pin <= adc_p_drive_pin;
ww_module_fault_vector_pin <= module_fault_vector_pin;
rf_gate_disable_pin <= ww_rf_gate_disable_pin;
psu_contactor_pin <= ww_psu_contactor_pin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_fast_pin~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_fast_pin~input_o\);

\rst_n_pin~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n_pin~input_o\);

\clk_sys_pin~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_sys_pin~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X17_Y0_N9
\rf_gate_disable_pin~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rf_gate_disable_pin~0_combout\,
	devoe => ww_devoe,
	o => \rf_gate_disable_pin~output_o\);

-- Location: IOOBUF_X17_Y0_N2
\psu_contactor_pin~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_central_brain|psu_contactor_o~q\,
	devoe => ww_devoe,
	o => \psu_contactor_pin~output_o\);

-- Location: IOIBUF_X38_Y0_N15
\clk_fast_pin~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_fast_pin,
	o => \clk_fast_pin~input_o\);

-- Location: CLKCTRL_G29
\clk_fast_pin~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_fast_pin~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_fast_pin~inputclkctrl_outclk\);

-- Location: IOIBUF_X19_Y0_N8
\adc_p_drive_pin[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_drive_pin(15),
	o => \adc_p_drive_pin[15]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\adc_p_drive_pin[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_drive_pin(14),
	o => \adc_p_drive_pin[14]~input_o\);

-- Location: IOIBUF_X15_Y0_N8
\adc_p_drive_pin[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_drive_pin(12),
	o => \adc_p_drive_pin[12]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\adc_p_drive_pin[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_drive_pin(13),
	o => \adc_p_drive_pin[13]~input_o\);

-- Location: LCCOMB_X19_Y1_N20
\u_overdrive_comp|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_overdrive_comp|LessThan0~0_combout\ = (\adc_p_drive_pin[15]~input_o\ & ((\adc_p_drive_pin[14]~input_o\) # ((\adc_p_drive_pin[12]~input_o\ & \adc_p_drive_pin[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_p_drive_pin[15]~input_o\,
	datab => \adc_p_drive_pin[14]~input_o\,
	datac => \adc_p_drive_pin[12]~input_o\,
	datad => \adc_p_drive_pin[13]~input_o\,
	combout => \u_overdrive_comp|LessThan0~0_combout\);

-- Location: IOIBUF_X38_Y0_N1
\rst_n_pin~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n_pin,
	o => \rst_n_pin~input_o\);

-- Location: CLKCTRL_G27
\rst_n_pin~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst_n_pin~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst_n_pin~inputclkctrl_outclk\);

-- Location: FF_X19_Y1_N21
\u_overdrive_comp|trip_overdrive\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_overdrive_comp|LessThan0~0_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_overdrive_comp|trip_overdrive~q\);

-- Location: IOIBUF_X38_Y0_N22
\clk_sys_pin~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_sys_pin,
	o => \clk_sys_pin~input_o\);

-- Location: CLKCTRL_G28
\clk_sys_pin~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_sys_pin~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_sys_pin~inputclkctrl_outclk\);

-- Location: IOIBUF_X15_Y0_N22
\interlock_reset_pin~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_interlock_reset_pin,
	o => \interlock_reset_pin~input_o\);

-- Location: LCCOMB_X24_Y1_N16
\u_filter|Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|Add0~34_combout\ = !\u_filter|Add0~33\
-- \u_filter|Add0~35\ = CARRY(!\u_filter|Add0~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \u_filter|Add0~33\,
	combout => \u_filter|Add0~34_combout\,
	cout => \u_filter|Add0~35\);

-- Location: LCCOMB_X24_Y1_N18
\u_filter|Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|Add0~36_combout\ = \u_filter|Add0~35\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_filter|Add0~35\,
	combout => \u_filter|Add0~36_combout\);

-- Location: LCCOMB_X24_Y1_N12
\u_filter|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|Add0~30_combout\ = (\u_filter|y_delayed\(30) & ((\u_filter|Add0~29\) # (GND))) # (!\u_filter|y_delayed\(30) & (!\u_filter|Add0~29\))
-- \u_filter|Add0~31\ = CARRY((\u_filter|y_delayed\(30)) # (!\u_filter|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(30),
	datad => VCC,
	cin => \u_filter|Add0~29\,
	combout => \u_filter|Add0~30_combout\,
	cout => \u_filter|Add0~31\);

-- Location: IOIBUF_X19_Y0_N15
\adc_p_refl_pin[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_refl_pin(15),
	o => \adc_p_refl_pin[15]~input_o\);

-- Location: LCCOMB_X22_Y1_N30
\u_filter|scale_prod_1[25]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_1[25]~feeder_combout\ = \adc_p_refl_pin[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_p_refl_pin[15]~input_o\,
	combout => \u_filter|scale_prod_1[25]~feeder_combout\);

-- Location: FF_X22_Y1_N31
\u_filter|scale_prod_1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_1[25]~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_1\(25));

-- Location: LCCOMB_X24_Y1_N10
\u_filter|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|Add0~28_combout\ = (\u_filter|y_delayed\(29) & (!\u_filter|Add0~27\ & VCC)) # (!\u_filter|y_delayed\(29) & (\u_filter|Add0~27\ $ (GND)))
-- \u_filter|Add0~29\ = CARRY((!\u_filter|y_delayed\(29) & !\u_filter|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(29),
	datad => VCC,
	cin => \u_filter|Add0~27\,
	combout => \u_filter|Add0~28_combout\,
	cout => \u_filter|Add0~29\);

-- Location: LCCOMB_X24_Y1_N8
\u_filter|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|Add0~26_combout\ = (\u_filter|y_delayed\(28) & ((\u_filter|Add0~25\) # (GND))) # (!\u_filter|y_delayed\(28) & (!\u_filter|Add0~25\))
-- \u_filter|Add0~27\ = CARRY((\u_filter|y_delayed\(28)) # (!\u_filter|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_filter|y_delayed\(28),
	datad => VCC,
	cin => \u_filter|Add0~25\,
	combout => \u_filter|Add0~26_combout\,
	cout => \u_filter|Add0~27\);

-- Location: IOIBUF_X22_Y0_N15
\adc_p_refl_pin[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_refl_pin(13),
	o => \adc_p_refl_pin[13]~input_o\);

-- Location: LCCOMB_X22_Y1_N24
\u_filter|scale_prod_1[23]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_1[23]~feeder_combout\ = \adc_p_refl_pin[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_p_refl_pin[13]~input_o\,
	combout => \u_filter|scale_prod_1[23]~feeder_combout\);

-- Location: FF_X22_Y1_N25
\u_filter|scale_prod_1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_1[23]~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_1\(23));

-- Location: LCCOMB_X24_Y1_N6
\u_filter|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|Add0~24_combout\ = (\u_filter|y_delayed\(27) & (!\u_filter|Add0~23\ & VCC)) # (!\u_filter|y_delayed\(27) & (\u_filter|Add0~23\ $ (GND)))
-- \u_filter|Add0~25\ = CARRY((!\u_filter|y_delayed\(27) & !\u_filter|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(27),
	datad => VCC,
	cin => \u_filter|Add0~23\,
	combout => \u_filter|Add0~24_combout\,
	cout => \u_filter|Add0~25\);

-- Location: IOIBUF_X22_Y0_N1
\adc_p_refl_pin[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_refl_pin(12),
	o => \adc_p_refl_pin[12]~input_o\);

-- Location: FF_X22_Y1_N27
\u_filter|scale_prod_1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	asdata => \adc_p_refl_pin[12]~input_o\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_1\(22));

-- Location: IOIBUF_X26_Y0_N8
\adc_p_refl_pin[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_refl_pin(11),
	o => \adc_p_refl_pin[11]~input_o\);

-- Location: LCCOMB_X26_Y1_N8
\u_filter|scale_prod_1[21]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_1[21]~feeder_combout\ = \adc_p_refl_pin[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_p_refl_pin[11]~input_o\,
	combout => \u_filter|scale_prod_1[21]~feeder_combout\);

-- Location: FF_X26_Y1_N9
\u_filter|scale_prod_1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_1[21]~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_1\(21));

-- Location: LCCOMB_X24_Y1_N2
\u_filter|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|Add0~20_combout\ = (\u_filter|y_delayed\(25) & (!\u_filter|Add0~19\ & VCC)) # (!\u_filter|y_delayed\(25) & (\u_filter|Add0~19\ $ (GND)))
-- \u_filter|Add0~21\ = CARRY((!\u_filter|y_delayed\(25) & !\u_filter|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(25),
	datad => VCC,
	cin => \u_filter|Add0~19\,
	combout => \u_filter|Add0~20_combout\,
	cout => \u_filter|Add0~21\);

-- Location: LCCOMB_X24_Y1_N0
\u_filter|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|Add0~18_combout\ = (\u_filter|y_delayed\(24) & ((\u_filter|Add0~17\) # (GND))) # (!\u_filter|y_delayed\(24) & (!\u_filter|Add0~17\))
-- \u_filter|Add0~19\ = CARRY((\u_filter|y_delayed\(24)) # (!\u_filter|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_filter|y_delayed\(24),
	datad => VCC,
	cin => \u_filter|Add0~17\,
	combout => \u_filter|Add0~18_combout\,
	cout => \u_filter|Add0~19\);

-- Location: LCCOMB_X24_Y2_N30
\u_filter|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|Add0~16_combout\ = (\u_filter|y_delayed\(23) & (!\u_filter|Add0~15\ & VCC)) # (!\u_filter|y_delayed\(23) & (\u_filter|Add0~15\ $ (GND)))
-- \u_filter|Add0~17\ = CARRY((!\u_filter|y_delayed\(23) & !\u_filter|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_filter|y_delayed\(23),
	datad => VCC,
	cin => \u_filter|Add0~15\,
	combout => \u_filter|Add0~16_combout\,
	cout => \u_filter|Add0~17\);

-- Location: IOIBUF_X17_Y0_N22
\adc_p_refl_pin[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_refl_pin(9),
	o => \adc_p_refl_pin[9]~input_o\);

-- Location: FF_X20_Y2_N9
\u_filter|scale_prod_1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	asdata => \adc_p_refl_pin[9]~input_o\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_1\(19));

-- Location: IOIBUF_X29_Y0_N1
\adc_p_refl_pin[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_refl_pin(8),
	o => \adc_p_refl_pin[8]~input_o\);

-- Location: LCCOMB_X22_Y2_N0
\u_filter|scale_prod_1[18]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_1[18]~feeder_combout\ = \adc_p_refl_pin[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_p_refl_pin[8]~input_o\,
	combout => \u_filter|scale_prod_1[18]~feeder_combout\);

-- Location: FF_X22_Y2_N1
\u_filter|scale_prod_1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_1[18]~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_1\(18));

-- Location: LCCOMB_X24_Y2_N28
\u_filter|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|Add0~14_combout\ = (\u_filter|y_delayed\(22) & ((\u_filter|Add0~13\) # (GND))) # (!\u_filter|y_delayed\(22) & (!\u_filter|Add0~13\))
-- \u_filter|Add0~15\ = CARRY((\u_filter|y_delayed\(22)) # (!\u_filter|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_filter|y_delayed\(22),
	datad => VCC,
	cin => \u_filter|Add0~13\,
	combout => \u_filter|Add0~14_combout\,
	cout => \u_filter|Add0~15\);

-- Location: LCCOMB_X24_Y2_N24
\u_filter|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|Add0~10_combout\ = (\u_filter|y_delayed\(20) & ((\u_filter|Add0~9\) # (GND))) # (!\u_filter|y_delayed\(20) & (!\u_filter|Add0~9\))
-- \u_filter|Add0~11\ = CARRY((\u_filter|y_delayed\(20)) # (!\u_filter|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(20),
	datad => VCC,
	cin => \u_filter|Add0~9\,
	combout => \u_filter|Add0~10_combout\,
	cout => \u_filter|Add0~11\);

-- Location: IOIBUF_X17_Y0_N15
\adc_p_refl_pin[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_refl_pin(5),
	o => \adc_p_refl_pin[5]~input_o\);

-- Location: LCCOMB_X20_Y2_N2
\u_filter|scale_prod_1[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_1[15]~feeder_combout\ = \adc_p_refl_pin[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_p_refl_pin[5]~input_o\,
	combout => \u_filter|scale_prod_1[15]~feeder_combout\);

-- Location: FF_X20_Y2_N3
\u_filter|scale_prod_1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_1[15]~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_1\(15));

-- Location: LCCOMB_X24_Y2_N22
\u_filter|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|Add0~8_combout\ = (\u_filter|y_delayed\(19) & (!\u_filter|Add0~7\ & VCC)) # (!\u_filter|y_delayed\(19) & (\u_filter|Add0~7\ $ (GND)))
-- \u_filter|Add0~9\ = CARRY((!\u_filter|y_delayed\(19) & !\u_filter|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_filter|y_delayed\(19),
	datad => VCC,
	cin => \u_filter|Add0~7\,
	combout => \u_filter|Add0~8_combout\,
	cout => \u_filter|Add0~9\);

-- Location: LCCOMB_X24_Y2_N20
\u_filter|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|Add0~6_combout\ = (\u_filter|y_delayed\(18) & ((\u_filter|Add0~5\) # (GND))) # (!\u_filter|y_delayed\(18) & (!\u_filter|Add0~5\))
-- \u_filter|Add0~7\ = CARRY((\u_filter|y_delayed\(18)) # (!\u_filter|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(18),
	datad => VCC,
	cin => \u_filter|Add0~5\,
	combout => \u_filter|Add0~6_combout\,
	cout => \u_filter|Add0~7\);

-- Location: IOIBUF_X26_Y0_N15
\adc_p_refl_pin[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_refl_pin(4),
	o => \adc_p_refl_pin[4]~input_o\);

-- Location: FF_X22_Y2_N5
\u_filter|scale_prod_1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	asdata => \adc_p_refl_pin[4]~input_o\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_1\(14));

-- Location: LCCOMB_X23_Y2_N14
\u_filter|scale_prod_2[14]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_2[14]~18_combout\ = (\u_filter|Add0~6_combout\ & (\u_filter|p_refl_filtered\(0) $ (VCC))) # (!\u_filter|Add0~6_combout\ & (\u_filter|p_refl_filtered\(0) & VCC))
-- \u_filter|scale_prod_2[14]~19\ = CARRY((\u_filter|Add0~6_combout\ & \u_filter|p_refl_filtered\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|Add0~6_combout\,
	datab => \u_filter|p_refl_filtered\(0),
	datad => VCC,
	combout => \u_filter|scale_prod_2[14]~18_combout\,
	cout => \u_filter|scale_prod_2[14]~19\);

-- Location: FF_X23_Y2_N15
\u_filter|scale_prod_2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_2[14]~18_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(14));

-- Location: LCCOMB_X24_Y2_N18
\u_filter|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|Add0~4_combout\ = (\u_filter|y_delayed\(17) & (!\u_filter|Add0~3\ & VCC)) # (!\u_filter|y_delayed\(17) & (\u_filter|Add0~3\ $ (GND)))
-- \u_filter|Add0~5\ = CARRY((!\u_filter|y_delayed\(17) & !\u_filter|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(17),
	datad => VCC,
	cin => \u_filter|Add0~3\,
	combout => \u_filter|Add0~4_combout\,
	cout => \u_filter|Add0~5\);

-- Location: FF_X24_Y2_N19
\u_filter|scale_prod_2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|Add0~4_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(13));

-- Location: IOIBUF_X19_Y0_N1
\adc_p_refl_pin[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_refl_pin(3),
	o => \adc_p_refl_pin[3]~input_o\);

-- Location: FF_X22_Y2_N17
\u_filter|scale_prod_1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	asdata => \adc_p_refl_pin[3]~input_o\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_1\(13));

-- Location: LCCOMB_X24_Y2_N14
\u_filter|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|Add0~0_combout\ = (\u_filter|p_refl_filtered\(0) & (!\u_filter|y_delayed\(15) & VCC)) # (!\u_filter|p_refl_filtered\(0) & (\u_filter|y_delayed\(15) $ (GND)))
-- \u_filter|Add0~1\ = CARRY((!\u_filter|p_refl_filtered\(0) & !\u_filter|y_delayed\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|p_refl_filtered\(0),
	datab => \u_filter|y_delayed\(15),
	datad => VCC,
	combout => \u_filter|Add0~0_combout\,
	cout => \u_filter|Add0~1\);

-- Location: LCCOMB_X24_Y2_N16
\u_filter|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|Add0~2_combout\ = (\u_filter|y_delayed\(16) & ((\u_filter|Add0~1\) # (GND))) # (!\u_filter|y_delayed\(16) & (!\u_filter|Add0~1\))
-- \u_filter|Add0~3\ = CARRY((\u_filter|y_delayed\(16)) # (!\u_filter|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(16),
	datad => VCC,
	cin => \u_filter|Add0~1\,
	combout => \u_filter|Add0~2_combout\,
	cout => \u_filter|Add0~3\);

-- Location: FF_X24_Y2_N17
\u_filter|scale_prod_2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|Add0~2_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(12));

-- Location: IOIBUF_X15_Y0_N15
\adc_p_refl_pin[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_refl_pin(2),
	o => \adc_p_refl_pin[2]~input_o\);

-- Location: FF_X22_Y2_N15
\u_filter|scale_prod_1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	asdata => \adc_p_refl_pin[2]~input_o\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_1\(12));

-- Location: IOIBUF_X29_Y0_N15
\adc_p_refl_pin[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_refl_pin(1),
	o => \adc_p_refl_pin[1]~input_o\);

-- Location: FF_X22_Y2_N13
\u_filter|scale_prod_1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	asdata => \adc_p_refl_pin[1]~input_o\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_1\(11));

-- Location: FF_X24_Y2_N15
\u_filter|scale_prod_2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|Add0~0_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(11));

-- Location: FF_X22_Y2_N7
\u_filter|scale_prod_2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	asdata => \u_filter|p_refl_filtered\(0),
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(10));

-- Location: IOIBUF_X29_Y0_N8
\adc_p_refl_pin[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_refl_pin(0),
	o => \adc_p_refl_pin[0]~input_o\);

-- Location: FF_X22_Y2_N11
\u_filter|scale_prod_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	asdata => \adc_p_refl_pin[0]~input_o\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_1\(10));

-- Location: LCCOMB_X22_Y2_N10
\u_filter|iir_sum[14]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[14]~19_cout\ = CARRY((\u_filter|scale_prod_2\(10) & \u_filter|scale_prod_1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|scale_prod_2\(10),
	datab => \u_filter|scale_prod_1\(10),
	datad => VCC,
	cout => \u_filter|iir_sum[14]~19_cout\);

-- Location: LCCOMB_X22_Y2_N12
\u_filter|iir_sum[14]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[14]~21_cout\ = CARRY((\u_filter|scale_prod_1\(11) & (!\u_filter|scale_prod_2\(11) & !\u_filter|iir_sum[14]~19_cout\)) # (!\u_filter|scale_prod_1\(11) & ((!\u_filter|iir_sum[14]~19_cout\) # (!\u_filter|scale_prod_2\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|scale_prod_1\(11),
	datab => \u_filter|scale_prod_2\(11),
	datad => VCC,
	cin => \u_filter|iir_sum[14]~19_cout\,
	cout => \u_filter|iir_sum[14]~21_cout\);

-- Location: LCCOMB_X22_Y2_N14
\u_filter|iir_sum[14]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[14]~23_cout\ = CARRY((\u_filter|scale_prod_2\(12) & ((\u_filter|scale_prod_1\(12)) # (!\u_filter|iir_sum[14]~21_cout\))) # (!\u_filter|scale_prod_2\(12) & (\u_filter|scale_prod_1\(12) & !\u_filter|iir_sum[14]~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|scale_prod_2\(12),
	datab => \u_filter|scale_prod_1\(12),
	datad => VCC,
	cin => \u_filter|iir_sum[14]~21_cout\,
	cout => \u_filter|iir_sum[14]~23_cout\);

-- Location: LCCOMB_X22_Y2_N16
\u_filter|iir_sum[14]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[14]~25_cout\ = CARRY((\u_filter|scale_prod_2\(13) & (!\u_filter|scale_prod_1\(13) & !\u_filter|iir_sum[14]~23_cout\)) # (!\u_filter|scale_prod_2\(13) & ((!\u_filter|iir_sum[14]~23_cout\) # (!\u_filter|scale_prod_1\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|scale_prod_2\(13),
	datab => \u_filter|scale_prod_1\(13),
	datad => VCC,
	cin => \u_filter|iir_sum[14]~23_cout\,
	cout => \u_filter|iir_sum[14]~25_cout\);

-- Location: LCCOMB_X22_Y2_N18
\u_filter|iir_sum[14]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[14]~26_combout\ = ((\u_filter|scale_prod_1\(14) $ (\u_filter|scale_prod_2\(14) $ (!\u_filter|iir_sum[14]~25_cout\)))) # (GND)
-- \u_filter|iir_sum[14]~27\ = CARRY((\u_filter|scale_prod_1\(14) & ((\u_filter|scale_prod_2\(14)) # (!\u_filter|iir_sum[14]~25_cout\))) # (!\u_filter|scale_prod_1\(14) & (\u_filter|scale_prod_2\(14) & !\u_filter|iir_sum[14]~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|scale_prod_1\(14),
	datab => \u_filter|scale_prod_2\(14),
	datad => VCC,
	cin => \u_filter|iir_sum[14]~25_cout\,
	combout => \u_filter|iir_sum[14]~26_combout\,
	cout => \u_filter|iir_sum[14]~27\);

-- Location: FF_X22_Y2_N19
\u_filter|iir_sum[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|iir_sum[14]~26_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|iir_sum\(14));

-- Location: LCCOMB_X22_Y2_N8
\u_filter|p_refl_filtered[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|p_refl_filtered[0]~feeder_combout\ = \u_filter|iir_sum\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_filter|iir_sum\(14),
	combout => \u_filter|p_refl_filtered[0]~feeder_combout\);

-- Location: FF_X22_Y2_N9
\u_filter|p_refl_filtered[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|p_refl_filtered[0]~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|p_refl_filtered\(0));

-- Location: LCCOMB_X23_Y2_N16
\u_filter|scale_prod_2[15]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_2[15]~20_combout\ = (\u_filter|y_delayed\(15) & ((\u_filter|Add0~8_combout\ & (\u_filter|scale_prod_2[14]~19\ & VCC)) # (!\u_filter|Add0~8_combout\ & (!\u_filter|scale_prod_2[14]~19\)))) # (!\u_filter|y_delayed\(15) & 
-- ((\u_filter|Add0~8_combout\ & (!\u_filter|scale_prod_2[14]~19\)) # (!\u_filter|Add0~8_combout\ & ((\u_filter|scale_prod_2[14]~19\) # (GND)))))
-- \u_filter|scale_prod_2[15]~21\ = CARRY((\u_filter|y_delayed\(15) & (!\u_filter|Add0~8_combout\ & !\u_filter|scale_prod_2[14]~19\)) # (!\u_filter|y_delayed\(15) & ((!\u_filter|scale_prod_2[14]~19\) # (!\u_filter|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(15),
	datab => \u_filter|Add0~8_combout\,
	datad => VCC,
	cin => \u_filter|scale_prod_2[14]~19\,
	combout => \u_filter|scale_prod_2[15]~20_combout\,
	cout => \u_filter|scale_prod_2[15]~21\);

-- Location: FF_X23_Y2_N17
\u_filter|scale_prod_2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_2[15]~20_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(15));

-- Location: LCCOMB_X22_Y2_N20
\u_filter|iir_sum[15]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[15]~28_combout\ = (\u_filter|scale_prod_1\(15) & ((\u_filter|scale_prod_2\(15) & (\u_filter|iir_sum[14]~27\ & VCC)) # (!\u_filter|scale_prod_2\(15) & (!\u_filter|iir_sum[14]~27\)))) # (!\u_filter|scale_prod_1\(15) & 
-- ((\u_filter|scale_prod_2\(15) & (!\u_filter|iir_sum[14]~27\)) # (!\u_filter|scale_prod_2\(15) & ((\u_filter|iir_sum[14]~27\) # (GND)))))
-- \u_filter|iir_sum[15]~29\ = CARRY((\u_filter|scale_prod_1\(15) & (!\u_filter|scale_prod_2\(15) & !\u_filter|iir_sum[14]~27\)) # (!\u_filter|scale_prod_1\(15) & ((!\u_filter|iir_sum[14]~27\) # (!\u_filter|scale_prod_2\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|scale_prod_1\(15),
	datab => \u_filter|scale_prod_2\(15),
	datad => VCC,
	cin => \u_filter|iir_sum[14]~27\,
	combout => \u_filter|iir_sum[15]~28_combout\,
	cout => \u_filter|iir_sum[15]~29\);

-- Location: FF_X22_Y2_N21
\u_filter|iir_sum[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|iir_sum[15]~28_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|iir_sum\(15));

-- Location: LCCOMB_X23_Y2_N6
\u_filter|y_delayed[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|y_delayed[15]~feeder_combout\ = \u_filter|iir_sum\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_filter|iir_sum\(15),
	combout => \u_filter|y_delayed[15]~feeder_combout\);

-- Location: FF_X23_Y2_N7
\u_filter|y_delayed[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|y_delayed[15]~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|y_delayed\(15));

-- Location: LCCOMB_X23_Y2_N18
\u_filter|scale_prod_2[16]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_2[16]~22_combout\ = ((\u_filter|y_delayed\(16) $ (\u_filter|Add0~10_combout\ $ (!\u_filter|scale_prod_2[15]~21\)))) # (GND)
-- \u_filter|scale_prod_2[16]~23\ = CARRY((\u_filter|y_delayed\(16) & ((\u_filter|Add0~10_combout\) # (!\u_filter|scale_prod_2[15]~21\))) # (!\u_filter|y_delayed\(16) & (\u_filter|Add0~10_combout\ & !\u_filter|scale_prod_2[15]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(16),
	datab => \u_filter|Add0~10_combout\,
	datad => VCC,
	cin => \u_filter|scale_prod_2[15]~21\,
	combout => \u_filter|scale_prod_2[16]~22_combout\,
	cout => \u_filter|scale_prod_2[16]~23\);

-- Location: FF_X23_Y2_N19
\u_filter|scale_prod_2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_2[16]~22_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(16));

-- Location: IOIBUF_X24_Y0_N1
\adc_p_refl_pin[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_refl_pin(6),
	o => \adc_p_refl_pin[6]~input_o\);

-- Location: FF_X23_Y2_N1
\u_filter|scale_prod_1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	asdata => \adc_p_refl_pin[6]~input_o\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_1\(16));

-- Location: LCCOMB_X22_Y2_N22
\u_filter|iir_sum[16]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[16]~30_combout\ = ((\u_filter|scale_prod_2\(16) $ (\u_filter|scale_prod_1\(16) $ (!\u_filter|iir_sum[15]~29\)))) # (GND)
-- \u_filter|iir_sum[16]~31\ = CARRY((\u_filter|scale_prod_2\(16) & ((\u_filter|scale_prod_1\(16)) # (!\u_filter|iir_sum[15]~29\))) # (!\u_filter|scale_prod_2\(16) & (\u_filter|scale_prod_1\(16) & !\u_filter|iir_sum[15]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|scale_prod_2\(16),
	datab => \u_filter|scale_prod_1\(16),
	datad => VCC,
	cin => \u_filter|iir_sum[15]~29\,
	combout => \u_filter|iir_sum[16]~30_combout\,
	cout => \u_filter|iir_sum[16]~31\);

-- Location: FF_X22_Y2_N23
\u_filter|iir_sum[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|iir_sum[16]~30_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|iir_sum\(16));

-- Location: LCCOMB_X23_Y2_N12
\u_filter|y_delayed[16]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|y_delayed[16]~feeder_combout\ = \u_filter|iir_sum\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_filter|iir_sum\(16),
	combout => \u_filter|y_delayed[16]~feeder_combout\);

-- Location: FF_X23_Y2_N13
\u_filter|y_delayed[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|y_delayed[16]~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|y_delayed\(16));

-- Location: LCCOMB_X24_Y2_N26
\u_filter|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|Add0~12_combout\ = (\u_filter|y_delayed\(21) & (!\u_filter|Add0~11\ & VCC)) # (!\u_filter|y_delayed\(21) & (\u_filter|Add0~11\ $ (GND)))
-- \u_filter|Add0~13\ = CARRY((!\u_filter|y_delayed\(21) & !\u_filter|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(21),
	datad => VCC,
	cin => \u_filter|Add0~11\,
	combout => \u_filter|Add0~12_combout\,
	cout => \u_filter|Add0~13\);

-- Location: LCCOMB_X23_Y2_N20
\u_filter|scale_prod_2[17]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_2[17]~24_combout\ = (\u_filter|y_delayed\(17) & ((\u_filter|Add0~12_combout\ & (\u_filter|scale_prod_2[16]~23\ & VCC)) # (!\u_filter|Add0~12_combout\ & (!\u_filter|scale_prod_2[16]~23\)))) # (!\u_filter|y_delayed\(17) & 
-- ((\u_filter|Add0~12_combout\ & (!\u_filter|scale_prod_2[16]~23\)) # (!\u_filter|Add0~12_combout\ & ((\u_filter|scale_prod_2[16]~23\) # (GND)))))
-- \u_filter|scale_prod_2[17]~25\ = CARRY((\u_filter|y_delayed\(17) & (!\u_filter|Add0~12_combout\ & !\u_filter|scale_prod_2[16]~23\)) # (!\u_filter|y_delayed\(17) & ((!\u_filter|scale_prod_2[16]~23\) # (!\u_filter|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(17),
	datab => \u_filter|Add0~12_combout\,
	datad => VCC,
	cin => \u_filter|scale_prod_2[16]~23\,
	combout => \u_filter|scale_prod_2[17]~24_combout\,
	cout => \u_filter|scale_prod_2[17]~25\);

-- Location: FF_X23_Y2_N21
\u_filter|scale_prod_2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_2[17]~24_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(17));

-- Location: IOIBUF_X26_Y0_N1
\adc_p_refl_pin[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_refl_pin(7),
	o => \adc_p_refl_pin[7]~input_o\);

-- Location: LCCOMB_X22_Y2_N2
\u_filter|scale_prod_1[17]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_1[17]~feeder_combout\ = \adc_p_refl_pin[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_p_refl_pin[7]~input_o\,
	combout => \u_filter|scale_prod_1[17]~feeder_combout\);

-- Location: FF_X22_Y2_N3
\u_filter|scale_prod_1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_1[17]~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_1\(17));

-- Location: LCCOMB_X22_Y2_N24
\u_filter|iir_sum[17]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[17]~32_combout\ = (\u_filter|scale_prod_2\(17) & ((\u_filter|scale_prod_1\(17) & (\u_filter|iir_sum[16]~31\ & VCC)) # (!\u_filter|scale_prod_1\(17) & (!\u_filter|iir_sum[16]~31\)))) # (!\u_filter|scale_prod_2\(17) & 
-- ((\u_filter|scale_prod_1\(17) & (!\u_filter|iir_sum[16]~31\)) # (!\u_filter|scale_prod_1\(17) & ((\u_filter|iir_sum[16]~31\) # (GND)))))
-- \u_filter|iir_sum[17]~33\ = CARRY((\u_filter|scale_prod_2\(17) & (!\u_filter|scale_prod_1\(17) & !\u_filter|iir_sum[16]~31\)) # (!\u_filter|scale_prod_2\(17) & ((!\u_filter|iir_sum[16]~31\) # (!\u_filter|scale_prod_1\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|scale_prod_2\(17),
	datab => \u_filter|scale_prod_1\(17),
	datad => VCC,
	cin => \u_filter|iir_sum[16]~31\,
	combout => \u_filter|iir_sum[17]~32_combout\,
	cout => \u_filter|iir_sum[17]~33\);

-- Location: FF_X22_Y2_N25
\u_filter|iir_sum[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|iir_sum[17]~32_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|iir_sum\(17));

-- Location: LCCOMB_X23_Y2_N10
\u_filter|y_delayed[17]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|y_delayed[17]~feeder_combout\ = \u_filter|iir_sum\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_filter|iir_sum\(17),
	combout => \u_filter|y_delayed[17]~feeder_combout\);

-- Location: FF_X23_Y2_N11
\u_filter|y_delayed[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|y_delayed[17]~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|y_delayed\(17));

-- Location: LCCOMB_X23_Y2_N22
\u_filter|scale_prod_2[18]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_2[18]~26_combout\ = ((\u_filter|y_delayed\(18) $ (\u_filter|Add0~14_combout\ $ (!\u_filter|scale_prod_2[17]~25\)))) # (GND)
-- \u_filter|scale_prod_2[18]~27\ = CARRY((\u_filter|y_delayed\(18) & ((\u_filter|Add0~14_combout\) # (!\u_filter|scale_prod_2[17]~25\))) # (!\u_filter|y_delayed\(18) & (\u_filter|Add0~14_combout\ & !\u_filter|scale_prod_2[17]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(18),
	datab => \u_filter|Add0~14_combout\,
	datad => VCC,
	cin => \u_filter|scale_prod_2[17]~25\,
	combout => \u_filter|scale_prod_2[18]~26_combout\,
	cout => \u_filter|scale_prod_2[18]~27\);

-- Location: FF_X23_Y2_N23
\u_filter|scale_prod_2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_2[18]~26_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(18));

-- Location: LCCOMB_X22_Y2_N26
\u_filter|iir_sum[18]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[18]~34_combout\ = ((\u_filter|scale_prod_1\(18) $ (\u_filter|scale_prod_2\(18) $ (!\u_filter|iir_sum[17]~33\)))) # (GND)
-- \u_filter|iir_sum[18]~35\ = CARRY((\u_filter|scale_prod_1\(18) & ((\u_filter|scale_prod_2\(18)) # (!\u_filter|iir_sum[17]~33\))) # (!\u_filter|scale_prod_1\(18) & (\u_filter|scale_prod_2\(18) & !\u_filter|iir_sum[17]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|scale_prod_1\(18),
	datab => \u_filter|scale_prod_2\(18),
	datad => VCC,
	cin => \u_filter|iir_sum[17]~33\,
	combout => \u_filter|iir_sum[18]~34_combout\,
	cout => \u_filter|iir_sum[18]~35\);

-- Location: FF_X22_Y2_N27
\u_filter|iir_sum[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|iir_sum[18]~34_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|iir_sum\(18));

-- Location: LCCOMB_X24_Y2_N10
\u_filter|y_delayed[18]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|y_delayed[18]~feeder_combout\ = \u_filter|iir_sum\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_filter|iir_sum\(18),
	combout => \u_filter|y_delayed[18]~feeder_combout\);

-- Location: FF_X24_Y2_N11
\u_filter|y_delayed[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|y_delayed[18]~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|y_delayed\(18));

-- Location: LCCOMB_X23_Y2_N24
\u_filter|scale_prod_2[19]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_2[19]~28_combout\ = (\u_filter|Add0~16_combout\ & ((\u_filter|y_delayed\(19) & (\u_filter|scale_prod_2[18]~27\ & VCC)) # (!\u_filter|y_delayed\(19) & (!\u_filter|scale_prod_2[18]~27\)))) # (!\u_filter|Add0~16_combout\ & 
-- ((\u_filter|y_delayed\(19) & (!\u_filter|scale_prod_2[18]~27\)) # (!\u_filter|y_delayed\(19) & ((\u_filter|scale_prod_2[18]~27\) # (GND)))))
-- \u_filter|scale_prod_2[19]~29\ = CARRY((\u_filter|Add0~16_combout\ & (!\u_filter|y_delayed\(19) & !\u_filter|scale_prod_2[18]~27\)) # (!\u_filter|Add0~16_combout\ & ((!\u_filter|scale_prod_2[18]~27\) # (!\u_filter|y_delayed\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|Add0~16_combout\,
	datab => \u_filter|y_delayed\(19),
	datad => VCC,
	cin => \u_filter|scale_prod_2[18]~27\,
	combout => \u_filter|scale_prod_2[19]~28_combout\,
	cout => \u_filter|scale_prod_2[19]~29\);

-- Location: FF_X23_Y2_N25
\u_filter|scale_prod_2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_2[19]~28_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(19));

-- Location: LCCOMB_X22_Y2_N28
\u_filter|iir_sum[19]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[19]~36_combout\ = (\u_filter|scale_prod_1\(19) & ((\u_filter|scale_prod_2\(19) & (\u_filter|iir_sum[18]~35\ & VCC)) # (!\u_filter|scale_prod_2\(19) & (!\u_filter|iir_sum[18]~35\)))) # (!\u_filter|scale_prod_1\(19) & 
-- ((\u_filter|scale_prod_2\(19) & (!\u_filter|iir_sum[18]~35\)) # (!\u_filter|scale_prod_2\(19) & ((\u_filter|iir_sum[18]~35\) # (GND)))))
-- \u_filter|iir_sum[19]~37\ = CARRY((\u_filter|scale_prod_1\(19) & (!\u_filter|scale_prod_2\(19) & !\u_filter|iir_sum[18]~35\)) # (!\u_filter|scale_prod_1\(19) & ((!\u_filter|iir_sum[18]~35\) # (!\u_filter|scale_prod_2\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|scale_prod_1\(19),
	datab => \u_filter|scale_prod_2\(19),
	datad => VCC,
	cin => \u_filter|iir_sum[18]~35\,
	combout => \u_filter|iir_sum[19]~36_combout\,
	cout => \u_filter|iir_sum[19]~37\);

-- Location: FF_X22_Y2_N29
\u_filter|iir_sum[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|iir_sum[19]~36_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|iir_sum\(19));

-- Location: LCCOMB_X24_Y2_N8
\u_filter|y_delayed[19]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|y_delayed[19]~feeder_combout\ = \u_filter|iir_sum\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_filter|iir_sum\(19),
	combout => \u_filter|y_delayed[19]~feeder_combout\);

-- Location: FF_X24_Y2_N9
\u_filter|y_delayed[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|y_delayed[19]~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|y_delayed\(19));

-- Location: LCCOMB_X23_Y2_N26
\u_filter|scale_prod_2[20]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_2[20]~30_combout\ = ((\u_filter|y_delayed\(20) $ (\u_filter|Add0~18_combout\ $ (!\u_filter|scale_prod_2[19]~29\)))) # (GND)
-- \u_filter|scale_prod_2[20]~31\ = CARRY((\u_filter|y_delayed\(20) & ((\u_filter|Add0~18_combout\) # (!\u_filter|scale_prod_2[19]~29\))) # (!\u_filter|y_delayed\(20) & (\u_filter|Add0~18_combout\ & !\u_filter|scale_prod_2[19]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(20),
	datab => \u_filter|Add0~18_combout\,
	datad => VCC,
	cin => \u_filter|scale_prod_2[19]~29\,
	combout => \u_filter|scale_prod_2[20]~30_combout\,
	cout => \u_filter|scale_prod_2[20]~31\);

-- Location: FF_X23_Y2_N27
\u_filter|scale_prod_2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_2[20]~30_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(20));

-- Location: IOIBUF_X31_Y0_N8
\adc_p_refl_pin[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_refl_pin(10),
	o => \adc_p_refl_pin[10]~input_o\);

-- Location: LCCOMB_X31_Y2_N0
\u_filter|scale_prod_1[20]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_1[20]~feeder_combout\ = \adc_p_refl_pin[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_p_refl_pin[10]~input_o\,
	combout => \u_filter|scale_prod_1[20]~feeder_combout\);

-- Location: FF_X31_Y2_N1
\u_filter|scale_prod_1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_1[20]~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_1\(20));

-- Location: LCCOMB_X22_Y2_N30
\u_filter|iir_sum[20]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[20]~38_combout\ = ((\u_filter|scale_prod_2\(20) $ (\u_filter|scale_prod_1\(20) $ (!\u_filter|iir_sum[19]~37\)))) # (GND)
-- \u_filter|iir_sum[20]~39\ = CARRY((\u_filter|scale_prod_2\(20) & ((\u_filter|scale_prod_1\(20)) # (!\u_filter|iir_sum[19]~37\))) # (!\u_filter|scale_prod_2\(20) & (\u_filter|scale_prod_1\(20) & !\u_filter|iir_sum[19]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|scale_prod_2\(20),
	datab => \u_filter|scale_prod_1\(20),
	datad => VCC,
	cin => \u_filter|iir_sum[19]~37\,
	combout => \u_filter|iir_sum[20]~38_combout\,
	cout => \u_filter|iir_sum[20]~39\);

-- Location: FF_X22_Y2_N31
\u_filter|iir_sum[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|iir_sum[20]~38_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|iir_sum\(20));

-- Location: FF_X24_Y2_N7
\u_filter|y_delayed[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	asdata => \u_filter|iir_sum\(20),
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|y_delayed\(20));

-- Location: LCCOMB_X23_Y2_N28
\u_filter|scale_prod_2[21]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_2[21]~32_combout\ = (\u_filter|Add0~20_combout\ & ((\u_filter|y_delayed\(21) & (\u_filter|scale_prod_2[20]~31\ & VCC)) # (!\u_filter|y_delayed\(21) & (!\u_filter|scale_prod_2[20]~31\)))) # (!\u_filter|Add0~20_combout\ & 
-- ((\u_filter|y_delayed\(21) & (!\u_filter|scale_prod_2[20]~31\)) # (!\u_filter|y_delayed\(21) & ((\u_filter|scale_prod_2[20]~31\) # (GND)))))
-- \u_filter|scale_prod_2[21]~33\ = CARRY((\u_filter|Add0~20_combout\ & (!\u_filter|y_delayed\(21) & !\u_filter|scale_prod_2[20]~31\)) # (!\u_filter|Add0~20_combout\ & ((!\u_filter|scale_prod_2[20]~31\) # (!\u_filter|y_delayed\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|Add0~20_combout\,
	datab => \u_filter|y_delayed\(21),
	datad => VCC,
	cin => \u_filter|scale_prod_2[20]~31\,
	combout => \u_filter|scale_prod_2[21]~32_combout\,
	cout => \u_filter|scale_prod_2[21]~33\);

-- Location: FF_X23_Y2_N29
\u_filter|scale_prod_2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_2[21]~32_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(21));

-- Location: LCCOMB_X22_Y1_N0
\u_filter|iir_sum[21]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[21]~40_combout\ = (\u_filter|scale_prod_1\(21) & ((\u_filter|scale_prod_2\(21) & (\u_filter|iir_sum[20]~39\ & VCC)) # (!\u_filter|scale_prod_2\(21) & (!\u_filter|iir_sum[20]~39\)))) # (!\u_filter|scale_prod_1\(21) & 
-- ((\u_filter|scale_prod_2\(21) & (!\u_filter|iir_sum[20]~39\)) # (!\u_filter|scale_prod_2\(21) & ((\u_filter|iir_sum[20]~39\) # (GND)))))
-- \u_filter|iir_sum[21]~41\ = CARRY((\u_filter|scale_prod_1\(21) & (!\u_filter|scale_prod_2\(21) & !\u_filter|iir_sum[20]~39\)) # (!\u_filter|scale_prod_1\(21) & ((!\u_filter|iir_sum[20]~39\) # (!\u_filter|scale_prod_2\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|scale_prod_1\(21),
	datab => \u_filter|scale_prod_2\(21),
	datad => VCC,
	cin => \u_filter|iir_sum[20]~39\,
	combout => \u_filter|iir_sum[21]~40_combout\,
	cout => \u_filter|iir_sum[21]~41\);

-- Location: FF_X22_Y1_N1
\u_filter|iir_sum[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|iir_sum[21]~40_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|iir_sum\(21));

-- Location: LCCOMB_X24_Y2_N12
\u_filter|y_delayed[21]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|y_delayed[21]~feeder_combout\ = \u_filter|iir_sum\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_filter|iir_sum\(21),
	combout => \u_filter|y_delayed[21]~feeder_combout\);

-- Location: FF_X24_Y2_N13
\u_filter|y_delayed[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|y_delayed[21]~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|y_delayed\(21));

-- Location: LCCOMB_X24_Y1_N4
\u_filter|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|Add0~22_combout\ = (\u_filter|y_delayed\(26) & ((\u_filter|Add0~21\) # (GND))) # (!\u_filter|y_delayed\(26) & (!\u_filter|Add0~21\))
-- \u_filter|Add0~23\ = CARRY((\u_filter|y_delayed\(26)) # (!\u_filter|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_filter|y_delayed\(26),
	datad => VCC,
	cin => \u_filter|Add0~21\,
	combout => \u_filter|Add0~22_combout\,
	cout => \u_filter|Add0~23\);

-- Location: LCCOMB_X23_Y2_N30
\u_filter|scale_prod_2[22]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_2[22]~34_combout\ = ((\u_filter|y_delayed\(22) $ (\u_filter|Add0~22_combout\ $ (!\u_filter|scale_prod_2[21]~33\)))) # (GND)
-- \u_filter|scale_prod_2[22]~35\ = CARRY((\u_filter|y_delayed\(22) & ((\u_filter|Add0~22_combout\) # (!\u_filter|scale_prod_2[21]~33\))) # (!\u_filter|y_delayed\(22) & (\u_filter|Add0~22_combout\ & !\u_filter|scale_prod_2[21]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(22),
	datab => \u_filter|Add0~22_combout\,
	datad => VCC,
	cin => \u_filter|scale_prod_2[21]~33\,
	combout => \u_filter|scale_prod_2[22]~34_combout\,
	cout => \u_filter|scale_prod_2[22]~35\);

-- Location: FF_X23_Y2_N31
\u_filter|scale_prod_2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_2[22]~34_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(22));

-- Location: LCCOMB_X22_Y1_N2
\u_filter|iir_sum[22]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[22]~42_combout\ = ((\u_filter|scale_prod_1\(22) $ (\u_filter|scale_prod_2\(22) $ (!\u_filter|iir_sum[21]~41\)))) # (GND)
-- \u_filter|iir_sum[22]~43\ = CARRY((\u_filter|scale_prod_1\(22) & ((\u_filter|scale_prod_2\(22)) # (!\u_filter|iir_sum[21]~41\))) # (!\u_filter|scale_prod_1\(22) & (\u_filter|scale_prod_2\(22) & !\u_filter|iir_sum[21]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|scale_prod_1\(22),
	datab => \u_filter|scale_prod_2\(22),
	datad => VCC,
	cin => \u_filter|iir_sum[21]~41\,
	combout => \u_filter|iir_sum[22]~42_combout\,
	cout => \u_filter|iir_sum[22]~43\);

-- Location: FF_X22_Y1_N3
\u_filter|iir_sum[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|iir_sum[22]~42_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|iir_sum\(22));

-- Location: LCCOMB_X24_Y2_N2
\u_filter|y_delayed[22]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|y_delayed[22]~feeder_combout\ = \u_filter|iir_sum\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_filter|iir_sum\(22),
	combout => \u_filter|y_delayed[22]~feeder_combout\);

-- Location: FF_X24_Y2_N3
\u_filter|y_delayed[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|y_delayed[22]~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|y_delayed\(22));

-- Location: LCCOMB_X23_Y1_N0
\u_filter|scale_prod_2[23]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_2[23]~36_combout\ = (\u_filter|y_delayed\(23) & ((\u_filter|Add0~24_combout\ & (\u_filter|scale_prod_2[22]~35\ & VCC)) # (!\u_filter|Add0~24_combout\ & (!\u_filter|scale_prod_2[22]~35\)))) # (!\u_filter|y_delayed\(23) & 
-- ((\u_filter|Add0~24_combout\ & (!\u_filter|scale_prod_2[22]~35\)) # (!\u_filter|Add0~24_combout\ & ((\u_filter|scale_prod_2[22]~35\) # (GND)))))
-- \u_filter|scale_prod_2[23]~37\ = CARRY((\u_filter|y_delayed\(23) & (!\u_filter|Add0~24_combout\ & !\u_filter|scale_prod_2[22]~35\)) # (!\u_filter|y_delayed\(23) & ((!\u_filter|scale_prod_2[22]~35\) # (!\u_filter|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(23),
	datab => \u_filter|Add0~24_combout\,
	datad => VCC,
	cin => \u_filter|scale_prod_2[22]~35\,
	combout => \u_filter|scale_prod_2[23]~36_combout\,
	cout => \u_filter|scale_prod_2[23]~37\);

-- Location: FF_X23_Y1_N1
\u_filter|scale_prod_2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_2[23]~36_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(23));

-- Location: LCCOMB_X22_Y1_N4
\u_filter|iir_sum[23]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[23]~44_combout\ = (\u_filter|scale_prod_1\(23) & ((\u_filter|scale_prod_2\(23) & (\u_filter|iir_sum[22]~43\ & VCC)) # (!\u_filter|scale_prod_2\(23) & (!\u_filter|iir_sum[22]~43\)))) # (!\u_filter|scale_prod_1\(23) & 
-- ((\u_filter|scale_prod_2\(23) & (!\u_filter|iir_sum[22]~43\)) # (!\u_filter|scale_prod_2\(23) & ((\u_filter|iir_sum[22]~43\) # (GND)))))
-- \u_filter|iir_sum[23]~45\ = CARRY((\u_filter|scale_prod_1\(23) & (!\u_filter|scale_prod_2\(23) & !\u_filter|iir_sum[22]~43\)) # (!\u_filter|scale_prod_1\(23) & ((!\u_filter|iir_sum[22]~43\) # (!\u_filter|scale_prod_2\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|scale_prod_1\(23),
	datab => \u_filter|scale_prod_2\(23),
	datad => VCC,
	cin => \u_filter|iir_sum[22]~43\,
	combout => \u_filter|iir_sum[23]~44_combout\,
	cout => \u_filter|iir_sum[23]~45\);

-- Location: FF_X22_Y1_N5
\u_filter|iir_sum[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|iir_sum[23]~44_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|iir_sum\(23));

-- Location: LCCOMB_X24_Y2_N0
\u_filter|y_delayed[23]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|y_delayed[23]~feeder_combout\ = \u_filter|iir_sum\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_filter|iir_sum\(23),
	combout => \u_filter|y_delayed[23]~feeder_combout\);

-- Location: FF_X24_Y2_N1
\u_filter|y_delayed[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|y_delayed[23]~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|y_delayed\(23));

-- Location: LCCOMB_X23_Y1_N2
\u_filter|scale_prod_2[24]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_2[24]~38_combout\ = ((\u_filter|y_delayed\(24) $ (\u_filter|Add0~26_combout\ $ (!\u_filter|scale_prod_2[23]~37\)))) # (GND)
-- \u_filter|scale_prod_2[24]~39\ = CARRY((\u_filter|y_delayed\(24) & ((\u_filter|Add0~26_combout\) # (!\u_filter|scale_prod_2[23]~37\))) # (!\u_filter|y_delayed\(24) & (\u_filter|Add0~26_combout\ & !\u_filter|scale_prod_2[23]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(24),
	datab => \u_filter|Add0~26_combout\,
	datad => VCC,
	cin => \u_filter|scale_prod_2[23]~37\,
	combout => \u_filter|scale_prod_2[24]~38_combout\,
	cout => \u_filter|scale_prod_2[24]~39\);

-- Location: FF_X23_Y1_N3
\u_filter|scale_prod_2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_2[24]~38_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(24));

-- Location: IOIBUF_X22_Y0_N8
\adc_p_refl_pin[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_refl_pin(14),
	o => \adc_p_refl_pin[14]~input_o\);

-- Location: LCCOMB_X22_Y1_N28
\u_filter|scale_prod_1[24]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_1[24]~feeder_combout\ = \adc_p_refl_pin[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_p_refl_pin[14]~input_o\,
	combout => \u_filter|scale_prod_1[24]~feeder_combout\);

-- Location: FF_X22_Y1_N29
\u_filter|scale_prod_1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_1[24]~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_1\(24));

-- Location: LCCOMB_X22_Y1_N6
\u_filter|iir_sum[24]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[24]~46_combout\ = ((\u_filter|scale_prod_2\(24) $ (\u_filter|scale_prod_1\(24) $ (!\u_filter|iir_sum[23]~45\)))) # (GND)
-- \u_filter|iir_sum[24]~47\ = CARRY((\u_filter|scale_prod_2\(24) & ((\u_filter|scale_prod_1\(24)) # (!\u_filter|iir_sum[23]~45\))) # (!\u_filter|scale_prod_2\(24) & (\u_filter|scale_prod_1\(24) & !\u_filter|iir_sum[23]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|scale_prod_2\(24),
	datab => \u_filter|scale_prod_1\(24),
	datad => VCC,
	cin => \u_filter|iir_sum[23]~45\,
	combout => \u_filter|iir_sum[24]~46_combout\,
	cout => \u_filter|iir_sum[24]~47\);

-- Location: FF_X22_Y1_N7
\u_filter|iir_sum[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|iir_sum[24]~46_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|iir_sum\(24));

-- Location: LCCOMB_X24_Y1_N28
\u_filter|y_delayed[24]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|y_delayed[24]~feeder_combout\ = \u_filter|iir_sum\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_filter|iir_sum\(24),
	combout => \u_filter|y_delayed[24]~feeder_combout\);

-- Location: FF_X24_Y1_N29
\u_filter|y_delayed[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|y_delayed[24]~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|y_delayed\(24));

-- Location: LCCOMB_X23_Y1_N4
\u_filter|scale_prod_2[25]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_2[25]~40_combout\ = (\u_filter|y_delayed\(25) & ((\u_filter|Add0~28_combout\ & (\u_filter|scale_prod_2[24]~39\ & VCC)) # (!\u_filter|Add0~28_combout\ & (!\u_filter|scale_prod_2[24]~39\)))) # (!\u_filter|y_delayed\(25) & 
-- ((\u_filter|Add0~28_combout\ & (!\u_filter|scale_prod_2[24]~39\)) # (!\u_filter|Add0~28_combout\ & ((\u_filter|scale_prod_2[24]~39\) # (GND)))))
-- \u_filter|scale_prod_2[25]~41\ = CARRY((\u_filter|y_delayed\(25) & (!\u_filter|Add0~28_combout\ & !\u_filter|scale_prod_2[24]~39\)) # (!\u_filter|y_delayed\(25) & ((!\u_filter|scale_prod_2[24]~39\) # (!\u_filter|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(25),
	datab => \u_filter|Add0~28_combout\,
	datad => VCC,
	cin => \u_filter|scale_prod_2[24]~39\,
	combout => \u_filter|scale_prod_2[25]~40_combout\,
	cout => \u_filter|scale_prod_2[25]~41\);

-- Location: FF_X23_Y1_N5
\u_filter|scale_prod_2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_2[25]~40_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(25));

-- Location: LCCOMB_X22_Y1_N8
\u_filter|iir_sum[25]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[25]~48_combout\ = (\u_filter|scale_prod_1\(25) & ((\u_filter|scale_prod_2\(25) & (\u_filter|iir_sum[24]~47\ & VCC)) # (!\u_filter|scale_prod_2\(25) & (!\u_filter|iir_sum[24]~47\)))) # (!\u_filter|scale_prod_1\(25) & 
-- ((\u_filter|scale_prod_2\(25) & (!\u_filter|iir_sum[24]~47\)) # (!\u_filter|scale_prod_2\(25) & ((\u_filter|iir_sum[24]~47\) # (GND)))))
-- \u_filter|iir_sum[25]~49\ = CARRY((\u_filter|scale_prod_1\(25) & (!\u_filter|scale_prod_2\(25) & !\u_filter|iir_sum[24]~47\)) # (!\u_filter|scale_prod_1\(25) & ((!\u_filter|iir_sum[24]~47\) # (!\u_filter|scale_prod_2\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|scale_prod_1\(25),
	datab => \u_filter|scale_prod_2\(25),
	datad => VCC,
	cin => \u_filter|iir_sum[24]~47\,
	combout => \u_filter|iir_sum[25]~48_combout\,
	cout => \u_filter|iir_sum[25]~49\);

-- Location: FF_X22_Y1_N9
\u_filter|iir_sum[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|iir_sum[25]~48_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|iir_sum\(25));

-- Location: LCCOMB_X24_Y1_N30
\u_filter|y_delayed[25]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|y_delayed[25]~feeder_combout\ = \u_filter|iir_sum\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_filter|iir_sum\(25),
	combout => \u_filter|y_delayed[25]~feeder_combout\);

-- Location: FF_X24_Y1_N31
\u_filter|y_delayed[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|y_delayed[25]~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|y_delayed\(25));

-- Location: LCCOMB_X23_Y1_N6
\u_filter|scale_prod_2[26]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_2[26]~42_combout\ = ((\u_filter|Add0~30_combout\ $ (\u_filter|y_delayed\(26) $ (!\u_filter|scale_prod_2[25]~41\)))) # (GND)
-- \u_filter|scale_prod_2[26]~43\ = CARRY((\u_filter|Add0~30_combout\ & ((\u_filter|y_delayed\(26)) # (!\u_filter|scale_prod_2[25]~41\))) # (!\u_filter|Add0~30_combout\ & (\u_filter|y_delayed\(26) & !\u_filter|scale_prod_2[25]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|Add0~30_combout\,
	datab => \u_filter|y_delayed\(26),
	datad => VCC,
	cin => \u_filter|scale_prod_2[25]~41\,
	combout => \u_filter|scale_prod_2[26]~42_combout\,
	cout => \u_filter|scale_prod_2[26]~43\);

-- Location: FF_X23_Y1_N7
\u_filter|scale_prod_2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_2[26]~42_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(26));

-- Location: LCCOMB_X22_Y1_N10
\u_filter|iir_sum[26]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[26]~50_combout\ = (\u_filter|scale_prod_2\(26) & (\u_filter|iir_sum[25]~49\ $ (GND))) # (!\u_filter|scale_prod_2\(26) & (!\u_filter|iir_sum[25]~49\ & VCC))
-- \u_filter|iir_sum[26]~51\ = CARRY((\u_filter|scale_prod_2\(26) & !\u_filter|iir_sum[25]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|scale_prod_2\(26),
	datad => VCC,
	cin => \u_filter|iir_sum[25]~49\,
	combout => \u_filter|iir_sum[26]~50_combout\,
	cout => \u_filter|iir_sum[26]~51\);

-- Location: FF_X22_Y1_N11
\u_filter|iir_sum[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|iir_sum[26]~50_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|iir_sum\(26));

-- Location: FF_X23_Y1_N19
\u_filter|y_delayed[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	asdata => \u_filter|iir_sum\(26),
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|y_delayed\(26));

-- Location: LCCOMB_X24_Y1_N14
\u_filter|Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|Add0~32_combout\ = (\u_filter|y_delayed\(31) & (!\u_filter|Add0~31\ & VCC)) # (!\u_filter|y_delayed\(31) & (\u_filter|Add0~31\ $ (GND)))
-- \u_filter|Add0~33\ = CARRY((!\u_filter|y_delayed\(31) & !\u_filter|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_filter|y_delayed\(31),
	datad => VCC,
	cin => \u_filter|Add0~31\,
	combout => \u_filter|Add0~32_combout\,
	cout => \u_filter|Add0~33\);

-- Location: LCCOMB_X23_Y1_N8
\u_filter|scale_prod_2[27]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_2[27]~44_combout\ = (\u_filter|y_delayed\(27) & ((\u_filter|Add0~32_combout\ & (\u_filter|scale_prod_2[26]~43\ & VCC)) # (!\u_filter|Add0~32_combout\ & (!\u_filter|scale_prod_2[26]~43\)))) # (!\u_filter|y_delayed\(27) & 
-- ((\u_filter|Add0~32_combout\ & (!\u_filter|scale_prod_2[26]~43\)) # (!\u_filter|Add0~32_combout\ & ((\u_filter|scale_prod_2[26]~43\) # (GND)))))
-- \u_filter|scale_prod_2[27]~45\ = CARRY((\u_filter|y_delayed\(27) & (!\u_filter|Add0~32_combout\ & !\u_filter|scale_prod_2[26]~43\)) # (!\u_filter|y_delayed\(27) & ((!\u_filter|scale_prod_2[26]~43\) # (!\u_filter|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(27),
	datab => \u_filter|Add0~32_combout\,
	datad => VCC,
	cin => \u_filter|scale_prod_2[26]~43\,
	combout => \u_filter|scale_prod_2[27]~44_combout\,
	cout => \u_filter|scale_prod_2[27]~45\);

-- Location: FF_X23_Y1_N9
\u_filter|scale_prod_2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_2[27]~44_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(27));

-- Location: LCCOMB_X22_Y1_N12
\u_filter|iir_sum[27]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[27]~52_combout\ = (\u_filter|scale_prod_2\(27) & (!\u_filter|iir_sum[26]~51\)) # (!\u_filter|scale_prod_2\(27) & ((\u_filter|iir_sum[26]~51\) # (GND)))
-- \u_filter|iir_sum[27]~53\ = CARRY((!\u_filter|iir_sum[26]~51\) # (!\u_filter|scale_prod_2\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_filter|scale_prod_2\(27),
	datad => VCC,
	cin => \u_filter|iir_sum[26]~51\,
	combout => \u_filter|iir_sum[27]~52_combout\,
	cout => \u_filter|iir_sum[27]~53\);

-- Location: FF_X22_Y1_N13
\u_filter|iir_sum[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|iir_sum[27]~52_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|iir_sum\(27));

-- Location: FF_X24_Y1_N7
\u_filter|y_delayed[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	asdata => \u_filter|iir_sum\(27),
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|y_delayed\(27));

-- Location: LCCOMB_X23_Y1_N10
\u_filter|scale_prod_2[28]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_2[28]~46_combout\ = ((\u_filter|y_delayed\(28) $ (\u_filter|Add0~34_combout\ $ (!\u_filter|scale_prod_2[27]~45\)))) # (GND)
-- \u_filter|scale_prod_2[28]~47\ = CARRY((\u_filter|y_delayed\(28) & ((\u_filter|Add0~34_combout\) # (!\u_filter|scale_prod_2[27]~45\))) # (!\u_filter|y_delayed\(28) & (\u_filter|Add0~34_combout\ & !\u_filter|scale_prod_2[27]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(28),
	datab => \u_filter|Add0~34_combout\,
	datad => VCC,
	cin => \u_filter|scale_prod_2[27]~45\,
	combout => \u_filter|scale_prod_2[28]~46_combout\,
	cout => \u_filter|scale_prod_2[28]~47\);

-- Location: LCCOMB_X23_Y1_N12
\u_filter|scale_prod_2[29]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_2[29]~48_combout\ = (\u_filter|y_delayed\(29) & ((\u_filter|Add0~36_combout\ & (\u_filter|scale_prod_2[28]~47\ & VCC)) # (!\u_filter|Add0~36_combout\ & (!\u_filter|scale_prod_2[28]~47\)))) # (!\u_filter|y_delayed\(29) & 
-- ((\u_filter|Add0~36_combout\ & (!\u_filter|scale_prod_2[28]~47\)) # (!\u_filter|Add0~36_combout\ & ((\u_filter|scale_prod_2[28]~47\) # (GND)))))
-- \u_filter|scale_prod_2[29]~49\ = CARRY((\u_filter|y_delayed\(29) & (!\u_filter|Add0~36_combout\ & !\u_filter|scale_prod_2[28]~47\)) # (!\u_filter|y_delayed\(29) & ((!\u_filter|scale_prod_2[28]~47\) # (!\u_filter|Add0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(29),
	datab => \u_filter|Add0~36_combout\,
	datad => VCC,
	cin => \u_filter|scale_prod_2[28]~47\,
	combout => \u_filter|scale_prod_2[29]~48_combout\,
	cout => \u_filter|scale_prod_2[29]~49\);

-- Location: FF_X23_Y1_N13
\u_filter|scale_prod_2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_2[29]~48_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(29));

-- Location: LCCOMB_X22_Y1_N14
\u_filter|iir_sum[28]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[28]~54_combout\ = (\u_filter|scale_prod_2\(28) & (\u_filter|iir_sum[27]~53\ $ (GND))) # (!\u_filter|scale_prod_2\(28) & (!\u_filter|iir_sum[27]~53\ & VCC))
-- \u_filter|iir_sum[28]~55\ = CARRY((\u_filter|scale_prod_2\(28) & !\u_filter|iir_sum[27]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_filter|scale_prod_2\(28),
	datad => VCC,
	cin => \u_filter|iir_sum[27]~53\,
	combout => \u_filter|iir_sum[28]~54_combout\,
	cout => \u_filter|iir_sum[28]~55\);

-- Location: LCCOMB_X22_Y1_N16
\u_filter|iir_sum[29]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[29]~56_combout\ = (\u_filter|scale_prod_2\(29) & (!\u_filter|iir_sum[28]~55\)) # (!\u_filter|scale_prod_2\(29) & ((\u_filter|iir_sum[28]~55\) # (GND)))
-- \u_filter|iir_sum[29]~57\ = CARRY((!\u_filter|iir_sum[28]~55\) # (!\u_filter|scale_prod_2\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_filter|scale_prod_2\(29),
	datad => VCC,
	cin => \u_filter|iir_sum[28]~55\,
	combout => \u_filter|iir_sum[29]~56_combout\,
	cout => \u_filter|iir_sum[29]~57\);

-- Location: FF_X22_Y1_N17
\u_filter|iir_sum[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|iir_sum[29]~56_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|iir_sum\(29));

-- Location: FF_X24_Y1_N11
\u_filter|y_delayed[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	asdata => \u_filter|iir_sum\(29),
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|y_delayed\(29));

-- Location: LCCOMB_X23_Y1_N14
\u_filter|scale_prod_2[30]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_2[30]~50_combout\ = ((\u_filter|y_delayed\(30) $ (\u_filter|Add0~36_combout\ $ (!\u_filter|scale_prod_2[29]~49\)))) # (GND)
-- \u_filter|scale_prod_2[30]~51\ = CARRY((\u_filter|y_delayed\(30) & ((\u_filter|Add0~36_combout\) # (!\u_filter|scale_prod_2[29]~49\))) # (!\u_filter|y_delayed\(30) & (\u_filter|Add0~36_combout\ & !\u_filter|scale_prod_2[29]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(30),
	datab => \u_filter|Add0~36_combout\,
	datad => VCC,
	cin => \u_filter|scale_prod_2[29]~49\,
	combout => \u_filter|scale_prod_2[30]~50_combout\,
	cout => \u_filter|scale_prod_2[30]~51\);

-- Location: FF_X23_Y1_N15
\u_filter|scale_prod_2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_2[30]~50_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(30));

-- Location: LCCOMB_X22_Y1_N18
\u_filter|iir_sum[30]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[30]~58_combout\ = (\u_filter|scale_prod_2\(30) & (\u_filter|iir_sum[29]~57\ $ (GND))) # (!\u_filter|scale_prod_2\(30) & (!\u_filter|iir_sum[29]~57\ & VCC))
-- \u_filter|iir_sum[30]~59\ = CARRY((\u_filter|scale_prod_2\(30) & !\u_filter|iir_sum[29]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_filter|scale_prod_2\(30),
	datad => VCC,
	cin => \u_filter|iir_sum[29]~57\,
	combout => \u_filter|iir_sum[30]~58_combout\,
	cout => \u_filter|iir_sum[30]~59\);

-- Location: FF_X22_Y1_N19
\u_filter|iir_sum[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|iir_sum[30]~58_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|iir_sum\(30));

-- Location: FF_X24_Y1_N13
\u_filter|y_delayed[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	asdata => \u_filter|iir_sum\(30),
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|y_delayed\(30));

-- Location: LCCOMB_X23_Y1_N16
\u_filter|scale_prod_2[31]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|scale_prod_2[31]~52_combout\ = \u_filter|y_delayed\(31) $ (\u_filter|scale_prod_2[30]~51\ $ (\u_filter|Add0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(31),
	datad => \u_filter|Add0~36_combout\,
	cin => \u_filter|scale_prod_2[30]~51\,
	combout => \u_filter|scale_prod_2[31]~52_combout\);

-- Location: FF_X23_Y1_N17
\u_filter|scale_prod_2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_2[31]~52_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(31));

-- Location: LCCOMB_X22_Y1_N20
\u_filter|iir_sum[31]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|iir_sum[31]~60_combout\ = \u_filter|iir_sum[30]~59\ $ (\u_filter|scale_prod_2\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_filter|scale_prod_2\(31),
	cin => \u_filter|iir_sum[30]~59\,
	combout => \u_filter|iir_sum[31]~60_combout\);

-- Location: FF_X22_Y1_N21
\u_filter|iir_sum[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|iir_sum[31]~60_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|iir_sum\(31));

-- Location: FF_X24_Y1_N15
\u_filter|y_delayed[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	asdata => \u_filter|iir_sum\(31),
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|y_delayed\(31));

-- Location: FF_X23_Y1_N11
\u_filter|scale_prod_2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|scale_prod_2[28]~46_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|scale_prod_2\(28));

-- Location: FF_X22_Y1_N15
\u_filter|iir_sum[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|iir_sum[28]~54_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|iir_sum\(28));

-- Location: LCCOMB_X23_Y1_N22
\u_filter|y_delayed[28]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_filter|y_delayed[28]~feeder_combout\ = \u_filter|iir_sum\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_filter|iir_sum\(28),
	combout => \u_filter|y_delayed[28]~feeder_combout\);

-- Location: FF_X23_Y1_N23
\u_filter|y_delayed[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_filter|y_delayed[28]~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_filter|y_delayed\(28));

-- Location: LCCOMB_X23_Y1_N24
\u_slow_comp|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_slow_comp|LessThan0~0_combout\ = (!\u_filter|y_delayed\(27) & (((!\u_filter|y_delayed\(23) & !\u_filter|y_delayed\(22))) # (!\u_filter|y_delayed\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(27),
	datab => \u_filter|y_delayed\(24),
	datac => \u_filter|y_delayed\(23),
	datad => \u_filter|y_delayed\(22),
	combout => \u_slow_comp|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y1_N28
\u_slow_comp|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_slow_comp|LessThan0~1_combout\ = (!\u_filter|y_delayed\(26) & !\u_filter|y_delayed\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_filter|y_delayed\(26),
	datac => \u_filter|y_delayed\(25),
	combout => \u_slow_comp|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y1_N30
\u_slow_comp|LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_slow_comp|LessThan0~2_combout\ = (\u_filter|y_delayed\(29)) # ((\u_filter|y_delayed\(28) & ((!\u_slow_comp|LessThan0~1_combout\) # (!\u_slow_comp|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_filter|y_delayed\(28),
	datab => \u_slow_comp|LessThan0~0_combout\,
	datac => \u_slow_comp|LessThan0~1_combout\,
	datad => \u_filter|y_delayed\(29),
	combout => \u_slow_comp|LessThan0~2_combout\);

-- Location: FF_X23_Y1_N31
\u_slow_comp|trip_slow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_slow_comp|LessThan0~2_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_slow_comp|trip_slow~q\);

-- Location: FF_X23_Y1_N21
\u_sync_slow|cmp_gc_sync|sync0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sys_pin~inputclkctrl_outclk\,
	asdata => \u_slow_comp|trip_slow~q\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sync_slow|cmp_gc_sync|sync0~q\);

-- Location: LCCOMB_X23_Y1_N26
\u_sync_slow|cmp_gc_sync|sync1~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_sync_slow|cmp_gc_sync|sync1~feeder_combout\ = \u_sync_slow|cmp_gc_sync|sync0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sync_slow|cmp_gc_sync|sync0~q\,
	combout => \u_sync_slow|cmp_gc_sync|sync1~feeder_combout\);

-- Location: FF_X23_Y1_N27
\u_sync_slow|cmp_gc_sync|sync1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sys_pin~inputclkctrl_outclk\,
	d => \u_sync_slow|cmp_gc_sync|sync1~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sync_slow|cmp_gc_sync|sync1~q\);

-- Location: LCCOMB_X19_Y1_N16
\u_sync_slow|synced_o~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_sync_slow|synced_o~feeder_combout\ = \u_sync_slow|cmp_gc_sync|sync1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sync_slow|cmp_gc_sync|sync1~q\,
	combout => \u_sync_slow|synced_o~feeder_combout\);

-- Location: FF_X19_Y1_N17
\u_sync_slow|synced_o\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sys_pin~inputclkctrl_outclk\,
	d => \u_sync_slow|synced_o~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sync_slow|synced_o~q\);

-- Location: LCCOMB_X19_Y1_N2
\u_sync_overdrive|cmp_gc_sync|sync0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_sync_overdrive|cmp_gc_sync|sync0~feeder_combout\ = \u_overdrive_comp|trip_overdrive~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_overdrive_comp|trip_overdrive~q\,
	combout => \u_sync_overdrive|cmp_gc_sync|sync0~feeder_combout\);

-- Location: FF_X19_Y1_N3
\u_sync_overdrive|cmp_gc_sync|sync0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sys_pin~inputclkctrl_outclk\,
	d => \u_sync_overdrive|cmp_gc_sync|sync0~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sync_overdrive|cmp_gc_sync|sync0~q\);

-- Location: LCCOMB_X19_Y1_N30
\u_sync_overdrive|cmp_gc_sync|sync1~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_sync_overdrive|cmp_gc_sync|sync1~feeder_combout\ = \u_sync_overdrive|cmp_gc_sync|sync0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sync_overdrive|cmp_gc_sync|sync0~q\,
	combout => \u_sync_overdrive|cmp_gc_sync|sync1~feeder_combout\);

-- Location: FF_X19_Y1_N31
\u_sync_overdrive|cmp_gc_sync|sync1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sys_pin~inputclkctrl_outclk\,
	d => \u_sync_overdrive|cmp_gc_sync|sync1~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sync_overdrive|cmp_gc_sync|sync1~q\);

-- Location: FF_X19_Y1_N19
\u_sync_overdrive|synced_o\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sys_pin~inputclkctrl_outclk\,
	asdata => \u_sync_overdrive|cmp_gc_sync|sync1~q\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sync_overdrive|synced_o~q\);

-- Location: LCCOMB_X22_Y1_N22
\u_fast_comp|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_fast_comp|LessThan0~0_combout\ = (\adc_p_refl_pin[14]~input_o\ & (\adc_p_refl_pin[15]~input_o\ & ((\adc_p_refl_pin[13]~input_o\) # (\adc_p_refl_pin[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_p_refl_pin[13]~input_o\,
	datab => \adc_p_refl_pin[14]~input_o\,
	datac => \adc_p_refl_pin[12]~input_o\,
	datad => \adc_p_refl_pin[15]~input_o\,
	combout => \u_fast_comp|LessThan0~0_combout\);

-- Location: FF_X22_Y1_N23
\u_fast_comp|trip_fast\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_fast_pin~inputclkctrl_outclk\,
	d => \u_fast_comp|LessThan0~0_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fast_comp|trip_fast~q\);

-- Location: LCCOMB_X19_Y1_N22
\u_sync_fast|cmp_gc_sync|sync0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_sync_fast|cmp_gc_sync|sync0~feeder_combout\ = \u_fast_comp|trip_fast~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fast_comp|trip_fast~q\,
	combout => \u_sync_fast|cmp_gc_sync|sync0~feeder_combout\);

-- Location: FF_X19_Y1_N23
\u_sync_fast|cmp_gc_sync|sync0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sys_pin~inputclkctrl_outclk\,
	d => \u_sync_fast|cmp_gc_sync|sync0~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sync_fast|cmp_gc_sync|sync0~q\);

-- Location: FF_X19_Y1_N29
\u_sync_fast|cmp_gc_sync|sync1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sys_pin~inputclkctrl_outclk\,
	asdata => \u_sync_fast|cmp_gc_sync|sync0~q\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sync_fast|cmp_gc_sync|sync1~q\);

-- Location: LCCOMB_X19_Y1_N6
\u_sync_fast|synced_o~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_sync_fast|synced_o~feeder_combout\ = \u_sync_fast|cmp_gc_sync|sync1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sync_fast|cmp_gc_sync|sync1~q\,
	combout => \u_sync_fast|synced_o~feeder_combout\);

-- Location: FF_X19_Y1_N7
\u_sync_fast|synced_o\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sys_pin~inputclkctrl_outclk\,
	d => \u_sync_fast|synced_o~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sync_fast|synced_o~q\);

-- Location: LCCOMB_X19_Y1_N18
\u_central_brain|latched_fast~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_central_brain|latched_fast~0_combout\ = ((\u_sync_slow|synced_o~q\) # ((\u_sync_overdrive|synced_o~q\) # (\u_sync_fast|synced_o~q\))) # (!\interlock_reset_pin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \interlock_reset_pin~input_o\,
	datab => \u_sync_slow|synced_o~q\,
	datac => \u_sync_overdrive|synced_o~q\,
	datad => \u_sync_fast|synced_o~q\,
	combout => \u_central_brain|latched_fast~0_combout\);

-- Location: IOIBUF_X10_Y0_N22
\clk_telemetry_pin~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_telemetry_pin,
	o => \clk_telemetry_pin~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\module_fault_vector_pin[234]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(234),
	o => \module_fault_vector_pin[234]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\module_fault_vector_pin[233]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(233),
	o => \module_fault_vector_pin[233]~input_o\);

-- Location: IOIBUF_X40_Y0_N8
\module_fault_vector_pin[235]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(235),
	o => \module_fault_vector_pin[235]~input_o\);

-- Location: IOIBUF_X44_Y0_N1
\module_fault_vector_pin[232]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(232),
	o => \module_fault_vector_pin[232]~input_o\);

-- Location: LCCOMB_X40_Y4_N26
\u_health_mon|Add232~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add232~0_combout\ = (\module_fault_vector_pin[234]~input_o\ & (\module_fault_vector_pin[233]~input_o\ & (\module_fault_vector_pin[235]~input_o\ & \module_fault_vector_pin[232]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[234]~input_o\,
	datab => \module_fault_vector_pin[233]~input_o\,
	datac => \module_fault_vector_pin[235]~input_o\,
	datad => \module_fault_vector_pin[232]~input_o\,
	combout => \u_health_mon|Add232~0_combout\);

-- Location: IOIBUF_X42_Y0_N1
\module_fault_vector_pin[230]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(230),
	o => \module_fault_vector_pin[230]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\module_fault_vector_pin[231]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(231),
	o => \module_fault_vector_pin[231]~input_o\);

-- Location: IOIBUF_X33_Y0_N8
\module_fault_vector_pin[229]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(229),
	o => \module_fault_vector_pin[229]~input_o\);

-- Location: IOIBUF_X42_Y0_N8
\module_fault_vector_pin[228]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(228),
	o => \module_fault_vector_pin[228]~input_o\);

-- Location: LCCOMB_X40_Y4_N24
\u_health_mon|Add228~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add228~0_combout\ = (\module_fault_vector_pin[230]~input_o\ & (\module_fault_vector_pin[231]~input_o\ & (\module_fault_vector_pin[229]~input_o\ & \module_fault_vector_pin[228]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[230]~input_o\,
	datab => \module_fault_vector_pin[231]~input_o\,
	datac => \module_fault_vector_pin[229]~input_o\,
	datad => \module_fault_vector_pin[228]~input_o\,
	combout => \u_health_mon|Add228~0_combout\);

-- Location: LCCOMB_X40_Y4_N30
\u_health_mon|Add232~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add232~1_combout\ = (\module_fault_vector_pin[234]~input_o\ & ((\module_fault_vector_pin[233]~input_o\ & ((!\module_fault_vector_pin[232]~input_o\) # (!\module_fault_vector_pin[235]~input_o\))) # (!\module_fault_vector_pin[233]~input_o\ & 
-- ((\module_fault_vector_pin[235]~input_o\) # (\module_fault_vector_pin[232]~input_o\))))) # (!\module_fault_vector_pin[234]~input_o\ & ((\module_fault_vector_pin[233]~input_o\ & ((\module_fault_vector_pin[235]~input_o\) # 
-- (\module_fault_vector_pin[232]~input_o\))) # (!\module_fault_vector_pin[233]~input_o\ & (\module_fault_vector_pin[235]~input_o\ & \module_fault_vector_pin[232]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[234]~input_o\,
	datab => \module_fault_vector_pin[233]~input_o\,
	datac => \module_fault_vector_pin[235]~input_o\,
	datad => \module_fault_vector_pin[232]~input_o\,
	combout => \u_health_mon|Add232~1_combout\);

-- Location: LCCOMB_X40_Y4_N4
\u_health_mon|Add228~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add228~1_combout\ = (\module_fault_vector_pin[230]~input_o\ & ((\module_fault_vector_pin[231]~input_o\ & ((!\module_fault_vector_pin[228]~input_o\) # (!\module_fault_vector_pin[229]~input_o\))) # (!\module_fault_vector_pin[231]~input_o\ & 
-- ((\module_fault_vector_pin[229]~input_o\) # (\module_fault_vector_pin[228]~input_o\))))) # (!\module_fault_vector_pin[230]~input_o\ & ((\module_fault_vector_pin[231]~input_o\ & ((\module_fault_vector_pin[229]~input_o\) # 
-- (\module_fault_vector_pin[228]~input_o\))) # (!\module_fault_vector_pin[231]~input_o\ & (\module_fault_vector_pin[229]~input_o\ & \module_fault_vector_pin[228]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[230]~input_o\,
	datab => \module_fault_vector_pin[231]~input_o\,
	datac => \module_fault_vector_pin[229]~input_o\,
	datad => \module_fault_vector_pin[228]~input_o\,
	combout => \u_health_mon|Add228~1_combout\);

-- Location: LCCOMB_X40_Y4_N10
\u_health_mon|Add232~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add232~2_combout\ = \module_fault_vector_pin[234]~input_o\ $ (\module_fault_vector_pin[233]~input_o\ $ (\module_fault_vector_pin[235]~input_o\ $ (\module_fault_vector_pin[232]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[234]~input_o\,
	datab => \module_fault_vector_pin[233]~input_o\,
	datac => \module_fault_vector_pin[235]~input_o\,
	datad => \module_fault_vector_pin[232]~input_o\,
	combout => \u_health_mon|Add232~2_combout\);

-- Location: LCCOMB_X40_Y4_N8
\u_health_mon|Add228~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add228~2_combout\ = \module_fault_vector_pin[230]~input_o\ $ (\module_fault_vector_pin[231]~input_o\ $ (\module_fault_vector_pin[229]~input_o\ $ (\module_fault_vector_pin[228]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[230]~input_o\,
	datab => \module_fault_vector_pin[231]~input_o\,
	datac => \module_fault_vector_pin[229]~input_o\,
	datad => \module_fault_vector_pin[228]~input_o\,
	combout => \u_health_mon|Add228~2_combout\);

-- Location: LCCOMB_X40_Y4_N12
\u_health_mon|Add230~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add230~0_combout\ = (\u_health_mon|Add232~2_combout\ & (\u_health_mon|Add228~2_combout\ $ (VCC))) # (!\u_health_mon|Add232~2_combout\ & (\u_health_mon|Add228~2_combout\ & VCC))
-- \u_health_mon|Add230~1\ = CARRY((\u_health_mon|Add232~2_combout\ & \u_health_mon|Add228~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add232~2_combout\,
	datab => \u_health_mon|Add228~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add230~0_combout\,
	cout => \u_health_mon|Add230~1\);

-- Location: LCCOMB_X40_Y4_N14
\u_health_mon|Add230~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add230~2_combout\ = (\u_health_mon|Add232~1_combout\ & ((\u_health_mon|Add228~1_combout\ & (\u_health_mon|Add230~1\ & VCC)) # (!\u_health_mon|Add228~1_combout\ & (!\u_health_mon|Add230~1\)))) # (!\u_health_mon|Add232~1_combout\ & 
-- ((\u_health_mon|Add228~1_combout\ & (!\u_health_mon|Add230~1\)) # (!\u_health_mon|Add228~1_combout\ & ((\u_health_mon|Add230~1\) # (GND)))))
-- \u_health_mon|Add230~3\ = CARRY((\u_health_mon|Add232~1_combout\ & (!\u_health_mon|Add228~1_combout\ & !\u_health_mon|Add230~1\)) # (!\u_health_mon|Add232~1_combout\ & ((!\u_health_mon|Add230~1\) # (!\u_health_mon|Add228~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add232~1_combout\,
	datab => \u_health_mon|Add228~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add230~1\,
	combout => \u_health_mon|Add230~2_combout\,
	cout => \u_health_mon|Add230~3\);

-- Location: LCCOMB_X40_Y4_N16
\u_health_mon|Add230~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add230~4_combout\ = ((\u_health_mon|Add232~0_combout\ $ (\u_health_mon|Add228~0_combout\ $ (!\u_health_mon|Add230~3\)))) # (GND)
-- \u_health_mon|Add230~5\ = CARRY((\u_health_mon|Add232~0_combout\ & ((\u_health_mon|Add228~0_combout\) # (!\u_health_mon|Add230~3\))) # (!\u_health_mon|Add232~0_combout\ & (\u_health_mon|Add228~0_combout\ & !\u_health_mon|Add230~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add232~0_combout\,
	datab => \u_health_mon|Add228~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add230~3\,
	combout => \u_health_mon|Add230~4_combout\,
	cout => \u_health_mon|Add230~5\);

-- Location: LCCOMB_X40_Y4_N18
\u_health_mon|Add230~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add230~6_combout\ = \u_health_mon|Add230~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add230~5\,
	combout => \u_health_mon|Add230~6_combout\);

-- Location: IOIBUF_X54_Y67_N15
\module_fault_vector_pin[217]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(217),
	o => \module_fault_vector_pin[217]~input_o\);

-- Location: IOIBUF_X52_Y67_N22
\module_fault_vector_pin[216]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(216),
	o => \module_fault_vector_pin[216]~input_o\);

-- Location: IOIBUF_X54_Y67_N8
\module_fault_vector_pin[219]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(219),
	o => \module_fault_vector_pin[219]~input_o\);

-- Location: IOIBUF_X54_Y67_N22
\module_fault_vector_pin[218]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(218),
	o => \module_fault_vector_pin[218]~input_o\);

-- Location: LCCOMB_X53_Y64_N8
\u_health_mon|Add216~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add216~0_combout\ = (\module_fault_vector_pin[217]~input_o\ & (\module_fault_vector_pin[216]~input_o\ & (\module_fault_vector_pin[219]~input_o\ & \module_fault_vector_pin[218]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[217]~input_o\,
	datab => \module_fault_vector_pin[216]~input_o\,
	datac => \module_fault_vector_pin[219]~input_o\,
	datad => \module_fault_vector_pin[218]~input_o\,
	combout => \u_health_mon|Add216~0_combout\);

-- Location: IOIBUF_X49_Y67_N22
\module_fault_vector_pin[212]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(212),
	o => \module_fault_vector_pin[212]~input_o\);

-- Location: IOIBUF_X49_Y67_N1
\module_fault_vector_pin[215]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(215),
	o => \module_fault_vector_pin[215]~input_o\);

-- Location: IOIBUF_X52_Y67_N1
\module_fault_vector_pin[214]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(214),
	o => \module_fault_vector_pin[214]~input_o\);

-- Location: IOIBUF_X52_Y67_N8
\module_fault_vector_pin[213]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(213),
	o => \module_fault_vector_pin[213]~input_o\);

-- Location: LCCOMB_X49_Y64_N8
\u_health_mon|Add212~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add212~0_combout\ = (\module_fault_vector_pin[212]~input_o\ & (\module_fault_vector_pin[215]~input_o\ & (\module_fault_vector_pin[214]~input_o\ & \module_fault_vector_pin[213]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[212]~input_o\,
	datab => \module_fault_vector_pin[215]~input_o\,
	datac => \module_fault_vector_pin[214]~input_o\,
	datad => \module_fault_vector_pin[213]~input_o\,
	combout => \u_health_mon|Add212~0_combout\);

-- Location: LCCOMB_X49_Y64_N10
\u_health_mon|Add212~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add212~1_combout\ = (\module_fault_vector_pin[212]~input_o\ & ((\module_fault_vector_pin[215]~input_o\ & ((!\module_fault_vector_pin[213]~input_o\) # (!\module_fault_vector_pin[214]~input_o\))) # (!\module_fault_vector_pin[215]~input_o\ & 
-- ((\module_fault_vector_pin[214]~input_o\) # (\module_fault_vector_pin[213]~input_o\))))) # (!\module_fault_vector_pin[212]~input_o\ & ((\module_fault_vector_pin[215]~input_o\ & ((\module_fault_vector_pin[214]~input_o\) # 
-- (\module_fault_vector_pin[213]~input_o\))) # (!\module_fault_vector_pin[215]~input_o\ & (\module_fault_vector_pin[214]~input_o\ & \module_fault_vector_pin[213]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[212]~input_o\,
	datab => \module_fault_vector_pin[215]~input_o\,
	datac => \module_fault_vector_pin[214]~input_o\,
	datad => \module_fault_vector_pin[213]~input_o\,
	combout => \u_health_mon|Add212~1_combout\);

-- Location: LCCOMB_X53_Y64_N10
\u_health_mon|Add216~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add216~1_combout\ = (\module_fault_vector_pin[217]~input_o\ & ((\module_fault_vector_pin[216]~input_o\ & ((!\module_fault_vector_pin[218]~input_o\) # (!\module_fault_vector_pin[219]~input_o\))) # (!\module_fault_vector_pin[216]~input_o\ & 
-- ((\module_fault_vector_pin[219]~input_o\) # (\module_fault_vector_pin[218]~input_o\))))) # (!\module_fault_vector_pin[217]~input_o\ & ((\module_fault_vector_pin[216]~input_o\ & ((\module_fault_vector_pin[219]~input_o\) # 
-- (\module_fault_vector_pin[218]~input_o\))) # (!\module_fault_vector_pin[216]~input_o\ & (\module_fault_vector_pin[219]~input_o\ & \module_fault_vector_pin[218]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[217]~input_o\,
	datab => \module_fault_vector_pin[216]~input_o\,
	datac => \module_fault_vector_pin[219]~input_o\,
	datad => \module_fault_vector_pin[218]~input_o\,
	combout => \u_health_mon|Add216~1_combout\);

-- Location: LCCOMB_X49_Y64_N12
\u_health_mon|Add212~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add212~2_combout\ = \module_fault_vector_pin[212]~input_o\ $ (\module_fault_vector_pin[215]~input_o\ $ (\module_fault_vector_pin[214]~input_o\ $ (\module_fault_vector_pin[213]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[212]~input_o\,
	datab => \module_fault_vector_pin[215]~input_o\,
	datac => \module_fault_vector_pin[214]~input_o\,
	datad => \module_fault_vector_pin[213]~input_o\,
	combout => \u_health_mon|Add212~2_combout\);

-- Location: LCCOMB_X53_Y64_N12
\u_health_mon|Add216~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add216~2_combout\ = \module_fault_vector_pin[217]~input_o\ $ (\module_fault_vector_pin[216]~input_o\ $ (\module_fault_vector_pin[219]~input_o\ $ (\module_fault_vector_pin[218]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[217]~input_o\,
	datab => \module_fault_vector_pin[216]~input_o\,
	datac => \module_fault_vector_pin[219]~input_o\,
	datad => \module_fault_vector_pin[218]~input_o\,
	combout => \u_health_mon|Add216~2_combout\);

-- Location: LCCOMB_X49_Y64_N20
\u_health_mon|Add214~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add214~0_combout\ = (\u_health_mon|Add212~2_combout\ & (\u_health_mon|Add216~2_combout\ $ (VCC))) # (!\u_health_mon|Add212~2_combout\ & (\u_health_mon|Add216~2_combout\ & VCC))
-- \u_health_mon|Add214~1\ = CARRY((\u_health_mon|Add212~2_combout\ & \u_health_mon|Add216~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add212~2_combout\,
	datab => \u_health_mon|Add216~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add214~0_combout\,
	cout => \u_health_mon|Add214~1\);

-- Location: LCCOMB_X49_Y64_N22
\u_health_mon|Add214~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add214~2_combout\ = (\u_health_mon|Add212~1_combout\ & ((\u_health_mon|Add216~1_combout\ & (\u_health_mon|Add214~1\ & VCC)) # (!\u_health_mon|Add216~1_combout\ & (!\u_health_mon|Add214~1\)))) # (!\u_health_mon|Add212~1_combout\ & 
-- ((\u_health_mon|Add216~1_combout\ & (!\u_health_mon|Add214~1\)) # (!\u_health_mon|Add216~1_combout\ & ((\u_health_mon|Add214~1\) # (GND)))))
-- \u_health_mon|Add214~3\ = CARRY((\u_health_mon|Add212~1_combout\ & (!\u_health_mon|Add216~1_combout\ & !\u_health_mon|Add214~1\)) # (!\u_health_mon|Add212~1_combout\ & ((!\u_health_mon|Add214~1\) # (!\u_health_mon|Add216~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add212~1_combout\,
	datab => \u_health_mon|Add216~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add214~1\,
	combout => \u_health_mon|Add214~2_combout\,
	cout => \u_health_mon|Add214~3\);

-- Location: LCCOMB_X49_Y64_N24
\u_health_mon|Add214~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add214~4_combout\ = ((\u_health_mon|Add216~0_combout\ $ (\u_health_mon|Add212~0_combout\ $ (!\u_health_mon|Add214~3\)))) # (GND)
-- \u_health_mon|Add214~5\ = CARRY((\u_health_mon|Add216~0_combout\ & ((\u_health_mon|Add212~0_combout\) # (!\u_health_mon|Add214~3\))) # (!\u_health_mon|Add216~0_combout\ & (\u_health_mon|Add212~0_combout\ & !\u_health_mon|Add214~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add216~0_combout\,
	datab => \u_health_mon|Add212~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add214~3\,
	combout => \u_health_mon|Add214~4_combout\,
	cout => \u_health_mon|Add214~5\);

-- Location: LCCOMB_X49_Y64_N26
\u_health_mon|Add214~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add214~6_combout\ = \u_health_mon|Add214~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add214~5\,
	combout => \u_health_mon|Add214~6_combout\);

-- Location: IOIBUF_X47_Y67_N1
\module_fault_vector_pin[220]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(220),
	o => \module_fault_vector_pin[220]~input_o\);

-- Location: IOIBUF_X44_Y67_N15
\module_fault_vector_pin[221]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(221),
	o => \module_fault_vector_pin[221]~input_o\);

-- Location: IOIBUF_X44_Y67_N22
\module_fault_vector_pin[223]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(223),
	o => \module_fault_vector_pin[223]~input_o\);

-- Location: IOIBUF_X47_Y67_N8
\module_fault_vector_pin[222]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(222),
	o => \module_fault_vector_pin[222]~input_o\);

-- Location: LCCOMB_X47_Y64_N16
\u_health_mon|Add220~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add220~0_combout\ = (\module_fault_vector_pin[220]~input_o\ & (\module_fault_vector_pin[221]~input_o\ & (\module_fault_vector_pin[223]~input_o\ & \module_fault_vector_pin[222]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[220]~input_o\,
	datab => \module_fault_vector_pin[221]~input_o\,
	datac => \module_fault_vector_pin[223]~input_o\,
	datad => \module_fault_vector_pin[222]~input_o\,
	combout => \u_health_mon|Add220~0_combout\);

-- Location: IOIBUF_X44_Y67_N1
\module_fault_vector_pin[225]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(225),
	o => \module_fault_vector_pin[225]~input_o\);

-- Location: IOIBUF_X49_Y67_N8
\module_fault_vector_pin[226]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(226),
	o => \module_fault_vector_pin[226]~input_o\);

-- Location: IOIBUF_X52_Y67_N15
\module_fault_vector_pin[227]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(227),
	o => \module_fault_vector_pin[227]~input_o\);

-- Location: IOIBUF_X49_Y67_N15
\module_fault_vector_pin[224]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(224),
	o => \module_fault_vector_pin[224]~input_o\);

-- Location: LCCOMB_X48_Y64_N16
\u_health_mon|Add224~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add224~0_combout\ = (\module_fault_vector_pin[225]~input_o\ & (\module_fault_vector_pin[226]~input_o\ & (\module_fault_vector_pin[227]~input_o\ & \module_fault_vector_pin[224]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[225]~input_o\,
	datab => \module_fault_vector_pin[226]~input_o\,
	datac => \module_fault_vector_pin[227]~input_o\,
	datad => \module_fault_vector_pin[224]~input_o\,
	combout => \u_health_mon|Add224~0_combout\);

-- Location: LCCOMB_X47_Y64_N2
\u_health_mon|Add220~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add220~1_combout\ = (\module_fault_vector_pin[220]~input_o\ & ((\module_fault_vector_pin[221]~input_o\ & ((!\module_fault_vector_pin[222]~input_o\) # (!\module_fault_vector_pin[223]~input_o\))) # (!\module_fault_vector_pin[221]~input_o\ & 
-- ((\module_fault_vector_pin[223]~input_o\) # (\module_fault_vector_pin[222]~input_o\))))) # (!\module_fault_vector_pin[220]~input_o\ & ((\module_fault_vector_pin[221]~input_o\ & ((\module_fault_vector_pin[223]~input_o\) # 
-- (\module_fault_vector_pin[222]~input_o\))) # (!\module_fault_vector_pin[221]~input_o\ & (\module_fault_vector_pin[223]~input_o\ & \module_fault_vector_pin[222]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[220]~input_o\,
	datab => \module_fault_vector_pin[221]~input_o\,
	datac => \module_fault_vector_pin[223]~input_o\,
	datad => \module_fault_vector_pin[222]~input_o\,
	combout => \u_health_mon|Add220~1_combout\);

-- Location: LCCOMB_X48_Y64_N28
\u_health_mon|Add224~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add224~1_combout\ = (\module_fault_vector_pin[225]~input_o\ & ((\module_fault_vector_pin[226]~input_o\ & ((!\module_fault_vector_pin[224]~input_o\) # (!\module_fault_vector_pin[227]~input_o\))) # (!\module_fault_vector_pin[226]~input_o\ & 
-- ((\module_fault_vector_pin[227]~input_o\) # (\module_fault_vector_pin[224]~input_o\))))) # (!\module_fault_vector_pin[225]~input_o\ & ((\module_fault_vector_pin[226]~input_o\ & ((\module_fault_vector_pin[227]~input_o\) # 
-- (\module_fault_vector_pin[224]~input_o\))) # (!\module_fault_vector_pin[226]~input_o\ & (\module_fault_vector_pin[227]~input_o\ & \module_fault_vector_pin[224]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[225]~input_o\,
	datab => \module_fault_vector_pin[226]~input_o\,
	datac => \module_fault_vector_pin[227]~input_o\,
	datad => \module_fault_vector_pin[224]~input_o\,
	combout => \u_health_mon|Add224~1_combout\);

-- Location: LCCOMB_X48_Y64_N30
\u_health_mon|Add224~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add224~2_combout\ = \module_fault_vector_pin[225]~input_o\ $ (\module_fault_vector_pin[226]~input_o\ $ (\module_fault_vector_pin[227]~input_o\ $ (\module_fault_vector_pin[224]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[225]~input_o\,
	datab => \module_fault_vector_pin[226]~input_o\,
	datac => \module_fault_vector_pin[227]~input_o\,
	datad => \module_fault_vector_pin[224]~input_o\,
	combout => \u_health_mon|Add224~2_combout\);

-- Location: LCCOMB_X47_Y64_N12
\u_health_mon|Add220~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add220~2_combout\ = \module_fault_vector_pin[220]~input_o\ $ (\module_fault_vector_pin[221]~input_o\ $ (\module_fault_vector_pin[223]~input_o\ $ (\module_fault_vector_pin[222]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[220]~input_o\,
	datab => \module_fault_vector_pin[221]~input_o\,
	datac => \module_fault_vector_pin[223]~input_o\,
	datad => \module_fault_vector_pin[222]~input_o\,
	combout => \u_health_mon|Add220~2_combout\);

-- Location: LCCOMB_X48_Y64_N18
\u_health_mon|Add222~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add222~0_combout\ = (\u_health_mon|Add224~2_combout\ & (\u_health_mon|Add220~2_combout\ $ (VCC))) # (!\u_health_mon|Add224~2_combout\ & (\u_health_mon|Add220~2_combout\ & VCC))
-- \u_health_mon|Add222~1\ = CARRY((\u_health_mon|Add224~2_combout\ & \u_health_mon|Add220~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add224~2_combout\,
	datab => \u_health_mon|Add220~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add222~0_combout\,
	cout => \u_health_mon|Add222~1\);

-- Location: LCCOMB_X48_Y64_N20
\u_health_mon|Add222~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add222~2_combout\ = (\u_health_mon|Add220~1_combout\ & ((\u_health_mon|Add224~1_combout\ & (\u_health_mon|Add222~1\ & VCC)) # (!\u_health_mon|Add224~1_combout\ & (!\u_health_mon|Add222~1\)))) # (!\u_health_mon|Add220~1_combout\ & 
-- ((\u_health_mon|Add224~1_combout\ & (!\u_health_mon|Add222~1\)) # (!\u_health_mon|Add224~1_combout\ & ((\u_health_mon|Add222~1\) # (GND)))))
-- \u_health_mon|Add222~3\ = CARRY((\u_health_mon|Add220~1_combout\ & (!\u_health_mon|Add224~1_combout\ & !\u_health_mon|Add222~1\)) # (!\u_health_mon|Add220~1_combout\ & ((!\u_health_mon|Add222~1\) # (!\u_health_mon|Add224~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add220~1_combout\,
	datab => \u_health_mon|Add224~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add222~1\,
	combout => \u_health_mon|Add222~2_combout\,
	cout => \u_health_mon|Add222~3\);

-- Location: LCCOMB_X48_Y64_N22
\u_health_mon|Add222~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add222~4_combout\ = ((\u_health_mon|Add220~0_combout\ $ (\u_health_mon|Add224~0_combout\ $ (!\u_health_mon|Add222~3\)))) # (GND)
-- \u_health_mon|Add222~5\ = CARRY((\u_health_mon|Add220~0_combout\ & ((\u_health_mon|Add224~0_combout\) # (!\u_health_mon|Add222~3\))) # (!\u_health_mon|Add220~0_combout\ & (\u_health_mon|Add224~0_combout\ & !\u_health_mon|Add222~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add220~0_combout\,
	datab => \u_health_mon|Add224~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add222~3\,
	combout => \u_health_mon|Add222~4_combout\,
	cout => \u_health_mon|Add222~5\);

-- Location: LCCOMB_X48_Y64_N24
\u_health_mon|Add222~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add222~6_combout\ = \u_health_mon|Add222~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add222~5\,
	combout => \u_health_mon|Add222~6_combout\);

-- Location: LCCOMB_X48_Y64_N2
\u_health_mon|Add218~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add218~0_combout\ = (\u_health_mon|Add214~0_combout\ & (\u_health_mon|Add222~0_combout\ $ (VCC))) # (!\u_health_mon|Add214~0_combout\ & (\u_health_mon|Add222~0_combout\ & VCC))
-- \u_health_mon|Add218~1\ = CARRY((\u_health_mon|Add214~0_combout\ & \u_health_mon|Add222~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add214~0_combout\,
	datab => \u_health_mon|Add222~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add218~0_combout\,
	cout => \u_health_mon|Add218~1\);

-- Location: LCCOMB_X48_Y64_N4
\u_health_mon|Add218~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add218~2_combout\ = (\u_health_mon|Add214~2_combout\ & ((\u_health_mon|Add222~2_combout\ & (\u_health_mon|Add218~1\ & VCC)) # (!\u_health_mon|Add222~2_combout\ & (!\u_health_mon|Add218~1\)))) # (!\u_health_mon|Add214~2_combout\ & 
-- ((\u_health_mon|Add222~2_combout\ & (!\u_health_mon|Add218~1\)) # (!\u_health_mon|Add222~2_combout\ & ((\u_health_mon|Add218~1\) # (GND)))))
-- \u_health_mon|Add218~3\ = CARRY((\u_health_mon|Add214~2_combout\ & (!\u_health_mon|Add222~2_combout\ & !\u_health_mon|Add218~1\)) # (!\u_health_mon|Add214~2_combout\ & ((!\u_health_mon|Add218~1\) # (!\u_health_mon|Add222~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add214~2_combout\,
	datab => \u_health_mon|Add222~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add218~1\,
	combout => \u_health_mon|Add218~2_combout\,
	cout => \u_health_mon|Add218~3\);

-- Location: LCCOMB_X48_Y64_N6
\u_health_mon|Add218~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add218~4_combout\ = ((\u_health_mon|Add222~4_combout\ $ (\u_health_mon|Add214~4_combout\ $ (!\u_health_mon|Add218~3\)))) # (GND)
-- \u_health_mon|Add218~5\ = CARRY((\u_health_mon|Add222~4_combout\ & ((\u_health_mon|Add214~4_combout\) # (!\u_health_mon|Add218~3\))) # (!\u_health_mon|Add222~4_combout\ & (\u_health_mon|Add214~4_combout\ & !\u_health_mon|Add218~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add222~4_combout\,
	datab => \u_health_mon|Add214~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add218~3\,
	combout => \u_health_mon|Add218~4_combout\,
	cout => \u_health_mon|Add218~5\);

-- Location: LCCOMB_X48_Y64_N8
\u_health_mon|Add218~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add218~6_combout\ = (\u_health_mon|Add214~6_combout\ & ((\u_health_mon|Add222~6_combout\ & (\u_health_mon|Add218~5\ & VCC)) # (!\u_health_mon|Add222~6_combout\ & (!\u_health_mon|Add218~5\)))) # (!\u_health_mon|Add214~6_combout\ & 
-- ((\u_health_mon|Add222~6_combout\ & (!\u_health_mon|Add218~5\)) # (!\u_health_mon|Add222~6_combout\ & ((\u_health_mon|Add218~5\) # (GND)))))
-- \u_health_mon|Add218~7\ = CARRY((\u_health_mon|Add214~6_combout\ & (!\u_health_mon|Add222~6_combout\ & !\u_health_mon|Add218~5\)) # (!\u_health_mon|Add214~6_combout\ & ((!\u_health_mon|Add218~5\) # (!\u_health_mon|Add222~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add214~6_combout\,
	datab => \u_health_mon|Add222~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add218~5\,
	combout => \u_health_mon|Add218~6_combout\,
	cout => \u_health_mon|Add218~7\);

-- Location: LCCOMB_X43_Y35_N0
\u_health_mon|Add226~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add226~0_combout\ = (\u_health_mon|Add218~0_combout\ & (\u_health_mon|Add230~0_combout\ $ (VCC))) # (!\u_health_mon|Add218~0_combout\ & (\u_health_mon|Add230~0_combout\ & VCC))
-- \u_health_mon|Add226~1\ = CARRY((\u_health_mon|Add218~0_combout\ & \u_health_mon|Add230~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add218~0_combout\,
	datab => \u_health_mon|Add230~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add226~0_combout\,
	cout => \u_health_mon|Add226~1\);

-- Location: LCCOMB_X43_Y35_N2
\u_health_mon|Add226~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add226~2_combout\ = (\u_health_mon|Add230~2_combout\ & ((\u_health_mon|Add218~2_combout\ & (\u_health_mon|Add226~1\ & VCC)) # (!\u_health_mon|Add218~2_combout\ & (!\u_health_mon|Add226~1\)))) # (!\u_health_mon|Add230~2_combout\ & 
-- ((\u_health_mon|Add218~2_combout\ & (!\u_health_mon|Add226~1\)) # (!\u_health_mon|Add218~2_combout\ & ((\u_health_mon|Add226~1\) # (GND)))))
-- \u_health_mon|Add226~3\ = CARRY((\u_health_mon|Add230~2_combout\ & (!\u_health_mon|Add218~2_combout\ & !\u_health_mon|Add226~1\)) # (!\u_health_mon|Add230~2_combout\ & ((!\u_health_mon|Add226~1\) # (!\u_health_mon|Add218~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add230~2_combout\,
	datab => \u_health_mon|Add218~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add226~1\,
	combout => \u_health_mon|Add226~2_combout\,
	cout => \u_health_mon|Add226~3\);

-- Location: LCCOMB_X43_Y35_N4
\u_health_mon|Add226~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add226~4_combout\ = ((\u_health_mon|Add230~4_combout\ $ (\u_health_mon|Add218~4_combout\ $ (!\u_health_mon|Add226~3\)))) # (GND)
-- \u_health_mon|Add226~5\ = CARRY((\u_health_mon|Add230~4_combout\ & ((\u_health_mon|Add218~4_combout\) # (!\u_health_mon|Add226~3\))) # (!\u_health_mon|Add230~4_combout\ & (\u_health_mon|Add218~4_combout\ & !\u_health_mon|Add226~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add230~4_combout\,
	datab => \u_health_mon|Add218~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add226~3\,
	combout => \u_health_mon|Add226~4_combout\,
	cout => \u_health_mon|Add226~5\);

-- Location: LCCOMB_X43_Y35_N6
\u_health_mon|Add226~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add226~6_combout\ = (\u_health_mon|Add230~6_combout\ & ((\u_health_mon|Add218~6_combout\ & (\u_health_mon|Add226~5\ & VCC)) # (!\u_health_mon|Add218~6_combout\ & (!\u_health_mon|Add226~5\)))) # (!\u_health_mon|Add230~6_combout\ & 
-- ((\u_health_mon|Add218~6_combout\ & (!\u_health_mon|Add226~5\)) # (!\u_health_mon|Add218~6_combout\ & ((\u_health_mon|Add226~5\) # (GND)))))
-- \u_health_mon|Add226~7\ = CARRY((\u_health_mon|Add230~6_combout\ & (!\u_health_mon|Add218~6_combout\ & !\u_health_mon|Add226~5\)) # (!\u_health_mon|Add230~6_combout\ & ((!\u_health_mon|Add226~5\) # (!\u_health_mon|Add218~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add230~6_combout\,
	datab => \u_health_mon|Add218~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add226~5\,
	combout => \u_health_mon|Add226~6_combout\,
	cout => \u_health_mon|Add226~7\);

-- Location: IOIBUF_X81_Y16_N8
\module_fault_vector_pin[41]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(41),
	o => \module_fault_vector_pin[41]~input_o\);

-- Location: IOIBUF_X81_Y20_N1
\module_fault_vector_pin[40]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(40),
	o => \module_fault_vector_pin[40]~input_o\);

-- Location: IOIBUF_X81_Y17_N1
\module_fault_vector_pin[43]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(43),
	o => \module_fault_vector_pin[43]~input_o\);

-- Location: IOIBUF_X81_Y21_N8
\module_fault_vector_pin[42]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(42),
	o => \module_fault_vector_pin[42]~input_o\);

-- Location: LCCOMB_X80_Y20_N26
\u_health_mon|Add40~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add40~0_combout\ = (\module_fault_vector_pin[41]~input_o\ & (\module_fault_vector_pin[40]~input_o\ & (\module_fault_vector_pin[43]~input_o\ & \module_fault_vector_pin[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[41]~input_o\,
	datab => \module_fault_vector_pin[40]~input_o\,
	datac => \module_fault_vector_pin[43]~input_o\,
	datad => \module_fault_vector_pin[42]~input_o\,
	combout => \u_health_mon|Add40~0_combout\);

-- Location: IOIBUF_X81_Y20_N8
\module_fault_vector_pin[36]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(36),
	o => \module_fault_vector_pin[36]~input_o\);

-- Location: IOIBUF_X81_Y19_N8
\module_fault_vector_pin[39]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(39),
	o => \module_fault_vector_pin[39]~input_o\);

-- Location: IOIBUF_X81_Y19_N1
\module_fault_vector_pin[37]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(37),
	o => \module_fault_vector_pin[37]~input_o\);

-- Location: IOIBUF_X81_Y21_N1
\module_fault_vector_pin[38]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(38),
	o => \module_fault_vector_pin[38]~input_o\);

-- Location: LCCOMB_X80_Y20_N24
\u_health_mon|Add36~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add36~0_combout\ = (\module_fault_vector_pin[36]~input_o\ & (\module_fault_vector_pin[39]~input_o\ & (\module_fault_vector_pin[37]~input_o\ & \module_fault_vector_pin[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[36]~input_o\,
	datab => \module_fault_vector_pin[39]~input_o\,
	datac => \module_fault_vector_pin[37]~input_o\,
	datad => \module_fault_vector_pin[38]~input_o\,
	combout => \u_health_mon|Add36~0_combout\);

-- Location: LCCOMB_X80_Y20_N12
\u_health_mon|Add36~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add36~1_combout\ = (\module_fault_vector_pin[36]~input_o\ & ((\module_fault_vector_pin[39]~input_o\ & ((!\module_fault_vector_pin[38]~input_o\) # (!\module_fault_vector_pin[37]~input_o\))) # (!\module_fault_vector_pin[39]~input_o\ & 
-- ((\module_fault_vector_pin[37]~input_o\) # (\module_fault_vector_pin[38]~input_o\))))) # (!\module_fault_vector_pin[36]~input_o\ & ((\module_fault_vector_pin[39]~input_o\ & ((\module_fault_vector_pin[37]~input_o\) # 
-- (\module_fault_vector_pin[38]~input_o\))) # (!\module_fault_vector_pin[39]~input_o\ & (\module_fault_vector_pin[37]~input_o\ & \module_fault_vector_pin[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[36]~input_o\,
	datab => \module_fault_vector_pin[39]~input_o\,
	datac => \module_fault_vector_pin[37]~input_o\,
	datad => \module_fault_vector_pin[38]~input_o\,
	combout => \u_health_mon|Add36~1_combout\);

-- Location: LCCOMB_X80_Y20_N30
\u_health_mon|Add40~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add40~1_combout\ = (\module_fault_vector_pin[41]~input_o\ & ((\module_fault_vector_pin[40]~input_o\ & ((!\module_fault_vector_pin[42]~input_o\) # (!\module_fault_vector_pin[43]~input_o\))) # (!\module_fault_vector_pin[40]~input_o\ & 
-- ((\module_fault_vector_pin[43]~input_o\) # (\module_fault_vector_pin[42]~input_o\))))) # (!\module_fault_vector_pin[41]~input_o\ & ((\module_fault_vector_pin[40]~input_o\ & ((\module_fault_vector_pin[43]~input_o\) # 
-- (\module_fault_vector_pin[42]~input_o\))) # (!\module_fault_vector_pin[40]~input_o\ & (\module_fault_vector_pin[43]~input_o\ & \module_fault_vector_pin[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[41]~input_o\,
	datab => \module_fault_vector_pin[40]~input_o\,
	datac => \module_fault_vector_pin[43]~input_o\,
	datad => \module_fault_vector_pin[42]~input_o\,
	combout => \u_health_mon|Add40~1_combout\);

-- Location: LCCOMB_X80_Y20_N10
\u_health_mon|Add40~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add40~2_combout\ = \module_fault_vector_pin[41]~input_o\ $ (\module_fault_vector_pin[40]~input_o\ $ (\module_fault_vector_pin[43]~input_o\ $ (\module_fault_vector_pin[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[41]~input_o\,
	datab => \module_fault_vector_pin[40]~input_o\,
	datac => \module_fault_vector_pin[43]~input_o\,
	datad => \module_fault_vector_pin[42]~input_o\,
	combout => \u_health_mon|Add40~2_combout\);

-- Location: LCCOMB_X80_Y20_N8
\u_health_mon|Add36~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add36~2_combout\ = \module_fault_vector_pin[36]~input_o\ $ (\module_fault_vector_pin[39]~input_o\ $ (\module_fault_vector_pin[37]~input_o\ $ (\module_fault_vector_pin[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[36]~input_o\,
	datab => \module_fault_vector_pin[39]~input_o\,
	datac => \module_fault_vector_pin[37]~input_o\,
	datad => \module_fault_vector_pin[38]~input_o\,
	combout => \u_health_mon|Add36~2_combout\);

-- Location: LCCOMB_X80_Y20_N0
\u_health_mon|Add38~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add38~0_combout\ = (\u_health_mon|Add40~2_combout\ & (\u_health_mon|Add36~2_combout\ $ (VCC))) # (!\u_health_mon|Add40~2_combout\ & (\u_health_mon|Add36~2_combout\ & VCC))
-- \u_health_mon|Add38~1\ = CARRY((\u_health_mon|Add40~2_combout\ & \u_health_mon|Add36~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add40~2_combout\,
	datab => \u_health_mon|Add36~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add38~0_combout\,
	cout => \u_health_mon|Add38~1\);

-- Location: LCCOMB_X80_Y20_N2
\u_health_mon|Add38~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add38~2_combout\ = (\u_health_mon|Add36~1_combout\ & ((\u_health_mon|Add40~1_combout\ & (\u_health_mon|Add38~1\ & VCC)) # (!\u_health_mon|Add40~1_combout\ & (!\u_health_mon|Add38~1\)))) # (!\u_health_mon|Add36~1_combout\ & 
-- ((\u_health_mon|Add40~1_combout\ & (!\u_health_mon|Add38~1\)) # (!\u_health_mon|Add40~1_combout\ & ((\u_health_mon|Add38~1\) # (GND)))))
-- \u_health_mon|Add38~3\ = CARRY((\u_health_mon|Add36~1_combout\ & (!\u_health_mon|Add40~1_combout\ & !\u_health_mon|Add38~1\)) # (!\u_health_mon|Add36~1_combout\ & ((!\u_health_mon|Add38~1\) # (!\u_health_mon|Add40~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add36~1_combout\,
	datab => \u_health_mon|Add40~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add38~1\,
	combout => \u_health_mon|Add38~2_combout\,
	cout => \u_health_mon|Add38~3\);

-- Location: LCCOMB_X80_Y20_N4
\u_health_mon|Add38~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add38~4_combout\ = ((\u_health_mon|Add40~0_combout\ $ (\u_health_mon|Add36~0_combout\ $ (!\u_health_mon|Add38~3\)))) # (GND)
-- \u_health_mon|Add38~5\ = CARRY((\u_health_mon|Add40~0_combout\ & ((\u_health_mon|Add36~0_combout\) # (!\u_health_mon|Add38~3\))) # (!\u_health_mon|Add40~0_combout\ & (\u_health_mon|Add36~0_combout\ & !\u_health_mon|Add38~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add40~0_combout\,
	datab => \u_health_mon|Add36~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add38~3\,
	combout => \u_health_mon|Add38~4_combout\,
	cout => \u_health_mon|Add38~5\);

-- Location: LCCOMB_X80_Y20_N6
\u_health_mon|Add38~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add38~6_combout\ = \u_health_mon|Add38~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add38~5\,
	combout => \u_health_mon|Add38~6_combout\);

-- Location: IOIBUF_X31_Y67_N8
\module_fault_vector_pin[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(23),
	o => \module_fault_vector_pin[23]~input_o\);

-- Location: IOIBUF_X38_Y67_N1
\module_fault_vector_pin[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(20),
	o => \module_fault_vector_pin[20]~input_o\);

-- Location: IOIBUF_X31_Y67_N1
\module_fault_vector_pin[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(22),
	o => \module_fault_vector_pin[22]~input_o\);

-- Location: IOIBUF_X38_Y67_N8
\module_fault_vector_pin[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(21),
	o => \module_fault_vector_pin[21]~input_o\);

-- Location: LCCOMB_X39_Y63_N16
\u_health_mon|Add20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add20~0_combout\ = (\module_fault_vector_pin[23]~input_o\ & (\module_fault_vector_pin[20]~input_o\ & (\module_fault_vector_pin[22]~input_o\ & \module_fault_vector_pin[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[23]~input_o\,
	datab => \module_fault_vector_pin[20]~input_o\,
	datac => \module_fault_vector_pin[22]~input_o\,
	datad => \module_fault_vector_pin[21]~input_o\,
	combout => \u_health_mon|Add20~0_combout\);

-- Location: IOIBUF_X31_Y67_N22
\module_fault_vector_pin[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(25),
	o => \module_fault_vector_pin[25]~input_o\);

-- Location: IOIBUF_X33_Y67_N15
\module_fault_vector_pin[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(26),
	o => \module_fault_vector_pin[26]~input_o\);

-- Location: IOIBUF_X33_Y67_N8
\module_fault_vector_pin[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(27),
	o => \module_fault_vector_pin[27]~input_o\);

-- Location: IOIBUF_X33_Y67_N22
\module_fault_vector_pin[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(24),
	o => \module_fault_vector_pin[24]~input_o\);

-- Location: LCCOMB_X37_Y63_N24
\u_health_mon|Add24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add24~0_combout\ = (\module_fault_vector_pin[25]~input_o\ & (\module_fault_vector_pin[26]~input_o\ & (\module_fault_vector_pin[27]~input_o\ & \module_fault_vector_pin[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[25]~input_o\,
	datab => \module_fault_vector_pin[26]~input_o\,
	datac => \module_fault_vector_pin[27]~input_o\,
	datad => \module_fault_vector_pin[24]~input_o\,
	combout => \u_health_mon|Add24~0_combout\);

-- Location: LCCOMB_X39_Y63_N10
\u_health_mon|Add20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add20~1_combout\ = (\module_fault_vector_pin[23]~input_o\ & ((\module_fault_vector_pin[20]~input_o\ & ((!\module_fault_vector_pin[21]~input_o\) # (!\module_fault_vector_pin[22]~input_o\))) # (!\module_fault_vector_pin[20]~input_o\ & 
-- ((\module_fault_vector_pin[22]~input_o\) # (\module_fault_vector_pin[21]~input_o\))))) # (!\module_fault_vector_pin[23]~input_o\ & ((\module_fault_vector_pin[20]~input_o\ & ((\module_fault_vector_pin[22]~input_o\) # 
-- (\module_fault_vector_pin[21]~input_o\))) # (!\module_fault_vector_pin[20]~input_o\ & (\module_fault_vector_pin[22]~input_o\ & \module_fault_vector_pin[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[23]~input_o\,
	datab => \module_fault_vector_pin[20]~input_o\,
	datac => \module_fault_vector_pin[22]~input_o\,
	datad => \module_fault_vector_pin[21]~input_o\,
	combout => \u_health_mon|Add20~1_combout\);

-- Location: LCCOMB_X37_Y63_N26
\u_health_mon|Add24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add24~1_combout\ = (\module_fault_vector_pin[25]~input_o\ & ((\module_fault_vector_pin[26]~input_o\ & ((!\module_fault_vector_pin[24]~input_o\) # (!\module_fault_vector_pin[27]~input_o\))) # (!\module_fault_vector_pin[26]~input_o\ & 
-- ((\module_fault_vector_pin[27]~input_o\) # (\module_fault_vector_pin[24]~input_o\))))) # (!\module_fault_vector_pin[25]~input_o\ & ((\module_fault_vector_pin[26]~input_o\ & ((\module_fault_vector_pin[27]~input_o\) # 
-- (\module_fault_vector_pin[24]~input_o\))) # (!\module_fault_vector_pin[26]~input_o\ & (\module_fault_vector_pin[27]~input_o\ & \module_fault_vector_pin[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[25]~input_o\,
	datab => \module_fault_vector_pin[26]~input_o\,
	datac => \module_fault_vector_pin[27]~input_o\,
	datad => \module_fault_vector_pin[24]~input_o\,
	combout => \u_health_mon|Add24~1_combout\);

-- Location: LCCOMB_X39_Y63_N12
\u_health_mon|Add20~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add20~2_combout\ = \module_fault_vector_pin[23]~input_o\ $ (\module_fault_vector_pin[20]~input_o\ $ (\module_fault_vector_pin[22]~input_o\ $ (\module_fault_vector_pin[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[23]~input_o\,
	datab => \module_fault_vector_pin[20]~input_o\,
	datac => \module_fault_vector_pin[22]~input_o\,
	datad => \module_fault_vector_pin[21]~input_o\,
	combout => \u_health_mon|Add20~2_combout\);

-- Location: LCCOMB_X37_Y63_N4
\u_health_mon|Add24~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add24~2_combout\ = \module_fault_vector_pin[25]~input_o\ $ (\module_fault_vector_pin[26]~input_o\ $ (\module_fault_vector_pin[27]~input_o\ $ (\module_fault_vector_pin[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[25]~input_o\,
	datab => \module_fault_vector_pin[26]~input_o\,
	datac => \module_fault_vector_pin[27]~input_o\,
	datad => \module_fault_vector_pin[24]~input_o\,
	combout => \u_health_mon|Add24~2_combout\);

-- Location: LCCOMB_X40_Y63_N0
\u_health_mon|Add22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add22~0_combout\ = (\u_health_mon|Add20~2_combout\ & (\u_health_mon|Add24~2_combout\ $ (VCC))) # (!\u_health_mon|Add20~2_combout\ & (\u_health_mon|Add24~2_combout\ & VCC))
-- \u_health_mon|Add22~1\ = CARRY((\u_health_mon|Add20~2_combout\ & \u_health_mon|Add24~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add20~2_combout\,
	datab => \u_health_mon|Add24~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add22~0_combout\,
	cout => \u_health_mon|Add22~1\);

-- Location: LCCOMB_X40_Y63_N2
\u_health_mon|Add22~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add22~2_combout\ = (\u_health_mon|Add20~1_combout\ & ((\u_health_mon|Add24~1_combout\ & (\u_health_mon|Add22~1\ & VCC)) # (!\u_health_mon|Add24~1_combout\ & (!\u_health_mon|Add22~1\)))) # (!\u_health_mon|Add20~1_combout\ & 
-- ((\u_health_mon|Add24~1_combout\ & (!\u_health_mon|Add22~1\)) # (!\u_health_mon|Add24~1_combout\ & ((\u_health_mon|Add22~1\) # (GND)))))
-- \u_health_mon|Add22~3\ = CARRY((\u_health_mon|Add20~1_combout\ & (!\u_health_mon|Add24~1_combout\ & !\u_health_mon|Add22~1\)) # (!\u_health_mon|Add20~1_combout\ & ((!\u_health_mon|Add22~1\) # (!\u_health_mon|Add24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add20~1_combout\,
	datab => \u_health_mon|Add24~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add22~1\,
	combout => \u_health_mon|Add22~2_combout\,
	cout => \u_health_mon|Add22~3\);

-- Location: LCCOMB_X40_Y63_N4
\u_health_mon|Add22~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add22~4_combout\ = ((\u_health_mon|Add20~0_combout\ $ (\u_health_mon|Add24~0_combout\ $ (!\u_health_mon|Add22~3\)))) # (GND)
-- \u_health_mon|Add22~5\ = CARRY((\u_health_mon|Add20~0_combout\ & ((\u_health_mon|Add24~0_combout\) # (!\u_health_mon|Add22~3\))) # (!\u_health_mon|Add20~0_combout\ & (\u_health_mon|Add24~0_combout\ & !\u_health_mon|Add22~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add20~0_combout\,
	datab => \u_health_mon|Add24~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add22~3\,
	combout => \u_health_mon|Add22~4_combout\,
	cout => \u_health_mon|Add22~5\);

-- Location: LCCOMB_X40_Y63_N6
\u_health_mon|Add22~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add22~6_combout\ = \u_health_mon|Add22~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add22~5\,
	combout => \u_health_mon|Add22~6_combout\);

-- Location: IOIBUF_X31_Y67_N15
\module_fault_vector_pin[32]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(32),
	o => \module_fault_vector_pin[32]~input_o\);

-- Location: IOIBUF_X40_Y67_N1
\module_fault_vector_pin[35]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(35),
	o => \module_fault_vector_pin[35]~input_o\);

-- Location: IOIBUF_X33_Y67_N1
\module_fault_vector_pin[33]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(33),
	o => \module_fault_vector_pin[33]~input_o\);

-- Location: IOIBUF_X44_Y67_N8
\module_fault_vector_pin[34]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(34),
	o => \module_fault_vector_pin[34]~input_o\);

-- Location: LCCOMB_X40_Y63_N26
\u_health_mon|Add32~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add32~0_combout\ = (\module_fault_vector_pin[32]~input_o\ & (\module_fault_vector_pin[35]~input_o\ & (\module_fault_vector_pin[33]~input_o\ & \module_fault_vector_pin[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[32]~input_o\,
	datab => \module_fault_vector_pin[35]~input_o\,
	datac => \module_fault_vector_pin[33]~input_o\,
	datad => \module_fault_vector_pin[34]~input_o\,
	combout => \u_health_mon|Add32~0_combout\);

-- Location: IOIBUF_X42_Y67_N8
\module_fault_vector_pin[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(29),
	o => \module_fault_vector_pin[29]~input_o\);

-- Location: IOIBUF_X42_Y67_N15
\module_fault_vector_pin[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(30),
	o => \module_fault_vector_pin[30]~input_o\);

-- Location: IOIBUF_X42_Y67_N1
\module_fault_vector_pin[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(31),
	o => \module_fault_vector_pin[31]~input_o\);

-- Location: IOIBUF_X42_Y67_N22
\module_fault_vector_pin[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(28),
	o => \module_fault_vector_pin[28]~input_o\);

-- Location: LCCOMB_X41_Y64_N8
\u_health_mon|Add28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add28~0_combout\ = (\module_fault_vector_pin[29]~input_o\ & (\module_fault_vector_pin[30]~input_o\ & (\module_fault_vector_pin[31]~input_o\ & \module_fault_vector_pin[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[29]~input_o\,
	datab => \module_fault_vector_pin[30]~input_o\,
	datac => \module_fault_vector_pin[31]~input_o\,
	datad => \module_fault_vector_pin[28]~input_o\,
	combout => \u_health_mon|Add28~0_combout\);

-- Location: LCCOMB_X41_Y64_N18
\u_health_mon|Add28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add28~1_combout\ = (\module_fault_vector_pin[29]~input_o\ & ((\module_fault_vector_pin[30]~input_o\ & ((!\module_fault_vector_pin[28]~input_o\) # (!\module_fault_vector_pin[31]~input_o\))) # (!\module_fault_vector_pin[30]~input_o\ & 
-- ((\module_fault_vector_pin[31]~input_o\) # (\module_fault_vector_pin[28]~input_o\))))) # (!\module_fault_vector_pin[29]~input_o\ & ((\module_fault_vector_pin[30]~input_o\ & ((\module_fault_vector_pin[31]~input_o\) # 
-- (\module_fault_vector_pin[28]~input_o\))) # (!\module_fault_vector_pin[30]~input_o\ & (\module_fault_vector_pin[31]~input_o\ & \module_fault_vector_pin[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[29]~input_o\,
	datab => \module_fault_vector_pin[30]~input_o\,
	datac => \module_fault_vector_pin[31]~input_o\,
	datad => \module_fault_vector_pin[28]~input_o\,
	combout => \u_health_mon|Add28~1_combout\);

-- Location: LCCOMB_X40_Y63_N28
\u_health_mon|Add32~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add32~1_combout\ = (\module_fault_vector_pin[32]~input_o\ & ((\module_fault_vector_pin[35]~input_o\ & ((!\module_fault_vector_pin[34]~input_o\) # (!\module_fault_vector_pin[33]~input_o\))) # (!\module_fault_vector_pin[35]~input_o\ & 
-- ((\module_fault_vector_pin[33]~input_o\) # (\module_fault_vector_pin[34]~input_o\))))) # (!\module_fault_vector_pin[32]~input_o\ & ((\module_fault_vector_pin[35]~input_o\ & ((\module_fault_vector_pin[33]~input_o\) # 
-- (\module_fault_vector_pin[34]~input_o\))) # (!\module_fault_vector_pin[35]~input_o\ & (\module_fault_vector_pin[33]~input_o\ & \module_fault_vector_pin[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[32]~input_o\,
	datab => \module_fault_vector_pin[35]~input_o\,
	datac => \module_fault_vector_pin[33]~input_o\,
	datad => \module_fault_vector_pin[34]~input_o\,
	combout => \u_health_mon|Add32~1_combout\);

-- Location: LCCOMB_X41_Y64_N20
\u_health_mon|Add28~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add28~2_combout\ = \module_fault_vector_pin[29]~input_o\ $ (\module_fault_vector_pin[30]~input_o\ $ (\module_fault_vector_pin[31]~input_o\ $ (\module_fault_vector_pin[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[29]~input_o\,
	datab => \module_fault_vector_pin[30]~input_o\,
	datac => \module_fault_vector_pin[31]~input_o\,
	datad => \module_fault_vector_pin[28]~input_o\,
	combout => \u_health_mon|Add28~2_combout\);

-- Location: LCCOMB_X40_Y63_N30
\u_health_mon|Add32~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add32~2_combout\ = \module_fault_vector_pin[32]~input_o\ $ (\module_fault_vector_pin[35]~input_o\ $ (\module_fault_vector_pin[33]~input_o\ $ (\module_fault_vector_pin[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[32]~input_o\,
	datab => \module_fault_vector_pin[35]~input_o\,
	datac => \module_fault_vector_pin[33]~input_o\,
	datad => \module_fault_vector_pin[34]~input_o\,
	combout => \u_health_mon|Add32~2_combout\);

-- Location: LCCOMB_X40_Y63_N8
\u_health_mon|Add30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add30~0_combout\ = (\u_health_mon|Add28~2_combout\ & (\u_health_mon|Add32~2_combout\ $ (VCC))) # (!\u_health_mon|Add28~2_combout\ & (\u_health_mon|Add32~2_combout\ & VCC))
-- \u_health_mon|Add30~1\ = CARRY((\u_health_mon|Add28~2_combout\ & \u_health_mon|Add32~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add28~2_combout\,
	datab => \u_health_mon|Add32~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add30~0_combout\,
	cout => \u_health_mon|Add30~1\);

-- Location: LCCOMB_X40_Y63_N10
\u_health_mon|Add30~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add30~2_combout\ = (\u_health_mon|Add28~1_combout\ & ((\u_health_mon|Add32~1_combout\ & (\u_health_mon|Add30~1\ & VCC)) # (!\u_health_mon|Add32~1_combout\ & (!\u_health_mon|Add30~1\)))) # (!\u_health_mon|Add28~1_combout\ & 
-- ((\u_health_mon|Add32~1_combout\ & (!\u_health_mon|Add30~1\)) # (!\u_health_mon|Add32~1_combout\ & ((\u_health_mon|Add30~1\) # (GND)))))
-- \u_health_mon|Add30~3\ = CARRY((\u_health_mon|Add28~1_combout\ & (!\u_health_mon|Add32~1_combout\ & !\u_health_mon|Add30~1\)) # (!\u_health_mon|Add28~1_combout\ & ((!\u_health_mon|Add30~1\) # (!\u_health_mon|Add32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add28~1_combout\,
	datab => \u_health_mon|Add32~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add30~1\,
	combout => \u_health_mon|Add30~2_combout\,
	cout => \u_health_mon|Add30~3\);

-- Location: LCCOMB_X40_Y63_N12
\u_health_mon|Add30~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add30~4_combout\ = ((\u_health_mon|Add32~0_combout\ $ (\u_health_mon|Add28~0_combout\ $ (!\u_health_mon|Add30~3\)))) # (GND)
-- \u_health_mon|Add30~5\ = CARRY((\u_health_mon|Add32~0_combout\ & ((\u_health_mon|Add28~0_combout\) # (!\u_health_mon|Add30~3\))) # (!\u_health_mon|Add32~0_combout\ & (\u_health_mon|Add28~0_combout\ & !\u_health_mon|Add30~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add32~0_combout\,
	datab => \u_health_mon|Add28~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add30~3\,
	combout => \u_health_mon|Add30~4_combout\,
	cout => \u_health_mon|Add30~5\);

-- Location: LCCOMB_X40_Y63_N14
\u_health_mon|Add30~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add30~6_combout\ = \u_health_mon|Add30~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add30~5\,
	combout => \u_health_mon|Add30~6_combout\);

-- Location: LCCOMB_X40_Y63_N16
\u_health_mon|Add26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add26~0_combout\ = (\u_health_mon|Add22~0_combout\ & (\u_health_mon|Add30~0_combout\ $ (VCC))) # (!\u_health_mon|Add22~0_combout\ & (\u_health_mon|Add30~0_combout\ & VCC))
-- \u_health_mon|Add26~1\ = CARRY((\u_health_mon|Add22~0_combout\ & \u_health_mon|Add30~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add22~0_combout\,
	datab => \u_health_mon|Add30~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add26~0_combout\,
	cout => \u_health_mon|Add26~1\);

-- Location: LCCOMB_X40_Y63_N18
\u_health_mon|Add26~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add26~2_combout\ = (\u_health_mon|Add30~2_combout\ & ((\u_health_mon|Add22~2_combout\ & (\u_health_mon|Add26~1\ & VCC)) # (!\u_health_mon|Add22~2_combout\ & (!\u_health_mon|Add26~1\)))) # (!\u_health_mon|Add30~2_combout\ & 
-- ((\u_health_mon|Add22~2_combout\ & (!\u_health_mon|Add26~1\)) # (!\u_health_mon|Add22~2_combout\ & ((\u_health_mon|Add26~1\) # (GND)))))
-- \u_health_mon|Add26~3\ = CARRY((\u_health_mon|Add30~2_combout\ & (!\u_health_mon|Add22~2_combout\ & !\u_health_mon|Add26~1\)) # (!\u_health_mon|Add30~2_combout\ & ((!\u_health_mon|Add26~1\) # (!\u_health_mon|Add22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add30~2_combout\,
	datab => \u_health_mon|Add22~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add26~1\,
	combout => \u_health_mon|Add26~2_combout\,
	cout => \u_health_mon|Add26~3\);

-- Location: LCCOMB_X40_Y63_N20
\u_health_mon|Add26~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add26~4_combout\ = ((\u_health_mon|Add30~4_combout\ $ (\u_health_mon|Add22~4_combout\ $ (!\u_health_mon|Add26~3\)))) # (GND)
-- \u_health_mon|Add26~5\ = CARRY((\u_health_mon|Add30~4_combout\ & ((\u_health_mon|Add22~4_combout\) # (!\u_health_mon|Add26~3\))) # (!\u_health_mon|Add30~4_combout\ & (\u_health_mon|Add22~4_combout\ & !\u_health_mon|Add26~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add30~4_combout\,
	datab => \u_health_mon|Add22~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add26~3\,
	combout => \u_health_mon|Add26~4_combout\,
	cout => \u_health_mon|Add26~5\);

-- Location: LCCOMB_X40_Y63_N22
\u_health_mon|Add26~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add26~6_combout\ = (\u_health_mon|Add22~6_combout\ & ((\u_health_mon|Add30~6_combout\ & (\u_health_mon|Add26~5\ & VCC)) # (!\u_health_mon|Add30~6_combout\ & (!\u_health_mon|Add26~5\)))) # (!\u_health_mon|Add22~6_combout\ & 
-- ((\u_health_mon|Add30~6_combout\ & (!\u_health_mon|Add26~5\)) # (!\u_health_mon|Add30~6_combout\ & ((\u_health_mon|Add26~5\) # (GND)))))
-- \u_health_mon|Add26~7\ = CARRY((\u_health_mon|Add22~6_combout\ & (!\u_health_mon|Add30~6_combout\ & !\u_health_mon|Add26~5\)) # (!\u_health_mon|Add22~6_combout\ & ((!\u_health_mon|Add26~5\) # (!\u_health_mon|Add30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add22~6_combout\,
	datab => \u_health_mon|Add30~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add26~5\,
	combout => \u_health_mon|Add26~6_combout\,
	cout => \u_health_mon|Add26~7\);

-- Location: LCCOMB_X49_Y39_N0
\u_health_mon|Add34~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add34~0_combout\ = (\u_health_mon|Add38~0_combout\ & (\u_health_mon|Add26~0_combout\ $ (VCC))) # (!\u_health_mon|Add38~0_combout\ & (\u_health_mon|Add26~0_combout\ & VCC))
-- \u_health_mon|Add34~1\ = CARRY((\u_health_mon|Add38~0_combout\ & \u_health_mon|Add26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add38~0_combout\,
	datab => \u_health_mon|Add26~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add34~0_combout\,
	cout => \u_health_mon|Add34~1\);

-- Location: LCCOMB_X49_Y39_N2
\u_health_mon|Add34~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add34~2_combout\ = (\u_health_mon|Add26~2_combout\ & ((\u_health_mon|Add38~2_combout\ & (\u_health_mon|Add34~1\ & VCC)) # (!\u_health_mon|Add38~2_combout\ & (!\u_health_mon|Add34~1\)))) # (!\u_health_mon|Add26~2_combout\ & 
-- ((\u_health_mon|Add38~2_combout\ & (!\u_health_mon|Add34~1\)) # (!\u_health_mon|Add38~2_combout\ & ((\u_health_mon|Add34~1\) # (GND)))))
-- \u_health_mon|Add34~3\ = CARRY((\u_health_mon|Add26~2_combout\ & (!\u_health_mon|Add38~2_combout\ & !\u_health_mon|Add34~1\)) # (!\u_health_mon|Add26~2_combout\ & ((!\u_health_mon|Add34~1\) # (!\u_health_mon|Add38~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add26~2_combout\,
	datab => \u_health_mon|Add38~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add34~1\,
	combout => \u_health_mon|Add34~2_combout\,
	cout => \u_health_mon|Add34~3\);

-- Location: LCCOMB_X49_Y39_N4
\u_health_mon|Add34~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add34~4_combout\ = ((\u_health_mon|Add26~4_combout\ $ (\u_health_mon|Add38~4_combout\ $ (!\u_health_mon|Add34~3\)))) # (GND)
-- \u_health_mon|Add34~5\ = CARRY((\u_health_mon|Add26~4_combout\ & ((\u_health_mon|Add38~4_combout\) # (!\u_health_mon|Add34~3\))) # (!\u_health_mon|Add26~4_combout\ & (\u_health_mon|Add38~4_combout\ & !\u_health_mon|Add34~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add26~4_combout\,
	datab => \u_health_mon|Add38~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add34~3\,
	combout => \u_health_mon|Add34~4_combout\,
	cout => \u_health_mon|Add34~5\);

-- Location: LCCOMB_X49_Y39_N6
\u_health_mon|Add34~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add34~6_combout\ = (\u_health_mon|Add38~6_combout\ & ((\u_health_mon|Add26~6_combout\ & (\u_health_mon|Add34~5\ & VCC)) # (!\u_health_mon|Add26~6_combout\ & (!\u_health_mon|Add34~5\)))) # (!\u_health_mon|Add38~6_combout\ & 
-- ((\u_health_mon|Add26~6_combout\ & (!\u_health_mon|Add34~5\)) # (!\u_health_mon|Add26~6_combout\ & ((\u_health_mon|Add34~5\) # (GND)))))
-- \u_health_mon|Add34~7\ = CARRY((\u_health_mon|Add38~6_combout\ & (!\u_health_mon|Add26~6_combout\ & !\u_health_mon|Add34~5\)) # (!\u_health_mon|Add38~6_combout\ & ((!\u_health_mon|Add34~5\) # (!\u_health_mon|Add26~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add38~6_combout\,
	datab => \u_health_mon|Add26~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add34~5\,
	combout => \u_health_mon|Add34~6_combout\,
	cout => \u_health_mon|Add34~7\);

-- Location: IOIBUF_X52_Y0_N15
\module_fault_vector_pin[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(3),
	o => \module_fault_vector_pin[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\module_fault_vector_pin[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(0),
	o => \module_fault_vector_pin[0]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\module_fault_vector_pin[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(2),
	o => \module_fault_vector_pin[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\module_fault_vector_pin[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(1),
	o => \module_fault_vector_pin[1]~input_o\);

-- Location: LCCOMB_X52_Y3_N24
\u_health_mon|Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add2~0_combout\ = (\module_fault_vector_pin[0]~input_o\ & (\module_fault_vector_pin[2]~input_o\ & \module_fault_vector_pin[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \module_fault_vector_pin[0]~input_o\,
	datac => \module_fault_vector_pin[2]~input_o\,
	datad => \module_fault_vector_pin[1]~input_o\,
	combout => \u_health_mon|Add2~0_combout\);

-- Location: LCCOMB_X52_Y3_N26
\u_health_mon|total_faults~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|total_faults~0_combout\ = (\module_fault_vector_pin[3]~input_o\ & ((\module_fault_vector_pin[0]~input_o\ & ((!\module_fault_vector_pin[1]~input_o\) # (!\module_fault_vector_pin[2]~input_o\))) # (!\module_fault_vector_pin[0]~input_o\ & 
-- ((\module_fault_vector_pin[2]~input_o\) # (\module_fault_vector_pin[1]~input_o\))))) # (!\module_fault_vector_pin[3]~input_o\ & ((\module_fault_vector_pin[0]~input_o\ & ((\module_fault_vector_pin[2]~input_o\) # (\module_fault_vector_pin[1]~input_o\))) # 
-- (!\module_fault_vector_pin[0]~input_o\ & (\module_fault_vector_pin[2]~input_o\ & \module_fault_vector_pin[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[3]~input_o\,
	datab => \module_fault_vector_pin[0]~input_o\,
	datac => \module_fault_vector_pin[2]~input_o\,
	datad => \module_fault_vector_pin[1]~input_o\,
	combout => \u_health_mon|total_faults~0_combout\);

-- Location: IOIBUF_X44_Y0_N8
\module_fault_vector_pin[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(4),
	o => \module_fault_vector_pin[4]~input_o\);

-- Location: LCCOMB_X52_Y3_N4
\u_health_mon|total_faults~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|total_faults~1_combout\ = \module_fault_vector_pin[3]~input_o\ $ (\module_fault_vector_pin[0]~input_o\ $ (\module_fault_vector_pin[2]~input_o\ $ (\module_fault_vector_pin[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[3]~input_o\,
	datab => \module_fault_vector_pin[0]~input_o\,
	datac => \module_fault_vector_pin[2]~input_o\,
	datad => \module_fault_vector_pin[1]~input_o\,
	combout => \u_health_mon|total_faults~1_combout\);

-- Location: IOIBUF_X52_Y0_N1
\module_fault_vector_pin[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(5),
	o => \module_fault_vector_pin[5]~input_o\);

-- Location: LCCOMB_X52_Y3_N6
\u_health_mon|Add3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add3~1_cout\ = CARRY(\module_fault_vector_pin[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[5]~input_o\,
	datad => VCC,
	cout => \u_health_mon|Add3~1_cout\);

-- Location: LCCOMB_X52_Y3_N8
\u_health_mon|Add3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add3~2_combout\ = (\module_fault_vector_pin[4]~input_o\ & ((\u_health_mon|total_faults~1_combout\ & (\u_health_mon|Add3~1_cout\ & VCC)) # (!\u_health_mon|total_faults~1_combout\ & (!\u_health_mon|Add3~1_cout\)))) # 
-- (!\module_fault_vector_pin[4]~input_o\ & ((\u_health_mon|total_faults~1_combout\ & (!\u_health_mon|Add3~1_cout\)) # (!\u_health_mon|total_faults~1_combout\ & ((\u_health_mon|Add3~1_cout\) # (GND)))))
-- \u_health_mon|Add3~3\ = CARRY((\module_fault_vector_pin[4]~input_o\ & (!\u_health_mon|total_faults~1_combout\ & !\u_health_mon|Add3~1_cout\)) # (!\module_fault_vector_pin[4]~input_o\ & ((!\u_health_mon|Add3~1_cout\) # 
-- (!\u_health_mon|total_faults~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[4]~input_o\,
	datab => \u_health_mon|total_faults~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add3~1_cout\,
	combout => \u_health_mon|Add3~2_combout\,
	cout => \u_health_mon|Add3~3\);

-- Location: LCCOMB_X52_Y3_N10
\u_health_mon|Add3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add3~4_combout\ = (\u_health_mon|total_faults~0_combout\ & (\u_health_mon|Add3~3\ $ (GND))) # (!\u_health_mon|total_faults~0_combout\ & (!\u_health_mon|Add3~3\ & VCC))
-- \u_health_mon|Add3~5\ = CARRY((\u_health_mon|total_faults~0_combout\ & !\u_health_mon|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|total_faults~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add3~3\,
	combout => \u_health_mon|Add3~4_combout\,
	cout => \u_health_mon|Add3~5\);

-- Location: LCCOMB_X52_Y3_N12
\u_health_mon|Add3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add3~6_combout\ = (\u_health_mon|Add3~5\ & (((!\u_health_mon|Add2~0_combout\)) # (!\module_fault_vector_pin[3]~input_o\))) # (!\u_health_mon|Add3~5\ & (((\module_fault_vector_pin[3]~input_o\ & \u_health_mon|Add2~0_combout\)) # (GND)))
-- \u_health_mon|Add3~7\ = CARRY(((!\u_health_mon|Add3~5\) # (!\u_health_mon|Add2~0_combout\)) # (!\module_fault_vector_pin[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[3]~input_o\,
	datab => \u_health_mon|Add2~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add3~5\,
	combout => \u_health_mon|Add3~6_combout\,
	cout => \u_health_mon|Add3~7\);

-- Location: LCCOMB_X52_Y3_N14
\u_health_mon|Add3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add3~8_combout\ = !\u_health_mon|Add3~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add3~7\,
	combout => \u_health_mon|Add3~8_combout\);

-- Location: IOIBUF_X54_Y0_N22
\module_fault_vector_pin[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(15),
	o => \module_fault_vector_pin[15]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\module_fault_vector_pin[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(14),
	o => \module_fault_vector_pin[14]~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\module_fault_vector_pin[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(13),
	o => \module_fault_vector_pin[13]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\module_fault_vector_pin[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(12),
	o => \module_fault_vector_pin[12]~input_o\);

-- Location: LCCOMB_X54_Y3_N16
\u_health_mon|Add12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add12~0_combout\ = (\module_fault_vector_pin[15]~input_o\ & (\module_fault_vector_pin[14]~input_o\ & (\module_fault_vector_pin[13]~input_o\ & \module_fault_vector_pin[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[15]~input_o\,
	datab => \module_fault_vector_pin[14]~input_o\,
	datac => \module_fault_vector_pin[13]~input_o\,
	datad => \module_fault_vector_pin[12]~input_o\,
	combout => \u_health_mon|Add12~0_combout\);

-- Location: IOIBUF_X54_Y0_N15
\module_fault_vector_pin[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(16),
	o => \module_fault_vector_pin[16]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\module_fault_vector_pin[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(18),
	o => \module_fault_vector_pin[18]~input_o\);

-- Location: IOIBUF_X58_Y0_N15
\module_fault_vector_pin[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(17),
	o => \module_fault_vector_pin[17]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\module_fault_vector_pin[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(19),
	o => \module_fault_vector_pin[19]~input_o\);

-- Location: LCCOMB_X54_Y3_N18
\u_health_mon|Add16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add16~0_combout\ = (\module_fault_vector_pin[16]~input_o\ & (\module_fault_vector_pin[18]~input_o\ & (\module_fault_vector_pin[17]~input_o\ & \module_fault_vector_pin[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[16]~input_o\,
	datab => \module_fault_vector_pin[18]~input_o\,
	datac => \module_fault_vector_pin[17]~input_o\,
	datad => \module_fault_vector_pin[19]~input_o\,
	combout => \u_health_mon|Add16~0_combout\);

-- Location: LCCOMB_X54_Y3_N30
\u_health_mon|Add16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add16~1_combout\ = (\module_fault_vector_pin[16]~input_o\ & ((\module_fault_vector_pin[18]~input_o\ & ((!\module_fault_vector_pin[19]~input_o\) # (!\module_fault_vector_pin[17]~input_o\))) # (!\module_fault_vector_pin[18]~input_o\ & 
-- ((\module_fault_vector_pin[17]~input_o\) # (\module_fault_vector_pin[19]~input_o\))))) # (!\module_fault_vector_pin[16]~input_o\ & ((\module_fault_vector_pin[18]~input_o\ & ((\module_fault_vector_pin[17]~input_o\) # 
-- (\module_fault_vector_pin[19]~input_o\))) # (!\module_fault_vector_pin[18]~input_o\ & (\module_fault_vector_pin[17]~input_o\ & \module_fault_vector_pin[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[16]~input_o\,
	datab => \module_fault_vector_pin[18]~input_o\,
	datac => \module_fault_vector_pin[17]~input_o\,
	datad => \module_fault_vector_pin[19]~input_o\,
	combout => \u_health_mon|Add16~1_combout\);

-- Location: LCCOMB_X54_Y3_N28
\u_health_mon|Add12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add12~1_combout\ = (\module_fault_vector_pin[15]~input_o\ & ((\module_fault_vector_pin[14]~input_o\ & ((!\module_fault_vector_pin[12]~input_o\) # (!\module_fault_vector_pin[13]~input_o\))) # (!\module_fault_vector_pin[14]~input_o\ & 
-- ((\module_fault_vector_pin[13]~input_o\) # (\module_fault_vector_pin[12]~input_o\))))) # (!\module_fault_vector_pin[15]~input_o\ & ((\module_fault_vector_pin[14]~input_o\ & ((\module_fault_vector_pin[13]~input_o\) # 
-- (\module_fault_vector_pin[12]~input_o\))) # (!\module_fault_vector_pin[14]~input_o\ & (\module_fault_vector_pin[13]~input_o\ & \module_fault_vector_pin[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[15]~input_o\,
	datab => \module_fault_vector_pin[14]~input_o\,
	datac => \module_fault_vector_pin[13]~input_o\,
	datad => \module_fault_vector_pin[12]~input_o\,
	combout => \u_health_mon|Add12~1_combout\);

-- Location: LCCOMB_X54_Y3_N10
\u_health_mon|Add16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add16~2_combout\ = \module_fault_vector_pin[16]~input_o\ $ (\module_fault_vector_pin[18]~input_o\ $ (\module_fault_vector_pin[17]~input_o\ $ (\module_fault_vector_pin[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[16]~input_o\,
	datab => \module_fault_vector_pin[18]~input_o\,
	datac => \module_fault_vector_pin[17]~input_o\,
	datad => \module_fault_vector_pin[19]~input_o\,
	combout => \u_health_mon|Add16~2_combout\);

-- Location: LCCOMB_X54_Y3_N8
\u_health_mon|Add12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add12~2_combout\ = \module_fault_vector_pin[15]~input_o\ $ (\module_fault_vector_pin[14]~input_o\ $ (\module_fault_vector_pin[13]~input_o\ $ (\module_fault_vector_pin[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[15]~input_o\,
	datab => \module_fault_vector_pin[14]~input_o\,
	datac => \module_fault_vector_pin[13]~input_o\,
	datad => \module_fault_vector_pin[12]~input_o\,
	combout => \u_health_mon|Add12~2_combout\);

-- Location: LCCOMB_X54_Y3_N20
\u_health_mon|Add14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add14~0_combout\ = (\u_health_mon|Add16~2_combout\ & (\u_health_mon|Add12~2_combout\ $ (VCC))) # (!\u_health_mon|Add16~2_combout\ & (\u_health_mon|Add12~2_combout\ & VCC))
-- \u_health_mon|Add14~1\ = CARRY((\u_health_mon|Add16~2_combout\ & \u_health_mon|Add12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add16~2_combout\,
	datab => \u_health_mon|Add12~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add14~0_combout\,
	cout => \u_health_mon|Add14~1\);

-- Location: LCCOMB_X54_Y3_N22
\u_health_mon|Add14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add14~2_combout\ = (\u_health_mon|Add16~1_combout\ & ((\u_health_mon|Add12~1_combout\ & (\u_health_mon|Add14~1\ & VCC)) # (!\u_health_mon|Add12~1_combout\ & (!\u_health_mon|Add14~1\)))) # (!\u_health_mon|Add16~1_combout\ & 
-- ((\u_health_mon|Add12~1_combout\ & (!\u_health_mon|Add14~1\)) # (!\u_health_mon|Add12~1_combout\ & ((\u_health_mon|Add14~1\) # (GND)))))
-- \u_health_mon|Add14~3\ = CARRY((\u_health_mon|Add16~1_combout\ & (!\u_health_mon|Add12~1_combout\ & !\u_health_mon|Add14~1\)) # (!\u_health_mon|Add16~1_combout\ & ((!\u_health_mon|Add14~1\) # (!\u_health_mon|Add12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add16~1_combout\,
	datab => \u_health_mon|Add12~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add14~1\,
	combout => \u_health_mon|Add14~2_combout\,
	cout => \u_health_mon|Add14~3\);

-- Location: LCCOMB_X54_Y3_N24
\u_health_mon|Add14~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add14~4_combout\ = ((\u_health_mon|Add12~0_combout\ $ (\u_health_mon|Add16~0_combout\ $ (!\u_health_mon|Add14~3\)))) # (GND)
-- \u_health_mon|Add14~5\ = CARRY((\u_health_mon|Add12~0_combout\ & ((\u_health_mon|Add16~0_combout\) # (!\u_health_mon|Add14~3\))) # (!\u_health_mon|Add12~0_combout\ & (\u_health_mon|Add16~0_combout\ & !\u_health_mon|Add14~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add12~0_combout\,
	datab => \u_health_mon|Add16~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add14~3\,
	combout => \u_health_mon|Add14~4_combout\,
	cout => \u_health_mon|Add14~5\);

-- Location: LCCOMB_X54_Y3_N26
\u_health_mon|Add14~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add14~6_combout\ = \u_health_mon|Add14~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add14~5\,
	combout => \u_health_mon|Add14~6_combout\);

-- Location: IOIBUF_X31_Y0_N1
\module_fault_vector_pin[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(9),
	o => \module_fault_vector_pin[9]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\module_fault_vector_pin[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(8),
	o => \module_fault_vector_pin[8]~input_o\);

-- Location: LCCOMB_X39_Y3_N10
\u_health_mon|Add7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add7~0_combout\ = (\module_fault_vector_pin[9]~input_o\ & \module_fault_vector_pin[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \module_fault_vector_pin[9]~input_o\,
	datad => \module_fault_vector_pin[8]~input_o\,
	combout => \u_health_mon|Add7~0_combout\);

-- Location: IOIBUF_X33_Y0_N15
\module_fault_vector_pin[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(10),
	o => \module_fault_vector_pin[10]~input_o\);

-- Location: IOIBUF_X33_Y0_N22
\module_fault_vector_pin[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(11),
	o => \module_fault_vector_pin[11]~input_o\);

-- Location: LCCOMB_X39_Y3_N8
\u_health_mon|Add9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add9~0_combout\ = (\module_fault_vector_pin[10]~input_o\ & \module_fault_vector_pin[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \module_fault_vector_pin[10]~input_o\,
	datad => \module_fault_vector_pin[11]~input_o\,
	combout => \u_health_mon|Add9~0_combout\);

-- Location: LCCOMB_X39_Y3_N12
\u_health_mon|Add9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add9~1_combout\ = \module_fault_vector_pin[10]~input_o\ $ (\module_fault_vector_pin[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \module_fault_vector_pin[10]~input_o\,
	datad => \module_fault_vector_pin[11]~input_o\,
	combout => \u_health_mon|Add9~1_combout\);

-- Location: LCCOMB_X39_Y3_N30
\u_health_mon|Add7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add7~1_combout\ = \module_fault_vector_pin[9]~input_o\ $ (\module_fault_vector_pin[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \module_fault_vector_pin[9]~input_o\,
	datad => \module_fault_vector_pin[8]~input_o\,
	combout => \u_health_mon|Add7~1_combout\);

-- Location: IOIBUF_X31_Y0_N15
\module_fault_vector_pin[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(7),
	o => \module_fault_vector_pin[7]~input_o\);

-- Location: LCCOMB_X39_Y3_N20
\u_health_mon|Add8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add8~1_cout\ = CARRY(\module_fault_vector_pin[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \module_fault_vector_pin[7]~input_o\,
	datad => VCC,
	cout => \u_health_mon|Add8~1_cout\);

-- Location: LCCOMB_X39_Y3_N22
\u_health_mon|Add8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add8~2_combout\ = (\u_health_mon|Add9~1_combout\ & ((\u_health_mon|Add7~1_combout\ & (\u_health_mon|Add8~1_cout\ & VCC)) # (!\u_health_mon|Add7~1_combout\ & (!\u_health_mon|Add8~1_cout\)))) # (!\u_health_mon|Add9~1_combout\ & 
-- ((\u_health_mon|Add7~1_combout\ & (!\u_health_mon|Add8~1_cout\)) # (!\u_health_mon|Add7~1_combout\ & ((\u_health_mon|Add8~1_cout\) # (GND)))))
-- \u_health_mon|Add8~3\ = CARRY((\u_health_mon|Add9~1_combout\ & (!\u_health_mon|Add7~1_combout\ & !\u_health_mon|Add8~1_cout\)) # (!\u_health_mon|Add9~1_combout\ & ((!\u_health_mon|Add8~1_cout\) # (!\u_health_mon|Add7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add9~1_combout\,
	datab => \u_health_mon|Add7~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add8~1_cout\,
	combout => \u_health_mon|Add8~2_combout\,
	cout => \u_health_mon|Add8~3\);

-- Location: LCCOMB_X39_Y3_N24
\u_health_mon|Add8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add8~4_combout\ = ((\u_health_mon|Add7~0_combout\ $ (\u_health_mon|Add9~0_combout\ $ (!\u_health_mon|Add8~3\)))) # (GND)
-- \u_health_mon|Add8~5\ = CARRY((\u_health_mon|Add7~0_combout\ & ((\u_health_mon|Add9~0_combout\) # (!\u_health_mon|Add8~3\))) # (!\u_health_mon|Add7~0_combout\ & (\u_health_mon|Add9~0_combout\ & !\u_health_mon|Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add7~0_combout\,
	datab => \u_health_mon|Add9~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add8~3\,
	combout => \u_health_mon|Add8~4_combout\,
	cout => \u_health_mon|Add8~5\);

-- Location: LCCOMB_X39_Y3_N26
\u_health_mon|Add8~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add8~6_combout\ = \u_health_mon|Add8~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add8~5\,
	combout => \u_health_mon|Add8~6_combout\);

-- Location: IOIBUF_X47_Y0_N8
\module_fault_vector_pin[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(6),
	o => \module_fault_vector_pin[6]~input_o\);

-- Location: LCCOMB_X50_Y3_N20
\u_health_mon|Add10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add10~1_cout\ = CARRY(\module_fault_vector_pin[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \module_fault_vector_pin[6]~input_o\,
	datad => VCC,
	cout => \u_health_mon|Add10~1_cout\);

-- Location: LCCOMB_X50_Y3_N22
\u_health_mon|Add10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add10~2_combout\ = (\u_health_mon|Add14~0_combout\ & ((\u_health_mon|Add8~2_combout\ & (\u_health_mon|Add10~1_cout\ & VCC)) # (!\u_health_mon|Add8~2_combout\ & (!\u_health_mon|Add10~1_cout\)))) # (!\u_health_mon|Add14~0_combout\ & 
-- ((\u_health_mon|Add8~2_combout\ & (!\u_health_mon|Add10~1_cout\)) # (!\u_health_mon|Add8~2_combout\ & ((\u_health_mon|Add10~1_cout\) # (GND)))))
-- \u_health_mon|Add10~3\ = CARRY((\u_health_mon|Add14~0_combout\ & (!\u_health_mon|Add8~2_combout\ & !\u_health_mon|Add10~1_cout\)) # (!\u_health_mon|Add14~0_combout\ & ((!\u_health_mon|Add10~1_cout\) # (!\u_health_mon|Add8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add14~0_combout\,
	datab => \u_health_mon|Add8~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add10~1_cout\,
	combout => \u_health_mon|Add10~2_combout\,
	cout => \u_health_mon|Add10~3\);

-- Location: LCCOMB_X50_Y3_N24
\u_health_mon|Add10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add10~4_combout\ = ((\u_health_mon|Add8~4_combout\ $ (\u_health_mon|Add14~2_combout\ $ (!\u_health_mon|Add10~3\)))) # (GND)
-- \u_health_mon|Add10~5\ = CARRY((\u_health_mon|Add8~4_combout\ & ((\u_health_mon|Add14~2_combout\) # (!\u_health_mon|Add10~3\))) # (!\u_health_mon|Add8~4_combout\ & (\u_health_mon|Add14~2_combout\ & !\u_health_mon|Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add8~4_combout\,
	datab => \u_health_mon|Add14~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add10~3\,
	combout => \u_health_mon|Add10~4_combout\,
	cout => \u_health_mon|Add10~5\);

-- Location: LCCOMB_X50_Y3_N26
\u_health_mon|Add10~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add10~6_combout\ = (\u_health_mon|Add14~4_combout\ & ((\u_health_mon|Add8~6_combout\ & (\u_health_mon|Add10~5\ & VCC)) # (!\u_health_mon|Add8~6_combout\ & (!\u_health_mon|Add10~5\)))) # (!\u_health_mon|Add14~4_combout\ & 
-- ((\u_health_mon|Add8~6_combout\ & (!\u_health_mon|Add10~5\)) # (!\u_health_mon|Add8~6_combout\ & ((\u_health_mon|Add10~5\) # (GND)))))
-- \u_health_mon|Add10~7\ = CARRY((\u_health_mon|Add14~4_combout\ & (!\u_health_mon|Add8~6_combout\ & !\u_health_mon|Add10~5\)) # (!\u_health_mon|Add14~4_combout\ & ((!\u_health_mon|Add10~5\) # (!\u_health_mon|Add8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add14~4_combout\,
	datab => \u_health_mon|Add8~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add10~5\,
	combout => \u_health_mon|Add10~6_combout\,
	cout => \u_health_mon|Add10~7\);

-- Location: LCCOMB_X50_Y3_N28
\u_health_mon|Add10~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add10~8_combout\ = (\u_health_mon|Add14~6_combout\ & (\u_health_mon|Add10~7\ $ (GND))) # (!\u_health_mon|Add14~6_combout\ & (!\u_health_mon|Add10~7\ & VCC))
-- \u_health_mon|Add10~9\ = CARRY((\u_health_mon|Add14~6_combout\ & !\u_health_mon|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add14~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add10~7\,
	combout => \u_health_mon|Add10~8_combout\,
	cout => \u_health_mon|Add10~9\);

-- Location: LCCOMB_X50_Y3_N0
\u_health_mon|Add18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add18~0_combout\ = (\u_health_mon|Add10~2_combout\ & (\u_health_mon|Add3~2_combout\ $ (VCC))) # (!\u_health_mon|Add10~2_combout\ & (\u_health_mon|Add3~2_combout\ & VCC))
-- \u_health_mon|Add18~1\ = CARRY((\u_health_mon|Add10~2_combout\ & \u_health_mon|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add10~2_combout\,
	datab => \u_health_mon|Add3~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add18~0_combout\,
	cout => \u_health_mon|Add18~1\);

-- Location: LCCOMB_X50_Y3_N2
\u_health_mon|Add18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add18~2_combout\ = (\u_health_mon|Add3~4_combout\ & ((\u_health_mon|Add10~4_combout\ & (\u_health_mon|Add18~1\ & VCC)) # (!\u_health_mon|Add10~4_combout\ & (!\u_health_mon|Add18~1\)))) # (!\u_health_mon|Add3~4_combout\ & 
-- ((\u_health_mon|Add10~4_combout\ & (!\u_health_mon|Add18~1\)) # (!\u_health_mon|Add10~4_combout\ & ((\u_health_mon|Add18~1\) # (GND)))))
-- \u_health_mon|Add18~3\ = CARRY((\u_health_mon|Add3~4_combout\ & (!\u_health_mon|Add10~4_combout\ & !\u_health_mon|Add18~1\)) # (!\u_health_mon|Add3~4_combout\ & ((!\u_health_mon|Add18~1\) # (!\u_health_mon|Add10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add3~4_combout\,
	datab => \u_health_mon|Add10~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add18~1\,
	combout => \u_health_mon|Add18~2_combout\,
	cout => \u_health_mon|Add18~3\);

-- Location: LCCOMB_X50_Y3_N4
\u_health_mon|Add18~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add18~4_combout\ = ((\u_health_mon|Add10~6_combout\ $ (\u_health_mon|Add3~6_combout\ $ (!\u_health_mon|Add18~3\)))) # (GND)
-- \u_health_mon|Add18~5\ = CARRY((\u_health_mon|Add10~6_combout\ & ((\u_health_mon|Add3~6_combout\) # (!\u_health_mon|Add18~3\))) # (!\u_health_mon|Add10~6_combout\ & (\u_health_mon|Add3~6_combout\ & !\u_health_mon|Add18~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add10~6_combout\,
	datab => \u_health_mon|Add3~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add18~3\,
	combout => \u_health_mon|Add18~4_combout\,
	cout => \u_health_mon|Add18~5\);

-- Location: LCCOMB_X50_Y3_N6
\u_health_mon|Add18~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add18~6_combout\ = (\u_health_mon|Add3~8_combout\ & ((\u_health_mon|Add10~8_combout\ & (\u_health_mon|Add18~5\ & VCC)) # (!\u_health_mon|Add10~8_combout\ & (!\u_health_mon|Add18~5\)))) # (!\u_health_mon|Add3~8_combout\ & 
-- ((\u_health_mon|Add10~8_combout\ & (!\u_health_mon|Add18~5\)) # (!\u_health_mon|Add10~8_combout\ & ((\u_health_mon|Add18~5\) # (GND)))))
-- \u_health_mon|Add18~7\ = CARRY((\u_health_mon|Add3~8_combout\ & (!\u_health_mon|Add10~8_combout\ & !\u_health_mon|Add18~5\)) # (!\u_health_mon|Add3~8_combout\ & ((!\u_health_mon|Add18~5\) # (!\u_health_mon|Add10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add3~8_combout\,
	datab => \u_health_mon|Add10~8_combout\,
	datad => VCC,
	cin => \u_health_mon|Add18~5\,
	combout => \u_health_mon|Add18~6_combout\,
	cout => \u_health_mon|Add18~7\);

-- Location: IOIBUF_X47_Y0_N1
\module_fault_vector_pin[50]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(50),
	o => \module_fault_vector_pin[50]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\module_fault_vector_pin[48]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(48),
	o => \module_fault_vector_pin[48]~input_o\);

-- Location: IOIBUF_X44_Y0_N15
\module_fault_vector_pin[51]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(51),
	o => \module_fault_vector_pin[51]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\module_fault_vector_pin[49]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(49),
	o => \module_fault_vector_pin[49]~input_o\);

-- Location: LCCOMB_X49_Y3_N10
\u_health_mon|Add48~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add48~0_combout\ = (\module_fault_vector_pin[50]~input_o\ & (\module_fault_vector_pin[48]~input_o\ & (\module_fault_vector_pin[51]~input_o\ & \module_fault_vector_pin[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[50]~input_o\,
	datab => \module_fault_vector_pin[48]~input_o\,
	datac => \module_fault_vector_pin[51]~input_o\,
	datad => \module_fault_vector_pin[49]~input_o\,
	combout => \u_health_mon|Add48~0_combout\);

-- Location: IOIBUF_X49_Y0_N15
\module_fault_vector_pin[45]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(45),
	o => \module_fault_vector_pin[45]~input_o\);

-- Location: IOIBUF_X44_Y0_N22
\module_fault_vector_pin[44]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(44),
	o => \module_fault_vector_pin[44]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\module_fault_vector_pin[47]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(47),
	o => \module_fault_vector_pin[47]~input_o\);

-- Location: IOIBUF_X65_Y0_N8
\module_fault_vector_pin[46]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(46),
	o => \module_fault_vector_pin[46]~input_o\);

-- Location: LCCOMB_X49_Y3_N8
\u_health_mon|Add44~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add44~0_combout\ = (\module_fault_vector_pin[45]~input_o\ & (\module_fault_vector_pin[44]~input_o\ & (\module_fault_vector_pin[47]~input_o\ & \module_fault_vector_pin[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[45]~input_o\,
	datab => \module_fault_vector_pin[44]~input_o\,
	datac => \module_fault_vector_pin[47]~input_o\,
	datad => \module_fault_vector_pin[46]~input_o\,
	combout => \u_health_mon|Add44~0_combout\);

-- Location: LCCOMB_X49_Y3_N30
\u_health_mon|Add48~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add48~1_combout\ = (\module_fault_vector_pin[50]~input_o\ & ((\module_fault_vector_pin[48]~input_o\ & ((!\module_fault_vector_pin[49]~input_o\) # (!\module_fault_vector_pin[51]~input_o\))) # (!\module_fault_vector_pin[48]~input_o\ & 
-- ((\module_fault_vector_pin[51]~input_o\) # (\module_fault_vector_pin[49]~input_o\))))) # (!\module_fault_vector_pin[50]~input_o\ & ((\module_fault_vector_pin[48]~input_o\ & ((\module_fault_vector_pin[51]~input_o\) # 
-- (\module_fault_vector_pin[49]~input_o\))) # (!\module_fault_vector_pin[48]~input_o\ & (\module_fault_vector_pin[51]~input_o\ & \module_fault_vector_pin[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[50]~input_o\,
	datab => \module_fault_vector_pin[48]~input_o\,
	datac => \module_fault_vector_pin[51]~input_o\,
	datad => \module_fault_vector_pin[49]~input_o\,
	combout => \u_health_mon|Add48~1_combout\);

-- Location: LCCOMB_X49_Y3_N28
\u_health_mon|Add44~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add44~1_combout\ = (\module_fault_vector_pin[45]~input_o\ & ((\module_fault_vector_pin[44]~input_o\ & ((!\module_fault_vector_pin[46]~input_o\) # (!\module_fault_vector_pin[47]~input_o\))) # (!\module_fault_vector_pin[44]~input_o\ & 
-- ((\module_fault_vector_pin[47]~input_o\) # (\module_fault_vector_pin[46]~input_o\))))) # (!\module_fault_vector_pin[45]~input_o\ & ((\module_fault_vector_pin[44]~input_o\ & ((\module_fault_vector_pin[47]~input_o\) # 
-- (\module_fault_vector_pin[46]~input_o\))) # (!\module_fault_vector_pin[44]~input_o\ & (\module_fault_vector_pin[47]~input_o\ & \module_fault_vector_pin[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[45]~input_o\,
	datab => \module_fault_vector_pin[44]~input_o\,
	datac => \module_fault_vector_pin[47]~input_o\,
	datad => \module_fault_vector_pin[46]~input_o\,
	combout => \u_health_mon|Add44~1_combout\);

-- Location: LCCOMB_X49_Y3_N12
\u_health_mon|Add44~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add44~2_combout\ = \module_fault_vector_pin[45]~input_o\ $ (\module_fault_vector_pin[44]~input_o\ $ (\module_fault_vector_pin[47]~input_o\ $ (\module_fault_vector_pin[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[45]~input_o\,
	datab => \module_fault_vector_pin[44]~input_o\,
	datac => \module_fault_vector_pin[47]~input_o\,
	datad => \module_fault_vector_pin[46]~input_o\,
	combout => \u_health_mon|Add44~2_combout\);

-- Location: LCCOMB_X49_Y3_N14
\u_health_mon|Add48~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add48~2_combout\ = \module_fault_vector_pin[50]~input_o\ $ (\module_fault_vector_pin[48]~input_o\ $ (\module_fault_vector_pin[51]~input_o\ $ (\module_fault_vector_pin[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[50]~input_o\,
	datab => \module_fault_vector_pin[48]~input_o\,
	datac => \module_fault_vector_pin[51]~input_o\,
	datad => \module_fault_vector_pin[49]~input_o\,
	combout => \u_health_mon|Add48~2_combout\);

-- Location: LCCOMB_X49_Y3_N0
\u_health_mon|Add46~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add46~0_combout\ = (\u_health_mon|Add44~2_combout\ & (\u_health_mon|Add48~2_combout\ $ (VCC))) # (!\u_health_mon|Add44~2_combout\ & (\u_health_mon|Add48~2_combout\ & VCC))
-- \u_health_mon|Add46~1\ = CARRY((\u_health_mon|Add44~2_combout\ & \u_health_mon|Add48~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add44~2_combout\,
	datab => \u_health_mon|Add48~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add46~0_combout\,
	cout => \u_health_mon|Add46~1\);

-- Location: LCCOMB_X49_Y3_N2
\u_health_mon|Add46~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add46~2_combout\ = (\u_health_mon|Add48~1_combout\ & ((\u_health_mon|Add44~1_combout\ & (\u_health_mon|Add46~1\ & VCC)) # (!\u_health_mon|Add44~1_combout\ & (!\u_health_mon|Add46~1\)))) # (!\u_health_mon|Add48~1_combout\ & 
-- ((\u_health_mon|Add44~1_combout\ & (!\u_health_mon|Add46~1\)) # (!\u_health_mon|Add44~1_combout\ & ((\u_health_mon|Add46~1\) # (GND)))))
-- \u_health_mon|Add46~3\ = CARRY((\u_health_mon|Add48~1_combout\ & (!\u_health_mon|Add44~1_combout\ & !\u_health_mon|Add46~1\)) # (!\u_health_mon|Add48~1_combout\ & ((!\u_health_mon|Add46~1\) # (!\u_health_mon|Add44~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add48~1_combout\,
	datab => \u_health_mon|Add44~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add46~1\,
	combout => \u_health_mon|Add46~2_combout\,
	cout => \u_health_mon|Add46~3\);

-- Location: LCCOMB_X49_Y3_N4
\u_health_mon|Add46~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add46~4_combout\ = ((\u_health_mon|Add48~0_combout\ $ (\u_health_mon|Add44~0_combout\ $ (!\u_health_mon|Add46~3\)))) # (GND)
-- \u_health_mon|Add46~5\ = CARRY((\u_health_mon|Add48~0_combout\ & ((\u_health_mon|Add44~0_combout\) # (!\u_health_mon|Add46~3\))) # (!\u_health_mon|Add48~0_combout\ & (\u_health_mon|Add44~0_combout\ & !\u_health_mon|Add46~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add48~0_combout\,
	datab => \u_health_mon|Add44~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add46~3\,
	combout => \u_health_mon|Add46~4_combout\,
	cout => \u_health_mon|Add46~5\);

-- Location: LCCOMB_X49_Y3_N6
\u_health_mon|Add46~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add46~6_combout\ = \u_health_mon|Add46~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add46~5\,
	combout => \u_health_mon|Add46~6_combout\);

-- Location: LCCOMB_X49_Y3_N16
\u_health_mon|Add42~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add42~0_combout\ = (\u_health_mon|Add46~0_combout\ & (\u_health_mon|Add18~0_combout\ $ (VCC))) # (!\u_health_mon|Add46~0_combout\ & (\u_health_mon|Add18~0_combout\ & VCC))
-- \u_health_mon|Add42~1\ = CARRY((\u_health_mon|Add46~0_combout\ & \u_health_mon|Add18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add46~0_combout\,
	datab => \u_health_mon|Add18~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add42~0_combout\,
	cout => \u_health_mon|Add42~1\);

-- Location: LCCOMB_X49_Y3_N18
\u_health_mon|Add42~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add42~2_combout\ = (\u_health_mon|Add18~2_combout\ & ((\u_health_mon|Add46~2_combout\ & (\u_health_mon|Add42~1\ & VCC)) # (!\u_health_mon|Add46~2_combout\ & (!\u_health_mon|Add42~1\)))) # (!\u_health_mon|Add18~2_combout\ & 
-- ((\u_health_mon|Add46~2_combout\ & (!\u_health_mon|Add42~1\)) # (!\u_health_mon|Add46~2_combout\ & ((\u_health_mon|Add42~1\) # (GND)))))
-- \u_health_mon|Add42~3\ = CARRY((\u_health_mon|Add18~2_combout\ & (!\u_health_mon|Add46~2_combout\ & !\u_health_mon|Add42~1\)) # (!\u_health_mon|Add18~2_combout\ & ((!\u_health_mon|Add42~1\) # (!\u_health_mon|Add46~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add18~2_combout\,
	datab => \u_health_mon|Add46~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add42~1\,
	combout => \u_health_mon|Add42~2_combout\,
	cout => \u_health_mon|Add42~3\);

-- Location: LCCOMB_X49_Y3_N20
\u_health_mon|Add42~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add42~4_combout\ = ((\u_health_mon|Add18~4_combout\ $ (\u_health_mon|Add46~4_combout\ $ (!\u_health_mon|Add42~3\)))) # (GND)
-- \u_health_mon|Add42~5\ = CARRY((\u_health_mon|Add18~4_combout\ & ((\u_health_mon|Add46~4_combout\) # (!\u_health_mon|Add42~3\))) # (!\u_health_mon|Add18~4_combout\ & (\u_health_mon|Add46~4_combout\ & !\u_health_mon|Add42~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add18~4_combout\,
	datab => \u_health_mon|Add46~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add42~3\,
	combout => \u_health_mon|Add42~4_combout\,
	cout => \u_health_mon|Add42~5\);

-- Location: LCCOMB_X49_Y3_N22
\u_health_mon|Add42~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add42~6_combout\ = (\u_health_mon|Add18~6_combout\ & ((\u_health_mon|Add46~6_combout\ & (\u_health_mon|Add42~5\ & VCC)) # (!\u_health_mon|Add46~6_combout\ & (!\u_health_mon|Add42~5\)))) # (!\u_health_mon|Add18~6_combout\ & 
-- ((\u_health_mon|Add46~6_combout\ & (!\u_health_mon|Add42~5\)) # (!\u_health_mon|Add46~6_combout\ & ((\u_health_mon|Add42~5\) # (GND)))))
-- \u_health_mon|Add42~7\ = CARRY((\u_health_mon|Add18~6_combout\ & (!\u_health_mon|Add46~6_combout\ & !\u_health_mon|Add42~5\)) # (!\u_health_mon|Add18~6_combout\ & ((!\u_health_mon|Add42~5\) # (!\u_health_mon|Add46~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add18~6_combout\,
	datab => \u_health_mon|Add46~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add42~5\,
	combout => \u_health_mon|Add42~6_combout\,
	cout => \u_health_mon|Add42~7\);

-- Location: LCCOMB_X49_Y39_N14
\u_health_mon|Add50~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add50~0_combout\ = (\u_health_mon|Add42~0_combout\ & (\u_health_mon|Add34~0_combout\ $ (VCC))) # (!\u_health_mon|Add42~0_combout\ & (\u_health_mon|Add34~0_combout\ & VCC))
-- \u_health_mon|Add50~1\ = CARRY((\u_health_mon|Add42~0_combout\ & \u_health_mon|Add34~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add42~0_combout\,
	datab => \u_health_mon|Add34~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add50~0_combout\,
	cout => \u_health_mon|Add50~1\);

-- Location: LCCOMB_X49_Y39_N16
\u_health_mon|Add50~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add50~2_combout\ = (\u_health_mon|Add42~2_combout\ & ((\u_health_mon|Add34~2_combout\ & (\u_health_mon|Add50~1\ & VCC)) # (!\u_health_mon|Add34~2_combout\ & (!\u_health_mon|Add50~1\)))) # (!\u_health_mon|Add42~2_combout\ & 
-- ((\u_health_mon|Add34~2_combout\ & (!\u_health_mon|Add50~1\)) # (!\u_health_mon|Add34~2_combout\ & ((\u_health_mon|Add50~1\) # (GND)))))
-- \u_health_mon|Add50~3\ = CARRY((\u_health_mon|Add42~2_combout\ & (!\u_health_mon|Add34~2_combout\ & !\u_health_mon|Add50~1\)) # (!\u_health_mon|Add42~2_combout\ & ((!\u_health_mon|Add50~1\) # (!\u_health_mon|Add34~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add42~2_combout\,
	datab => \u_health_mon|Add34~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add50~1\,
	combout => \u_health_mon|Add50~2_combout\,
	cout => \u_health_mon|Add50~3\);

-- Location: LCCOMB_X49_Y39_N18
\u_health_mon|Add50~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add50~4_combout\ = ((\u_health_mon|Add42~4_combout\ $ (\u_health_mon|Add34~4_combout\ $ (!\u_health_mon|Add50~3\)))) # (GND)
-- \u_health_mon|Add50~5\ = CARRY((\u_health_mon|Add42~4_combout\ & ((\u_health_mon|Add34~4_combout\) # (!\u_health_mon|Add50~3\))) # (!\u_health_mon|Add42~4_combout\ & (\u_health_mon|Add34~4_combout\ & !\u_health_mon|Add50~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add42~4_combout\,
	datab => \u_health_mon|Add34~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add50~3\,
	combout => \u_health_mon|Add50~4_combout\,
	cout => \u_health_mon|Add50~5\);

-- Location: LCCOMB_X49_Y39_N20
\u_health_mon|Add50~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add50~6_combout\ = (\u_health_mon|Add34~6_combout\ & ((\u_health_mon|Add42~6_combout\ & (\u_health_mon|Add50~5\ & VCC)) # (!\u_health_mon|Add42~6_combout\ & (!\u_health_mon|Add50~5\)))) # (!\u_health_mon|Add34~6_combout\ & 
-- ((\u_health_mon|Add42~6_combout\ & (!\u_health_mon|Add50~5\)) # (!\u_health_mon|Add42~6_combout\ & ((\u_health_mon|Add50~5\) # (GND)))))
-- \u_health_mon|Add50~7\ = CARRY((\u_health_mon|Add34~6_combout\ & (!\u_health_mon|Add42~6_combout\ & !\u_health_mon|Add50~5\)) # (!\u_health_mon|Add34~6_combout\ & ((!\u_health_mon|Add50~5\) # (!\u_health_mon|Add42~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add34~6_combout\,
	datab => \u_health_mon|Add42~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add50~5\,
	combout => \u_health_mon|Add50~6_combout\,
	cout => \u_health_mon|Add50~7\);

-- Location: IOIBUF_X10_Y67_N15
\module_fault_vector_pin[82]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(82),
	o => \module_fault_vector_pin[82]~input_o\);

-- Location: IOIBUF_X10_Y67_N8
\module_fault_vector_pin[81]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(81),
	o => \module_fault_vector_pin[81]~input_o\);

-- Location: IOIBUF_X13_Y67_N8
\module_fault_vector_pin[83]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(83),
	o => \module_fault_vector_pin[83]~input_o\);

-- Location: IOIBUF_X15_Y67_N15
\module_fault_vector_pin[80]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(80),
	o => \module_fault_vector_pin[80]~input_o\);

-- Location: LCCOMB_X14_Y66_N10
\u_health_mon|Add80~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add80~0_combout\ = (\module_fault_vector_pin[82]~input_o\ & (\module_fault_vector_pin[81]~input_o\ & (\module_fault_vector_pin[83]~input_o\ & \module_fault_vector_pin[80]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[82]~input_o\,
	datab => \module_fault_vector_pin[81]~input_o\,
	datac => \module_fault_vector_pin[83]~input_o\,
	datad => \module_fault_vector_pin[80]~input_o\,
	combout => \u_health_mon|Add80~0_combout\);

-- Location: IOIBUF_X10_Y67_N22
\module_fault_vector_pin[77]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(77),
	o => \module_fault_vector_pin[77]~input_o\);

-- Location: IOIBUF_X10_Y67_N1
\module_fault_vector_pin[79]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(79),
	o => \module_fault_vector_pin[79]~input_o\);

-- Location: IOIBUF_X8_Y67_N8
\module_fault_vector_pin[76]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(76),
	o => \module_fault_vector_pin[76]~input_o\);

-- Location: IOIBUF_X13_Y67_N1
\module_fault_vector_pin[78]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(78),
	o => \module_fault_vector_pin[78]~input_o\);

-- Location: LCCOMB_X14_Y66_N24
\u_health_mon|Add76~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add76~0_combout\ = (\module_fault_vector_pin[77]~input_o\ & (\module_fault_vector_pin[79]~input_o\ & (\module_fault_vector_pin[76]~input_o\ & \module_fault_vector_pin[78]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[77]~input_o\,
	datab => \module_fault_vector_pin[79]~input_o\,
	datac => \module_fault_vector_pin[76]~input_o\,
	datad => \module_fault_vector_pin[78]~input_o\,
	combout => \u_health_mon|Add76~0_combout\);

-- Location: LCCOMB_X14_Y66_N30
\u_health_mon|Add80~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add80~1_combout\ = (\module_fault_vector_pin[82]~input_o\ & ((\module_fault_vector_pin[81]~input_o\ & ((!\module_fault_vector_pin[80]~input_o\) # (!\module_fault_vector_pin[83]~input_o\))) # (!\module_fault_vector_pin[81]~input_o\ & 
-- ((\module_fault_vector_pin[83]~input_o\) # (\module_fault_vector_pin[80]~input_o\))))) # (!\module_fault_vector_pin[82]~input_o\ & ((\module_fault_vector_pin[81]~input_o\ & ((\module_fault_vector_pin[83]~input_o\) # 
-- (\module_fault_vector_pin[80]~input_o\))) # (!\module_fault_vector_pin[81]~input_o\ & (\module_fault_vector_pin[83]~input_o\ & \module_fault_vector_pin[80]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[82]~input_o\,
	datab => \module_fault_vector_pin[81]~input_o\,
	datac => \module_fault_vector_pin[83]~input_o\,
	datad => \module_fault_vector_pin[80]~input_o\,
	combout => \u_health_mon|Add80~1_combout\);

-- Location: LCCOMB_X14_Y66_N12
\u_health_mon|Add76~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add76~1_combout\ = (\module_fault_vector_pin[77]~input_o\ & ((\module_fault_vector_pin[79]~input_o\ & ((!\module_fault_vector_pin[78]~input_o\) # (!\module_fault_vector_pin[76]~input_o\))) # (!\module_fault_vector_pin[79]~input_o\ & 
-- ((\module_fault_vector_pin[76]~input_o\) # (\module_fault_vector_pin[78]~input_o\))))) # (!\module_fault_vector_pin[77]~input_o\ & ((\module_fault_vector_pin[79]~input_o\ & ((\module_fault_vector_pin[76]~input_o\) # 
-- (\module_fault_vector_pin[78]~input_o\))) # (!\module_fault_vector_pin[79]~input_o\ & (\module_fault_vector_pin[76]~input_o\ & \module_fault_vector_pin[78]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[77]~input_o\,
	datab => \module_fault_vector_pin[79]~input_o\,
	datac => \module_fault_vector_pin[76]~input_o\,
	datad => \module_fault_vector_pin[78]~input_o\,
	combout => \u_health_mon|Add76~1_combout\);

-- Location: LCCOMB_X14_Y66_N26
\u_health_mon|Add80~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add80~2_combout\ = \module_fault_vector_pin[82]~input_o\ $ (\module_fault_vector_pin[81]~input_o\ $ (\module_fault_vector_pin[83]~input_o\ $ (\module_fault_vector_pin[80]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[82]~input_o\,
	datab => \module_fault_vector_pin[81]~input_o\,
	datac => \module_fault_vector_pin[83]~input_o\,
	datad => \module_fault_vector_pin[80]~input_o\,
	combout => \u_health_mon|Add80~2_combout\);

-- Location: LCCOMB_X14_Y66_N8
\u_health_mon|Add76~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add76~2_combout\ = \module_fault_vector_pin[77]~input_o\ $ (\module_fault_vector_pin[79]~input_o\ $ (\module_fault_vector_pin[76]~input_o\ $ (\module_fault_vector_pin[78]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[77]~input_o\,
	datab => \module_fault_vector_pin[79]~input_o\,
	datac => \module_fault_vector_pin[76]~input_o\,
	datad => \module_fault_vector_pin[78]~input_o\,
	combout => \u_health_mon|Add76~2_combout\);

-- Location: LCCOMB_X14_Y66_N16
\u_health_mon|Add78~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add78~0_combout\ = (\u_health_mon|Add80~2_combout\ & (\u_health_mon|Add76~2_combout\ $ (VCC))) # (!\u_health_mon|Add80~2_combout\ & (\u_health_mon|Add76~2_combout\ & VCC))
-- \u_health_mon|Add78~1\ = CARRY((\u_health_mon|Add80~2_combout\ & \u_health_mon|Add76~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add80~2_combout\,
	datab => \u_health_mon|Add76~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add78~0_combout\,
	cout => \u_health_mon|Add78~1\);

-- Location: LCCOMB_X14_Y66_N18
\u_health_mon|Add78~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add78~2_combout\ = (\u_health_mon|Add80~1_combout\ & ((\u_health_mon|Add76~1_combout\ & (\u_health_mon|Add78~1\ & VCC)) # (!\u_health_mon|Add76~1_combout\ & (!\u_health_mon|Add78~1\)))) # (!\u_health_mon|Add80~1_combout\ & 
-- ((\u_health_mon|Add76~1_combout\ & (!\u_health_mon|Add78~1\)) # (!\u_health_mon|Add76~1_combout\ & ((\u_health_mon|Add78~1\) # (GND)))))
-- \u_health_mon|Add78~3\ = CARRY((\u_health_mon|Add80~1_combout\ & (!\u_health_mon|Add76~1_combout\ & !\u_health_mon|Add78~1\)) # (!\u_health_mon|Add80~1_combout\ & ((!\u_health_mon|Add78~1\) # (!\u_health_mon|Add76~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add80~1_combout\,
	datab => \u_health_mon|Add76~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add78~1\,
	combout => \u_health_mon|Add78~2_combout\,
	cout => \u_health_mon|Add78~3\);

-- Location: LCCOMB_X14_Y66_N20
\u_health_mon|Add78~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add78~4_combout\ = ((\u_health_mon|Add80~0_combout\ $ (\u_health_mon|Add76~0_combout\ $ (!\u_health_mon|Add78~3\)))) # (GND)
-- \u_health_mon|Add78~5\ = CARRY((\u_health_mon|Add80~0_combout\ & ((\u_health_mon|Add76~0_combout\) # (!\u_health_mon|Add78~3\))) # (!\u_health_mon|Add80~0_combout\ & (\u_health_mon|Add76~0_combout\ & !\u_health_mon|Add78~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add80~0_combout\,
	datab => \u_health_mon|Add76~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add78~3\,
	combout => \u_health_mon|Add78~4_combout\,
	cout => \u_health_mon|Add78~5\);

-- Location: LCCOMB_X14_Y66_N22
\u_health_mon|Add78~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add78~6_combout\ = \u_health_mon|Add78~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add78~5\,
	combout => \u_health_mon|Add78~6_combout\);

-- Location: IOIBUF_X19_Y67_N8
\module_fault_vector_pin[68]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(68),
	o => \module_fault_vector_pin[68]~input_o\);

-- Location: IOIBUF_X15_Y67_N8
\module_fault_vector_pin[69]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(69),
	o => \module_fault_vector_pin[69]~input_o\);

-- Location: IOIBUF_X15_Y67_N1
\module_fault_vector_pin[71]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(71),
	o => \module_fault_vector_pin[71]~input_o\);

-- Location: IOIBUF_X19_Y67_N15
\module_fault_vector_pin[70]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(70),
	o => \module_fault_vector_pin[70]~input_o\);

-- Location: LCCOMB_X19_Y66_N0
\u_health_mon|Add68~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add68~0_combout\ = (\module_fault_vector_pin[68]~input_o\ & (\module_fault_vector_pin[69]~input_o\ & (\module_fault_vector_pin[71]~input_o\ & \module_fault_vector_pin[70]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[68]~input_o\,
	datab => \module_fault_vector_pin[69]~input_o\,
	datac => \module_fault_vector_pin[71]~input_o\,
	datad => \module_fault_vector_pin[70]~input_o\,
	combout => \u_health_mon|Add68~0_combout\);

-- Location: IOIBUF_X15_Y67_N22
\module_fault_vector_pin[72]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(72),
	o => \module_fault_vector_pin[72]~input_o\);

-- Location: IOIBUF_X17_Y67_N15
\module_fault_vector_pin[75]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(75),
	o => \module_fault_vector_pin[75]~input_o\);

-- Location: IOIBUF_X17_Y67_N22
\module_fault_vector_pin[73]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(73),
	o => \module_fault_vector_pin[73]~input_o\);

-- Location: IOIBUF_X19_Y67_N1
\module_fault_vector_pin[74]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(74),
	o => \module_fault_vector_pin[74]~input_o\);

-- Location: LCCOMB_X19_Y66_N2
\u_health_mon|Add72~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add72~0_combout\ = (\module_fault_vector_pin[72]~input_o\ & (\module_fault_vector_pin[75]~input_o\ & (\module_fault_vector_pin[73]~input_o\ & \module_fault_vector_pin[74]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[72]~input_o\,
	datab => \module_fault_vector_pin[75]~input_o\,
	datac => \module_fault_vector_pin[73]~input_o\,
	datad => \module_fault_vector_pin[74]~input_o\,
	combout => \u_health_mon|Add72~0_combout\);

-- Location: LCCOMB_X19_Y66_N30
\u_health_mon|Add72~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add72~1_combout\ = (\module_fault_vector_pin[72]~input_o\ & ((\module_fault_vector_pin[75]~input_o\ & ((!\module_fault_vector_pin[74]~input_o\) # (!\module_fault_vector_pin[73]~input_o\))) # (!\module_fault_vector_pin[75]~input_o\ & 
-- ((\module_fault_vector_pin[73]~input_o\) # (\module_fault_vector_pin[74]~input_o\))))) # (!\module_fault_vector_pin[72]~input_o\ & ((\module_fault_vector_pin[75]~input_o\ & ((\module_fault_vector_pin[73]~input_o\) # 
-- (\module_fault_vector_pin[74]~input_o\))) # (!\module_fault_vector_pin[75]~input_o\ & (\module_fault_vector_pin[73]~input_o\ & \module_fault_vector_pin[74]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[72]~input_o\,
	datab => \module_fault_vector_pin[75]~input_o\,
	datac => \module_fault_vector_pin[73]~input_o\,
	datad => \module_fault_vector_pin[74]~input_o\,
	combout => \u_health_mon|Add72~1_combout\);

-- Location: LCCOMB_X19_Y66_N4
\u_health_mon|Add68~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add68~1_combout\ = (\module_fault_vector_pin[68]~input_o\ & ((\module_fault_vector_pin[69]~input_o\ & ((!\module_fault_vector_pin[70]~input_o\) # (!\module_fault_vector_pin[71]~input_o\))) # (!\module_fault_vector_pin[69]~input_o\ & 
-- ((\module_fault_vector_pin[71]~input_o\) # (\module_fault_vector_pin[70]~input_o\))))) # (!\module_fault_vector_pin[68]~input_o\ & ((\module_fault_vector_pin[69]~input_o\ & ((\module_fault_vector_pin[71]~input_o\) # 
-- (\module_fault_vector_pin[70]~input_o\))) # (!\module_fault_vector_pin[69]~input_o\ & (\module_fault_vector_pin[71]~input_o\ & \module_fault_vector_pin[70]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[68]~input_o\,
	datab => \module_fault_vector_pin[69]~input_o\,
	datac => \module_fault_vector_pin[71]~input_o\,
	datad => \module_fault_vector_pin[70]~input_o\,
	combout => \u_health_mon|Add68~1_combout\);

-- Location: LCCOMB_X19_Y66_N8
\u_health_mon|Add68~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add68~2_combout\ = \module_fault_vector_pin[68]~input_o\ $ (\module_fault_vector_pin[69]~input_o\ $ (\module_fault_vector_pin[71]~input_o\ $ (\module_fault_vector_pin[70]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[68]~input_o\,
	datab => \module_fault_vector_pin[69]~input_o\,
	datac => \module_fault_vector_pin[71]~input_o\,
	datad => \module_fault_vector_pin[70]~input_o\,
	combout => \u_health_mon|Add68~2_combout\);

-- Location: LCCOMB_X19_Y66_N18
\u_health_mon|Add72~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add72~2_combout\ = \module_fault_vector_pin[72]~input_o\ $ (\module_fault_vector_pin[75]~input_o\ $ (\module_fault_vector_pin[73]~input_o\ $ (\module_fault_vector_pin[74]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[72]~input_o\,
	datab => \module_fault_vector_pin[75]~input_o\,
	datac => \module_fault_vector_pin[73]~input_o\,
	datad => \module_fault_vector_pin[74]~input_o\,
	combout => \u_health_mon|Add72~2_combout\);

-- Location: LCCOMB_X19_Y66_N10
\u_health_mon|Add70~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add70~0_combout\ = (\u_health_mon|Add68~2_combout\ & (\u_health_mon|Add72~2_combout\ $ (VCC))) # (!\u_health_mon|Add68~2_combout\ & (\u_health_mon|Add72~2_combout\ & VCC))
-- \u_health_mon|Add70~1\ = CARRY((\u_health_mon|Add68~2_combout\ & \u_health_mon|Add72~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add68~2_combout\,
	datab => \u_health_mon|Add72~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add70~0_combout\,
	cout => \u_health_mon|Add70~1\);

-- Location: LCCOMB_X19_Y66_N12
\u_health_mon|Add70~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add70~2_combout\ = (\u_health_mon|Add72~1_combout\ & ((\u_health_mon|Add68~1_combout\ & (\u_health_mon|Add70~1\ & VCC)) # (!\u_health_mon|Add68~1_combout\ & (!\u_health_mon|Add70~1\)))) # (!\u_health_mon|Add72~1_combout\ & 
-- ((\u_health_mon|Add68~1_combout\ & (!\u_health_mon|Add70~1\)) # (!\u_health_mon|Add68~1_combout\ & ((\u_health_mon|Add70~1\) # (GND)))))
-- \u_health_mon|Add70~3\ = CARRY((\u_health_mon|Add72~1_combout\ & (!\u_health_mon|Add68~1_combout\ & !\u_health_mon|Add70~1\)) # (!\u_health_mon|Add72~1_combout\ & ((!\u_health_mon|Add70~1\) # (!\u_health_mon|Add68~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add72~1_combout\,
	datab => \u_health_mon|Add68~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add70~1\,
	combout => \u_health_mon|Add70~2_combout\,
	cout => \u_health_mon|Add70~3\);

-- Location: LCCOMB_X19_Y66_N14
\u_health_mon|Add70~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add70~4_combout\ = ((\u_health_mon|Add68~0_combout\ $ (\u_health_mon|Add72~0_combout\ $ (!\u_health_mon|Add70~3\)))) # (GND)
-- \u_health_mon|Add70~5\ = CARRY((\u_health_mon|Add68~0_combout\ & ((\u_health_mon|Add72~0_combout\) # (!\u_health_mon|Add70~3\))) # (!\u_health_mon|Add68~0_combout\ & (\u_health_mon|Add72~0_combout\ & !\u_health_mon|Add70~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add68~0_combout\,
	datab => \u_health_mon|Add72~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add70~3\,
	combout => \u_health_mon|Add70~4_combout\,
	cout => \u_health_mon|Add70~5\);

-- Location: LCCOMB_X19_Y66_N16
\u_health_mon|Add70~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add70~6_combout\ = \u_health_mon|Add70~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add70~5\,
	combout => \u_health_mon|Add70~6_combout\);

-- Location: LCCOMB_X19_Y66_N20
\u_health_mon|Add74~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add74~0_combout\ = (\u_health_mon|Add78~0_combout\ & (\u_health_mon|Add70~0_combout\ $ (VCC))) # (!\u_health_mon|Add78~0_combout\ & (\u_health_mon|Add70~0_combout\ & VCC))
-- \u_health_mon|Add74~1\ = CARRY((\u_health_mon|Add78~0_combout\ & \u_health_mon|Add70~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add78~0_combout\,
	datab => \u_health_mon|Add70~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add74~0_combout\,
	cout => \u_health_mon|Add74~1\);

-- Location: LCCOMB_X19_Y66_N22
\u_health_mon|Add74~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add74~2_combout\ = (\u_health_mon|Add70~2_combout\ & ((\u_health_mon|Add78~2_combout\ & (\u_health_mon|Add74~1\ & VCC)) # (!\u_health_mon|Add78~2_combout\ & (!\u_health_mon|Add74~1\)))) # (!\u_health_mon|Add70~2_combout\ & 
-- ((\u_health_mon|Add78~2_combout\ & (!\u_health_mon|Add74~1\)) # (!\u_health_mon|Add78~2_combout\ & ((\u_health_mon|Add74~1\) # (GND)))))
-- \u_health_mon|Add74~3\ = CARRY((\u_health_mon|Add70~2_combout\ & (!\u_health_mon|Add78~2_combout\ & !\u_health_mon|Add74~1\)) # (!\u_health_mon|Add70~2_combout\ & ((!\u_health_mon|Add74~1\) # (!\u_health_mon|Add78~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add70~2_combout\,
	datab => \u_health_mon|Add78~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add74~1\,
	combout => \u_health_mon|Add74~2_combout\,
	cout => \u_health_mon|Add74~3\);

-- Location: LCCOMB_X19_Y66_N24
\u_health_mon|Add74~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add74~4_combout\ = ((\u_health_mon|Add78~4_combout\ $ (\u_health_mon|Add70~4_combout\ $ (!\u_health_mon|Add74~3\)))) # (GND)
-- \u_health_mon|Add74~5\ = CARRY((\u_health_mon|Add78~4_combout\ & ((\u_health_mon|Add70~4_combout\) # (!\u_health_mon|Add74~3\))) # (!\u_health_mon|Add78~4_combout\ & (\u_health_mon|Add70~4_combout\ & !\u_health_mon|Add74~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add78~4_combout\,
	datab => \u_health_mon|Add70~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add74~3\,
	combout => \u_health_mon|Add74~4_combout\,
	cout => \u_health_mon|Add74~5\);

-- Location: LCCOMB_X19_Y66_N26
\u_health_mon|Add74~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add74~6_combout\ = (\u_health_mon|Add78~6_combout\ & ((\u_health_mon|Add70~6_combout\ & (\u_health_mon|Add74~5\ & VCC)) # (!\u_health_mon|Add70~6_combout\ & (!\u_health_mon|Add74~5\)))) # (!\u_health_mon|Add78~6_combout\ & 
-- ((\u_health_mon|Add70~6_combout\ & (!\u_health_mon|Add74~5\)) # (!\u_health_mon|Add70~6_combout\ & ((\u_health_mon|Add74~5\) # (GND)))))
-- \u_health_mon|Add74~7\ = CARRY((\u_health_mon|Add78~6_combout\ & (!\u_health_mon|Add70~6_combout\ & !\u_health_mon|Add74~5\)) # (!\u_health_mon|Add78~6_combout\ & ((!\u_health_mon|Add74~5\) # (!\u_health_mon|Add70~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add78~6_combout\,
	datab => \u_health_mon|Add70~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add74~5\,
	combout => \u_health_mon|Add74~6_combout\,
	cout => \u_health_mon|Add74~7\);

-- Location: IOIBUF_X24_Y67_N1
\module_fault_vector_pin[57]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(57),
	o => \module_fault_vector_pin[57]~input_o\);

-- Location: IOIBUF_X17_Y67_N1
\module_fault_vector_pin[56]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(56),
	o => \module_fault_vector_pin[56]~input_o\);

-- Location: IOIBUF_X22_Y67_N1
\module_fault_vector_pin[59]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(59),
	o => \module_fault_vector_pin[59]~input_o\);

-- Location: IOIBUF_X24_Y67_N8
\module_fault_vector_pin[58]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(58),
	o => \module_fault_vector_pin[58]~input_o\);

-- Location: LCCOMB_X25_Y66_N18
\u_health_mon|Add56~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add56~0_combout\ = (\module_fault_vector_pin[57]~input_o\ & (\module_fault_vector_pin[56]~input_o\ & (\module_fault_vector_pin[59]~input_o\ & \module_fault_vector_pin[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[57]~input_o\,
	datab => \module_fault_vector_pin[56]~input_o\,
	datac => \module_fault_vector_pin[59]~input_o\,
	datad => \module_fault_vector_pin[58]~input_o\,
	combout => \u_health_mon|Add56~0_combout\);

-- Location: IOIBUF_X24_Y67_N15
\module_fault_vector_pin[53]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(53),
	o => \module_fault_vector_pin[53]~input_o\);

-- Location: IOIBUF_X17_Y67_N8
\module_fault_vector_pin[52]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(52),
	o => \module_fault_vector_pin[52]~input_o\);

-- Location: IOIBUF_X26_Y67_N15
\module_fault_vector_pin[54]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(54),
	o => \module_fault_vector_pin[54]~input_o\);

-- Location: IOIBUF_X24_Y67_N22
\module_fault_vector_pin[55]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(55),
	o => \module_fault_vector_pin[55]~input_o\);

-- Location: LCCOMB_X25_Y66_N8
\u_health_mon|Add52~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add52~0_combout\ = (\module_fault_vector_pin[53]~input_o\ & (\module_fault_vector_pin[52]~input_o\ & (\module_fault_vector_pin[54]~input_o\ & \module_fault_vector_pin[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[53]~input_o\,
	datab => \module_fault_vector_pin[52]~input_o\,
	datac => \module_fault_vector_pin[54]~input_o\,
	datad => \module_fault_vector_pin[55]~input_o\,
	combout => \u_health_mon|Add52~0_combout\);

-- Location: LCCOMB_X25_Y66_N30
\u_health_mon|Add56~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add56~1_combout\ = (\module_fault_vector_pin[57]~input_o\ & ((\module_fault_vector_pin[56]~input_o\ & ((!\module_fault_vector_pin[58]~input_o\) # (!\module_fault_vector_pin[59]~input_o\))) # (!\module_fault_vector_pin[56]~input_o\ & 
-- ((\module_fault_vector_pin[59]~input_o\) # (\module_fault_vector_pin[58]~input_o\))))) # (!\module_fault_vector_pin[57]~input_o\ & ((\module_fault_vector_pin[56]~input_o\ & ((\module_fault_vector_pin[59]~input_o\) # 
-- (\module_fault_vector_pin[58]~input_o\))) # (!\module_fault_vector_pin[56]~input_o\ & (\module_fault_vector_pin[59]~input_o\ & \module_fault_vector_pin[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[57]~input_o\,
	datab => \module_fault_vector_pin[56]~input_o\,
	datac => \module_fault_vector_pin[59]~input_o\,
	datad => \module_fault_vector_pin[58]~input_o\,
	combout => \u_health_mon|Add56~1_combout\);

-- Location: LCCOMB_X25_Y66_N20
\u_health_mon|Add52~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add52~1_combout\ = (\module_fault_vector_pin[53]~input_o\ & ((\module_fault_vector_pin[52]~input_o\ & ((!\module_fault_vector_pin[55]~input_o\) # (!\module_fault_vector_pin[54]~input_o\))) # (!\module_fault_vector_pin[52]~input_o\ & 
-- ((\module_fault_vector_pin[54]~input_o\) # (\module_fault_vector_pin[55]~input_o\))))) # (!\module_fault_vector_pin[53]~input_o\ & ((\module_fault_vector_pin[52]~input_o\ & ((\module_fault_vector_pin[54]~input_o\) # 
-- (\module_fault_vector_pin[55]~input_o\))) # (!\module_fault_vector_pin[52]~input_o\ & (\module_fault_vector_pin[54]~input_o\ & \module_fault_vector_pin[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[53]~input_o\,
	datab => \module_fault_vector_pin[52]~input_o\,
	datac => \module_fault_vector_pin[54]~input_o\,
	datad => \module_fault_vector_pin[55]~input_o\,
	combout => \u_health_mon|Add52~1_combout\);

-- Location: LCCOMB_X25_Y66_N10
\u_health_mon|Add56~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add56~2_combout\ = \module_fault_vector_pin[57]~input_o\ $ (\module_fault_vector_pin[56]~input_o\ $ (\module_fault_vector_pin[59]~input_o\ $ (\module_fault_vector_pin[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[57]~input_o\,
	datab => \module_fault_vector_pin[56]~input_o\,
	datac => \module_fault_vector_pin[59]~input_o\,
	datad => \module_fault_vector_pin[58]~input_o\,
	combout => \u_health_mon|Add56~2_combout\);

-- Location: LCCOMB_X25_Y66_N16
\u_health_mon|Add52~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add52~2_combout\ = \module_fault_vector_pin[53]~input_o\ $ (\module_fault_vector_pin[52]~input_o\ $ (\module_fault_vector_pin[54]~input_o\ $ (\module_fault_vector_pin[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[53]~input_o\,
	datab => \module_fault_vector_pin[52]~input_o\,
	datac => \module_fault_vector_pin[54]~input_o\,
	datad => \module_fault_vector_pin[55]~input_o\,
	combout => \u_health_mon|Add52~2_combout\);

-- Location: LCCOMB_X25_Y66_N22
\u_health_mon|Add54~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add54~0_combout\ = (\u_health_mon|Add56~2_combout\ & (\u_health_mon|Add52~2_combout\ $ (VCC))) # (!\u_health_mon|Add56~2_combout\ & (\u_health_mon|Add52~2_combout\ & VCC))
-- \u_health_mon|Add54~1\ = CARRY((\u_health_mon|Add56~2_combout\ & \u_health_mon|Add52~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add56~2_combout\,
	datab => \u_health_mon|Add52~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add54~0_combout\,
	cout => \u_health_mon|Add54~1\);

-- Location: LCCOMB_X25_Y66_N24
\u_health_mon|Add54~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add54~2_combout\ = (\u_health_mon|Add56~1_combout\ & ((\u_health_mon|Add52~1_combout\ & (\u_health_mon|Add54~1\ & VCC)) # (!\u_health_mon|Add52~1_combout\ & (!\u_health_mon|Add54~1\)))) # (!\u_health_mon|Add56~1_combout\ & 
-- ((\u_health_mon|Add52~1_combout\ & (!\u_health_mon|Add54~1\)) # (!\u_health_mon|Add52~1_combout\ & ((\u_health_mon|Add54~1\) # (GND)))))
-- \u_health_mon|Add54~3\ = CARRY((\u_health_mon|Add56~1_combout\ & (!\u_health_mon|Add52~1_combout\ & !\u_health_mon|Add54~1\)) # (!\u_health_mon|Add56~1_combout\ & ((!\u_health_mon|Add54~1\) # (!\u_health_mon|Add52~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add56~1_combout\,
	datab => \u_health_mon|Add52~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add54~1\,
	combout => \u_health_mon|Add54~2_combout\,
	cout => \u_health_mon|Add54~3\);

-- Location: LCCOMB_X25_Y66_N26
\u_health_mon|Add54~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add54~4_combout\ = ((\u_health_mon|Add56~0_combout\ $ (\u_health_mon|Add52~0_combout\ $ (!\u_health_mon|Add54~3\)))) # (GND)
-- \u_health_mon|Add54~5\ = CARRY((\u_health_mon|Add56~0_combout\ & ((\u_health_mon|Add52~0_combout\) # (!\u_health_mon|Add54~3\))) # (!\u_health_mon|Add56~0_combout\ & (\u_health_mon|Add52~0_combout\ & !\u_health_mon|Add54~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add56~0_combout\,
	datab => \u_health_mon|Add52~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add54~3\,
	combout => \u_health_mon|Add54~4_combout\,
	cout => \u_health_mon|Add54~5\);

-- Location: LCCOMB_X25_Y66_N28
\u_health_mon|Add54~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add54~6_combout\ = \u_health_mon|Add54~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add54~5\,
	combout => \u_health_mon|Add54~6_combout\);

-- Location: IOIBUF_X29_Y67_N1
\module_fault_vector_pin[67]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(67),
	o => \module_fault_vector_pin[67]~input_o\);

-- Location: IOIBUF_X19_Y67_N22
\module_fault_vector_pin[66]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(66),
	o => \module_fault_vector_pin[66]~input_o\);

-- Location: IOIBUF_X29_Y67_N8
\module_fault_vector_pin[65]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(65),
	o => \module_fault_vector_pin[65]~input_o\);

-- Location: IOIBUF_X29_Y67_N15
\module_fault_vector_pin[64]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(64),
	o => \module_fault_vector_pin[64]~input_o\);

-- Location: LCCOMB_X27_Y66_N26
\u_health_mon|Add64~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add64~0_combout\ = (\module_fault_vector_pin[67]~input_o\ & (\module_fault_vector_pin[66]~input_o\ & (\module_fault_vector_pin[65]~input_o\ & \module_fault_vector_pin[64]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[67]~input_o\,
	datab => \module_fault_vector_pin[66]~input_o\,
	datac => \module_fault_vector_pin[65]~input_o\,
	datad => \module_fault_vector_pin[64]~input_o\,
	combout => \u_health_mon|Add64~0_combout\);

-- Location: IOIBUF_X26_Y67_N22
\module_fault_vector_pin[62]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(62),
	o => \module_fault_vector_pin[62]~input_o\);

-- Location: IOIBUF_X26_Y67_N1
\module_fault_vector_pin[60]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(60),
	o => \module_fault_vector_pin[60]~input_o\);

-- Location: IOIBUF_X26_Y67_N8
\module_fault_vector_pin[63]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(63),
	o => \module_fault_vector_pin[63]~input_o\);

-- Location: IOIBUF_X29_Y67_N22
\module_fault_vector_pin[61]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(61),
	o => \module_fault_vector_pin[61]~input_o\);

-- Location: LCCOMB_X27_Y66_N8
\u_health_mon|Add60~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add60~0_combout\ = (\module_fault_vector_pin[62]~input_o\ & (\module_fault_vector_pin[60]~input_o\ & (\module_fault_vector_pin[63]~input_o\ & \module_fault_vector_pin[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[62]~input_o\,
	datab => \module_fault_vector_pin[60]~input_o\,
	datac => \module_fault_vector_pin[63]~input_o\,
	datad => \module_fault_vector_pin[61]~input_o\,
	combout => \u_health_mon|Add60~0_combout\);

-- Location: LCCOMB_X27_Y66_N30
\u_health_mon|Add64~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add64~1_combout\ = (\module_fault_vector_pin[67]~input_o\ & ((\module_fault_vector_pin[66]~input_o\ & ((!\module_fault_vector_pin[64]~input_o\) # (!\module_fault_vector_pin[65]~input_o\))) # (!\module_fault_vector_pin[66]~input_o\ & 
-- ((\module_fault_vector_pin[65]~input_o\) # (\module_fault_vector_pin[64]~input_o\))))) # (!\module_fault_vector_pin[67]~input_o\ & ((\module_fault_vector_pin[66]~input_o\ & ((\module_fault_vector_pin[65]~input_o\) # 
-- (\module_fault_vector_pin[64]~input_o\))) # (!\module_fault_vector_pin[66]~input_o\ & (\module_fault_vector_pin[65]~input_o\ & \module_fault_vector_pin[64]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[67]~input_o\,
	datab => \module_fault_vector_pin[66]~input_o\,
	datac => \module_fault_vector_pin[65]~input_o\,
	datad => \module_fault_vector_pin[64]~input_o\,
	combout => \u_health_mon|Add64~1_combout\);

-- Location: LCCOMB_X27_Y66_N4
\u_health_mon|Add60~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add60~1_combout\ = (\module_fault_vector_pin[62]~input_o\ & ((\module_fault_vector_pin[60]~input_o\ & ((!\module_fault_vector_pin[61]~input_o\) # (!\module_fault_vector_pin[63]~input_o\))) # (!\module_fault_vector_pin[60]~input_o\ & 
-- ((\module_fault_vector_pin[63]~input_o\) # (\module_fault_vector_pin[61]~input_o\))))) # (!\module_fault_vector_pin[62]~input_o\ & ((\module_fault_vector_pin[60]~input_o\ & ((\module_fault_vector_pin[63]~input_o\) # 
-- (\module_fault_vector_pin[61]~input_o\))) # (!\module_fault_vector_pin[60]~input_o\ & (\module_fault_vector_pin[63]~input_o\ & \module_fault_vector_pin[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[62]~input_o\,
	datab => \module_fault_vector_pin[60]~input_o\,
	datac => \module_fault_vector_pin[63]~input_o\,
	datad => \module_fault_vector_pin[61]~input_o\,
	combout => \u_health_mon|Add60~1_combout\);

-- Location: LCCOMB_X27_Y66_N10
\u_health_mon|Add64~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add64~2_combout\ = \module_fault_vector_pin[67]~input_o\ $ (\module_fault_vector_pin[66]~input_o\ $ (\module_fault_vector_pin[65]~input_o\ $ (\module_fault_vector_pin[64]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[67]~input_o\,
	datab => \module_fault_vector_pin[66]~input_o\,
	datac => \module_fault_vector_pin[65]~input_o\,
	datad => \module_fault_vector_pin[64]~input_o\,
	combout => \u_health_mon|Add64~2_combout\);

-- Location: LCCOMB_X27_Y66_N16
\u_health_mon|Add60~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add60~2_combout\ = \module_fault_vector_pin[62]~input_o\ $ (\module_fault_vector_pin[60]~input_o\ $ (\module_fault_vector_pin[63]~input_o\ $ (\module_fault_vector_pin[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[62]~input_o\,
	datab => \module_fault_vector_pin[60]~input_o\,
	datac => \module_fault_vector_pin[63]~input_o\,
	datad => \module_fault_vector_pin[61]~input_o\,
	combout => \u_health_mon|Add60~2_combout\);

-- Location: LCCOMB_X27_Y66_N18
\u_health_mon|Add62~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add62~0_combout\ = (\u_health_mon|Add64~2_combout\ & (\u_health_mon|Add60~2_combout\ $ (VCC))) # (!\u_health_mon|Add64~2_combout\ & (\u_health_mon|Add60~2_combout\ & VCC))
-- \u_health_mon|Add62~1\ = CARRY((\u_health_mon|Add64~2_combout\ & \u_health_mon|Add60~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add64~2_combout\,
	datab => \u_health_mon|Add60~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add62~0_combout\,
	cout => \u_health_mon|Add62~1\);

-- Location: LCCOMB_X27_Y66_N20
\u_health_mon|Add62~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add62~2_combout\ = (\u_health_mon|Add64~1_combout\ & ((\u_health_mon|Add60~1_combout\ & (\u_health_mon|Add62~1\ & VCC)) # (!\u_health_mon|Add60~1_combout\ & (!\u_health_mon|Add62~1\)))) # (!\u_health_mon|Add64~1_combout\ & 
-- ((\u_health_mon|Add60~1_combout\ & (!\u_health_mon|Add62~1\)) # (!\u_health_mon|Add60~1_combout\ & ((\u_health_mon|Add62~1\) # (GND)))))
-- \u_health_mon|Add62~3\ = CARRY((\u_health_mon|Add64~1_combout\ & (!\u_health_mon|Add60~1_combout\ & !\u_health_mon|Add62~1\)) # (!\u_health_mon|Add64~1_combout\ & ((!\u_health_mon|Add62~1\) # (!\u_health_mon|Add60~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add64~1_combout\,
	datab => \u_health_mon|Add60~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add62~1\,
	combout => \u_health_mon|Add62~2_combout\,
	cout => \u_health_mon|Add62~3\);

-- Location: LCCOMB_X27_Y66_N22
\u_health_mon|Add62~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add62~4_combout\ = ((\u_health_mon|Add64~0_combout\ $ (\u_health_mon|Add60~0_combout\ $ (!\u_health_mon|Add62~3\)))) # (GND)
-- \u_health_mon|Add62~5\ = CARRY((\u_health_mon|Add64~0_combout\ & ((\u_health_mon|Add60~0_combout\) # (!\u_health_mon|Add62~3\))) # (!\u_health_mon|Add64~0_combout\ & (\u_health_mon|Add60~0_combout\ & !\u_health_mon|Add62~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add64~0_combout\,
	datab => \u_health_mon|Add60~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add62~3\,
	combout => \u_health_mon|Add62~4_combout\,
	cout => \u_health_mon|Add62~5\);

-- Location: LCCOMB_X27_Y66_N24
\u_health_mon|Add62~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add62~6_combout\ = \u_health_mon|Add62~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add62~5\,
	combout => \u_health_mon|Add62~6_combout\);

-- Location: LCCOMB_X26_Y66_N22
\u_health_mon|Add58~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add58~0_combout\ = (\u_health_mon|Add54~0_combout\ & (\u_health_mon|Add62~0_combout\ $ (VCC))) # (!\u_health_mon|Add54~0_combout\ & (\u_health_mon|Add62~0_combout\ & VCC))
-- \u_health_mon|Add58~1\ = CARRY((\u_health_mon|Add54~0_combout\ & \u_health_mon|Add62~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add54~0_combout\,
	datab => \u_health_mon|Add62~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add58~0_combout\,
	cout => \u_health_mon|Add58~1\);

-- Location: LCCOMB_X26_Y66_N24
\u_health_mon|Add58~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add58~2_combout\ = (\u_health_mon|Add62~2_combout\ & ((\u_health_mon|Add54~2_combout\ & (\u_health_mon|Add58~1\ & VCC)) # (!\u_health_mon|Add54~2_combout\ & (!\u_health_mon|Add58~1\)))) # (!\u_health_mon|Add62~2_combout\ & 
-- ((\u_health_mon|Add54~2_combout\ & (!\u_health_mon|Add58~1\)) # (!\u_health_mon|Add54~2_combout\ & ((\u_health_mon|Add58~1\) # (GND)))))
-- \u_health_mon|Add58~3\ = CARRY((\u_health_mon|Add62~2_combout\ & (!\u_health_mon|Add54~2_combout\ & !\u_health_mon|Add58~1\)) # (!\u_health_mon|Add62~2_combout\ & ((!\u_health_mon|Add58~1\) # (!\u_health_mon|Add54~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add62~2_combout\,
	datab => \u_health_mon|Add54~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add58~1\,
	combout => \u_health_mon|Add58~2_combout\,
	cout => \u_health_mon|Add58~3\);

-- Location: LCCOMB_X26_Y66_N26
\u_health_mon|Add58~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add58~4_combout\ = ((\u_health_mon|Add54~4_combout\ $ (\u_health_mon|Add62~4_combout\ $ (!\u_health_mon|Add58~3\)))) # (GND)
-- \u_health_mon|Add58~5\ = CARRY((\u_health_mon|Add54~4_combout\ & ((\u_health_mon|Add62~4_combout\) # (!\u_health_mon|Add58~3\))) # (!\u_health_mon|Add54~4_combout\ & (\u_health_mon|Add62~4_combout\ & !\u_health_mon|Add58~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add54~4_combout\,
	datab => \u_health_mon|Add62~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add58~3\,
	combout => \u_health_mon|Add58~4_combout\,
	cout => \u_health_mon|Add58~5\);

-- Location: LCCOMB_X26_Y66_N28
\u_health_mon|Add58~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add58~6_combout\ = (\u_health_mon|Add54~6_combout\ & ((\u_health_mon|Add62~6_combout\ & (\u_health_mon|Add58~5\ & VCC)) # (!\u_health_mon|Add62~6_combout\ & (!\u_health_mon|Add58~5\)))) # (!\u_health_mon|Add54~6_combout\ & 
-- ((\u_health_mon|Add62~6_combout\ & (!\u_health_mon|Add58~5\)) # (!\u_health_mon|Add62~6_combout\ & ((\u_health_mon|Add58~5\) # (GND)))))
-- \u_health_mon|Add58~7\ = CARRY((\u_health_mon|Add54~6_combout\ & (!\u_health_mon|Add62~6_combout\ & !\u_health_mon|Add58~5\)) # (!\u_health_mon|Add54~6_combout\ & ((!\u_health_mon|Add58~5\) # (!\u_health_mon|Add62~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add54~6_combout\,
	datab => \u_health_mon|Add62~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add58~5\,
	combout => \u_health_mon|Add58~6_combout\,
	cout => \u_health_mon|Add58~7\);

-- Location: LCCOMB_X26_Y66_N2
\u_health_mon|Add66~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add66~0_combout\ = (\u_health_mon|Add58~0_combout\ & (\u_health_mon|Add74~0_combout\ $ (VCC))) # (!\u_health_mon|Add58~0_combout\ & (\u_health_mon|Add74~0_combout\ & VCC))
-- \u_health_mon|Add66~1\ = CARRY((\u_health_mon|Add58~0_combout\ & \u_health_mon|Add74~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add58~0_combout\,
	datab => \u_health_mon|Add74~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add66~0_combout\,
	cout => \u_health_mon|Add66~1\);

-- Location: LCCOMB_X26_Y66_N4
\u_health_mon|Add66~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add66~2_combout\ = (\u_health_mon|Add74~2_combout\ & ((\u_health_mon|Add58~2_combout\ & (\u_health_mon|Add66~1\ & VCC)) # (!\u_health_mon|Add58~2_combout\ & (!\u_health_mon|Add66~1\)))) # (!\u_health_mon|Add74~2_combout\ & 
-- ((\u_health_mon|Add58~2_combout\ & (!\u_health_mon|Add66~1\)) # (!\u_health_mon|Add58~2_combout\ & ((\u_health_mon|Add66~1\) # (GND)))))
-- \u_health_mon|Add66~3\ = CARRY((\u_health_mon|Add74~2_combout\ & (!\u_health_mon|Add58~2_combout\ & !\u_health_mon|Add66~1\)) # (!\u_health_mon|Add74~2_combout\ & ((!\u_health_mon|Add66~1\) # (!\u_health_mon|Add58~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add74~2_combout\,
	datab => \u_health_mon|Add58~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add66~1\,
	combout => \u_health_mon|Add66~2_combout\,
	cout => \u_health_mon|Add66~3\);

-- Location: LCCOMB_X26_Y66_N6
\u_health_mon|Add66~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add66~4_combout\ = ((\u_health_mon|Add58~4_combout\ $ (\u_health_mon|Add74~4_combout\ $ (!\u_health_mon|Add66~3\)))) # (GND)
-- \u_health_mon|Add66~5\ = CARRY((\u_health_mon|Add58~4_combout\ & ((\u_health_mon|Add74~4_combout\) # (!\u_health_mon|Add66~3\))) # (!\u_health_mon|Add58~4_combout\ & (\u_health_mon|Add74~4_combout\ & !\u_health_mon|Add66~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add58~4_combout\,
	datab => \u_health_mon|Add74~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add66~3\,
	combout => \u_health_mon|Add66~4_combout\,
	cout => \u_health_mon|Add66~5\);

-- Location: LCCOMB_X26_Y66_N8
\u_health_mon|Add66~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add66~6_combout\ = (\u_health_mon|Add74~6_combout\ & ((\u_health_mon|Add58~6_combout\ & (\u_health_mon|Add66~5\ & VCC)) # (!\u_health_mon|Add58~6_combout\ & (!\u_health_mon|Add66~5\)))) # (!\u_health_mon|Add74~6_combout\ & 
-- ((\u_health_mon|Add58~6_combout\ & (!\u_health_mon|Add66~5\)) # (!\u_health_mon|Add58~6_combout\ & ((\u_health_mon|Add66~5\) # (GND)))))
-- \u_health_mon|Add66~7\ = CARRY((\u_health_mon|Add74~6_combout\ & (!\u_health_mon|Add58~6_combout\ & !\u_health_mon|Add66~5\)) # (!\u_health_mon|Add74~6_combout\ & ((!\u_health_mon|Add66~5\) # (!\u_health_mon|Add58~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add74~6_combout\,
	datab => \u_health_mon|Add58~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add66~5\,
	combout => \u_health_mon|Add66~6_combout\,
	cout => \u_health_mon|Add66~7\);

-- Location: LCCOMB_X48_Y39_N0
\u_health_mon|Add82~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add82~0_combout\ = (\u_health_mon|Add66~0_combout\ & (\u_health_mon|Add50~0_combout\ $ (VCC))) # (!\u_health_mon|Add66~0_combout\ & (\u_health_mon|Add50~0_combout\ & VCC))
-- \u_health_mon|Add82~1\ = CARRY((\u_health_mon|Add66~0_combout\ & \u_health_mon|Add50~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add66~0_combout\,
	datab => \u_health_mon|Add50~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add82~0_combout\,
	cout => \u_health_mon|Add82~1\);

-- Location: LCCOMB_X48_Y39_N2
\u_health_mon|Add82~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add82~2_combout\ = (\u_health_mon|Add66~2_combout\ & ((\u_health_mon|Add50~2_combout\ & (\u_health_mon|Add82~1\ & VCC)) # (!\u_health_mon|Add50~2_combout\ & (!\u_health_mon|Add82~1\)))) # (!\u_health_mon|Add66~2_combout\ & 
-- ((\u_health_mon|Add50~2_combout\ & (!\u_health_mon|Add82~1\)) # (!\u_health_mon|Add50~2_combout\ & ((\u_health_mon|Add82~1\) # (GND)))))
-- \u_health_mon|Add82~3\ = CARRY((\u_health_mon|Add66~2_combout\ & (!\u_health_mon|Add50~2_combout\ & !\u_health_mon|Add82~1\)) # (!\u_health_mon|Add66~2_combout\ & ((!\u_health_mon|Add82~1\) # (!\u_health_mon|Add50~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add66~2_combout\,
	datab => \u_health_mon|Add50~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add82~1\,
	combout => \u_health_mon|Add82~2_combout\,
	cout => \u_health_mon|Add82~3\);

-- Location: LCCOMB_X48_Y39_N4
\u_health_mon|Add82~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add82~4_combout\ = ((\u_health_mon|Add66~4_combout\ $ (\u_health_mon|Add50~4_combout\ $ (!\u_health_mon|Add82~3\)))) # (GND)
-- \u_health_mon|Add82~5\ = CARRY((\u_health_mon|Add66~4_combout\ & ((\u_health_mon|Add50~4_combout\) # (!\u_health_mon|Add82~3\))) # (!\u_health_mon|Add66~4_combout\ & (\u_health_mon|Add50~4_combout\ & !\u_health_mon|Add82~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add66~4_combout\,
	datab => \u_health_mon|Add50~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add82~3\,
	combout => \u_health_mon|Add82~4_combout\,
	cout => \u_health_mon|Add82~5\);

-- Location: LCCOMB_X48_Y39_N6
\u_health_mon|Add82~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add82~6_combout\ = (\u_health_mon|Add50~6_combout\ & ((\u_health_mon|Add66~6_combout\ & (\u_health_mon|Add82~5\ & VCC)) # (!\u_health_mon|Add66~6_combout\ & (!\u_health_mon|Add82~5\)))) # (!\u_health_mon|Add50~6_combout\ & 
-- ((\u_health_mon|Add66~6_combout\ & (!\u_health_mon|Add82~5\)) # (!\u_health_mon|Add66~6_combout\ & ((\u_health_mon|Add82~5\) # (GND)))))
-- \u_health_mon|Add82~7\ = CARRY((\u_health_mon|Add50~6_combout\ & (!\u_health_mon|Add66~6_combout\ & !\u_health_mon|Add82~5\)) # (!\u_health_mon|Add50~6_combout\ & ((!\u_health_mon|Add82~5\) # (!\u_health_mon|Add66~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add50~6_combout\,
	datab => \u_health_mon|Add66~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add82~5\,
	combout => \u_health_mon|Add82~6_combout\,
	cout => \u_health_mon|Add82~7\);

-- Location: IOIBUF_X81_Y10_N8
\module_fault_vector_pin[185]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(185),
	o => \module_fault_vector_pin[185]~input_o\);

-- Location: IOIBUF_X81_Y5_N1
\module_fault_vector_pin[186]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(186),
	o => \module_fault_vector_pin[186]~input_o\);

-- Location: IOIBUF_X81_Y3_N22
\module_fault_vector_pin[184]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(184),
	o => \module_fault_vector_pin[184]~input_o\);

-- Location: IOIBUF_X81_Y10_N15
\module_fault_vector_pin[187]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(187),
	o => \module_fault_vector_pin[187]~input_o\);

-- Location: LCCOMB_X80_Y10_N26
\u_health_mon|Add184~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add184~0_combout\ = (\module_fault_vector_pin[185]~input_o\ & (\module_fault_vector_pin[186]~input_o\ & (\module_fault_vector_pin[184]~input_o\ & \module_fault_vector_pin[187]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[185]~input_o\,
	datab => \module_fault_vector_pin[186]~input_o\,
	datac => \module_fault_vector_pin[184]~input_o\,
	datad => \module_fault_vector_pin[187]~input_o\,
	combout => \u_health_mon|Add184~0_combout\);

-- Location: IOIBUF_X81_Y8_N1
\module_fault_vector_pin[180]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(180),
	o => \module_fault_vector_pin[180]~input_o\);

-- Location: IOIBUF_X81_Y10_N1
\module_fault_vector_pin[183]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(183),
	o => \module_fault_vector_pin[183]~input_o\);

-- Location: IOIBUF_X81_Y3_N8
\module_fault_vector_pin[182]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(182),
	o => \module_fault_vector_pin[182]~input_o\);

-- Location: IOIBUF_X81_Y8_N8
\module_fault_vector_pin[181]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(181),
	o => \module_fault_vector_pin[181]~input_o\);

-- Location: LCCOMB_X80_Y10_N16
\u_health_mon|Add180~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add180~0_combout\ = (\module_fault_vector_pin[180]~input_o\ & (\module_fault_vector_pin[183]~input_o\ & (\module_fault_vector_pin[182]~input_o\ & \module_fault_vector_pin[181]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[180]~input_o\,
	datab => \module_fault_vector_pin[183]~input_o\,
	datac => \module_fault_vector_pin[182]~input_o\,
	datad => \module_fault_vector_pin[181]~input_o\,
	combout => \u_health_mon|Add180~0_combout\);

-- Location: LCCOMB_X80_Y10_N30
\u_health_mon|Add184~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add184~1_combout\ = (\module_fault_vector_pin[185]~input_o\ & ((\module_fault_vector_pin[186]~input_o\ & ((!\module_fault_vector_pin[187]~input_o\) # (!\module_fault_vector_pin[184]~input_o\))) # (!\module_fault_vector_pin[186]~input_o\ & 
-- ((\module_fault_vector_pin[184]~input_o\) # (\module_fault_vector_pin[187]~input_o\))))) # (!\module_fault_vector_pin[185]~input_o\ & ((\module_fault_vector_pin[186]~input_o\ & ((\module_fault_vector_pin[184]~input_o\) # 
-- (\module_fault_vector_pin[187]~input_o\))) # (!\module_fault_vector_pin[186]~input_o\ & (\module_fault_vector_pin[184]~input_o\ & \module_fault_vector_pin[187]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[185]~input_o\,
	datab => \module_fault_vector_pin[186]~input_o\,
	datac => \module_fault_vector_pin[184]~input_o\,
	datad => \module_fault_vector_pin[187]~input_o\,
	combout => \u_health_mon|Add184~1_combout\);

-- Location: LCCOMB_X80_Y10_N4
\u_health_mon|Add180~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add180~1_combout\ = (\module_fault_vector_pin[180]~input_o\ & ((\module_fault_vector_pin[183]~input_o\ & ((!\module_fault_vector_pin[181]~input_o\) # (!\module_fault_vector_pin[182]~input_o\))) # (!\module_fault_vector_pin[183]~input_o\ & 
-- ((\module_fault_vector_pin[182]~input_o\) # (\module_fault_vector_pin[181]~input_o\))))) # (!\module_fault_vector_pin[180]~input_o\ & ((\module_fault_vector_pin[183]~input_o\ & ((\module_fault_vector_pin[182]~input_o\) # 
-- (\module_fault_vector_pin[181]~input_o\))) # (!\module_fault_vector_pin[183]~input_o\ & (\module_fault_vector_pin[182]~input_o\ & \module_fault_vector_pin[181]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[180]~input_o\,
	datab => \module_fault_vector_pin[183]~input_o\,
	datac => \module_fault_vector_pin[182]~input_o\,
	datad => \module_fault_vector_pin[181]~input_o\,
	combout => \u_health_mon|Add180~1_combout\);

-- Location: LCCOMB_X80_Y10_N10
\u_health_mon|Add184~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add184~2_combout\ = \module_fault_vector_pin[185]~input_o\ $ (\module_fault_vector_pin[186]~input_o\ $ (\module_fault_vector_pin[184]~input_o\ $ (\module_fault_vector_pin[187]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[185]~input_o\,
	datab => \module_fault_vector_pin[186]~input_o\,
	datac => \module_fault_vector_pin[184]~input_o\,
	datad => \module_fault_vector_pin[187]~input_o\,
	combout => \u_health_mon|Add184~2_combout\);

-- Location: LCCOMB_X80_Y10_N8
\u_health_mon|Add180~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add180~2_combout\ = \module_fault_vector_pin[180]~input_o\ $ (\module_fault_vector_pin[183]~input_o\ $ (\module_fault_vector_pin[182]~input_o\ $ (\module_fault_vector_pin[181]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[180]~input_o\,
	datab => \module_fault_vector_pin[183]~input_o\,
	datac => \module_fault_vector_pin[182]~input_o\,
	datad => \module_fault_vector_pin[181]~input_o\,
	combout => \u_health_mon|Add180~2_combout\);

-- Location: LCCOMB_X80_Y10_N18
\u_health_mon|Add182~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add182~0_combout\ = (\u_health_mon|Add184~2_combout\ & (\u_health_mon|Add180~2_combout\ $ (VCC))) # (!\u_health_mon|Add184~2_combout\ & (\u_health_mon|Add180~2_combout\ & VCC))
-- \u_health_mon|Add182~1\ = CARRY((\u_health_mon|Add184~2_combout\ & \u_health_mon|Add180~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add184~2_combout\,
	datab => \u_health_mon|Add180~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add182~0_combout\,
	cout => \u_health_mon|Add182~1\);

-- Location: LCCOMB_X80_Y10_N20
\u_health_mon|Add182~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add182~2_combout\ = (\u_health_mon|Add184~1_combout\ & ((\u_health_mon|Add180~1_combout\ & (\u_health_mon|Add182~1\ & VCC)) # (!\u_health_mon|Add180~1_combout\ & (!\u_health_mon|Add182~1\)))) # (!\u_health_mon|Add184~1_combout\ & 
-- ((\u_health_mon|Add180~1_combout\ & (!\u_health_mon|Add182~1\)) # (!\u_health_mon|Add180~1_combout\ & ((\u_health_mon|Add182~1\) # (GND)))))
-- \u_health_mon|Add182~3\ = CARRY((\u_health_mon|Add184~1_combout\ & (!\u_health_mon|Add180~1_combout\ & !\u_health_mon|Add182~1\)) # (!\u_health_mon|Add184~1_combout\ & ((!\u_health_mon|Add182~1\) # (!\u_health_mon|Add180~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add184~1_combout\,
	datab => \u_health_mon|Add180~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add182~1\,
	combout => \u_health_mon|Add182~2_combout\,
	cout => \u_health_mon|Add182~3\);

-- Location: LCCOMB_X80_Y10_N22
\u_health_mon|Add182~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add182~4_combout\ = ((\u_health_mon|Add184~0_combout\ $ (\u_health_mon|Add180~0_combout\ $ (!\u_health_mon|Add182~3\)))) # (GND)
-- \u_health_mon|Add182~5\ = CARRY((\u_health_mon|Add184~0_combout\ & ((\u_health_mon|Add180~0_combout\) # (!\u_health_mon|Add182~3\))) # (!\u_health_mon|Add184~0_combout\ & (\u_health_mon|Add180~0_combout\ & !\u_health_mon|Add182~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add184~0_combout\,
	datab => \u_health_mon|Add180~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add182~3\,
	combout => \u_health_mon|Add182~4_combout\,
	cout => \u_health_mon|Add182~5\);

-- Location: LCCOMB_X80_Y10_N24
\u_health_mon|Add182~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add182~6_combout\ = \u_health_mon|Add182~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add182~5\,
	combout => \u_health_mon|Add182~6_combout\);

-- Location: IOIBUF_X81_Y11_N22
\module_fault_vector_pin[188]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(188),
	o => \module_fault_vector_pin[188]~input_o\);

-- Location: IOIBUF_X81_Y9_N1
\module_fault_vector_pin[191]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(191),
	o => \module_fault_vector_pin[191]~input_o\);

-- Location: IOIBUF_X81_Y7_N1
\module_fault_vector_pin[189]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(189),
	o => \module_fault_vector_pin[189]~input_o\);

-- Location: IOIBUF_X81_Y14_N1
\module_fault_vector_pin[190]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(190),
	o => \module_fault_vector_pin[190]~input_o\);

-- Location: LCCOMB_X80_Y14_N8
\u_health_mon|Add188~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add188~0_combout\ = (\module_fault_vector_pin[188]~input_o\ & (\module_fault_vector_pin[191]~input_o\ & (\module_fault_vector_pin[189]~input_o\ & \module_fault_vector_pin[190]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[188]~input_o\,
	datab => \module_fault_vector_pin[191]~input_o\,
	datac => \module_fault_vector_pin[189]~input_o\,
	datad => \module_fault_vector_pin[190]~input_o\,
	combout => \u_health_mon|Add188~0_combout\);

-- Location: IOIBUF_X81_Y14_N8
\module_fault_vector_pin[192]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(192),
	o => \module_fault_vector_pin[192]~input_o\);

-- Location: IOIBUF_X81_Y7_N15
\module_fault_vector_pin[194]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(194),
	o => \module_fault_vector_pin[194]~input_o\);

-- Location: IOIBUF_X81_Y7_N8
\module_fault_vector_pin[193]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(193),
	o => \module_fault_vector_pin[193]~input_o\);

-- Location: IOIBUF_X81_Y14_N15
\module_fault_vector_pin[195]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(195),
	o => \module_fault_vector_pin[195]~input_o\);

-- Location: LCCOMB_X80_Y14_N2
\u_health_mon|Add192~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add192~0_combout\ = (\module_fault_vector_pin[192]~input_o\ & (\module_fault_vector_pin[194]~input_o\ & (\module_fault_vector_pin[193]~input_o\ & \module_fault_vector_pin[195]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[192]~input_o\,
	datab => \module_fault_vector_pin[194]~input_o\,
	datac => \module_fault_vector_pin[193]~input_o\,
	datad => \module_fault_vector_pin[195]~input_o\,
	combout => \u_health_mon|Add192~0_combout\);

-- Location: LCCOMB_X80_Y14_N30
\u_health_mon|Add192~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add192~1_combout\ = (\module_fault_vector_pin[192]~input_o\ & ((\module_fault_vector_pin[194]~input_o\ & ((!\module_fault_vector_pin[195]~input_o\) # (!\module_fault_vector_pin[193]~input_o\))) # (!\module_fault_vector_pin[194]~input_o\ & 
-- ((\module_fault_vector_pin[193]~input_o\) # (\module_fault_vector_pin[195]~input_o\))))) # (!\module_fault_vector_pin[192]~input_o\ & ((\module_fault_vector_pin[194]~input_o\ & ((\module_fault_vector_pin[193]~input_o\) # 
-- (\module_fault_vector_pin[195]~input_o\))) # (!\module_fault_vector_pin[194]~input_o\ & (\module_fault_vector_pin[193]~input_o\ & \module_fault_vector_pin[195]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[192]~input_o\,
	datab => \module_fault_vector_pin[194]~input_o\,
	datac => \module_fault_vector_pin[193]~input_o\,
	datad => \module_fault_vector_pin[195]~input_o\,
	combout => \u_health_mon|Add192~1_combout\);

-- Location: LCCOMB_X80_Y14_N4
\u_health_mon|Add188~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add188~1_combout\ = (\module_fault_vector_pin[188]~input_o\ & ((\module_fault_vector_pin[191]~input_o\ & ((!\module_fault_vector_pin[190]~input_o\) # (!\module_fault_vector_pin[189]~input_o\))) # (!\module_fault_vector_pin[191]~input_o\ & 
-- ((\module_fault_vector_pin[189]~input_o\) # (\module_fault_vector_pin[190]~input_o\))))) # (!\module_fault_vector_pin[188]~input_o\ & ((\module_fault_vector_pin[191]~input_o\ & ((\module_fault_vector_pin[189]~input_o\) # 
-- (\module_fault_vector_pin[190]~input_o\))) # (!\module_fault_vector_pin[191]~input_o\ & (\module_fault_vector_pin[189]~input_o\ & \module_fault_vector_pin[190]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[188]~input_o\,
	datab => \module_fault_vector_pin[191]~input_o\,
	datac => \module_fault_vector_pin[189]~input_o\,
	datad => \module_fault_vector_pin[190]~input_o\,
	combout => \u_health_mon|Add188~1_combout\);

-- Location: LCCOMB_X80_Y14_N0
\u_health_mon|Add188~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add188~2_combout\ = \module_fault_vector_pin[188]~input_o\ $ (\module_fault_vector_pin[191]~input_o\ $ (\module_fault_vector_pin[189]~input_o\ $ (\module_fault_vector_pin[190]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[188]~input_o\,
	datab => \module_fault_vector_pin[191]~input_o\,
	datac => \module_fault_vector_pin[189]~input_o\,
	datad => \module_fault_vector_pin[190]~input_o\,
	combout => \u_health_mon|Add188~2_combout\);

-- Location: LCCOMB_X80_Y14_N20
\u_health_mon|Add192~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add192~2_combout\ = \module_fault_vector_pin[192]~input_o\ $ (\module_fault_vector_pin[194]~input_o\ $ (\module_fault_vector_pin[193]~input_o\ $ (\module_fault_vector_pin[195]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[192]~input_o\,
	datab => \module_fault_vector_pin[194]~input_o\,
	datac => \module_fault_vector_pin[193]~input_o\,
	datad => \module_fault_vector_pin[195]~input_o\,
	combout => \u_health_mon|Add192~2_combout\);

-- Location: LCCOMB_X80_Y14_N22
\u_health_mon|Add190~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add190~0_combout\ = (\u_health_mon|Add188~2_combout\ & (\u_health_mon|Add192~2_combout\ $ (VCC))) # (!\u_health_mon|Add188~2_combout\ & (\u_health_mon|Add192~2_combout\ & VCC))
-- \u_health_mon|Add190~1\ = CARRY((\u_health_mon|Add188~2_combout\ & \u_health_mon|Add192~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add188~2_combout\,
	datab => \u_health_mon|Add192~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add190~0_combout\,
	cout => \u_health_mon|Add190~1\);

-- Location: LCCOMB_X80_Y14_N24
\u_health_mon|Add190~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add190~2_combout\ = (\u_health_mon|Add192~1_combout\ & ((\u_health_mon|Add188~1_combout\ & (\u_health_mon|Add190~1\ & VCC)) # (!\u_health_mon|Add188~1_combout\ & (!\u_health_mon|Add190~1\)))) # (!\u_health_mon|Add192~1_combout\ & 
-- ((\u_health_mon|Add188~1_combout\ & (!\u_health_mon|Add190~1\)) # (!\u_health_mon|Add188~1_combout\ & ((\u_health_mon|Add190~1\) # (GND)))))
-- \u_health_mon|Add190~3\ = CARRY((\u_health_mon|Add192~1_combout\ & (!\u_health_mon|Add188~1_combout\ & !\u_health_mon|Add190~1\)) # (!\u_health_mon|Add192~1_combout\ & ((!\u_health_mon|Add190~1\) # (!\u_health_mon|Add188~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add192~1_combout\,
	datab => \u_health_mon|Add188~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add190~1\,
	combout => \u_health_mon|Add190~2_combout\,
	cout => \u_health_mon|Add190~3\);

-- Location: LCCOMB_X80_Y14_N26
\u_health_mon|Add190~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add190~4_combout\ = ((\u_health_mon|Add188~0_combout\ $ (\u_health_mon|Add192~0_combout\ $ (!\u_health_mon|Add190~3\)))) # (GND)
-- \u_health_mon|Add190~5\ = CARRY((\u_health_mon|Add188~0_combout\ & ((\u_health_mon|Add192~0_combout\) # (!\u_health_mon|Add190~3\))) # (!\u_health_mon|Add188~0_combout\ & (\u_health_mon|Add192~0_combout\ & !\u_health_mon|Add190~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add188~0_combout\,
	datab => \u_health_mon|Add192~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add190~3\,
	combout => \u_health_mon|Add190~4_combout\,
	cout => \u_health_mon|Add190~5\);

-- Location: LCCOMB_X80_Y14_N28
\u_health_mon|Add190~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add190~6_combout\ = \u_health_mon|Add190~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add190~5\,
	combout => \u_health_mon|Add190~6_combout\);

-- Location: LCCOMB_X80_Y14_N10
\u_health_mon|Add186~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add186~0_combout\ = (\u_health_mon|Add190~0_combout\ & (\u_health_mon|Add182~0_combout\ $ (VCC))) # (!\u_health_mon|Add190~0_combout\ & (\u_health_mon|Add182~0_combout\ & VCC))
-- \u_health_mon|Add186~1\ = CARRY((\u_health_mon|Add190~0_combout\ & \u_health_mon|Add182~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add190~0_combout\,
	datab => \u_health_mon|Add182~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add186~0_combout\,
	cout => \u_health_mon|Add186~1\);

-- Location: LCCOMB_X80_Y14_N12
\u_health_mon|Add186~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add186~2_combout\ = (\u_health_mon|Add182~2_combout\ & ((\u_health_mon|Add190~2_combout\ & (\u_health_mon|Add186~1\ & VCC)) # (!\u_health_mon|Add190~2_combout\ & (!\u_health_mon|Add186~1\)))) # (!\u_health_mon|Add182~2_combout\ & 
-- ((\u_health_mon|Add190~2_combout\ & (!\u_health_mon|Add186~1\)) # (!\u_health_mon|Add190~2_combout\ & ((\u_health_mon|Add186~1\) # (GND)))))
-- \u_health_mon|Add186~3\ = CARRY((\u_health_mon|Add182~2_combout\ & (!\u_health_mon|Add190~2_combout\ & !\u_health_mon|Add186~1\)) # (!\u_health_mon|Add182~2_combout\ & ((!\u_health_mon|Add186~1\) # (!\u_health_mon|Add190~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add182~2_combout\,
	datab => \u_health_mon|Add190~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add186~1\,
	combout => \u_health_mon|Add186~2_combout\,
	cout => \u_health_mon|Add186~3\);

-- Location: LCCOMB_X80_Y14_N14
\u_health_mon|Add186~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add186~4_combout\ = ((\u_health_mon|Add190~4_combout\ $ (\u_health_mon|Add182~4_combout\ $ (!\u_health_mon|Add186~3\)))) # (GND)
-- \u_health_mon|Add186~5\ = CARRY((\u_health_mon|Add190~4_combout\ & ((\u_health_mon|Add182~4_combout\) # (!\u_health_mon|Add186~3\))) # (!\u_health_mon|Add190~4_combout\ & (\u_health_mon|Add182~4_combout\ & !\u_health_mon|Add186~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add190~4_combout\,
	datab => \u_health_mon|Add182~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add186~3\,
	combout => \u_health_mon|Add186~4_combout\,
	cout => \u_health_mon|Add186~5\);

-- Location: LCCOMB_X80_Y14_N16
\u_health_mon|Add186~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add186~6_combout\ = (\u_health_mon|Add182~6_combout\ & ((\u_health_mon|Add190~6_combout\ & (\u_health_mon|Add186~5\ & VCC)) # (!\u_health_mon|Add190~6_combout\ & (!\u_health_mon|Add186~5\)))) # (!\u_health_mon|Add182~6_combout\ & 
-- ((\u_health_mon|Add190~6_combout\ & (!\u_health_mon|Add186~5\)) # (!\u_health_mon|Add190~6_combout\ & ((\u_health_mon|Add186~5\) # (GND)))))
-- \u_health_mon|Add186~7\ = CARRY((\u_health_mon|Add182~6_combout\ & (!\u_health_mon|Add190~6_combout\ & !\u_health_mon|Add186~5\)) # (!\u_health_mon|Add182~6_combout\ & ((!\u_health_mon|Add186~5\) # (!\u_health_mon|Add190~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add182~6_combout\,
	datab => \u_health_mon|Add190~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add186~5\,
	combout => \u_health_mon|Add186~6_combout\,
	cout => \u_health_mon|Add186~7\);

-- Location: IOIBUF_X81_Y6_N8
\module_fault_vector_pin[210]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(210),
	o => \module_fault_vector_pin[210]~input_o\);

-- Location: IOIBUF_X81_Y6_N1
\module_fault_vector_pin[208]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(208),
	o => \module_fault_vector_pin[208]~input_o\);

-- Location: IOIBUF_X81_Y4_N1
\module_fault_vector_pin[209]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(209),
	o => \module_fault_vector_pin[209]~input_o\);

-- Location: IOIBUF_X81_Y6_N15
\module_fault_vector_pin[211]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(211),
	o => \module_fault_vector_pin[211]~input_o\);

-- Location: LCCOMB_X80_Y6_N26
\u_health_mon|Add208~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add208~0_combout\ = (\module_fault_vector_pin[210]~input_o\ & (\module_fault_vector_pin[208]~input_o\ & (\module_fault_vector_pin[209]~input_o\ & \module_fault_vector_pin[211]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[210]~input_o\,
	datab => \module_fault_vector_pin[208]~input_o\,
	datac => \module_fault_vector_pin[209]~input_o\,
	datad => \module_fault_vector_pin[211]~input_o\,
	combout => \u_health_mon|Add208~0_combout\);

-- Location: IOIBUF_X81_Y4_N8
\module_fault_vector_pin[207]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(207),
	o => \module_fault_vector_pin[207]~input_o\);

-- Location: IOIBUF_X81_Y3_N15
\module_fault_vector_pin[206]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(206),
	o => \module_fault_vector_pin[206]~input_o\);

-- Location: IOIBUF_X81_Y2_N22
\module_fault_vector_pin[204]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(204),
	o => \module_fault_vector_pin[204]~input_o\);

-- Location: IOIBUF_X81_Y4_N15
\module_fault_vector_pin[205]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(205),
	o => \module_fault_vector_pin[205]~input_o\);

-- Location: LCCOMB_X80_Y6_N24
\u_health_mon|Add204~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add204~0_combout\ = (\module_fault_vector_pin[207]~input_o\ & (\module_fault_vector_pin[206]~input_o\ & (\module_fault_vector_pin[204]~input_o\ & \module_fault_vector_pin[205]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[207]~input_o\,
	datab => \module_fault_vector_pin[206]~input_o\,
	datac => \module_fault_vector_pin[204]~input_o\,
	datad => \module_fault_vector_pin[205]~input_o\,
	combout => \u_health_mon|Add204~0_combout\);

-- Location: LCCOMB_X80_Y6_N30
\u_health_mon|Add208~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add208~1_combout\ = (\module_fault_vector_pin[210]~input_o\ & ((\module_fault_vector_pin[208]~input_o\ & ((!\module_fault_vector_pin[211]~input_o\) # (!\module_fault_vector_pin[209]~input_o\))) # (!\module_fault_vector_pin[208]~input_o\ & 
-- ((\module_fault_vector_pin[209]~input_o\) # (\module_fault_vector_pin[211]~input_o\))))) # (!\module_fault_vector_pin[210]~input_o\ & ((\module_fault_vector_pin[208]~input_o\ & ((\module_fault_vector_pin[209]~input_o\) # 
-- (\module_fault_vector_pin[211]~input_o\))) # (!\module_fault_vector_pin[208]~input_o\ & (\module_fault_vector_pin[209]~input_o\ & \module_fault_vector_pin[211]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[210]~input_o\,
	datab => \module_fault_vector_pin[208]~input_o\,
	datac => \module_fault_vector_pin[209]~input_o\,
	datad => \module_fault_vector_pin[211]~input_o\,
	combout => \u_health_mon|Add208~1_combout\);

-- Location: LCCOMB_X80_Y6_N20
\u_health_mon|Add204~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add204~1_combout\ = (\module_fault_vector_pin[207]~input_o\ & ((\module_fault_vector_pin[206]~input_o\ & ((!\module_fault_vector_pin[205]~input_o\) # (!\module_fault_vector_pin[204]~input_o\))) # (!\module_fault_vector_pin[206]~input_o\ & 
-- ((\module_fault_vector_pin[204]~input_o\) # (\module_fault_vector_pin[205]~input_o\))))) # (!\module_fault_vector_pin[207]~input_o\ & ((\module_fault_vector_pin[206]~input_o\ & ((\module_fault_vector_pin[204]~input_o\) # 
-- (\module_fault_vector_pin[205]~input_o\))) # (!\module_fault_vector_pin[206]~input_o\ & (\module_fault_vector_pin[204]~input_o\ & \module_fault_vector_pin[205]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[207]~input_o\,
	datab => \module_fault_vector_pin[206]~input_o\,
	datac => \module_fault_vector_pin[204]~input_o\,
	datad => \module_fault_vector_pin[205]~input_o\,
	combout => \u_health_mon|Add204~1_combout\);

-- Location: LCCOMB_X80_Y6_N18
\u_health_mon|Add208~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add208~2_combout\ = \module_fault_vector_pin[210]~input_o\ $ (\module_fault_vector_pin[208]~input_o\ $ (\module_fault_vector_pin[209]~input_o\ $ (\module_fault_vector_pin[211]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[210]~input_o\,
	datab => \module_fault_vector_pin[208]~input_o\,
	datac => \module_fault_vector_pin[209]~input_o\,
	datad => \module_fault_vector_pin[211]~input_o\,
	combout => \u_health_mon|Add208~2_combout\);

-- Location: LCCOMB_X80_Y6_N16
\u_health_mon|Add204~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add204~2_combout\ = \module_fault_vector_pin[207]~input_o\ $ (\module_fault_vector_pin[206]~input_o\ $ (\module_fault_vector_pin[204]~input_o\ $ (\module_fault_vector_pin[205]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[207]~input_o\,
	datab => \module_fault_vector_pin[206]~input_o\,
	datac => \module_fault_vector_pin[204]~input_o\,
	datad => \module_fault_vector_pin[205]~input_o\,
	combout => \u_health_mon|Add204~2_combout\);

-- Location: LCCOMB_X80_Y6_N6
\u_health_mon|Add206~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add206~0_combout\ = (\u_health_mon|Add208~2_combout\ & (\u_health_mon|Add204~2_combout\ $ (VCC))) # (!\u_health_mon|Add208~2_combout\ & (\u_health_mon|Add204~2_combout\ & VCC))
-- \u_health_mon|Add206~1\ = CARRY((\u_health_mon|Add208~2_combout\ & \u_health_mon|Add204~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add208~2_combout\,
	datab => \u_health_mon|Add204~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add206~0_combout\,
	cout => \u_health_mon|Add206~1\);

-- Location: LCCOMB_X80_Y6_N8
\u_health_mon|Add206~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add206~2_combout\ = (\u_health_mon|Add208~1_combout\ & ((\u_health_mon|Add204~1_combout\ & (\u_health_mon|Add206~1\ & VCC)) # (!\u_health_mon|Add204~1_combout\ & (!\u_health_mon|Add206~1\)))) # (!\u_health_mon|Add208~1_combout\ & 
-- ((\u_health_mon|Add204~1_combout\ & (!\u_health_mon|Add206~1\)) # (!\u_health_mon|Add204~1_combout\ & ((\u_health_mon|Add206~1\) # (GND)))))
-- \u_health_mon|Add206~3\ = CARRY((\u_health_mon|Add208~1_combout\ & (!\u_health_mon|Add204~1_combout\ & !\u_health_mon|Add206~1\)) # (!\u_health_mon|Add208~1_combout\ & ((!\u_health_mon|Add206~1\) # (!\u_health_mon|Add204~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add208~1_combout\,
	datab => \u_health_mon|Add204~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add206~1\,
	combout => \u_health_mon|Add206~2_combout\,
	cout => \u_health_mon|Add206~3\);

-- Location: LCCOMB_X80_Y6_N10
\u_health_mon|Add206~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add206~4_combout\ = ((\u_health_mon|Add208~0_combout\ $ (\u_health_mon|Add204~0_combout\ $ (!\u_health_mon|Add206~3\)))) # (GND)
-- \u_health_mon|Add206~5\ = CARRY((\u_health_mon|Add208~0_combout\ & ((\u_health_mon|Add204~0_combout\) # (!\u_health_mon|Add206~3\))) # (!\u_health_mon|Add208~0_combout\ & (\u_health_mon|Add204~0_combout\ & !\u_health_mon|Add206~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add208~0_combout\,
	datab => \u_health_mon|Add204~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add206~3\,
	combout => \u_health_mon|Add206~4_combout\,
	cout => \u_health_mon|Add206~5\);

-- Location: LCCOMB_X80_Y6_N12
\u_health_mon|Add206~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add206~6_combout\ = \u_health_mon|Add206~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add206~5\,
	combout => \u_health_mon|Add206~6_combout\);

-- Location: IOIBUF_X81_Y3_N1
\module_fault_vector_pin[203]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(203),
	o => \module_fault_vector_pin[203]~input_o\);

-- Location: IOIBUF_X81_Y11_N15
\module_fault_vector_pin[201]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(201),
	o => \module_fault_vector_pin[201]~input_o\);

-- Location: IOIBUF_X81_Y11_N8
\module_fault_vector_pin[200]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(200),
	o => \module_fault_vector_pin[200]~input_o\);

-- Location: IOIBUF_X81_Y16_N1
\module_fault_vector_pin[202]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(202),
	o => \module_fault_vector_pin[202]~input_o\);

-- Location: LCCOMB_X77_Y14_N12
\u_health_mon|Add200~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add200~0_combout\ = (\module_fault_vector_pin[203]~input_o\ & (\module_fault_vector_pin[201]~input_o\ & (\module_fault_vector_pin[200]~input_o\ & \module_fault_vector_pin[202]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[203]~input_o\,
	datab => \module_fault_vector_pin[201]~input_o\,
	datac => \module_fault_vector_pin[200]~input_o\,
	datad => \module_fault_vector_pin[202]~input_o\,
	combout => \u_health_mon|Add200~0_combout\);

-- Location: IOIBUF_X81_Y11_N1
\module_fault_vector_pin[196]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(196),
	o => \module_fault_vector_pin[196]~input_o\);

-- Location: IOIBUF_X81_Y9_N8
\module_fault_vector_pin[197]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(197),
	o => \module_fault_vector_pin[197]~input_o\);

-- Location: IOIBUF_X81_Y12_N1
\module_fault_vector_pin[198]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(198),
	o => \module_fault_vector_pin[198]~input_o\);

-- Location: IOIBUF_X81_Y12_N8
\module_fault_vector_pin[199]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(199),
	o => \module_fault_vector_pin[199]~input_o\);

-- Location: LCCOMB_X77_Y14_N0
\u_health_mon|Add196~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add196~0_combout\ = (\module_fault_vector_pin[196]~input_o\ & (\module_fault_vector_pin[197]~input_o\ & (\module_fault_vector_pin[198]~input_o\ & \module_fault_vector_pin[199]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[196]~input_o\,
	datab => \module_fault_vector_pin[197]~input_o\,
	datac => \module_fault_vector_pin[198]~input_o\,
	datad => \module_fault_vector_pin[199]~input_o\,
	combout => \u_health_mon|Add196~0_combout\);

-- Location: LCCOMB_X77_Y14_N30
\u_health_mon|Add196~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add196~1_combout\ = (\module_fault_vector_pin[196]~input_o\ & ((\module_fault_vector_pin[197]~input_o\ & ((!\module_fault_vector_pin[199]~input_o\) # (!\module_fault_vector_pin[198]~input_o\))) # (!\module_fault_vector_pin[197]~input_o\ & 
-- ((\module_fault_vector_pin[198]~input_o\) # (\module_fault_vector_pin[199]~input_o\))))) # (!\module_fault_vector_pin[196]~input_o\ & ((\module_fault_vector_pin[197]~input_o\ & ((\module_fault_vector_pin[198]~input_o\) # 
-- (\module_fault_vector_pin[199]~input_o\))) # (!\module_fault_vector_pin[197]~input_o\ & (\module_fault_vector_pin[198]~input_o\ & \module_fault_vector_pin[199]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[196]~input_o\,
	datab => \module_fault_vector_pin[197]~input_o\,
	datac => \module_fault_vector_pin[198]~input_o\,
	datad => \module_fault_vector_pin[199]~input_o\,
	combout => \u_health_mon|Add196~1_combout\);

-- Location: LCCOMB_X77_Y14_N24
\u_health_mon|Add200~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add200~1_combout\ = (\module_fault_vector_pin[203]~input_o\ & ((\module_fault_vector_pin[201]~input_o\ & ((!\module_fault_vector_pin[202]~input_o\) # (!\module_fault_vector_pin[200]~input_o\))) # (!\module_fault_vector_pin[201]~input_o\ & 
-- ((\module_fault_vector_pin[200]~input_o\) # (\module_fault_vector_pin[202]~input_o\))))) # (!\module_fault_vector_pin[203]~input_o\ & ((\module_fault_vector_pin[201]~input_o\ & ((\module_fault_vector_pin[200]~input_o\) # 
-- (\module_fault_vector_pin[202]~input_o\))) # (!\module_fault_vector_pin[201]~input_o\ & (\module_fault_vector_pin[200]~input_o\ & \module_fault_vector_pin[202]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[203]~input_o\,
	datab => \module_fault_vector_pin[201]~input_o\,
	datac => \module_fault_vector_pin[200]~input_o\,
	datad => \module_fault_vector_pin[202]~input_o\,
	combout => \u_health_mon|Add200~1_combout\);

-- Location: LCCOMB_X77_Y14_N26
\u_health_mon|Add196~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add196~2_combout\ = \module_fault_vector_pin[196]~input_o\ $ (\module_fault_vector_pin[197]~input_o\ $ (\module_fault_vector_pin[198]~input_o\ $ (\module_fault_vector_pin[199]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[196]~input_o\,
	datab => \module_fault_vector_pin[197]~input_o\,
	datac => \module_fault_vector_pin[198]~input_o\,
	datad => \module_fault_vector_pin[199]~input_o\,
	combout => \u_health_mon|Add196~2_combout\);

-- Location: LCCOMB_X77_Y14_N28
\u_health_mon|Add200~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add200~2_combout\ = \module_fault_vector_pin[203]~input_o\ $ (\module_fault_vector_pin[201]~input_o\ $ (\module_fault_vector_pin[200]~input_o\ $ (\module_fault_vector_pin[202]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[203]~input_o\,
	datab => \module_fault_vector_pin[201]~input_o\,
	datac => \module_fault_vector_pin[200]~input_o\,
	datad => \module_fault_vector_pin[202]~input_o\,
	combout => \u_health_mon|Add200~2_combout\);

-- Location: LCCOMB_X77_Y14_N14
\u_health_mon|Add198~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add198~0_combout\ = (\u_health_mon|Add196~2_combout\ & (\u_health_mon|Add200~2_combout\ $ (VCC))) # (!\u_health_mon|Add196~2_combout\ & (\u_health_mon|Add200~2_combout\ & VCC))
-- \u_health_mon|Add198~1\ = CARRY((\u_health_mon|Add196~2_combout\ & \u_health_mon|Add200~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add196~2_combout\,
	datab => \u_health_mon|Add200~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add198~0_combout\,
	cout => \u_health_mon|Add198~1\);

-- Location: LCCOMB_X77_Y14_N16
\u_health_mon|Add198~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add198~2_combout\ = (\u_health_mon|Add196~1_combout\ & ((\u_health_mon|Add200~1_combout\ & (\u_health_mon|Add198~1\ & VCC)) # (!\u_health_mon|Add200~1_combout\ & (!\u_health_mon|Add198~1\)))) # (!\u_health_mon|Add196~1_combout\ & 
-- ((\u_health_mon|Add200~1_combout\ & (!\u_health_mon|Add198~1\)) # (!\u_health_mon|Add200~1_combout\ & ((\u_health_mon|Add198~1\) # (GND)))))
-- \u_health_mon|Add198~3\ = CARRY((\u_health_mon|Add196~1_combout\ & (!\u_health_mon|Add200~1_combout\ & !\u_health_mon|Add198~1\)) # (!\u_health_mon|Add196~1_combout\ & ((!\u_health_mon|Add198~1\) # (!\u_health_mon|Add200~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add196~1_combout\,
	datab => \u_health_mon|Add200~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add198~1\,
	combout => \u_health_mon|Add198~2_combout\,
	cout => \u_health_mon|Add198~3\);

-- Location: LCCOMB_X77_Y14_N18
\u_health_mon|Add198~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add198~4_combout\ = ((\u_health_mon|Add200~0_combout\ $ (\u_health_mon|Add196~0_combout\ $ (!\u_health_mon|Add198~3\)))) # (GND)
-- \u_health_mon|Add198~5\ = CARRY((\u_health_mon|Add200~0_combout\ & ((\u_health_mon|Add196~0_combout\) # (!\u_health_mon|Add198~3\))) # (!\u_health_mon|Add200~0_combout\ & (\u_health_mon|Add196~0_combout\ & !\u_health_mon|Add198~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add200~0_combout\,
	datab => \u_health_mon|Add196~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add198~3\,
	combout => \u_health_mon|Add198~4_combout\,
	cout => \u_health_mon|Add198~5\);

-- Location: LCCOMB_X77_Y14_N20
\u_health_mon|Add198~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add198~6_combout\ = \u_health_mon|Add198~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add198~5\,
	combout => \u_health_mon|Add198~6_combout\);

-- Location: LCCOMB_X77_Y14_N2
\u_health_mon|Add202~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add202~0_combout\ = (\u_health_mon|Add206~0_combout\ & (\u_health_mon|Add198~0_combout\ $ (VCC))) # (!\u_health_mon|Add206~0_combout\ & (\u_health_mon|Add198~0_combout\ & VCC))
-- \u_health_mon|Add202~1\ = CARRY((\u_health_mon|Add206~0_combout\ & \u_health_mon|Add198~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add206~0_combout\,
	datab => \u_health_mon|Add198~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add202~0_combout\,
	cout => \u_health_mon|Add202~1\);

-- Location: LCCOMB_X77_Y14_N4
\u_health_mon|Add202~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add202~2_combout\ = (\u_health_mon|Add206~2_combout\ & ((\u_health_mon|Add198~2_combout\ & (\u_health_mon|Add202~1\ & VCC)) # (!\u_health_mon|Add198~2_combout\ & (!\u_health_mon|Add202~1\)))) # (!\u_health_mon|Add206~2_combout\ & 
-- ((\u_health_mon|Add198~2_combout\ & (!\u_health_mon|Add202~1\)) # (!\u_health_mon|Add198~2_combout\ & ((\u_health_mon|Add202~1\) # (GND)))))
-- \u_health_mon|Add202~3\ = CARRY((\u_health_mon|Add206~2_combout\ & (!\u_health_mon|Add198~2_combout\ & !\u_health_mon|Add202~1\)) # (!\u_health_mon|Add206~2_combout\ & ((!\u_health_mon|Add202~1\) # (!\u_health_mon|Add198~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add206~2_combout\,
	datab => \u_health_mon|Add198~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add202~1\,
	combout => \u_health_mon|Add202~2_combout\,
	cout => \u_health_mon|Add202~3\);

-- Location: LCCOMB_X77_Y14_N6
\u_health_mon|Add202~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add202~4_combout\ = ((\u_health_mon|Add206~4_combout\ $ (\u_health_mon|Add198~4_combout\ $ (!\u_health_mon|Add202~3\)))) # (GND)
-- \u_health_mon|Add202~5\ = CARRY((\u_health_mon|Add206~4_combout\ & ((\u_health_mon|Add198~4_combout\) # (!\u_health_mon|Add202~3\))) # (!\u_health_mon|Add206~4_combout\ & (\u_health_mon|Add198~4_combout\ & !\u_health_mon|Add202~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add206~4_combout\,
	datab => \u_health_mon|Add198~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add202~3\,
	combout => \u_health_mon|Add202~4_combout\,
	cout => \u_health_mon|Add202~5\);

-- Location: LCCOMB_X77_Y14_N8
\u_health_mon|Add202~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add202~6_combout\ = (\u_health_mon|Add206~6_combout\ & ((\u_health_mon|Add198~6_combout\ & (\u_health_mon|Add202~5\ & VCC)) # (!\u_health_mon|Add198~6_combout\ & (!\u_health_mon|Add202~5\)))) # (!\u_health_mon|Add206~6_combout\ & 
-- ((\u_health_mon|Add198~6_combout\ & (!\u_health_mon|Add202~5\)) # (!\u_health_mon|Add198~6_combout\ & ((\u_health_mon|Add202~5\) # (GND)))))
-- \u_health_mon|Add202~7\ = CARRY((\u_health_mon|Add206~6_combout\ & (!\u_health_mon|Add198~6_combout\ & !\u_health_mon|Add202~5\)) # (!\u_health_mon|Add206~6_combout\ & ((!\u_health_mon|Add202~5\) # (!\u_health_mon|Add198~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add206~6_combout\,
	datab => \u_health_mon|Add198~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add202~5\,
	combout => \u_health_mon|Add202~6_combout\,
	cout => \u_health_mon|Add202~7\);

-- Location: LCCOMB_X76_Y14_N8
\u_health_mon|Add194~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add194~0_combout\ = (\u_health_mon|Add202~0_combout\ & (\u_health_mon|Add186~0_combout\ $ (VCC))) # (!\u_health_mon|Add202~0_combout\ & (\u_health_mon|Add186~0_combout\ & VCC))
-- \u_health_mon|Add194~1\ = CARRY((\u_health_mon|Add202~0_combout\ & \u_health_mon|Add186~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add202~0_combout\,
	datab => \u_health_mon|Add186~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add194~0_combout\,
	cout => \u_health_mon|Add194~1\);

-- Location: LCCOMB_X76_Y14_N10
\u_health_mon|Add194~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add194~2_combout\ = (\u_health_mon|Add202~2_combout\ & ((\u_health_mon|Add186~2_combout\ & (\u_health_mon|Add194~1\ & VCC)) # (!\u_health_mon|Add186~2_combout\ & (!\u_health_mon|Add194~1\)))) # (!\u_health_mon|Add202~2_combout\ & 
-- ((\u_health_mon|Add186~2_combout\ & (!\u_health_mon|Add194~1\)) # (!\u_health_mon|Add186~2_combout\ & ((\u_health_mon|Add194~1\) # (GND)))))
-- \u_health_mon|Add194~3\ = CARRY((\u_health_mon|Add202~2_combout\ & (!\u_health_mon|Add186~2_combout\ & !\u_health_mon|Add194~1\)) # (!\u_health_mon|Add202~2_combout\ & ((!\u_health_mon|Add194~1\) # (!\u_health_mon|Add186~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add202~2_combout\,
	datab => \u_health_mon|Add186~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add194~1\,
	combout => \u_health_mon|Add194~2_combout\,
	cout => \u_health_mon|Add194~3\);

-- Location: LCCOMB_X76_Y14_N12
\u_health_mon|Add194~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add194~4_combout\ = ((\u_health_mon|Add202~4_combout\ $ (\u_health_mon|Add186~4_combout\ $ (!\u_health_mon|Add194~3\)))) # (GND)
-- \u_health_mon|Add194~5\ = CARRY((\u_health_mon|Add202~4_combout\ & ((\u_health_mon|Add186~4_combout\) # (!\u_health_mon|Add194~3\))) # (!\u_health_mon|Add202~4_combout\ & (\u_health_mon|Add186~4_combout\ & !\u_health_mon|Add194~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add202~4_combout\,
	datab => \u_health_mon|Add186~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add194~3\,
	combout => \u_health_mon|Add194~4_combout\,
	cout => \u_health_mon|Add194~5\);

-- Location: LCCOMB_X76_Y14_N14
\u_health_mon|Add194~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add194~6_combout\ = (\u_health_mon|Add186~6_combout\ & ((\u_health_mon|Add202~6_combout\ & (\u_health_mon|Add194~5\ & VCC)) # (!\u_health_mon|Add202~6_combout\ & (!\u_health_mon|Add194~5\)))) # (!\u_health_mon|Add186~6_combout\ & 
-- ((\u_health_mon|Add202~6_combout\ & (!\u_health_mon|Add194~5\)) # (!\u_health_mon|Add202~6_combout\ & ((\u_health_mon|Add194~5\) # (GND)))))
-- \u_health_mon|Add194~7\ = CARRY((\u_health_mon|Add186~6_combout\ & (!\u_health_mon|Add202~6_combout\ & !\u_health_mon|Add194~5\)) # (!\u_health_mon|Add186~6_combout\ & ((!\u_health_mon|Add194~5\) # (!\u_health_mon|Add202~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add186~6_combout\,
	datab => \u_health_mon|Add202~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add194~5\,
	combout => \u_health_mon|Add194~6_combout\,
	cout => \u_health_mon|Add194~7\);

-- Location: IOIBUF_X81_Y34_N22
\module_fault_vector_pin[171]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(171),
	o => \module_fault_vector_pin[171]~input_o\);

-- Location: IOIBUF_X81_Y25_N1
\module_fault_vector_pin[170]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(170),
	o => \module_fault_vector_pin[170]~input_o\);

-- Location: IOIBUF_X81_Y25_N15
\module_fault_vector_pin[169]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(169),
	o => \module_fault_vector_pin[169]~input_o\);

-- Location: IOIBUF_X81_Y41_N8
\module_fault_vector_pin[168]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(168),
	o => \module_fault_vector_pin[168]~input_o\);

-- Location: LCCOMB_X80_Y41_N26
\u_health_mon|Add168~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add168~0_combout\ = (\module_fault_vector_pin[171]~input_o\ & (\module_fault_vector_pin[170]~input_o\ & (\module_fault_vector_pin[169]~input_o\ & \module_fault_vector_pin[168]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[171]~input_o\,
	datab => \module_fault_vector_pin[170]~input_o\,
	datac => \module_fault_vector_pin[169]~input_o\,
	datad => \module_fault_vector_pin[168]~input_o\,
	combout => \u_health_mon|Add168~0_combout\);

-- Location: IOIBUF_X81_Y17_N8
\module_fault_vector_pin[167]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(167),
	o => \module_fault_vector_pin[167]~input_o\);

-- Location: IOIBUF_X81_Y41_N1
\module_fault_vector_pin[166]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(166),
	o => \module_fault_vector_pin[166]~input_o\);

-- Location: IOIBUF_X81_Y23_N1
\module_fault_vector_pin[164]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(164),
	o => \module_fault_vector_pin[164]~input_o\);

-- Location: IOIBUF_X81_Y41_N15
\module_fault_vector_pin[165]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(165),
	o => \module_fault_vector_pin[165]~input_o\);

-- Location: LCCOMB_X80_Y41_N24
\u_health_mon|Add164~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add164~0_combout\ = (\module_fault_vector_pin[167]~input_o\ & (\module_fault_vector_pin[166]~input_o\ & (\module_fault_vector_pin[164]~input_o\ & \module_fault_vector_pin[165]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[167]~input_o\,
	datab => \module_fault_vector_pin[166]~input_o\,
	datac => \module_fault_vector_pin[164]~input_o\,
	datad => \module_fault_vector_pin[165]~input_o\,
	combout => \u_health_mon|Add164~0_combout\);

-- Location: LCCOMB_X80_Y41_N12
\u_health_mon|Add164~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add164~1_combout\ = (\module_fault_vector_pin[167]~input_o\ & ((\module_fault_vector_pin[166]~input_o\ & ((!\module_fault_vector_pin[165]~input_o\) # (!\module_fault_vector_pin[164]~input_o\))) # (!\module_fault_vector_pin[166]~input_o\ & 
-- ((\module_fault_vector_pin[164]~input_o\) # (\module_fault_vector_pin[165]~input_o\))))) # (!\module_fault_vector_pin[167]~input_o\ & ((\module_fault_vector_pin[166]~input_o\ & ((\module_fault_vector_pin[164]~input_o\) # 
-- (\module_fault_vector_pin[165]~input_o\))) # (!\module_fault_vector_pin[166]~input_o\ & (\module_fault_vector_pin[164]~input_o\ & \module_fault_vector_pin[165]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[167]~input_o\,
	datab => \module_fault_vector_pin[166]~input_o\,
	datac => \module_fault_vector_pin[164]~input_o\,
	datad => \module_fault_vector_pin[165]~input_o\,
	combout => \u_health_mon|Add164~1_combout\);

-- Location: LCCOMB_X80_Y41_N30
\u_health_mon|Add168~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add168~1_combout\ = (\module_fault_vector_pin[171]~input_o\ & ((\module_fault_vector_pin[170]~input_o\ & ((!\module_fault_vector_pin[168]~input_o\) # (!\module_fault_vector_pin[169]~input_o\))) # (!\module_fault_vector_pin[170]~input_o\ & 
-- ((\module_fault_vector_pin[169]~input_o\) # (\module_fault_vector_pin[168]~input_o\))))) # (!\module_fault_vector_pin[171]~input_o\ & ((\module_fault_vector_pin[170]~input_o\ & ((\module_fault_vector_pin[169]~input_o\) # 
-- (\module_fault_vector_pin[168]~input_o\))) # (!\module_fault_vector_pin[170]~input_o\ & (\module_fault_vector_pin[169]~input_o\ & \module_fault_vector_pin[168]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[171]~input_o\,
	datab => \module_fault_vector_pin[170]~input_o\,
	datac => \module_fault_vector_pin[169]~input_o\,
	datad => \module_fault_vector_pin[168]~input_o\,
	combout => \u_health_mon|Add168~1_combout\);

-- Location: LCCOMB_X80_Y41_N10
\u_health_mon|Add168~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add168~2_combout\ = \module_fault_vector_pin[171]~input_o\ $ (\module_fault_vector_pin[170]~input_o\ $ (\module_fault_vector_pin[169]~input_o\ $ (\module_fault_vector_pin[168]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[171]~input_o\,
	datab => \module_fault_vector_pin[170]~input_o\,
	datac => \module_fault_vector_pin[169]~input_o\,
	datad => \module_fault_vector_pin[168]~input_o\,
	combout => \u_health_mon|Add168~2_combout\);

-- Location: LCCOMB_X80_Y41_N8
\u_health_mon|Add164~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add164~2_combout\ = \module_fault_vector_pin[167]~input_o\ $ (\module_fault_vector_pin[166]~input_o\ $ (\module_fault_vector_pin[164]~input_o\ $ (\module_fault_vector_pin[165]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[167]~input_o\,
	datab => \module_fault_vector_pin[166]~input_o\,
	datac => \module_fault_vector_pin[164]~input_o\,
	datad => \module_fault_vector_pin[165]~input_o\,
	combout => \u_health_mon|Add164~2_combout\);

-- Location: LCCOMB_X80_Y41_N14
\u_health_mon|Add166~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add166~0_combout\ = (\u_health_mon|Add168~2_combout\ & (\u_health_mon|Add164~2_combout\ $ (VCC))) # (!\u_health_mon|Add168~2_combout\ & (\u_health_mon|Add164~2_combout\ & VCC))
-- \u_health_mon|Add166~1\ = CARRY((\u_health_mon|Add168~2_combout\ & \u_health_mon|Add164~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add168~2_combout\,
	datab => \u_health_mon|Add164~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add166~0_combout\,
	cout => \u_health_mon|Add166~1\);

-- Location: LCCOMB_X80_Y41_N16
\u_health_mon|Add166~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add166~2_combout\ = (\u_health_mon|Add164~1_combout\ & ((\u_health_mon|Add168~1_combout\ & (\u_health_mon|Add166~1\ & VCC)) # (!\u_health_mon|Add168~1_combout\ & (!\u_health_mon|Add166~1\)))) # (!\u_health_mon|Add164~1_combout\ & 
-- ((\u_health_mon|Add168~1_combout\ & (!\u_health_mon|Add166~1\)) # (!\u_health_mon|Add168~1_combout\ & ((\u_health_mon|Add166~1\) # (GND)))))
-- \u_health_mon|Add166~3\ = CARRY((\u_health_mon|Add164~1_combout\ & (!\u_health_mon|Add168~1_combout\ & !\u_health_mon|Add166~1\)) # (!\u_health_mon|Add164~1_combout\ & ((!\u_health_mon|Add166~1\) # (!\u_health_mon|Add168~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add164~1_combout\,
	datab => \u_health_mon|Add168~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add166~1\,
	combout => \u_health_mon|Add166~2_combout\,
	cout => \u_health_mon|Add166~3\);

-- Location: LCCOMB_X80_Y41_N18
\u_health_mon|Add166~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add166~4_combout\ = ((\u_health_mon|Add168~0_combout\ $ (\u_health_mon|Add164~0_combout\ $ (!\u_health_mon|Add166~3\)))) # (GND)
-- \u_health_mon|Add166~5\ = CARRY((\u_health_mon|Add168~0_combout\ & ((\u_health_mon|Add164~0_combout\) # (!\u_health_mon|Add166~3\))) # (!\u_health_mon|Add168~0_combout\ & (\u_health_mon|Add164~0_combout\ & !\u_health_mon|Add166~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add168~0_combout\,
	datab => \u_health_mon|Add164~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add166~3\,
	combout => \u_health_mon|Add166~4_combout\,
	cout => \u_health_mon|Add166~5\);

-- Location: LCCOMB_X80_Y41_N20
\u_health_mon|Add166~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add166~6_combout\ = \u_health_mon|Add166~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add166~5\,
	combout => \u_health_mon|Add166~6_combout\);

-- Location: IOIBUF_X81_Y25_N22
\module_fault_vector_pin[176]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(176),
	o => \module_fault_vector_pin[176]~input_o\);

-- Location: IOIBUF_X81_Y44_N1
\module_fault_vector_pin[178]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(178),
	o => \module_fault_vector_pin[178]~input_o\);

-- Location: IOIBUF_X81_Y46_N8
\module_fault_vector_pin[177]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(177),
	o => \module_fault_vector_pin[177]~input_o\);

-- Location: IOIBUF_X81_Y44_N8
\module_fault_vector_pin[179]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(179),
	o => \module_fault_vector_pin[179]~input_o\);

-- Location: LCCOMB_X77_Y44_N26
\u_health_mon|Add176~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add176~0_combout\ = (\module_fault_vector_pin[176]~input_o\ & (\module_fault_vector_pin[178]~input_o\ & (\module_fault_vector_pin[177]~input_o\ & \module_fault_vector_pin[179]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[176]~input_o\,
	datab => \module_fault_vector_pin[178]~input_o\,
	datac => \module_fault_vector_pin[177]~input_o\,
	datad => \module_fault_vector_pin[179]~input_o\,
	combout => \u_health_mon|Add176~0_combout\);

-- Location: IOIBUF_X81_Y46_N15
\module_fault_vector_pin[175]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(175),
	o => \module_fault_vector_pin[175]~input_o\);

-- Location: IOIBUF_X81_Y46_N1
\module_fault_vector_pin[172]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(172),
	o => \module_fault_vector_pin[172]~input_o\);

-- Location: IOIBUF_X70_Y0_N8
\module_fault_vector_pin[173]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(173),
	o => \module_fault_vector_pin[173]~input_o\);

-- Location: IOIBUF_X81_Y47_N8
\module_fault_vector_pin[174]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(174),
	o => \module_fault_vector_pin[174]~input_o\);

-- Location: LCCOMB_X77_Y44_N16
\u_health_mon|Add172~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add172~0_combout\ = (\module_fault_vector_pin[175]~input_o\ & (\module_fault_vector_pin[172]~input_o\ & (\module_fault_vector_pin[173]~input_o\ & \module_fault_vector_pin[174]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[175]~input_o\,
	datab => \module_fault_vector_pin[172]~input_o\,
	datac => \module_fault_vector_pin[173]~input_o\,
	datad => \module_fault_vector_pin[174]~input_o\,
	combout => \u_health_mon|Add172~0_combout\);

-- Location: LCCOMB_X77_Y44_N30
\u_health_mon|Add176~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add176~1_combout\ = (\module_fault_vector_pin[176]~input_o\ & ((\module_fault_vector_pin[178]~input_o\ & ((!\module_fault_vector_pin[179]~input_o\) # (!\module_fault_vector_pin[177]~input_o\))) # (!\module_fault_vector_pin[178]~input_o\ & 
-- ((\module_fault_vector_pin[177]~input_o\) # (\module_fault_vector_pin[179]~input_o\))))) # (!\module_fault_vector_pin[176]~input_o\ & ((\module_fault_vector_pin[178]~input_o\ & ((\module_fault_vector_pin[177]~input_o\) # 
-- (\module_fault_vector_pin[179]~input_o\))) # (!\module_fault_vector_pin[178]~input_o\ & (\module_fault_vector_pin[177]~input_o\ & \module_fault_vector_pin[179]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[176]~input_o\,
	datab => \module_fault_vector_pin[178]~input_o\,
	datac => \module_fault_vector_pin[177]~input_o\,
	datad => \module_fault_vector_pin[179]~input_o\,
	combout => \u_health_mon|Add176~1_combout\);

-- Location: LCCOMB_X77_Y44_N4
\u_health_mon|Add172~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add172~1_combout\ = (\module_fault_vector_pin[175]~input_o\ & ((\module_fault_vector_pin[172]~input_o\ & ((!\module_fault_vector_pin[174]~input_o\) # (!\module_fault_vector_pin[173]~input_o\))) # (!\module_fault_vector_pin[172]~input_o\ & 
-- ((\module_fault_vector_pin[173]~input_o\) # (\module_fault_vector_pin[174]~input_o\))))) # (!\module_fault_vector_pin[175]~input_o\ & ((\module_fault_vector_pin[172]~input_o\ & ((\module_fault_vector_pin[173]~input_o\) # 
-- (\module_fault_vector_pin[174]~input_o\))) # (!\module_fault_vector_pin[172]~input_o\ & (\module_fault_vector_pin[173]~input_o\ & \module_fault_vector_pin[174]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[175]~input_o\,
	datab => \module_fault_vector_pin[172]~input_o\,
	datac => \module_fault_vector_pin[173]~input_o\,
	datad => \module_fault_vector_pin[174]~input_o\,
	combout => \u_health_mon|Add172~1_combout\);

-- Location: LCCOMB_X77_Y44_N10
\u_health_mon|Add176~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add176~2_combout\ = \module_fault_vector_pin[176]~input_o\ $ (\module_fault_vector_pin[178]~input_o\ $ (\module_fault_vector_pin[177]~input_o\ $ (\module_fault_vector_pin[179]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[176]~input_o\,
	datab => \module_fault_vector_pin[178]~input_o\,
	datac => \module_fault_vector_pin[177]~input_o\,
	datad => \module_fault_vector_pin[179]~input_o\,
	combout => \u_health_mon|Add176~2_combout\);

-- Location: LCCOMB_X77_Y44_N8
\u_health_mon|Add172~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add172~2_combout\ = \module_fault_vector_pin[175]~input_o\ $ (\module_fault_vector_pin[172]~input_o\ $ (\module_fault_vector_pin[173]~input_o\ $ (\module_fault_vector_pin[174]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[175]~input_o\,
	datab => \module_fault_vector_pin[172]~input_o\,
	datac => \module_fault_vector_pin[173]~input_o\,
	datad => \module_fault_vector_pin[174]~input_o\,
	combout => \u_health_mon|Add172~2_combout\);

-- Location: LCCOMB_X77_Y44_N18
\u_health_mon|Add174~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add174~0_combout\ = (\u_health_mon|Add176~2_combout\ & (\u_health_mon|Add172~2_combout\ $ (VCC))) # (!\u_health_mon|Add176~2_combout\ & (\u_health_mon|Add172~2_combout\ & VCC))
-- \u_health_mon|Add174~1\ = CARRY((\u_health_mon|Add176~2_combout\ & \u_health_mon|Add172~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add176~2_combout\,
	datab => \u_health_mon|Add172~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add174~0_combout\,
	cout => \u_health_mon|Add174~1\);

-- Location: LCCOMB_X77_Y44_N20
\u_health_mon|Add174~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add174~2_combout\ = (\u_health_mon|Add176~1_combout\ & ((\u_health_mon|Add172~1_combout\ & (\u_health_mon|Add174~1\ & VCC)) # (!\u_health_mon|Add172~1_combout\ & (!\u_health_mon|Add174~1\)))) # (!\u_health_mon|Add176~1_combout\ & 
-- ((\u_health_mon|Add172~1_combout\ & (!\u_health_mon|Add174~1\)) # (!\u_health_mon|Add172~1_combout\ & ((\u_health_mon|Add174~1\) # (GND)))))
-- \u_health_mon|Add174~3\ = CARRY((\u_health_mon|Add176~1_combout\ & (!\u_health_mon|Add172~1_combout\ & !\u_health_mon|Add174~1\)) # (!\u_health_mon|Add176~1_combout\ & ((!\u_health_mon|Add174~1\) # (!\u_health_mon|Add172~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add176~1_combout\,
	datab => \u_health_mon|Add172~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add174~1\,
	combout => \u_health_mon|Add174~2_combout\,
	cout => \u_health_mon|Add174~3\);

-- Location: LCCOMB_X77_Y44_N22
\u_health_mon|Add174~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add174~4_combout\ = ((\u_health_mon|Add176~0_combout\ $ (\u_health_mon|Add172~0_combout\ $ (!\u_health_mon|Add174~3\)))) # (GND)
-- \u_health_mon|Add174~5\ = CARRY((\u_health_mon|Add176~0_combout\ & ((\u_health_mon|Add172~0_combout\) # (!\u_health_mon|Add174~3\))) # (!\u_health_mon|Add176~0_combout\ & (\u_health_mon|Add172~0_combout\ & !\u_health_mon|Add174~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add176~0_combout\,
	datab => \u_health_mon|Add172~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add174~3\,
	combout => \u_health_mon|Add174~4_combout\,
	cout => \u_health_mon|Add174~5\);

-- Location: LCCOMB_X77_Y44_N24
\u_health_mon|Add174~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add174~6_combout\ = \u_health_mon|Add174~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add174~5\,
	combout => \u_health_mon|Add174~6_combout\);

-- Location: LCCOMB_X77_Y43_N0
\u_health_mon|Add170~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add170~0_combout\ = (\u_health_mon|Add174~0_combout\ & (\u_health_mon|Add166~0_combout\ $ (VCC))) # (!\u_health_mon|Add174~0_combout\ & (\u_health_mon|Add166~0_combout\ & VCC))
-- \u_health_mon|Add170~1\ = CARRY((\u_health_mon|Add174~0_combout\ & \u_health_mon|Add166~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add174~0_combout\,
	datab => \u_health_mon|Add166~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add170~0_combout\,
	cout => \u_health_mon|Add170~1\);

-- Location: LCCOMB_X77_Y43_N2
\u_health_mon|Add170~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add170~2_combout\ = (\u_health_mon|Add166~2_combout\ & ((\u_health_mon|Add174~2_combout\ & (\u_health_mon|Add170~1\ & VCC)) # (!\u_health_mon|Add174~2_combout\ & (!\u_health_mon|Add170~1\)))) # (!\u_health_mon|Add166~2_combout\ & 
-- ((\u_health_mon|Add174~2_combout\ & (!\u_health_mon|Add170~1\)) # (!\u_health_mon|Add174~2_combout\ & ((\u_health_mon|Add170~1\) # (GND)))))
-- \u_health_mon|Add170~3\ = CARRY((\u_health_mon|Add166~2_combout\ & (!\u_health_mon|Add174~2_combout\ & !\u_health_mon|Add170~1\)) # (!\u_health_mon|Add166~2_combout\ & ((!\u_health_mon|Add170~1\) # (!\u_health_mon|Add174~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add166~2_combout\,
	datab => \u_health_mon|Add174~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add170~1\,
	combout => \u_health_mon|Add170~2_combout\,
	cout => \u_health_mon|Add170~3\);

-- Location: LCCOMB_X77_Y43_N4
\u_health_mon|Add170~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add170~4_combout\ = ((\u_health_mon|Add174~4_combout\ $ (\u_health_mon|Add166~4_combout\ $ (!\u_health_mon|Add170~3\)))) # (GND)
-- \u_health_mon|Add170~5\ = CARRY((\u_health_mon|Add174~4_combout\ & ((\u_health_mon|Add166~4_combout\) # (!\u_health_mon|Add170~3\))) # (!\u_health_mon|Add174~4_combout\ & (\u_health_mon|Add166~4_combout\ & !\u_health_mon|Add170~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add174~4_combout\,
	datab => \u_health_mon|Add166~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add170~3\,
	combout => \u_health_mon|Add170~4_combout\,
	cout => \u_health_mon|Add170~5\);

-- Location: LCCOMB_X77_Y43_N6
\u_health_mon|Add170~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add170~6_combout\ = (\u_health_mon|Add166~6_combout\ & ((\u_health_mon|Add174~6_combout\ & (\u_health_mon|Add170~5\ & VCC)) # (!\u_health_mon|Add174~6_combout\ & (!\u_health_mon|Add170~5\)))) # (!\u_health_mon|Add166~6_combout\ & 
-- ((\u_health_mon|Add174~6_combout\ & (!\u_health_mon|Add170~5\)) # (!\u_health_mon|Add174~6_combout\ & ((\u_health_mon|Add170~5\) # (GND)))))
-- \u_health_mon|Add170~7\ = CARRY((\u_health_mon|Add166~6_combout\ & (!\u_health_mon|Add174~6_combout\ & !\u_health_mon|Add170~5\)) # (!\u_health_mon|Add166~6_combout\ & ((!\u_health_mon|Add170~5\) # (!\u_health_mon|Add174~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add166~6_combout\,
	datab => \u_health_mon|Add174~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add170~5\,
	combout => \u_health_mon|Add170~6_combout\,
	cout => \u_health_mon|Add170~7\);

-- Location: IOIBUF_X65_Y67_N1
\module_fault_vector_pin[155]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(155),
	o => \module_fault_vector_pin[155]~input_o\);

-- Location: IOIBUF_X70_Y67_N1
\module_fault_vector_pin[152]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(152),
	o => \module_fault_vector_pin[152]~input_o\);

-- Location: IOIBUF_X68_Y67_N1
\module_fault_vector_pin[153]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(153),
	o => \module_fault_vector_pin[153]~input_o\);

-- Location: IOIBUF_X81_Y63_N8
\module_fault_vector_pin[154]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(154),
	o => \module_fault_vector_pin[154]~input_o\);

-- Location: LCCOMB_X71_Y63_N26
\u_health_mon|Add152~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add152~0_combout\ = (\module_fault_vector_pin[155]~input_o\ & (\module_fault_vector_pin[152]~input_o\ & (\module_fault_vector_pin[153]~input_o\ & \module_fault_vector_pin[154]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[155]~input_o\,
	datab => \module_fault_vector_pin[152]~input_o\,
	datac => \module_fault_vector_pin[153]~input_o\,
	datad => \module_fault_vector_pin[154]~input_o\,
	combout => \u_health_mon|Add152~0_combout\);

-- Location: IOIBUF_X70_Y67_N22
\module_fault_vector_pin[148]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(148),
	o => \module_fault_vector_pin[148]~input_o\);

-- Location: IOIBUF_X70_Y67_N15
\module_fault_vector_pin[151]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(151),
	o => \module_fault_vector_pin[151]~input_o\);

-- Location: IOIBUF_X70_Y67_N8
\module_fault_vector_pin[149]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(149),
	o => \module_fault_vector_pin[149]~input_o\);

-- Location: IOIBUF_X81_Y63_N15
\module_fault_vector_pin[150]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(150),
	o => \module_fault_vector_pin[150]~input_o\);

-- Location: LCCOMB_X71_Y63_N24
\u_health_mon|Add148~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add148~0_combout\ = (\module_fault_vector_pin[148]~input_o\ & (\module_fault_vector_pin[151]~input_o\ & (\module_fault_vector_pin[149]~input_o\ & \module_fault_vector_pin[150]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[148]~input_o\,
	datab => \module_fault_vector_pin[151]~input_o\,
	datac => \module_fault_vector_pin[149]~input_o\,
	datad => \module_fault_vector_pin[150]~input_o\,
	combout => \u_health_mon|Add148~0_combout\);

-- Location: LCCOMB_X71_Y63_N30
\u_health_mon|Add152~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add152~1_combout\ = (\module_fault_vector_pin[155]~input_o\ & ((\module_fault_vector_pin[152]~input_o\ & ((!\module_fault_vector_pin[154]~input_o\) # (!\module_fault_vector_pin[153]~input_o\))) # (!\module_fault_vector_pin[152]~input_o\ & 
-- ((\module_fault_vector_pin[153]~input_o\) # (\module_fault_vector_pin[154]~input_o\))))) # (!\module_fault_vector_pin[155]~input_o\ & ((\module_fault_vector_pin[152]~input_o\ & ((\module_fault_vector_pin[153]~input_o\) # 
-- (\module_fault_vector_pin[154]~input_o\))) # (!\module_fault_vector_pin[152]~input_o\ & (\module_fault_vector_pin[153]~input_o\ & \module_fault_vector_pin[154]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[155]~input_o\,
	datab => \module_fault_vector_pin[152]~input_o\,
	datac => \module_fault_vector_pin[153]~input_o\,
	datad => \module_fault_vector_pin[154]~input_o\,
	combout => \u_health_mon|Add152~1_combout\);

-- Location: LCCOMB_X71_Y63_N20
\u_health_mon|Add148~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add148~1_combout\ = (\module_fault_vector_pin[148]~input_o\ & ((\module_fault_vector_pin[151]~input_o\ & ((!\module_fault_vector_pin[150]~input_o\) # (!\module_fault_vector_pin[149]~input_o\))) # (!\module_fault_vector_pin[151]~input_o\ & 
-- ((\module_fault_vector_pin[149]~input_o\) # (\module_fault_vector_pin[150]~input_o\))))) # (!\module_fault_vector_pin[148]~input_o\ & ((\module_fault_vector_pin[151]~input_o\ & ((\module_fault_vector_pin[149]~input_o\) # 
-- (\module_fault_vector_pin[150]~input_o\))) # (!\module_fault_vector_pin[151]~input_o\ & (\module_fault_vector_pin[149]~input_o\ & \module_fault_vector_pin[150]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[148]~input_o\,
	datab => \module_fault_vector_pin[151]~input_o\,
	datac => \module_fault_vector_pin[149]~input_o\,
	datad => \module_fault_vector_pin[150]~input_o\,
	combout => \u_health_mon|Add148~1_combout\);

-- Location: LCCOMB_X71_Y63_N18
\u_health_mon|Add152~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add152~2_combout\ = \module_fault_vector_pin[155]~input_o\ $ (\module_fault_vector_pin[152]~input_o\ $ (\module_fault_vector_pin[153]~input_o\ $ (\module_fault_vector_pin[154]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[155]~input_o\,
	datab => \module_fault_vector_pin[152]~input_o\,
	datac => \module_fault_vector_pin[153]~input_o\,
	datad => \module_fault_vector_pin[154]~input_o\,
	combout => \u_health_mon|Add152~2_combout\);

-- Location: LCCOMB_X71_Y63_N16
\u_health_mon|Add148~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add148~2_combout\ = \module_fault_vector_pin[148]~input_o\ $ (\module_fault_vector_pin[151]~input_o\ $ (\module_fault_vector_pin[149]~input_o\ $ (\module_fault_vector_pin[150]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[148]~input_o\,
	datab => \module_fault_vector_pin[151]~input_o\,
	datac => \module_fault_vector_pin[149]~input_o\,
	datad => \module_fault_vector_pin[150]~input_o\,
	combout => \u_health_mon|Add148~2_combout\);

-- Location: LCCOMB_X71_Y63_N8
\u_health_mon|Add150~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add150~0_combout\ = (\u_health_mon|Add152~2_combout\ & (\u_health_mon|Add148~2_combout\ $ (VCC))) # (!\u_health_mon|Add152~2_combout\ & (\u_health_mon|Add148~2_combout\ & VCC))
-- \u_health_mon|Add150~1\ = CARRY((\u_health_mon|Add152~2_combout\ & \u_health_mon|Add148~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add152~2_combout\,
	datab => \u_health_mon|Add148~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add150~0_combout\,
	cout => \u_health_mon|Add150~1\);

-- Location: LCCOMB_X71_Y63_N10
\u_health_mon|Add150~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add150~2_combout\ = (\u_health_mon|Add152~1_combout\ & ((\u_health_mon|Add148~1_combout\ & (\u_health_mon|Add150~1\ & VCC)) # (!\u_health_mon|Add148~1_combout\ & (!\u_health_mon|Add150~1\)))) # (!\u_health_mon|Add152~1_combout\ & 
-- ((\u_health_mon|Add148~1_combout\ & (!\u_health_mon|Add150~1\)) # (!\u_health_mon|Add148~1_combout\ & ((\u_health_mon|Add150~1\) # (GND)))))
-- \u_health_mon|Add150~3\ = CARRY((\u_health_mon|Add152~1_combout\ & (!\u_health_mon|Add148~1_combout\ & !\u_health_mon|Add150~1\)) # (!\u_health_mon|Add152~1_combout\ & ((!\u_health_mon|Add150~1\) # (!\u_health_mon|Add148~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add152~1_combout\,
	datab => \u_health_mon|Add148~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add150~1\,
	combout => \u_health_mon|Add150~2_combout\,
	cout => \u_health_mon|Add150~3\);

-- Location: LCCOMB_X71_Y63_N12
\u_health_mon|Add150~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add150~4_combout\ = ((\u_health_mon|Add152~0_combout\ $ (\u_health_mon|Add148~0_combout\ $ (!\u_health_mon|Add150~3\)))) # (GND)
-- \u_health_mon|Add150~5\ = CARRY((\u_health_mon|Add152~0_combout\ & ((\u_health_mon|Add148~0_combout\) # (!\u_health_mon|Add150~3\))) # (!\u_health_mon|Add152~0_combout\ & (\u_health_mon|Add148~0_combout\ & !\u_health_mon|Add150~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add152~0_combout\,
	datab => \u_health_mon|Add148~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add150~3\,
	combout => \u_health_mon|Add150~4_combout\,
	cout => \u_health_mon|Add150~5\);

-- Location: LCCOMB_X71_Y63_N14
\u_health_mon|Add150~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add150~6_combout\ = \u_health_mon|Add150~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add150~5\,
	combout => \u_health_mon|Add150~6_combout\);

-- Location: IOIBUF_X81_Y34_N8
\module_fault_vector_pin[160]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(160),
	o => \module_fault_vector_pin[160]~input_o\);

-- Location: IOIBUF_X81_Y42_N1
\module_fault_vector_pin[162]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(162),
	o => \module_fault_vector_pin[162]~input_o\);

-- Location: IOIBUF_X81_Y34_N1
\module_fault_vector_pin[161]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(161),
	o => \module_fault_vector_pin[161]~input_o\);

-- Location: IOIBUF_X81_Y42_N8
\module_fault_vector_pin[163]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(163),
	o => \module_fault_vector_pin[163]~input_o\);

-- Location: LCCOMB_X80_Y42_N26
\u_health_mon|Add160~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add160~0_combout\ = (\module_fault_vector_pin[160]~input_o\ & (\module_fault_vector_pin[162]~input_o\ & (\module_fault_vector_pin[161]~input_o\ & \module_fault_vector_pin[163]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[160]~input_o\,
	datab => \module_fault_vector_pin[162]~input_o\,
	datac => \module_fault_vector_pin[161]~input_o\,
	datad => \module_fault_vector_pin[163]~input_o\,
	combout => \u_health_mon|Add160~0_combout\);

-- Location: IOIBUF_X81_Y39_N8
\module_fault_vector_pin[159]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(159),
	o => \module_fault_vector_pin[159]~input_o\);

-- Location: IOIBUF_X81_Y39_N1
\module_fault_vector_pin[158]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(158),
	o => \module_fault_vector_pin[158]~input_o\);

-- Location: IOIBUF_X81_Y34_N15
\module_fault_vector_pin[156]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(156),
	o => \module_fault_vector_pin[156]~input_o\);

-- Location: IOIBUF_X81_Y43_N1
\module_fault_vector_pin[157]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(157),
	o => \module_fault_vector_pin[157]~input_o\);

-- Location: LCCOMB_X80_Y42_N24
\u_health_mon|Add156~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add156~0_combout\ = (\module_fault_vector_pin[159]~input_o\ & (\module_fault_vector_pin[158]~input_o\ & (\module_fault_vector_pin[156]~input_o\ & \module_fault_vector_pin[157]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[159]~input_o\,
	datab => \module_fault_vector_pin[158]~input_o\,
	datac => \module_fault_vector_pin[156]~input_o\,
	datad => \module_fault_vector_pin[157]~input_o\,
	combout => \u_health_mon|Add156~0_combout\);

-- Location: LCCOMB_X80_Y42_N30
\u_health_mon|Add160~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add160~1_combout\ = (\module_fault_vector_pin[160]~input_o\ & ((\module_fault_vector_pin[162]~input_o\ & ((!\module_fault_vector_pin[163]~input_o\) # (!\module_fault_vector_pin[161]~input_o\))) # (!\module_fault_vector_pin[162]~input_o\ & 
-- ((\module_fault_vector_pin[161]~input_o\) # (\module_fault_vector_pin[163]~input_o\))))) # (!\module_fault_vector_pin[160]~input_o\ & ((\module_fault_vector_pin[162]~input_o\ & ((\module_fault_vector_pin[161]~input_o\) # 
-- (\module_fault_vector_pin[163]~input_o\))) # (!\module_fault_vector_pin[162]~input_o\ & (\module_fault_vector_pin[161]~input_o\ & \module_fault_vector_pin[163]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[160]~input_o\,
	datab => \module_fault_vector_pin[162]~input_o\,
	datac => \module_fault_vector_pin[161]~input_o\,
	datad => \module_fault_vector_pin[163]~input_o\,
	combout => \u_health_mon|Add160~1_combout\);

-- Location: LCCOMB_X80_Y42_N4
\u_health_mon|Add156~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add156~1_combout\ = (\module_fault_vector_pin[159]~input_o\ & ((\module_fault_vector_pin[158]~input_o\ & ((!\module_fault_vector_pin[157]~input_o\) # (!\module_fault_vector_pin[156]~input_o\))) # (!\module_fault_vector_pin[158]~input_o\ & 
-- ((\module_fault_vector_pin[156]~input_o\) # (\module_fault_vector_pin[157]~input_o\))))) # (!\module_fault_vector_pin[159]~input_o\ & ((\module_fault_vector_pin[158]~input_o\ & ((\module_fault_vector_pin[156]~input_o\) # 
-- (\module_fault_vector_pin[157]~input_o\))) # (!\module_fault_vector_pin[158]~input_o\ & (\module_fault_vector_pin[156]~input_o\ & \module_fault_vector_pin[157]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[159]~input_o\,
	datab => \module_fault_vector_pin[158]~input_o\,
	datac => \module_fault_vector_pin[156]~input_o\,
	datad => \module_fault_vector_pin[157]~input_o\,
	combout => \u_health_mon|Add156~1_combout\);

-- Location: LCCOMB_X80_Y42_N18
\u_health_mon|Add160~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add160~2_combout\ = \module_fault_vector_pin[160]~input_o\ $ (\module_fault_vector_pin[162]~input_o\ $ (\module_fault_vector_pin[161]~input_o\ $ (\module_fault_vector_pin[163]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[160]~input_o\,
	datab => \module_fault_vector_pin[162]~input_o\,
	datac => \module_fault_vector_pin[161]~input_o\,
	datad => \module_fault_vector_pin[163]~input_o\,
	combout => \u_health_mon|Add160~2_combout\);

-- Location: LCCOMB_X80_Y42_N8
\u_health_mon|Add156~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add156~2_combout\ = \module_fault_vector_pin[159]~input_o\ $ (\module_fault_vector_pin[158]~input_o\ $ (\module_fault_vector_pin[156]~input_o\ $ (\module_fault_vector_pin[157]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[159]~input_o\,
	datab => \module_fault_vector_pin[158]~input_o\,
	datac => \module_fault_vector_pin[156]~input_o\,
	datad => \module_fault_vector_pin[157]~input_o\,
	combout => \u_health_mon|Add156~2_combout\);

-- Location: LCCOMB_X80_Y42_N10
\u_health_mon|Add158~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add158~0_combout\ = (\u_health_mon|Add160~2_combout\ & (\u_health_mon|Add156~2_combout\ $ (VCC))) # (!\u_health_mon|Add160~2_combout\ & (\u_health_mon|Add156~2_combout\ & VCC))
-- \u_health_mon|Add158~1\ = CARRY((\u_health_mon|Add160~2_combout\ & \u_health_mon|Add156~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add160~2_combout\,
	datab => \u_health_mon|Add156~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add158~0_combout\,
	cout => \u_health_mon|Add158~1\);

-- Location: LCCOMB_X80_Y42_N12
\u_health_mon|Add158~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add158~2_combout\ = (\u_health_mon|Add160~1_combout\ & ((\u_health_mon|Add156~1_combout\ & (\u_health_mon|Add158~1\ & VCC)) # (!\u_health_mon|Add156~1_combout\ & (!\u_health_mon|Add158~1\)))) # (!\u_health_mon|Add160~1_combout\ & 
-- ((\u_health_mon|Add156~1_combout\ & (!\u_health_mon|Add158~1\)) # (!\u_health_mon|Add156~1_combout\ & ((\u_health_mon|Add158~1\) # (GND)))))
-- \u_health_mon|Add158~3\ = CARRY((\u_health_mon|Add160~1_combout\ & (!\u_health_mon|Add156~1_combout\ & !\u_health_mon|Add158~1\)) # (!\u_health_mon|Add160~1_combout\ & ((!\u_health_mon|Add158~1\) # (!\u_health_mon|Add156~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add160~1_combout\,
	datab => \u_health_mon|Add156~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add158~1\,
	combout => \u_health_mon|Add158~2_combout\,
	cout => \u_health_mon|Add158~3\);

-- Location: LCCOMB_X80_Y42_N14
\u_health_mon|Add158~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add158~4_combout\ = ((\u_health_mon|Add160~0_combout\ $ (\u_health_mon|Add156~0_combout\ $ (!\u_health_mon|Add158~3\)))) # (GND)
-- \u_health_mon|Add158~5\ = CARRY((\u_health_mon|Add160~0_combout\ & ((\u_health_mon|Add156~0_combout\) # (!\u_health_mon|Add158~3\))) # (!\u_health_mon|Add160~0_combout\ & (\u_health_mon|Add156~0_combout\ & !\u_health_mon|Add158~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add160~0_combout\,
	datab => \u_health_mon|Add156~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add158~3\,
	combout => \u_health_mon|Add158~4_combout\,
	cout => \u_health_mon|Add158~5\);

-- Location: LCCOMB_X80_Y42_N16
\u_health_mon|Add158~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add158~6_combout\ = \u_health_mon|Add158~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add158~5\,
	combout => \u_health_mon|Add158~6_combout\);

-- Location: LCCOMB_X77_Y43_N10
\u_health_mon|Add154~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add154~0_combout\ = (\u_health_mon|Add150~0_combout\ & (\u_health_mon|Add158~0_combout\ $ (VCC))) # (!\u_health_mon|Add150~0_combout\ & (\u_health_mon|Add158~0_combout\ & VCC))
-- \u_health_mon|Add154~1\ = CARRY((\u_health_mon|Add150~0_combout\ & \u_health_mon|Add158~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add150~0_combout\,
	datab => \u_health_mon|Add158~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add154~0_combout\,
	cout => \u_health_mon|Add154~1\);

-- Location: LCCOMB_X77_Y43_N12
\u_health_mon|Add154~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add154~2_combout\ = (\u_health_mon|Add150~2_combout\ & ((\u_health_mon|Add158~2_combout\ & (\u_health_mon|Add154~1\ & VCC)) # (!\u_health_mon|Add158~2_combout\ & (!\u_health_mon|Add154~1\)))) # (!\u_health_mon|Add150~2_combout\ & 
-- ((\u_health_mon|Add158~2_combout\ & (!\u_health_mon|Add154~1\)) # (!\u_health_mon|Add158~2_combout\ & ((\u_health_mon|Add154~1\) # (GND)))))
-- \u_health_mon|Add154~3\ = CARRY((\u_health_mon|Add150~2_combout\ & (!\u_health_mon|Add158~2_combout\ & !\u_health_mon|Add154~1\)) # (!\u_health_mon|Add150~2_combout\ & ((!\u_health_mon|Add154~1\) # (!\u_health_mon|Add158~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add150~2_combout\,
	datab => \u_health_mon|Add158~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add154~1\,
	combout => \u_health_mon|Add154~2_combout\,
	cout => \u_health_mon|Add154~3\);

-- Location: LCCOMB_X77_Y43_N14
\u_health_mon|Add154~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add154~4_combout\ = ((\u_health_mon|Add158~4_combout\ $ (\u_health_mon|Add150~4_combout\ $ (!\u_health_mon|Add154~3\)))) # (GND)
-- \u_health_mon|Add154~5\ = CARRY((\u_health_mon|Add158~4_combout\ & ((\u_health_mon|Add150~4_combout\) # (!\u_health_mon|Add154~3\))) # (!\u_health_mon|Add158~4_combout\ & (\u_health_mon|Add150~4_combout\ & !\u_health_mon|Add154~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add158~4_combout\,
	datab => \u_health_mon|Add150~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add154~3\,
	combout => \u_health_mon|Add154~4_combout\,
	cout => \u_health_mon|Add154~5\);

-- Location: LCCOMB_X77_Y43_N16
\u_health_mon|Add154~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add154~6_combout\ = (\u_health_mon|Add150~6_combout\ & ((\u_health_mon|Add158~6_combout\ & (\u_health_mon|Add154~5\ & VCC)) # (!\u_health_mon|Add158~6_combout\ & (!\u_health_mon|Add154~5\)))) # (!\u_health_mon|Add150~6_combout\ & 
-- ((\u_health_mon|Add158~6_combout\ & (!\u_health_mon|Add154~5\)) # (!\u_health_mon|Add158~6_combout\ & ((\u_health_mon|Add154~5\) # (GND)))))
-- \u_health_mon|Add154~7\ = CARRY((\u_health_mon|Add150~6_combout\ & (!\u_health_mon|Add158~6_combout\ & !\u_health_mon|Add154~5\)) # (!\u_health_mon|Add150~6_combout\ & ((!\u_health_mon|Add154~5\) # (!\u_health_mon|Add158~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add150~6_combout\,
	datab => \u_health_mon|Add158~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add154~5\,
	combout => \u_health_mon|Add154~6_combout\,
	cout => \u_health_mon|Add154~7\);

-- Location: LCCOMB_X77_Y43_N20
\u_health_mon|Add162~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add162~0_combout\ = (\u_health_mon|Add154~0_combout\ & (\u_health_mon|Add170~0_combout\ $ (VCC))) # (!\u_health_mon|Add154~0_combout\ & (\u_health_mon|Add170~0_combout\ & VCC))
-- \u_health_mon|Add162~1\ = CARRY((\u_health_mon|Add154~0_combout\ & \u_health_mon|Add170~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add154~0_combout\,
	datab => \u_health_mon|Add170~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add162~0_combout\,
	cout => \u_health_mon|Add162~1\);

-- Location: LCCOMB_X77_Y43_N22
\u_health_mon|Add162~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add162~2_combout\ = (\u_health_mon|Add154~2_combout\ & ((\u_health_mon|Add170~2_combout\ & (\u_health_mon|Add162~1\ & VCC)) # (!\u_health_mon|Add170~2_combout\ & (!\u_health_mon|Add162~1\)))) # (!\u_health_mon|Add154~2_combout\ & 
-- ((\u_health_mon|Add170~2_combout\ & (!\u_health_mon|Add162~1\)) # (!\u_health_mon|Add170~2_combout\ & ((\u_health_mon|Add162~1\) # (GND)))))
-- \u_health_mon|Add162~3\ = CARRY((\u_health_mon|Add154~2_combout\ & (!\u_health_mon|Add170~2_combout\ & !\u_health_mon|Add162~1\)) # (!\u_health_mon|Add154~2_combout\ & ((!\u_health_mon|Add162~1\) # (!\u_health_mon|Add170~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add154~2_combout\,
	datab => \u_health_mon|Add170~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add162~1\,
	combout => \u_health_mon|Add162~2_combout\,
	cout => \u_health_mon|Add162~3\);

-- Location: LCCOMB_X77_Y43_N24
\u_health_mon|Add162~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add162~4_combout\ = ((\u_health_mon|Add170~4_combout\ $ (\u_health_mon|Add154~4_combout\ $ (!\u_health_mon|Add162~3\)))) # (GND)
-- \u_health_mon|Add162~5\ = CARRY((\u_health_mon|Add170~4_combout\ & ((\u_health_mon|Add154~4_combout\) # (!\u_health_mon|Add162~3\))) # (!\u_health_mon|Add170~4_combout\ & (\u_health_mon|Add154~4_combout\ & !\u_health_mon|Add162~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add170~4_combout\,
	datab => \u_health_mon|Add154~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add162~3\,
	combout => \u_health_mon|Add162~4_combout\,
	cout => \u_health_mon|Add162~5\);

-- Location: LCCOMB_X77_Y43_N26
\u_health_mon|Add162~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add162~6_combout\ = (\u_health_mon|Add170~6_combout\ & ((\u_health_mon|Add154~6_combout\ & (\u_health_mon|Add162~5\ & VCC)) # (!\u_health_mon|Add154~6_combout\ & (!\u_health_mon|Add162~5\)))) # (!\u_health_mon|Add170~6_combout\ & 
-- ((\u_health_mon|Add154~6_combout\ & (!\u_health_mon|Add162~5\)) # (!\u_health_mon|Add154~6_combout\ & ((\u_health_mon|Add162~5\) # (GND)))))
-- \u_health_mon|Add162~7\ = CARRY((\u_health_mon|Add170~6_combout\ & (!\u_health_mon|Add154~6_combout\ & !\u_health_mon|Add162~5\)) # (!\u_health_mon|Add170~6_combout\ & ((!\u_health_mon|Add162~5\) # (!\u_health_mon|Add154~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add170~6_combout\,
	datab => \u_health_mon|Add154~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add162~5\,
	combout => \u_health_mon|Add162~6_combout\,
	cout => \u_health_mon|Add162~7\);

-- Location: LCCOMB_X71_Y39_N14
\u_health_mon|Add178~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add178~0_combout\ = (\u_health_mon|Add162~0_combout\ & (\u_health_mon|Add194~0_combout\ $ (VCC))) # (!\u_health_mon|Add162~0_combout\ & (\u_health_mon|Add194~0_combout\ & VCC))
-- \u_health_mon|Add178~1\ = CARRY((\u_health_mon|Add162~0_combout\ & \u_health_mon|Add194~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add162~0_combout\,
	datab => \u_health_mon|Add194~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add178~0_combout\,
	cout => \u_health_mon|Add178~1\);

-- Location: LCCOMB_X71_Y39_N16
\u_health_mon|Add178~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add178~2_combout\ = (\u_health_mon|Add162~2_combout\ & ((\u_health_mon|Add194~2_combout\ & (\u_health_mon|Add178~1\ & VCC)) # (!\u_health_mon|Add194~2_combout\ & (!\u_health_mon|Add178~1\)))) # (!\u_health_mon|Add162~2_combout\ & 
-- ((\u_health_mon|Add194~2_combout\ & (!\u_health_mon|Add178~1\)) # (!\u_health_mon|Add194~2_combout\ & ((\u_health_mon|Add178~1\) # (GND)))))
-- \u_health_mon|Add178~3\ = CARRY((\u_health_mon|Add162~2_combout\ & (!\u_health_mon|Add194~2_combout\ & !\u_health_mon|Add178~1\)) # (!\u_health_mon|Add162~2_combout\ & ((!\u_health_mon|Add178~1\) # (!\u_health_mon|Add194~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add162~2_combout\,
	datab => \u_health_mon|Add194~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add178~1\,
	combout => \u_health_mon|Add178~2_combout\,
	cout => \u_health_mon|Add178~3\);

-- Location: LCCOMB_X71_Y39_N18
\u_health_mon|Add178~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add178~4_combout\ = ((\u_health_mon|Add162~4_combout\ $ (\u_health_mon|Add194~4_combout\ $ (!\u_health_mon|Add178~3\)))) # (GND)
-- \u_health_mon|Add178~5\ = CARRY((\u_health_mon|Add162~4_combout\ & ((\u_health_mon|Add194~4_combout\) # (!\u_health_mon|Add178~3\))) # (!\u_health_mon|Add162~4_combout\ & (\u_health_mon|Add194~4_combout\ & !\u_health_mon|Add178~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add162~4_combout\,
	datab => \u_health_mon|Add194~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add178~3\,
	combout => \u_health_mon|Add178~4_combout\,
	cout => \u_health_mon|Add178~5\);

-- Location: LCCOMB_X71_Y39_N20
\u_health_mon|Add178~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add178~6_combout\ = (\u_health_mon|Add194~6_combout\ & ((\u_health_mon|Add162~6_combout\ & (\u_health_mon|Add178~5\ & VCC)) # (!\u_health_mon|Add162~6_combout\ & (!\u_health_mon|Add178~5\)))) # (!\u_health_mon|Add194~6_combout\ & 
-- ((\u_health_mon|Add162~6_combout\ & (!\u_health_mon|Add178~5\)) # (!\u_health_mon|Add162~6_combout\ & ((\u_health_mon|Add178~5\) # (GND)))))
-- \u_health_mon|Add178~7\ = CARRY((\u_health_mon|Add194~6_combout\ & (!\u_health_mon|Add162~6_combout\ & !\u_health_mon|Add178~5\)) # (!\u_health_mon|Add194~6_combout\ & ((!\u_health_mon|Add178~5\) # (!\u_health_mon|Add162~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add194~6_combout\,
	datab => \u_health_mon|Add162~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add178~5\,
	combout => \u_health_mon|Add178~6_combout\,
	cout => \u_health_mon|Add178~7\);

-- Location: IOIBUF_X54_Y67_N1
\module_fault_vector_pin[113]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(113),
	o => \module_fault_vector_pin[113]~input_o\);

-- Location: IOIBUF_X58_Y67_N22
\module_fault_vector_pin[114]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(114),
	o => \module_fault_vector_pin[114]~input_o\);

-- Location: IOIBUF_X58_Y67_N1
\module_fault_vector_pin[112]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(112),
	o => \module_fault_vector_pin[112]~input_o\);

-- Location: IOIBUF_X65_Y67_N8
\module_fault_vector_pin[115]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(115),
	o => \module_fault_vector_pin[115]~input_o\);

-- Location: LCCOMB_X62_Y63_N26
\u_health_mon|Add112~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add112~0_combout\ = (\module_fault_vector_pin[113]~input_o\ & (\module_fault_vector_pin[114]~input_o\ & (\module_fault_vector_pin[112]~input_o\ & \module_fault_vector_pin[115]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[113]~input_o\,
	datab => \module_fault_vector_pin[114]~input_o\,
	datac => \module_fault_vector_pin[112]~input_o\,
	datad => \module_fault_vector_pin[115]~input_o\,
	combout => \u_health_mon|Add112~0_combout\);

-- Location: IOIBUF_X56_Y67_N22
\module_fault_vector_pin[110]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(110),
	o => \module_fault_vector_pin[110]~input_o\);

-- Location: IOIBUF_X56_Y67_N15
\module_fault_vector_pin[108]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(108),
	o => \module_fault_vector_pin[108]~input_o\);

-- Location: IOIBUF_X58_Y67_N8
\module_fault_vector_pin[109]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(109),
	o => \module_fault_vector_pin[109]~input_o\);

-- Location: IOIBUF_X58_Y67_N15
\module_fault_vector_pin[111]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(111),
	o => \module_fault_vector_pin[111]~input_o\);

-- Location: LCCOMB_X59_Y63_N16
\u_health_mon|Add108~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add108~0_combout\ = (\module_fault_vector_pin[110]~input_o\ & (\module_fault_vector_pin[108]~input_o\ & (\module_fault_vector_pin[109]~input_o\ & \module_fault_vector_pin[111]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[110]~input_o\,
	datab => \module_fault_vector_pin[108]~input_o\,
	datac => \module_fault_vector_pin[109]~input_o\,
	datad => \module_fault_vector_pin[111]~input_o\,
	combout => \u_health_mon|Add108~0_combout\);

-- Location: LCCOMB_X59_Y63_N10
\u_health_mon|Add108~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add108~1_combout\ = (\module_fault_vector_pin[110]~input_o\ & ((\module_fault_vector_pin[108]~input_o\ & ((!\module_fault_vector_pin[111]~input_o\) # (!\module_fault_vector_pin[109]~input_o\))) # (!\module_fault_vector_pin[108]~input_o\ & 
-- ((\module_fault_vector_pin[109]~input_o\) # (\module_fault_vector_pin[111]~input_o\))))) # (!\module_fault_vector_pin[110]~input_o\ & ((\module_fault_vector_pin[108]~input_o\ & ((\module_fault_vector_pin[109]~input_o\) # 
-- (\module_fault_vector_pin[111]~input_o\))) # (!\module_fault_vector_pin[108]~input_o\ & (\module_fault_vector_pin[109]~input_o\ & \module_fault_vector_pin[111]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[110]~input_o\,
	datab => \module_fault_vector_pin[108]~input_o\,
	datac => \module_fault_vector_pin[109]~input_o\,
	datad => \module_fault_vector_pin[111]~input_o\,
	combout => \u_health_mon|Add108~1_combout\);

-- Location: LCCOMB_X62_Y63_N28
\u_health_mon|Add112~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add112~1_combout\ = (\module_fault_vector_pin[113]~input_o\ & ((\module_fault_vector_pin[114]~input_o\ & ((!\module_fault_vector_pin[115]~input_o\) # (!\module_fault_vector_pin[112]~input_o\))) # (!\module_fault_vector_pin[114]~input_o\ & 
-- ((\module_fault_vector_pin[112]~input_o\) # (\module_fault_vector_pin[115]~input_o\))))) # (!\module_fault_vector_pin[113]~input_o\ & ((\module_fault_vector_pin[114]~input_o\ & ((\module_fault_vector_pin[112]~input_o\) # 
-- (\module_fault_vector_pin[115]~input_o\))) # (!\module_fault_vector_pin[114]~input_o\ & (\module_fault_vector_pin[112]~input_o\ & \module_fault_vector_pin[115]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[113]~input_o\,
	datab => \module_fault_vector_pin[114]~input_o\,
	datac => \module_fault_vector_pin[112]~input_o\,
	datad => \module_fault_vector_pin[115]~input_o\,
	combout => \u_health_mon|Add112~1_combout\);

-- Location: LCCOMB_X62_Y63_N30
\u_health_mon|Add112~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add112~2_combout\ = \module_fault_vector_pin[113]~input_o\ $ (\module_fault_vector_pin[114]~input_o\ $ (\module_fault_vector_pin[112]~input_o\ $ (\module_fault_vector_pin[115]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[113]~input_o\,
	datab => \module_fault_vector_pin[114]~input_o\,
	datac => \module_fault_vector_pin[112]~input_o\,
	datad => \module_fault_vector_pin[115]~input_o\,
	combout => \u_health_mon|Add112~2_combout\);

-- Location: LCCOMB_X59_Y63_N4
\u_health_mon|Add108~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add108~2_combout\ = \module_fault_vector_pin[110]~input_o\ $ (\module_fault_vector_pin[108]~input_o\ $ (\module_fault_vector_pin[109]~input_o\ $ (\module_fault_vector_pin[111]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[110]~input_o\,
	datab => \module_fault_vector_pin[108]~input_o\,
	datac => \module_fault_vector_pin[109]~input_o\,
	datad => \module_fault_vector_pin[111]~input_o\,
	combout => \u_health_mon|Add108~2_combout\);

-- Location: LCCOMB_X62_Y63_N0
\u_health_mon|Add110~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add110~0_combout\ = (\u_health_mon|Add112~2_combout\ & (\u_health_mon|Add108~2_combout\ $ (VCC))) # (!\u_health_mon|Add112~2_combout\ & (\u_health_mon|Add108~2_combout\ & VCC))
-- \u_health_mon|Add110~1\ = CARRY((\u_health_mon|Add112~2_combout\ & \u_health_mon|Add108~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add112~2_combout\,
	datab => \u_health_mon|Add108~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add110~0_combout\,
	cout => \u_health_mon|Add110~1\);

-- Location: LCCOMB_X62_Y63_N2
\u_health_mon|Add110~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add110~2_combout\ = (\u_health_mon|Add108~1_combout\ & ((\u_health_mon|Add112~1_combout\ & (\u_health_mon|Add110~1\ & VCC)) # (!\u_health_mon|Add112~1_combout\ & (!\u_health_mon|Add110~1\)))) # (!\u_health_mon|Add108~1_combout\ & 
-- ((\u_health_mon|Add112~1_combout\ & (!\u_health_mon|Add110~1\)) # (!\u_health_mon|Add112~1_combout\ & ((\u_health_mon|Add110~1\) # (GND)))))
-- \u_health_mon|Add110~3\ = CARRY((\u_health_mon|Add108~1_combout\ & (!\u_health_mon|Add112~1_combout\ & !\u_health_mon|Add110~1\)) # (!\u_health_mon|Add108~1_combout\ & ((!\u_health_mon|Add110~1\) # (!\u_health_mon|Add112~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add108~1_combout\,
	datab => \u_health_mon|Add112~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add110~1\,
	combout => \u_health_mon|Add110~2_combout\,
	cout => \u_health_mon|Add110~3\);

-- Location: LCCOMB_X62_Y63_N4
\u_health_mon|Add110~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add110~4_combout\ = ((\u_health_mon|Add112~0_combout\ $ (\u_health_mon|Add108~0_combout\ $ (!\u_health_mon|Add110~3\)))) # (GND)
-- \u_health_mon|Add110~5\ = CARRY((\u_health_mon|Add112~0_combout\ & ((\u_health_mon|Add108~0_combout\) # (!\u_health_mon|Add110~3\))) # (!\u_health_mon|Add112~0_combout\ & (\u_health_mon|Add108~0_combout\ & !\u_health_mon|Add110~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add112~0_combout\,
	datab => \u_health_mon|Add108~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add110~3\,
	combout => \u_health_mon|Add110~4_combout\,
	cout => \u_health_mon|Add110~5\);

-- Location: LCCOMB_X62_Y63_N6
\u_health_mon|Add110~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add110~6_combout\ = \u_health_mon|Add110~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add110~5\,
	combout => \u_health_mon|Add110~6_combout\);

-- Location: IOIBUF_X56_Y67_N1
\module_fault_vector_pin[106]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(106),
	o => \module_fault_vector_pin[106]~input_o\);

-- Location: IOIBUF_X61_Y67_N1
\module_fault_vector_pin[104]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(104),
	o => \module_fault_vector_pin[104]~input_o\);

-- Location: IOIBUF_X56_Y67_N8
\module_fault_vector_pin[105]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(105),
	o => \module_fault_vector_pin[105]~input_o\);

-- Location: IOIBUF_X61_Y67_N8
\module_fault_vector_pin[107]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(107),
	o => \module_fault_vector_pin[107]~input_o\);

-- Location: LCCOMB_X61_Y63_N16
\u_health_mon|Add104~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add104~0_combout\ = (\module_fault_vector_pin[106]~input_o\ & (\module_fault_vector_pin[104]~input_o\ & (\module_fault_vector_pin[105]~input_o\ & \module_fault_vector_pin[107]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[106]~input_o\,
	datab => \module_fault_vector_pin[104]~input_o\,
	datac => \module_fault_vector_pin[105]~input_o\,
	datad => \module_fault_vector_pin[107]~input_o\,
	combout => \u_health_mon|Add104~0_combout\);

-- Location: IOIBUF_X63_Y67_N8
\module_fault_vector_pin[100]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(100),
	o => \module_fault_vector_pin[100]~input_o\);

-- Location: IOIBUF_X63_Y67_N1
\module_fault_vector_pin[101]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(101),
	o => \module_fault_vector_pin[101]~input_o\);

-- Location: IOIBUF_X63_Y67_N15
\module_fault_vector_pin[103]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(103),
	o => \module_fault_vector_pin[103]~input_o\);

-- Location: IOIBUF_X65_Y67_N15
\module_fault_vector_pin[102]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(102),
	o => \module_fault_vector_pin[102]~input_o\);

-- Location: LCCOMB_X63_Y63_N0
\u_health_mon|Add100~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add100~0_combout\ = (\module_fault_vector_pin[100]~input_o\ & (\module_fault_vector_pin[101]~input_o\ & (\module_fault_vector_pin[103]~input_o\ & \module_fault_vector_pin[102]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[100]~input_o\,
	datab => \module_fault_vector_pin[101]~input_o\,
	datac => \module_fault_vector_pin[103]~input_o\,
	datad => \module_fault_vector_pin[102]~input_o\,
	combout => \u_health_mon|Add100~0_combout\);

-- Location: LCCOMB_X63_Y63_N2
\u_health_mon|Add100~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add100~1_combout\ = (\module_fault_vector_pin[100]~input_o\ & ((\module_fault_vector_pin[101]~input_o\ & ((!\module_fault_vector_pin[102]~input_o\) # (!\module_fault_vector_pin[103]~input_o\))) # (!\module_fault_vector_pin[101]~input_o\ & 
-- ((\module_fault_vector_pin[103]~input_o\) # (\module_fault_vector_pin[102]~input_o\))))) # (!\module_fault_vector_pin[100]~input_o\ & ((\module_fault_vector_pin[101]~input_o\ & ((\module_fault_vector_pin[103]~input_o\) # 
-- (\module_fault_vector_pin[102]~input_o\))) # (!\module_fault_vector_pin[101]~input_o\ & (\module_fault_vector_pin[103]~input_o\ & \module_fault_vector_pin[102]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[100]~input_o\,
	datab => \module_fault_vector_pin[101]~input_o\,
	datac => \module_fault_vector_pin[103]~input_o\,
	datad => \module_fault_vector_pin[102]~input_o\,
	combout => \u_health_mon|Add100~1_combout\);

-- Location: LCCOMB_X61_Y63_N18
\u_health_mon|Add104~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add104~1_combout\ = (\module_fault_vector_pin[106]~input_o\ & ((\module_fault_vector_pin[104]~input_o\ & ((!\module_fault_vector_pin[107]~input_o\) # (!\module_fault_vector_pin[105]~input_o\))) # (!\module_fault_vector_pin[104]~input_o\ & 
-- ((\module_fault_vector_pin[105]~input_o\) # (\module_fault_vector_pin[107]~input_o\))))) # (!\module_fault_vector_pin[106]~input_o\ & ((\module_fault_vector_pin[104]~input_o\ & ((\module_fault_vector_pin[105]~input_o\) # 
-- (\module_fault_vector_pin[107]~input_o\))) # (!\module_fault_vector_pin[104]~input_o\ & (\module_fault_vector_pin[105]~input_o\ & \module_fault_vector_pin[107]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[106]~input_o\,
	datab => \module_fault_vector_pin[104]~input_o\,
	datac => \module_fault_vector_pin[105]~input_o\,
	datad => \module_fault_vector_pin[107]~input_o\,
	combout => \u_health_mon|Add104~1_combout\);

-- Location: LCCOMB_X63_Y63_N20
\u_health_mon|Add100~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add100~2_combout\ = \module_fault_vector_pin[100]~input_o\ $ (\module_fault_vector_pin[101]~input_o\ $ (\module_fault_vector_pin[103]~input_o\ $ (\module_fault_vector_pin[102]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[100]~input_o\,
	datab => \module_fault_vector_pin[101]~input_o\,
	datac => \module_fault_vector_pin[103]~input_o\,
	datad => \module_fault_vector_pin[102]~input_o\,
	combout => \u_health_mon|Add100~2_combout\);

-- Location: LCCOMB_X61_Y63_N12
\u_health_mon|Add104~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add104~2_combout\ = \module_fault_vector_pin[106]~input_o\ $ (\module_fault_vector_pin[104]~input_o\ $ (\module_fault_vector_pin[105]~input_o\ $ (\module_fault_vector_pin[107]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[106]~input_o\,
	datab => \module_fault_vector_pin[104]~input_o\,
	datac => \module_fault_vector_pin[105]~input_o\,
	datad => \module_fault_vector_pin[107]~input_o\,
	combout => \u_health_mon|Add104~2_combout\);

-- Location: LCCOMB_X62_Y63_N8
\u_health_mon|Add102~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add102~0_combout\ = (\u_health_mon|Add100~2_combout\ & (\u_health_mon|Add104~2_combout\ $ (VCC))) # (!\u_health_mon|Add100~2_combout\ & (\u_health_mon|Add104~2_combout\ & VCC))
-- \u_health_mon|Add102~1\ = CARRY((\u_health_mon|Add100~2_combout\ & \u_health_mon|Add104~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add100~2_combout\,
	datab => \u_health_mon|Add104~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add102~0_combout\,
	cout => \u_health_mon|Add102~1\);

-- Location: LCCOMB_X62_Y63_N10
\u_health_mon|Add102~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add102~2_combout\ = (\u_health_mon|Add100~1_combout\ & ((\u_health_mon|Add104~1_combout\ & (\u_health_mon|Add102~1\ & VCC)) # (!\u_health_mon|Add104~1_combout\ & (!\u_health_mon|Add102~1\)))) # (!\u_health_mon|Add100~1_combout\ & 
-- ((\u_health_mon|Add104~1_combout\ & (!\u_health_mon|Add102~1\)) # (!\u_health_mon|Add104~1_combout\ & ((\u_health_mon|Add102~1\) # (GND)))))
-- \u_health_mon|Add102~3\ = CARRY((\u_health_mon|Add100~1_combout\ & (!\u_health_mon|Add104~1_combout\ & !\u_health_mon|Add102~1\)) # (!\u_health_mon|Add100~1_combout\ & ((!\u_health_mon|Add102~1\) # (!\u_health_mon|Add104~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add100~1_combout\,
	datab => \u_health_mon|Add104~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add102~1\,
	combout => \u_health_mon|Add102~2_combout\,
	cout => \u_health_mon|Add102~3\);

-- Location: LCCOMB_X62_Y63_N12
\u_health_mon|Add102~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add102~4_combout\ = ((\u_health_mon|Add104~0_combout\ $ (\u_health_mon|Add100~0_combout\ $ (!\u_health_mon|Add102~3\)))) # (GND)
-- \u_health_mon|Add102~5\ = CARRY((\u_health_mon|Add104~0_combout\ & ((\u_health_mon|Add100~0_combout\) # (!\u_health_mon|Add102~3\))) # (!\u_health_mon|Add104~0_combout\ & (\u_health_mon|Add100~0_combout\ & !\u_health_mon|Add102~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add104~0_combout\,
	datab => \u_health_mon|Add100~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add102~3\,
	combout => \u_health_mon|Add102~4_combout\,
	cout => \u_health_mon|Add102~5\);

-- Location: LCCOMB_X62_Y63_N14
\u_health_mon|Add102~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add102~6_combout\ = \u_health_mon|Add102~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add102~5\,
	combout => \u_health_mon|Add102~6_combout\);

-- Location: LCCOMB_X62_Y63_N16
\u_health_mon|Add106~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add106~0_combout\ = (\u_health_mon|Add102~0_combout\ & (\u_health_mon|Add110~0_combout\ $ (VCC))) # (!\u_health_mon|Add102~0_combout\ & (\u_health_mon|Add110~0_combout\ & VCC))
-- \u_health_mon|Add106~1\ = CARRY((\u_health_mon|Add102~0_combout\ & \u_health_mon|Add110~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add102~0_combout\,
	datab => \u_health_mon|Add110~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add106~0_combout\,
	cout => \u_health_mon|Add106~1\);

-- Location: LCCOMB_X62_Y63_N18
\u_health_mon|Add106~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add106~2_combout\ = (\u_health_mon|Add102~2_combout\ & ((\u_health_mon|Add110~2_combout\ & (\u_health_mon|Add106~1\ & VCC)) # (!\u_health_mon|Add110~2_combout\ & (!\u_health_mon|Add106~1\)))) # (!\u_health_mon|Add102~2_combout\ & 
-- ((\u_health_mon|Add110~2_combout\ & (!\u_health_mon|Add106~1\)) # (!\u_health_mon|Add110~2_combout\ & ((\u_health_mon|Add106~1\) # (GND)))))
-- \u_health_mon|Add106~3\ = CARRY((\u_health_mon|Add102~2_combout\ & (!\u_health_mon|Add110~2_combout\ & !\u_health_mon|Add106~1\)) # (!\u_health_mon|Add102~2_combout\ & ((!\u_health_mon|Add106~1\) # (!\u_health_mon|Add110~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add102~2_combout\,
	datab => \u_health_mon|Add110~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add106~1\,
	combout => \u_health_mon|Add106~2_combout\,
	cout => \u_health_mon|Add106~3\);

-- Location: LCCOMB_X62_Y63_N20
\u_health_mon|Add106~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add106~4_combout\ = ((\u_health_mon|Add102~4_combout\ $ (\u_health_mon|Add110~4_combout\ $ (!\u_health_mon|Add106~3\)))) # (GND)
-- \u_health_mon|Add106~5\ = CARRY((\u_health_mon|Add102~4_combout\ & ((\u_health_mon|Add110~4_combout\) # (!\u_health_mon|Add106~3\))) # (!\u_health_mon|Add102~4_combout\ & (\u_health_mon|Add110~4_combout\ & !\u_health_mon|Add106~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add102~4_combout\,
	datab => \u_health_mon|Add110~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add106~3\,
	combout => \u_health_mon|Add106~4_combout\,
	cout => \u_health_mon|Add106~5\);

-- Location: LCCOMB_X62_Y63_N22
\u_health_mon|Add106~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add106~6_combout\ = (\u_health_mon|Add110~6_combout\ & ((\u_health_mon|Add102~6_combout\ & (\u_health_mon|Add106~5\ & VCC)) # (!\u_health_mon|Add102~6_combout\ & (!\u_health_mon|Add106~5\)))) # (!\u_health_mon|Add110~6_combout\ & 
-- ((\u_health_mon|Add102~6_combout\ & (!\u_health_mon|Add106~5\)) # (!\u_health_mon|Add102~6_combout\ & ((\u_health_mon|Add106~5\) # (GND)))))
-- \u_health_mon|Add106~7\ = CARRY((\u_health_mon|Add110~6_combout\ & (!\u_health_mon|Add102~6_combout\ & !\u_health_mon|Add106~5\)) # (!\u_health_mon|Add110~6_combout\ & ((!\u_health_mon|Add106~5\) # (!\u_health_mon|Add102~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add110~6_combout\,
	datab => \u_health_mon|Add102~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add106~5\,
	combout => \u_health_mon|Add106~6_combout\,
	cout => \u_health_mon|Add106~7\);

-- Location: IOIBUF_X81_Y61_N1
\module_fault_vector_pin[94]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(94),
	o => \module_fault_vector_pin[94]~input_o\);

-- Location: IOIBUF_X81_Y61_N8
\module_fault_vector_pin[92]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(92),
	o => \module_fault_vector_pin[92]~input_o\);

-- Location: IOIBUF_X81_Y62_N15
\module_fault_vector_pin[95]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(95),
	o => \module_fault_vector_pin[95]~input_o\);

-- Location: IOIBUF_X81_Y62_N1
\module_fault_vector_pin[93]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(93),
	o => \module_fault_vector_pin[93]~input_o\);

-- Location: LCCOMB_X80_Y60_N8
\u_health_mon|Add92~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add92~0_combout\ = (\module_fault_vector_pin[94]~input_o\ & (\module_fault_vector_pin[92]~input_o\ & (\module_fault_vector_pin[95]~input_o\ & \module_fault_vector_pin[93]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[94]~input_o\,
	datab => \module_fault_vector_pin[92]~input_o\,
	datac => \module_fault_vector_pin[95]~input_o\,
	datad => \module_fault_vector_pin[93]~input_o\,
	combout => \u_health_mon|Add92~0_combout\);

-- Location: IOIBUF_X81_Y59_N8
\module_fault_vector_pin[97]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(97),
	o => \module_fault_vector_pin[97]~input_o\);

-- Location: IOIBUF_X81_Y59_N1
\module_fault_vector_pin[98]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(98),
	o => \module_fault_vector_pin[98]~input_o\);

-- Location: IOIBUF_X81_Y62_N8
\module_fault_vector_pin[99]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(99),
	o => \module_fault_vector_pin[99]~input_o\);

-- Location: IOIBUF_X81_Y59_N15
\module_fault_vector_pin[96]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(96),
	o => \module_fault_vector_pin[96]~input_o\);

-- Location: LCCOMB_X80_Y59_N8
\u_health_mon|Add96~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add96~0_combout\ = (\module_fault_vector_pin[97]~input_o\ & (\module_fault_vector_pin[98]~input_o\ & (\module_fault_vector_pin[99]~input_o\ & \module_fault_vector_pin[96]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[97]~input_o\,
	datab => \module_fault_vector_pin[98]~input_o\,
	datac => \module_fault_vector_pin[99]~input_o\,
	datad => \module_fault_vector_pin[96]~input_o\,
	combout => \u_health_mon|Add96~0_combout\);

-- Location: LCCOMB_X80_Y60_N18
\u_health_mon|Add92~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add92~1_combout\ = (\module_fault_vector_pin[94]~input_o\ & ((\module_fault_vector_pin[92]~input_o\ & ((!\module_fault_vector_pin[93]~input_o\) # (!\module_fault_vector_pin[95]~input_o\))) # (!\module_fault_vector_pin[92]~input_o\ & 
-- ((\module_fault_vector_pin[95]~input_o\) # (\module_fault_vector_pin[93]~input_o\))))) # (!\module_fault_vector_pin[94]~input_o\ & ((\module_fault_vector_pin[92]~input_o\ & ((\module_fault_vector_pin[95]~input_o\) # 
-- (\module_fault_vector_pin[93]~input_o\))) # (!\module_fault_vector_pin[92]~input_o\ & (\module_fault_vector_pin[95]~input_o\ & \module_fault_vector_pin[93]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[94]~input_o\,
	datab => \module_fault_vector_pin[92]~input_o\,
	datac => \module_fault_vector_pin[95]~input_o\,
	datad => \module_fault_vector_pin[93]~input_o\,
	combout => \u_health_mon|Add92~1_combout\);

-- Location: LCCOMB_X80_Y59_N10
\u_health_mon|Add96~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add96~1_combout\ = (\module_fault_vector_pin[97]~input_o\ & ((\module_fault_vector_pin[98]~input_o\ & ((!\module_fault_vector_pin[96]~input_o\) # (!\module_fault_vector_pin[99]~input_o\))) # (!\module_fault_vector_pin[98]~input_o\ & 
-- ((\module_fault_vector_pin[99]~input_o\) # (\module_fault_vector_pin[96]~input_o\))))) # (!\module_fault_vector_pin[97]~input_o\ & ((\module_fault_vector_pin[98]~input_o\ & ((\module_fault_vector_pin[99]~input_o\) # 
-- (\module_fault_vector_pin[96]~input_o\))) # (!\module_fault_vector_pin[98]~input_o\ & (\module_fault_vector_pin[99]~input_o\ & \module_fault_vector_pin[96]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[97]~input_o\,
	datab => \module_fault_vector_pin[98]~input_o\,
	datac => \module_fault_vector_pin[99]~input_o\,
	datad => \module_fault_vector_pin[96]~input_o\,
	combout => \u_health_mon|Add96~1_combout\);

-- Location: LCCOMB_X80_Y59_N12
\u_health_mon|Add96~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add96~2_combout\ = \module_fault_vector_pin[97]~input_o\ $ (\module_fault_vector_pin[98]~input_o\ $ (\module_fault_vector_pin[99]~input_o\ $ (\module_fault_vector_pin[96]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[97]~input_o\,
	datab => \module_fault_vector_pin[98]~input_o\,
	datac => \module_fault_vector_pin[99]~input_o\,
	datad => \module_fault_vector_pin[96]~input_o\,
	combout => \u_health_mon|Add96~2_combout\);

-- Location: LCCOMB_X80_Y60_N20
\u_health_mon|Add92~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add92~2_combout\ = \module_fault_vector_pin[94]~input_o\ $ (\module_fault_vector_pin[92]~input_o\ $ (\module_fault_vector_pin[95]~input_o\ $ (\module_fault_vector_pin[93]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[94]~input_o\,
	datab => \module_fault_vector_pin[92]~input_o\,
	datac => \module_fault_vector_pin[95]~input_o\,
	datad => \module_fault_vector_pin[93]~input_o\,
	combout => \u_health_mon|Add92~2_combout\);

-- Location: LCCOMB_X80_Y59_N0
\u_health_mon|Add94~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add94~0_combout\ = (\u_health_mon|Add96~2_combout\ & (\u_health_mon|Add92~2_combout\ $ (VCC))) # (!\u_health_mon|Add96~2_combout\ & (\u_health_mon|Add92~2_combout\ & VCC))
-- \u_health_mon|Add94~1\ = CARRY((\u_health_mon|Add96~2_combout\ & \u_health_mon|Add92~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add96~2_combout\,
	datab => \u_health_mon|Add92~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add94~0_combout\,
	cout => \u_health_mon|Add94~1\);

-- Location: LCCOMB_X80_Y59_N2
\u_health_mon|Add94~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add94~2_combout\ = (\u_health_mon|Add92~1_combout\ & ((\u_health_mon|Add96~1_combout\ & (\u_health_mon|Add94~1\ & VCC)) # (!\u_health_mon|Add96~1_combout\ & (!\u_health_mon|Add94~1\)))) # (!\u_health_mon|Add92~1_combout\ & 
-- ((\u_health_mon|Add96~1_combout\ & (!\u_health_mon|Add94~1\)) # (!\u_health_mon|Add96~1_combout\ & ((\u_health_mon|Add94~1\) # (GND)))))
-- \u_health_mon|Add94~3\ = CARRY((\u_health_mon|Add92~1_combout\ & (!\u_health_mon|Add96~1_combout\ & !\u_health_mon|Add94~1\)) # (!\u_health_mon|Add92~1_combout\ & ((!\u_health_mon|Add94~1\) # (!\u_health_mon|Add96~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add92~1_combout\,
	datab => \u_health_mon|Add96~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add94~1\,
	combout => \u_health_mon|Add94~2_combout\,
	cout => \u_health_mon|Add94~3\);

-- Location: LCCOMB_X80_Y59_N4
\u_health_mon|Add94~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add94~4_combout\ = ((\u_health_mon|Add92~0_combout\ $ (\u_health_mon|Add96~0_combout\ $ (!\u_health_mon|Add94~3\)))) # (GND)
-- \u_health_mon|Add94~5\ = CARRY((\u_health_mon|Add92~0_combout\ & ((\u_health_mon|Add96~0_combout\) # (!\u_health_mon|Add94~3\))) # (!\u_health_mon|Add92~0_combout\ & (\u_health_mon|Add96~0_combout\ & !\u_health_mon|Add94~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add92~0_combout\,
	datab => \u_health_mon|Add96~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add94~3\,
	combout => \u_health_mon|Add94~4_combout\,
	cout => \u_health_mon|Add94~5\);

-- Location: LCCOMB_X80_Y59_N6
\u_health_mon|Add94~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add94~6_combout\ = \u_health_mon|Add94~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add94~5\,
	combout => \u_health_mon|Add94~6_combout\);

-- Location: IOIBUF_X81_Y56_N1
\module_fault_vector_pin[88]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(88),
	o => \module_fault_vector_pin[88]~input_o\);

-- Location: IOIBUF_X81_Y56_N8
\module_fault_vector_pin[89]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(89),
	o => \module_fault_vector_pin[89]~input_o\);

-- Location: IOIBUF_X81_Y58_N8
\module_fault_vector_pin[90]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(90),
	o => \module_fault_vector_pin[90]~input_o\);

-- Location: IOIBUF_X81_Y61_N15
\module_fault_vector_pin[91]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(91),
	o => \module_fault_vector_pin[91]~input_o\);

-- Location: LCCOMB_X77_Y56_N8
\u_health_mon|Add88~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add88~0_combout\ = (\module_fault_vector_pin[88]~input_o\ & (\module_fault_vector_pin[89]~input_o\ & (\module_fault_vector_pin[90]~input_o\ & \module_fault_vector_pin[91]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[88]~input_o\,
	datab => \module_fault_vector_pin[89]~input_o\,
	datac => \module_fault_vector_pin[90]~input_o\,
	datad => \module_fault_vector_pin[91]~input_o\,
	combout => \u_health_mon|Add88~0_combout\);

-- Location: IOIBUF_X81_Y23_N8
\module_fault_vector_pin[86]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(86),
	o => \module_fault_vector_pin[86]~input_o\);

-- Location: IOIBUF_X81_Y26_N1
\module_fault_vector_pin[85]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(85),
	o => \module_fault_vector_pin[85]~input_o\);

-- Location: IOIBUF_X81_Y25_N8
\module_fault_vector_pin[84]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(84),
	o => \module_fault_vector_pin[84]~input_o\);

-- Location: IOIBUF_X81_Y26_N8
\module_fault_vector_pin[87]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(87),
	o => \module_fault_vector_pin[87]~input_o\);

-- Location: LCCOMB_X80_Y26_N16
\u_health_mon|Add84~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add84~0_combout\ = (\module_fault_vector_pin[86]~input_o\ & (\module_fault_vector_pin[85]~input_o\ & (\module_fault_vector_pin[84]~input_o\ & \module_fault_vector_pin[87]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[86]~input_o\,
	datab => \module_fault_vector_pin[85]~input_o\,
	datac => \module_fault_vector_pin[84]~input_o\,
	datad => \module_fault_vector_pin[87]~input_o\,
	combout => \u_health_mon|Add84~0_combout\);

-- Location: LCCOMB_X80_Y26_N18
\u_health_mon|Add84~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add84~1_combout\ = (\module_fault_vector_pin[86]~input_o\ & ((\module_fault_vector_pin[85]~input_o\ & ((!\module_fault_vector_pin[87]~input_o\) # (!\module_fault_vector_pin[84]~input_o\))) # (!\module_fault_vector_pin[85]~input_o\ & 
-- ((\module_fault_vector_pin[84]~input_o\) # (\module_fault_vector_pin[87]~input_o\))))) # (!\module_fault_vector_pin[86]~input_o\ & ((\module_fault_vector_pin[85]~input_o\ & ((\module_fault_vector_pin[84]~input_o\) # 
-- (\module_fault_vector_pin[87]~input_o\))) # (!\module_fault_vector_pin[85]~input_o\ & (\module_fault_vector_pin[84]~input_o\ & \module_fault_vector_pin[87]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[86]~input_o\,
	datab => \module_fault_vector_pin[85]~input_o\,
	datac => \module_fault_vector_pin[84]~input_o\,
	datad => \module_fault_vector_pin[87]~input_o\,
	combout => \u_health_mon|Add84~1_combout\);

-- Location: LCCOMB_X77_Y56_N10
\u_health_mon|Add88~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add88~1_combout\ = (\module_fault_vector_pin[88]~input_o\ & ((\module_fault_vector_pin[89]~input_o\ & ((!\module_fault_vector_pin[91]~input_o\) # (!\module_fault_vector_pin[90]~input_o\))) # (!\module_fault_vector_pin[89]~input_o\ & 
-- ((\module_fault_vector_pin[90]~input_o\) # (\module_fault_vector_pin[91]~input_o\))))) # (!\module_fault_vector_pin[88]~input_o\ & ((\module_fault_vector_pin[89]~input_o\ & ((\module_fault_vector_pin[90]~input_o\) # 
-- (\module_fault_vector_pin[91]~input_o\))) # (!\module_fault_vector_pin[89]~input_o\ & (\module_fault_vector_pin[90]~input_o\ & \module_fault_vector_pin[91]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[88]~input_o\,
	datab => \module_fault_vector_pin[89]~input_o\,
	datac => \module_fault_vector_pin[90]~input_o\,
	datad => \module_fault_vector_pin[91]~input_o\,
	combout => \u_health_mon|Add88~1_combout\);

-- Location: LCCOMB_X80_Y26_N12
\u_health_mon|Add84~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add84~2_combout\ = \module_fault_vector_pin[86]~input_o\ $ (\module_fault_vector_pin[85]~input_o\ $ (\module_fault_vector_pin[84]~input_o\ $ (\module_fault_vector_pin[87]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[86]~input_o\,
	datab => \module_fault_vector_pin[85]~input_o\,
	datac => \module_fault_vector_pin[84]~input_o\,
	datad => \module_fault_vector_pin[87]~input_o\,
	combout => \u_health_mon|Add84~2_combout\);

-- Location: LCCOMB_X77_Y56_N4
\u_health_mon|Add88~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add88~2_combout\ = \module_fault_vector_pin[88]~input_o\ $ (\module_fault_vector_pin[89]~input_o\ $ (\module_fault_vector_pin[90]~input_o\ $ (\module_fault_vector_pin[91]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[88]~input_o\,
	datab => \module_fault_vector_pin[89]~input_o\,
	datac => \module_fault_vector_pin[90]~input_o\,
	datad => \module_fault_vector_pin[91]~input_o\,
	combout => \u_health_mon|Add88~2_combout\);

-- Location: LCCOMB_X77_Y56_N12
\u_health_mon|Add86~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add86~0_combout\ = (\u_health_mon|Add84~2_combout\ & (\u_health_mon|Add88~2_combout\ $ (VCC))) # (!\u_health_mon|Add84~2_combout\ & (\u_health_mon|Add88~2_combout\ & VCC))
-- \u_health_mon|Add86~1\ = CARRY((\u_health_mon|Add84~2_combout\ & \u_health_mon|Add88~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add84~2_combout\,
	datab => \u_health_mon|Add88~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add86~0_combout\,
	cout => \u_health_mon|Add86~1\);

-- Location: LCCOMB_X77_Y56_N14
\u_health_mon|Add86~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add86~2_combout\ = (\u_health_mon|Add84~1_combout\ & ((\u_health_mon|Add88~1_combout\ & (\u_health_mon|Add86~1\ & VCC)) # (!\u_health_mon|Add88~1_combout\ & (!\u_health_mon|Add86~1\)))) # (!\u_health_mon|Add84~1_combout\ & 
-- ((\u_health_mon|Add88~1_combout\ & (!\u_health_mon|Add86~1\)) # (!\u_health_mon|Add88~1_combout\ & ((\u_health_mon|Add86~1\) # (GND)))))
-- \u_health_mon|Add86~3\ = CARRY((\u_health_mon|Add84~1_combout\ & (!\u_health_mon|Add88~1_combout\ & !\u_health_mon|Add86~1\)) # (!\u_health_mon|Add84~1_combout\ & ((!\u_health_mon|Add86~1\) # (!\u_health_mon|Add88~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add84~1_combout\,
	datab => \u_health_mon|Add88~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add86~1\,
	combout => \u_health_mon|Add86~2_combout\,
	cout => \u_health_mon|Add86~3\);

-- Location: LCCOMB_X77_Y56_N16
\u_health_mon|Add86~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add86~4_combout\ = ((\u_health_mon|Add88~0_combout\ $ (\u_health_mon|Add84~0_combout\ $ (!\u_health_mon|Add86~3\)))) # (GND)
-- \u_health_mon|Add86~5\ = CARRY((\u_health_mon|Add88~0_combout\ & ((\u_health_mon|Add84~0_combout\) # (!\u_health_mon|Add86~3\))) # (!\u_health_mon|Add88~0_combout\ & (\u_health_mon|Add84~0_combout\ & !\u_health_mon|Add86~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add88~0_combout\,
	datab => \u_health_mon|Add84~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add86~3\,
	combout => \u_health_mon|Add86~4_combout\,
	cout => \u_health_mon|Add86~5\);

-- Location: LCCOMB_X77_Y56_N18
\u_health_mon|Add86~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add86~6_combout\ = \u_health_mon|Add86~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add86~5\,
	combout => \u_health_mon|Add86~6_combout\);

-- Location: LCCOMB_X77_Y56_N20
\u_health_mon|Add90~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add90~0_combout\ = (\u_health_mon|Add86~0_combout\ & (\u_health_mon|Add94~0_combout\ $ (VCC))) # (!\u_health_mon|Add86~0_combout\ & (\u_health_mon|Add94~0_combout\ & VCC))
-- \u_health_mon|Add90~1\ = CARRY((\u_health_mon|Add86~0_combout\ & \u_health_mon|Add94~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add86~0_combout\,
	datab => \u_health_mon|Add94~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add90~0_combout\,
	cout => \u_health_mon|Add90~1\);

-- Location: LCCOMB_X77_Y56_N22
\u_health_mon|Add90~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add90~2_combout\ = (\u_health_mon|Add86~2_combout\ & ((\u_health_mon|Add94~2_combout\ & (\u_health_mon|Add90~1\ & VCC)) # (!\u_health_mon|Add94~2_combout\ & (!\u_health_mon|Add90~1\)))) # (!\u_health_mon|Add86~2_combout\ & 
-- ((\u_health_mon|Add94~2_combout\ & (!\u_health_mon|Add90~1\)) # (!\u_health_mon|Add94~2_combout\ & ((\u_health_mon|Add90~1\) # (GND)))))
-- \u_health_mon|Add90~3\ = CARRY((\u_health_mon|Add86~2_combout\ & (!\u_health_mon|Add94~2_combout\ & !\u_health_mon|Add90~1\)) # (!\u_health_mon|Add86~2_combout\ & ((!\u_health_mon|Add90~1\) # (!\u_health_mon|Add94~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add86~2_combout\,
	datab => \u_health_mon|Add94~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add90~1\,
	combout => \u_health_mon|Add90~2_combout\,
	cout => \u_health_mon|Add90~3\);

-- Location: LCCOMB_X77_Y56_N24
\u_health_mon|Add90~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add90~4_combout\ = ((\u_health_mon|Add94~4_combout\ $ (\u_health_mon|Add86~4_combout\ $ (!\u_health_mon|Add90~3\)))) # (GND)
-- \u_health_mon|Add90~5\ = CARRY((\u_health_mon|Add94~4_combout\ & ((\u_health_mon|Add86~4_combout\) # (!\u_health_mon|Add90~3\))) # (!\u_health_mon|Add94~4_combout\ & (\u_health_mon|Add86~4_combout\ & !\u_health_mon|Add90~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add94~4_combout\,
	datab => \u_health_mon|Add86~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add90~3\,
	combout => \u_health_mon|Add90~4_combout\,
	cout => \u_health_mon|Add90~5\);

-- Location: LCCOMB_X77_Y56_N26
\u_health_mon|Add90~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add90~6_combout\ = (\u_health_mon|Add94~6_combout\ & ((\u_health_mon|Add86~6_combout\ & (\u_health_mon|Add90~5\ & VCC)) # (!\u_health_mon|Add86~6_combout\ & (!\u_health_mon|Add90~5\)))) # (!\u_health_mon|Add94~6_combout\ & 
-- ((\u_health_mon|Add86~6_combout\ & (!\u_health_mon|Add90~5\)) # (!\u_health_mon|Add86~6_combout\ & ((\u_health_mon|Add90~5\) # (GND)))))
-- \u_health_mon|Add90~7\ = CARRY((\u_health_mon|Add94~6_combout\ & (!\u_health_mon|Add86~6_combout\ & !\u_health_mon|Add90~5\)) # (!\u_health_mon|Add94~6_combout\ & ((!\u_health_mon|Add90~5\) # (!\u_health_mon|Add86~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add94~6_combout\,
	datab => \u_health_mon|Add86~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add90~5\,
	combout => \u_health_mon|Add90~6_combout\,
	cout => \u_health_mon|Add90~7\);

-- Location: LCCOMB_X69_Y52_N0
\u_health_mon|Add98~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add98~0_combout\ = (\u_health_mon|Add90~0_combout\ & (\u_health_mon|Add106~0_combout\ $ (VCC))) # (!\u_health_mon|Add90~0_combout\ & (\u_health_mon|Add106~0_combout\ & VCC))
-- \u_health_mon|Add98~1\ = CARRY((\u_health_mon|Add90~0_combout\ & \u_health_mon|Add106~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add90~0_combout\,
	datab => \u_health_mon|Add106~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add98~0_combout\,
	cout => \u_health_mon|Add98~1\);

-- Location: LCCOMB_X69_Y52_N2
\u_health_mon|Add98~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add98~2_combout\ = (\u_health_mon|Add90~2_combout\ & ((\u_health_mon|Add106~2_combout\ & (\u_health_mon|Add98~1\ & VCC)) # (!\u_health_mon|Add106~2_combout\ & (!\u_health_mon|Add98~1\)))) # (!\u_health_mon|Add90~2_combout\ & 
-- ((\u_health_mon|Add106~2_combout\ & (!\u_health_mon|Add98~1\)) # (!\u_health_mon|Add106~2_combout\ & ((\u_health_mon|Add98~1\) # (GND)))))
-- \u_health_mon|Add98~3\ = CARRY((\u_health_mon|Add90~2_combout\ & (!\u_health_mon|Add106~2_combout\ & !\u_health_mon|Add98~1\)) # (!\u_health_mon|Add90~2_combout\ & ((!\u_health_mon|Add98~1\) # (!\u_health_mon|Add106~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add90~2_combout\,
	datab => \u_health_mon|Add106~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add98~1\,
	combout => \u_health_mon|Add98~2_combout\,
	cout => \u_health_mon|Add98~3\);

-- Location: LCCOMB_X69_Y52_N4
\u_health_mon|Add98~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add98~4_combout\ = ((\u_health_mon|Add90~4_combout\ $ (\u_health_mon|Add106~4_combout\ $ (!\u_health_mon|Add98~3\)))) # (GND)
-- \u_health_mon|Add98~5\ = CARRY((\u_health_mon|Add90~4_combout\ & ((\u_health_mon|Add106~4_combout\) # (!\u_health_mon|Add98~3\))) # (!\u_health_mon|Add90~4_combout\ & (\u_health_mon|Add106~4_combout\ & !\u_health_mon|Add98~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add90~4_combout\,
	datab => \u_health_mon|Add106~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add98~3\,
	combout => \u_health_mon|Add98~4_combout\,
	cout => \u_health_mon|Add98~5\);

-- Location: LCCOMB_X69_Y52_N6
\u_health_mon|Add98~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add98~6_combout\ = (\u_health_mon|Add106~6_combout\ & ((\u_health_mon|Add90~6_combout\ & (\u_health_mon|Add98~5\ & VCC)) # (!\u_health_mon|Add90~6_combout\ & (!\u_health_mon|Add98~5\)))) # (!\u_health_mon|Add106~6_combout\ & 
-- ((\u_health_mon|Add90~6_combout\ & (!\u_health_mon|Add98~5\)) # (!\u_health_mon|Add90~6_combout\ & ((\u_health_mon|Add98~5\) # (GND)))))
-- \u_health_mon|Add98~7\ = CARRY((\u_health_mon|Add106~6_combout\ & (!\u_health_mon|Add90~6_combout\ & !\u_health_mon|Add98~5\)) # (!\u_health_mon|Add106~6_combout\ & ((!\u_health_mon|Add98~5\) # (!\u_health_mon|Add90~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add106~6_combout\,
	datab => \u_health_mon|Add90~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add98~5\,
	combout => \u_health_mon|Add98~6_combout\,
	cout => \u_health_mon|Add98~7\);

-- Location: IOIBUF_X81_Y64_N22
\module_fault_vector_pin[131]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(131),
	o => \module_fault_vector_pin[131]~input_o\);

-- Location: IOIBUF_X81_Y64_N15
\module_fault_vector_pin[130]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(130),
	o => \module_fault_vector_pin[130]~input_o\);

-- Location: IOIBUF_X81_Y64_N1
\module_fault_vector_pin[128]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(128),
	o => \module_fault_vector_pin[128]~input_o\);

-- Location: IOIBUF_X81_Y65_N8
\module_fault_vector_pin[129]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(129),
	o => \module_fault_vector_pin[129]~input_o\);

-- Location: LCCOMB_X80_Y63_N26
\u_health_mon|Add128~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add128~0_combout\ = (\module_fault_vector_pin[131]~input_o\ & (\module_fault_vector_pin[130]~input_o\ & (\module_fault_vector_pin[128]~input_o\ & \module_fault_vector_pin[129]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[131]~input_o\,
	datab => \module_fault_vector_pin[130]~input_o\,
	datac => \module_fault_vector_pin[128]~input_o\,
	datad => \module_fault_vector_pin[129]~input_o\,
	combout => \u_health_mon|Add128~0_combout\);

-- Location: IOIBUF_X81_Y65_N15
\module_fault_vector_pin[124]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(124),
	o => \module_fault_vector_pin[124]~input_o\);

-- Location: IOIBUF_X81_Y63_N1
\module_fault_vector_pin[125]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(125),
	o => \module_fault_vector_pin[125]~input_o\);

-- Location: IOIBUF_X81_Y64_N8
\module_fault_vector_pin[126]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(126),
	o => \module_fault_vector_pin[126]~input_o\);

-- Location: IOIBUF_X81_Y65_N1
\module_fault_vector_pin[127]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(127),
	o => \module_fault_vector_pin[127]~input_o\);

-- Location: LCCOMB_X80_Y63_N24
\u_health_mon|Add124~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add124~0_combout\ = (\module_fault_vector_pin[124]~input_o\ & (\module_fault_vector_pin[125]~input_o\ & (\module_fault_vector_pin[126]~input_o\ & \module_fault_vector_pin[127]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[124]~input_o\,
	datab => \module_fault_vector_pin[125]~input_o\,
	datac => \module_fault_vector_pin[126]~input_o\,
	datad => \module_fault_vector_pin[127]~input_o\,
	combout => \u_health_mon|Add124~0_combout\);

-- Location: LCCOMB_X80_Y63_N12
\u_health_mon|Add124~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add124~1_combout\ = (\module_fault_vector_pin[124]~input_o\ & ((\module_fault_vector_pin[125]~input_o\ & ((!\module_fault_vector_pin[127]~input_o\) # (!\module_fault_vector_pin[126]~input_o\))) # (!\module_fault_vector_pin[125]~input_o\ & 
-- ((\module_fault_vector_pin[126]~input_o\) # (\module_fault_vector_pin[127]~input_o\))))) # (!\module_fault_vector_pin[124]~input_o\ & ((\module_fault_vector_pin[125]~input_o\ & ((\module_fault_vector_pin[126]~input_o\) # 
-- (\module_fault_vector_pin[127]~input_o\))) # (!\module_fault_vector_pin[125]~input_o\ & (\module_fault_vector_pin[126]~input_o\ & \module_fault_vector_pin[127]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[124]~input_o\,
	datab => \module_fault_vector_pin[125]~input_o\,
	datac => \module_fault_vector_pin[126]~input_o\,
	datad => \module_fault_vector_pin[127]~input_o\,
	combout => \u_health_mon|Add124~1_combout\);

-- Location: LCCOMB_X80_Y63_N30
\u_health_mon|Add128~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add128~1_combout\ = (\module_fault_vector_pin[131]~input_o\ & ((\module_fault_vector_pin[130]~input_o\ & ((!\module_fault_vector_pin[129]~input_o\) # (!\module_fault_vector_pin[128]~input_o\))) # (!\module_fault_vector_pin[130]~input_o\ & 
-- ((\module_fault_vector_pin[128]~input_o\) # (\module_fault_vector_pin[129]~input_o\))))) # (!\module_fault_vector_pin[131]~input_o\ & ((\module_fault_vector_pin[130]~input_o\ & ((\module_fault_vector_pin[128]~input_o\) # 
-- (\module_fault_vector_pin[129]~input_o\))) # (!\module_fault_vector_pin[130]~input_o\ & (\module_fault_vector_pin[128]~input_o\ & \module_fault_vector_pin[129]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[131]~input_o\,
	datab => \module_fault_vector_pin[130]~input_o\,
	datac => \module_fault_vector_pin[128]~input_o\,
	datad => \module_fault_vector_pin[129]~input_o\,
	combout => \u_health_mon|Add128~1_combout\);

-- Location: LCCOMB_X80_Y63_N10
\u_health_mon|Add128~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add128~2_combout\ = \module_fault_vector_pin[131]~input_o\ $ (\module_fault_vector_pin[130]~input_o\ $ (\module_fault_vector_pin[128]~input_o\ $ (\module_fault_vector_pin[129]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[131]~input_o\,
	datab => \module_fault_vector_pin[130]~input_o\,
	datac => \module_fault_vector_pin[128]~input_o\,
	datad => \module_fault_vector_pin[129]~input_o\,
	combout => \u_health_mon|Add128~2_combout\);

-- Location: LCCOMB_X80_Y63_N16
\u_health_mon|Add124~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add124~2_combout\ = \module_fault_vector_pin[124]~input_o\ $ (\module_fault_vector_pin[125]~input_o\ $ (\module_fault_vector_pin[126]~input_o\ $ (\module_fault_vector_pin[127]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[124]~input_o\,
	datab => \module_fault_vector_pin[125]~input_o\,
	datac => \module_fault_vector_pin[126]~input_o\,
	datad => \module_fault_vector_pin[127]~input_o\,
	combout => \u_health_mon|Add124~2_combout\);

-- Location: LCCOMB_X80_Y63_N2
\u_health_mon|Add126~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add126~0_combout\ = (\u_health_mon|Add128~2_combout\ & (\u_health_mon|Add124~2_combout\ $ (VCC))) # (!\u_health_mon|Add128~2_combout\ & (\u_health_mon|Add124~2_combout\ & VCC))
-- \u_health_mon|Add126~1\ = CARRY((\u_health_mon|Add128~2_combout\ & \u_health_mon|Add124~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add128~2_combout\,
	datab => \u_health_mon|Add124~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add126~0_combout\,
	cout => \u_health_mon|Add126~1\);

-- Location: LCCOMB_X80_Y63_N4
\u_health_mon|Add126~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add126~2_combout\ = (\u_health_mon|Add124~1_combout\ & ((\u_health_mon|Add128~1_combout\ & (\u_health_mon|Add126~1\ & VCC)) # (!\u_health_mon|Add128~1_combout\ & (!\u_health_mon|Add126~1\)))) # (!\u_health_mon|Add124~1_combout\ & 
-- ((\u_health_mon|Add128~1_combout\ & (!\u_health_mon|Add126~1\)) # (!\u_health_mon|Add128~1_combout\ & ((\u_health_mon|Add126~1\) # (GND)))))
-- \u_health_mon|Add126~3\ = CARRY((\u_health_mon|Add124~1_combout\ & (!\u_health_mon|Add128~1_combout\ & !\u_health_mon|Add126~1\)) # (!\u_health_mon|Add124~1_combout\ & ((!\u_health_mon|Add126~1\) # (!\u_health_mon|Add128~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add124~1_combout\,
	datab => \u_health_mon|Add128~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add126~1\,
	combout => \u_health_mon|Add126~2_combout\,
	cout => \u_health_mon|Add126~3\);

-- Location: LCCOMB_X80_Y63_N6
\u_health_mon|Add126~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add126~4_combout\ = ((\u_health_mon|Add128~0_combout\ $ (\u_health_mon|Add124~0_combout\ $ (!\u_health_mon|Add126~3\)))) # (GND)
-- \u_health_mon|Add126~5\ = CARRY((\u_health_mon|Add128~0_combout\ & ((\u_health_mon|Add124~0_combout\) # (!\u_health_mon|Add126~3\))) # (!\u_health_mon|Add128~0_combout\ & (\u_health_mon|Add124~0_combout\ & !\u_health_mon|Add126~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add128~0_combout\,
	datab => \u_health_mon|Add124~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add126~3\,
	combout => \u_health_mon|Add126~4_combout\,
	cout => \u_health_mon|Add126~5\);

-- Location: LCCOMB_X80_Y63_N8
\u_health_mon|Add126~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add126~6_combout\ = \u_health_mon|Add126~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add126~5\,
	combout => \u_health_mon|Add126~6_combout\);

-- Location: IOIBUF_X68_Y0_N15
\module_fault_vector_pin[120]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(120),
	o => \module_fault_vector_pin[120]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\module_fault_vector_pin[121]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(121),
	o => \module_fault_vector_pin[121]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\module_fault_vector_pin[122]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(122),
	o => \module_fault_vector_pin[122]~input_o\);

-- Location: IOIBUF_X81_Y4_N22
\module_fault_vector_pin[123]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(123),
	o => \module_fault_vector_pin[123]~input_o\);

-- Location: LCCOMB_X68_Y4_N18
\u_health_mon|Add120~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add120~0_combout\ = (\module_fault_vector_pin[120]~input_o\ & (\module_fault_vector_pin[121]~input_o\ & (\module_fault_vector_pin[122]~input_o\ & \module_fault_vector_pin[123]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[120]~input_o\,
	datab => \module_fault_vector_pin[121]~input_o\,
	datac => \module_fault_vector_pin[122]~input_o\,
	datad => \module_fault_vector_pin[123]~input_o\,
	combout => \u_health_mon|Add120~0_combout\);

-- Location: IOIBUF_X68_Y0_N8
\module_fault_vector_pin[119]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(119),
	o => \module_fault_vector_pin[119]~input_o\);

-- Location: IOIBUF_X63_Y0_N1
\module_fault_vector_pin[118]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(118),
	o => \module_fault_vector_pin[118]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\module_fault_vector_pin[117]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(117),
	o => \module_fault_vector_pin[117]~input_o\);

-- Location: IOIBUF_X70_Y0_N15
\module_fault_vector_pin[116]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(116),
	o => \module_fault_vector_pin[116]~input_o\);

-- Location: LCCOMB_X68_Y4_N16
\u_health_mon|Add116~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add116~0_combout\ = (\module_fault_vector_pin[119]~input_o\ & (\module_fault_vector_pin[118]~input_o\ & (\module_fault_vector_pin[117]~input_o\ & \module_fault_vector_pin[116]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[119]~input_o\,
	datab => \module_fault_vector_pin[118]~input_o\,
	datac => \module_fault_vector_pin[117]~input_o\,
	datad => \module_fault_vector_pin[116]~input_o\,
	combout => \u_health_mon|Add116~0_combout\);

-- Location: LCCOMB_X68_Y4_N22
\u_health_mon|Add120~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add120~1_combout\ = (\module_fault_vector_pin[120]~input_o\ & ((\module_fault_vector_pin[121]~input_o\ & ((!\module_fault_vector_pin[123]~input_o\) # (!\module_fault_vector_pin[122]~input_o\))) # (!\module_fault_vector_pin[121]~input_o\ & 
-- ((\module_fault_vector_pin[122]~input_o\) # (\module_fault_vector_pin[123]~input_o\))))) # (!\module_fault_vector_pin[120]~input_o\ & ((\module_fault_vector_pin[121]~input_o\ & ((\module_fault_vector_pin[122]~input_o\) # 
-- (\module_fault_vector_pin[123]~input_o\))) # (!\module_fault_vector_pin[121]~input_o\ & (\module_fault_vector_pin[122]~input_o\ & \module_fault_vector_pin[123]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[120]~input_o\,
	datab => \module_fault_vector_pin[121]~input_o\,
	datac => \module_fault_vector_pin[122]~input_o\,
	datad => \module_fault_vector_pin[123]~input_o\,
	combout => \u_health_mon|Add120~1_combout\);

-- Location: LCCOMB_X68_Y4_N20
\u_health_mon|Add116~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add116~1_combout\ = (\module_fault_vector_pin[119]~input_o\ & ((\module_fault_vector_pin[118]~input_o\ & ((!\module_fault_vector_pin[116]~input_o\) # (!\module_fault_vector_pin[117]~input_o\))) # (!\module_fault_vector_pin[118]~input_o\ & 
-- ((\module_fault_vector_pin[117]~input_o\) # (\module_fault_vector_pin[116]~input_o\))))) # (!\module_fault_vector_pin[119]~input_o\ & ((\module_fault_vector_pin[118]~input_o\ & ((\module_fault_vector_pin[117]~input_o\) # 
-- (\module_fault_vector_pin[116]~input_o\))) # (!\module_fault_vector_pin[118]~input_o\ & (\module_fault_vector_pin[117]~input_o\ & \module_fault_vector_pin[116]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[119]~input_o\,
	datab => \module_fault_vector_pin[118]~input_o\,
	datac => \module_fault_vector_pin[117]~input_o\,
	datad => \module_fault_vector_pin[116]~input_o\,
	combout => \u_health_mon|Add116~1_combout\);

-- Location: LCCOMB_X68_Y4_N10
\u_health_mon|Add120~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add120~2_combout\ = \module_fault_vector_pin[120]~input_o\ $ (\module_fault_vector_pin[121]~input_o\ $ (\module_fault_vector_pin[122]~input_o\ $ (\module_fault_vector_pin[123]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[120]~input_o\,
	datab => \module_fault_vector_pin[121]~input_o\,
	datac => \module_fault_vector_pin[122]~input_o\,
	datad => \module_fault_vector_pin[123]~input_o\,
	combout => \u_health_mon|Add120~2_combout\);

-- Location: LCCOMB_X68_Y4_N8
\u_health_mon|Add116~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add116~2_combout\ = \module_fault_vector_pin[119]~input_o\ $ (\module_fault_vector_pin[118]~input_o\ $ (\module_fault_vector_pin[117]~input_o\ $ (\module_fault_vector_pin[116]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[119]~input_o\,
	datab => \module_fault_vector_pin[118]~input_o\,
	datac => \module_fault_vector_pin[117]~input_o\,
	datad => \module_fault_vector_pin[116]~input_o\,
	combout => \u_health_mon|Add116~2_combout\);

-- Location: LCCOMB_X68_Y4_N24
\u_health_mon|Add118~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add118~0_combout\ = (\u_health_mon|Add120~2_combout\ & (\u_health_mon|Add116~2_combout\ $ (VCC))) # (!\u_health_mon|Add120~2_combout\ & (\u_health_mon|Add116~2_combout\ & VCC))
-- \u_health_mon|Add118~1\ = CARRY((\u_health_mon|Add120~2_combout\ & \u_health_mon|Add116~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add120~2_combout\,
	datab => \u_health_mon|Add116~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add118~0_combout\,
	cout => \u_health_mon|Add118~1\);

-- Location: LCCOMB_X68_Y4_N26
\u_health_mon|Add118~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add118~2_combout\ = (\u_health_mon|Add120~1_combout\ & ((\u_health_mon|Add116~1_combout\ & (\u_health_mon|Add118~1\ & VCC)) # (!\u_health_mon|Add116~1_combout\ & (!\u_health_mon|Add118~1\)))) # (!\u_health_mon|Add120~1_combout\ & 
-- ((\u_health_mon|Add116~1_combout\ & (!\u_health_mon|Add118~1\)) # (!\u_health_mon|Add116~1_combout\ & ((\u_health_mon|Add118~1\) # (GND)))))
-- \u_health_mon|Add118~3\ = CARRY((\u_health_mon|Add120~1_combout\ & (!\u_health_mon|Add116~1_combout\ & !\u_health_mon|Add118~1\)) # (!\u_health_mon|Add120~1_combout\ & ((!\u_health_mon|Add118~1\) # (!\u_health_mon|Add116~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add120~1_combout\,
	datab => \u_health_mon|Add116~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add118~1\,
	combout => \u_health_mon|Add118~2_combout\,
	cout => \u_health_mon|Add118~3\);

-- Location: LCCOMB_X68_Y4_N28
\u_health_mon|Add118~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add118~4_combout\ = ((\u_health_mon|Add120~0_combout\ $ (\u_health_mon|Add116~0_combout\ $ (!\u_health_mon|Add118~3\)))) # (GND)
-- \u_health_mon|Add118~5\ = CARRY((\u_health_mon|Add120~0_combout\ & ((\u_health_mon|Add116~0_combout\) # (!\u_health_mon|Add118~3\))) # (!\u_health_mon|Add120~0_combout\ & (\u_health_mon|Add116~0_combout\ & !\u_health_mon|Add118~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add120~0_combout\,
	datab => \u_health_mon|Add116~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add118~3\,
	combout => \u_health_mon|Add118~4_combout\,
	cout => \u_health_mon|Add118~5\);

-- Location: LCCOMB_X68_Y4_N30
\u_health_mon|Add118~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add118~6_combout\ = \u_health_mon|Add118~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add118~5\,
	combout => \u_health_mon|Add118~6_combout\);

-- Location: LCCOMB_X76_Y52_N4
\u_health_mon|Add122~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add122~0_combout\ = (\u_health_mon|Add126~0_combout\ & (\u_health_mon|Add118~0_combout\ $ (VCC))) # (!\u_health_mon|Add126~0_combout\ & (\u_health_mon|Add118~0_combout\ & VCC))
-- \u_health_mon|Add122~1\ = CARRY((\u_health_mon|Add126~0_combout\ & \u_health_mon|Add118~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add126~0_combout\,
	datab => \u_health_mon|Add118~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add122~0_combout\,
	cout => \u_health_mon|Add122~1\);

-- Location: LCCOMB_X76_Y52_N6
\u_health_mon|Add122~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add122~2_combout\ = (\u_health_mon|Add126~2_combout\ & ((\u_health_mon|Add118~2_combout\ & (\u_health_mon|Add122~1\ & VCC)) # (!\u_health_mon|Add118~2_combout\ & (!\u_health_mon|Add122~1\)))) # (!\u_health_mon|Add126~2_combout\ & 
-- ((\u_health_mon|Add118~2_combout\ & (!\u_health_mon|Add122~1\)) # (!\u_health_mon|Add118~2_combout\ & ((\u_health_mon|Add122~1\) # (GND)))))
-- \u_health_mon|Add122~3\ = CARRY((\u_health_mon|Add126~2_combout\ & (!\u_health_mon|Add118~2_combout\ & !\u_health_mon|Add122~1\)) # (!\u_health_mon|Add126~2_combout\ & ((!\u_health_mon|Add122~1\) # (!\u_health_mon|Add118~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add126~2_combout\,
	datab => \u_health_mon|Add118~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add122~1\,
	combout => \u_health_mon|Add122~2_combout\,
	cout => \u_health_mon|Add122~3\);

-- Location: LCCOMB_X76_Y52_N8
\u_health_mon|Add122~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add122~4_combout\ = ((\u_health_mon|Add126~4_combout\ $ (\u_health_mon|Add118~4_combout\ $ (!\u_health_mon|Add122~3\)))) # (GND)
-- \u_health_mon|Add122~5\ = CARRY((\u_health_mon|Add126~4_combout\ & ((\u_health_mon|Add118~4_combout\) # (!\u_health_mon|Add122~3\))) # (!\u_health_mon|Add126~4_combout\ & (\u_health_mon|Add118~4_combout\ & !\u_health_mon|Add122~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add126~4_combout\,
	datab => \u_health_mon|Add118~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add122~3\,
	combout => \u_health_mon|Add122~4_combout\,
	cout => \u_health_mon|Add122~5\);

-- Location: LCCOMB_X76_Y52_N10
\u_health_mon|Add122~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add122~6_combout\ = (\u_health_mon|Add126~6_combout\ & ((\u_health_mon|Add118~6_combout\ & (\u_health_mon|Add122~5\ & VCC)) # (!\u_health_mon|Add118~6_combout\ & (!\u_health_mon|Add122~5\)))) # (!\u_health_mon|Add126~6_combout\ & 
-- ((\u_health_mon|Add118~6_combout\ & (!\u_health_mon|Add122~5\)) # (!\u_health_mon|Add118~6_combout\ & ((\u_health_mon|Add122~5\) # (GND)))))
-- \u_health_mon|Add122~7\ = CARRY((\u_health_mon|Add126~6_combout\ & (!\u_health_mon|Add118~6_combout\ & !\u_health_mon|Add122~5\)) # (!\u_health_mon|Add126~6_combout\ & ((!\u_health_mon|Add122~5\) # (!\u_health_mon|Add118~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add126~6_combout\,
	datab => \u_health_mon|Add118~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add122~5\,
	combout => \u_health_mon|Add122~6_combout\,
	cout => \u_health_mon|Add122~7\);

-- Location: IOIBUF_X81_Y52_N1
\module_fault_vector_pin[146]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(146),
	o => \module_fault_vector_pin[146]~input_o\);

-- Location: IOIBUF_X81_Y49_N1
\module_fault_vector_pin[144]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(144),
	o => \module_fault_vector_pin[144]~input_o\);

-- Location: IOIBUF_X81_Y47_N1
\module_fault_vector_pin[145]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(145),
	o => \module_fault_vector_pin[145]~input_o\);

-- Location: IOIBUF_X81_Y52_N8
\module_fault_vector_pin[147]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(147),
	o => \module_fault_vector_pin[147]~input_o\);

-- Location: LCCOMB_X80_Y52_N18
\u_health_mon|Add144~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add144~0_combout\ = (\module_fault_vector_pin[146]~input_o\ & (\module_fault_vector_pin[144]~input_o\ & (\module_fault_vector_pin[145]~input_o\ & \module_fault_vector_pin[147]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[146]~input_o\,
	datab => \module_fault_vector_pin[144]~input_o\,
	datac => \module_fault_vector_pin[145]~input_o\,
	datad => \module_fault_vector_pin[147]~input_o\,
	combout => \u_health_mon|Add144~0_combout\);

-- Location: IOIBUF_X81_Y50_N1
\module_fault_vector_pin[142]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(142),
	o => \module_fault_vector_pin[142]~input_o\);

-- Location: IOIBUF_X81_Y49_N15
\module_fault_vector_pin[141]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(141),
	o => \module_fault_vector_pin[141]~input_o\);

-- Location: IOIBUF_X81_Y49_N8
\module_fault_vector_pin[140]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(140),
	o => \module_fault_vector_pin[140]~input_o\);

-- Location: IOIBUF_X81_Y52_N15
\module_fault_vector_pin[143]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(143),
	o => \module_fault_vector_pin[143]~input_o\);

-- Location: LCCOMB_X80_Y52_N16
\u_health_mon|Add140~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add140~0_combout\ = (\module_fault_vector_pin[142]~input_o\ & (\module_fault_vector_pin[141]~input_o\ & (\module_fault_vector_pin[140]~input_o\ & \module_fault_vector_pin[143]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[142]~input_o\,
	datab => \module_fault_vector_pin[141]~input_o\,
	datac => \module_fault_vector_pin[140]~input_o\,
	datad => \module_fault_vector_pin[143]~input_o\,
	combout => \u_health_mon|Add140~0_combout\);

-- Location: LCCOMB_X80_Y52_N30
\u_health_mon|Add144~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add144~1_combout\ = (\module_fault_vector_pin[146]~input_o\ & ((\module_fault_vector_pin[144]~input_o\ & ((!\module_fault_vector_pin[147]~input_o\) # (!\module_fault_vector_pin[145]~input_o\))) # (!\module_fault_vector_pin[144]~input_o\ & 
-- ((\module_fault_vector_pin[145]~input_o\) # (\module_fault_vector_pin[147]~input_o\))))) # (!\module_fault_vector_pin[146]~input_o\ & ((\module_fault_vector_pin[144]~input_o\ & ((\module_fault_vector_pin[145]~input_o\) # 
-- (\module_fault_vector_pin[147]~input_o\))) # (!\module_fault_vector_pin[144]~input_o\ & (\module_fault_vector_pin[145]~input_o\ & \module_fault_vector_pin[147]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[146]~input_o\,
	datab => \module_fault_vector_pin[144]~input_o\,
	datac => \module_fault_vector_pin[145]~input_o\,
	datad => \module_fault_vector_pin[147]~input_o\,
	combout => \u_health_mon|Add144~1_combout\);

-- Location: LCCOMB_X80_Y52_N28
\u_health_mon|Add140~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add140~1_combout\ = (\module_fault_vector_pin[142]~input_o\ & ((\module_fault_vector_pin[141]~input_o\ & ((!\module_fault_vector_pin[143]~input_o\) # (!\module_fault_vector_pin[140]~input_o\))) # (!\module_fault_vector_pin[141]~input_o\ & 
-- ((\module_fault_vector_pin[140]~input_o\) # (\module_fault_vector_pin[143]~input_o\))))) # (!\module_fault_vector_pin[142]~input_o\ & ((\module_fault_vector_pin[141]~input_o\ & ((\module_fault_vector_pin[140]~input_o\) # 
-- (\module_fault_vector_pin[143]~input_o\))) # (!\module_fault_vector_pin[141]~input_o\ & (\module_fault_vector_pin[140]~input_o\ & \module_fault_vector_pin[143]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[142]~input_o\,
	datab => \module_fault_vector_pin[141]~input_o\,
	datac => \module_fault_vector_pin[140]~input_o\,
	datad => \module_fault_vector_pin[143]~input_o\,
	combout => \u_health_mon|Add140~1_combout\);

-- Location: LCCOMB_X80_Y52_N10
\u_health_mon|Add144~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add144~2_combout\ = \module_fault_vector_pin[146]~input_o\ $ (\module_fault_vector_pin[144]~input_o\ $ (\module_fault_vector_pin[145]~input_o\ $ (\module_fault_vector_pin[147]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[146]~input_o\,
	datab => \module_fault_vector_pin[144]~input_o\,
	datac => \module_fault_vector_pin[145]~input_o\,
	datad => \module_fault_vector_pin[147]~input_o\,
	combout => \u_health_mon|Add144~2_combout\);

-- Location: LCCOMB_X80_Y52_N8
\u_health_mon|Add140~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add140~2_combout\ = \module_fault_vector_pin[142]~input_o\ $ (\module_fault_vector_pin[141]~input_o\ $ (\module_fault_vector_pin[140]~input_o\ $ (\module_fault_vector_pin[143]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[142]~input_o\,
	datab => \module_fault_vector_pin[141]~input_o\,
	datac => \module_fault_vector_pin[140]~input_o\,
	datad => \module_fault_vector_pin[143]~input_o\,
	combout => \u_health_mon|Add140~2_combout\);

-- Location: LCCOMB_X80_Y52_N20
\u_health_mon|Add142~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add142~0_combout\ = (\u_health_mon|Add144~2_combout\ & (\u_health_mon|Add140~2_combout\ $ (VCC))) # (!\u_health_mon|Add144~2_combout\ & (\u_health_mon|Add140~2_combout\ & VCC))
-- \u_health_mon|Add142~1\ = CARRY((\u_health_mon|Add144~2_combout\ & \u_health_mon|Add140~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add144~2_combout\,
	datab => \u_health_mon|Add140~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add142~0_combout\,
	cout => \u_health_mon|Add142~1\);

-- Location: LCCOMB_X80_Y52_N22
\u_health_mon|Add142~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add142~2_combout\ = (\u_health_mon|Add144~1_combout\ & ((\u_health_mon|Add140~1_combout\ & (\u_health_mon|Add142~1\ & VCC)) # (!\u_health_mon|Add140~1_combout\ & (!\u_health_mon|Add142~1\)))) # (!\u_health_mon|Add144~1_combout\ & 
-- ((\u_health_mon|Add140~1_combout\ & (!\u_health_mon|Add142~1\)) # (!\u_health_mon|Add140~1_combout\ & ((\u_health_mon|Add142~1\) # (GND)))))
-- \u_health_mon|Add142~3\ = CARRY((\u_health_mon|Add144~1_combout\ & (!\u_health_mon|Add140~1_combout\ & !\u_health_mon|Add142~1\)) # (!\u_health_mon|Add144~1_combout\ & ((!\u_health_mon|Add142~1\) # (!\u_health_mon|Add140~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add144~1_combout\,
	datab => \u_health_mon|Add140~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add142~1\,
	combout => \u_health_mon|Add142~2_combout\,
	cout => \u_health_mon|Add142~3\);

-- Location: LCCOMB_X80_Y52_N24
\u_health_mon|Add142~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add142~4_combout\ = ((\u_health_mon|Add144~0_combout\ $ (\u_health_mon|Add140~0_combout\ $ (!\u_health_mon|Add142~3\)))) # (GND)
-- \u_health_mon|Add142~5\ = CARRY((\u_health_mon|Add144~0_combout\ & ((\u_health_mon|Add140~0_combout\) # (!\u_health_mon|Add142~3\))) # (!\u_health_mon|Add144~0_combout\ & (\u_health_mon|Add140~0_combout\ & !\u_health_mon|Add142~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add144~0_combout\,
	datab => \u_health_mon|Add140~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add142~3\,
	combout => \u_health_mon|Add142~4_combout\,
	cout => \u_health_mon|Add142~5\);

-- Location: LCCOMB_X80_Y52_N26
\u_health_mon|Add142~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add142~6_combout\ = \u_health_mon|Add142~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add142~5\,
	combout => \u_health_mon|Add142~6_combout\);

-- Location: IOIBUF_X81_Y54_N8
\module_fault_vector_pin[138]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(138),
	o => \module_fault_vector_pin[138]~input_o\);

-- Location: IOIBUF_X81_Y55_N8
\module_fault_vector_pin[136]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(136),
	o => \module_fault_vector_pin[136]~input_o\);

-- Location: IOIBUF_X81_Y53_N8
\module_fault_vector_pin[139]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(139),
	o => \module_fault_vector_pin[139]~input_o\);

-- Location: IOIBUF_X81_Y58_N1
\module_fault_vector_pin[137]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(137),
	o => \module_fault_vector_pin[137]~input_o\);

-- Location: LCCOMB_X80_Y54_N26
\u_health_mon|Add136~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add136~0_combout\ = (\module_fault_vector_pin[138]~input_o\ & (\module_fault_vector_pin[136]~input_o\ & (\module_fault_vector_pin[139]~input_o\ & \module_fault_vector_pin[137]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[138]~input_o\,
	datab => \module_fault_vector_pin[136]~input_o\,
	datac => \module_fault_vector_pin[139]~input_o\,
	datad => \module_fault_vector_pin[137]~input_o\,
	combout => \u_health_mon|Add136~0_combout\);

-- Location: IOIBUF_X81_Y50_N8
\module_fault_vector_pin[132]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(132),
	o => \module_fault_vector_pin[132]~input_o\);

-- Location: IOIBUF_X81_Y54_N1
\module_fault_vector_pin[133]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(133),
	o => \module_fault_vector_pin[133]~input_o\);

-- Location: IOIBUF_X81_Y53_N1
\module_fault_vector_pin[135]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(135),
	o => \module_fault_vector_pin[135]~input_o\);

-- Location: IOIBUF_X81_Y55_N1
\module_fault_vector_pin[134]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(134),
	o => \module_fault_vector_pin[134]~input_o\);

-- Location: LCCOMB_X80_Y54_N24
\u_health_mon|Add132~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add132~0_combout\ = (\module_fault_vector_pin[132]~input_o\ & (\module_fault_vector_pin[133]~input_o\ & (\module_fault_vector_pin[135]~input_o\ & \module_fault_vector_pin[134]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[132]~input_o\,
	datab => \module_fault_vector_pin[133]~input_o\,
	datac => \module_fault_vector_pin[135]~input_o\,
	datad => \module_fault_vector_pin[134]~input_o\,
	combout => \u_health_mon|Add132~0_combout\);

-- Location: LCCOMB_X80_Y54_N30
\u_health_mon|Add136~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add136~1_combout\ = (\module_fault_vector_pin[138]~input_o\ & ((\module_fault_vector_pin[136]~input_o\ & ((!\module_fault_vector_pin[137]~input_o\) # (!\module_fault_vector_pin[139]~input_o\))) # (!\module_fault_vector_pin[136]~input_o\ & 
-- ((\module_fault_vector_pin[139]~input_o\) # (\module_fault_vector_pin[137]~input_o\))))) # (!\module_fault_vector_pin[138]~input_o\ & ((\module_fault_vector_pin[136]~input_o\ & ((\module_fault_vector_pin[139]~input_o\) # 
-- (\module_fault_vector_pin[137]~input_o\))) # (!\module_fault_vector_pin[136]~input_o\ & (\module_fault_vector_pin[139]~input_o\ & \module_fault_vector_pin[137]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[138]~input_o\,
	datab => \module_fault_vector_pin[136]~input_o\,
	datac => \module_fault_vector_pin[139]~input_o\,
	datad => \module_fault_vector_pin[137]~input_o\,
	combout => \u_health_mon|Add136~1_combout\);

-- Location: LCCOMB_X80_Y54_N20
\u_health_mon|Add132~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add132~1_combout\ = (\module_fault_vector_pin[132]~input_o\ & ((\module_fault_vector_pin[133]~input_o\ & ((!\module_fault_vector_pin[134]~input_o\) # (!\module_fault_vector_pin[135]~input_o\))) # (!\module_fault_vector_pin[133]~input_o\ & 
-- ((\module_fault_vector_pin[135]~input_o\) # (\module_fault_vector_pin[134]~input_o\))))) # (!\module_fault_vector_pin[132]~input_o\ & ((\module_fault_vector_pin[133]~input_o\ & ((\module_fault_vector_pin[135]~input_o\) # 
-- (\module_fault_vector_pin[134]~input_o\))) # (!\module_fault_vector_pin[133]~input_o\ & (\module_fault_vector_pin[135]~input_o\ & \module_fault_vector_pin[134]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[132]~input_o\,
	datab => \module_fault_vector_pin[133]~input_o\,
	datac => \module_fault_vector_pin[135]~input_o\,
	datad => \module_fault_vector_pin[134]~input_o\,
	combout => \u_health_mon|Add132~1_combout\);

-- Location: LCCOMB_X80_Y54_N18
\u_health_mon|Add136~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add136~2_combout\ = \module_fault_vector_pin[138]~input_o\ $ (\module_fault_vector_pin[136]~input_o\ $ (\module_fault_vector_pin[139]~input_o\ $ (\module_fault_vector_pin[137]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[138]~input_o\,
	datab => \module_fault_vector_pin[136]~input_o\,
	datac => \module_fault_vector_pin[139]~input_o\,
	datad => \module_fault_vector_pin[137]~input_o\,
	combout => \u_health_mon|Add136~2_combout\);

-- Location: LCCOMB_X80_Y54_N16
\u_health_mon|Add132~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add132~2_combout\ = \module_fault_vector_pin[132]~input_o\ $ (\module_fault_vector_pin[133]~input_o\ $ (\module_fault_vector_pin[135]~input_o\ $ (\module_fault_vector_pin[134]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[132]~input_o\,
	datab => \module_fault_vector_pin[133]~input_o\,
	datac => \module_fault_vector_pin[135]~input_o\,
	datad => \module_fault_vector_pin[134]~input_o\,
	combout => \u_health_mon|Add132~2_combout\);

-- Location: LCCOMB_X80_Y54_N8
\u_health_mon|Add134~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add134~0_combout\ = (\u_health_mon|Add136~2_combout\ & (\u_health_mon|Add132~2_combout\ $ (VCC))) # (!\u_health_mon|Add136~2_combout\ & (\u_health_mon|Add132~2_combout\ & VCC))
-- \u_health_mon|Add134~1\ = CARRY((\u_health_mon|Add136~2_combout\ & \u_health_mon|Add132~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add136~2_combout\,
	datab => \u_health_mon|Add132~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add134~0_combout\,
	cout => \u_health_mon|Add134~1\);

-- Location: LCCOMB_X80_Y54_N10
\u_health_mon|Add134~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add134~2_combout\ = (\u_health_mon|Add136~1_combout\ & ((\u_health_mon|Add132~1_combout\ & (\u_health_mon|Add134~1\ & VCC)) # (!\u_health_mon|Add132~1_combout\ & (!\u_health_mon|Add134~1\)))) # (!\u_health_mon|Add136~1_combout\ & 
-- ((\u_health_mon|Add132~1_combout\ & (!\u_health_mon|Add134~1\)) # (!\u_health_mon|Add132~1_combout\ & ((\u_health_mon|Add134~1\) # (GND)))))
-- \u_health_mon|Add134~3\ = CARRY((\u_health_mon|Add136~1_combout\ & (!\u_health_mon|Add132~1_combout\ & !\u_health_mon|Add134~1\)) # (!\u_health_mon|Add136~1_combout\ & ((!\u_health_mon|Add134~1\) # (!\u_health_mon|Add132~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add136~1_combout\,
	datab => \u_health_mon|Add132~1_combout\,
	datad => VCC,
	cin => \u_health_mon|Add134~1\,
	combout => \u_health_mon|Add134~2_combout\,
	cout => \u_health_mon|Add134~3\);

-- Location: LCCOMB_X80_Y54_N12
\u_health_mon|Add134~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add134~4_combout\ = ((\u_health_mon|Add136~0_combout\ $ (\u_health_mon|Add132~0_combout\ $ (!\u_health_mon|Add134~3\)))) # (GND)
-- \u_health_mon|Add134~5\ = CARRY((\u_health_mon|Add136~0_combout\ & ((\u_health_mon|Add132~0_combout\) # (!\u_health_mon|Add134~3\))) # (!\u_health_mon|Add136~0_combout\ & (\u_health_mon|Add132~0_combout\ & !\u_health_mon|Add134~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add136~0_combout\,
	datab => \u_health_mon|Add132~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add134~3\,
	combout => \u_health_mon|Add134~4_combout\,
	cout => \u_health_mon|Add134~5\);

-- Location: LCCOMB_X80_Y54_N14
\u_health_mon|Add134~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add134~6_combout\ = \u_health_mon|Add134~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add134~5\,
	combout => \u_health_mon|Add134~6_combout\);

-- Location: LCCOMB_X79_Y52_N6
\u_health_mon|Add138~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add138~0_combout\ = (\u_health_mon|Add142~0_combout\ & (\u_health_mon|Add134~0_combout\ $ (VCC))) # (!\u_health_mon|Add142~0_combout\ & (\u_health_mon|Add134~0_combout\ & VCC))
-- \u_health_mon|Add138~1\ = CARRY((\u_health_mon|Add142~0_combout\ & \u_health_mon|Add134~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add142~0_combout\,
	datab => \u_health_mon|Add134~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add138~0_combout\,
	cout => \u_health_mon|Add138~1\);

-- Location: LCCOMB_X79_Y52_N8
\u_health_mon|Add138~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add138~2_combout\ = (\u_health_mon|Add142~2_combout\ & ((\u_health_mon|Add134~2_combout\ & (\u_health_mon|Add138~1\ & VCC)) # (!\u_health_mon|Add134~2_combout\ & (!\u_health_mon|Add138~1\)))) # (!\u_health_mon|Add142~2_combout\ & 
-- ((\u_health_mon|Add134~2_combout\ & (!\u_health_mon|Add138~1\)) # (!\u_health_mon|Add134~2_combout\ & ((\u_health_mon|Add138~1\) # (GND)))))
-- \u_health_mon|Add138~3\ = CARRY((\u_health_mon|Add142~2_combout\ & (!\u_health_mon|Add134~2_combout\ & !\u_health_mon|Add138~1\)) # (!\u_health_mon|Add142~2_combout\ & ((!\u_health_mon|Add138~1\) # (!\u_health_mon|Add134~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add142~2_combout\,
	datab => \u_health_mon|Add134~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add138~1\,
	combout => \u_health_mon|Add138~2_combout\,
	cout => \u_health_mon|Add138~3\);

-- Location: LCCOMB_X79_Y52_N10
\u_health_mon|Add138~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add138~4_combout\ = ((\u_health_mon|Add134~4_combout\ $ (\u_health_mon|Add142~4_combout\ $ (!\u_health_mon|Add138~3\)))) # (GND)
-- \u_health_mon|Add138~5\ = CARRY((\u_health_mon|Add134~4_combout\ & ((\u_health_mon|Add142~4_combout\) # (!\u_health_mon|Add138~3\))) # (!\u_health_mon|Add134~4_combout\ & (\u_health_mon|Add142~4_combout\ & !\u_health_mon|Add138~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add134~4_combout\,
	datab => \u_health_mon|Add142~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add138~3\,
	combout => \u_health_mon|Add138~4_combout\,
	cout => \u_health_mon|Add138~5\);

-- Location: LCCOMB_X79_Y52_N12
\u_health_mon|Add138~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add138~6_combout\ = (\u_health_mon|Add142~6_combout\ & ((\u_health_mon|Add134~6_combout\ & (\u_health_mon|Add138~5\ & VCC)) # (!\u_health_mon|Add134~6_combout\ & (!\u_health_mon|Add138~5\)))) # (!\u_health_mon|Add142~6_combout\ & 
-- ((\u_health_mon|Add134~6_combout\ & (!\u_health_mon|Add138~5\)) # (!\u_health_mon|Add134~6_combout\ & ((\u_health_mon|Add138~5\) # (GND)))))
-- \u_health_mon|Add138~7\ = CARRY((\u_health_mon|Add142~6_combout\ & (!\u_health_mon|Add134~6_combout\ & !\u_health_mon|Add138~5\)) # (!\u_health_mon|Add142~6_combout\ & ((!\u_health_mon|Add138~5\) # (!\u_health_mon|Add134~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add142~6_combout\,
	datab => \u_health_mon|Add134~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add138~5\,
	combout => \u_health_mon|Add138~6_combout\,
	cout => \u_health_mon|Add138~7\);

-- Location: LCCOMB_X76_Y52_N18
\u_health_mon|Add130~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add130~0_combout\ = (\u_health_mon|Add138~0_combout\ & (\u_health_mon|Add122~0_combout\ $ (VCC))) # (!\u_health_mon|Add138~0_combout\ & (\u_health_mon|Add122~0_combout\ & VCC))
-- \u_health_mon|Add130~1\ = CARRY((\u_health_mon|Add138~0_combout\ & \u_health_mon|Add122~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add138~0_combout\,
	datab => \u_health_mon|Add122~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add130~0_combout\,
	cout => \u_health_mon|Add130~1\);

-- Location: LCCOMB_X76_Y52_N20
\u_health_mon|Add130~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add130~2_combout\ = (\u_health_mon|Add122~2_combout\ & ((\u_health_mon|Add138~2_combout\ & (\u_health_mon|Add130~1\ & VCC)) # (!\u_health_mon|Add138~2_combout\ & (!\u_health_mon|Add130~1\)))) # (!\u_health_mon|Add122~2_combout\ & 
-- ((\u_health_mon|Add138~2_combout\ & (!\u_health_mon|Add130~1\)) # (!\u_health_mon|Add138~2_combout\ & ((\u_health_mon|Add130~1\) # (GND)))))
-- \u_health_mon|Add130~3\ = CARRY((\u_health_mon|Add122~2_combout\ & (!\u_health_mon|Add138~2_combout\ & !\u_health_mon|Add130~1\)) # (!\u_health_mon|Add122~2_combout\ & ((!\u_health_mon|Add130~1\) # (!\u_health_mon|Add138~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add122~2_combout\,
	datab => \u_health_mon|Add138~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add130~1\,
	combout => \u_health_mon|Add130~2_combout\,
	cout => \u_health_mon|Add130~3\);

-- Location: LCCOMB_X76_Y52_N22
\u_health_mon|Add130~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add130~4_combout\ = ((\u_health_mon|Add138~4_combout\ $ (\u_health_mon|Add122~4_combout\ $ (!\u_health_mon|Add130~3\)))) # (GND)
-- \u_health_mon|Add130~5\ = CARRY((\u_health_mon|Add138~4_combout\ & ((\u_health_mon|Add122~4_combout\) # (!\u_health_mon|Add130~3\))) # (!\u_health_mon|Add138~4_combout\ & (\u_health_mon|Add122~4_combout\ & !\u_health_mon|Add130~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add138~4_combout\,
	datab => \u_health_mon|Add122~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add130~3\,
	combout => \u_health_mon|Add130~4_combout\,
	cout => \u_health_mon|Add130~5\);

-- Location: LCCOMB_X76_Y52_N24
\u_health_mon|Add130~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add130~6_combout\ = (\u_health_mon|Add122~6_combout\ & ((\u_health_mon|Add138~6_combout\ & (\u_health_mon|Add130~5\ & VCC)) # (!\u_health_mon|Add138~6_combout\ & (!\u_health_mon|Add130~5\)))) # (!\u_health_mon|Add122~6_combout\ & 
-- ((\u_health_mon|Add138~6_combout\ & (!\u_health_mon|Add130~5\)) # (!\u_health_mon|Add138~6_combout\ & ((\u_health_mon|Add130~5\) # (GND)))))
-- \u_health_mon|Add130~7\ = CARRY((\u_health_mon|Add122~6_combout\ & (!\u_health_mon|Add138~6_combout\ & !\u_health_mon|Add130~5\)) # (!\u_health_mon|Add122~6_combout\ & ((!\u_health_mon|Add130~5\) # (!\u_health_mon|Add138~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add122~6_combout\,
	datab => \u_health_mon|Add138~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add130~5\,
	combout => \u_health_mon|Add130~6_combout\,
	cout => \u_health_mon|Add130~7\);

-- Location: LCCOMB_X69_Y52_N14
\u_health_mon|Add114~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add114~0_combout\ = (\u_health_mon|Add130~0_combout\ & (\u_health_mon|Add98~0_combout\ $ (VCC))) # (!\u_health_mon|Add130~0_combout\ & (\u_health_mon|Add98~0_combout\ & VCC))
-- \u_health_mon|Add114~1\ = CARRY((\u_health_mon|Add130~0_combout\ & \u_health_mon|Add98~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add130~0_combout\,
	datab => \u_health_mon|Add98~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add114~0_combout\,
	cout => \u_health_mon|Add114~1\);

-- Location: LCCOMB_X69_Y52_N16
\u_health_mon|Add114~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add114~2_combout\ = (\u_health_mon|Add130~2_combout\ & ((\u_health_mon|Add98~2_combout\ & (\u_health_mon|Add114~1\ & VCC)) # (!\u_health_mon|Add98~2_combout\ & (!\u_health_mon|Add114~1\)))) # (!\u_health_mon|Add130~2_combout\ & 
-- ((\u_health_mon|Add98~2_combout\ & (!\u_health_mon|Add114~1\)) # (!\u_health_mon|Add98~2_combout\ & ((\u_health_mon|Add114~1\) # (GND)))))
-- \u_health_mon|Add114~3\ = CARRY((\u_health_mon|Add130~2_combout\ & (!\u_health_mon|Add98~2_combout\ & !\u_health_mon|Add114~1\)) # (!\u_health_mon|Add130~2_combout\ & ((!\u_health_mon|Add114~1\) # (!\u_health_mon|Add98~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add130~2_combout\,
	datab => \u_health_mon|Add98~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add114~1\,
	combout => \u_health_mon|Add114~2_combout\,
	cout => \u_health_mon|Add114~3\);

-- Location: LCCOMB_X69_Y52_N18
\u_health_mon|Add114~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add114~4_combout\ = ((\u_health_mon|Add130~4_combout\ $ (\u_health_mon|Add98~4_combout\ $ (!\u_health_mon|Add114~3\)))) # (GND)
-- \u_health_mon|Add114~5\ = CARRY((\u_health_mon|Add130~4_combout\ & ((\u_health_mon|Add98~4_combout\) # (!\u_health_mon|Add114~3\))) # (!\u_health_mon|Add130~4_combout\ & (\u_health_mon|Add98~4_combout\ & !\u_health_mon|Add114~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add130~4_combout\,
	datab => \u_health_mon|Add98~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add114~3\,
	combout => \u_health_mon|Add114~4_combout\,
	cout => \u_health_mon|Add114~5\);

-- Location: LCCOMB_X69_Y52_N20
\u_health_mon|Add114~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add114~6_combout\ = (\u_health_mon|Add98~6_combout\ & ((\u_health_mon|Add130~6_combout\ & (\u_health_mon|Add114~5\ & VCC)) # (!\u_health_mon|Add130~6_combout\ & (!\u_health_mon|Add114~5\)))) # (!\u_health_mon|Add98~6_combout\ & 
-- ((\u_health_mon|Add130~6_combout\ & (!\u_health_mon|Add114~5\)) # (!\u_health_mon|Add130~6_combout\ & ((\u_health_mon|Add114~5\) # (GND)))))
-- \u_health_mon|Add114~7\ = CARRY((\u_health_mon|Add98~6_combout\ & (!\u_health_mon|Add130~6_combout\ & !\u_health_mon|Add114~5\)) # (!\u_health_mon|Add98~6_combout\ & ((!\u_health_mon|Add114~5\) # (!\u_health_mon|Add130~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add98~6_combout\,
	datab => \u_health_mon|Add130~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add114~5\,
	combout => \u_health_mon|Add114~6_combout\,
	cout => \u_health_mon|Add114~7\);

-- Location: LCCOMB_X70_Y39_N0
\u_health_mon|Add146~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add146~0_combout\ = (\u_health_mon|Add114~0_combout\ & (\u_health_mon|Add178~0_combout\ $ (VCC))) # (!\u_health_mon|Add114~0_combout\ & (\u_health_mon|Add178~0_combout\ & VCC))
-- \u_health_mon|Add146~1\ = CARRY((\u_health_mon|Add114~0_combout\ & \u_health_mon|Add178~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add114~0_combout\,
	datab => \u_health_mon|Add178~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add146~0_combout\,
	cout => \u_health_mon|Add146~1\);

-- Location: LCCOMB_X70_Y39_N2
\u_health_mon|Add146~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add146~2_combout\ = (\u_health_mon|Add114~2_combout\ & ((\u_health_mon|Add178~2_combout\ & (\u_health_mon|Add146~1\ & VCC)) # (!\u_health_mon|Add178~2_combout\ & (!\u_health_mon|Add146~1\)))) # (!\u_health_mon|Add114~2_combout\ & 
-- ((\u_health_mon|Add178~2_combout\ & (!\u_health_mon|Add146~1\)) # (!\u_health_mon|Add178~2_combout\ & ((\u_health_mon|Add146~1\) # (GND)))))
-- \u_health_mon|Add146~3\ = CARRY((\u_health_mon|Add114~2_combout\ & (!\u_health_mon|Add178~2_combout\ & !\u_health_mon|Add146~1\)) # (!\u_health_mon|Add114~2_combout\ & ((!\u_health_mon|Add146~1\) # (!\u_health_mon|Add178~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add114~2_combout\,
	datab => \u_health_mon|Add178~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add146~1\,
	combout => \u_health_mon|Add146~2_combout\,
	cout => \u_health_mon|Add146~3\);

-- Location: LCCOMB_X70_Y39_N4
\u_health_mon|Add146~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add146~4_combout\ = ((\u_health_mon|Add114~4_combout\ $ (\u_health_mon|Add178~4_combout\ $ (!\u_health_mon|Add146~3\)))) # (GND)
-- \u_health_mon|Add146~5\ = CARRY((\u_health_mon|Add114~4_combout\ & ((\u_health_mon|Add178~4_combout\) # (!\u_health_mon|Add146~3\))) # (!\u_health_mon|Add114~4_combout\ & (\u_health_mon|Add178~4_combout\ & !\u_health_mon|Add146~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add114~4_combout\,
	datab => \u_health_mon|Add178~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add146~3\,
	combout => \u_health_mon|Add146~4_combout\,
	cout => \u_health_mon|Add146~5\);

-- Location: LCCOMB_X70_Y39_N6
\u_health_mon|Add146~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add146~6_combout\ = (\u_health_mon|Add178~6_combout\ & ((\u_health_mon|Add114~6_combout\ & (\u_health_mon|Add146~5\ & VCC)) # (!\u_health_mon|Add114~6_combout\ & (!\u_health_mon|Add146~5\)))) # (!\u_health_mon|Add178~6_combout\ & 
-- ((\u_health_mon|Add114~6_combout\ & (!\u_health_mon|Add146~5\)) # (!\u_health_mon|Add114~6_combout\ & ((\u_health_mon|Add146~5\) # (GND)))))
-- \u_health_mon|Add146~7\ = CARRY((\u_health_mon|Add178~6_combout\ & (!\u_health_mon|Add114~6_combout\ & !\u_health_mon|Add146~5\)) # (!\u_health_mon|Add178~6_combout\ & ((!\u_health_mon|Add146~5\) # (!\u_health_mon|Add114~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add178~6_combout\,
	datab => \u_health_mon|Add114~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add146~5\,
	combout => \u_health_mon|Add146~6_combout\,
	cout => \u_health_mon|Add146~7\);

-- Location: LCCOMB_X48_Y39_N16
\u_health_mon|Add210~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add210~0_combout\ = (\u_health_mon|Add146~0_combout\ & (\u_health_mon|Add82~0_combout\ $ (VCC))) # (!\u_health_mon|Add146~0_combout\ & (\u_health_mon|Add82~0_combout\ & VCC))
-- \u_health_mon|Add210~1\ = CARRY((\u_health_mon|Add146~0_combout\ & \u_health_mon|Add82~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add146~0_combout\,
	datab => \u_health_mon|Add82~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add210~0_combout\,
	cout => \u_health_mon|Add210~1\);

-- Location: LCCOMB_X48_Y39_N18
\u_health_mon|Add210~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add210~2_combout\ = (\u_health_mon|Add146~2_combout\ & ((\u_health_mon|Add82~2_combout\ & (\u_health_mon|Add210~1\ & VCC)) # (!\u_health_mon|Add82~2_combout\ & (!\u_health_mon|Add210~1\)))) # (!\u_health_mon|Add146~2_combout\ & 
-- ((\u_health_mon|Add82~2_combout\ & (!\u_health_mon|Add210~1\)) # (!\u_health_mon|Add82~2_combout\ & ((\u_health_mon|Add210~1\) # (GND)))))
-- \u_health_mon|Add210~3\ = CARRY((\u_health_mon|Add146~2_combout\ & (!\u_health_mon|Add82~2_combout\ & !\u_health_mon|Add210~1\)) # (!\u_health_mon|Add146~2_combout\ & ((!\u_health_mon|Add210~1\) # (!\u_health_mon|Add82~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add146~2_combout\,
	datab => \u_health_mon|Add82~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add210~1\,
	combout => \u_health_mon|Add210~2_combout\,
	cout => \u_health_mon|Add210~3\);

-- Location: LCCOMB_X48_Y39_N20
\u_health_mon|Add210~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add210~4_combout\ = ((\u_health_mon|Add146~4_combout\ $ (\u_health_mon|Add82~4_combout\ $ (!\u_health_mon|Add210~3\)))) # (GND)
-- \u_health_mon|Add210~5\ = CARRY((\u_health_mon|Add146~4_combout\ & ((\u_health_mon|Add82~4_combout\) # (!\u_health_mon|Add210~3\))) # (!\u_health_mon|Add146~4_combout\ & (\u_health_mon|Add82~4_combout\ & !\u_health_mon|Add210~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add146~4_combout\,
	datab => \u_health_mon|Add82~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add210~3\,
	combout => \u_health_mon|Add210~4_combout\,
	cout => \u_health_mon|Add210~5\);

-- Location: LCCOMB_X48_Y39_N22
\u_health_mon|Add210~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add210~6_combout\ = (\u_health_mon|Add82~6_combout\ & ((\u_health_mon|Add146~6_combout\ & (\u_health_mon|Add210~5\ & VCC)) # (!\u_health_mon|Add146~6_combout\ & (!\u_health_mon|Add210~5\)))) # (!\u_health_mon|Add82~6_combout\ & 
-- ((\u_health_mon|Add146~6_combout\ & (!\u_health_mon|Add210~5\)) # (!\u_health_mon|Add146~6_combout\ & ((\u_health_mon|Add210~5\) # (GND)))))
-- \u_health_mon|Add210~7\ = CARRY((\u_health_mon|Add82~6_combout\ & (!\u_health_mon|Add146~6_combout\ & !\u_health_mon|Add210~5\)) # (!\u_health_mon|Add82~6_combout\ & ((!\u_health_mon|Add210~5\) # (!\u_health_mon|Add146~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add82~6_combout\,
	datab => \u_health_mon|Add146~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add210~5\,
	combout => \u_health_mon|Add210~6_combout\,
	cout => \u_health_mon|Add210~7\);

-- Location: LCCOMB_X43_Y35_N12
\u_health_mon|Add234~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add234~0_combout\ = (\u_health_mon|Add210~0_combout\ & (\u_health_mon|Add226~0_combout\ $ (VCC))) # (!\u_health_mon|Add210~0_combout\ & (\u_health_mon|Add226~0_combout\ & VCC))
-- \u_health_mon|Add234~1\ = CARRY((\u_health_mon|Add210~0_combout\ & \u_health_mon|Add226~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add210~0_combout\,
	datab => \u_health_mon|Add226~0_combout\,
	datad => VCC,
	combout => \u_health_mon|Add234~0_combout\,
	cout => \u_health_mon|Add234~1\);

-- Location: LCCOMB_X43_Y35_N14
\u_health_mon|Add234~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add234~2_combout\ = (\u_health_mon|Add210~2_combout\ & ((\u_health_mon|Add226~2_combout\ & (\u_health_mon|Add234~1\ & VCC)) # (!\u_health_mon|Add226~2_combout\ & (!\u_health_mon|Add234~1\)))) # (!\u_health_mon|Add210~2_combout\ & 
-- ((\u_health_mon|Add226~2_combout\ & (!\u_health_mon|Add234~1\)) # (!\u_health_mon|Add226~2_combout\ & ((\u_health_mon|Add234~1\) # (GND)))))
-- \u_health_mon|Add234~3\ = CARRY((\u_health_mon|Add210~2_combout\ & (!\u_health_mon|Add226~2_combout\ & !\u_health_mon|Add234~1\)) # (!\u_health_mon|Add210~2_combout\ & ((!\u_health_mon|Add234~1\) # (!\u_health_mon|Add226~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add210~2_combout\,
	datab => \u_health_mon|Add226~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add234~1\,
	combout => \u_health_mon|Add234~2_combout\,
	cout => \u_health_mon|Add234~3\);

-- Location: LCCOMB_X43_Y35_N16
\u_health_mon|Add234~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add234~4_combout\ = ((\u_health_mon|Add210~4_combout\ $ (\u_health_mon|Add226~4_combout\ $ (!\u_health_mon|Add234~3\)))) # (GND)
-- \u_health_mon|Add234~5\ = CARRY((\u_health_mon|Add210~4_combout\ & ((\u_health_mon|Add226~4_combout\) # (!\u_health_mon|Add234~3\))) # (!\u_health_mon|Add210~4_combout\ & (\u_health_mon|Add226~4_combout\ & !\u_health_mon|Add234~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add210~4_combout\,
	datab => \u_health_mon|Add226~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add234~3\,
	combout => \u_health_mon|Add234~4_combout\,
	cout => \u_health_mon|Add234~5\);

-- Location: LCCOMB_X43_Y35_N18
\u_health_mon|Add234~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add234~6_combout\ = (\u_health_mon|Add226~6_combout\ & ((\u_health_mon|Add210~6_combout\ & (\u_health_mon|Add234~5\ & VCC)) # (!\u_health_mon|Add210~6_combout\ & (!\u_health_mon|Add234~5\)))) # (!\u_health_mon|Add226~6_combout\ & 
-- ((\u_health_mon|Add210~6_combout\ & (!\u_health_mon|Add234~5\)) # (!\u_health_mon|Add210~6_combout\ & ((\u_health_mon|Add234~5\) # (GND)))))
-- \u_health_mon|Add234~7\ = CARRY((\u_health_mon|Add226~6_combout\ & (!\u_health_mon|Add210~6_combout\ & !\u_health_mon|Add234~5\)) # (!\u_health_mon|Add226~6_combout\ & ((!\u_health_mon|Add234~5\) # (!\u_health_mon|Add210~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add226~6_combout\,
	datab => \u_health_mon|Add210~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add234~5\,
	combout => \u_health_mon|Add234~6_combout\,
	cout => \u_health_mon|Add234~7\);

-- Location: IOIBUF_X8_Y0_N22
\module_fault_vector_pin[236]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(236),
	o => \module_fault_vector_pin[236]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\module_fault_vector_pin[237]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(237),
	o => \module_fault_vector_pin[237]~input_o\);

-- Location: LCCOMB_X15_Y3_N8
\u_health_mon|Add235~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add235~0_combout\ = (\module_fault_vector_pin[236]~input_o\ & \module_fault_vector_pin[237]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[236]~input_o\,
	datad => \module_fault_vector_pin[237]~input_o\,
	combout => \u_health_mon|Add235~0_combout\);

-- Location: LCCOMB_X15_Y3_N10
\u_health_mon|Add235~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add235~1_combout\ = \module_fault_vector_pin[236]~input_o\ $ (\module_fault_vector_pin[237]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[236]~input_o\,
	datad => \module_fault_vector_pin[237]~input_o\,
	combout => \u_health_mon|Add235~1_combout\);

-- Location: IOIBUF_X15_Y0_N1
\module_fault_vector_pin[238]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(238),
	o => \module_fault_vector_pin[238]~input_o\);

-- Location: LCCOMB_X15_Y3_N14
\u_health_mon|Add236~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add236~1_cout\ = CARRY(\module_fault_vector_pin[238]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \module_fault_vector_pin[238]~input_o\,
	datad => VCC,
	cout => \u_health_mon|Add236~1_cout\);

-- Location: LCCOMB_X15_Y3_N16
\u_health_mon|Add236~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add236~2_combout\ = (\u_health_mon|Add235~1_combout\ & ((\u_health_mon|Add234~0_combout\ & (\u_health_mon|Add236~1_cout\ & VCC)) # (!\u_health_mon|Add234~0_combout\ & (!\u_health_mon|Add236~1_cout\)))) # (!\u_health_mon|Add235~1_combout\ & 
-- ((\u_health_mon|Add234~0_combout\ & (!\u_health_mon|Add236~1_cout\)) # (!\u_health_mon|Add234~0_combout\ & ((\u_health_mon|Add236~1_cout\) # (GND)))))
-- \u_health_mon|Add236~3\ = CARRY((\u_health_mon|Add235~1_combout\ & (!\u_health_mon|Add234~0_combout\ & !\u_health_mon|Add236~1_cout\)) # (!\u_health_mon|Add235~1_combout\ & ((!\u_health_mon|Add236~1_cout\) # (!\u_health_mon|Add234~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add235~1_combout\,
	datab => \u_health_mon|Add234~0_combout\,
	datad => VCC,
	cin => \u_health_mon|Add236~1_cout\,
	combout => \u_health_mon|Add236~2_combout\,
	cout => \u_health_mon|Add236~3\);

-- Location: LCCOMB_X15_Y3_N18
\u_health_mon|Add236~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add236~4_combout\ = ((\u_health_mon|Add235~0_combout\ $ (\u_health_mon|Add234~2_combout\ $ (!\u_health_mon|Add236~3\)))) # (GND)
-- \u_health_mon|Add236~5\ = CARRY((\u_health_mon|Add235~0_combout\ & ((\u_health_mon|Add234~2_combout\) # (!\u_health_mon|Add236~3\))) # (!\u_health_mon|Add235~0_combout\ & (\u_health_mon|Add234~2_combout\ & !\u_health_mon|Add236~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add235~0_combout\,
	datab => \u_health_mon|Add234~2_combout\,
	datad => VCC,
	cin => \u_health_mon|Add236~3\,
	combout => \u_health_mon|Add236~4_combout\,
	cout => \u_health_mon|Add236~5\);

-- Location: LCCOMB_X15_Y3_N20
\u_health_mon|Add236~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add236~6_combout\ = (\u_health_mon|Add234~4_combout\ & (!\u_health_mon|Add236~5\)) # (!\u_health_mon|Add234~4_combout\ & ((\u_health_mon|Add236~5\) # (GND)))
-- \u_health_mon|Add236~7\ = CARRY((!\u_health_mon|Add236~5\) # (!\u_health_mon|Add234~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_health_mon|Add234~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add236~5\,
	combout => \u_health_mon|Add236~6_combout\,
	cout => \u_health_mon|Add236~7\);

-- Location: LCCOMB_X15_Y3_N22
\u_health_mon|Add236~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add236~8_combout\ = (\u_health_mon|Add234~6_combout\ & (\u_health_mon|Add236~7\ $ (GND))) # (!\u_health_mon|Add234~6_combout\ & (!\u_health_mon|Add236~7\ & VCC))
-- \u_health_mon|Add236~9\ = CARRY((\u_health_mon|Add234~6_combout\ & !\u_health_mon|Add236~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add234~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add236~7\,
	combout => \u_health_mon|Add236~8_combout\,
	cout => \u_health_mon|Add236~9\);

-- Location: LCCOMB_X11_Y3_N4
\u_health_mon|Add238~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add238~0_combout\ = \u_health_mon|Add236~2_combout\ $ (VCC)
-- \u_health_mon|Add238~1\ = CARRY(\u_health_mon|Add236~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add236~2_combout\,
	datad => VCC,
	combout => \u_health_mon|Add238~0_combout\,
	cout => \u_health_mon|Add238~1\);

-- Location: LCCOMB_X11_Y3_N6
\u_health_mon|Add238~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add238~2_combout\ = (\u_health_mon|Add236~4_combout\ & (!\u_health_mon|Add238~1\)) # (!\u_health_mon|Add236~4_combout\ & ((\u_health_mon|Add238~1\) # (GND)))
-- \u_health_mon|Add238~3\ = CARRY((!\u_health_mon|Add238~1\) # (!\u_health_mon|Add236~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_health_mon|Add236~4_combout\,
	datad => VCC,
	cin => \u_health_mon|Add238~1\,
	combout => \u_health_mon|Add238~2_combout\,
	cout => \u_health_mon|Add238~3\);

-- Location: LCCOMB_X11_Y3_N8
\u_health_mon|Add238~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add238~4_combout\ = (\u_health_mon|Add236~6_combout\ & (\u_health_mon|Add238~3\ $ (GND))) # (!\u_health_mon|Add236~6_combout\ & (!\u_health_mon|Add238~3\ & VCC))
-- \u_health_mon|Add238~5\ = CARRY((\u_health_mon|Add236~6_combout\ & !\u_health_mon|Add238~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_health_mon|Add236~6_combout\,
	datad => VCC,
	cin => \u_health_mon|Add238~3\,
	combout => \u_health_mon|Add238~4_combout\,
	cout => \u_health_mon|Add238~5\);

-- Location: LCCOMB_X11_Y3_N10
\u_health_mon|Add238~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add238~6_combout\ = (\u_health_mon|Add236~8_combout\ & (!\u_health_mon|Add238~5\)) # (!\u_health_mon|Add236~8_combout\ & ((\u_health_mon|Add238~5\) # (GND)))
-- \u_health_mon|Add238~7\ = CARRY((!\u_health_mon|Add238~5\) # (!\u_health_mon|Add236~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add236~8_combout\,
	datad => VCC,
	cin => \u_health_mon|Add238~5\,
	combout => \u_health_mon|Add238~6_combout\,
	cout => \u_health_mon|Add238~7\);

-- Location: IOIBUF_X10_Y0_N1
\module_fault_vector_pin[239]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_module_fault_vector_pin(239),
	o => \module_fault_vector_pin[239]~input_o\);

-- Location: LCCOMB_X48_Y64_N10
\u_health_mon|Add218~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add218~8_combout\ = !\u_health_mon|Add218~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add218~7\,
	combout => \u_health_mon|Add218~8_combout\);

-- Location: LCCOMB_X43_Y35_N8
\u_health_mon|Add226~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add226~8_combout\ = (\u_health_mon|Add218~8_combout\ & (\u_health_mon|Add226~7\ $ (GND))) # (!\u_health_mon|Add218~8_combout\ & (!\u_health_mon|Add226~7\ & VCC))
-- \u_health_mon|Add226~9\ = CARRY((\u_health_mon|Add218~8_combout\ & !\u_health_mon|Add226~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_health_mon|Add218~8_combout\,
	datad => VCC,
	cin => \u_health_mon|Add226~7\,
	combout => \u_health_mon|Add226~8_combout\,
	cout => \u_health_mon|Add226~9\);

-- Location: LCCOMB_X43_Y35_N10
\u_health_mon|Add226~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add226~10_combout\ = \u_health_mon|Add226~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add226~9\,
	combout => \u_health_mon|Add226~10_combout\);

-- Location: LCCOMB_X26_Y66_N30
\u_health_mon|Add58~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add58~8_combout\ = !\u_health_mon|Add58~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add58~7\,
	combout => \u_health_mon|Add58~8_combout\);

-- Location: LCCOMB_X19_Y66_N28
\u_health_mon|Add74~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add74~8_combout\ = !\u_health_mon|Add74~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add74~7\,
	combout => \u_health_mon|Add74~8_combout\);

-- Location: LCCOMB_X26_Y66_N10
\u_health_mon|Add66~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add66~8_combout\ = ((\u_health_mon|Add58~8_combout\ $ (\u_health_mon|Add74~8_combout\ $ (!\u_health_mon|Add66~7\)))) # (GND)
-- \u_health_mon|Add66~9\ = CARRY((\u_health_mon|Add58~8_combout\ & ((\u_health_mon|Add74~8_combout\) # (!\u_health_mon|Add66~7\))) # (!\u_health_mon|Add58~8_combout\ & (\u_health_mon|Add74~8_combout\ & !\u_health_mon|Add66~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add58~8_combout\,
	datab => \u_health_mon|Add74~8_combout\,
	datad => VCC,
	cin => \u_health_mon|Add66~7\,
	combout => \u_health_mon|Add66~8_combout\,
	cout => \u_health_mon|Add66~9\);

-- Location: LCCOMB_X26_Y66_N12
\u_health_mon|Add66~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add66~10_combout\ = \u_health_mon|Add66~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add66~9\,
	combout => \u_health_mon|Add66~10_combout\);

-- Location: LCCOMB_X40_Y63_N24
\u_health_mon|Add26~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add26~8_combout\ = !\u_health_mon|Add26~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add26~7\,
	combout => \u_health_mon|Add26~8_combout\);

-- Location: LCCOMB_X49_Y39_N8
\u_health_mon|Add34~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add34~8_combout\ = (\u_health_mon|Add26~8_combout\ & (\u_health_mon|Add34~7\ $ (GND))) # (!\u_health_mon|Add26~8_combout\ & (!\u_health_mon|Add34~7\ & VCC))
-- \u_health_mon|Add34~9\ = CARRY((\u_health_mon|Add26~8_combout\ & !\u_health_mon|Add34~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add26~8_combout\,
	datad => VCC,
	cin => \u_health_mon|Add34~7\,
	combout => \u_health_mon|Add34~8_combout\,
	cout => \u_health_mon|Add34~9\);

-- Location: LCCOMB_X49_Y39_N10
\u_health_mon|Add34~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add34~10_combout\ = \u_health_mon|Add34~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add34~9\,
	combout => \u_health_mon|Add34~10_combout\);

-- Location: LCCOMB_X50_Y3_N30
\u_health_mon|Add10~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add10~10_combout\ = \u_health_mon|Add10~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add10~9\,
	combout => \u_health_mon|Add10~10_combout\);

-- Location: LCCOMB_X50_Y3_N8
\u_health_mon|Add18~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add18~8_combout\ = \u_health_mon|Add10~10_combout\ $ (!\u_health_mon|Add18~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add10~10_combout\,
	cin => \u_health_mon|Add18~7\,
	combout => \u_health_mon|Add18~8_combout\);

-- Location: LCCOMB_X49_Y3_N24
\u_health_mon|Add42~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add42~8_combout\ = (\u_health_mon|Add18~8_combout\ & (\u_health_mon|Add42~7\ $ (GND))) # (!\u_health_mon|Add18~8_combout\ & (!\u_health_mon|Add42~7\ & VCC))
-- \u_health_mon|Add42~9\ = CARRY((\u_health_mon|Add18~8_combout\ & !\u_health_mon|Add42~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_health_mon|Add18~8_combout\,
	datad => VCC,
	cin => \u_health_mon|Add42~7\,
	combout => \u_health_mon|Add42~8_combout\,
	cout => \u_health_mon|Add42~9\);

-- Location: LCCOMB_X49_Y3_N26
\u_health_mon|Add42~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add42~10_combout\ = \u_health_mon|Add42~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add42~9\,
	combout => \u_health_mon|Add42~10_combout\);

-- Location: LCCOMB_X49_Y39_N22
\u_health_mon|Add50~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add50~8_combout\ = ((\u_health_mon|Add42~8_combout\ $ (\u_health_mon|Add34~8_combout\ $ (!\u_health_mon|Add50~7\)))) # (GND)
-- \u_health_mon|Add50~9\ = CARRY((\u_health_mon|Add42~8_combout\ & ((\u_health_mon|Add34~8_combout\) # (!\u_health_mon|Add50~7\))) # (!\u_health_mon|Add42~8_combout\ & (\u_health_mon|Add34~8_combout\ & !\u_health_mon|Add50~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add42~8_combout\,
	datab => \u_health_mon|Add34~8_combout\,
	datad => VCC,
	cin => \u_health_mon|Add50~7\,
	combout => \u_health_mon|Add50~8_combout\,
	cout => \u_health_mon|Add50~9\);

-- Location: LCCOMB_X49_Y39_N24
\u_health_mon|Add50~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add50~10_combout\ = (\u_health_mon|Add34~10_combout\ & ((\u_health_mon|Add42~10_combout\ & (\u_health_mon|Add50~9\ & VCC)) # (!\u_health_mon|Add42~10_combout\ & (!\u_health_mon|Add50~9\)))) # (!\u_health_mon|Add34~10_combout\ & 
-- ((\u_health_mon|Add42~10_combout\ & (!\u_health_mon|Add50~9\)) # (!\u_health_mon|Add42~10_combout\ & ((\u_health_mon|Add50~9\) # (GND)))))
-- \u_health_mon|Add50~11\ = CARRY((\u_health_mon|Add34~10_combout\ & (!\u_health_mon|Add42~10_combout\ & !\u_health_mon|Add50~9\)) # (!\u_health_mon|Add34~10_combout\ & ((!\u_health_mon|Add50~9\) # (!\u_health_mon|Add42~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add34~10_combout\,
	datab => \u_health_mon|Add42~10_combout\,
	datad => VCC,
	cin => \u_health_mon|Add50~9\,
	combout => \u_health_mon|Add50~10_combout\,
	cout => \u_health_mon|Add50~11\);

-- Location: LCCOMB_X48_Y39_N8
\u_health_mon|Add82~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add82~8_combout\ = ((\u_health_mon|Add66~8_combout\ $ (\u_health_mon|Add50~8_combout\ $ (!\u_health_mon|Add82~7\)))) # (GND)
-- \u_health_mon|Add82~9\ = CARRY((\u_health_mon|Add66~8_combout\ & ((\u_health_mon|Add50~8_combout\) # (!\u_health_mon|Add82~7\))) # (!\u_health_mon|Add66~8_combout\ & (\u_health_mon|Add50~8_combout\ & !\u_health_mon|Add82~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add66~8_combout\,
	datab => \u_health_mon|Add50~8_combout\,
	datad => VCC,
	cin => \u_health_mon|Add82~7\,
	combout => \u_health_mon|Add82~8_combout\,
	cout => \u_health_mon|Add82~9\);

-- Location: LCCOMB_X48_Y39_N10
\u_health_mon|Add82~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add82~10_combout\ = (\u_health_mon|Add66~10_combout\ & ((\u_health_mon|Add50~10_combout\ & (\u_health_mon|Add82~9\ & VCC)) # (!\u_health_mon|Add50~10_combout\ & (!\u_health_mon|Add82~9\)))) # (!\u_health_mon|Add66~10_combout\ & 
-- ((\u_health_mon|Add50~10_combout\ & (!\u_health_mon|Add82~9\)) # (!\u_health_mon|Add50~10_combout\ & ((\u_health_mon|Add82~9\) # (GND)))))
-- \u_health_mon|Add82~11\ = CARRY((\u_health_mon|Add66~10_combout\ & (!\u_health_mon|Add50~10_combout\ & !\u_health_mon|Add82~9\)) # (!\u_health_mon|Add66~10_combout\ & ((!\u_health_mon|Add82~9\) # (!\u_health_mon|Add50~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add66~10_combout\,
	datab => \u_health_mon|Add50~10_combout\,
	datad => VCC,
	cin => \u_health_mon|Add82~9\,
	combout => \u_health_mon|Add82~10_combout\,
	cout => \u_health_mon|Add82~11\);

-- Location: LCCOMB_X62_Y63_N24
\u_health_mon|Add106~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add106~8_combout\ = !\u_health_mon|Add106~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add106~7\,
	combout => \u_health_mon|Add106~8_combout\);

-- Location: LCCOMB_X77_Y56_N28
\u_health_mon|Add90~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add90~8_combout\ = !\u_health_mon|Add90~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add90~7\,
	combout => \u_health_mon|Add90~8_combout\);

-- Location: LCCOMB_X69_Y52_N8
\u_health_mon|Add98~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add98~8_combout\ = ((\u_health_mon|Add106~8_combout\ $ (\u_health_mon|Add90~8_combout\ $ (!\u_health_mon|Add98~7\)))) # (GND)
-- \u_health_mon|Add98~9\ = CARRY((\u_health_mon|Add106~8_combout\ & ((\u_health_mon|Add90~8_combout\) # (!\u_health_mon|Add98~7\))) # (!\u_health_mon|Add106~8_combout\ & (\u_health_mon|Add90~8_combout\ & !\u_health_mon|Add98~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add106~8_combout\,
	datab => \u_health_mon|Add90~8_combout\,
	datad => VCC,
	cin => \u_health_mon|Add98~7\,
	combout => \u_health_mon|Add98~8_combout\,
	cout => \u_health_mon|Add98~9\);

-- Location: LCCOMB_X69_Y52_N10
\u_health_mon|Add98~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add98~10_combout\ = \u_health_mon|Add98~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add98~9\,
	combout => \u_health_mon|Add98~10_combout\);

-- Location: LCCOMB_X76_Y52_N12
\u_health_mon|Add122~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add122~8_combout\ = !\u_health_mon|Add122~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add122~7\,
	combout => \u_health_mon|Add122~8_combout\);

-- Location: LCCOMB_X79_Y52_N14
\u_health_mon|Add138~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add138~8_combout\ = !\u_health_mon|Add138~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add138~7\,
	combout => \u_health_mon|Add138~8_combout\);

-- Location: LCCOMB_X76_Y52_N26
\u_health_mon|Add130~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add130~8_combout\ = ((\u_health_mon|Add122~8_combout\ $ (\u_health_mon|Add138~8_combout\ $ (!\u_health_mon|Add130~7\)))) # (GND)
-- \u_health_mon|Add130~9\ = CARRY((\u_health_mon|Add122~8_combout\ & ((\u_health_mon|Add138~8_combout\) # (!\u_health_mon|Add130~7\))) # (!\u_health_mon|Add122~8_combout\ & (\u_health_mon|Add138~8_combout\ & !\u_health_mon|Add130~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add122~8_combout\,
	datab => \u_health_mon|Add138~8_combout\,
	datad => VCC,
	cin => \u_health_mon|Add130~7\,
	combout => \u_health_mon|Add130~8_combout\,
	cout => \u_health_mon|Add130~9\);

-- Location: LCCOMB_X76_Y52_N28
\u_health_mon|Add130~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add130~10_combout\ = \u_health_mon|Add130~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add130~9\,
	combout => \u_health_mon|Add130~10_combout\);

-- Location: LCCOMB_X69_Y52_N22
\u_health_mon|Add114~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add114~8_combout\ = ((\u_health_mon|Add98~8_combout\ $ (\u_health_mon|Add130~8_combout\ $ (!\u_health_mon|Add114~7\)))) # (GND)
-- \u_health_mon|Add114~9\ = CARRY((\u_health_mon|Add98~8_combout\ & ((\u_health_mon|Add130~8_combout\) # (!\u_health_mon|Add114~7\))) # (!\u_health_mon|Add98~8_combout\ & (\u_health_mon|Add130~8_combout\ & !\u_health_mon|Add114~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add98~8_combout\,
	datab => \u_health_mon|Add130~8_combout\,
	datad => VCC,
	cin => \u_health_mon|Add114~7\,
	combout => \u_health_mon|Add114~8_combout\,
	cout => \u_health_mon|Add114~9\);

-- Location: LCCOMB_X69_Y52_N24
\u_health_mon|Add114~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add114~10_combout\ = (\u_health_mon|Add98~10_combout\ & ((\u_health_mon|Add130~10_combout\ & (\u_health_mon|Add114~9\ & VCC)) # (!\u_health_mon|Add130~10_combout\ & (!\u_health_mon|Add114~9\)))) # (!\u_health_mon|Add98~10_combout\ & 
-- ((\u_health_mon|Add130~10_combout\ & (!\u_health_mon|Add114~9\)) # (!\u_health_mon|Add130~10_combout\ & ((\u_health_mon|Add114~9\) # (GND)))))
-- \u_health_mon|Add114~11\ = CARRY((\u_health_mon|Add98~10_combout\ & (!\u_health_mon|Add130~10_combout\ & !\u_health_mon|Add114~9\)) # (!\u_health_mon|Add98~10_combout\ & ((!\u_health_mon|Add114~9\) # (!\u_health_mon|Add130~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add98~10_combout\,
	datab => \u_health_mon|Add130~10_combout\,
	datad => VCC,
	cin => \u_health_mon|Add114~9\,
	combout => \u_health_mon|Add114~10_combout\,
	cout => \u_health_mon|Add114~11\);

-- Location: LCCOMB_X77_Y14_N10
\u_health_mon|Add202~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add202~8_combout\ = !\u_health_mon|Add202~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add202~7\,
	combout => \u_health_mon|Add202~8_combout\);

-- Location: LCCOMB_X80_Y14_N18
\u_health_mon|Add186~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add186~8_combout\ = !\u_health_mon|Add186~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add186~7\,
	combout => \u_health_mon|Add186~8_combout\);

-- Location: LCCOMB_X76_Y14_N16
\u_health_mon|Add194~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add194~8_combout\ = ((\u_health_mon|Add202~8_combout\ $ (\u_health_mon|Add186~8_combout\ $ (!\u_health_mon|Add194~7\)))) # (GND)
-- \u_health_mon|Add194~9\ = CARRY((\u_health_mon|Add202~8_combout\ & ((\u_health_mon|Add186~8_combout\) # (!\u_health_mon|Add194~7\))) # (!\u_health_mon|Add202~8_combout\ & (\u_health_mon|Add186~8_combout\ & !\u_health_mon|Add194~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add202~8_combout\,
	datab => \u_health_mon|Add186~8_combout\,
	datad => VCC,
	cin => \u_health_mon|Add194~7\,
	combout => \u_health_mon|Add194~8_combout\,
	cout => \u_health_mon|Add194~9\);

-- Location: LCCOMB_X76_Y14_N18
\u_health_mon|Add194~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add194~10_combout\ = \u_health_mon|Add194~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add194~9\,
	combout => \u_health_mon|Add194~10_combout\);

-- Location: LCCOMB_X77_Y43_N18
\u_health_mon|Add154~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add154~8_combout\ = !\u_health_mon|Add154~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add154~7\,
	combout => \u_health_mon|Add154~8_combout\);

-- Location: LCCOMB_X77_Y43_N8
\u_health_mon|Add170~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add170~8_combout\ = !\u_health_mon|Add170~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add170~7\,
	combout => \u_health_mon|Add170~8_combout\);

-- Location: LCCOMB_X77_Y43_N28
\u_health_mon|Add162~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add162~8_combout\ = ((\u_health_mon|Add154~8_combout\ $ (\u_health_mon|Add170~8_combout\ $ (!\u_health_mon|Add162~7\)))) # (GND)
-- \u_health_mon|Add162~9\ = CARRY((\u_health_mon|Add154~8_combout\ & ((\u_health_mon|Add170~8_combout\) # (!\u_health_mon|Add162~7\))) # (!\u_health_mon|Add154~8_combout\ & (\u_health_mon|Add170~8_combout\ & !\u_health_mon|Add162~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add154~8_combout\,
	datab => \u_health_mon|Add170~8_combout\,
	datad => VCC,
	cin => \u_health_mon|Add162~7\,
	combout => \u_health_mon|Add162~8_combout\,
	cout => \u_health_mon|Add162~9\);

-- Location: LCCOMB_X77_Y43_N30
\u_health_mon|Add162~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add162~10_combout\ = \u_health_mon|Add162~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add162~9\,
	combout => \u_health_mon|Add162~10_combout\);

-- Location: LCCOMB_X71_Y39_N22
\u_health_mon|Add178~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add178~8_combout\ = ((\u_health_mon|Add162~8_combout\ $ (\u_health_mon|Add194~8_combout\ $ (!\u_health_mon|Add178~7\)))) # (GND)
-- \u_health_mon|Add178~9\ = CARRY((\u_health_mon|Add162~8_combout\ & ((\u_health_mon|Add194~8_combout\) # (!\u_health_mon|Add178~7\))) # (!\u_health_mon|Add162~8_combout\ & (\u_health_mon|Add194~8_combout\ & !\u_health_mon|Add178~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add162~8_combout\,
	datab => \u_health_mon|Add194~8_combout\,
	datad => VCC,
	cin => \u_health_mon|Add178~7\,
	combout => \u_health_mon|Add178~8_combout\,
	cout => \u_health_mon|Add178~9\);

-- Location: LCCOMB_X71_Y39_N24
\u_health_mon|Add178~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add178~10_combout\ = (\u_health_mon|Add194~10_combout\ & ((\u_health_mon|Add162~10_combout\ & (\u_health_mon|Add178~9\ & VCC)) # (!\u_health_mon|Add162~10_combout\ & (!\u_health_mon|Add178~9\)))) # (!\u_health_mon|Add194~10_combout\ & 
-- ((\u_health_mon|Add162~10_combout\ & (!\u_health_mon|Add178~9\)) # (!\u_health_mon|Add162~10_combout\ & ((\u_health_mon|Add178~9\) # (GND)))))
-- \u_health_mon|Add178~11\ = CARRY((\u_health_mon|Add194~10_combout\ & (!\u_health_mon|Add162~10_combout\ & !\u_health_mon|Add178~9\)) # (!\u_health_mon|Add194~10_combout\ & ((!\u_health_mon|Add178~9\) # (!\u_health_mon|Add162~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add194~10_combout\,
	datab => \u_health_mon|Add162~10_combout\,
	datad => VCC,
	cin => \u_health_mon|Add178~9\,
	combout => \u_health_mon|Add178~10_combout\,
	cout => \u_health_mon|Add178~11\);

-- Location: LCCOMB_X70_Y39_N8
\u_health_mon|Add146~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add146~8_combout\ = ((\u_health_mon|Add114~8_combout\ $ (\u_health_mon|Add178~8_combout\ $ (!\u_health_mon|Add146~7\)))) # (GND)
-- \u_health_mon|Add146~9\ = CARRY((\u_health_mon|Add114~8_combout\ & ((\u_health_mon|Add178~8_combout\) # (!\u_health_mon|Add146~7\))) # (!\u_health_mon|Add114~8_combout\ & (\u_health_mon|Add178~8_combout\ & !\u_health_mon|Add146~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add114~8_combout\,
	datab => \u_health_mon|Add178~8_combout\,
	datad => VCC,
	cin => \u_health_mon|Add146~7\,
	combout => \u_health_mon|Add146~8_combout\,
	cout => \u_health_mon|Add146~9\);

-- Location: LCCOMB_X70_Y39_N10
\u_health_mon|Add146~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add146~10_combout\ = (\u_health_mon|Add114~10_combout\ & ((\u_health_mon|Add178~10_combout\ & (\u_health_mon|Add146~9\ & VCC)) # (!\u_health_mon|Add178~10_combout\ & (!\u_health_mon|Add146~9\)))) # (!\u_health_mon|Add114~10_combout\ & 
-- ((\u_health_mon|Add178~10_combout\ & (!\u_health_mon|Add146~9\)) # (!\u_health_mon|Add178~10_combout\ & ((\u_health_mon|Add146~9\) # (GND)))))
-- \u_health_mon|Add146~11\ = CARRY((\u_health_mon|Add114~10_combout\ & (!\u_health_mon|Add178~10_combout\ & !\u_health_mon|Add146~9\)) # (!\u_health_mon|Add114~10_combout\ & ((!\u_health_mon|Add146~9\) # (!\u_health_mon|Add178~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add114~10_combout\,
	datab => \u_health_mon|Add178~10_combout\,
	datad => VCC,
	cin => \u_health_mon|Add146~9\,
	combout => \u_health_mon|Add146~10_combout\,
	cout => \u_health_mon|Add146~11\);

-- Location: LCCOMB_X48_Y39_N24
\u_health_mon|Add210~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add210~8_combout\ = ((\u_health_mon|Add146~8_combout\ $ (\u_health_mon|Add82~8_combout\ $ (!\u_health_mon|Add210~7\)))) # (GND)
-- \u_health_mon|Add210~9\ = CARRY((\u_health_mon|Add146~8_combout\ & ((\u_health_mon|Add82~8_combout\) # (!\u_health_mon|Add210~7\))) # (!\u_health_mon|Add146~8_combout\ & (\u_health_mon|Add82~8_combout\ & !\u_health_mon|Add210~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add146~8_combout\,
	datab => \u_health_mon|Add82~8_combout\,
	datad => VCC,
	cin => \u_health_mon|Add210~7\,
	combout => \u_health_mon|Add210~8_combout\,
	cout => \u_health_mon|Add210~9\);

-- Location: LCCOMB_X48_Y39_N26
\u_health_mon|Add210~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add210~10_combout\ = (\u_health_mon|Add82~10_combout\ & ((\u_health_mon|Add146~10_combout\ & (\u_health_mon|Add210~9\ & VCC)) # (!\u_health_mon|Add146~10_combout\ & (!\u_health_mon|Add210~9\)))) # (!\u_health_mon|Add82~10_combout\ & 
-- ((\u_health_mon|Add146~10_combout\ & (!\u_health_mon|Add210~9\)) # (!\u_health_mon|Add146~10_combout\ & ((\u_health_mon|Add210~9\) # (GND)))))
-- \u_health_mon|Add210~11\ = CARRY((\u_health_mon|Add82~10_combout\ & (!\u_health_mon|Add146~10_combout\ & !\u_health_mon|Add210~9\)) # (!\u_health_mon|Add82~10_combout\ & ((!\u_health_mon|Add210~9\) # (!\u_health_mon|Add146~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add82~10_combout\,
	datab => \u_health_mon|Add146~10_combout\,
	datad => VCC,
	cin => \u_health_mon|Add210~9\,
	combout => \u_health_mon|Add210~10_combout\,
	cout => \u_health_mon|Add210~11\);

-- Location: LCCOMB_X43_Y35_N20
\u_health_mon|Add234~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add234~8_combout\ = ((\u_health_mon|Add226~8_combout\ $ (\u_health_mon|Add210~8_combout\ $ (!\u_health_mon|Add234~7\)))) # (GND)
-- \u_health_mon|Add234~9\ = CARRY((\u_health_mon|Add226~8_combout\ & ((\u_health_mon|Add210~8_combout\) # (!\u_health_mon|Add234~7\))) # (!\u_health_mon|Add226~8_combout\ & (\u_health_mon|Add210~8_combout\ & !\u_health_mon|Add234~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add226~8_combout\,
	datab => \u_health_mon|Add210~8_combout\,
	datad => VCC,
	cin => \u_health_mon|Add234~7\,
	combout => \u_health_mon|Add234~8_combout\,
	cout => \u_health_mon|Add234~9\);

-- Location: LCCOMB_X43_Y35_N22
\u_health_mon|Add234~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add234~10_combout\ = (\u_health_mon|Add226~10_combout\ & ((\u_health_mon|Add210~10_combout\ & (\u_health_mon|Add234~9\ & VCC)) # (!\u_health_mon|Add210~10_combout\ & (!\u_health_mon|Add234~9\)))) # (!\u_health_mon|Add226~10_combout\ & 
-- ((\u_health_mon|Add210~10_combout\ & (!\u_health_mon|Add234~9\)) # (!\u_health_mon|Add210~10_combout\ & ((\u_health_mon|Add234~9\) # (GND)))))
-- \u_health_mon|Add234~11\ = CARRY((\u_health_mon|Add226~10_combout\ & (!\u_health_mon|Add210~10_combout\ & !\u_health_mon|Add234~9\)) # (!\u_health_mon|Add226~10_combout\ & ((!\u_health_mon|Add234~9\) # (!\u_health_mon|Add210~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add226~10_combout\,
	datab => \u_health_mon|Add210~10_combout\,
	datad => VCC,
	cin => \u_health_mon|Add234~9\,
	combout => \u_health_mon|Add234~10_combout\,
	cout => \u_health_mon|Add234~11\);

-- Location: LCCOMB_X15_Y3_N24
\u_health_mon|Add236~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add236~10_combout\ = (\u_health_mon|Add234~8_combout\ & (!\u_health_mon|Add236~9\)) # (!\u_health_mon|Add234~8_combout\ & ((\u_health_mon|Add236~9\) # (GND)))
-- \u_health_mon|Add236~11\ = CARRY((!\u_health_mon|Add236~9\) # (!\u_health_mon|Add234~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_health_mon|Add234~8_combout\,
	datad => VCC,
	cin => \u_health_mon|Add236~9\,
	combout => \u_health_mon|Add236~10_combout\,
	cout => \u_health_mon|Add236~11\);

-- Location: LCCOMB_X15_Y3_N26
\u_health_mon|Add236~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add236~12_combout\ = (\u_health_mon|Add234~10_combout\ & (\u_health_mon|Add236~11\ $ (GND))) # (!\u_health_mon|Add234~10_combout\ & (!\u_health_mon|Add236~11\ & VCC))
-- \u_health_mon|Add236~13\ = CARRY((\u_health_mon|Add234~10_combout\ & !\u_health_mon|Add236~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add234~10_combout\,
	datad => VCC,
	cin => \u_health_mon|Add236~11\,
	combout => \u_health_mon|Add236~12_combout\,
	cout => \u_health_mon|Add236~13\);

-- Location: LCCOMB_X11_Y3_N12
\u_health_mon|Add238~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add238~8_combout\ = (\u_health_mon|Add236~10_combout\ & (\u_health_mon|Add238~7\ $ (GND))) # (!\u_health_mon|Add236~10_combout\ & (!\u_health_mon|Add238~7\ & VCC))
-- \u_health_mon|Add238~9\ = CARRY((\u_health_mon|Add236~10_combout\ & !\u_health_mon|Add238~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_health_mon|Add236~10_combout\,
	datad => VCC,
	cin => \u_health_mon|Add238~7\,
	combout => \u_health_mon|Add238~8_combout\,
	cout => \u_health_mon|Add238~9\);

-- Location: LCCOMB_X11_Y3_N14
\u_health_mon|Add238~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add238~10_combout\ = (\u_health_mon|Add236~12_combout\ & (!\u_health_mon|Add238~9\)) # (!\u_health_mon|Add236~12_combout\ & ((\u_health_mon|Add238~9\) # (GND)))
-- \u_health_mon|Add238~11\ = CARRY((!\u_health_mon|Add238~9\) # (!\u_health_mon|Add236~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add236~12_combout\,
	datad => VCC,
	cin => \u_health_mon|Add238~9\,
	combout => \u_health_mon|Add238~10_combout\,
	cout => \u_health_mon|Add238~11\);

-- Location: LCCOMB_X11_Y3_N26
\u_health_mon|LessThan0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|LessThan0~4_combout\ = (\module_fault_vector_pin[239]~input_o\ & ((\u_health_mon|Add238~6_combout\) # ((\u_health_mon|Add238~10_combout\) # (\u_health_mon|Add238~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add238~6_combout\,
	datab => \module_fault_vector_pin[239]~input_o\,
	datac => \u_health_mon|Add238~10_combout\,
	datad => \u_health_mon|Add238~8_combout\,
	combout => \u_health_mon|LessThan0~4_combout\);

-- Location: LCCOMB_X49_Y39_N26
\u_health_mon|Add50~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add50~12_combout\ = !\u_health_mon|Add50~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add50~11\,
	combout => \u_health_mon|Add50~12_combout\);

-- Location: LCCOMB_X48_Y39_N12
\u_health_mon|Add82~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add82~12_combout\ = (\u_health_mon|Add50~12_combout\ & (\u_health_mon|Add82~11\ $ (GND))) # (!\u_health_mon|Add50~12_combout\ & (!\u_health_mon|Add82~11\ & VCC))
-- \u_health_mon|Add82~13\ = CARRY((\u_health_mon|Add50~12_combout\ & !\u_health_mon|Add82~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_health_mon|Add50~12_combout\,
	datad => VCC,
	cin => \u_health_mon|Add82~11\,
	combout => \u_health_mon|Add82~12_combout\,
	cout => \u_health_mon|Add82~13\);

-- Location: LCCOMB_X69_Y52_N26
\u_health_mon|Add114~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add114~12_combout\ = !\u_health_mon|Add114~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add114~11\,
	combout => \u_health_mon|Add114~12_combout\);

-- Location: LCCOMB_X71_Y39_N26
\u_health_mon|Add178~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add178~12_combout\ = !\u_health_mon|Add178~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add178~11\,
	combout => \u_health_mon|Add178~12_combout\);

-- Location: LCCOMB_X70_Y39_N12
\u_health_mon|Add146~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add146~12_combout\ = ((\u_health_mon|Add114~12_combout\ $ (\u_health_mon|Add178~12_combout\ $ (!\u_health_mon|Add146~11\)))) # (GND)
-- \u_health_mon|Add146~13\ = CARRY((\u_health_mon|Add114~12_combout\ & ((\u_health_mon|Add178~12_combout\) # (!\u_health_mon|Add146~11\))) # (!\u_health_mon|Add114~12_combout\ & (\u_health_mon|Add178~12_combout\ & !\u_health_mon|Add146~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add114~12_combout\,
	datab => \u_health_mon|Add178~12_combout\,
	datad => VCC,
	cin => \u_health_mon|Add146~11\,
	combout => \u_health_mon|Add146~12_combout\,
	cout => \u_health_mon|Add146~13\);

-- Location: LCCOMB_X48_Y39_N28
\u_health_mon|Add210~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add210~12_combout\ = ((\u_health_mon|Add82~12_combout\ $ (\u_health_mon|Add146~12_combout\ $ (!\u_health_mon|Add210~11\)))) # (GND)
-- \u_health_mon|Add210~13\ = CARRY((\u_health_mon|Add82~12_combout\ & ((\u_health_mon|Add146~12_combout\) # (!\u_health_mon|Add210~11\))) # (!\u_health_mon|Add82~12_combout\ & (\u_health_mon|Add146~12_combout\ & !\u_health_mon|Add210~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add82~12_combout\,
	datab => \u_health_mon|Add146~12_combout\,
	datad => VCC,
	cin => \u_health_mon|Add210~11\,
	combout => \u_health_mon|Add210~12_combout\,
	cout => \u_health_mon|Add210~13\);

-- Location: LCCOMB_X43_Y35_N24
\u_health_mon|Add234~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add234~12_combout\ = (\u_health_mon|Add210~12_combout\ & (\u_health_mon|Add234~11\ $ (GND))) # (!\u_health_mon|Add210~12_combout\ & (!\u_health_mon|Add234~11\ & VCC))
-- \u_health_mon|Add234~13\ = CARRY((\u_health_mon|Add210~12_combout\ & !\u_health_mon|Add234~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add210~12_combout\,
	datad => VCC,
	cin => \u_health_mon|Add234~11\,
	combout => \u_health_mon|Add234~12_combout\,
	cout => \u_health_mon|Add234~13\);

-- Location: LCCOMB_X15_Y3_N28
\u_health_mon|Add236~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add236~14_combout\ = (\u_health_mon|Add234~12_combout\ & (!\u_health_mon|Add236~13\)) # (!\u_health_mon|Add234~12_combout\ & ((\u_health_mon|Add236~13\) # (GND)))
-- \u_health_mon|Add236~15\ = CARRY((!\u_health_mon|Add236~13\) # (!\u_health_mon|Add234~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_health_mon|Add234~12_combout\,
	datad => VCC,
	cin => \u_health_mon|Add236~13\,
	combout => \u_health_mon|Add236~14_combout\,
	cout => \u_health_mon|Add236~15\);

-- Location: LCCOMB_X11_Y3_N16
\u_health_mon|Add238~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add238~12_combout\ = (\u_health_mon|Add236~14_combout\ & (\u_health_mon|Add238~11\ $ (GND))) # (!\u_health_mon|Add236~14_combout\ & (!\u_health_mon|Add238~11\ & VCC))
-- \u_health_mon|Add238~13\ = CARRY((\u_health_mon|Add236~14_combout\ & !\u_health_mon|Add238~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_health_mon|Add236~14_combout\,
	datad => VCC,
	cin => \u_health_mon|Add238~11\,
	combout => \u_health_mon|Add238~12_combout\,
	cout => \u_health_mon|Add238~13\);

-- Location: LCCOMB_X48_Y39_N14
\u_health_mon|Add82~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add82~14_combout\ = \u_health_mon|Add82~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add82~13\,
	combout => \u_health_mon|Add82~14_combout\);

-- Location: LCCOMB_X70_Y39_N14
\u_health_mon|Add146~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add146~14_combout\ = \u_health_mon|Add146~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_health_mon|Add146~13\,
	combout => \u_health_mon|Add146~14_combout\);

-- Location: LCCOMB_X48_Y39_N30
\u_health_mon|Add210~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add210~14_combout\ = \u_health_mon|Add82~14_combout\ $ (\u_health_mon|Add210~13\ $ (\u_health_mon|Add146~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_health_mon|Add82~14_combout\,
	datad => \u_health_mon|Add146~14_combout\,
	cin => \u_health_mon|Add210~13\,
	combout => \u_health_mon|Add210~14_combout\);

-- Location: LCCOMB_X43_Y35_N26
\u_health_mon|Add234~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add234~14_combout\ = \u_health_mon|Add234~13\ $ (\u_health_mon|Add210~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_health_mon|Add210~14_combout\,
	cin => \u_health_mon|Add234~13\,
	combout => \u_health_mon|Add234~14_combout\);

-- Location: LCCOMB_X15_Y3_N30
\u_health_mon|Add236~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add236~16_combout\ = \u_health_mon|Add234~14_combout\ $ (!\u_health_mon|Add236~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add234~14_combout\,
	cin => \u_health_mon|Add236~15\,
	combout => \u_health_mon|Add236~16_combout\);

-- Location: LCCOMB_X11_Y3_N18
\u_health_mon|Add238~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|Add238~14_combout\ = \u_health_mon|Add236~16_combout\ $ (\u_health_mon|Add238~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add236~16_combout\,
	cin => \u_health_mon|Add238~13\,
	combout => \u_health_mon|Add238~14_combout\);

-- Location: LCCOMB_X11_Y3_N28
\u_health_mon|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|LessThan0~5_combout\ = (\module_fault_vector_pin[239]~input_o\ & ((\u_health_mon|Add238~12_combout\) # (\u_health_mon|Add238~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[239]~input_o\,
	datab => \u_health_mon|Add238~12_combout\,
	datad => \u_health_mon|Add238~14_combout\,
	combout => \u_health_mon|LessThan0~5_combout\);

-- Location: LCCOMB_X11_Y3_N20
\u_health_mon|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|LessThan0~1_combout\ = (\u_health_mon|Add236~12_combout\) # ((\u_health_mon|Add236~10_combout\) # ((\u_health_mon|Add236~16_combout\) # (\u_health_mon|Add236~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add236~12_combout\,
	datab => \u_health_mon|Add236~10_combout\,
	datac => \u_health_mon|Add236~16_combout\,
	datad => \u_health_mon|Add236~14_combout\,
	combout => \u_health_mon|LessThan0~1_combout\);

-- Location: LCCOMB_X11_Y3_N2
\u_health_mon|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|LessThan0~0_combout\ = (\u_health_mon|Add236~2_combout\ & (\u_health_mon|Add236~6_combout\ & \u_health_mon|Add236~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|Add236~2_combout\,
	datab => \u_health_mon|Add236~6_combout\,
	datad => \u_health_mon|Add236~4_combout\,
	combout => \u_health_mon|LessThan0~0_combout\);

-- Location: LCCOMB_X11_Y3_N30
\u_health_mon|LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|LessThan0~2_combout\ = (!\module_fault_vector_pin[239]~input_o\ & ((\u_health_mon|LessThan0~1_combout\) # ((\u_health_mon|Add236~8_combout\) # (\u_health_mon|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[239]~input_o\,
	datab => \u_health_mon|LessThan0~1_combout\,
	datac => \u_health_mon|Add236~8_combout\,
	datad => \u_health_mon|LessThan0~0_combout\,
	combout => \u_health_mon|LessThan0~2_combout\);

-- Location: LCCOMB_X11_Y3_N0
\u_health_mon|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|LessThan0~3_combout\ = (\module_fault_vector_pin[239]~input_o\ & (\u_health_mon|Add238~0_combout\ & (\u_health_mon|Add238~4_combout\ & \u_health_mon|Add238~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module_fault_vector_pin[239]~input_o\,
	datab => \u_health_mon|Add238~0_combout\,
	datac => \u_health_mon|Add238~4_combout\,
	datad => \u_health_mon|Add238~2_combout\,
	combout => \u_health_mon|LessThan0~3_combout\);

-- Location: LCCOMB_X11_Y3_N24
\u_health_mon|LessThan0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_health_mon|LessThan0~6_combout\ = (\u_health_mon|LessThan0~4_combout\) # ((\u_health_mon|LessThan0~5_combout\) # ((\u_health_mon|LessThan0~2_combout\) # (\u_health_mon|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_health_mon|LessThan0~4_combout\,
	datab => \u_health_mon|LessThan0~5_combout\,
	datac => \u_health_mon|LessThan0~2_combout\,
	datad => \u_health_mon|LessThan0~3_combout\,
	combout => \u_health_mon|LessThan0~6_combout\);

-- Location: FF_X11_Y3_N25
\u_health_mon|trip_unbalance\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_telemetry_pin~input_o\,
	d => \u_health_mon|LessThan0~6_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_health_mon|trip_unbalance~q\);

-- Location: FF_X18_Y3_N11
\u_sync_unbalance|cmp_gc_sync|sync0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sys_pin~inputclkctrl_outclk\,
	asdata => \u_health_mon|trip_unbalance~q\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sync_unbalance|cmp_gc_sync|sync0~q\);

-- Location: LCCOMB_X18_Y3_N0
\u_sync_unbalance|cmp_gc_sync|sync1~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_sync_unbalance|cmp_gc_sync|sync1~feeder_combout\ = \u_sync_unbalance|cmp_gc_sync|sync0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sync_unbalance|cmp_gc_sync|sync0~q\,
	combout => \u_sync_unbalance|cmp_gc_sync|sync1~feeder_combout\);

-- Location: FF_X18_Y3_N1
\u_sync_unbalance|cmp_gc_sync|sync1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sys_pin~inputclkctrl_outclk\,
	d => \u_sync_unbalance|cmp_gc_sync|sync1~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sync_unbalance|cmp_gc_sync|sync1~q\);

-- Location: LCCOMB_X19_Y1_N12
\u_sync_unbalance|synced_o~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_sync_unbalance|synced_o~feeder_combout\ = \u_sync_unbalance|cmp_gc_sync|sync1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sync_unbalance|cmp_gc_sync|sync1~q\,
	combout => \u_sync_unbalance|synced_o~feeder_combout\);

-- Location: FF_X19_Y1_N13
\u_sync_unbalance|synced_o\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sys_pin~inputclkctrl_outclk\,
	d => \u_sync_unbalance|synced_o~feeder_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sync_unbalance|synced_o~q\);

-- Location: LCCOMB_X19_Y1_N10
\u_central_brain|latched_fast~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_central_brain|latched_fast~1_combout\ = (\u_central_brain|latched_fast~0_combout\ & (((\u_central_brain|latched_fast~q\ & !\u_sync_fast|synced_o~q\)))) # (!\u_central_brain|latched_fast~0_combout\ & (((\u_central_brain|latched_fast~q\ & 
-- !\u_sync_fast|synced_o~q\)) # (!\u_sync_unbalance|synced_o~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_central_brain|latched_fast~0_combout\,
	datab => \u_sync_unbalance|synced_o~q\,
	datac => \u_central_brain|latched_fast~q\,
	datad => \u_sync_fast|synced_o~q\,
	combout => \u_central_brain|latched_fast~1_combout\);

-- Location: FF_X19_Y1_N11
\u_central_brain|latched_fast\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sys_pin~inputclkctrl_outclk\,
	d => \u_central_brain|latched_fast~1_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_central_brain|latched_fast~q\);

-- Location: LCCOMB_X19_Y1_N0
\u_central_brain|latched_unbalance~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_central_brain|latched_unbalance~0_combout\ = (!\u_sync_unbalance|synced_o~q\ & ((\u_central_brain|latched_unbalance~q\) # (!\u_central_brain|latched_fast~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_central_brain|latched_fast~0_combout\,
	datac => \u_central_brain|latched_unbalance~q\,
	datad => \u_sync_unbalance|synced_o~q\,
	combout => \u_central_brain|latched_unbalance~0_combout\);

-- Location: FF_X19_Y1_N1
\u_central_brain|latched_unbalance\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sys_pin~inputclkctrl_outclk\,
	d => \u_central_brain|latched_unbalance~0_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_central_brain|latched_unbalance~q\);

-- Location: LCCOMB_X19_Y1_N8
\u_central_brain|latched_slow~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_central_brain|latched_slow~0_combout\ = (\u_central_brain|latched_fast~0_combout\ & (!\u_sync_slow|synced_o~q\ & (\u_central_brain|latched_slow~q\))) # (!\u_central_brain|latched_fast~0_combout\ & (((!\u_sync_slow|synced_o~q\ & 
-- \u_central_brain|latched_slow~q\)) # (!\u_sync_unbalance|synced_o~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_central_brain|latched_fast~0_combout\,
	datab => \u_sync_slow|synced_o~q\,
	datac => \u_central_brain|latched_slow~q\,
	datad => \u_sync_unbalance|synced_o~q\,
	combout => \u_central_brain|latched_slow~0_combout\);

-- Location: FF_X19_Y1_N9
\u_central_brain|latched_slow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sys_pin~inputclkctrl_outclk\,
	d => \u_central_brain|latched_slow~0_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_central_brain|latched_slow~q\);

-- Location: LCCOMB_X19_Y1_N24
\u_central_brain|latched_overdrive~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_central_brain|latched_overdrive~0_combout\ = (\u_central_brain|latched_fast~0_combout\ & (!\u_sync_overdrive|synced_o~q\ & (\u_central_brain|latched_overdrive~q\))) # (!\u_central_brain|latched_fast~0_combout\ & (((!\u_sync_overdrive|synced_o~q\ & 
-- \u_central_brain|latched_overdrive~q\)) # (!\u_sync_unbalance|synced_o~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_central_brain|latched_fast~0_combout\,
	datab => \u_sync_overdrive|synced_o~q\,
	datac => \u_central_brain|latched_overdrive~q\,
	datad => \u_sync_unbalance|synced_o~q\,
	combout => \u_central_brain|latched_overdrive~0_combout\);

-- Location: FF_X19_Y1_N25
\u_central_brain|latched_overdrive\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sys_pin~inputclkctrl_outclk\,
	d => \u_central_brain|latched_overdrive~0_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_central_brain|latched_overdrive~q\);

-- Location: LCCOMB_X19_Y1_N4
\u_central_brain|system_is_tripped~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_central_brain|system_is_tripped~0_combout\ = (\u_central_brain|latched_fast~q\ & (\u_central_brain|latched_unbalance~q\ & (\u_central_brain|latched_slow~q\ & \u_central_brain|latched_overdrive~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_central_brain|latched_fast~q\,
	datab => \u_central_brain|latched_unbalance~q\,
	datac => \u_central_brain|latched_slow~q\,
	datad => \u_central_brain|latched_overdrive~q\,
	combout => \u_central_brain|system_is_tripped~0_combout\);

-- Location: FF_X19_Y1_N27
\u_central_brain|rf_gate_disable_o\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sys_pin~inputclkctrl_outclk\,
	asdata => \u_central_brain|system_is_tripped~0_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_central_brain|rf_gate_disable_o~q\);

-- Location: LCCOMB_X19_Y1_N26
\rf_gate_disable_pin~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf_gate_disable_pin~0_combout\ = (\u_overdrive_comp|trip_overdrive~q\) # ((\u_fast_comp|trip_fast~q\) # (!\u_central_brain|rf_gate_disable_o~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_overdrive_comp|trip_overdrive~q\,
	datac => \u_central_brain|rf_gate_disable_o~q\,
	datad => \u_fast_comp|trip_fast~q\,
	combout => \rf_gate_disable_pin~0_combout\);

-- Location: LCCOMB_X19_Y1_N14
\u_central_brain|psu_contactor_o~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_central_brain|psu_contactor_o~0_combout\ = (\u_central_brain|system_is_tripped~0_combout\) # ((\u_central_brain|latched_fast~q\ & (\u_central_brain|psu_contactor_o~q\ & \u_central_brain|latched_unbalance~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_central_brain|latched_fast~q\,
	datab => \u_central_brain|system_is_tripped~0_combout\,
	datac => \u_central_brain|psu_contactor_o~q\,
	datad => \u_central_brain|latched_unbalance~q\,
	combout => \u_central_brain|psu_contactor_o~0_combout\);

-- Location: FF_X19_Y1_N15
\u_central_brain|psu_contactor_o\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sys_pin~inputclkctrl_outclk\,
	d => \u_central_brain|psu_contactor_o~0_combout\,
	clrn => \rst_n_pin~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_central_brain|psu_contactor_o~q\);

-- Location: IOIBUF_X38_Y0_N8
\adc_p_drive_pin[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_drive_pin(11),
	o => \adc_p_drive_pin[11]~input_o\);

-- Location: IOIBUF_X8_Y67_N15
\adc_p_drive_pin[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_drive_pin(10),
	o => \adc_p_drive_pin[10]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\adc_p_drive_pin[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_drive_pin(9),
	o => \adc_p_drive_pin[9]~input_o\);

-- Location: IOIBUF_X6_Y67_N15
\adc_p_drive_pin[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_drive_pin(8),
	o => \adc_p_drive_pin[8]~input_o\);

-- Location: IOIBUF_X61_Y0_N1
\adc_p_drive_pin[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_drive_pin(7),
	o => \adc_p_drive_pin[7]~input_o\);

-- Location: IOIBUF_X63_Y0_N8
\adc_p_drive_pin[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_drive_pin(6),
	o => \adc_p_drive_pin[6]~input_o\);

-- Location: IOIBUF_X6_Y67_N8
\adc_p_drive_pin[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_drive_pin(5),
	o => \adc_p_drive_pin[5]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\adc_p_drive_pin[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_drive_pin(4),
	o => \adc_p_drive_pin[4]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\adc_p_drive_pin[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_drive_pin(3),
	o => \adc_p_drive_pin[3]~input_o\);

-- Location: IOIBUF_X22_Y67_N8
\adc_p_drive_pin[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_drive_pin(2),
	o => \adc_p_drive_pin[2]~input_o\);

-- Location: IOIBUF_X81_Y65_N22
\adc_p_drive_pin[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_drive_pin(1),
	o => \adc_p_drive_pin[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N15
\adc_p_drive_pin[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_p_drive_pin(0),
	o => \adc_p_drive_pin[0]~input_o\);

ww_rf_gate_disable_pin <= \rf_gate_disable_pin~output_o\;

ww_psu_contactor_pin <= \psu_contactor_pin~output_o\;
END structure;


