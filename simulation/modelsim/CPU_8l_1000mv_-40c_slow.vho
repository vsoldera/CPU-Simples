-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/22/2019 08:45:27"

-- 
-- Device: Altera EP4CE115F29I8L Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CPU IS
    PORT (
	Clock : IN std_logic;
	Instrucao : IN std_logic_vector(0 TO 9);
	Regi0 : OUT std_logic_vector(0 TO 7);
	Regi1 : OUT std_logic_vector(0 TO 7);
	Regi2 : OUT std_logic_vector(0 TO 7);
	Regi3 : OUT std_logic_vector(0 TO 7);
	Regi4 : OUT std_logic_vector(0 TO 7)
	);
END CPU;

-- Design Ports Information
-- Regi0[7]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi0[6]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi0[5]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi0[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi0[3]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi0[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi0[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi0[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi1[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi1[6]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi1[5]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi1[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi1[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi1[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi1[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi1[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi2[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi2[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi2[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi2[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi2[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi2[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi2[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi2[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi3[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi3[6]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi3[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi3[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi3[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi3[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi3[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi3[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi4[7]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi4[6]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi4[5]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi4[4]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi4[3]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi4[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi4[1]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regi4[0]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[9]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[8]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[2]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[4]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Instrucao : std_logic_vector(0 TO 9);
SIGNAL ww_Regi0 : std_logic_vector(0 TO 7);
SIGNAL ww_Regi1 : std_logic_vector(0 TO 7);
SIGNAL ww_Regi2 : std_logic_vector(0 TO 7);
SIGNAL ww_Regi3 : std_logic_vector(0 TO 7);
SIGNAL ww_Regi4 : std_logic_vector(0 TO 7);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Regi0[7]~output_o\ : std_logic;
SIGNAL \Regi0[6]~output_o\ : std_logic;
SIGNAL \Regi0[5]~output_o\ : std_logic;
SIGNAL \Regi0[4]~output_o\ : std_logic;
SIGNAL \Regi0[3]~output_o\ : std_logic;
SIGNAL \Regi0[2]~output_o\ : std_logic;
SIGNAL \Regi0[1]~output_o\ : std_logic;
SIGNAL \Regi0[0]~output_o\ : std_logic;
SIGNAL \Regi1[7]~output_o\ : std_logic;
SIGNAL \Regi1[6]~output_o\ : std_logic;
SIGNAL \Regi1[5]~output_o\ : std_logic;
SIGNAL \Regi1[4]~output_o\ : std_logic;
SIGNAL \Regi1[3]~output_o\ : std_logic;
SIGNAL \Regi1[2]~output_o\ : std_logic;
SIGNAL \Regi1[1]~output_o\ : std_logic;
SIGNAL \Regi1[0]~output_o\ : std_logic;
SIGNAL \Regi2[7]~output_o\ : std_logic;
SIGNAL \Regi2[6]~output_o\ : std_logic;
SIGNAL \Regi2[5]~output_o\ : std_logic;
SIGNAL \Regi2[4]~output_o\ : std_logic;
SIGNAL \Regi2[3]~output_o\ : std_logic;
SIGNAL \Regi2[2]~output_o\ : std_logic;
SIGNAL \Regi2[1]~output_o\ : std_logic;
SIGNAL \Regi2[0]~output_o\ : std_logic;
SIGNAL \Regi3[7]~output_o\ : std_logic;
SIGNAL \Regi3[6]~output_o\ : std_logic;
SIGNAL \Regi3[5]~output_o\ : std_logic;
SIGNAL \Regi3[4]~output_o\ : std_logic;
SIGNAL \Regi3[3]~output_o\ : std_logic;
SIGNAL \Regi3[2]~output_o\ : std_logic;
SIGNAL \Regi3[1]~output_o\ : std_logic;
SIGNAL \Regi3[0]~output_o\ : std_logic;
SIGNAL \Regi4[7]~output_o\ : std_logic;
SIGNAL \Regi4[6]~output_o\ : std_logic;
SIGNAL \Regi4[5]~output_o\ : std_logic;
SIGNAL \Regi4[4]~output_o\ : std_logic;
SIGNAL \Regi4[3]~output_o\ : std_logic;
SIGNAL \Regi4[2]~output_o\ : std_logic;
SIGNAL \Regi4[1]~output_o\ : std_logic;
SIGNAL \Regi4[0]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Instrucao[9]~input_o\ : std_logic;
SIGNAL \Instrucao[3]~input_o\ : std_logic;
SIGNAL \Instrucao[1]~input_o\ : std_logic;
SIGNAL \Instrucao[0]~input_o\ : std_logic;
SIGNAL \Instrucao[2]~input_o\ : std_logic;
SIGNAL \UnidadeDeControlePort|Selector0~0_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|prox~14_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|prox~20_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|prox.B~q\ : std_logic;
SIGNAL \UnidadeDeControlePort|prox~16_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|prox.C~q\ : std_logic;
SIGNAL \UnidadeDeControlePort|prox.E~q\ : std_logic;
SIGNAL \UnidadeDeControlePort|prox~15_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|prox.I~q\ : std_logic;
SIGNAL \UnidadeDeControlePort|prox.G~q\ : std_logic;
SIGNAL \UnidadeDeControlePort|prox.H~q\ : std_logic;
SIGNAL \UnidadeDeControlePort|prox~18_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|prox~19_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|prox.J~q\ : std_logic;
SIGNAL \UnidadeDeControlePort|prox.K~q\ : std_logic;
SIGNAL \UnidadeDeControlePort|prox.L~q\ : std_logic;
SIGNAL \UnidadeDeControlePort|WideOr2~1_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|Selector0~1_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|prox.A~q\ : std_logic;
SIGNAL \UnidadeDeControlePort|prox~17_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|prox.F~q\ : std_logic;
SIGNAL \UnidadeDeControlePort|ROut[1]~1_combout\ : std_logic;
SIGNAL \Instrucao[4]~input_o\ : std_logic;
SIGNAL \UnidadeDeControlePort|indice[1]~feeder_combout\ : std_logic;
SIGNAL \Instrucao[5]~input_o\ : std_logic;
SIGNAL \UnidadeDeControlePort|indice[0]~0_combout\ : std_logic;
SIGNAL \Instrucao[7]~input_o\ : std_logic;
SIGNAL \UnidadeDeControlePort|indice2[0]~0_combout\ : std_logic;
SIGNAL \Instrucao[6]~input_o\ : std_logic;
SIGNAL \UnidadeDeControlePort|indice2[1]~feeder_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|WideOr2~0_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|ROut~0_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|WideOr2~combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|Selector1~0_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|Selector1~1_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|ImedOut~0_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|ImedOut~q\ : std_logic;
SIGNAL \Barramento[7]~0_combout\ : std_logic;
SIGNAL \ULAControl|Add0~0_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|RIn~1_combout\ : std_logic;
SIGNAL \ULAControl|Add0~1_combout\ : std_logic;
SIGNAL \temp1|Q[0]~9_cout\ : std_logic;
SIGNAL \temp1|Q[0]~10_combout\ : std_logic;
SIGNAL \temp1|Q[0]~12_combout\ : std_logic;
SIGNAL \ULAControl|Mux1~0_combout\ : std_logic;
SIGNAL \temp1|Q[0]~13_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|RIn~0_combout\ : std_logic;
SIGNAL \Barramento[7]~2_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|Selector11~1_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|Selector11~0_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|Selector9~1_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|Selector11~2_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|Selector10~0_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|Selector10~1_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|Selector10~2_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|Selector2~0_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|Selector3~0_combout\ : std_logic;
SIGNAL \Barramento[7]~1_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|ROut[6]~feeder_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|Selector12~1_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|Selector12~0_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|Selector12~2_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|Selector4~0_combout\ : std_logic;
SIGNAL \Barramento[7]~3_combout\ : std_logic;
SIGNAL \Barramento[7]~4_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|Selector9~0_combout\ : std_logic;
SIGNAL \UnidadeDeControlePort|Selector9~2_combout\ : std_logic;
SIGNAL \ULAControl|Add0~2_combout\ : std_logic;
SIGNAL \temp1|Q[0]~11\ : std_logic;
SIGNAL \temp1|Q[1]~14_combout\ : std_logic;
SIGNAL \ULAControl|Mux0~0_combout\ : std_logic;
SIGNAL \Barramento[6]~7_combout\ : std_logic;
SIGNAL \Instrucao[8]~input_o\ : std_logic;
SIGNAL \Barramento[6]~5_combout\ : std_logic;
SIGNAL \Barramento[6]~8_combout\ : std_logic;
SIGNAL \reg1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \Barramento[6]~6_combout\ : std_logic;
SIGNAL \Barramento[6]~9_combout\ : std_logic;
SIGNAL \ULAControl|Add0~3_combout\ : std_logic;
SIGNAL \temp1|Q[1]~15\ : std_logic;
SIGNAL \temp1|Q[2]~16_combout\ : std_logic;
SIGNAL \ULAControl|Mux2~0_combout\ : std_logic;
SIGNAL \Barramento[5]~12_combout\ : std_logic;
SIGNAL \Barramento[5]~10_combout\ : std_logic;
SIGNAL \reg3|Q[2]~feeder_combout\ : std_logic;
SIGNAL \Barramento[5]~13_combout\ : std_logic;
SIGNAL \reg1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \Barramento[5]~11_combout\ : std_logic;
SIGNAL \Barramento[5]~14_combout\ : std_logic;
SIGNAL \Barramento[4]~17_combout\ : std_logic;
SIGNAL \Barramento[4]~16_combout\ : std_logic;
SIGNAL \Barramento[4]~15_combout\ : std_logic;
SIGNAL \ULAControl|Add0~4_combout\ : std_logic;
SIGNAL \temp1|Q[2]~17\ : std_logic;
SIGNAL \temp1|Q[3]~18_combout\ : std_logic;
SIGNAL \ULAControl|Mux3~0_combout\ : std_logic;
SIGNAL \Barramento[4]~18_combout\ : std_logic;
SIGNAL \Barramento[4]~19_combout\ : std_logic;
SIGNAL \reg0|Q[3]~feeder_combout\ : std_logic;
SIGNAL \Barramento[3]~20_combout\ : std_logic;
SIGNAL \Barramento[3]~21_combout\ : std_logic;
SIGNAL \ULAControl|Add0~5_combout\ : std_logic;
SIGNAL \temp1|Q[3]~19\ : std_logic;
SIGNAL \temp1|Q[4]~20_combout\ : std_logic;
SIGNAL \ULAControl|Mux4~0_combout\ : std_logic;
SIGNAL \Barramento[3]~22_combout\ : std_logic;
SIGNAL \Barramento[3]~23_combout\ : std_logic;
SIGNAL \reg0|Q[4]~feeder_combout\ : std_logic;
SIGNAL \Barramento[2]~24_combout\ : std_logic;
SIGNAL \Barramento[2]~25_combout\ : std_logic;
SIGNAL \ULAControl|Add0~6_combout\ : std_logic;
SIGNAL \temp1|Q[4]~21\ : std_logic;
SIGNAL \temp1|Q[5]~22_combout\ : std_logic;
SIGNAL \ULAControl|Mux5~0_combout\ : std_logic;
SIGNAL \Barramento[2]~26_combout\ : std_logic;
SIGNAL \Barramento[2]~27_combout\ : std_logic;
SIGNAL \reg0|Q[5]~feeder_combout\ : std_logic;
SIGNAL \Barramento[1]~29_combout\ : std_logic;
SIGNAL \Barramento[1]~28_combout\ : std_logic;
SIGNAL \ULAControl|Add0~7_combout\ : std_logic;
SIGNAL \temp1|Q[5]~23\ : std_logic;
SIGNAL \temp1|Q[6]~24_combout\ : std_logic;
SIGNAL \ULAControl|Mux6~0_combout\ : std_logic;
SIGNAL \Barramento[1]~30_combout\ : std_logic;
SIGNAL \Barramento[1]~31_combout\ : std_logic;
SIGNAL \reg0|Q[6]~feeder_combout\ : std_logic;
SIGNAL \Barramento[0]~32_combout\ : std_logic;
SIGNAL \Barramento[0]~33_combout\ : std_logic;
SIGNAL \ULAControl|Add0~8_combout\ : std_logic;
SIGNAL \temp1|Q[6]~25\ : std_logic;
SIGNAL \temp1|Q[7]~26_combout\ : std_logic;
SIGNAL \ULAControl|Mux7~0_combout\ : std_logic;
SIGNAL \Barramento[0]~34_combout\ : std_logic;
SIGNAL \Barramento[0]~35_combout\ : std_logic;
SIGNAL \temp1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg0|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UnidadeDeControlePort|ROut\ : std_logic_vector(0 TO 7);
SIGNAL \reg2|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UnidadeDeControlePort|RIn\ : std_logic_vector(0 TO 7);
SIGNAL \reg3|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \temp2|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UnidadeDeControlePort|indice2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \UnidadeDeControlePort|indice\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \temp0|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \UnidadeDeControlePort|ALT_INV_prox.A~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clock <= Clock;
ww_Instrucao <= Instrucao;
Regi0 <= ww_Regi0;
Regi1 <= ww_Regi1;
Regi2 <= ww_Regi2;
Regi3 <= ww_Regi3;
Regi4 <= ww_Regi4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
\ALT_INV_Clock~inputclkctrl_outclk\ <= NOT \Clock~inputclkctrl_outclk\;
\UnidadeDeControlePort|ALT_INV_prox.A~q\ <= NOT \UnidadeDeControlePort|prox.A~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X65_Y73_N23
\Regi0[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(0),
	devoe => ww_devoe,
	o => \Regi0[7]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\Regi0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(1),
	devoe => ww_devoe,
	o => \Regi0[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Regi0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(2),
	devoe => ww_devoe,
	o => \Regi0[5]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\Regi0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(3),
	devoe => ww_devoe,
	o => \Regi0[4]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\Regi0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(4),
	devoe => ww_devoe,
	o => \Regi0[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\Regi0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(5),
	devoe => ww_devoe,
	o => \Regi0[2]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\Regi0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(6),
	devoe => ww_devoe,
	o => \Regi0[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\Regi0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(7),
	devoe => ww_devoe,
	o => \Regi0[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\Regi1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(0),
	devoe => ww_devoe,
	o => \Regi1[7]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\Regi1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(1),
	devoe => ww_devoe,
	o => \Regi1[6]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\Regi1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(2),
	devoe => ww_devoe,
	o => \Regi1[5]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\Regi1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(3),
	devoe => ww_devoe,
	o => \Regi1[4]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\Regi1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(4),
	devoe => ww_devoe,
	o => \Regi1[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\Regi1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(5),
	devoe => ww_devoe,
	o => \Regi1[2]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\Regi1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(6),
	devoe => ww_devoe,
	o => \Regi1[1]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\Regi1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(7),
	devoe => ww_devoe,
	o => \Regi1[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\Regi2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(0),
	devoe => ww_devoe,
	o => \Regi2[7]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\Regi2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(1),
	devoe => ww_devoe,
	o => \Regi2[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\Regi2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(2),
	devoe => ww_devoe,
	o => \Regi2[5]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\Regi2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(3),
	devoe => ww_devoe,
	o => \Regi2[4]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\Regi2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(4),
	devoe => ww_devoe,
	o => \Regi2[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\Regi2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(5),
	devoe => ww_devoe,
	o => \Regi2[2]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\Regi2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(6),
	devoe => ww_devoe,
	o => \Regi2[1]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\Regi2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|Q\(7),
	devoe => ww_devoe,
	o => \Regi2[0]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\Regi3[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(0),
	devoe => ww_devoe,
	o => \Regi3[7]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\Regi3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(1),
	devoe => ww_devoe,
	o => \Regi3[6]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\Regi3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(2),
	devoe => ww_devoe,
	o => \Regi3[5]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\Regi3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(3),
	devoe => ww_devoe,
	o => \Regi3[4]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\Regi3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(4),
	devoe => ww_devoe,
	o => \Regi3[3]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\Regi3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(5),
	devoe => ww_devoe,
	o => \Regi3[2]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\Regi3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(6),
	devoe => ww_devoe,
	o => \Regi3[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\Regi3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|Q\(7),
	devoe => ww_devoe,
	o => \Regi3[0]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\Regi4[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Regi4[7]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\Regi4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Regi4[6]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\Regi4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Regi4[5]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\Regi4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Regi4[4]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\Regi4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Regi4[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\Regi4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Regi4[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\Regi4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Regi4[1]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\Regi4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Regi4[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G2
\Clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y37_N8
\Instrucao[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instrucao(9),
	o => \Instrucao[9]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\Instrucao[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instrucao(3),
	o => \Instrucao[3]~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\Instrucao[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instrucao(1),
	o => \Instrucao[1]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\Instrucao[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instrucao(0),
	o => \Instrucao[0]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\Instrucao[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instrucao(2),
	o => \Instrucao[2]~input_o\);

-- Location: LCCOMB_X56_Y70_N26
\UnidadeDeControlePort|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|Selector0~0_combout\ = (\Instrucao[0]~input_o\ & ((\Instrucao[1]~input_o\) # ((\Instrucao[3]~input_o\ & \Instrucao[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucao[3]~input_o\,
	datab => \Instrucao[1]~input_o\,
	datac => \Instrucao[0]~input_o\,
	datad => \Instrucao[2]~input_o\,
	combout => \UnidadeDeControlePort|Selector0~0_combout\);

-- Location: LCCOMB_X56_Y70_N22
\UnidadeDeControlePort|prox~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|prox~14_combout\ = (!\Instrucao[0]~input_o\ & !\UnidadeDeControlePort|prox.A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instrucao[0]~input_o\,
	datad => \UnidadeDeControlePort|prox.A~q\,
	combout => \UnidadeDeControlePort|prox~14_combout\);

-- Location: LCCOMB_X56_Y70_N20
\UnidadeDeControlePort|prox~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|prox~20_combout\ = (\UnidadeDeControlePort|prox~14_combout\ & (!\Instrucao[1]~input_o\ & (!\Instrucao[3]~input_o\ & !\Instrucao[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|prox~14_combout\,
	datab => \Instrucao[1]~input_o\,
	datac => \Instrucao[3]~input_o\,
	datad => \Instrucao[2]~input_o\,
	combout => \UnidadeDeControlePort|prox~20_combout\);

-- Location: FF_X56_Y70_N21
\UnidadeDeControlePort|prox.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \UnidadeDeControlePort|prox~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|prox.B~q\);

-- Location: LCCOMB_X56_Y70_N28
\UnidadeDeControlePort|prox~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|prox~16_combout\ = (\UnidadeDeControlePort|prox~14_combout\ & (!\Instrucao[1]~input_o\ & (\Instrucao[3]~input_o\ & !\Instrucao[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|prox~14_combout\,
	datab => \Instrucao[1]~input_o\,
	datac => \Instrucao[3]~input_o\,
	datad => \Instrucao[2]~input_o\,
	combout => \UnidadeDeControlePort|prox~16_combout\);

-- Location: FF_X56_Y70_N29
\UnidadeDeControlePort|prox.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \UnidadeDeControlePort|prox~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|prox.C~q\);

-- Location: FF_X56_Y69_N15
\UnidadeDeControlePort|RIn[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \UnidadeDeControlePort|prox.C~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|RIn\(6));

-- Location: FF_X56_Y69_N3
\UnidadeDeControlePort|prox.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \UnidadeDeControlePort|RIn\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|prox.E~q\);

-- Location: LCCOMB_X56_Y70_N12
\UnidadeDeControlePort|prox~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|prox~15_combout\ = (\UnidadeDeControlePort|prox~14_combout\ & (\Instrucao[1]~input_o\ & (!\Instrucao[3]~input_o\ & \Instrucao[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|prox~14_combout\,
	datab => \Instrucao[1]~input_o\,
	datac => \Instrucao[3]~input_o\,
	datad => \Instrucao[2]~input_o\,
	combout => \UnidadeDeControlePort|prox~15_combout\);

-- Location: FF_X56_Y70_N13
\UnidadeDeControlePort|prox.I\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \UnidadeDeControlePort|prox~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|prox.I~q\);

-- Location: FF_X56_Y69_N5
\UnidadeDeControlePort|prox.G\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \UnidadeDeControlePort|prox.F~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|prox.G~q\);

-- Location: FF_X56_Y69_N25
\UnidadeDeControlePort|prox.H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \UnidadeDeControlePort|prox.G~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|prox.H~q\);

-- Location: LCCOMB_X56_Y70_N24
\UnidadeDeControlePort|prox~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|prox~18_combout\ = (\Instrucao[1]~input_o\ & (\Instrucao[3]~input_o\ & (!\Instrucao[0]~input_o\ & \Instrucao[2]~input_o\))) # (!\Instrucao[1]~input_o\ & (\Instrucao[0]~input_o\ & ((!\Instrucao[2]~input_o\) # 
-- (!\Instrucao[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucao[3]~input_o\,
	datab => \Instrucao[1]~input_o\,
	datac => \Instrucao[0]~input_o\,
	datad => \Instrucao[2]~input_o\,
	combout => \UnidadeDeControlePort|prox~18_combout\);

-- Location: LCCOMB_X56_Y70_N4
\UnidadeDeControlePort|prox~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|prox~19_combout\ = (!\UnidadeDeControlePort|prox.A~q\ & \UnidadeDeControlePort|prox~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|prox.A~q\,
	datad => \UnidadeDeControlePort|prox~18_combout\,
	combout => \UnidadeDeControlePort|prox~19_combout\);

-- Location: FF_X56_Y70_N5
\UnidadeDeControlePort|prox.J\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \UnidadeDeControlePort|prox~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|prox.J~q\);

-- Location: FF_X56_Y69_N23
\UnidadeDeControlePort|prox.K\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \UnidadeDeControlePort|prox.J~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|prox.K~q\);

-- Location: FF_X56_Y69_N31
\UnidadeDeControlePort|prox.L\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \UnidadeDeControlePort|prox.K~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|prox.L~q\);

-- Location: LCCOMB_X56_Y69_N24
\UnidadeDeControlePort|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|WideOr2~1_combout\ = (!\UnidadeDeControlePort|prox.E~q\ & (!\UnidadeDeControlePort|prox.I~q\ & (!\UnidadeDeControlePort|prox.H~q\ & !\UnidadeDeControlePort|prox.L~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|prox.E~q\,
	datab => \UnidadeDeControlePort|prox.I~q\,
	datac => \UnidadeDeControlePort|prox.H~q\,
	datad => \UnidadeDeControlePort|prox.L~q\,
	combout => \UnidadeDeControlePort|WideOr2~1_combout\);

-- Location: LCCOMB_X56_Y70_N10
\UnidadeDeControlePort|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|Selector0~1_combout\ = (!\UnidadeDeControlePort|prox.B~q\ & (\UnidadeDeControlePort|WideOr2~1_combout\ & ((\UnidadeDeControlePort|prox.A~q\) # (!\UnidadeDeControlePort|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|Selector0~0_combout\,
	datab => \UnidadeDeControlePort|prox.B~q\,
	datac => \UnidadeDeControlePort|prox.A~q\,
	datad => \UnidadeDeControlePort|WideOr2~1_combout\,
	combout => \UnidadeDeControlePort|Selector0~1_combout\);

-- Location: FF_X56_Y70_N11
\UnidadeDeControlePort|prox.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \UnidadeDeControlePort|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|prox.A~q\);

-- Location: LCCOMB_X56_Y70_N30
\UnidadeDeControlePort|prox~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|prox~17_combout\ = (!\UnidadeDeControlePort|prox.A~q\ & (!\Instrucao[0]~input_o\ & (\Instrucao[1]~input_o\ $ (\Instrucao[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|prox.A~q\,
	datab => \Instrucao[1]~input_o\,
	datac => \Instrucao[0]~input_o\,
	datad => \Instrucao[2]~input_o\,
	combout => \UnidadeDeControlePort|prox~17_combout\);

-- Location: FF_X56_Y70_N31
\UnidadeDeControlePort|prox.F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \UnidadeDeControlePort|prox~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|prox.F~q\);

-- Location: LCCOMB_X56_Y69_N10
\UnidadeDeControlePort|ROut[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|ROut[1]~1_combout\ = (!\UnidadeDeControlePort|prox.F~q\ & (!\UnidadeDeControlePort|prox.J~q\ & !\UnidadeDeControlePort|prox.C~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|prox.F~q\,
	datac => \UnidadeDeControlePort|prox.J~q\,
	datad => \UnidadeDeControlePort|prox.C~q\,
	combout => \UnidadeDeControlePort|ROut[1]~1_combout\);

-- Location: IOIBUF_X67_Y73_N8
\Instrucao[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instrucao(4),
	o => \Instrucao[4]~input_o\);

-- Location: LCCOMB_X56_Y70_N6
\UnidadeDeControlePort|indice[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|indice[1]~feeder_combout\ = \Instrucao[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instrucao[4]~input_o\,
	combout => \UnidadeDeControlePort|indice[1]~feeder_combout\);

-- Location: FF_X56_Y70_N7
\UnidadeDeControlePort|indice[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \UnidadeDeControlePort|indice[1]~feeder_combout\,
	ena => \UnidadeDeControlePort|ALT_INV_prox.A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|indice\(1));

-- Location: IOIBUF_X60_Y73_N8
\Instrucao[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instrucao(5),
	o => \Instrucao[5]~input_o\);

-- Location: LCCOMB_X56_Y70_N16
\UnidadeDeControlePort|indice[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|indice[0]~0_combout\ = !\Instrucao[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instrucao[5]~input_o\,
	combout => \UnidadeDeControlePort|indice[0]~0_combout\);

-- Location: FF_X56_Y70_N17
\UnidadeDeControlePort|indice[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \UnidadeDeControlePort|indice[0]~0_combout\,
	ena => \UnidadeDeControlePort|ALT_INV_prox.A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|indice\(0));

-- Location: IOIBUF_X67_Y73_N1
\Instrucao[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instrucao(7),
	o => \Instrucao[7]~input_o\);

-- Location: LCCOMB_X56_Y70_N8
\UnidadeDeControlePort|indice2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|indice2[0]~0_combout\ = !\Instrucao[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instrucao[7]~input_o\,
	combout => \UnidadeDeControlePort|indice2[0]~0_combout\);

-- Location: FF_X56_Y70_N9
\UnidadeDeControlePort|indice2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \UnidadeDeControlePort|indice2[0]~0_combout\,
	ena => \UnidadeDeControlePort|ALT_INV_prox.A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|indice2\(0));

-- Location: IOIBUF_X65_Y73_N8
\Instrucao[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instrucao(6),
	o => \Instrucao[6]~input_o\);

-- Location: LCCOMB_X56_Y70_N14
\UnidadeDeControlePort|indice2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|indice2[1]~feeder_combout\ = \Instrucao[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instrucao[6]~input_o\,
	combout => \UnidadeDeControlePort|indice2[1]~feeder_combout\);

-- Location: FF_X56_Y70_N15
\UnidadeDeControlePort|indice2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \UnidadeDeControlePort|indice2[1]~feeder_combout\,
	ena => \UnidadeDeControlePort|ALT_INV_prox.A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|indice2\(1));

-- Location: LCCOMB_X56_Y69_N30
\UnidadeDeControlePort|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|WideOr2~0_combout\ = (!\UnidadeDeControlePort|prox.K~q\ & \UnidadeDeControlePort|prox.A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UnidadeDeControlePort|prox.K~q\,
	datad => \UnidadeDeControlePort|prox.A~q\,
	combout => \UnidadeDeControlePort|WideOr2~0_combout\);

-- Location: LCCOMB_X56_Y69_N4
\UnidadeDeControlePort|ROut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|ROut~0_combout\ = (\UnidadeDeControlePort|prox.H~q\) # (\UnidadeDeControlePort|prox.L~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UnidadeDeControlePort|prox.H~q\,
	datad => \UnidadeDeControlePort|prox.L~q\,
	combout => \UnidadeDeControlePort|ROut~0_combout\);

-- Location: LCCOMB_X56_Y69_N2
\UnidadeDeControlePort|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|WideOr2~combout\ = ((\UnidadeDeControlePort|ROut~0_combout\) # ((\UnidadeDeControlePort|prox.E~q\) # (\UnidadeDeControlePort|prox.I~q\))) # (!\UnidadeDeControlePort|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|WideOr2~0_combout\,
	datab => \UnidadeDeControlePort|ROut~0_combout\,
	datac => \UnidadeDeControlePort|prox.E~q\,
	datad => \UnidadeDeControlePort|prox.I~q\,
	combout => \UnidadeDeControlePort|WideOr2~combout\);

-- Location: LCCOMB_X57_Y69_N28
\UnidadeDeControlePort|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|Selector1~0_combout\ = (\UnidadeDeControlePort|WideOr2~combout\) # ((\UnidadeDeControlePort|ROut[1]~1_combout\ & ((\UnidadeDeControlePort|indice2\(1)) # (!\UnidadeDeControlePort|indice2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|ROut[1]~1_combout\,
	datab => \UnidadeDeControlePort|indice2\(0),
	datac => \UnidadeDeControlePort|indice2\(1),
	datad => \UnidadeDeControlePort|WideOr2~combout\,
	combout => \UnidadeDeControlePort|Selector1~0_combout\);

-- Location: LCCOMB_X57_Y69_N18
\UnidadeDeControlePort|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|Selector1~1_combout\ = (!\UnidadeDeControlePort|Selector1~0_combout\ & ((\UnidadeDeControlePort|ROut[1]~1_combout\) # ((!\UnidadeDeControlePort|indice\(1) & \UnidadeDeControlePort|indice\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|ROut[1]~1_combout\,
	datab => \UnidadeDeControlePort|indice\(1),
	datac => \UnidadeDeControlePort|indice\(0),
	datad => \UnidadeDeControlePort|Selector1~0_combout\,
	combout => \UnidadeDeControlePort|Selector1~1_combout\);

-- Location: FF_X57_Y69_N19
\UnidadeDeControlePort|ROut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \UnidadeDeControlePort|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|ROut\(0));

-- Location: LCCOMB_X56_Y69_N16
\UnidadeDeControlePort|ImedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|ImedOut~0_combout\ = (\UnidadeDeControlePort|prox.K~q\) # (\UnidadeDeControlePort|prox.I~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UnidadeDeControlePort|prox.K~q\,
	datad => \UnidadeDeControlePort|prox.I~q\,
	combout => \UnidadeDeControlePort|ImedOut~0_combout\);

-- Location: FF_X57_Y69_N17
\UnidadeDeControlePort|ImedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \UnidadeDeControlePort|ImedOut~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|ImedOut~q\);

-- Location: LCCOMB_X57_Y69_N24
\Barramento[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[7]~0_combout\ = (\Instrucao[9]~input_o\ & ((\UnidadeDeControlePort|ImedOut~q\) # ((\UnidadeDeControlePort|ROut\(0) & \reg0|Q\(0))))) # (!\Instrucao[9]~input_o\ & (\UnidadeDeControlePort|ROut\(0) & (\reg0|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucao[9]~input_o\,
	datab => \UnidadeDeControlePort|ROut\(0),
	datac => \reg0|Q\(0),
	datad => \UnidadeDeControlePort|ImedOut~q\,
	combout => \Barramento[7]~0_combout\);

-- Location: FF_X56_Y69_N27
\UnidadeDeControlePort|ROut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \UnidadeDeControlePort|ROut~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|ROut\(5));

-- Location: LCCOMB_X55_Y69_N30
\ULAControl|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULAControl|Add0~0_combout\ = \Barramento[7]~4_combout\ $ (((\Instrucao[0]~input_o\) # ((!\Instrucao[1]~input_o\ & \Instrucao[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucao[1]~input_o\,
	datab => \Instrucao[3]~input_o\,
	datac => \Instrucao[0]~input_o\,
	datad => \Barramento[7]~4_combout\,
	combout => \ULAControl|Add0~0_combout\);

-- Location: LCCOMB_X56_Y70_N18
\UnidadeDeControlePort|RIn~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|RIn~1_combout\ = (\UnidadeDeControlePort|prox.F~q\) # (\UnidadeDeControlePort|prox.J~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|prox.F~q\,
	datac => \UnidadeDeControlePort|prox.J~q\,
	combout => \UnidadeDeControlePort|RIn~1_combout\);

-- Location: FF_X56_Y69_N7
\UnidadeDeControlePort|RIn[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \UnidadeDeControlePort|RIn~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|RIn\(4));

-- Location: FF_X55_Y69_N29
\temp0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Barramento[7]~4_combout\,
	ena => \UnidadeDeControlePort|RIn\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp0|Q\(0));

-- Location: LCCOMB_X54_Y69_N22
\ULAControl|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULAControl|Add0~1_combout\ = (\Instrucao[3]~input_o\ & !\Instrucao[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Instrucao[3]~input_o\,
	datad => \Instrucao[1]~input_o\,
	combout => \ULAControl|Add0~1_combout\);

-- Location: LCCOMB_X55_Y69_N4
\temp1|Q[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp1|Q[0]~9_cout\ = CARRY((\ULAControl|Add0~1_combout\) # (!\Instrucao[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAControl|Add0~1_combout\,
	datab => \Instrucao[2]~input_o\,
	datad => VCC,
	cout => \temp1|Q[0]~9_cout\);

-- Location: LCCOMB_X55_Y69_N6
\temp1|Q[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp1|Q[0]~10_combout\ = (\ULAControl|Add0~0_combout\ & ((\temp0|Q\(0) & (\temp1|Q[0]~9_cout\ & VCC)) # (!\temp0|Q\(0) & (!\temp1|Q[0]~9_cout\)))) # (!\ULAControl|Add0~0_combout\ & ((\temp0|Q\(0) & (!\temp1|Q[0]~9_cout\)) # (!\temp0|Q\(0) & 
-- ((\temp1|Q[0]~9_cout\) # (GND)))))
-- \temp1|Q[0]~11\ = CARRY((\ULAControl|Add0~0_combout\ & (!\temp0|Q\(0) & !\temp1|Q[0]~9_cout\)) # (!\ULAControl|Add0~0_combout\ & ((!\temp1|Q[0]~9_cout\) # (!\temp0|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULAControl|Add0~0_combout\,
	datab => \temp0|Q\(0),
	datad => VCC,
	cin => \temp1|Q[0]~9_cout\,
	combout => \temp1|Q[0]~10_combout\,
	cout => \temp1|Q[0]~11\);

-- Location: LCCOMB_X56_Y69_N26
\temp1|Q[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp1|Q[0]~12_combout\ = (\Instrucao[2]~input_o\) # ((!\Instrucao[0]~input_o\ & \Instrucao[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucao[0]~input_o\,
	datab => \Instrucao[2]~input_o\,
	datad => \Instrucao[3]~input_o\,
	combout => \temp1|Q[0]~12_combout\);

-- Location: LCCOMB_X54_Y69_N6
\ULAControl|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULAControl|Mux1~0_combout\ = (\Barramento[7]~4_combout\ & ((\temp0|Q\(0)) # (\temp1|Q[0]~12_combout\))) # (!\Barramento[7]~4_combout\ & (\temp0|Q\(0) & \temp1|Q[0]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Barramento[7]~4_combout\,
	datab => \temp0|Q\(0),
	datad => \temp1|Q[0]~12_combout\,
	combout => \ULAControl|Mux1~0_combout\);

-- Location: LCCOMB_X56_Y69_N6
\temp1|Q[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp1|Q[0]~13_combout\ = (\Instrucao[0]~input_o\ & ((\Instrucao[2]~input_o\) # (\Instrucao[3]~input_o\))) # (!\Instrucao[0]~input_o\ & (!\Instrucao[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucao[0]~input_o\,
	datab => \Instrucao[2]~input_o\,
	datad => \Instrucao[3]~input_o\,
	combout => \temp1|Q[0]~13_combout\);

-- Location: LCCOMB_X56_Y69_N8
\UnidadeDeControlePort|RIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|RIn~0_combout\ = (\UnidadeDeControlePort|prox.K~q\) # (\UnidadeDeControlePort|prox.G~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|prox.K~q\,
	datac => \UnidadeDeControlePort|prox.G~q\,
	combout => \UnidadeDeControlePort|RIn~0_combout\);

-- Location: FF_X56_Y69_N9
\UnidadeDeControlePort|RIn[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \UnidadeDeControlePort|RIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|RIn\(5));

-- Location: FF_X55_Y69_N7
\temp1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \temp1|Q[0]~10_combout\,
	asdata => \ULAControl|Mux1~0_combout\,
	sload => \temp1|Q[0]~13_combout\,
	ena => \UnidadeDeControlePort|RIn\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(0));

-- Location: LCCOMB_X56_Y69_N14
\Barramento[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[7]~2_combout\ = (\UnidadeDeControlePort|ROut\(5) & \temp1|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|ROut\(5),
	datab => \temp1|Q\(0),
	combout => \Barramento[7]~2_combout\);

-- Location: LCCOMB_X53_Y69_N14
\UnidadeDeControlePort|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|Selector11~1_combout\ = (\UnidadeDeControlePort|indice\(1) & \UnidadeDeControlePort|indice\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UnidadeDeControlePort|indice\(1),
	datad => \UnidadeDeControlePort|indice\(0),
	combout => \UnidadeDeControlePort|Selector11~1_combout\);

-- Location: LCCOMB_X57_Y69_N22
\UnidadeDeControlePort|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|Selector11~0_combout\ = (\UnidadeDeControlePort|indice2\(1) & \UnidadeDeControlePort|indice2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UnidadeDeControlePort|indice2\(1),
	datad => \UnidadeDeControlePort|indice2\(0),
	combout => \UnidadeDeControlePort|Selector11~0_combout\);

-- Location: LCCOMB_X57_Y69_N10
\UnidadeDeControlePort|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|Selector9~1_combout\ = (\UnidadeDeControlePort|prox.G~q\) # (((\UnidadeDeControlePort|prox.E~q\) # (!\UnidadeDeControlePort|ROut[1]~1_combout\)) # (!\UnidadeDeControlePort|WideOr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|prox.G~q\,
	datab => \UnidadeDeControlePort|WideOr2~0_combout\,
	datac => \UnidadeDeControlePort|prox.E~q\,
	datad => \UnidadeDeControlePort|ROut[1]~1_combout\,
	combout => \UnidadeDeControlePort|Selector9~1_combout\);

-- Location: LCCOMB_X52_Y69_N20
\UnidadeDeControlePort|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|Selector11~2_combout\ = (\UnidadeDeControlePort|prox.E~q\ & ((\UnidadeDeControlePort|Selector11~0_combout\) # ((\UnidadeDeControlePort|Selector11~1_combout\ & !\UnidadeDeControlePort|Selector9~1_combout\)))) # 
-- (!\UnidadeDeControlePort|prox.E~q\ & (\UnidadeDeControlePort|Selector11~1_combout\ & ((!\UnidadeDeControlePort|Selector9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|prox.E~q\,
	datab => \UnidadeDeControlePort|Selector11~1_combout\,
	datac => \UnidadeDeControlePort|Selector11~0_combout\,
	datad => \UnidadeDeControlePort|Selector9~1_combout\,
	combout => \UnidadeDeControlePort|Selector11~2_combout\);

-- Location: FF_X52_Y69_N21
\UnidadeDeControlePort|RIn[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \UnidadeDeControlePort|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|RIn\(2));

-- Location: FF_X53_Y69_N5
\reg2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[7]~4_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(0));

-- Location: LCCOMB_X57_Y69_N16
\UnidadeDeControlePort|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|Selector10~0_combout\ = (!\UnidadeDeControlePort|indice2\(1) & !\UnidadeDeControlePort|indice2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UnidadeDeControlePort|indice2\(1),
	datad => \UnidadeDeControlePort|indice2\(0),
	combout => \UnidadeDeControlePort|Selector10~0_combout\);

-- Location: LCCOMB_X53_Y69_N4
\UnidadeDeControlePort|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|Selector10~1_combout\ = (!\UnidadeDeControlePort|indice\(1) & !\UnidadeDeControlePort|indice\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UnidadeDeControlePort|indice\(1),
	datad => \UnidadeDeControlePort|indice\(0),
	combout => \UnidadeDeControlePort|Selector10~1_combout\);

-- Location: LCCOMB_X52_Y69_N22
\UnidadeDeControlePort|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|Selector10~2_combout\ = (\UnidadeDeControlePort|prox.E~q\ & ((\UnidadeDeControlePort|Selector10~0_combout\) # ((\UnidadeDeControlePort|Selector10~1_combout\ & !\UnidadeDeControlePort|Selector9~1_combout\)))) # 
-- (!\UnidadeDeControlePort|prox.E~q\ & (((\UnidadeDeControlePort|Selector10~1_combout\ & !\UnidadeDeControlePort|Selector9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|prox.E~q\,
	datab => \UnidadeDeControlePort|Selector10~0_combout\,
	datac => \UnidadeDeControlePort|Selector10~1_combout\,
	datad => \UnidadeDeControlePort|Selector9~1_combout\,
	combout => \UnidadeDeControlePort|Selector10~2_combout\);

-- Location: FF_X52_Y69_N23
\UnidadeDeControlePort|RIn[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \UnidadeDeControlePort|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|RIn\(1));

-- Location: FF_X53_Y69_N9
\reg1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[7]~4_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(0));

-- Location: LCCOMB_X52_Y69_N30
\UnidadeDeControlePort|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|Selector2~0_combout\ = (!\UnidadeDeControlePort|WideOr2~combout\ & ((\UnidadeDeControlePort|ROut[1]~1_combout\ & ((\UnidadeDeControlePort|Selector10~0_combout\))) # (!\UnidadeDeControlePort|ROut[1]~1_combout\ & 
-- (\UnidadeDeControlePort|Selector10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|WideOr2~combout\,
	datab => \UnidadeDeControlePort|Selector10~1_combout\,
	datac => \UnidadeDeControlePort|ROut[1]~1_combout\,
	datad => \UnidadeDeControlePort|Selector10~0_combout\,
	combout => \UnidadeDeControlePort|Selector2~0_combout\);

-- Location: FF_X52_Y69_N31
\UnidadeDeControlePort|ROut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \UnidadeDeControlePort|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|ROut\(1));

-- Location: LCCOMB_X52_Y69_N24
\UnidadeDeControlePort|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|Selector3~0_combout\ = (!\UnidadeDeControlePort|WideOr2~combout\ & ((\UnidadeDeControlePort|ROut[1]~1_combout\ & ((\UnidadeDeControlePort|Selector11~0_combout\))) # (!\UnidadeDeControlePort|ROut[1]~1_combout\ & 
-- (\UnidadeDeControlePort|Selector11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|WideOr2~combout\,
	datab => \UnidadeDeControlePort|Selector11~1_combout\,
	datac => \UnidadeDeControlePort|Selector11~0_combout\,
	datad => \UnidadeDeControlePort|ROut[1]~1_combout\,
	combout => \UnidadeDeControlePort|Selector3~0_combout\);

-- Location: FF_X52_Y69_N25
\UnidadeDeControlePort|ROut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \UnidadeDeControlePort|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|ROut\(2));

-- Location: LCCOMB_X52_Y69_N4
\Barramento[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[7]~1_combout\ = (\reg2|Q\(0) & ((\UnidadeDeControlePort|ROut\(2)) # ((\reg1|Q\(0) & \UnidadeDeControlePort|ROut\(1))))) # (!\reg2|Q\(0) & (\reg1|Q\(0) & (\UnidadeDeControlePort|ROut\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(0),
	datab => \reg1|Q\(0),
	datac => \UnidadeDeControlePort|ROut\(1),
	datad => \UnidadeDeControlePort|ROut\(2),
	combout => \Barramento[7]~1_combout\);

-- Location: LCCOMB_X52_Y69_N26
\UnidadeDeControlePort|ROut[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|ROut[6]~feeder_combout\ = \UnidadeDeControlePort|prox.E~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UnidadeDeControlePort|prox.E~q\,
	combout => \UnidadeDeControlePort|ROut[6]~feeder_combout\);

-- Location: FF_X52_Y69_N27
\UnidadeDeControlePort|ROut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \UnidadeDeControlePort|ROut[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|ROut\(6));

-- Location: LCCOMB_X53_Y69_N8
\UnidadeDeControlePort|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|Selector12~1_combout\ = (\UnidadeDeControlePort|indice\(1) & !\UnidadeDeControlePort|indice\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UnidadeDeControlePort|indice\(1),
	datad => \UnidadeDeControlePort|indice\(0),
	combout => \UnidadeDeControlePort|Selector12~1_combout\);

-- Location: LCCOMB_X57_Y69_N6
\UnidadeDeControlePort|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|Selector12~0_combout\ = (\UnidadeDeControlePort|indice2\(1) & !\UnidadeDeControlePort|indice2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UnidadeDeControlePort|indice2\(1),
	datad => \UnidadeDeControlePort|indice2\(0),
	combout => \UnidadeDeControlePort|Selector12~0_combout\);

-- Location: LCCOMB_X52_Y69_N18
\UnidadeDeControlePort|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|Selector12~2_combout\ = (\UnidadeDeControlePort|Selector12~1_combout\ & (((\UnidadeDeControlePort|prox.E~q\ & \UnidadeDeControlePort|Selector12~0_combout\)) # (!\UnidadeDeControlePort|Selector9~1_combout\))) # 
-- (!\UnidadeDeControlePort|Selector12~1_combout\ & (\UnidadeDeControlePort|prox.E~q\ & (\UnidadeDeControlePort|Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|Selector12~1_combout\,
	datab => \UnidadeDeControlePort|prox.E~q\,
	datac => \UnidadeDeControlePort|Selector12~0_combout\,
	datad => \UnidadeDeControlePort|Selector9~1_combout\,
	combout => \UnidadeDeControlePort|Selector12~2_combout\);

-- Location: FF_X52_Y69_N19
\UnidadeDeControlePort|RIn[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \UnidadeDeControlePort|Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|RIn\(3));

-- Location: FF_X54_Y69_N9
\reg3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[7]~4_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(0));

-- Location: FF_X52_Y69_N9
\temp2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[7]~4_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(0));

-- Location: LCCOMB_X52_Y69_N10
\UnidadeDeControlePort|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|Selector4~0_combout\ = (!\UnidadeDeControlePort|WideOr2~combout\ & ((\UnidadeDeControlePort|ROut[1]~1_combout\ & (\UnidadeDeControlePort|Selector12~0_combout\)) # (!\UnidadeDeControlePort|ROut[1]~1_combout\ & 
-- ((\UnidadeDeControlePort|Selector12~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|WideOr2~combout\,
	datab => \UnidadeDeControlePort|ROut[1]~1_combout\,
	datac => \UnidadeDeControlePort|Selector12~0_combout\,
	datad => \UnidadeDeControlePort|Selector12~1_combout\,
	combout => \UnidadeDeControlePort|Selector4~0_combout\);

-- Location: FF_X52_Y69_N11
\UnidadeDeControlePort|ROut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \UnidadeDeControlePort|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|ROut\(3));

-- Location: LCCOMB_X52_Y69_N8
\Barramento[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[7]~3_combout\ = (\UnidadeDeControlePort|ROut\(6) & ((\temp2|Q\(0)) # ((\reg3|Q\(0) & \UnidadeDeControlePort|ROut\(3))))) # (!\UnidadeDeControlePort|ROut\(6) & (\reg3|Q\(0) & ((\UnidadeDeControlePort|ROut\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|ROut\(6),
	datab => \reg3|Q\(0),
	datac => \temp2|Q\(0),
	datad => \UnidadeDeControlePort|ROut\(3),
	combout => \Barramento[7]~3_combout\);

-- Location: LCCOMB_X55_Y69_N28
\Barramento[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[7]~4_combout\ = (\Barramento[7]~0_combout\) # ((\Barramento[7]~2_combout\) # ((\Barramento[7]~1_combout\) # (\Barramento[7]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Barramento[7]~0_combout\,
	datab => \Barramento[7]~2_combout\,
	datac => \Barramento[7]~1_combout\,
	datad => \Barramento[7]~3_combout\,
	combout => \Barramento[7]~4_combout\);

-- Location: LCCOMB_X57_Y69_N0
\UnidadeDeControlePort|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|Selector9~0_combout\ = (\UnidadeDeControlePort|prox.E~q\ & (!\UnidadeDeControlePort|indice2\(1) & \UnidadeDeControlePort|indice2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UnidadeDeControlePort|prox.E~q\,
	datac => \UnidadeDeControlePort|indice2\(1),
	datad => \UnidadeDeControlePort|indice2\(0),
	combout => \UnidadeDeControlePort|Selector9~0_combout\);

-- Location: LCCOMB_X57_Y69_N4
\UnidadeDeControlePort|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UnidadeDeControlePort|Selector9~2_combout\ = (\UnidadeDeControlePort|Selector9~0_combout\) # ((!\UnidadeDeControlePort|Selector9~1_combout\ & (\UnidadeDeControlePort|indice\(0) & !\UnidadeDeControlePort|indice\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|Selector9~1_combout\,
	datab => \UnidadeDeControlePort|Selector9~0_combout\,
	datac => \UnidadeDeControlePort|indice\(0),
	datad => \UnidadeDeControlePort|indice\(1),
	combout => \UnidadeDeControlePort|Selector9~2_combout\);

-- Location: FF_X57_Y69_N5
\UnidadeDeControlePort|RIn[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \UnidadeDeControlePort|Selector9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UnidadeDeControlePort|RIn\(0));

-- Location: FF_X57_Y69_N25
\reg0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[7]~4_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(0));

-- Location: LCCOMB_X55_Y69_N26
\ULAControl|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULAControl|Add0~2_combout\ = \Barramento[6]~9_combout\ $ (((\Instrucao[0]~input_o\) # ((!\Instrucao[1]~input_o\ & \Instrucao[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucao[1]~input_o\,
	datab => \Instrucao[3]~input_o\,
	datac => \Instrucao[0]~input_o\,
	datad => \Barramento[6]~9_combout\,
	combout => \ULAControl|Add0~2_combout\);

-- Location: FF_X56_Y69_N19
\temp0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Barramento[6]~9_combout\,
	ena => \UnidadeDeControlePort|RIn\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp0|Q\(1));

-- Location: LCCOMB_X55_Y69_N8
\temp1|Q[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp1|Q[1]~14_combout\ = ((\ULAControl|Add0~2_combout\ $ (\temp0|Q\(1) $ (!\temp1|Q[0]~11\)))) # (GND)
-- \temp1|Q[1]~15\ = CARRY((\ULAControl|Add0~2_combout\ & ((\temp0|Q\(1)) # (!\temp1|Q[0]~11\))) # (!\ULAControl|Add0~2_combout\ & (\temp0|Q\(1) & !\temp1|Q[0]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULAControl|Add0~2_combout\,
	datab => \temp0|Q\(1),
	datad => VCC,
	cin => \temp1|Q[0]~11\,
	combout => \temp1|Q[1]~14_combout\,
	cout => \temp1|Q[1]~15\);

-- Location: LCCOMB_X56_Y69_N20
\ULAControl|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULAControl|Mux0~0_combout\ = (\temp1|Q[0]~12_combout\ & ((\temp0|Q\(1)) # (\Barramento[6]~9_combout\))) # (!\temp1|Q[0]~12_combout\ & (\temp0|Q\(1) & \Barramento[6]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp1|Q[0]~12_combout\,
	datac => \temp0|Q\(1),
	datad => \Barramento[6]~9_combout\,
	combout => \ULAControl|Mux0~0_combout\);

-- Location: FF_X55_Y69_N9
\temp1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \temp1|Q[1]~14_combout\,
	asdata => \ULAControl|Mux0~0_combout\,
	sload => \temp1|Q[0]~13_combout\,
	ena => \UnidadeDeControlePort|RIn\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(1));

-- Location: LCCOMB_X56_Y69_N22
\Barramento[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[6]~7_combout\ = (\UnidadeDeControlePort|ROut\(5) & \temp1|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|ROut\(5),
	datad => \temp1|Q\(1),
	combout => \Barramento[6]~7_combout\);

-- Location: IOIBUF_X115_Y37_N1
\Instrucao[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instrucao(8),
	o => \Instrucao[8]~input_o\);

-- Location: LCCOMB_X57_Y69_N14
\Barramento[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[6]~5_combout\ = (\Instrucao[8]~input_o\ & ((\UnidadeDeControlePort|ImedOut~q\) # ((\UnidadeDeControlePort|ROut\(0) & \reg0|Q\(1))))) # (!\Instrucao[8]~input_o\ & (\UnidadeDeControlePort|ROut\(0) & (\reg0|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucao[8]~input_o\,
	datab => \UnidadeDeControlePort|ROut\(0),
	datac => \reg0|Q\(1),
	datad => \UnidadeDeControlePort|ImedOut~q\,
	combout => \Barramento[6]~5_combout\);

-- Location: FF_X54_Y69_N23
\reg3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[6]~9_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(1));

-- Location: FF_X52_Y69_N17
\temp2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[6]~9_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(1));

-- Location: LCCOMB_X52_Y69_N16
\Barramento[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[6]~8_combout\ = (\UnidadeDeControlePort|ROut\(6) & ((\temp2|Q\(1)) # ((\reg3|Q\(1) & \UnidadeDeControlePort|ROut\(3))))) # (!\UnidadeDeControlePort|ROut\(6) & (\reg3|Q\(1) & ((\UnidadeDeControlePort|ROut\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|ROut\(6),
	datab => \reg3|Q\(1),
	datac => \temp2|Q\(1),
	datad => \UnidadeDeControlePort|ROut\(3),
	combout => \Barramento[6]~8_combout\);

-- Location: LCCOMB_X53_Y69_N22
\reg1|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|Q[1]~feeder_combout\ = \Barramento[6]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Barramento[6]~9_combout\,
	combout => \reg1|Q[1]~feeder_combout\);

-- Location: FF_X53_Y69_N23
\reg1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \reg1|Q[1]~feeder_combout\,
	ena => \UnidadeDeControlePort|RIn\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(1));

-- Location: FF_X53_Y69_N11
\reg2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[6]~9_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(1));

-- Location: LCCOMB_X53_Y69_N10
\Barramento[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[6]~6_combout\ = (\reg1|Q\(1) & ((\UnidadeDeControlePort|ROut\(1)) # ((\reg2|Q\(1) & \UnidadeDeControlePort|ROut\(2))))) # (!\reg1|Q\(1) & (((\reg2|Q\(1) & \UnidadeDeControlePort|ROut\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|Q\(1),
	datab => \UnidadeDeControlePort|ROut\(1),
	datac => \reg2|Q\(1),
	datad => \UnidadeDeControlePort|ROut\(2),
	combout => \Barramento[6]~6_combout\);

-- Location: LCCOMB_X56_Y69_N18
\Barramento[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[6]~9_combout\ = (\Barramento[6]~7_combout\) # ((\Barramento[6]~5_combout\) # ((\Barramento[6]~8_combout\) # (\Barramento[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Barramento[6]~7_combout\,
	datab => \Barramento[6]~5_combout\,
	datac => \Barramento[6]~8_combout\,
	datad => \Barramento[6]~6_combout\,
	combout => \Barramento[6]~9_combout\);

-- Location: FF_X57_Y69_N15
\reg0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[6]~9_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(1));

-- Location: FF_X56_Y69_N29
\temp0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Barramento[5]~14_combout\,
	ena => \UnidadeDeControlePort|RIn\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp0|Q\(2));

-- Location: LCCOMB_X55_Y69_N24
\ULAControl|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULAControl|Add0~3_combout\ = \Barramento[5]~14_combout\ $ (((\Instrucao[0]~input_o\) # ((!\Instrucao[1]~input_o\ & \Instrucao[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucao[1]~input_o\,
	datab => \Instrucao[3]~input_o\,
	datac => \Instrucao[0]~input_o\,
	datad => \Barramento[5]~14_combout\,
	combout => \ULAControl|Add0~3_combout\);

-- Location: LCCOMB_X55_Y69_N10
\temp1|Q[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp1|Q[2]~16_combout\ = (\temp0|Q\(2) & ((\ULAControl|Add0~3_combout\ & (\temp1|Q[1]~15\ & VCC)) # (!\ULAControl|Add0~3_combout\ & (!\temp1|Q[1]~15\)))) # (!\temp0|Q\(2) & ((\ULAControl|Add0~3_combout\ & (!\temp1|Q[1]~15\)) # 
-- (!\ULAControl|Add0~3_combout\ & ((\temp1|Q[1]~15\) # (GND)))))
-- \temp1|Q[2]~17\ = CARRY((\temp0|Q\(2) & (!\ULAControl|Add0~3_combout\ & !\temp1|Q[1]~15\)) # (!\temp0|Q\(2) & ((!\temp1|Q[1]~15\) # (!\ULAControl|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp0|Q\(2),
	datab => \ULAControl|Add0~3_combout\,
	datad => VCC,
	cin => \temp1|Q[1]~15\,
	combout => \temp1|Q[2]~16_combout\,
	cout => \temp1|Q[2]~17\);

-- Location: LCCOMB_X56_Y69_N0
\ULAControl|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULAControl|Mux2~0_combout\ = (\temp0|Q\(2) & ((\temp1|Q[0]~12_combout\) # (\Barramento[5]~14_combout\))) # (!\temp0|Q\(2) & (\temp1|Q[0]~12_combout\ & \Barramento[5]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp0|Q\(2),
	datab => \temp1|Q[0]~12_combout\,
	datad => \Barramento[5]~14_combout\,
	combout => \ULAControl|Mux2~0_combout\);

-- Location: FF_X55_Y69_N11
\temp1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \temp1|Q[2]~16_combout\,
	asdata => \ULAControl|Mux2~0_combout\,
	sload => \temp1|Q[0]~13_combout\,
	ena => \UnidadeDeControlePort|RIn\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(2));

-- Location: LCCOMB_X56_Y69_N12
\Barramento[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[5]~12_combout\ = (\temp1|Q\(2) & \UnidadeDeControlePort|ROut\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q\(2),
	datac => \UnidadeDeControlePort|ROut\(5),
	combout => \Barramento[5]~12_combout\);

-- Location: LCCOMB_X57_Y69_N12
\Barramento[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[5]~10_combout\ = (\Instrucao[7]~input_o\ & ((\UnidadeDeControlePort|ImedOut~q\) # ((\UnidadeDeControlePort|ROut\(0) & \reg0|Q\(2))))) # (!\Instrucao[7]~input_o\ & (\UnidadeDeControlePort|ROut\(0) & (\reg0|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucao[7]~input_o\,
	datab => \UnidadeDeControlePort|ROut\(0),
	datac => \reg0|Q\(2),
	datad => \UnidadeDeControlePort|ImedOut~q\,
	combout => \Barramento[5]~10_combout\);

-- Location: LCCOMB_X54_Y69_N0
\reg3|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg3|Q[2]~feeder_combout\ = \Barramento[5]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Barramento[5]~14_combout\,
	combout => \reg3|Q[2]~feeder_combout\);

-- Location: FF_X54_Y69_N1
\reg3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \reg3|Q[2]~feeder_combout\,
	ena => \UnidadeDeControlePort|RIn\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(2));

-- Location: FF_X52_Y69_N3
\temp2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[5]~14_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(2));

-- Location: LCCOMB_X52_Y69_N2
\Barramento[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[5]~13_combout\ = (\UnidadeDeControlePort|ROut\(6) & ((\temp2|Q\(2)) # ((\reg3|Q\(2) & \UnidadeDeControlePort|ROut\(3))))) # (!\UnidadeDeControlePort|ROut\(6) & (\reg3|Q\(2) & ((\UnidadeDeControlePort|ROut\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|ROut\(6),
	datab => \reg3|Q\(2),
	datac => \temp2|Q\(2),
	datad => \UnidadeDeControlePort|ROut\(3),
	combout => \Barramento[5]~13_combout\);

-- Location: LCCOMB_X53_Y69_N12
\reg1|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|Q[2]~feeder_combout\ = \Barramento[5]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Barramento[5]~14_combout\,
	combout => \reg1|Q[2]~feeder_combout\);

-- Location: FF_X53_Y69_N13
\reg1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \reg1|Q[2]~feeder_combout\,
	ena => \UnidadeDeControlePort|RIn\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(2));

-- Location: FF_X53_Y69_N25
\reg2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[5]~14_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(2));

-- Location: LCCOMB_X53_Y69_N24
\Barramento[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[5]~11_combout\ = (\reg1|Q\(2) & ((\UnidadeDeControlePort|ROut\(1)) # ((\reg2|Q\(2) & \UnidadeDeControlePort|ROut\(2))))) # (!\reg1|Q\(2) & (((\reg2|Q\(2) & \UnidadeDeControlePort|ROut\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|Q\(2),
	datab => \UnidadeDeControlePort|ROut\(1),
	datac => \reg2|Q\(2),
	datad => \UnidadeDeControlePort|ROut\(2),
	combout => \Barramento[5]~11_combout\);

-- Location: LCCOMB_X56_Y69_N28
\Barramento[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[5]~14_combout\ = (\Barramento[5]~12_combout\) # ((\Barramento[5]~10_combout\) # ((\Barramento[5]~13_combout\) # (\Barramento[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Barramento[5]~12_combout\,
	datab => \Barramento[5]~10_combout\,
	datac => \Barramento[5]~13_combout\,
	datad => \Barramento[5]~11_combout\,
	combout => \Barramento[5]~14_combout\);

-- Location: FF_X57_Y69_N13
\reg0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[5]~14_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(2));

-- Location: LCCOMB_X57_Y69_N26
\Barramento[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[4]~17_combout\ = (\Instrucao[6]~input_o\ & \UnidadeDeControlePort|ImedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucao[6]~input_o\,
	datad => \UnidadeDeControlePort|ImedOut~q\,
	combout => \Barramento[4]~17_combout\);

-- Location: FF_X54_Y69_N7
\reg3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[4]~19_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(3));

-- Location: FF_X53_Y69_N7
\reg2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[4]~19_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(3));

-- Location: LCCOMB_X53_Y69_N6
\Barramento[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[4]~16_combout\ = (\reg3|Q\(3) & ((\UnidadeDeControlePort|ROut\(3)) # ((\UnidadeDeControlePort|ROut\(2) & \reg2|Q\(3))))) # (!\reg3|Q\(3) & (\UnidadeDeControlePort|ROut\(2) & (\reg2|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|Q\(3),
	datab => \UnidadeDeControlePort|ROut\(2),
	datac => \reg2|Q\(3),
	datad => \UnidadeDeControlePort|ROut\(3),
	combout => \Barramento[4]~16_combout\);

-- Location: FF_X53_Y69_N27
\reg1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[4]~19_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(3));

-- Location: LCCOMB_X53_Y69_N26
\Barramento[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[4]~15_combout\ = (\reg0|Q\(3) & ((\UnidadeDeControlePort|ROut\(0)) # ((\UnidadeDeControlePort|ROut\(1) & \reg1|Q\(3))))) # (!\reg0|Q\(3) & (\UnidadeDeControlePort|ROut\(1) & (\reg1|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg0|Q\(3),
	datab => \UnidadeDeControlePort|ROut\(1),
	datac => \reg1|Q\(3),
	datad => \UnidadeDeControlePort|ROut\(0),
	combout => \Barramento[4]~15_combout\);

-- Location: LCCOMB_X55_Y69_N22
\ULAControl|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULAControl|Add0~4_combout\ = \Barramento[4]~19_combout\ $ (((\Instrucao[0]~input_o\) # ((!\Instrucao[1]~input_o\ & \Instrucao[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucao[1]~input_o\,
	datab => \Instrucao[3]~input_o\,
	datac => \Instrucao[0]~input_o\,
	datad => \Barramento[4]~19_combout\,
	combout => \ULAControl|Add0~4_combout\);

-- Location: FF_X54_Y69_N25
\temp0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Barramento[4]~19_combout\,
	ena => \UnidadeDeControlePort|RIn\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp0|Q\(3));

-- Location: LCCOMB_X55_Y69_N12
\temp1|Q[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp1|Q[3]~18_combout\ = ((\ULAControl|Add0~4_combout\ $ (\temp0|Q\(3) $ (!\temp1|Q[2]~17\)))) # (GND)
-- \temp1|Q[3]~19\ = CARRY((\ULAControl|Add0~4_combout\ & ((\temp0|Q\(3)) # (!\temp1|Q[2]~17\))) # (!\ULAControl|Add0~4_combout\ & (\temp0|Q\(3) & !\temp1|Q[2]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULAControl|Add0~4_combout\,
	datab => \temp0|Q\(3),
	datad => VCC,
	cin => \temp1|Q[2]~17\,
	combout => \temp1|Q[3]~18_combout\,
	cout => \temp1|Q[3]~19\);

-- Location: LCCOMB_X54_Y69_N8
\ULAControl|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULAControl|Mux3~0_combout\ = (\temp1|Q[0]~12_combout\ & ((\temp0|Q\(3)) # (\Barramento[4]~19_combout\))) # (!\temp1|Q[0]~12_combout\ & (\temp0|Q\(3) & \Barramento[4]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q[0]~12_combout\,
	datab => \temp0|Q\(3),
	datad => \Barramento[4]~19_combout\,
	combout => \ULAControl|Mux3~0_combout\);

-- Location: FF_X55_Y69_N13
\temp1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \temp1|Q[3]~18_combout\,
	asdata => \ULAControl|Mux3~0_combout\,
	sload => \temp1|Q[0]~13_combout\,
	ena => \UnidadeDeControlePort|RIn\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(3));

-- Location: FF_X52_Y69_N1
\temp2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[4]~19_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(3));

-- Location: LCCOMB_X52_Y69_N0
\Barramento[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[4]~18_combout\ = (\temp1|Q\(3) & ((\UnidadeDeControlePort|ROut\(5)) # ((\UnidadeDeControlePort|ROut\(6) & \temp2|Q\(3))))) # (!\temp1|Q\(3) & (\UnidadeDeControlePort|ROut\(6) & (\temp2|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q\(3),
	datab => \UnidadeDeControlePort|ROut\(6),
	datac => \temp2|Q\(3),
	datad => \UnidadeDeControlePort|ROut\(5),
	combout => \Barramento[4]~18_combout\);

-- Location: LCCOMB_X54_Y69_N24
\Barramento[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[4]~19_combout\ = (\Barramento[4]~17_combout\) # ((\Barramento[4]~16_combout\) # ((\Barramento[4]~15_combout\) # (\Barramento[4]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Barramento[4]~17_combout\,
	datab => \Barramento[4]~16_combout\,
	datac => \Barramento[4]~15_combout\,
	datad => \Barramento[4]~18_combout\,
	combout => \Barramento[4]~19_combout\);

-- Location: LCCOMB_X57_Y69_N2
\reg0|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg0|Q[3]~feeder_combout\ = \Barramento[4]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Barramento[4]~19_combout\,
	combout => \reg0|Q[3]~feeder_combout\);

-- Location: FF_X57_Y69_N3
\reg0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \reg0|Q[3]~feeder_combout\,
	ena => \UnidadeDeControlePort|RIn\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(3));

-- Location: FF_X53_Y69_N29
\reg1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[3]~23_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(4));

-- Location: LCCOMB_X53_Y69_N28
\Barramento[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[3]~20_combout\ = (\reg0|Q\(4) & ((\UnidadeDeControlePort|ROut\(0)) # ((\UnidadeDeControlePort|ROut\(1) & \reg1|Q\(4))))) # (!\reg0|Q\(4) & (\UnidadeDeControlePort|ROut\(1) & (\reg1|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg0|Q\(4),
	datab => \UnidadeDeControlePort|ROut\(1),
	datac => \reg1|Q\(4),
	datad => \UnidadeDeControlePort|ROut\(0),
	combout => \Barramento[3]~20_combout\);

-- Location: FF_X54_Y69_N17
\reg3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[3]~23_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(4));

-- Location: FF_X53_Y69_N17
\reg2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[3]~23_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(4));

-- Location: LCCOMB_X53_Y69_N16
\Barramento[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[3]~21_combout\ = (\reg3|Q\(4) & ((\UnidadeDeControlePort|ROut\(3)) # ((\UnidadeDeControlePort|ROut\(2) & \reg2|Q\(4))))) # (!\reg3|Q\(4) & (\UnidadeDeControlePort|ROut\(2) & (\reg2|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|Q\(4),
	datab => \UnidadeDeControlePort|ROut\(2),
	datac => \reg2|Q\(4),
	datad => \UnidadeDeControlePort|ROut\(3),
	combout => \Barramento[3]~21_combout\);

-- Location: FF_X54_Y69_N3
\temp0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Barramento[3]~23_combout\,
	ena => \UnidadeDeControlePort|RIn\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp0|Q\(4));

-- Location: LCCOMB_X55_Y69_N0
\ULAControl|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULAControl|Add0~5_combout\ = \Barramento[3]~23_combout\ $ (((\Instrucao[0]~input_o\) # ((!\Instrucao[1]~input_o\ & \Instrucao[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucao[1]~input_o\,
	datab => \Instrucao[3]~input_o\,
	datac => \Instrucao[0]~input_o\,
	datad => \Barramento[3]~23_combout\,
	combout => \ULAControl|Add0~5_combout\);

-- Location: LCCOMB_X55_Y69_N14
\temp1|Q[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp1|Q[4]~20_combout\ = (\temp0|Q\(4) & ((\ULAControl|Add0~5_combout\ & (\temp1|Q[3]~19\ & VCC)) # (!\ULAControl|Add0~5_combout\ & (!\temp1|Q[3]~19\)))) # (!\temp0|Q\(4) & ((\ULAControl|Add0~5_combout\ & (!\temp1|Q[3]~19\)) # 
-- (!\ULAControl|Add0~5_combout\ & ((\temp1|Q[3]~19\) # (GND)))))
-- \temp1|Q[4]~21\ = CARRY((\temp0|Q\(4) & (!\ULAControl|Add0~5_combout\ & !\temp1|Q[3]~19\)) # (!\temp0|Q\(4) & ((!\temp1|Q[3]~19\) # (!\ULAControl|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp0|Q\(4),
	datab => \ULAControl|Add0~5_combout\,
	datad => VCC,
	cin => \temp1|Q[3]~19\,
	combout => \temp1|Q[4]~20_combout\,
	cout => \temp1|Q[4]~21\);

-- Location: LCCOMB_X54_Y69_N16
\ULAControl|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULAControl|Mux4~0_combout\ = (\temp0|Q\(4) & ((\Barramento[3]~23_combout\) # (\temp1|Q[0]~12_combout\))) # (!\temp0|Q\(4) & (\Barramento[3]~23_combout\ & \temp1|Q[0]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp0|Q\(4),
	datac => \Barramento[3]~23_combout\,
	datad => \temp1|Q[0]~12_combout\,
	combout => \ULAControl|Mux4~0_combout\);

-- Location: FF_X55_Y69_N15
\temp1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \temp1|Q[4]~20_combout\,
	asdata => \ULAControl|Mux4~0_combout\,
	sload => \temp1|Q[0]~13_combout\,
	ena => \UnidadeDeControlePort|RIn\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(4));

-- Location: FF_X52_Y69_N7
\temp2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[3]~23_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(4));

-- Location: LCCOMB_X52_Y69_N6
\Barramento[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[3]~22_combout\ = (\UnidadeDeControlePort|ROut\(6) & ((\temp2|Q\(4)) # ((\temp1|Q\(4) & \UnidadeDeControlePort|ROut\(5))))) # (!\UnidadeDeControlePort|ROut\(6) & (\temp1|Q\(4) & ((\UnidadeDeControlePort|ROut\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|ROut\(6),
	datab => \temp1|Q\(4),
	datac => \temp2|Q\(4),
	datad => \UnidadeDeControlePort|ROut\(5),
	combout => \Barramento[3]~22_combout\);

-- Location: LCCOMB_X54_Y69_N2
\Barramento[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[3]~23_combout\ = (\Barramento[4]~17_combout\) # ((\Barramento[3]~20_combout\) # ((\Barramento[3]~21_combout\) # (\Barramento[3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Barramento[4]~17_combout\,
	datab => \Barramento[3]~20_combout\,
	datac => \Barramento[3]~21_combout\,
	datad => \Barramento[3]~22_combout\,
	combout => \Barramento[3]~23_combout\);

-- Location: LCCOMB_X57_Y69_N8
\reg0|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg0|Q[4]~feeder_combout\ = \Barramento[3]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Barramento[3]~23_combout\,
	combout => \reg0|Q[4]~feeder_combout\);

-- Location: FF_X57_Y69_N9
\reg0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \reg0|Q[4]~feeder_combout\,
	ena => \UnidadeDeControlePort|RIn\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(4));

-- Location: FF_X53_Y69_N19
\reg1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[2]~27_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(5));

-- Location: LCCOMB_X53_Y69_N18
\Barramento[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[2]~24_combout\ = (\UnidadeDeControlePort|ROut\(0) & ((\reg0|Q\(5)) # ((\reg1|Q\(5) & \UnidadeDeControlePort|ROut\(1))))) # (!\UnidadeDeControlePort|ROut\(0) & (((\reg1|Q\(5) & \UnidadeDeControlePort|ROut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|ROut\(0),
	datab => \reg0|Q\(5),
	datac => \reg1|Q\(5),
	datad => \UnidadeDeControlePort|ROut\(1),
	combout => \Barramento[2]~24_combout\);

-- Location: FF_X53_Y69_N15
\reg2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[2]~27_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(5));

-- Location: FF_X54_Y69_N31
\reg3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[2]~27_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(5));

-- Location: LCCOMB_X54_Y69_N30
\Barramento[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[2]~25_combout\ = (\reg2|Q\(5) & ((\UnidadeDeControlePort|ROut\(2)) # ((\UnidadeDeControlePort|ROut\(3) & \reg3|Q\(5))))) # (!\reg2|Q\(5) & (\UnidadeDeControlePort|ROut\(3) & (\reg3|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(5),
	datab => \UnidadeDeControlePort|ROut\(3),
	datac => \reg3|Q\(5),
	datad => \UnidadeDeControlePort|ROut\(2),
	combout => \Barramento[2]~25_combout\);

-- Location: LCCOMB_X54_Y69_N14
\ULAControl|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULAControl|Add0~6_combout\ = \Barramento[2]~27_combout\ $ (((\Instrucao[0]~input_o\) # ((!\Instrucao[1]~input_o\ & \Instrucao[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucao[1]~input_o\,
	datab => \Instrucao[0]~input_o\,
	datac => \Instrucao[3]~input_o\,
	datad => \Barramento[2]~27_combout\,
	combout => \ULAControl|Add0~6_combout\);

-- Location: FF_X54_Y69_N29
\temp0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Barramento[2]~27_combout\,
	ena => \UnidadeDeControlePort|RIn\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp0|Q\(5));

-- Location: LCCOMB_X55_Y69_N16
\temp1|Q[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp1|Q[5]~22_combout\ = ((\ULAControl|Add0~6_combout\ $ (\temp0|Q\(5) $ (!\temp1|Q[4]~21\)))) # (GND)
-- \temp1|Q[5]~23\ = CARRY((\ULAControl|Add0~6_combout\ & ((\temp0|Q\(5)) # (!\temp1|Q[4]~21\))) # (!\ULAControl|Add0~6_combout\ & (\temp0|Q\(5) & !\temp1|Q[4]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULAControl|Add0~6_combout\,
	datab => \temp0|Q\(5),
	datad => VCC,
	cin => \temp1|Q[4]~21\,
	combout => \temp1|Q[5]~22_combout\,
	cout => \temp1|Q[5]~23\);

-- Location: LCCOMB_X54_Y69_N12
\ULAControl|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULAControl|Mux5~0_combout\ = (\temp1|Q[0]~12_combout\ & ((\temp0|Q\(5)) # (\Barramento[2]~27_combout\))) # (!\temp1|Q[0]~12_combout\ & (\temp0|Q\(5) & \Barramento[2]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q[0]~12_combout\,
	datac => \temp0|Q\(5),
	datad => \Barramento[2]~27_combout\,
	combout => \ULAControl|Mux5~0_combout\);

-- Location: FF_X55_Y69_N17
\temp1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \temp1|Q[5]~22_combout\,
	asdata => \ULAControl|Mux5~0_combout\,
	sload => \temp1|Q[0]~13_combout\,
	ena => \UnidadeDeControlePort|RIn\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(5));

-- Location: FF_X52_Y69_N13
\temp2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[2]~27_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(5));

-- Location: LCCOMB_X52_Y69_N12
\Barramento[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[2]~26_combout\ = (\temp1|Q\(5) & ((\UnidadeDeControlePort|ROut\(5)) # ((\UnidadeDeControlePort|ROut\(6) & \temp2|Q\(5))))) # (!\temp1|Q\(5) & (\UnidadeDeControlePort|ROut\(6) & (\temp2|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q\(5),
	datab => \UnidadeDeControlePort|ROut\(6),
	datac => \temp2|Q\(5),
	datad => \UnidadeDeControlePort|ROut\(5),
	combout => \Barramento[2]~26_combout\);

-- Location: LCCOMB_X54_Y69_N28
\Barramento[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[2]~27_combout\ = (\Barramento[4]~17_combout\) # ((\Barramento[2]~24_combout\) # ((\Barramento[2]~25_combout\) # (\Barramento[2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Barramento[4]~17_combout\,
	datab => \Barramento[2]~24_combout\,
	datac => \Barramento[2]~25_combout\,
	datad => \Barramento[2]~26_combout\,
	combout => \Barramento[2]~27_combout\);

-- Location: LCCOMB_X57_Y69_N30
\reg0|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg0|Q[5]~feeder_combout\ = \Barramento[2]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Barramento[2]~27_combout\,
	combout => \reg0|Q[5]~feeder_combout\);

-- Location: FF_X57_Y69_N31
\reg0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \reg0|Q[5]~feeder_combout\,
	ena => \UnidadeDeControlePort|RIn\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(5));

-- Location: FF_X54_Y69_N5
\reg3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[1]~31_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(6));

-- Location: FF_X53_Y69_N21
\reg2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[1]~31_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(6));

-- Location: LCCOMB_X53_Y69_N20
\Barramento[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[1]~29_combout\ = (\reg3|Q\(6) & ((\UnidadeDeControlePort|ROut\(3)) # ((\UnidadeDeControlePort|ROut\(2) & \reg2|Q\(6))))) # (!\reg3|Q\(6) & (\UnidadeDeControlePort|ROut\(2) & (\reg2|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|Q\(6),
	datab => \UnidadeDeControlePort|ROut\(2),
	datac => \reg2|Q\(6),
	datad => \UnidadeDeControlePort|ROut\(3),
	combout => \Barramento[1]~29_combout\);

-- Location: FF_X53_Y69_N1
\reg1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[1]~31_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(6));

-- Location: LCCOMB_X53_Y69_N0
\Barramento[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[1]~28_combout\ = (\reg0|Q\(6) & ((\UnidadeDeControlePort|ROut\(0)) # ((\UnidadeDeControlePort|ROut\(1) & \reg1|Q\(6))))) # (!\reg0|Q\(6) & (\UnidadeDeControlePort|ROut\(1) & (\reg1|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg0|Q\(6),
	datab => \UnidadeDeControlePort|ROut\(1),
	datac => \reg1|Q\(6),
	datad => \UnidadeDeControlePort|ROut\(0),
	combout => \Barramento[1]~28_combout\);

-- Location: FF_X54_Y69_N11
\temp0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Barramento[1]~31_combout\,
	ena => \UnidadeDeControlePort|RIn\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp0|Q\(6));

-- Location: LCCOMB_X55_Y69_N2
\ULAControl|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULAControl|Add0~7_combout\ = \Barramento[1]~31_combout\ $ (((\Instrucao[0]~input_o\) # ((!\Instrucao[1]~input_o\ & \Instrucao[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucao[1]~input_o\,
	datab => \Instrucao[3]~input_o\,
	datac => \Instrucao[0]~input_o\,
	datad => \Barramento[1]~31_combout\,
	combout => \ULAControl|Add0~7_combout\);

-- Location: LCCOMB_X55_Y69_N18
\temp1|Q[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp1|Q[6]~24_combout\ = (\temp0|Q\(6) & ((\ULAControl|Add0~7_combout\ & (\temp1|Q[5]~23\ & VCC)) # (!\ULAControl|Add0~7_combout\ & (!\temp1|Q[5]~23\)))) # (!\temp0|Q\(6) & ((\ULAControl|Add0~7_combout\ & (!\temp1|Q[5]~23\)) # 
-- (!\ULAControl|Add0~7_combout\ & ((\temp1|Q[5]~23\) # (GND)))))
-- \temp1|Q[6]~25\ = CARRY((\temp0|Q\(6) & (!\ULAControl|Add0~7_combout\ & !\temp1|Q[5]~23\)) # (!\temp0|Q\(6) & ((!\temp1|Q[5]~23\) # (!\ULAControl|Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp0|Q\(6),
	datab => \ULAControl|Add0~7_combout\,
	datad => VCC,
	cin => \temp1|Q[5]~23\,
	combout => \temp1|Q[6]~24_combout\,
	cout => \temp1|Q[6]~25\);

-- Location: LCCOMB_X54_Y69_N4
\ULAControl|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULAControl|Mux6~0_combout\ = (\temp1|Q[0]~12_combout\ & ((\temp0|Q\(6)) # (\Barramento[1]~31_combout\))) # (!\temp1|Q[0]~12_combout\ & (\temp0|Q\(6) & \Barramento[1]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q[0]~12_combout\,
	datab => \temp0|Q\(6),
	datad => \Barramento[1]~31_combout\,
	combout => \ULAControl|Mux6~0_combout\);

-- Location: FF_X55_Y69_N19
\temp1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \temp1|Q[6]~24_combout\,
	asdata => \ULAControl|Mux6~0_combout\,
	sload => \temp1|Q[0]~13_combout\,
	ena => \UnidadeDeControlePort|RIn\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(6));

-- Location: FF_X52_Y69_N15
\temp2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[1]~31_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(6));

-- Location: LCCOMB_X52_Y69_N14
\Barramento[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[1]~30_combout\ = (\UnidadeDeControlePort|ROut\(6) & ((\temp2|Q\(6)) # ((\temp1|Q\(6) & \UnidadeDeControlePort|ROut\(5))))) # (!\UnidadeDeControlePort|ROut\(6) & (\temp1|Q\(6) & ((\UnidadeDeControlePort|ROut\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|ROut\(6),
	datab => \temp1|Q\(6),
	datac => \temp2|Q\(6),
	datad => \UnidadeDeControlePort|ROut\(5),
	combout => \Barramento[1]~30_combout\);

-- Location: LCCOMB_X54_Y69_N10
\Barramento[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[1]~31_combout\ = (\Barramento[4]~17_combout\) # ((\Barramento[1]~29_combout\) # ((\Barramento[1]~28_combout\) # (\Barramento[1]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Barramento[4]~17_combout\,
	datab => \Barramento[1]~29_combout\,
	datac => \Barramento[1]~28_combout\,
	datad => \Barramento[1]~30_combout\,
	combout => \Barramento[1]~31_combout\);

-- Location: LCCOMB_X57_Y69_N20
\reg0|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg0|Q[6]~feeder_combout\ = \Barramento[1]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Barramento[1]~31_combout\,
	combout => \reg0|Q[6]~feeder_combout\);

-- Location: FF_X57_Y69_N21
\reg0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \reg0|Q[6]~feeder_combout\,
	ena => \UnidadeDeControlePort|RIn\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(6));

-- Location: FF_X53_Y69_N3
\reg1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[0]~35_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(7));

-- Location: LCCOMB_X53_Y69_N2
\Barramento[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[0]~32_combout\ = (\reg0|Q\(7) & ((\UnidadeDeControlePort|ROut\(0)) # ((\UnidadeDeControlePort|ROut\(1) & \reg1|Q\(7))))) # (!\reg0|Q\(7) & (\UnidadeDeControlePort|ROut\(1) & (\reg1|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg0|Q\(7),
	datab => \UnidadeDeControlePort|ROut\(1),
	datac => \reg1|Q\(7),
	datad => \UnidadeDeControlePort|ROut\(0),
	combout => \Barramento[0]~32_combout\);

-- Location: FF_X54_Y69_N27
\reg3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[0]~35_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(7));

-- Location: FF_X53_Y69_N31
\reg2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[0]~35_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(7));

-- Location: LCCOMB_X53_Y69_N30
\Barramento[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[0]~33_combout\ = (\UnidadeDeControlePort|ROut\(3) & ((\reg3|Q\(7)) # ((\reg2|Q\(7) & \UnidadeDeControlePort|ROut\(2))))) # (!\UnidadeDeControlePort|ROut\(3) & (((\reg2|Q\(7) & \UnidadeDeControlePort|ROut\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|ROut\(3),
	datab => \reg3|Q\(7),
	datac => \reg2|Q\(7),
	datad => \UnidadeDeControlePort|ROut\(2),
	combout => \Barramento[0]~33_combout\);

-- Location: FF_X54_Y69_N21
\temp0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Barramento[0]~35_combout\,
	ena => \UnidadeDeControlePort|RIn\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp0|Q\(7));

-- Location: LCCOMB_X54_Y69_N18
\ULAControl|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULAControl|Add0~8_combout\ = \Barramento[0]~35_combout\ $ (((\Instrucao[0]~input_o\) # ((!\Instrucao[1]~input_o\ & \Instrucao[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucao[1]~input_o\,
	datab => \Instrucao[0]~input_o\,
	datac => \Instrucao[3]~input_o\,
	datad => \Barramento[0]~35_combout\,
	combout => \ULAControl|Add0~8_combout\);

-- Location: LCCOMB_X55_Y69_N20
\temp1|Q[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp1|Q[7]~26_combout\ = \temp0|Q\(7) $ (\temp1|Q[6]~25\ $ (!\ULAControl|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \temp0|Q\(7),
	datad => \ULAControl|Add0~8_combout\,
	cin => \temp1|Q[6]~25\,
	combout => \temp1|Q[7]~26_combout\);

-- Location: LCCOMB_X54_Y69_N26
\ULAControl|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULAControl|Mux7~0_combout\ = (\temp1|Q[0]~12_combout\ & ((\temp0|Q\(7)) # (\Barramento[0]~35_combout\))) # (!\temp1|Q[0]~12_combout\ & (\temp0|Q\(7) & \Barramento[0]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1|Q[0]~12_combout\,
	datab => \temp0|Q\(7),
	datad => \Barramento[0]~35_combout\,
	combout => \ULAControl|Mux7~0_combout\);

-- Location: FF_X55_Y69_N21
\temp1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \temp1|Q[7]~26_combout\,
	asdata => \ULAControl|Mux7~0_combout\,
	sload => \temp1|Q[0]~13_combout\,
	ena => \UnidadeDeControlePort|RIn\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1|Q\(7));

-- Location: FF_X52_Y69_N29
\temp2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[0]~35_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp2|Q\(7));

-- Location: LCCOMB_X52_Y69_N28
\Barramento[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[0]~34_combout\ = (\UnidadeDeControlePort|ROut\(6) & ((\temp2|Q\(7)) # ((\temp1|Q\(7) & \UnidadeDeControlePort|ROut\(5))))) # (!\UnidadeDeControlePort|ROut\(6) & (\temp1|Q\(7) & ((\UnidadeDeControlePort|ROut\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeDeControlePort|ROut\(6),
	datab => \temp1|Q\(7),
	datac => \temp2|Q\(7),
	datad => \UnidadeDeControlePort|ROut\(5),
	combout => \Barramento[0]~34_combout\);

-- Location: LCCOMB_X54_Y69_N20
\Barramento[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Barramento[0]~35_combout\ = (\Barramento[0]~32_combout\) # ((\Barramento[0]~33_combout\) # ((\Barramento[4]~17_combout\) # (\Barramento[0]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Barramento[0]~32_combout\,
	datab => \Barramento[0]~33_combout\,
	datac => \Barramento[4]~17_combout\,
	datad => \Barramento[0]~34_combout\,
	combout => \Barramento[0]~35_combout\);

-- Location: FF_X57_Y69_N7
\reg0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \Barramento[0]~35_combout\,
	sload => VCC,
	ena => \UnidadeDeControlePort|RIn\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(7));

ww_Regi0(7) <= \Regi0[7]~output_o\;

ww_Regi0(6) <= \Regi0[6]~output_o\;

ww_Regi0(5) <= \Regi0[5]~output_o\;

ww_Regi0(4) <= \Regi0[4]~output_o\;

ww_Regi0(3) <= \Regi0[3]~output_o\;

ww_Regi0(2) <= \Regi0[2]~output_o\;

ww_Regi0(1) <= \Regi0[1]~output_o\;

ww_Regi0(0) <= \Regi0[0]~output_o\;

ww_Regi1(7) <= \Regi1[7]~output_o\;

ww_Regi1(6) <= \Regi1[6]~output_o\;

ww_Regi1(5) <= \Regi1[5]~output_o\;

ww_Regi1(4) <= \Regi1[4]~output_o\;

ww_Regi1(3) <= \Regi1[3]~output_o\;

ww_Regi1(2) <= \Regi1[2]~output_o\;

ww_Regi1(1) <= \Regi1[1]~output_o\;

ww_Regi1(0) <= \Regi1[0]~output_o\;

ww_Regi2(7) <= \Regi2[7]~output_o\;

ww_Regi2(6) <= \Regi2[6]~output_o\;

ww_Regi2(5) <= \Regi2[5]~output_o\;

ww_Regi2(4) <= \Regi2[4]~output_o\;

ww_Regi2(3) <= \Regi2[3]~output_o\;

ww_Regi2(2) <= \Regi2[2]~output_o\;

ww_Regi2(1) <= \Regi2[1]~output_o\;

ww_Regi2(0) <= \Regi2[0]~output_o\;

ww_Regi3(7) <= \Regi3[7]~output_o\;

ww_Regi3(6) <= \Regi3[6]~output_o\;

ww_Regi3(5) <= \Regi3[5]~output_o\;

ww_Regi3(4) <= \Regi3[4]~output_o\;

ww_Regi3(3) <= \Regi3[3]~output_o\;

ww_Regi3(2) <= \Regi3[2]~output_o\;

ww_Regi3(1) <= \Regi3[1]~output_o\;

ww_Regi3(0) <= \Regi3[0]~output_o\;

ww_Regi4(7) <= \Regi4[7]~output_o\;

ww_Regi4(6) <= \Regi4[6]~output_o\;

ww_Regi4(5) <= \Regi4[5]~output_o\;

ww_Regi4(4) <= \Regi4[4]~output_o\;

ww_Regi4(3) <= \Regi4[3]~output_o\;

ww_Regi4(2) <= \Regi4[2]~output_o\;

ww_Regi4(1) <= \Regi4[1]~output_o\;

ww_Regi4(0) <= \Regi4[0]~output_o\;
END structure;


