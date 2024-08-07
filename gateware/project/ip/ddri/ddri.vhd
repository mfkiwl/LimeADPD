-- megafunction wizard: %ALTDDIO_IN%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: ALTDDIO_IN 

-- ============================================================
-- File Name: ddri.vhd
-- Megafunction Name(s):
-- 			ALTDDIO_IN
--
-- Simulation Library Files(s):
-- 			altera_mf
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 16.1.1 Build 200 11/30/2016 SJ Lite Edition
-- ************************************************************


--Copyright (C) 2016  Intel Corporation. All rights reserved.
--Your use of Intel Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Intel Program License 
--Subscription Agreement, the Intel Quartus Prime License Agreement,
--the Intel MegaCore Function License Agreement, or other 
--applicable license agreement, including, without limitation, 
--that your use is for the sole purpose of programming logic 
--devices manufactured by Intel and sold by Intel or its 
--authorized distributors.  Please refer to the applicable 
--agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

ENTITY ddri IS
	PORT
	(
		aclr		: IN STD_LOGIC ;
		datain		: IN STD_LOGIC_VECTOR (12 DOWNTO 0);
		inclock		: IN STD_LOGIC ;
		dataout_h		: OUT STD_LOGIC_VECTOR (12 DOWNTO 0);
		dataout_l		: OUT STD_LOGIC_VECTOR (12 DOWNTO 0)
	);
END ddri;


ARCHITECTURE SYN OF ddri IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (12 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC_VECTOR (12 DOWNTO 0);

BEGIN
	dataout_h    <= sub_wire0(12 DOWNTO 0);
	dataout_l    <= sub_wire1(12 DOWNTO 0);

	ALTDDIO_IN_component : ALTDDIO_IN
	GENERIC MAP (
		intended_device_family => "Cyclone V",
		invert_input_clocks => "ON",
		lpm_hint => "UNUSED",
		lpm_type => "altddio_in",
		power_up_high => "OFF",
		width => 13
	)
	PORT MAP (
		aclr => aclr,
		datain => datain,
		inclock => inclock,
		dataout_h => sub_wire0,
		dataout_l => sub_wire1
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
-- Retrieval info: CONSTANT: INVERT_INPUT_CLOCKS STRING "ON"
-- Retrieval info: CONSTANT: LPM_HINT STRING "UNUSED"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "altddio_in"
-- Retrieval info: CONSTANT: POWER_UP_HIGH STRING "OFF"
-- Retrieval info: CONSTANT: WIDTH NUMERIC "13"
-- Retrieval info: USED_PORT: aclr 0 0 0 0 INPUT NODEFVAL "aclr"
-- Retrieval info: CONNECT: @aclr 0 0 0 0 aclr 0 0 0 0
-- Retrieval info: USED_PORT: datain 0 0 13 0 INPUT NODEFVAL "datain[12..0]"
-- Retrieval info: CONNECT: @datain 0 0 13 0 datain 0 0 13 0
-- Retrieval info: USED_PORT: dataout_h 0 0 13 0 OUTPUT NODEFVAL "dataout_h[12..0]"
-- Retrieval info: CONNECT: dataout_h 0 0 13 0 @dataout_h 0 0 13 0
-- Retrieval info: USED_PORT: dataout_l 0 0 13 0 OUTPUT NODEFVAL "dataout_l[12..0]"
-- Retrieval info: CONNECT: dataout_l 0 0 13 0 @dataout_l 0 0 13 0
-- Retrieval info: USED_PORT: inclock 0 0 0 0 INPUT_CLK_EXT NODEFVAL "inclock"
-- Retrieval info: CONNECT: @inclock 0 0 0 0 inclock 0 0 0 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL ddri.vhd TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ddri.qip TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ddri.bsf TRUE TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ddri_inst.vhd FALSE TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ddri.inc TRUE TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ddri.cmp TRUE TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ddri.ppf TRUE FALSE
-- Retrieval info: LIB_FILE: altera_mf
