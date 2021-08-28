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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "08/28/2021 19:17:33"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
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

ENTITY 	vga_lab1 IS
    PORT (
	clk50MHz : IN std_logic;
	chooseRes : IN std_logic;
	r : OUT std_logic_vector(3 DOWNTO 0);
	g : OUT std_logic_vector(3 DOWNTO 0);
	b : OUT std_logic_vector(3 DOWNTO 0);
	hsync : OUT std_logic;
	vsync : OUT std_logic
	);
END vga_lab1;

-- Design Ports Information
-- r[0]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- r[1]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- r[2]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- r[3]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- g[0]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- g[1]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- g[2]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- g[3]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- b[0]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- b[1]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- b[2]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- b[3]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hsync	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vsync	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- chooseRes	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk50MHz	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF vga_lab1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50MHz : std_logic;
SIGNAL ww_chooseRes : std_logic;
SIGNAL ww_r : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_g : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hsync : std_logic;
SIGNAL ww_vsync : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a80_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a80_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a68_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a68_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a92_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a92_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a81_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a81_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a69_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a69_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a93_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a93_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a82_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a82_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a70_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a70_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a94_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a94_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a83_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a83_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a71_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a71_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a95_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a95_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a76_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a76_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a64_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a64_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a88_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a88_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a77_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a77_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a65_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a65_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a89_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a89_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a78_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a78_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a66_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a66_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a90_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a79_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a79_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a67_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a67_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a91_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a91_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a72_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a84_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a84_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a73_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a73_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a61_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a85_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a85_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a74_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a74_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a62_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a86_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a86_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a75_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a75_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a63_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a87_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a87_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \disp_clk|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \disp_clk|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sync2_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \disp_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \chooseRes~input_o\ : std_logic;
SIGNAL \clk50MHz~input_o\ : std_logic;
SIGNAL \disp_clk|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \disp_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \sync2_clk~combout\ : std_logic;
SIGNAL \sync2_clk~clkctrl_outclk\ : std_logic;
SIGNAL \hposition[0]~32_combout\ : std_logic;
SIGNAL \hposition[9]~51\ : std_logic;
SIGNAL \hposition[10]~52_combout\ : std_logic;
SIGNAL \hposition[10]~53\ : std_logic;
SIGNAL \hposition[11]~54_combout\ : std_logic;
SIGNAL \hposition[11]~55\ : std_logic;
SIGNAL \hposition[12]~56_combout\ : std_logic;
SIGNAL \hposition[12]~57\ : std_logic;
SIGNAL \hposition[13]~58_combout\ : std_logic;
SIGNAL \hposition[13]~59\ : std_logic;
SIGNAL \hposition[14]~60_combout\ : std_logic;
SIGNAL \hposition[14]~61\ : std_logic;
SIGNAL \hposition[15]~62_combout\ : std_logic;
SIGNAL \hposition[15]~63\ : std_logic;
SIGNAL \hposition[16]~64_combout\ : std_logic;
SIGNAL \hposition[16]~65\ : std_logic;
SIGNAL \hposition[17]~66_combout\ : std_logic;
SIGNAL \hposition[17]~67\ : std_logic;
SIGNAL \hposition[18]~68_combout\ : std_logic;
SIGNAL \hposition[18]~69\ : std_logic;
SIGNAL \hposition[19]~70_combout\ : std_logic;
SIGNAL \hposition[19]~71\ : std_logic;
SIGNAL \hposition[20]~72_combout\ : std_logic;
SIGNAL \hposition[20]~73\ : std_logic;
SIGNAL \hposition[21]~74_combout\ : std_logic;
SIGNAL \hposition[21]~75\ : std_logic;
SIGNAL \hposition[22]~76_combout\ : std_logic;
SIGNAL \hposition[22]~77\ : std_logic;
SIGNAL \hposition[23]~78_combout\ : std_logic;
SIGNAL \hposition[23]~79\ : std_logic;
SIGNAL \hposition[24]~80_combout\ : std_logic;
SIGNAL \hposition[24]~81\ : std_logic;
SIGNAL \hposition[25]~82_combout\ : std_logic;
SIGNAL \hposition[25]~83\ : std_logic;
SIGNAL \hposition[26]~84_combout\ : std_logic;
SIGNAL \hposition[26]~85\ : std_logic;
SIGNAL \hposition[27]~86_combout\ : std_logic;
SIGNAL \hposition[27]~87\ : std_logic;
SIGNAL \hposition[28]~88_combout\ : std_logic;
SIGNAL \hposition[28]~89\ : std_logic;
SIGNAL \hposition[29]~90_combout\ : std_logic;
SIGNAL \hposition[29]~91\ : std_logic;
SIGNAL \hposition[30]~92_combout\ : std_logic;
SIGNAL \hposition[30]~93\ : std_logic;
SIGNAL \hposition[31]~94_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \hposition[0]~33\ : std_logic;
SIGNAL \hposition[1]~34_combout\ : std_logic;
SIGNAL \hposition[1]~35\ : std_logic;
SIGNAL \hposition[2]~36_combout\ : std_logic;
SIGNAL \hposition[2]~37\ : std_logic;
SIGNAL \hposition[3]~38_combout\ : std_logic;
SIGNAL \hposition[3]~39\ : std_logic;
SIGNAL \hposition[4]~40_combout\ : std_logic;
SIGNAL \hposition[4]~41\ : std_logic;
SIGNAL \hposition[5]~42_combout\ : std_logic;
SIGNAL \hposition[5]~43\ : std_logic;
SIGNAL \hposition[6]~44_combout\ : std_logic;
SIGNAL \hposition[6]~45\ : std_logic;
SIGNAL \hposition[7]~46_combout\ : std_logic;
SIGNAL \hposition[7]~47\ : std_logic;
SIGNAL \hposition[8]~48_combout\ : std_logic;
SIGNAL \hposition[8]~49\ : std_logic;
SIGNAL \hposition[9]~50_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \LessThan6~3_combout\ : std_logic;
SIGNAL \LessThan6~4_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \process_0~11_combout\ : std_logic;
SIGNAL \vposition[0]~32_combout\ : std_logic;
SIGNAL \vposition[9]~51\ : std_logic;
SIGNAL \vposition[10]~52_combout\ : std_logic;
SIGNAL \vposition[10]~53\ : std_logic;
SIGNAL \vposition[11]~54_combout\ : std_logic;
SIGNAL \vposition[11]~55\ : std_logic;
SIGNAL \vposition[12]~56_combout\ : std_logic;
SIGNAL \vposition[12]~57\ : std_logic;
SIGNAL \vposition[13]~58_combout\ : std_logic;
SIGNAL \vposition[13]~59\ : std_logic;
SIGNAL \vposition[14]~60_combout\ : std_logic;
SIGNAL \vposition[14]~61\ : std_logic;
SIGNAL \vposition[15]~62_combout\ : std_logic;
SIGNAL \vposition[15]~63\ : std_logic;
SIGNAL \vposition[16]~64_combout\ : std_logic;
SIGNAL \vposition[16]~65\ : std_logic;
SIGNAL \vposition[17]~66_combout\ : std_logic;
SIGNAL \vposition[17]~67\ : std_logic;
SIGNAL \vposition[18]~68_combout\ : std_logic;
SIGNAL \vposition[18]~69\ : std_logic;
SIGNAL \vposition[19]~70_combout\ : std_logic;
SIGNAL \vposition[19]~71\ : std_logic;
SIGNAL \vposition[20]~72_combout\ : std_logic;
SIGNAL \vposition[20]~73\ : std_logic;
SIGNAL \vposition[21]~74_combout\ : std_logic;
SIGNAL \vposition[21]~75\ : std_logic;
SIGNAL \vposition[22]~76_combout\ : std_logic;
SIGNAL \vposition[22]~77\ : std_logic;
SIGNAL \vposition[23]~78_combout\ : std_logic;
SIGNAL \vposition[23]~79\ : std_logic;
SIGNAL \vposition[24]~80_combout\ : std_logic;
SIGNAL \vposition[24]~81\ : std_logic;
SIGNAL \vposition[25]~82_combout\ : std_logic;
SIGNAL \vposition[25]~83\ : std_logic;
SIGNAL \vposition[26]~84_combout\ : std_logic;
SIGNAL \vposition[26]~85\ : std_logic;
SIGNAL \vposition[27]~86_combout\ : std_logic;
SIGNAL \vposition[27]~87\ : std_logic;
SIGNAL \vposition[28]~88_combout\ : std_logic;
SIGNAL \vposition[28]~89\ : std_logic;
SIGNAL \vposition[29]~90_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \vposition[29]~91\ : std_logic;
SIGNAL \vposition[30]~92_combout\ : std_logic;
SIGNAL \vposition[30]~93\ : std_logic;
SIGNAL \vposition[31]~94_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;
SIGNAL \LessThan1~11_combout\ : std_logic;
SIGNAL \vposition[0]~33\ : std_logic;
SIGNAL \vposition[1]~34_combout\ : std_logic;
SIGNAL \vposition[1]~35\ : std_logic;
SIGNAL \vposition[2]~36_combout\ : std_logic;
SIGNAL \vposition[2]~37\ : std_logic;
SIGNAL \vposition[3]~38_combout\ : std_logic;
SIGNAL \vposition[3]~39\ : std_logic;
SIGNAL \vposition[4]~40_combout\ : std_logic;
SIGNAL \vposition[4]~41\ : std_logic;
SIGNAL \vposition[5]~42_combout\ : std_logic;
SIGNAL \vposition[5]~43\ : std_logic;
SIGNAL \vposition[6]~44_combout\ : std_logic;
SIGNAL \vposition[6]~45\ : std_logic;
SIGNAL \vposition[7]~46_combout\ : std_logic;
SIGNAL \vposition[7]~47\ : std_logic;
SIGNAL \vposition[8]~48_combout\ : std_logic;
SIGNAL \vposition[8]~49\ : std_logic;
SIGNAL \vposition[9]~50_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \process_0~12_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \process_0~13_combout\ : std_logic;
SIGNAL \Add12~1\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~9\ : std_logic;
SIGNAL \Add12~11\ : std_logic;
SIGNAL \Add12~13\ : std_logic;
SIGNAL \Add12~15\ : std_logic;
SIGNAL \Add12~17\ : std_logic;
SIGNAL \Add12~19\ : std_logic;
SIGNAL \Add12~21\ : std_logic;
SIGNAL \Add12~23\ : std_logic;
SIGNAL \Add12~25\ : std_logic;
SIGNAL \Add12~27\ : std_logic;
SIGNAL \Add12~29\ : std_logic;
SIGNAL \Add12~30_combout\ : std_logic;
SIGNAL \Add13~1\ : std_logic;
SIGNAL \Add13~3\ : std_logic;
SIGNAL \Add13~5\ : std_logic;
SIGNAL \Add13~6_combout\ : std_logic;
SIGNAL \Add13~7\ : std_logic;
SIGNAL \Add13~9\ : std_logic;
SIGNAL \Add13~10_combout\ : std_logic;
SIGNAL \Add13~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][11]~17_combout\ : std_logic;
SIGNAL \Add13~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][10]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][9]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][8]~combout\ : std_logic;
SIGNAL \Add13~0_combout\ : std_logic;
SIGNAL \Add13~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][11]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][7]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][10]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][6]~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][9]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][5]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][8]~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][4]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][7]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][3]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][6]~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][2]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][1]~5_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][5]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][4]~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Add13~11\ : std_logic;
SIGNAL \Add13~13\ : std_logic;
SIGNAL \Add13~14_combout\ : std_logic;
SIGNAL \Add13~15\ : std_logic;
SIGNAL \Add13~17\ : std_logic;
SIGNAL \Add13~18_combout\ : std_logic;
SIGNAL \Add13~16_combout\ : std_logic;
SIGNAL \Add13~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][7]~19_combout\ : std_logic;
SIGNAL \Add13~19\ : std_logic;
SIGNAL \Add13~20_combout\ : std_logic;
SIGNAL \Add13~21\ : std_logic;
SIGNAL \Add13~22_combout\ : std_logic;
SIGNAL \Add13~23\ : std_logic;
SIGNAL \Add13~24_combout\ : std_logic;
SIGNAL \Add13~25\ : std_logic;
SIGNAL \Add13~26_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[3][3]~18_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][6]~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[3][2]~7_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[3][1]~9_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][5]~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][4]~11_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][3]~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][2]~13_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][1]~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Add12~28_combout\ : std_logic;
SIGNAL \Add12~26_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Add12~24_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Add12~22_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Add12~20_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Add12~18_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add12~16_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Add12~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Add12~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Add12~10_combout\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][3]~15_combout\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][2]~combout\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][1]~16_combout\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \data_address[0]~17\ : std_logic;
SIGNAL \data_address[1]~19\ : std_logic;
SIGNAL \data_address[2]~21\ : std_logic;
SIGNAL \data_address[3]~23\ : std_logic;
SIGNAL \data_address[4]~25\ : std_logic;
SIGNAL \data_address[5]~27\ : std_logic;
SIGNAL \data_address[6]~29\ : std_logic;
SIGNAL \data_address[7]~31\ : std_logic;
SIGNAL \data_address[8]~33\ : std_logic;
SIGNAL \data_address[9]~35\ : std_logic;
SIGNAL \data_address[10]~37\ : std_logic;
SIGNAL \data_address[11]~39\ : std_logic;
SIGNAL \data_address[12]~41\ : std_logic;
SIGNAL \data_address[13]~43\ : std_logic;
SIGNAL \data_address[14]~45\ : std_logic;
SIGNAL \data_address[15]~46_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|address_reg_a[2]~feeder_combout\ : std_logic;
SIGNAL \data_address[14]~44_combout\ : std_logic;
SIGNAL \data_address[13]~42_combout\ : std_logic;
SIGNAL \data_address[0]~16_combout\ : std_logic;
SIGNAL \data_address[1]~18_combout\ : std_logic;
SIGNAL \data_address[2]~20_combout\ : std_logic;
SIGNAL \data_address[3]~22_combout\ : std_logic;
SIGNAL \data_address[4]~24_combout\ : std_logic;
SIGNAL \data_address[5]~26_combout\ : std_logic;
SIGNAL \data_address[6]~28_combout\ : std_logic;
SIGNAL \data_address[7]~30_combout\ : std_logic;
SIGNAL \data_address[8]~32_combout\ : std_logic;
SIGNAL \data_address[9]~34_combout\ : std_logic;
SIGNAL \data_address[10]~36_combout\ : std_logic;
SIGNAL \data_address[11]~38_combout\ : std_logic;
SIGNAL \data_address[12]~40_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a32~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~2_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a44~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~3_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a68~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a56~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~0_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a92~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a80~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~1_combout\ : std_logic;
SIGNAL \r~0_combout\ : std_logic;
SIGNAL \r[0]~reg0_q\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a45~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a33~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~6_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~7_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a81~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a69~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a57~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~4_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a93~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~5_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~8_combout\ : std_logic;
SIGNAL \r[1]~reg0_q\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a34~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~11_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a46~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~12_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a82~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a58~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a70~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~9_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a94~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~10_combout\ : std_logic;
SIGNAL \r~1_combout\ : std_logic;
SIGNAL \r[2]~reg0_q\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a83~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a95~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a59~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a71~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~13_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~14_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a47~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a35~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~15_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~16_combout\ : std_logic;
SIGNAL \r~2_combout\ : std_logic;
SIGNAL \r[3]~reg0_q\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~19_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a40~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~20_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a76~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a88~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a64~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a52~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~17_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~18_combout\ : std_logic;
SIGNAL \g~0_combout\ : std_logic;
SIGNAL \g[0]~reg0_q\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a29~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~23_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a41~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~24_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a65~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a53~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~21_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a89~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a77~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~22_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~25_combout\ : std_logic;
SIGNAL \g[1]~reg0_q\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a42~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a30~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~28_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~29_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a78~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a90~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a54~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a66~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~26_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~27_combout\ : std_logic;
SIGNAL \g~1_combout\ : std_logic;
SIGNAL \g[2]~reg0_q\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a79~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a91~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a55~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a67~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~30_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~31_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a43~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a31~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~32_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~33_combout\ : std_logic;
SIGNAL \g~2_combout\ : std_logic;
SIGNAL \g[3]~reg0_q\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~36_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a36~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~37_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a84~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a60~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a48~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~34_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a72~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~35_combout\ : std_logic;
SIGNAL \b~0_combout\ : std_logic;
SIGNAL \b[0]~reg0_q\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~40_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a37~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~41_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a61~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a49~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~38_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a73~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a85~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~39_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~42_combout\ : std_logic;
SIGNAL \b[1]~reg0_q\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a86~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a62~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a50~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~43_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a74~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~44_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a38~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~45_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~46_combout\ : std_logic;
SIGNAL \b~1_combout\ : std_logic;
SIGNAL \b[2]~reg0_q\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a63~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a51~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~47_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a87~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a75~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~48_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~49_combout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|ram_block1a39~portadataout\ : std_logic;
SIGNAL \imRead|altsyncram_component|auto_generated|mux2|_~50_combout\ : std_logic;
SIGNAL \b~2_combout\ : std_logic;
SIGNAL \b[3]~reg0_q\ : std_logic;
SIGNAL \process_0~15_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \process_0~14_combout\ : std_logic;
SIGNAL \process_0~16_combout\ : std_logic;
SIGNAL \hsync~reg0_q\ : std_logic;
SIGNAL \process_0~20_combout\ : std_logic;
SIGNAL \process_0~19_combout\ : std_logic;
SIGNAL \process_0~17_combout\ : std_logic;
SIGNAL \process_0~18_combout\ : std_logic;
SIGNAL \process_0~21_combout\ : std_logic;
SIGNAL \vsync~reg0_q\ : std_logic;
SIGNAL hposition : std_logic_vector(31 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|rden_decode|w_anode406w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL vposition : std_logic_vector(31 DOWNTO 0);
SIGNAL data_address : std_logic_vector(15 DOWNTO 0);
SIGNAL \imRead|altsyncram_component|auto_generated|out_address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \disp_clk|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_clk50MHz <= clk50MHz;
ww_chooseRes <= chooseRes;
r <= ww_r;
g <= ww_g;
b <= ww_b;
hsync <= ww_hsync;
vsync <= ww_vsync;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\imRead|altsyncram_component|auto_generated|ram_block1a80_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a80~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a80_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a68_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a68~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a68_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a56~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a92_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a92~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a92_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a20~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a32~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a44~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a81_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a81~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a81_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a69_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a69~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a69_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a57~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a93_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a93~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a93_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a21~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a33~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a45~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a82_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a82~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a82_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a70_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a70~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a70_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a58~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a94_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a94~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a94_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a22~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a34~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a46~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a83_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a83~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a83_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a71_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a71~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a71_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a59~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a95_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a95~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a95_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a23~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a35~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a47~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a76_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a76~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a76_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a64_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a64~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a64_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a52~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a88_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a88~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a88_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a16~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a28~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a40~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a77_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a77~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a77_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a65_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a65~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a65_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a53~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a89_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a89~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a89_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a17~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a29~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a41~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a78_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a78~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a78_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a66_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a66~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a66_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a54~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a90_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a90~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a18~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a30~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a42~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a79_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a79~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a79_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a67_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a67~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a67_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a55~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a91_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a91~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a91_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a19~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a31~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a43~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a72_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a72~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a60~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a48~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a84_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a84~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a84_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a12~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a24~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a36~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a73_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a73~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a73_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a61~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a61_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a49~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a85_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a85~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a85_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a13~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a25~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a37~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a74_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a74~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a74_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a62~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a62_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a50~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a86_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a86~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a86_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a26~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a38~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a75_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a75~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a75_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a63~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a63_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a51~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a87_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a87~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a87_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a27~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\imRead|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & data_address(4)
& data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead|altsyncram_component|auto_generated|ram_block1a39~portadataout\ <= \imRead|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\(0);

\disp_clk|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk50MHz~input_o\);

\disp_clk|altpll_component|auto_generated|wire_pll1_clk\(0) <= \disp_clk|altpll_component|auto_generated|pll1_CLK_bus\(0);
\disp_clk|altpll_component|auto_generated|wire_pll1_clk\(1) <= \disp_clk|altpll_component|auto_generated|pll1_CLK_bus\(1);
\disp_clk|altpll_component|auto_generated|wire_pll1_clk\(2) <= \disp_clk|altpll_component|auto_generated|pll1_CLK_bus\(2);
\disp_clk|altpll_component|auto_generated|wire_pll1_clk\(3) <= \disp_clk|altpll_component|auto_generated|pll1_CLK_bus\(3);
\disp_clk|altpll_component|auto_generated|wire_pll1_clk\(4) <= \disp_clk|altpll_component|auto_generated|pll1_CLK_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\sync2_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sync2_clk~combout\);

\disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \disp_clk|altpll_component|auto_generated|wire_pll1_clk\(0));

\disp_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \disp_clk|altpll_component|auto_generated|wire_pll1_clk\(1));

-- Location: LCCOMB_X44_Y49_N12
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

-- Location: IOOBUF_X18_Y0_N30
\r[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_r(0));

-- Location: IOOBUF_X0_Y12_N9
\r[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_r(1));

-- Location: IOOBUF_X16_Y0_N16
\r[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_r(2));

-- Location: IOOBUF_X16_Y0_N23
\r[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_r(3));

-- Location: IOOBUF_X0_Y9_N2
\g[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_g(0));

-- Location: IOOBUF_X0_Y15_N9
\g[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_g(1));

-- Location: IOOBUF_X0_Y3_N9
\g[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_g(2));

-- Location: IOOBUF_X0_Y3_N2
\g[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_g(3));

-- Location: IOOBUF_X0_Y13_N2
\b[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_b(0));

-- Location: IOOBUF_X0_Y15_N2
\b[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_b(1));

-- Location: IOOBUF_X0_Y23_N2
\b[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_b(2));

-- Location: IOOBUF_X0_Y18_N9
\b[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_b(3));

-- Location: IOOBUF_X0_Y18_N2
\hsync~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hsync~reg0_q\,
	devoe => ww_devoe,
	o => ww_hsync);

-- Location: IOOBUF_X0_Y13_N9
\vsync~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vsync~reg0_q\,
	devoe => ww_devoe,
	o => ww_vsync);

-- Location: IOIBUF_X51_Y54_N29
\chooseRes~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_chooseRes,
	o => \chooseRes~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk50MHz~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50MHz,
	o => \clk50MHz~input_o\);

-- Location: PLL_1
\disp_clk|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 16,
	c0_initial => 1,
	c0_low => 15,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 6,
	c1_initial => 1,
	c1_low => 6,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 155,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 78,
	clk0_phase_shift => "0",
	clk1_counter => "c1",
	clk1_divide_by => 10,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 13,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 20,
	m => 78,
	m_initial => 1,
	m_ph => 0,
	n => 5,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 769,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 1666,
	vco_min => 769,
	vco_multiply_by => 0,
	vco_phase_shift_step => 160,
	vco_post_scale => 1)
-- pragma translate_on
PORT MAP (
	fbin => \disp_clk|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \disp_clk|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \disp_clk|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \disp_clk|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: CLKCTRL_G19
\disp_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: LCCOMB_X77_Y39_N14
sync2_clk : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync2_clk~combout\ = LCELL((\chooseRes~input_o\ & ((GLOBAL(\disp_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\)))) # (!\chooseRes~input_o\ & (GLOBAL(\disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chooseRes~input_o\,
	datac => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	datad => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	combout => \sync2_clk~combout\);

-- Location: CLKCTRL_G7
\sync2_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sync2_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sync2_clk~clkctrl_outclk\);

-- Location: LCCOMB_X54_Y32_N0
\hposition[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[0]~32_combout\ = hposition(0) $ (VCC)
-- \hposition[0]~33\ = CARRY(hposition(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hposition(0),
	datad => VCC,
	combout => \hposition[0]~32_combout\,
	cout => \hposition[0]~33\);

-- Location: LCCOMB_X54_Y32_N18
\hposition[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[9]~50_combout\ = (hposition(9) & (!\hposition[8]~49\)) # (!hposition(9) & ((\hposition[8]~49\) # (GND)))
-- \hposition[9]~51\ = CARRY((!\hposition[8]~49\) # (!hposition(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(9),
	datad => VCC,
	cin => \hposition[8]~49\,
	combout => \hposition[9]~50_combout\,
	cout => \hposition[9]~51\);

-- Location: LCCOMB_X54_Y32_N20
\hposition[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[10]~52_combout\ = (hposition(10) & (\hposition[9]~51\ $ (GND))) # (!hposition(10) & (!\hposition[9]~51\ & VCC))
-- \hposition[10]~53\ = CARRY((hposition(10) & !\hposition[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(10),
	datad => VCC,
	cin => \hposition[9]~51\,
	combout => \hposition[10]~52_combout\,
	cout => \hposition[10]~53\);

-- Location: FF_X54_Y32_N21
\hposition[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[10]~52_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(10));

-- Location: LCCOMB_X54_Y32_N22
\hposition[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[11]~54_combout\ = (hposition(11) & (!\hposition[10]~53\)) # (!hposition(11) & ((\hposition[10]~53\) # (GND)))
-- \hposition[11]~55\ = CARRY((!\hposition[10]~53\) # (!hposition(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(11),
	datad => VCC,
	cin => \hposition[10]~53\,
	combout => \hposition[11]~54_combout\,
	cout => \hposition[11]~55\);

-- Location: FF_X54_Y32_N23
\hposition[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[11]~54_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(11));

-- Location: LCCOMB_X54_Y32_N24
\hposition[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[12]~56_combout\ = (hposition(12) & (\hposition[11]~55\ $ (GND))) # (!hposition(12) & (!\hposition[11]~55\ & VCC))
-- \hposition[12]~57\ = CARRY((hposition(12) & !\hposition[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(12),
	datad => VCC,
	cin => \hposition[11]~55\,
	combout => \hposition[12]~56_combout\,
	cout => \hposition[12]~57\);

-- Location: FF_X54_Y32_N25
\hposition[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[12]~56_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(12));

-- Location: LCCOMB_X54_Y32_N26
\hposition[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[13]~58_combout\ = (hposition(13) & (!\hposition[12]~57\)) # (!hposition(13) & ((\hposition[12]~57\) # (GND)))
-- \hposition[13]~59\ = CARRY((!\hposition[12]~57\) # (!hposition(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(13),
	datad => VCC,
	cin => \hposition[12]~57\,
	combout => \hposition[13]~58_combout\,
	cout => \hposition[13]~59\);

-- Location: FF_X54_Y32_N27
\hposition[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[13]~58_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(13));

-- Location: LCCOMB_X54_Y32_N28
\hposition[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[14]~60_combout\ = (hposition(14) & (\hposition[13]~59\ $ (GND))) # (!hposition(14) & (!\hposition[13]~59\ & VCC))
-- \hposition[14]~61\ = CARRY((hposition(14) & !\hposition[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(14),
	datad => VCC,
	cin => \hposition[13]~59\,
	combout => \hposition[14]~60_combout\,
	cout => \hposition[14]~61\);

-- Location: FF_X54_Y32_N29
\hposition[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[14]~60_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(14));

-- Location: LCCOMB_X54_Y32_N30
\hposition[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[15]~62_combout\ = (hposition(15) & (!\hposition[14]~61\)) # (!hposition(15) & ((\hposition[14]~61\) # (GND)))
-- \hposition[15]~63\ = CARRY((!\hposition[14]~61\) # (!hposition(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(15),
	datad => VCC,
	cin => \hposition[14]~61\,
	combout => \hposition[15]~62_combout\,
	cout => \hposition[15]~63\);

-- Location: FF_X54_Y32_N31
\hposition[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[15]~62_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(15));

-- Location: LCCOMB_X54_Y31_N0
\hposition[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[16]~64_combout\ = (hposition(16) & (\hposition[15]~63\ $ (GND))) # (!hposition(16) & (!\hposition[15]~63\ & VCC))
-- \hposition[16]~65\ = CARRY((hposition(16) & !\hposition[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(16),
	datad => VCC,
	cin => \hposition[15]~63\,
	combout => \hposition[16]~64_combout\,
	cout => \hposition[16]~65\);

-- Location: FF_X54_Y31_N1
\hposition[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[16]~64_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(16));

-- Location: LCCOMB_X54_Y31_N2
\hposition[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[17]~66_combout\ = (hposition(17) & (!\hposition[16]~65\)) # (!hposition(17) & ((\hposition[16]~65\) # (GND)))
-- \hposition[17]~67\ = CARRY((!\hposition[16]~65\) # (!hposition(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(17),
	datad => VCC,
	cin => \hposition[16]~65\,
	combout => \hposition[17]~66_combout\,
	cout => \hposition[17]~67\);

-- Location: FF_X54_Y31_N3
\hposition[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[17]~66_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(17));

-- Location: LCCOMB_X54_Y31_N4
\hposition[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[18]~68_combout\ = (hposition(18) & (\hposition[17]~67\ $ (GND))) # (!hposition(18) & (!\hposition[17]~67\ & VCC))
-- \hposition[18]~69\ = CARRY((hposition(18) & !\hposition[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(18),
	datad => VCC,
	cin => \hposition[17]~67\,
	combout => \hposition[18]~68_combout\,
	cout => \hposition[18]~69\);

-- Location: FF_X54_Y31_N5
\hposition[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[18]~68_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(18));

-- Location: LCCOMB_X54_Y31_N6
\hposition[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[19]~70_combout\ = (hposition(19) & (!\hposition[18]~69\)) # (!hposition(19) & ((\hposition[18]~69\) # (GND)))
-- \hposition[19]~71\ = CARRY((!\hposition[18]~69\) # (!hposition(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(19),
	datad => VCC,
	cin => \hposition[18]~69\,
	combout => \hposition[19]~70_combout\,
	cout => \hposition[19]~71\);

-- Location: FF_X54_Y31_N7
\hposition[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[19]~70_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(19));

-- Location: LCCOMB_X54_Y31_N8
\hposition[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[20]~72_combout\ = (hposition(20) & (\hposition[19]~71\ $ (GND))) # (!hposition(20) & (!\hposition[19]~71\ & VCC))
-- \hposition[20]~73\ = CARRY((hposition(20) & !\hposition[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(20),
	datad => VCC,
	cin => \hposition[19]~71\,
	combout => \hposition[20]~72_combout\,
	cout => \hposition[20]~73\);

-- Location: FF_X54_Y31_N9
\hposition[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[20]~72_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(20));

-- Location: LCCOMB_X54_Y31_N10
\hposition[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[21]~74_combout\ = (hposition(21) & (!\hposition[20]~73\)) # (!hposition(21) & ((\hposition[20]~73\) # (GND)))
-- \hposition[21]~75\ = CARRY((!\hposition[20]~73\) # (!hposition(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(21),
	datad => VCC,
	cin => \hposition[20]~73\,
	combout => \hposition[21]~74_combout\,
	cout => \hposition[21]~75\);

-- Location: FF_X54_Y31_N11
\hposition[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[21]~74_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(21));

-- Location: LCCOMB_X54_Y31_N12
\hposition[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[22]~76_combout\ = (hposition(22) & (\hposition[21]~75\ $ (GND))) # (!hposition(22) & (!\hposition[21]~75\ & VCC))
-- \hposition[22]~77\ = CARRY((hposition(22) & !\hposition[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(22),
	datad => VCC,
	cin => \hposition[21]~75\,
	combout => \hposition[22]~76_combout\,
	cout => \hposition[22]~77\);

-- Location: FF_X54_Y31_N13
\hposition[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[22]~76_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(22));

-- Location: LCCOMB_X54_Y31_N14
\hposition[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[23]~78_combout\ = (hposition(23) & (!\hposition[22]~77\)) # (!hposition(23) & ((\hposition[22]~77\) # (GND)))
-- \hposition[23]~79\ = CARRY((!\hposition[22]~77\) # (!hposition(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(23),
	datad => VCC,
	cin => \hposition[22]~77\,
	combout => \hposition[23]~78_combout\,
	cout => \hposition[23]~79\);

-- Location: FF_X54_Y31_N15
\hposition[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[23]~78_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(23));

-- Location: LCCOMB_X54_Y31_N16
\hposition[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[24]~80_combout\ = (hposition(24) & (\hposition[23]~79\ $ (GND))) # (!hposition(24) & (!\hposition[23]~79\ & VCC))
-- \hposition[24]~81\ = CARRY((hposition(24) & !\hposition[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(24),
	datad => VCC,
	cin => \hposition[23]~79\,
	combout => \hposition[24]~80_combout\,
	cout => \hposition[24]~81\);

-- Location: FF_X54_Y31_N17
\hposition[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[24]~80_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(24));

-- Location: LCCOMB_X54_Y31_N18
\hposition[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[25]~82_combout\ = (hposition(25) & (!\hposition[24]~81\)) # (!hposition(25) & ((\hposition[24]~81\) # (GND)))
-- \hposition[25]~83\ = CARRY((!\hposition[24]~81\) # (!hposition(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(25),
	datad => VCC,
	cin => \hposition[24]~81\,
	combout => \hposition[25]~82_combout\,
	cout => \hposition[25]~83\);

-- Location: FF_X54_Y31_N19
\hposition[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[25]~82_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(25));

-- Location: LCCOMB_X54_Y31_N20
\hposition[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[26]~84_combout\ = (hposition(26) & (\hposition[25]~83\ $ (GND))) # (!hposition(26) & (!\hposition[25]~83\ & VCC))
-- \hposition[26]~85\ = CARRY((hposition(26) & !\hposition[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(26),
	datad => VCC,
	cin => \hposition[25]~83\,
	combout => \hposition[26]~84_combout\,
	cout => \hposition[26]~85\);

-- Location: FF_X54_Y31_N21
\hposition[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[26]~84_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(26));

-- Location: LCCOMB_X54_Y31_N22
\hposition[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[27]~86_combout\ = (hposition(27) & (!\hposition[26]~85\)) # (!hposition(27) & ((\hposition[26]~85\) # (GND)))
-- \hposition[27]~87\ = CARRY((!\hposition[26]~85\) # (!hposition(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(27),
	datad => VCC,
	cin => \hposition[26]~85\,
	combout => \hposition[27]~86_combout\,
	cout => \hposition[27]~87\);

-- Location: FF_X54_Y31_N23
\hposition[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[27]~86_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(27));

-- Location: LCCOMB_X54_Y31_N24
\hposition[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[28]~88_combout\ = (hposition(28) & (\hposition[27]~87\ $ (GND))) # (!hposition(28) & (!\hposition[27]~87\ & VCC))
-- \hposition[28]~89\ = CARRY((hposition(28) & !\hposition[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(28),
	datad => VCC,
	cin => \hposition[27]~87\,
	combout => \hposition[28]~88_combout\,
	cout => \hposition[28]~89\);

-- Location: FF_X54_Y31_N25
\hposition[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[28]~88_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(28));

-- Location: LCCOMB_X54_Y31_N26
\hposition[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[29]~90_combout\ = (hposition(29) & (!\hposition[28]~89\)) # (!hposition(29) & ((\hposition[28]~89\) # (GND)))
-- \hposition[29]~91\ = CARRY((!\hposition[28]~89\) # (!hposition(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(29),
	datad => VCC,
	cin => \hposition[28]~89\,
	combout => \hposition[29]~90_combout\,
	cout => \hposition[29]~91\);

-- Location: FF_X54_Y31_N27
\hposition[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[29]~90_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(29));

-- Location: LCCOMB_X54_Y31_N28
\hposition[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[30]~92_combout\ = (hposition(30) & (\hposition[29]~91\ $ (GND))) # (!hposition(30) & (!\hposition[29]~91\ & VCC))
-- \hposition[30]~93\ = CARRY((hposition(30) & !\hposition[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(30),
	datad => VCC,
	cin => \hposition[29]~91\,
	combout => \hposition[30]~92_combout\,
	cout => \hposition[30]~93\);

-- Location: FF_X54_Y31_N29
\hposition[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[30]~92_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(30));

-- Location: LCCOMB_X54_Y31_N30
\hposition[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[31]~94_combout\ = hposition(31) $ (\hposition[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(31),
	cin => \hposition[30]~93\,
	combout => \hposition[31]~94_combout\);

-- Location: FF_X54_Y31_N31
\hposition[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[31]~94_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(31));

-- Location: LCCOMB_X55_Y31_N12
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!hposition(30) & (!hposition(28) & (!hposition(29) & !hposition(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(30),
	datab => hposition(28),
	datac => hposition(29),
	datad => hposition(27),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X55_Y31_N4
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!hposition(23) & (!hposition(25) & (!hposition(24) & !hposition(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(23),
	datab => hposition(25),
	datac => hposition(24),
	datad => hposition(26),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X55_Y31_N14
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!hposition(21) & (!hposition(19) & (!hposition(22) & !hposition(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(21),
	datab => hposition(19),
	datac => hposition(22),
	datad => hposition(20),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X55_Y32_N26
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!hposition(13) & (!hposition(14) & (!hposition(12) & !hposition(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(13),
	datab => hposition(14),
	datac => hposition(12),
	datad => hposition(11),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X55_Y31_N10
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!hposition(16) & !hposition(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hposition(16),
	datad => hposition(15),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X55_Y31_N20
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!hposition(17) & (!hposition(18) & (\LessThan0~1_combout\ & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(17),
	datab => hposition(18),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X55_Y31_N30
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\LessThan0~0_combout\ & (\LessThan0~5_combout\ & (\LessThan0~4_combout\ & \LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~5_combout\,
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X55_Y31_N16
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (hposition(7)) # ((hposition(6) & !hposition(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(7),
	datac => hposition(6),
	datad => hposition(9),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X55_Y31_N6
\LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!hposition(6) & !hposition(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hposition(6),
	datad => hposition(5),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X55_Y31_N22
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (hposition(8) & ((\LessThan0~7_combout\) # ((hposition(9) & !\LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(9),
	datab => \LessThan0~7_combout\,
	datac => hposition(8),
	datad => \LessThan3~0_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X55_Y31_N24
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (hposition(9) & ((hposition(10)) # ((!\chooseRes~input_o\ & \LessThan0~8_combout\)))) # (!hposition(9) & (hposition(10) & ((\LessThan0~8_combout\) # (!\chooseRes~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(9),
	datab => \chooseRes~input_o\,
	datac => \LessThan0~8_combout\,
	datad => hposition(10),
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X55_Y31_N26
\LessThan0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (!hposition(31) & ((\LessThan0~9_combout\) # (!\LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hposition(31),
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~10_combout\);

-- Location: FF_X54_Y32_N1
\hposition[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[0]~32_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(0));

-- Location: LCCOMB_X54_Y32_N2
\hposition[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[1]~34_combout\ = (hposition(1) & (!\hposition[0]~33\)) # (!hposition(1) & ((\hposition[0]~33\) # (GND)))
-- \hposition[1]~35\ = CARRY((!\hposition[0]~33\) # (!hposition(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(1),
	datad => VCC,
	cin => \hposition[0]~33\,
	combout => \hposition[1]~34_combout\,
	cout => \hposition[1]~35\);

-- Location: FF_X54_Y32_N3
\hposition[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[1]~34_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(1));

-- Location: LCCOMB_X54_Y32_N4
\hposition[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[2]~36_combout\ = (hposition(2) & (\hposition[1]~35\ $ (GND))) # (!hposition(2) & (!\hposition[1]~35\ & VCC))
-- \hposition[2]~37\ = CARRY((hposition(2) & !\hposition[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(2),
	datad => VCC,
	cin => \hposition[1]~35\,
	combout => \hposition[2]~36_combout\,
	cout => \hposition[2]~37\);

-- Location: FF_X54_Y32_N5
\hposition[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[2]~36_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(2));

-- Location: LCCOMB_X54_Y32_N6
\hposition[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[3]~38_combout\ = (hposition(3) & (!\hposition[2]~37\)) # (!hposition(3) & ((\hposition[2]~37\) # (GND)))
-- \hposition[3]~39\ = CARRY((!\hposition[2]~37\) # (!hposition(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(3),
	datad => VCC,
	cin => \hposition[2]~37\,
	combout => \hposition[3]~38_combout\,
	cout => \hposition[3]~39\);

-- Location: FF_X54_Y32_N7
\hposition[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[3]~38_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(3));

-- Location: LCCOMB_X54_Y32_N8
\hposition[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[4]~40_combout\ = (hposition(4) & (\hposition[3]~39\ $ (GND))) # (!hposition(4) & (!\hposition[3]~39\ & VCC))
-- \hposition[4]~41\ = CARRY((hposition(4) & !\hposition[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(4),
	datad => VCC,
	cin => \hposition[3]~39\,
	combout => \hposition[4]~40_combout\,
	cout => \hposition[4]~41\);

-- Location: FF_X54_Y32_N9
\hposition[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[4]~40_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(4));

-- Location: LCCOMB_X54_Y32_N10
\hposition[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[5]~42_combout\ = (hposition(5) & (!\hposition[4]~41\)) # (!hposition(5) & ((\hposition[4]~41\) # (GND)))
-- \hposition[5]~43\ = CARRY((!\hposition[4]~41\) # (!hposition(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(5),
	datad => VCC,
	cin => \hposition[4]~41\,
	combout => \hposition[5]~42_combout\,
	cout => \hposition[5]~43\);

-- Location: FF_X54_Y32_N11
\hposition[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[5]~42_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(5));

-- Location: LCCOMB_X54_Y32_N12
\hposition[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[6]~44_combout\ = (hposition(6) & (\hposition[5]~43\ $ (GND))) # (!hposition(6) & (!\hposition[5]~43\ & VCC))
-- \hposition[6]~45\ = CARRY((hposition(6) & !\hposition[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(6),
	datad => VCC,
	cin => \hposition[5]~43\,
	combout => \hposition[6]~44_combout\,
	cout => \hposition[6]~45\);

-- Location: FF_X54_Y32_N13
\hposition[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[6]~44_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(6));

-- Location: LCCOMB_X54_Y32_N14
\hposition[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[7]~46_combout\ = (hposition(7) & (!\hposition[6]~45\)) # (!hposition(7) & ((\hposition[6]~45\) # (GND)))
-- \hposition[7]~47\ = CARRY((!\hposition[6]~45\) # (!hposition(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(7),
	datad => VCC,
	cin => \hposition[6]~45\,
	combout => \hposition[7]~46_combout\,
	cout => \hposition[7]~47\);

-- Location: FF_X54_Y32_N15
\hposition[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[7]~46_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(7));

-- Location: LCCOMB_X54_Y32_N16
\hposition[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[8]~48_combout\ = (hposition(8) & (\hposition[7]~47\ $ (GND))) # (!hposition(8) & (!\hposition[7]~47\ & VCC))
-- \hposition[8]~49\ = CARRY((hposition(8) & !\hposition[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(8),
	datad => VCC,
	cin => \hposition[7]~47\,
	combout => \hposition[8]~48_combout\,
	cout => \hposition[8]~49\);

-- Location: FF_X54_Y32_N17
\hposition[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[8]~48_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(8));

-- Location: FF_X54_Y32_N19
\hposition[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \hposition[9]~50_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(9));

-- Location: LCCOMB_X52_Y29_N22
\LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = \chooseRes~input_o\ $ (hposition(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chooseRes~input_o\,
	datac => hposition(9),
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X52_Y29_N28
\LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = (((!hposition(0)) # (!hposition(2))) # (!hposition(3))) # (!hposition(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(1),
	datab => hposition(3),
	datac => hposition(2),
	datad => hposition(0),
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X52_Y29_N30
\LessThan6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~2_combout\ = (\LessThan6~1_combout\ & (!hposition(4) & (hposition(5) $ (\chooseRes~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(5),
	datab => \LessThan6~1_combout\,
	datac => \chooseRes~input_o\,
	datad => hposition(4),
	combout => \LessThan6~2_combout\);

-- Location: LCCOMB_X52_Y29_N12
\LessThan6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~3_combout\ = (\LessThan6~2_combout\) # (((!\chooseRes~input_o\ & !hposition(5))) # (!hposition(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~2_combout\,
	datab => hposition(6),
	datac => \chooseRes~input_o\,
	datad => hposition(5),
	combout => \LessThan6~3_combout\);

-- Location: LCCOMB_X52_Y29_N10
\LessThan6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~4_combout\ = (hposition(7) & (!hposition(8) & ((\LessThan6~3_combout\) # (!\chooseRes~input_o\)))) # (!hposition(7) & (((!\chooseRes~input_o\ & \LessThan6~3_combout\)) # (!hposition(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(7),
	datab => hposition(8),
	datac => \chooseRes~input_o\,
	datad => \LessThan6~3_combout\,
	combout => \LessThan6~4_combout\);

-- Location: LCCOMB_X52_Y29_N2
\LessThan7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (hposition(9) & ((hposition(7) & (\chooseRes~input_o\ & hposition(8))) # (!hposition(7) & (!\chooseRes~input_o\ & !hposition(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(7),
	datab => \chooseRes~input_o\,
	datac => hposition(9),
	datad => hposition(8),
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X52_Y29_N14
\LessThan7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = (hposition(4) & (\chooseRes~input_o\ $ (!hposition(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hposition(4),
	datac => \chooseRes~input_o\,
	datad => hposition(5),
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X52_Y29_N24
\LessThan7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = (\LessThan7~0_combout\ & (\LessThan7~1_combout\ & (\chooseRes~input_o\ $ (hposition(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chooseRes~input_o\,
	datab => \LessThan7~0_combout\,
	datac => \LessThan7~1_combout\,
	datad => hposition(6),
	combout => \LessThan7~2_combout\);

-- Location: LCCOMB_X55_Y31_N28
\process_0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~11_combout\ = (!hposition(31) & (\LessThan0~6_combout\ & !hposition(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hposition(31),
	datac => \LessThan0~6_combout\,
	datad => hposition(10),
	combout => \process_0~11_combout\);

-- Location: LCCOMB_X49_Y29_N0
\vposition[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[0]~32_combout\ = vposition(0) $ (VCC)
-- \vposition[0]~33\ = CARRY(vposition(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vposition(0),
	datad => VCC,
	combout => \vposition[0]~32_combout\,
	cout => \vposition[0]~33\);

-- Location: LCCOMB_X49_Y29_N18
\vposition[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[9]~50_combout\ = (vposition(9) & (!\vposition[8]~49\)) # (!vposition(9) & ((\vposition[8]~49\) # (GND)))
-- \vposition[9]~51\ = CARRY((!\vposition[8]~49\) # (!vposition(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(9),
	datad => VCC,
	cin => \vposition[8]~49\,
	combout => \vposition[9]~50_combout\,
	cout => \vposition[9]~51\);

-- Location: LCCOMB_X49_Y29_N20
\vposition[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[10]~52_combout\ = (vposition(10) & (\vposition[9]~51\ $ (GND))) # (!vposition(10) & (!\vposition[9]~51\ & VCC))
-- \vposition[10]~53\ = CARRY((vposition(10) & !\vposition[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(10),
	datad => VCC,
	cin => \vposition[9]~51\,
	combout => \vposition[10]~52_combout\,
	cout => \vposition[10]~53\);

-- Location: FF_X49_Y29_N21
\vposition[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[10]~52_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(10));

-- Location: LCCOMB_X49_Y29_N22
\vposition[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[11]~54_combout\ = (vposition(11) & (!\vposition[10]~53\)) # (!vposition(11) & ((\vposition[10]~53\) # (GND)))
-- \vposition[11]~55\ = CARRY((!\vposition[10]~53\) # (!vposition(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(11),
	datad => VCC,
	cin => \vposition[10]~53\,
	combout => \vposition[11]~54_combout\,
	cout => \vposition[11]~55\);

-- Location: FF_X49_Y29_N23
\vposition[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[11]~54_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(11));

-- Location: LCCOMB_X49_Y29_N24
\vposition[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[12]~56_combout\ = (vposition(12) & (\vposition[11]~55\ $ (GND))) # (!vposition(12) & (!\vposition[11]~55\ & VCC))
-- \vposition[12]~57\ = CARRY((vposition(12) & !\vposition[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(12),
	datad => VCC,
	cin => \vposition[11]~55\,
	combout => \vposition[12]~56_combout\,
	cout => \vposition[12]~57\);

-- Location: FF_X49_Y29_N25
\vposition[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[12]~56_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(12));

-- Location: LCCOMB_X49_Y29_N26
\vposition[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[13]~58_combout\ = (vposition(13) & (!\vposition[12]~57\)) # (!vposition(13) & ((\vposition[12]~57\) # (GND)))
-- \vposition[13]~59\ = CARRY((!\vposition[12]~57\) # (!vposition(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(13),
	datad => VCC,
	cin => \vposition[12]~57\,
	combout => \vposition[13]~58_combout\,
	cout => \vposition[13]~59\);

-- Location: FF_X49_Y29_N27
\vposition[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[13]~58_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(13));

-- Location: LCCOMB_X49_Y29_N28
\vposition[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[14]~60_combout\ = (vposition(14) & (\vposition[13]~59\ $ (GND))) # (!vposition(14) & (!\vposition[13]~59\ & VCC))
-- \vposition[14]~61\ = CARRY((vposition(14) & !\vposition[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(14),
	datad => VCC,
	cin => \vposition[13]~59\,
	combout => \vposition[14]~60_combout\,
	cout => \vposition[14]~61\);

-- Location: FF_X49_Y29_N29
\vposition[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[14]~60_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(14));

-- Location: LCCOMB_X49_Y29_N30
\vposition[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[15]~62_combout\ = (vposition(15) & (!\vposition[14]~61\)) # (!vposition(15) & ((\vposition[14]~61\) # (GND)))
-- \vposition[15]~63\ = CARRY((!\vposition[14]~61\) # (!vposition(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(15),
	datad => VCC,
	cin => \vposition[14]~61\,
	combout => \vposition[15]~62_combout\,
	cout => \vposition[15]~63\);

-- Location: FF_X49_Y29_N31
\vposition[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[15]~62_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(15));

-- Location: LCCOMB_X49_Y28_N0
\vposition[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[16]~64_combout\ = (vposition(16) & (\vposition[15]~63\ $ (GND))) # (!vposition(16) & (!\vposition[15]~63\ & VCC))
-- \vposition[16]~65\ = CARRY((vposition(16) & !\vposition[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(16),
	datad => VCC,
	cin => \vposition[15]~63\,
	combout => \vposition[16]~64_combout\,
	cout => \vposition[16]~65\);

-- Location: FF_X49_Y28_N1
\vposition[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[16]~64_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(16));

-- Location: LCCOMB_X49_Y28_N2
\vposition[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[17]~66_combout\ = (vposition(17) & (!\vposition[16]~65\)) # (!vposition(17) & ((\vposition[16]~65\) # (GND)))
-- \vposition[17]~67\ = CARRY((!\vposition[16]~65\) # (!vposition(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(17),
	datad => VCC,
	cin => \vposition[16]~65\,
	combout => \vposition[17]~66_combout\,
	cout => \vposition[17]~67\);

-- Location: FF_X49_Y28_N3
\vposition[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[17]~66_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(17));

-- Location: LCCOMB_X49_Y28_N4
\vposition[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[18]~68_combout\ = (vposition(18) & (\vposition[17]~67\ $ (GND))) # (!vposition(18) & (!\vposition[17]~67\ & VCC))
-- \vposition[18]~69\ = CARRY((vposition(18) & !\vposition[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(18),
	datad => VCC,
	cin => \vposition[17]~67\,
	combout => \vposition[18]~68_combout\,
	cout => \vposition[18]~69\);

-- Location: FF_X49_Y28_N5
\vposition[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[18]~68_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(18));

-- Location: LCCOMB_X49_Y28_N6
\vposition[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[19]~70_combout\ = (vposition(19) & (!\vposition[18]~69\)) # (!vposition(19) & ((\vposition[18]~69\) # (GND)))
-- \vposition[19]~71\ = CARRY((!\vposition[18]~69\) # (!vposition(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(19),
	datad => VCC,
	cin => \vposition[18]~69\,
	combout => \vposition[19]~70_combout\,
	cout => \vposition[19]~71\);

-- Location: FF_X49_Y28_N7
\vposition[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[19]~70_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(19));

-- Location: LCCOMB_X49_Y28_N8
\vposition[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[20]~72_combout\ = (vposition(20) & (\vposition[19]~71\ $ (GND))) # (!vposition(20) & (!\vposition[19]~71\ & VCC))
-- \vposition[20]~73\ = CARRY((vposition(20) & !\vposition[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(20),
	datad => VCC,
	cin => \vposition[19]~71\,
	combout => \vposition[20]~72_combout\,
	cout => \vposition[20]~73\);

-- Location: FF_X49_Y28_N9
\vposition[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[20]~72_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(20));

-- Location: LCCOMB_X49_Y28_N10
\vposition[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[21]~74_combout\ = (vposition(21) & (!\vposition[20]~73\)) # (!vposition(21) & ((\vposition[20]~73\) # (GND)))
-- \vposition[21]~75\ = CARRY((!\vposition[20]~73\) # (!vposition(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(21),
	datad => VCC,
	cin => \vposition[20]~73\,
	combout => \vposition[21]~74_combout\,
	cout => \vposition[21]~75\);

-- Location: FF_X49_Y28_N11
\vposition[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[21]~74_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(21));

-- Location: LCCOMB_X49_Y28_N12
\vposition[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[22]~76_combout\ = (vposition(22) & (\vposition[21]~75\ $ (GND))) # (!vposition(22) & (!\vposition[21]~75\ & VCC))
-- \vposition[22]~77\ = CARRY((vposition(22) & !\vposition[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(22),
	datad => VCC,
	cin => \vposition[21]~75\,
	combout => \vposition[22]~76_combout\,
	cout => \vposition[22]~77\);

-- Location: FF_X49_Y28_N13
\vposition[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[22]~76_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(22));

-- Location: LCCOMB_X49_Y28_N14
\vposition[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[23]~78_combout\ = (vposition(23) & (!\vposition[22]~77\)) # (!vposition(23) & ((\vposition[22]~77\) # (GND)))
-- \vposition[23]~79\ = CARRY((!\vposition[22]~77\) # (!vposition(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(23),
	datad => VCC,
	cin => \vposition[22]~77\,
	combout => \vposition[23]~78_combout\,
	cout => \vposition[23]~79\);

-- Location: FF_X49_Y28_N15
\vposition[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[23]~78_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(23));

-- Location: LCCOMB_X49_Y28_N16
\vposition[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[24]~80_combout\ = (vposition(24) & (\vposition[23]~79\ $ (GND))) # (!vposition(24) & (!\vposition[23]~79\ & VCC))
-- \vposition[24]~81\ = CARRY((vposition(24) & !\vposition[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(24),
	datad => VCC,
	cin => \vposition[23]~79\,
	combout => \vposition[24]~80_combout\,
	cout => \vposition[24]~81\);

-- Location: FF_X49_Y28_N17
\vposition[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[24]~80_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(24));

-- Location: LCCOMB_X49_Y28_N18
\vposition[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[25]~82_combout\ = (vposition(25) & (!\vposition[24]~81\)) # (!vposition(25) & ((\vposition[24]~81\) # (GND)))
-- \vposition[25]~83\ = CARRY((!\vposition[24]~81\) # (!vposition(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(25),
	datad => VCC,
	cin => \vposition[24]~81\,
	combout => \vposition[25]~82_combout\,
	cout => \vposition[25]~83\);

-- Location: FF_X49_Y28_N19
\vposition[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[25]~82_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(25));

-- Location: LCCOMB_X49_Y28_N20
\vposition[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[26]~84_combout\ = (vposition(26) & (\vposition[25]~83\ $ (GND))) # (!vposition(26) & (!\vposition[25]~83\ & VCC))
-- \vposition[26]~85\ = CARRY((vposition(26) & !\vposition[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(26),
	datad => VCC,
	cin => \vposition[25]~83\,
	combout => \vposition[26]~84_combout\,
	cout => \vposition[26]~85\);

-- Location: FF_X49_Y28_N21
\vposition[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[26]~84_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(26));

-- Location: LCCOMB_X49_Y28_N22
\vposition[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[27]~86_combout\ = (vposition(27) & (!\vposition[26]~85\)) # (!vposition(27) & ((\vposition[26]~85\) # (GND)))
-- \vposition[27]~87\ = CARRY((!\vposition[26]~85\) # (!vposition(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(27),
	datad => VCC,
	cin => \vposition[26]~85\,
	combout => \vposition[27]~86_combout\,
	cout => \vposition[27]~87\);

-- Location: FF_X49_Y28_N23
\vposition[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[27]~86_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(27));

-- Location: LCCOMB_X49_Y28_N24
\vposition[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[28]~88_combout\ = (vposition(28) & (\vposition[27]~87\ $ (GND))) # (!vposition(28) & (!\vposition[27]~87\ & VCC))
-- \vposition[28]~89\ = CARRY((vposition(28) & !\vposition[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(28),
	datad => VCC,
	cin => \vposition[27]~87\,
	combout => \vposition[28]~88_combout\,
	cout => \vposition[28]~89\);

-- Location: FF_X49_Y28_N25
\vposition[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[28]~88_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(28));

-- Location: LCCOMB_X49_Y28_N26
\vposition[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[29]~90_combout\ = (vposition(29) & (!\vposition[28]~89\)) # (!vposition(29) & ((\vposition[28]~89\) # (GND)))
-- \vposition[29]~91\ = CARRY((!\vposition[28]~89\) # (!vposition(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(29),
	datad => VCC,
	cin => \vposition[28]~89\,
	combout => \vposition[29]~90_combout\,
	cout => \vposition[29]~91\);

-- Location: FF_X49_Y28_N27
\vposition[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[29]~90_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(29));

-- Location: LCCOMB_X50_Y28_N10
\LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (!vposition(26) & (!vposition(27) & (!vposition(29) & !vposition(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(26),
	datab => vposition(27),
	datac => vposition(29),
	datad => vposition(28),
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X49_Y28_N28
\vposition[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[30]~92_combout\ = (vposition(30) & (\vposition[29]~91\ $ (GND))) # (!vposition(30) & (!\vposition[29]~91\ & VCC))
-- \vposition[30]~93\ = CARRY((vposition(30) & !\vposition[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(30),
	datad => VCC,
	cin => \vposition[29]~91\,
	combout => \vposition[30]~92_combout\,
	cout => \vposition[30]~93\);

-- Location: FF_X49_Y28_N29
\vposition[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[30]~92_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(30));

-- Location: LCCOMB_X49_Y28_N30
\vposition[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[31]~94_combout\ = vposition(31) $ (\vposition[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(31),
	cin => \vposition[30]~93\,
	combout => \vposition[31]~94_combout\);

-- Location: FF_X49_Y28_N31
\vposition[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[31]~94_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(31));

-- Location: LCCOMB_X50_Y28_N30
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!vposition(16) & (!vposition(17) & (!vposition(14) & !vposition(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(16),
	datab => vposition(17),
	datac => vposition(14),
	datad => vposition(15),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X50_Y28_N28
\LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!vposition(21) & (!vposition(19) & (!vposition(18) & !vposition(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(21),
	datab => vposition(19),
	datac => vposition(18),
	datad => vposition(20),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X50_Y28_N8
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!vposition(10) & (!vposition(13) & (!vposition(11) & !vposition(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(10),
	datab => vposition(13),
	datac => vposition(11),
	datad => vposition(12),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X50_Y28_N18
\LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!vposition(22) & (!vposition(25) & (!vposition(24) & !vposition(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(22),
	datab => vposition(25),
	datac => vposition(24),
	datad => vposition(23),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X50_Y28_N16
\LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (\LessThan1~1_combout\ & (\LessThan1~2_combout\ & (\LessThan1~0_combout\ & \LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => \LessThan1~2_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X47_Y29_N2
\LessThan1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (vposition(2) & ((vposition(1)) # ((!vposition(5) & vposition(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(1),
	datab => vposition(2),
	datac => vposition(5),
	datad => vposition(0),
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X47_Y29_N0
\LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (vposition(4)) # ((vposition(3) & ((vposition(5)) # (\LessThan1~6_combout\))) # (!vposition(3) & (vposition(5) & \LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(4),
	datab => vposition(3),
	datac => vposition(5),
	datad => \LessThan1~6_combout\,
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X47_Y29_N6
\LessThan1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (\chooseRes~input_o\ & (((!\LessThan1~7_combout\) # (!vposition(5))))) # (!\chooseRes~input_o\ & (!vposition(8) & (!vposition(5) & !\LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chooseRes~input_o\,
	datab => vposition(8),
	datac => vposition(5),
	datad => \LessThan1~7_combout\,
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X47_Y29_N20
\LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = (vposition(9) & ((vposition(6)) # ((vposition(7)) # (!\LessThan1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(9),
	datab => vposition(6),
	datac => vposition(7),
	datad => \LessThan1~8_combout\,
	combout => \LessThan1~9_combout\);

-- Location: LCCOMB_X47_Y29_N30
\LessThan1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = (vposition(30)) # ((\LessThan1~9_combout\ & ((vposition(8)) # (!\chooseRes~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chooseRes~input_o\,
	datab => vposition(8),
	datac => vposition(30),
	datad => \LessThan1~9_combout\,
	combout => \LessThan1~10_combout\);

-- Location: LCCOMB_X50_Y28_N0
\LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~11_combout\ = (!vposition(31) & (((\LessThan1~10_combout\) # (!\LessThan1~4_combout\)) # (!\LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~5_combout\,
	datab => vposition(31),
	datac => \LessThan1~4_combout\,
	datad => \LessThan1~10_combout\,
	combout => \LessThan1~11_combout\);

-- Location: FF_X49_Y27_N1
\vposition[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	asdata => \vposition[0]~32_combout\,
	sclr => \LessThan1~11_combout\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(0));

-- Location: LCCOMB_X49_Y29_N2
\vposition[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[1]~34_combout\ = (vposition(1) & (!\vposition[0]~33\)) # (!vposition(1) & ((\vposition[0]~33\) # (GND)))
-- \vposition[1]~35\ = CARRY((!\vposition[0]~33\) # (!vposition(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(1),
	datad => VCC,
	cin => \vposition[0]~33\,
	combout => \vposition[1]~34_combout\,
	cout => \vposition[1]~35\);

-- Location: FF_X49_Y29_N3
\vposition[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[1]~34_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(1));

-- Location: LCCOMB_X49_Y29_N4
\vposition[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[2]~36_combout\ = (vposition(2) & (\vposition[1]~35\ $ (GND))) # (!vposition(2) & (!\vposition[1]~35\ & VCC))
-- \vposition[2]~37\ = CARRY((vposition(2) & !\vposition[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(2),
	datad => VCC,
	cin => \vposition[1]~35\,
	combout => \vposition[2]~36_combout\,
	cout => \vposition[2]~37\);

-- Location: FF_X50_Y29_N15
\vposition[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	asdata => \vposition[2]~36_combout\,
	sclr => \LessThan1~11_combout\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(2));

-- Location: LCCOMB_X49_Y29_N6
\vposition[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[3]~38_combout\ = (vposition(3) & (!\vposition[2]~37\)) # (!vposition(3) & ((\vposition[2]~37\) # (GND)))
-- \vposition[3]~39\ = CARRY((!\vposition[2]~37\) # (!vposition(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(3),
	datad => VCC,
	cin => \vposition[2]~37\,
	combout => \vposition[3]~38_combout\,
	cout => \vposition[3]~39\);

-- Location: FF_X50_Y29_N9
\vposition[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	asdata => \vposition[3]~38_combout\,
	sclr => \LessThan1~11_combout\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(3));

-- Location: LCCOMB_X49_Y29_N8
\vposition[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[4]~40_combout\ = (vposition(4) & (\vposition[3]~39\ $ (GND))) # (!vposition(4) & (!\vposition[3]~39\ & VCC))
-- \vposition[4]~41\ = CARRY((vposition(4) & !\vposition[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(4),
	datad => VCC,
	cin => \vposition[3]~39\,
	combout => \vposition[4]~40_combout\,
	cout => \vposition[4]~41\);

-- Location: FF_X50_Y29_N29
\vposition[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	asdata => \vposition[4]~40_combout\,
	sclr => \LessThan1~11_combout\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(4));

-- Location: LCCOMB_X49_Y29_N10
\vposition[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[5]~42_combout\ = (vposition(5) & (!\vposition[4]~41\)) # (!vposition(5) & ((\vposition[4]~41\) # (GND)))
-- \vposition[5]~43\ = CARRY((!\vposition[4]~41\) # (!vposition(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(5),
	datad => VCC,
	cin => \vposition[4]~41\,
	combout => \vposition[5]~42_combout\,
	cout => \vposition[5]~43\);

-- Location: FF_X50_Y29_N11
\vposition[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	asdata => \vposition[5]~42_combout\,
	sclr => \LessThan1~11_combout\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(5));

-- Location: LCCOMB_X49_Y29_N12
\vposition[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[6]~44_combout\ = (vposition(6) & (\vposition[5]~43\ $ (GND))) # (!vposition(6) & (!\vposition[5]~43\ & VCC))
-- \vposition[6]~45\ = CARRY((vposition(6) & !\vposition[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(6),
	datad => VCC,
	cin => \vposition[5]~43\,
	combout => \vposition[6]~44_combout\,
	cout => \vposition[6]~45\);

-- Location: FF_X50_Y29_N23
\vposition[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	asdata => \vposition[6]~44_combout\,
	sclr => \LessThan1~11_combout\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(6));

-- Location: LCCOMB_X49_Y29_N14
\vposition[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[7]~46_combout\ = (vposition(7) & (!\vposition[6]~45\)) # (!vposition(7) & ((\vposition[6]~45\) # (GND)))
-- \vposition[7]~47\ = CARRY((!\vposition[6]~45\) # (!vposition(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(7),
	datad => VCC,
	cin => \vposition[6]~45\,
	combout => \vposition[7]~46_combout\,
	cout => \vposition[7]~47\);

-- Location: FF_X50_Y29_N25
\vposition[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	asdata => \vposition[7]~46_combout\,
	sclr => \LessThan1~11_combout\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(7));

-- Location: LCCOMB_X49_Y29_N16
\vposition[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[8]~48_combout\ = (vposition(8) & (\vposition[7]~47\ $ (GND))) # (!vposition(8) & (!\vposition[7]~47\ & VCC))
-- \vposition[8]~49\ = CARRY((vposition(8) & !\vposition[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(8),
	datad => VCC,
	cin => \vposition[7]~47\,
	combout => \vposition[8]~48_combout\,
	cout => \vposition[8]~49\);

-- Location: FF_X49_Y29_N17
\vposition[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[8]~48_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(8));

-- Location: FF_X49_Y29_N19
\vposition[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \vposition[9]~50_combout\,
	sclr => \LessThan1~11_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(9));

-- Location: LCCOMB_X51_Y29_N10
\process_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (!vposition(9) & !vposition(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => vposition(9),
	datad => vposition(31),
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X51_Y29_N16
\process_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (\process_0~8_combout\ & (\LessThan1~5_combout\ & (!vposition(30) & \LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \LessThan1~5_combout\,
	datac => vposition(30),
	datad => \LessThan1~4_combout\,
	combout => \process_0~9_combout\);

-- Location: LCCOMB_X52_Y29_N18
\process_0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = (\process_0~9_combout\ & (((!\LessThan7~2_combout\) # (!hposition(0))) # (!hposition(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(1),
	datab => hposition(0),
	datac => \process_0~9_combout\,
	datad => \LessThan7~2_combout\,
	combout => \process_0~10_combout\);

-- Location: LCCOMB_X52_Y29_N4
\process_0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~12_combout\ = (\process_0~11_combout\ & (\process_0~10_combout\ & ((!hposition(2)) # (!\LessThan7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~2_combout\,
	datab => hposition(2),
	datac => \process_0~11_combout\,
	datad => \process_0~10_combout\,
	combout => \process_0~12_combout\);

-- Location: LCCOMB_X52_Y29_N8
\process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (((!hposition(5) & !\chooseRes~input_o\)) # (!hposition(6))) # (!\LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(5),
	datab => \LessThan7~0_combout\,
	datac => \chooseRes~input_o\,
	datad => hposition(6),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X47_Y29_N12
\process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (((!vposition(2) & !vposition(3))) # (!vposition(6))) # (!vposition(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(8),
	datab => vposition(6),
	datac => vposition(2),
	datad => vposition(3),
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X47_Y29_N8
\process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (vposition(7) & (((!vposition(8))))) # (!vposition(7) & ((vposition(8)) # ((vposition(6) & vposition(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(7),
	datab => vposition(6),
	datac => vposition(5),
	datad => vposition(8),
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X47_Y29_N14
\process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (((!vposition(4) & !vposition(5))) # (!vposition(8))) # (!vposition(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(4),
	datab => vposition(6),
	datac => vposition(5),
	datad => vposition(8),
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X47_Y29_N24
\LessThan9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (vposition(0) & (vposition(8) & (vposition(1) & vposition(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(0),
	datab => vposition(8),
	datac => vposition(1),
	datad => vposition(6),
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X55_Y32_N8
\process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\chooseRes~input_o\ & (hposition(9))) # (!\chooseRes~input_o\ & (((!hposition(8) & !hposition(7))) # (!hposition(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chooseRes~input_o\,
	datab => hposition(9),
	datac => hposition(8),
	datad => hposition(7),
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X47_Y29_N18
\LessThan8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (!vposition(7) & (!vposition(3) & (!vposition(2) & !vposition(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(7),
	datab => vposition(3),
	datac => vposition(2),
	datad => vposition(8),
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X47_Y29_N10
\process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (!\LessThan9~0_combout\ & (\process_0~1_combout\ & ((vposition(4)) # (!\LessThan8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(4),
	datab => \LessThan9~0_combout\,
	datac => \process_0~1_combout\,
	datad => \LessThan8~0_combout\,
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X47_Y29_N26
\process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (\process_0~3_combout\ & (\process_0~5_combout\ & (\process_0~4_combout\ & \process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \process_0~5_combout\,
	datac => \process_0~4_combout\,
	datad => \process_0~2_combout\,
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X51_Y29_N4
\process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (\process_0~0_combout\ & (\process_0~6_combout\ & ((!\LessThan7~2_combout\) # (!hposition(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(3),
	datab => \LessThan7~2_combout\,
	datac => \process_0~0_combout\,
	datad => \process_0~6_combout\,
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X52_Y26_N2
\process_0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~13_combout\ = (\process_0~12_combout\ & (\process_0~7_combout\ & ((\LessThan6~0_combout\) # (!\LessThan6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~0_combout\,
	datab => \LessThan6~4_combout\,
	datac => \process_0~12_combout\,
	datad => \process_0~7_combout\,
	combout => \process_0~13_combout\);

-- Location: LCCOMB_X52_Y31_N0
\Add12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = hposition(0) $ (VCC)
-- \Add12~1\ = CARRY(hposition(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(0),
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: LCCOMB_X52_Y31_N2
\Add12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~2_combout\ = (hposition(1) & (!\Add12~1\)) # (!hposition(1) & ((\Add12~1\) # (GND)))
-- \Add12~3\ = CARRY((!\Add12~1\) # (!hposition(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(1),
	datad => VCC,
	cin => \Add12~1\,
	combout => \Add12~2_combout\,
	cout => \Add12~3\);

-- Location: LCCOMB_X52_Y31_N4
\Add12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = (hposition(2) & (\Add12~3\ $ (GND))) # (!hposition(2) & (!\Add12~3\ & VCC))
-- \Add12~5\ = CARRY((hposition(2) & !\Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(2),
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: LCCOMB_X52_Y31_N6
\Add12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (hposition(3) & (!\Add12~5\)) # (!hposition(3) & ((\Add12~5\) # (GND)))
-- \Add12~7\ = CARRY((!\Add12~5\) # (!hposition(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(3),
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: LCCOMB_X52_Y31_N8
\Add12~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = (hposition(4) & ((GND) # (!\Add12~7\))) # (!hposition(4) & (\Add12~7\ $ (GND)))
-- \Add12~9\ = CARRY((hposition(4)) # (!\Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(4),
	datad => VCC,
	cin => \Add12~7\,
	combout => \Add12~8_combout\,
	cout => \Add12~9\);

-- Location: LCCOMB_X52_Y31_N10
\Add12~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~10_combout\ = (\chooseRes~input_o\ & ((hposition(5) & (\Add12~9\ & VCC)) # (!hposition(5) & (!\Add12~9\)))) # (!\chooseRes~input_o\ & ((hposition(5) & (!\Add12~9\)) # (!hposition(5) & ((\Add12~9\) # (GND)))))
-- \Add12~11\ = CARRY((\chooseRes~input_o\ & (!hposition(5) & !\Add12~9\)) # (!\chooseRes~input_o\ & ((!\Add12~9\) # (!hposition(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \chooseRes~input_o\,
	datab => hposition(5),
	datad => VCC,
	cin => \Add12~9\,
	combout => \Add12~10_combout\,
	cout => \Add12~11\);

-- Location: LCCOMB_X52_Y31_N12
\Add12~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~12_combout\ = (hposition(6) & (\Add12~11\ $ (GND))) # (!hposition(6) & (!\Add12~11\ & VCC))
-- \Add12~13\ = CARRY((hposition(6) & !\Add12~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(6),
	datad => VCC,
	cin => \Add12~11\,
	combout => \Add12~12_combout\,
	cout => \Add12~13\);

-- Location: LCCOMB_X52_Y31_N14
\Add12~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~14_combout\ = (hposition(7) & ((\chooseRes~input_o\ & (!\Add12~13\)) # (!\chooseRes~input_o\ & (\Add12~13\ & VCC)))) # (!hposition(7) & ((\chooseRes~input_o\ & ((\Add12~13\) # (GND))) # (!\chooseRes~input_o\ & (!\Add12~13\))))
-- \Add12~15\ = CARRY((hposition(7) & (\chooseRes~input_o\ & !\Add12~13\)) # (!hposition(7) & ((\chooseRes~input_o\) # (!\Add12~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(7),
	datab => \chooseRes~input_o\,
	datad => VCC,
	cin => \Add12~13\,
	combout => \Add12~14_combout\,
	cout => \Add12~15\);

-- Location: LCCOMB_X52_Y31_N16
\Add12~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~16_combout\ = ((hposition(8) $ (\chooseRes~input_o\ $ (!\Add12~15\)))) # (GND)
-- \Add12~17\ = CARRY((hposition(8) & ((\chooseRes~input_o\) # (!\Add12~15\))) # (!hposition(8) & (\chooseRes~input_o\ & !\Add12~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(8),
	datab => \chooseRes~input_o\,
	datad => VCC,
	cin => \Add12~15\,
	combout => \Add12~16_combout\,
	cout => \Add12~17\);

-- Location: LCCOMB_X52_Y31_N18
\Add12~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~18_combout\ = (hposition(9) & ((\chooseRes~input_o\ & (!\Add12~17\)) # (!\chooseRes~input_o\ & (\Add12~17\ & VCC)))) # (!hposition(9) & ((\chooseRes~input_o\ & ((\Add12~17\) # (GND))) # (!\chooseRes~input_o\ & (!\Add12~17\))))
-- \Add12~19\ = CARRY((hposition(9) & (\chooseRes~input_o\ & !\Add12~17\)) # (!hposition(9) & ((\chooseRes~input_o\) # (!\Add12~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(9),
	datab => \chooseRes~input_o\,
	datad => VCC,
	cin => \Add12~17\,
	combout => \Add12~18_combout\,
	cout => \Add12~19\);

-- Location: LCCOMB_X52_Y31_N20
\Add12~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~20_combout\ = (hposition(10) & ((GND) # (!\Add12~19\))) # (!hposition(10) & (\Add12~19\ $ (GND)))
-- \Add12~21\ = CARRY((hposition(10)) # (!\Add12~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(10),
	datad => VCC,
	cin => \Add12~19\,
	combout => \Add12~20_combout\,
	cout => \Add12~21\);

-- Location: LCCOMB_X52_Y31_N22
\Add12~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~22_combout\ = (hposition(11) & (\Add12~21\ & VCC)) # (!hposition(11) & (!\Add12~21\))
-- \Add12~23\ = CARRY((!hposition(11) & !\Add12~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(11),
	datad => VCC,
	cin => \Add12~21\,
	combout => \Add12~22_combout\,
	cout => \Add12~23\);

-- Location: LCCOMB_X52_Y31_N24
\Add12~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~24_combout\ = (hposition(12) & ((GND) # (!\Add12~23\))) # (!hposition(12) & (\Add12~23\ $ (GND)))
-- \Add12~25\ = CARRY((hposition(12)) # (!\Add12~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(12),
	datad => VCC,
	cin => \Add12~23\,
	combout => \Add12~24_combout\,
	cout => \Add12~25\);

-- Location: LCCOMB_X52_Y31_N26
\Add12~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~26_combout\ = (hposition(13) & (\Add12~25\ & VCC)) # (!hposition(13) & (!\Add12~25\))
-- \Add12~27\ = CARRY((!hposition(13) & !\Add12~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(13),
	datad => VCC,
	cin => \Add12~25\,
	combout => \Add12~26_combout\,
	cout => \Add12~27\);

-- Location: LCCOMB_X52_Y31_N28
\Add12~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~28_combout\ = (hposition(14) & ((GND) # (!\Add12~27\))) # (!hposition(14) & (\Add12~27\ $ (GND)))
-- \Add12~29\ = CARRY((hposition(14)) # (!\Add12~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(14),
	datad => VCC,
	cin => \Add12~27\,
	combout => \Add12~28_combout\,
	cout => \Add12~29\);

-- Location: LCCOMB_X52_Y31_N30
\Add12~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~30_combout\ = \Add12~29\ $ (!hposition(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => hposition(15),
	cin => \Add12~29\,
	combout => \Add12~30_combout\);

-- Location: LCCOMB_X50_Y29_N2
\Add13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add13~0_combout\ = vposition(2) $ (VCC)
-- \Add13~1\ = CARRY(vposition(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vposition(2),
	datad => VCC,
	combout => \Add13~0_combout\,
	cout => \Add13~1\);

-- Location: LCCOMB_X50_Y29_N4
\Add13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add13~2_combout\ = (vposition(3) & (\Add13~1\ & VCC)) # (!vposition(3) & (!\Add13~1\))
-- \Add13~3\ = CARRY((!vposition(3) & !\Add13~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(3),
	datad => VCC,
	cin => \Add13~1\,
	combout => \Add13~2_combout\,
	cout => \Add13~3\);

-- Location: LCCOMB_X50_Y29_N6
\Add13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add13~4_combout\ = (vposition(4) & ((GND) # (!\Add13~3\))) # (!vposition(4) & (\Add13~3\ $ (GND)))
-- \Add13~5\ = CARRY((vposition(4)) # (!\Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(4),
	datad => VCC,
	cin => \Add13~3\,
	combout => \Add13~4_combout\,
	cout => \Add13~5\);

-- Location: LCCOMB_X50_Y29_N8
\Add13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add13~6_combout\ = (vposition(5) & (!\Add13~5\)) # (!vposition(5) & ((\Add13~5\) # (GND)))
-- \Add13~7\ = CARRY((!\Add13~5\) # (!vposition(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(5),
	datad => VCC,
	cin => \Add13~5\,
	combout => \Add13~6_combout\,
	cout => \Add13~7\);

-- Location: LCCOMB_X50_Y29_N10
\Add13~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add13~8_combout\ = (vposition(6) & (\Add13~7\ $ (GND))) # (!vposition(6) & (!\Add13~7\ & VCC))
-- \Add13~9\ = CARRY((vposition(6) & !\Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(6),
	datad => VCC,
	cin => \Add13~7\,
	combout => \Add13~8_combout\,
	cout => \Add13~9\);

-- Location: LCCOMB_X50_Y29_N12
\Add13~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add13~10_combout\ = (vposition(7) & (\Add13~9\ & VCC)) # (!vposition(7) & (!\Add13~9\))
-- \Add13~11\ = CARRY((!vposition(7) & !\Add13~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(7),
	datad => VCC,
	cin => \Add13~9\,
	combout => \Add13~10_combout\,
	cout => \Add13~11\);

-- Location: LCCOMB_X51_Y29_N20
\Mult0|mult_core|romout[1][11]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][11]~17_combout\ = (\Add13~10_combout\ & ((\Add13~6_combout\) # (\Add13~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~6_combout\,
	datac => \Add13~10_combout\,
	datad => \Add13~8_combout\,
	combout => \Mult0|mult_core|romout[1][11]~17_combout\);

-- Location: LCCOMB_X51_Y29_N28
\Mult0|mult_core|romout[1][10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][10]~combout\ = (\Add13~6_combout\ & (((\Add13~8_combout\)))) # (!\Add13~6_combout\ & ((\Add13~10_combout\ & ((!\Add13~8_combout\))) # (!\Add13~10_combout\ & (\Add13~4_combout\ & \Add13~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~6_combout\,
	datab => \Add13~4_combout\,
	datac => \Add13~10_combout\,
	datad => \Add13~8_combout\,
	combout => \Mult0|mult_core|romout[1][10]~combout\);

-- Location: LCCOMB_X51_Y29_N26
\Mult0|mult_core|romout[1][9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][9]~combout\ = (\Add13~6_combout\ & (\Add13~4_combout\ & (!\Add13~10_combout\))) # (!\Add13~6_combout\ & ((\Add13~10_combout\) # ((!\Add13~4_combout\ & \Add13~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~6_combout\,
	datab => \Add13~4_combout\,
	datac => \Add13~10_combout\,
	datad => \Add13~8_combout\,
	combout => \Mult0|mult_core|romout[1][9]~combout\);

-- Location: LCCOMB_X51_Y29_N12
\Mult0|mult_core|romout[1][8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][8]~combout\ = \Add13~10_combout\ $ (((!\Add13~4_combout\ & ((\Add13~6_combout\) # (\Add13~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~6_combout\,
	datab => \Add13~4_combout\,
	datac => \Add13~10_combout\,
	datad => \Add13~8_combout\,
	combout => \Mult0|mult_core|romout[1][8]~combout\);

-- Location: LCCOMB_X49_Y27_N10
\Mult0|mult_core|romout[0][11]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][11]~0_combout\ = (\Add13~2_combout\ & ((\Add13~0_combout\) # (vposition(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~0_combout\,
	datac => \Add13~2_combout\,
	datad => vposition(1),
	combout => \Mult0|mult_core|romout[0][11]~0_combout\);

-- Location: LCCOMB_X50_Y27_N28
\Mult0|mult_core|romout[1][7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][7]~combout\ = (\Add13~6_combout\ & (((!\Add13~8_combout\)))) # (!\Add13~6_combout\ & ((\Add13~8_combout\ & ((\Add13~10_combout\) # (!\Add13~4_combout\))) # (!\Add13~8_combout\ & ((\Add13~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~10_combout\,
	datab => \Add13~6_combout\,
	datac => \Add13~8_combout\,
	datad => \Add13~4_combout\,
	combout => \Mult0|mult_core|romout[1][7]~combout\);

-- Location: LCCOMB_X49_Y27_N12
\Mult0|mult_core|romout[0][10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][10]~combout\ = (\Add13~0_combout\ & ((vposition(1)) # ((vposition(0) & !\Add13~2_combout\)))) # (!\Add13~0_combout\ & (((\Add13~2_combout\ & !vposition(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~0_combout\,
	datab => vposition(0),
	datac => \Add13~2_combout\,
	datad => vposition(1),
	combout => \Mult0|mult_core|romout[0][10]~combout\);

-- Location: LCCOMB_X50_Y27_N2
\Mult0|mult_core|romout[1][6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][6]~1_combout\ = (\Add13~4_combout\ & ((\Add13~6_combout\ & ((\Add13~10_combout\))) # (!\Add13~6_combout\ & ((!\Add13~10_combout\) # (!\Add13~8_combout\))))) # (!\Add13~4_combout\ & (\Add13~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~4_combout\,
	datab => \Add13~6_combout\,
	datac => \Add13~8_combout\,
	datad => \Add13~10_combout\,
	combout => \Mult0|mult_core|romout[1][6]~1_combout\);

-- Location: LCCOMB_X49_Y27_N14
\Mult0|mult_core|romout[0][9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][9]~combout\ = (vposition(0) & ((\Add13~2_combout\ $ (vposition(1))))) # (!vposition(0) & (!vposition(1) & ((\Add13~0_combout\) # (\Add13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~0_combout\,
	datab => vposition(0),
	datac => \Add13~2_combout\,
	datad => vposition(1),
	combout => \Mult0|mult_core|romout[0][9]~combout\);

-- Location: LCCOMB_X50_Y29_N0
\Mult0|mult_core|romout[1][5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][5]~combout\ = (\Add13~8_combout\ & (\Add13~4_combout\ $ ((\Add13~10_combout\)))) # (!\Add13~8_combout\ & (\Add13~4_combout\ & ((!\Add13~6_combout\) # (!\Add13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~8_combout\,
	datab => \Add13~4_combout\,
	datac => \Add13~10_combout\,
	datad => \Add13~6_combout\,
	combout => \Mult0|mult_core|romout[1][5]~combout\);

-- Location: LCCOMB_X49_Y27_N8
\Mult0|mult_core|romout[0][8]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][8]~3_combout\ = \Add13~2_combout\ $ (((!vposition(0) & ((\Add13~0_combout\) # (vposition(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~0_combout\,
	datab => vposition(0),
	datac => \Add13~2_combout\,
	datad => vposition(1),
	combout => \Mult0|mult_core|romout[0][8]~3_combout\);

-- Location: LCCOMB_X50_Y27_N0
\Mult0|mult_core|romout[1][4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][4]~2_combout\ = (\Add13~8_combout\ & (((\Add13~6_combout\ & !\Add13~10_combout\)))) # (!\Add13~8_combout\ & (\Add13~10_combout\ & ((!\Add13~6_combout\) # (!\Add13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~4_combout\,
	datab => \Add13~6_combout\,
	datac => \Add13~8_combout\,
	datad => \Add13~10_combout\,
	combout => \Mult0|mult_core|romout[1][4]~2_combout\);

-- Location: LCCOMB_X49_Y27_N2
\Mult0|mult_core|romout[0][7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][7]~combout\ = (\Add13~0_combout\ & (!vposition(1) & ((\Add13~2_combout\) # (!vposition(0))))) # (!\Add13~0_combout\ & ((vposition(0)) # ((vposition(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~0_combout\,
	datab => vposition(0),
	datac => \Add13~2_combout\,
	datad => vposition(1),
	combout => \Mult0|mult_core|romout[0][7]~combout\);

-- Location: LCCOMB_X50_Y29_N30
\Mult0|mult_core|romout[1][3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][3]~combout\ = \Add13~10_combout\ $ (((\Add13~8_combout\ & ((!\Add13~6_combout\))) # (!\Add13~8_combout\ & (\Add13~4_combout\ & \Add13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~8_combout\,
	datab => \Add13~4_combout\,
	datac => \Add13~6_combout\,
	datad => \Add13~10_combout\,
	combout => \Mult0|mult_core|romout[1][3]~combout\);

-- Location: LCCOMB_X49_Y27_N20
\Mult0|mult_core|romout[0][6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][6]~4_combout\ = (vposition(0) & ((\Add13~2_combout\ & ((vposition(1)) # (!\Add13~0_combout\))) # (!\Add13~2_combout\ & ((!vposition(1)))))) # (!vposition(0) & (((vposition(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~0_combout\,
	datab => vposition(0),
	datac => \Add13~2_combout\,
	datad => vposition(1),
	combout => \Mult0|mult_core|romout[0][6]~4_combout\);

-- Location: LCCOMB_X51_Y29_N30
\Mult0|mult_core|romout[1][2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][2]~combout\ = \Add13~8_combout\ $ (((!\Add13~4_combout\ & \Add13~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~8_combout\,
	datac => \Add13~4_combout\,
	datad => \Add13~6_combout\,
	combout => \Mult0|mult_core|romout[1][2]~combout\);

-- Location: LCCOMB_X50_Y27_N30
\Mult0|mult_core|romout[1][1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][1]~5_combout\ = \Add13~4_combout\ $ (\Add13~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add13~4_combout\,
	datad => \Add13~6_combout\,
	combout => \Mult0|mult_core|romout[1][1]~5_combout\);

-- Location: LCCOMB_X49_Y27_N6
\Mult0|mult_core|romout[0][5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][5]~combout\ = (\Add13~0_combout\ & (vposition(0) $ ((\Add13~2_combout\)))) # (!\Add13~0_combout\ & (vposition(0) & ((!vposition(1)) # (!\Add13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~0_combout\,
	datab => vposition(0),
	datac => \Add13~2_combout\,
	datad => vposition(1),
	combout => \Mult0|mult_core|romout[0][5]~combout\);

-- Location: LCCOMB_X49_Y27_N24
\Mult0|mult_core|romout[0][4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][4]~6_combout\ = (\Add13~0_combout\ & (((!\Add13~2_combout\ & vposition(1))))) # (!\Add13~0_combout\ & (\Add13~2_combout\ & ((!vposition(1)) # (!vposition(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~0_combout\,
	datab => vposition(0),
	datac => \Add13~2_combout\,
	datad => vposition(1),
	combout => \Mult0|mult_core|romout[0][4]~6_combout\);

-- Location: LCCOMB_X50_Y27_N4
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\Add13~4_combout\ & (\Mult0|mult_core|romout[0][4]~6_combout\ $ (VCC))) # (!\Add13~4_combout\ & (\Mult0|mult_core|romout[0][4]~6_combout\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\Add13~4_combout\ & \Mult0|mult_core|romout[0][4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~4_combout\,
	datab => \Mult0|mult_core|romout[0][4]~6_combout\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X50_Y27_N6
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|romout[1][1]~5_combout\ & ((\Mult0|mult_core|romout[0][5]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\Mult0|mult_core|romout[0][5]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\Mult0|mult_core|romout[1][1]~5_combout\ & ((\Mult0|mult_core|romout[0][5]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) 
-- # (!\Mult0|mult_core|romout[0][5]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult0|mult_core|romout[1][1]~5_combout\ & (!\Mult0|mult_core|romout[0][5]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|romout[1][1]~5_combout\ 
-- & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\Mult0|mult_core|romout[0][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][1]~5_combout\,
	datab => \Mult0|mult_core|romout[0][5]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X50_Y27_N8
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\Mult0|mult_core|romout[0][6]~4_combout\ $ (\Mult0|mult_core|romout[1][2]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult0|mult_core|romout[0][6]~4_combout\ & ((\Mult0|mult_core|romout[1][2]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\Mult0|mult_core|romout[0][6]~4_combout\ & (\Mult0|mult_core|romout[1][2]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][6]~4_combout\,
	datab => \Mult0|mult_core|romout[1][2]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X50_Y27_N10
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\Mult0|mult_core|romout[0][7]~combout\ & ((\Mult0|mult_core|romout[1][3]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\Mult0|mult_core|romout[1][3]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\Mult0|mult_core|romout[0][7]~combout\ & ((\Mult0|mult_core|romout[1][3]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\Mult0|mult_core|romout[1][3]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult0|mult_core|romout[0][7]~combout\ & (!\Mult0|mult_core|romout[1][3]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|romout[0][7]~combout\ & 
-- ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult0|mult_core|romout[1][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][7]~combout\,
	datab => \Mult0|mult_core|romout[1][3]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X50_Y27_N12
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\Mult0|mult_core|romout[0][8]~3_combout\ $ (\Mult0|mult_core|romout[1][4]~2_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult0|mult_core|romout[0][8]~3_combout\ & ((\Mult0|mult_core|romout[1][4]~2_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # 
-- (!\Mult0|mult_core|romout[0][8]~3_combout\ & (\Mult0|mult_core|romout[1][4]~2_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][8]~3_combout\,
	datab => \Mult0|mult_core|romout[1][4]~2_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X50_Y27_N14
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\Mult0|mult_core|romout[0][9]~combout\ & ((\Mult0|mult_core|romout[1][5]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # 
-- (!\Mult0|mult_core|romout[1][5]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)))) # (!\Mult0|mult_core|romout[0][9]~combout\ & ((\Mult0|mult_core|romout[1][5]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # 
-- (!\Mult0|mult_core|romout[1][5]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\Mult0|mult_core|romout[0][9]~combout\ & (!\Mult0|mult_core|romout[1][5]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\Mult0|mult_core|romout[0][9]~combout\ & 
-- ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\Mult0|mult_core|romout[1][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][9]~combout\,
	datab => \Mult0|mult_core|romout[1][5]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X50_Y27_N16
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = ((\Mult0|mult_core|romout[0][10]~combout\ $ (\Mult0|mult_core|romout[1][6]~1_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\Mult0|mult_core|romout[0][10]~combout\ & ((\Mult0|mult_core|romout[1][6]~1_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))) # 
-- (!\Mult0|mult_core|romout[0][10]~combout\ & (\Mult0|mult_core|romout[1][6]~1_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][10]~combout\,
	datab => \Mult0|mult_core|romout[1][6]~1_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X50_Y27_N18
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\Mult0|mult_core|romout[0][11]~0_combout\ & ((\Mult0|mult_core|romout[1][7]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ & VCC)) # 
-- (!\Mult0|mult_core|romout[1][7]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)))) # (!\Mult0|mult_core|romout[0][11]~0_combout\ & ((\Mult0|mult_core|romout[1][7]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\Mult0|mult_core|romout[1][7]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((\Mult0|mult_core|romout[0][11]~0_combout\ & (!\Mult0|mult_core|romout[1][7]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # 
-- (!\Mult0|mult_core|romout[0][11]~0_combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\Mult0|mult_core|romout[1][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][11]~0_combout\,
	datab => \Mult0|mult_core|romout[1][7]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X50_Y27_N20
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = (\Mult0|mult_core|romout[1][8]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ $ (GND))) # (!\Mult0|mult_core|romout[1][8]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ = CARRY((\Mult0|mult_core|romout[1][8]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[1][8]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X50_Y27_N22
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ = (\Mult0|mult_core|romout[1][9]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\)) # (!\Mult0|mult_core|romout[1][9]~combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (GND)))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ = CARRY((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (!\Mult0|mult_core|romout[1][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][9]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X50_Y27_N24
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ = (\Mult0|mult_core|romout[1][10]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ $ (GND))) # (!\Mult0|mult_core|romout[1][10]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ = CARRY((\Mult0|mult_core|romout[1][10]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][10]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X50_Y27_N26
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ = \Mult0|mult_core|romout[1][11]~17_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][11]~17_combout\,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\);

-- Location: LCCOMB_X50_Y29_N14
\Add13~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add13~12_combout\ = (vposition(8) & ((GND) # (!\Add13~11\))) # (!vposition(8) & (\Add13~11\ $ (GND)))
-- \Add13~13\ = CARRY((vposition(8)) # (!\Add13~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(8),
	datad => VCC,
	cin => \Add13~11\,
	combout => \Add13~12_combout\,
	cout => \Add13~13\);

-- Location: LCCOMB_X50_Y29_N16
\Add13~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add13~14_combout\ = (vposition(9) & (\Add13~13\ & VCC)) # (!vposition(9) & (!\Add13~13\))
-- \Add13~15\ = CARRY((!vposition(9) & !\Add13~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(9),
	datad => VCC,
	cin => \Add13~13\,
	combout => \Add13~14_combout\,
	cout => \Add13~15\);

-- Location: LCCOMB_X50_Y29_N18
\Add13~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add13~16_combout\ = (vposition(10) & ((GND) # (!\Add13~15\))) # (!vposition(10) & (\Add13~15\ $ (GND)))
-- \Add13~17\ = CARRY((vposition(10)) # (!\Add13~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(10),
	datad => VCC,
	cin => \Add13~15\,
	combout => \Add13~16_combout\,
	cout => \Add13~17\);

-- Location: LCCOMB_X50_Y29_N20
\Add13~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add13~18_combout\ = (vposition(11) & (\Add13~17\ & VCC)) # (!vposition(11) & (!\Add13~17\))
-- \Add13~19\ = CARRY((!vposition(11) & !\Add13~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(11),
	datad => VCC,
	cin => \Add13~17\,
	combout => \Add13~18_combout\,
	cout => \Add13~19\);

-- Location: LCCOMB_X51_Y27_N12
\Mult0|mult_core|romout[2][7]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][7]~19_combout\ = (\Add13~14_combout\ & (((!\Add13~16_combout\)))) # (!\Add13~14_combout\ & ((\Add13~16_combout\ & ((\Add13~18_combout\) # (!\Add13~12_combout\))) # (!\Add13~16_combout\ & ((\Add13~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~14_combout\,
	datab => \Add13~18_combout\,
	datac => \Add13~16_combout\,
	datad => \Add13~12_combout\,
	combout => \Mult0|mult_core|romout[2][7]~19_combout\);

-- Location: LCCOMB_X50_Y29_N22
\Add13~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add13~20_combout\ = (vposition(12) & ((GND) # (!\Add13~19\))) # (!vposition(12) & (\Add13~19\ $ (GND)))
-- \Add13~21\ = CARRY((vposition(12)) # (!\Add13~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(12),
	datad => VCC,
	cin => \Add13~19\,
	combout => \Add13~20_combout\,
	cout => \Add13~21\);

-- Location: LCCOMB_X50_Y29_N24
\Add13~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add13~22_combout\ = (vposition(13) & (\Add13~21\ & VCC)) # (!vposition(13) & (!\Add13~21\))
-- \Add13~23\ = CARRY((!vposition(13) & !\Add13~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(13),
	datad => VCC,
	cin => \Add13~21\,
	combout => \Add13~22_combout\,
	cout => \Add13~23\);

-- Location: LCCOMB_X50_Y29_N26
\Add13~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add13~24_combout\ = (vposition(14) & ((GND) # (!\Add13~23\))) # (!vposition(14) & (\Add13~23\ $ (GND)))
-- \Add13~25\ = CARRY((vposition(14)) # (!\Add13~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(14),
	datad => VCC,
	cin => \Add13~23\,
	combout => \Add13~24_combout\,
	cout => \Add13~25\);

-- Location: LCCOMB_X50_Y29_N28
\Add13~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add13~26_combout\ = \Add13~25\ $ (!vposition(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => vposition(15),
	cin => \Add13~25\,
	combout => \Add13~26_combout\);

-- Location: LCCOMB_X51_Y29_N6
\Mult0|mult_core|romout[3][3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[3][3]~18_combout\ = \Add13~26_combout\ $ (((\Add13~22_combout\ & (\Add13~20_combout\ & !\Add13~24_combout\)) # (!\Add13~22_combout\ & ((\Add13~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~20_combout\,
	datab => \Add13~22_combout\,
	datac => \Add13~24_combout\,
	datad => \Add13~26_combout\,
	combout => \Mult0|mult_core|romout[3][3]~18_combout\);

-- Location: LCCOMB_X51_Y29_N2
\Mult0|mult_core|romout[2][6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][6]~8_combout\ = (\Add13~12_combout\ & ((\Add13~14_combout\ & ((\Add13~18_combout\))) # (!\Add13~14_combout\ & ((!\Add13~18_combout\) # (!\Add13~16_combout\))))) # (!\Add13~12_combout\ & (((\Add13~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~12_combout\,
	datab => \Add13~16_combout\,
	datac => \Add13~14_combout\,
	datad => \Add13~18_combout\,
	combout => \Mult0|mult_core|romout[2][6]~8_combout\);

-- Location: LCCOMB_X51_Y29_N0
\Mult0|mult_core|romout[3][2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[3][2]~7_combout\ = \Add13~24_combout\ $ (((\Add13~22_combout\ & !\Add13~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add13~22_combout\,
	datac => \Add13~24_combout\,
	datad => \Add13~20_combout\,
	combout => \Mult0|mult_core|romout[3][2]~7_combout\);

-- Location: LCCOMB_X51_Y29_N24
\Mult0|mult_core|romout[3][1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[3][1]~9_combout\ = \Add13~22_combout\ $ (\Add13~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add13~22_combout\,
	datad => \Add13~20_combout\,
	combout => \Mult0|mult_core|romout[3][1]~9_combout\);

-- Location: LCCOMB_X51_Y29_N22
\Mult0|mult_core|romout[2][5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][5]~10_combout\ = (\Add13~12_combout\ & (((!\Add13~16_combout\ & !\Add13~14_combout\)) # (!\Add13~18_combout\))) # (!\Add13~12_combout\ & (\Add13~16_combout\ & ((\Add13~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~12_combout\,
	datab => \Add13~16_combout\,
	datac => \Add13~14_combout\,
	datad => \Add13~18_combout\,
	combout => \Mult0|mult_core|romout[2][5]~10_combout\);

-- Location: LCCOMB_X51_Y27_N0
\Mult0|mult_core|romout[2][4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][4]~11_combout\ = (\Add13~18_combout\ & (!\Add13~16_combout\ & ((!\Add13~14_combout\) # (!\Add13~12_combout\)))) # (!\Add13~18_combout\ & (((\Add13~14_combout\ & \Add13~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~18_combout\,
	datab => \Add13~12_combout\,
	datac => \Add13~14_combout\,
	datad => \Add13~16_combout\,
	combout => \Mult0|mult_core|romout[2][4]~11_combout\);

-- Location: LCCOMB_X51_Y27_N4
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ = (\Add13~20_combout\ & (\Mult0|mult_core|romout[2][4]~11_combout\ $ (VCC))) # (!\Add13~20_combout\ & (\Mult0|mult_core|romout[2][4]~11_combout\ & VCC))
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\ = CARRY((\Add13~20_combout\ & \Mult0|mult_core|romout[2][4]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~20_combout\,
	datab => \Mult0|mult_core|romout[2][4]~11_combout\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\);

-- Location: LCCOMB_X51_Y27_N6
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|romout[3][1]~9_combout\ & ((\Mult0|mult_core|romout[2][5]~10_combout\ & (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\ & VCC)) # 
-- (!\Mult0|mult_core|romout[2][5]~10_combout\ & (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\)))) # (!\Mult0|mult_core|romout[3][1]~9_combout\ & ((\Mult0|mult_core|romout[2][5]~10_combout\ & 
-- (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|romout[2][5]~10_combout\ & ((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\ = CARRY((\Mult0|mult_core|romout[3][1]~9_combout\ & (!\Mult0|mult_core|romout[2][5]~10_combout\ & !\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\)) # 
-- (!\Mult0|mult_core|romout[3][1]~9_combout\ & ((!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\) # (!\Mult0|mult_core|romout[2][5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[3][1]~9_combout\,
	datab => \Mult0|mult_core|romout[2][5]~10_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\);

-- Location: LCCOMB_X51_Y27_N8
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ = ((\Mult0|mult_core|romout[2][6]~8_combout\ $ (\Mult0|mult_core|romout[3][2]~7_combout\ $ (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\ = CARRY((\Mult0|mult_core|romout[2][6]~8_combout\ & ((\Mult0|mult_core|romout[3][2]~7_combout\) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\))) # 
-- (!\Mult0|mult_core|romout[2][6]~8_combout\ & (\Mult0|mult_core|romout[3][2]~7_combout\ & !\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][6]~8_combout\,
	datab => \Mult0|mult_core|romout[3][2]~7_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\);

-- Location: LCCOMB_X51_Y27_N10
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ = \Mult0|mult_core|romout[2][7]~19_combout\ $ (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\ $ (\Mult0|mult_core|romout[3][3]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][7]~19_combout\,
	datad => \Mult0|mult_core|romout[3][3]~18_combout\,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X51_Y29_N8
\Mult0|mult_core|romout[2][3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][3]~12_combout\ = \Add13~18_combout\ $ (((\Add13~16_combout\ & ((!\Add13~14_combout\))) # (!\Add13~16_combout\ & (\Add13~12_combout\ & \Add13~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~12_combout\,
	datab => \Add13~16_combout\,
	datac => \Add13~14_combout\,
	datad => \Add13~18_combout\,
	combout => \Mult0|mult_core|romout[2][3]~12_combout\);

-- Location: LCCOMB_X51_Y29_N18
\Mult0|mult_core|romout[2][2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][2]~13_combout\ = \Add13~16_combout\ $ (((!\Add13~12_combout\ & \Add13~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~12_combout\,
	datac => \Add13~14_combout\,
	datad => \Add13~16_combout\,
	combout => \Mult0|mult_core|romout[2][2]~13_combout\);

-- Location: LCCOMB_X51_Y27_N2
\Mult0|mult_core|romout[2][1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][1]~14_combout\ = \Add13~14_combout\ $ (\Add13~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~14_combout\,
	datad => \Add13~12_combout\,
	combout => \Mult0|mult_core|romout[2][1]~14_combout\);

-- Location: LCCOMB_X51_Y27_N14
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\Add13~12_combout\ $ (VCC))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & 
-- (\Add13~12_combout\ & VCC))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & \Add13~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \Add13~12_combout\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X51_Y27_N16
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Mult0|mult_core|romout[2][1]~14_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\Mult0|mult_core|romout[2][1]~14_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Mult0|mult_core|romout[2][1]~14_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|romout[2][1]~14_combout\ & 
-- ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\Mult0|mult_core|romout[2][1]~14_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (!\Mult0|mult_core|romout[2][1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \Mult0|mult_core|romout[2][1]~14_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X51_Y27_N18
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ $ (\Mult0|mult_core|romout[2][2]~13_combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & ((\Mult0|mult_core|romout[2][2]~13_combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (\Mult0|mult_core|romout[2][2]~13_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datab => \Mult0|mult_core|romout[2][2]~13_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X51_Y27_N20
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = (\Mult0|mult_core|romout[2][3]~12_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)))) # 
-- (!\Mult0|mult_core|romout[2][3]~12_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ 
-- & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult0|mult_core|romout[2][3]~12_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|romout[2][3]~12_combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][3]~12_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X51_Y27_N22
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = ((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\))) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X51_Y27_N24
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ = (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)))) # 
-- (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ = CARRY((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X51_Y27_N26
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ = ((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ = CARRY((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\))) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X51_Y27_N28
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ $ 
-- (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	datad => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\);

-- Location: LCCOMB_X49_Y27_N26
\Mult0|mult_core|romout[0][3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][3]~15_combout\ = \Add13~2_combout\ $ (((vposition(1) & (!\Add13~0_combout\ & vposition(0))) # (!vposition(1) & (\Add13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~2_combout\,
	datab => vposition(1),
	datac => \Add13~0_combout\,
	datad => vposition(0),
	combout => \Mult0|mult_core|romout[0][3]~15_combout\);

-- Location: LCCOMB_X49_Y27_N16
\Mult0|mult_core|romout[0][2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][2]~combout\ = \Add13~0_combout\ $ (((vposition(1) & !vposition(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vposition(1),
	datac => \Add13~0_combout\,
	datad => vposition(0),
	combout => \Mult0|mult_core|romout[0][2]~combout\);

-- Location: LCCOMB_X49_Y27_N30
\Mult0|mult_core|romout[0][1]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][1]~16_combout\ = vposition(1) $ (vposition(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vposition(1),
	datad => vposition(0),
	combout => \Mult0|mult_core|romout[0][1]~16_combout\);

-- Location: LCCOMB_X52_Y27_N0
\data_address[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[0]~16_combout\ = (\Add12~0_combout\ & (vposition(0) $ (VCC))) # (!\Add12~0_combout\ & (vposition(0) & VCC))
-- \data_address[0]~17\ = CARRY((\Add12~0_combout\ & vposition(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~0_combout\,
	datab => vposition(0),
	datad => VCC,
	combout => \data_address[0]~16_combout\,
	cout => \data_address[0]~17\);

-- Location: LCCOMB_X52_Y27_N2
\data_address[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[1]~18_combout\ = (\Mult0|mult_core|romout[0][1]~16_combout\ & ((\Add12~2_combout\ & (\data_address[0]~17\ & VCC)) # (!\Add12~2_combout\ & (!\data_address[0]~17\)))) # (!\Mult0|mult_core|romout[0][1]~16_combout\ & ((\Add12~2_combout\ & 
-- (!\data_address[0]~17\)) # (!\Add12~2_combout\ & ((\data_address[0]~17\) # (GND)))))
-- \data_address[1]~19\ = CARRY((\Mult0|mult_core|romout[0][1]~16_combout\ & (!\Add12~2_combout\ & !\data_address[0]~17\)) # (!\Mult0|mult_core|romout[0][1]~16_combout\ & ((!\data_address[0]~17\) # (!\Add12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][1]~16_combout\,
	datab => \Add12~2_combout\,
	datad => VCC,
	cin => \data_address[0]~17\,
	combout => \data_address[1]~18_combout\,
	cout => \data_address[1]~19\);

-- Location: LCCOMB_X52_Y27_N4
\data_address[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[2]~20_combout\ = ((\Mult0|mult_core|romout[0][2]~combout\ $ (\Add12~4_combout\ $ (!\data_address[1]~19\)))) # (GND)
-- \data_address[2]~21\ = CARRY((\Mult0|mult_core|romout[0][2]~combout\ & ((\Add12~4_combout\) # (!\data_address[1]~19\))) # (!\Mult0|mult_core|romout[0][2]~combout\ & (\Add12~4_combout\ & !\data_address[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][2]~combout\,
	datab => \Add12~4_combout\,
	datad => VCC,
	cin => \data_address[1]~19\,
	combout => \data_address[2]~20_combout\,
	cout => \data_address[2]~21\);

-- Location: LCCOMB_X52_Y27_N6
\data_address[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[3]~22_combout\ = (\Mult0|mult_core|romout[0][3]~15_combout\ & ((\Add12~6_combout\ & (\data_address[2]~21\ & VCC)) # (!\Add12~6_combout\ & (!\data_address[2]~21\)))) # (!\Mult0|mult_core|romout[0][3]~15_combout\ & ((\Add12~6_combout\ & 
-- (!\data_address[2]~21\)) # (!\Add12~6_combout\ & ((\data_address[2]~21\) # (GND)))))
-- \data_address[3]~23\ = CARRY((\Mult0|mult_core|romout[0][3]~15_combout\ & (!\Add12~6_combout\ & !\data_address[2]~21\)) # (!\Mult0|mult_core|romout[0][3]~15_combout\ & ((!\data_address[2]~21\) # (!\Add12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][3]~15_combout\,
	datab => \Add12~6_combout\,
	datad => VCC,
	cin => \data_address[2]~21\,
	combout => \data_address[3]~22_combout\,
	cout => \data_address[3]~23\);

-- Location: LCCOMB_X52_Y27_N8
\data_address[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[4]~24_combout\ = ((\Add12~8_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ (!\data_address[3]~23\)))) # (GND)
-- \data_address[4]~25\ = CARRY((\Add12~8_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\) # (!\data_address[3]~23\))) # (!\Add12~8_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & 
-- !\data_address[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~8_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \data_address[3]~23\,
	combout => \data_address[4]~24_combout\,
	cout => \data_address[4]~25\);

-- Location: LCCOMB_X52_Y27_N10
\data_address[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[5]~26_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\Add12~10_combout\ & (\data_address[4]~25\ & VCC)) # (!\Add12~10_combout\ & (!\data_address[4]~25\)))) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\Add12~10_combout\ & (!\data_address[4]~25\)) # (!\Add12~10_combout\ & ((\data_address[4]~25\) # (GND)))))
-- \data_address[5]~27\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\Add12~10_combout\ & !\data_address[4]~25\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((!\data_address[4]~25\) # 
-- (!\Add12~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \Add12~10_combout\,
	datad => VCC,
	cin => \data_address[4]~25\,
	combout => \data_address[5]~26_combout\,
	cout => \data_address[5]~27\);

-- Location: LCCOMB_X52_Y27_N12
\data_address[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[6]~28_combout\ = ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ $ (\Add12~12_combout\ $ (!\data_address[5]~27\)))) # (GND)
-- \data_address[6]~29\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\Add12~12_combout\) # (!\data_address[5]~27\))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (\Add12~12_combout\ & 
-- !\data_address[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datab => \Add12~12_combout\,
	datad => VCC,
	cin => \data_address[5]~27\,
	combout => \data_address[6]~28_combout\,
	cout => \data_address[6]~29\);

-- Location: LCCOMB_X52_Y27_N14
\data_address[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[7]~30_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\Add12~14_combout\ & (\data_address[6]~29\ & VCC)) # (!\Add12~14_combout\ & (!\data_address[6]~29\)))) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\Add12~14_combout\ & (!\data_address[6]~29\)) # (!\Add12~14_combout\ & ((\data_address[6]~29\) # (GND)))))
-- \data_address[7]~31\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\Add12~14_combout\ & !\data_address[6]~29\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((!\data_address[6]~29\) # 
-- (!\Add12~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \Add12~14_combout\,
	datad => VCC,
	cin => \data_address[6]~29\,
	combout => \data_address[7]~30_combout\,
	cout => \data_address[7]~31\);

-- Location: LCCOMB_X52_Y27_N16
\data_address[8]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[8]~32_combout\ = ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ $ (\Add12~16_combout\ $ (!\data_address[7]~31\)))) # (GND)
-- \data_address[8]~33\ = CARRY((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & ((\Add12~16_combout\) # (!\data_address[7]~31\))) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & 
-- (\Add12~16_combout\ & !\data_address[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datab => \Add12~16_combout\,
	datad => VCC,
	cin => \data_address[7]~31\,
	combout => \data_address[8]~32_combout\,
	cout => \data_address[8]~33\);

-- Location: LCCOMB_X52_Y27_N18
\data_address[9]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[9]~34_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & ((\Add12~18_combout\ & (\data_address[8]~33\ & VCC)) # (!\Add12~18_combout\ & (!\data_address[8]~33\)))) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & ((\Add12~18_combout\ & (!\data_address[8]~33\)) # (!\Add12~18_combout\ & ((\data_address[8]~33\) # (GND)))))
-- \data_address[9]~35\ = CARRY((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & (!\Add12~18_combout\ & !\data_address[8]~33\)) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & 
-- ((!\data_address[8]~33\) # (!\Add12~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datab => \Add12~18_combout\,
	datad => VCC,
	cin => \data_address[8]~33\,
	combout => \data_address[9]~34_combout\,
	cout => \data_address[9]~35\);

-- Location: LCCOMB_X52_Y27_N20
\data_address[10]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[10]~36_combout\ = ((\Add12~20_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ $ (!\data_address[9]~35\)))) # (GND)
-- \data_address[10]~37\ = CARRY((\Add12~20_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\) # (!\data_address[9]~35\))) # (!\Add12~20_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & !\data_address[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~20_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \data_address[9]~35\,
	combout => \data_address[10]~36_combout\,
	cout => \data_address[10]~37\);

-- Location: LCCOMB_X52_Y27_N22
\data_address[11]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[11]~38_combout\ = (\Add12~22_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (\data_address[10]~37\ & VCC)) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & 
-- (!\data_address[10]~37\)))) # (!\Add12~22_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (!\data_address[10]~37\)) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & 
-- ((\data_address[10]~37\) # (GND)))))
-- \data_address[11]~39\ = CARRY((\Add12~22_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & !\data_address[10]~37\)) # (!\Add12~22_combout\ & ((!\data_address[10]~37\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~22_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \data_address[10]~37\,
	combout => \data_address[11]~38_combout\,
	cout => \data_address[11]~39\);

-- Location: LCCOMB_X52_Y27_N24
\data_address[12]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[12]~40_combout\ = ((\Add12~24_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ $ (!\data_address[11]~39\)))) # (GND)
-- \data_address[12]~41\ = CARRY((\Add12~24_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\) # (!\data_address[11]~39\))) # (!\Add12~24_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & !\data_address[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~24_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \data_address[11]~39\,
	combout => \data_address[12]~40_combout\,
	cout => \data_address[12]~41\);

-- Location: LCCOMB_X52_Y27_N26
\data_address[13]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[13]~42_combout\ = (\Add12~26_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (\data_address[12]~41\ & VCC)) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & 
-- (!\data_address[12]~41\)))) # (!\Add12~26_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (!\data_address[12]~41\)) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & 
-- ((\data_address[12]~41\) # (GND)))))
-- \data_address[13]~43\ = CARRY((\Add12~26_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & !\data_address[12]~41\)) # (!\Add12~26_combout\ & ((!\data_address[12]~41\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~26_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \data_address[12]~41\,
	combout => \data_address[13]~42_combout\,
	cout => \data_address[13]~43\);

-- Location: LCCOMB_X52_Y27_N28
\data_address[14]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[14]~44_combout\ = ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ $ (\Add12~28_combout\ $ (!\data_address[13]~43\)))) # (GND)
-- \data_address[14]~45\ = CARRY((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & ((\Add12~28_combout\) # (!\data_address[13]~43\))) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & 
-- (\Add12~28_combout\ & !\data_address[13]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datab => \Add12~28_combout\,
	datad => VCC,
	cin => \data_address[13]~43\,
	combout => \data_address[14]~44_combout\,
	cout => \data_address[14]~45\);

-- Location: LCCOMB_X52_Y27_N30
\data_address[15]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[15]~46_combout\ = \Add12~30_combout\ $ (\data_address[14]~45\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~30_combout\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	cin => \data_address[14]~45\,
	combout => \data_address[15]~46_combout\);

-- Location: FF_X52_Y27_N31
\data_address[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \data_address[15]~46_combout\,
	ena => \process_0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(15));

-- Location: LCCOMB_X52_Y23_N4
\imRead|altsyncram_component|auto_generated|address_reg_a[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|address_reg_a[2]~feeder_combout\ = data_address(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data_address(15),
	combout => \imRead|altsyncram_component|auto_generated|address_reg_a[2]~feeder_combout\);

-- Location: FF_X52_Y23_N5
\imRead|altsyncram_component|auto_generated|address_reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \imRead|altsyncram_component|auto_generated|address_reg_a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imRead|altsyncram_component|auto_generated|address_reg_a\(2));

-- Location: FF_X52_Y23_N31
\imRead|altsyncram_component|auto_generated|out_address_reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	asdata => \imRead|altsyncram_component|auto_generated|address_reg_a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(2));

-- Location: FF_X52_Y27_N29
\data_address[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \data_address[14]~44_combout\,
	ena => \process_0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(14));

-- Location: FF_X52_Y27_N27
\data_address[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \data_address[13]~42_combout\,
	ena => \process_0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(13));

-- Location: LCCOMB_X52_Y23_N28
\imRead|altsyncram_component|auto_generated|rden_decode|w_anode406w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3) = (!data_address(15) & (!data_address(14) & !data_address(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_address(15),
	datac => data_address(14),
	datad => data_address(13),
	combout => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3));

-- Location: FF_X52_Y27_N1
\data_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \data_address[0]~16_combout\,
	ena => \process_0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(0));

-- Location: FF_X52_Y27_N3
\data_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \data_address[1]~18_combout\,
	ena => \process_0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(1));

-- Location: FF_X52_Y27_N5
\data_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \data_address[2]~20_combout\,
	ena => \process_0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(2));

-- Location: FF_X52_Y27_N7
\data_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \data_address[3]~22_combout\,
	ena => \process_0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(3));

-- Location: FF_X52_Y27_N9
\data_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \data_address[4]~24_combout\,
	ena => \process_0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(4));

-- Location: FF_X52_Y27_N11
\data_address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \data_address[5]~26_combout\,
	ena => \process_0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(5));

-- Location: FF_X52_Y27_N13
\data_address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \data_address[6]~28_combout\,
	ena => \process_0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(6));

-- Location: FF_X52_Y27_N15
\data_address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \data_address[7]~30_combout\,
	ena => \process_0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(7));

-- Location: FF_X52_Y27_N17
\data_address[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \data_address[8]~32_combout\,
	ena => \process_0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(8));

-- Location: FF_X52_Y27_N19
\data_address[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \data_address[9]~34_combout\,
	ena => \process_0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(9));

-- Location: FF_X52_Y27_N21
\data_address[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \data_address[10]~36_combout\,
	ena => \process_0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(10));

-- Location: FF_X52_Y27_N23
\data_address[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \data_address[11]~38_combout\,
	ena => \process_0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(11));

-- Location: FF_X52_Y27_N25
\data_address[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \data_address[12]~40_combout\,
	ena => \process_0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(12));

-- Location: M9K_X33_Y33_N0
\imRead|altsyncram_component|auto_generated|ram_block1a8\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFF1AD4C44615C8F80130E84E050420D10BE103FFFFFFFFFFFFFFFFFFFFE19A2914C1D6F49FC10F1690A858129C81987FFFFFFFFFFFFFFFFFFFFC3A8C541875ECF1E1ECA45435A58206445F8FFFFFFFFFFFFFFFFFFFFF847D991306071BE9381528C281A04CD57921FFFFFFFFFFFFFFFFFFFFD6C6711A3F8CB72A8D80012A96F45AE439CEBFFFFFFFFFFFFFFFFFFFFEE6DCA01070763BD78660AC72CA9324132747FFFFFFFFFFFFFFFFFFFF93BF942EB182EF26048C5300D42E08023E627FFFFFFFFFFFFFFFFFFFE0A7072FEC8135FDE8C101648D905628E02E8FFFFFFFFFFFFFFFFFFFFF8BA1000F800C3398DC3422201333A0023567FFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFF0047C4A0B919EBA3910060B20E2E82F7AA8FFFFFFFFFFFFFFFFFFFFF465154A01F24000062A000C196D08102A2A87FFFFFFFFFFFFFFFFFFFF09FF492781B32802957C0A05D89A04085B80FFFFFFFFFFFFFFFFFFFFC099ED08811B8F0138366200C7680303AF3CBFFFFFFFFFFFFFFFFFFFF9FCD113F43A86F0051003C0361AD2124AF273FFFFFFFFFFFFFFFFFFFF98FBB439B6C3C567B40F8428517305DBB7F47FFFFFFFFFFFFFFFFFFFF2AFA8B0F6113054640062CE00185F4D15ED8FFFFFFFFFFFFFFFFFFFFE619E4F8373203E181020E180133B03A9E409FFFFFFFFFFFFFFFFFFFFC6C371ADA8000200F30D604000035E70EC303FFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFABCB77E5015130081926AC03A69815A3F4E67FFFFFFFFFFFFFFFFFFFEA7DEA5F549EE3C703858098C3F2A57A51E25FFFFFFFFFFFFFFFFFFFFC0618849E4981C03CA7C8DCEA9A8DFC057483FFFFFFFFFFFFFFFFFFFF8086AF6BBA87B948A10358890CC5F9D75FC07FFFFFFFFFFFFFFFFFFFF012EEB8961CC7209F990868ECF51A424EF98FFFFFFFFFFFFFFFFFFFFE073871A4FD70D2A9C86C95719DBFACCF3E41FFFFFFFFFFFFFFFFFFFFC098CD878CC8D8279A0AC652C42AD6AA78343FFFFFFFFFFFFFFFFFFFF82CC7BFD99C7E94FB102782172F91D9C63247FFFFFFFFFFFFFFFFFFFF001DD25F20EB86000CC80009154920D24C10FFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFE024429A1A54B733EDC3A70CF10AC83716081FFFFFFFFFFFFFFFFFFFFE000780600000000000003020000000000005FFFFFFFFFFFFFFFFFFFF8000600C00000000000004000000000000003FFFFFFFFFFFFFFFFFFFF8001E0800000000000061E18000000000001FFFFFFFFFFFFFFFFFFFFF00F83C380000000001F3C3C0000000000000FFFFFFFFFFFFFFFFFFFFE003038600000000000E30780000000000001FFFFFFFFFFFFFFFFFFFFDC02060000000000000C6060000000000003FFFFFFFFFFFFFFFFFFFFF80041E08000000040038C1E0000000000001FFFFFFFFFFFFFFFFFFFFE801C3C18000FF00C0073C3C0000000000003FFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y23_N14
\imRead|altsyncram_component|auto_generated|address_reg_a[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ = data_address(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data_address(13),
	combout => \imRead|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\);

-- Location: FF_X52_Y23_N15
\imRead|altsyncram_component|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \imRead|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imRead|altsyncram_component|auto_generated|address_reg_a\(0));

-- Location: FF_X52_Y23_N25
\imRead|altsyncram_component|auto_generated|out_address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	asdata => \imRead|altsyncram_component|auto_generated|address_reg_a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0));

-- Location: LCCOMB_X52_Y23_N22
\imRead|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\ = (!data_address(15) & (data_address(14) & !data_address(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_address(15),
	datac => data_address(14),
	datad => data_address(13),
	combout => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\);

-- Location: M9K_X5_Y24_N0
\imRead|altsyncram_component|auto_generated|ram_block1a32\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"D0517FD7452A641F100A4CBFE8413702A0006200000000004700709972482FFA2E57011F8EE08F7F7D2239250A0020000000000018600559E98445FFE3BF40D3EEE0775DFFA3D4685E40008800000000020400808F00D0BFDF5862375EF921847FFEB71024D2000BC0000000000100704B517C17FFF87B8197FFED2E5FFFD11B9AE2A52F600000000000E2D5450A8363FFFC0EC40DFFF83B3FFFF9D66DE6E6067A400000000308063E000E287FFF757C6CFFFFE30BFFFE4FBB7D5C500658000000007D82DCAE45788FFFFF2008FFFFFF7BFFFFC4976BB18200B01000000009E045CEDBF121FFFFF0FD79FFFEF8BFFFE8799B073A00C846000000011D0162BBAA",
	mem_init2 => X"C83FFEFA147FFFFFFFEFFFFD8A80C20DC0120C000000000925CC12A08807FFFFFC1FFFFFFFFFFFFFF08C7436544DE90000000007D2BC4C0D86D0FFFFF55FFFFFFFFFFFFFFE1DDC6475C18BD2000000013C55AA7294901FFFFE7FFFFFFFFFFFFFFF8562605A759858F420206A00E09AE9245593FFFFFFFFFFFFFFFFFFFFD8D1D11C67A8A50DEC0030E2983AC3C940CD3FFFFFFFFFFFFFFFFFFFFECB576199443181E3BF1D951CC82B0B82D247FFFFFFFFFFFFFFFFFFFFA80F2E631BA7E5690020E8351D4A6802F745FFFFFFFFFFFFFFFFFFFFEBC24FF9D1E04E5B2A600BDE5241AFB3D1A53FFFFFFFFFFFFFFFFFFFFC83314D1C9028AA90D21086C5AFD6B6EAD8",
	mem_init1 => X"D5FFFFFFFFFFFFFFFFFFFFBDB08230824098ECA8076D16306C43CF47D4BFFFFFFFFFFFFFFFFFFFF5286A8C3EF067FE540095019E042C29912C7FFFFFFFFFFFFFFFFFFFFE819440A482A02AF1D1380CD5E567990CD873FFFFFFFFFFFFFFFFFFFFFEBA385C39680259288625CB21D400B798CA7FFFFFFFFFFFFFFFFFFFFC3ED2F63A817038A60F104C48259F18E4479FFFFFFFFFFFFFFFFFFFFF05BE94C001207B8CE5510412D5A0041E8692FFFFFFFFFFFFFFFFFFFFF2F2141D636080BBDC91C9AA00041C60885F1FFFFFFFFFFFFFFFFFFFFE1DBA5878353A20AE956E19931C00207C73C1FFFFFFFFFFFFFFFFFFFFCC4695C661400152CCE9C94AAD79806ADCF4",
	mem_init0 => X"3FFFFFFFFFFFFFFFFFFFF59A4505CD27F8FF9BAB29F9F7EFE348F5E0D7FFFFFFFFFFFFFFFFFFFE0050C938000018123C5BA2200000142F468EFFFFFFFFFFFFFFFFFFFFE900DD37FC0F9CE01403B8541C1FE1E0C3DAFFFFFFFFFFFFFFFFFFFFFDB1BAF7E18239B580F476E7F30F803C234C2BFFFFFFFFFFFFFFFFFFFF659054E0F04CECA0EEF4526FC3EEC2C068B47FFFFFFFFFFFFFFFFFFFE35A0DBF9E02000C8B8BE130C00FF85C79594FFFFFFFFFFFFFFFFFFFFEEE4371FACA01DF6E3604D14C0361A2B52FB7FFFFFFFFFFFFFFFFFFFFF3904088F87CBF532FE23937B2358ACA00627FFFFFFFFFFFFFFFFFFFFD688AE8466D8E82CF0F281F001B73A761D227",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y23_N2
\imRead|altsyncram_component|auto_generated|address_reg_a[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\ = data_address(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data_address(14),
	combout => \imRead|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\);

-- Location: FF_X52_Y23_N3
\imRead|altsyncram_component|auto_generated|address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \imRead|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imRead|altsyncram_component|auto_generated|address_reg_a\(1));

-- Location: FF_X52_Y26_N9
\imRead|altsyncram_component|auto_generated|out_address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	asdata => \imRead|altsyncram_component|auto_generated|address_reg_a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1));

-- Location: LCCOMB_X32_Y23_N6
\imRead|altsyncram_component|auto_generated|mux2|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~2_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead|altsyncram_component|auto_generated|ram_block1a32~portadataout\))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\imRead|altsyncram_component|auto_generated|ram_block1a8~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a32~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~2_combout\);

-- Location: LCCOMB_X52_Y23_N26
\imRead|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\ = (!data_address(15) & (data_address(14) & data_address(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_address(15),
	datac => data_address(14),
	datad => data_address(13),
	combout => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\);

-- Location: M9K_X33_Y28_N0
\imRead|altsyncram_component|auto_generated|ram_block1a44\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000500FFFFD3749031FF57B4BB47FFF6000000014000CD7E79E704000000009FFFDF46C1013FD3D6DB91FFFE00000000220026BA9F64E08000000003FFFF3134EF2BF875F116CF9FA0000000004002AC8125142800000000BFFFFC0BF6907FCDBDF47A7DFF000000001800B1E5DF50050000000037FFFE245DA3CFC8C4DD4DA7FE60000000020001DF411A00E00000000C7FFE803E2AD4F1944E13D37FB000000000400184B954A004000000003FFF88D7CA939F01566CED5BF60000000000005A2087C200C000000033FFFD2607BBE1D4055667975D2000000000000B1B66B42048000000085FFC3A2B195876ADA8A4AE2BEA00000001A0013305DC0002A40",
	mem_init2 => X"0000003FE294A2DF82E887700D70D70000000002B800F3AAD400050000000007ED330F72F7A592821394BDF0000000006000042AFB000040800000417E3D8B187C50EF020B51579E00000000024004650670000B000000003BEE3D15E19596A080CEE0A382000000016400283BB00000840000000BFB687122FAADC03012E200D740000000388008601700000800000008FF82F30C0C0AE40604D0211E0000000000C8075405A80002500000004FD0E159084A368400CE3807D0000000002A0053C77A0000E00000000A7F35F57705C2A236A4BBDA5800036001507020820C53000ED814400007FE03B3F013DFB95A8F27BC0001CC01860E602E22A280038B02",
	mem_init1 => X"800003FD8DE03401F3ABBBD4505B80003B0024308B636E2440006D802200005FD5CBDD8019FA0E99BA00600003400EBE183038422C00079002600007FA0B4EC0000FDD1110DC3A001028014D1450B60445CC001C00E200003E301A00109DFEA09F1943400323000302AD4328B6924019C00A40001FFC6B80FFB27BFD08A80C7800E300012917EB7000B350027000D80003FCC9AE160BDFFFD2174D1E001C900047EA32AD31640D00FA845C00003FA820FED957FFF8A196CB400A38CB363C0AC0C0181A6019604D7C6003FDB321F9A5BE7EFC034AF8033F240000837B400333AC0009180FC000FF0C2A4D83DFFF4F78D25F0060F754400017D8006A3A8039E032",
	mem_init0 => X"C18017FB87BCB7FE78F82FF22FA00851F4C07200A22000E3900F82C6491003FE0060602FEBD6E286A7F0000DD88000461DA60024A402A2705898003FE10006DFF7C1414037FC0005932C8000F0F4002EB3404B166A460007FD309CC3E5FF4D28042FA00325AD80001A90000761400D0090BEB000FFDC079900FFFAD5F013F700D89572002119EC00099C015A5010228007FC4D33CE0FF9B124C2FEB198EA17200504000000000054109B5C6762FF9A80734D706B2113BFDF0098E1D402208C000000003082BA6DB51C5FF1783096EF9224F88FFA87A84ED08048818000000007D002D804FD0BFFC755090BC8D03D46DF4D972AB58003100000000000EA03BDE4",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y23_N20
\imRead|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\ = (!data_address(15) & (!data_address(14) & data_address(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_address(15),
	datac => data_address(14),
	datad => data_address(13),
	combout => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\);

-- Location: M9K_X33_Y31_N0
\imRead|altsyncram_component|auto_generated|ram_block1a20\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFF70F0861671C6B25503EC357AAE9F49FA70ACFFFFFFFFFFFFFFFFFFFFE50312E31512799B966D3C8A98C565E4B8323FFFFFFFFFFFFFFFFFFFFD3CCCAE8A550C50C90F7F9D851AA9040651F7FFFFFFFFFFFFFFFFFFFF8BECB5F5687D6FC850D8ED846B06700FF4407FFFFFFFFFFFFFFFFFFFFDEC3FB479A71F108B7D88A2F8966B3518ADFFFFFFFFFFFFFFFFFFFFFE7FD7D600A4AC211CE274D507981F823A9E27FFFFFFFFFFFFFFFFFFFFB2E338869020CF003C2CDB362001BECE89903FFFFFFFFFFFFFFFFFFFF891774C421C7E6A9DD6E1690138C709989D5FFFFFFFFFFFFFFFFFFFFE007805AE0D8B8F9E01204A0191B1EA221801FF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFF8F9F49B44B713CE37C3E45D2665B134547AE7FFFFFFFFFFFFFFFFFFFFB62192689191B778D1F97F8CDA62868E2A1C3FFFFFFFFFFFFFFFFFFFE77AAB4F121C39D5618A01DC748D76D9D7ACCFFFFFFFFFFFFFFFFFFFFFEC9049E24715E41576243C60F604D339007BFFFFFFFFFFFFFFFFFFFF9A3CE13C4A606AE581A4FC6A1872166F07892FFFFFFFFFFFFFFFFFFFF8F086278923288E88BECCDD1B60404DC049E7FFFFFFFFFFFFFFFFFFFA39D464F128ABA2813DF02F0A6F8829B808C5FFFFFFFFFFFFFFFFFFFE708F188460D3EA8982A2074E09401553C0A81FFFFFFFFFFFFFFFFFFFFE3C39108C038DAF2C6E9C1C121782AA68B203FFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFF9089221180D50DC6B978138A23E0554CC392FFFFFFFFFFFFFFFFFFFFF69508C230459C0D26400C93431A0AAB0ECA5FFFFFFFFFFFFFFFFFFFFEEF71184612CCBF3A6088D876D9C15166DD21FFFFFFFFFFFFFFFFFFFFDDF4AB08C0AF25A564C91587D5482B2CDA517FFFFFFFFFFFFFFFFFFFFEE8EA6D183E7CDD71D72BCE8401056DC90C4FFFFFFFFFFFFFFFFFFFFF00160DA3087611E403C295C71DE0AD274000FFFFFFFFFFFFFFFFFFFFC860D19C60C229A18CC462CC31062CA954009FFFFFFFFFFFFFFFFFFFF9F3E2378C1CB4A19041D01C081085952C50B7FFFFFFFFFFFFFFFFFFFF4CF864F1844EB40819F446913738B2F0A43DFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFF94E469E307E25CD09A4210DF578165F1612FFFFFFFFFFFFFFFFFFFFFFA50CB2E609230220903929A0A282DBE25403FFFFFFFFFFFFFFFFFFFFF294165CC2B02149891E0561C0705B78C1F23FFFFFFFFFFFFFFFFFFFF0B5020B982F7B1640D17A8444FA8B6F414A47FFFFFFFFFFFFFFFFFFFE60A4817300C601DE99E60E181A016CEF8DB5FFFFFFFFFFFFFFFFFFFFF091547A601F496B956E225191980DBF6BB23FFFFFFFFFFFFFFFFFFFFE08C1C50C2B88F4D58978200CF4018C303787FFFFFFFFFFFFFFFFFFFFC698828183F59C691BF82D812080363D7E78FFFFFFFFFFFFFFFFFFFFF807866530987B09290161C671E70648C7EE9FFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y23_N4
\imRead|altsyncram_component|auto_generated|mux2|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~3_combout\ = (\imRead|altsyncram_component|auto_generated|mux2|_~2_combout\ & ((\imRead|altsyncram_component|auto_generated|ram_block1a44~portadataout\) # 
-- ((!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead|altsyncram_component|auto_generated|mux2|_~2_combout\ & (((\imRead|altsyncram_component|auto_generated|ram_block1a20~portadataout\ & 
-- \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|mux2|_~2_combout\,
	datab => \imRead|altsyncram_component|auto_generated|ram_block1a44~portadataout\,
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a20~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~3_combout\);

-- Location: LCCOMB_X52_Y23_N0
\imRead|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\ = (data_address(15) & (!data_address(14) & data_address(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_address(15),
	datac => data_address(14),
	datad => data_address(13),
	combout => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\);

-- Location: M9K_X33_Y20_N0
\imRead|altsyncram_component|auto_generated|ram_block1a68\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"60DE00E2DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1EA3F5930CCB44C7DF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A1AB3A3C20A2C99D7D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1660A64DE03BA542052298FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE33FA326B9052B3BD48FBAB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADFDDF42F2C2F20ECA4611C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1EEC889142ECCA531F8EB0E60FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE49BD71F0819A8E56C6E08AA30DFFFFFFFFFFFFFFFFFFFFFFFFFFFFF061FE243D7077116B11ACED85B76FFFFFFFFFFFFFFFFFFFFFFFFFFFDC0AF5310BB93E5",
	mem_init2 => X"2CD9536990AF86FFFFFFFFFFFFFFFFFFFFFFFFFFDFC9E7C9EE561075C8776022ED2566C9FFFFFFFFFFFFFFFFFFFFFFFFFFFA44353E382FA0C9DEEDD4846DA767F9FFFFFFFFFFFFFFFFFFFFFFFEF8987576225143B415FD5D92A59C2BADFF7FFFFFFFFFFFFFFFFFFFFF7E5280EA028F9594908B3DB6F4DEBC59AEFFFFFFFFFFFFFFFFFFFFFFFF2B082A4F29E97120875DC7C59A3E677E77FFFFFFFFFFFFFFFFFFFFFF90C7B670F3C14382D40740AF94C7E04F0FF7FFFFFFFFFFFFFFFFFFFFE27799B604749483DF007943D8833172333FFFFFFFFFFFFFFFFFFFFFF9EB3D692FFD5E0000180461C3D3D1B9922BFFFFFFFFFFFFFFFFFFFEFF4C337D69ACA38003FC",
	mem_init1 => X"06440638689635487BFFFFFFFFFFFFFFFFFFEBE984CAF57F386DA5FFCD21834CF3312AFB27FFFFFFFFFFFFFFFFFFF6DEDA338CC9842F73FFF00E1590407AB01E1777FFFFFFFFFFFFFFFFFF773D8262AC099D0199FECA63F274A04DDD64CFFFFFFFFFFFFFFFFFFFF9992EAF0103F629BFFFFFBEE7BC3A8BC9D7749BFFFFFFFFFFFFFFFFFADF189886DC11A4FFFFFFFFFF8208219FE09A43FFFFFFFFFFFFFFFFFF8337C79646AEB7FFFFFFFFFFD247F41D9AC63F3FFFFFFFFFFFFFFFFBE5DD543430C48FFFFFFFFFFFFF25206A3EC22A15DFFFFFFFFFFFFFFFF10B4B8838681FFFFFFFFFFFFFFD24ABCE8BC26997FFFFFFFFFFFFFFBE40AB12B84A3EFFFFFFFCFF",
	mem_init0 => X"FFFFF2394F03848CDBFFFFFFFFFFFFFFFF63C183DA187F7FFFFFFFD7FFBFFFC576078E84D5DFFFFFFFFFFFFFFFCC876B8C842BBFFFFF9FBCA7FFFFFF63D0BDBDCCEFFFFFFFFFFFFFFFD7B38E4C4EBFFFFFFFCED26F5FFFFFBD02D33E26DFDFFFFFFFFFFFFFFFBE6A3984C9FFF7FFFCB00007BFFFFFF4C57834FCE5FFFFFFFFFFFFFF8AE3FB5C777FFFFFFC4E0F6188FFFFFCD858A66FB17FFFFFFFFFFFFBEE58A861CB3FFFFFFE79123EAF8BFFFFF059CD7EF671FFFFFFFFFFFFF8F2CE28A2EFFFFFFCAAD7C1F9652FFFFF62FD5BC406FDFFFFFFFFFFDE2A0F7DDC47FFFFFF7641B1AFDF21FF7FD841A2B279CFFFFFFFFFFFFFFCAA415D79BFFFFFB3087A33A6",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a68_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a68_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y23_N16
\imRead|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\ = (data_address(15) & (!data_address(14) & !data_address(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_address(15),
	datac => data_address(14),
	datad => data_address(13),
	combout => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\);

-- Location: M9K_X33_Y25_N0
\imRead|altsyncram_component|auto_generated|ram_block1a56\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"30A3FFFFDE04DD0B583FFFFFFFFFFFF44F8DF9095FFFFFC933BBFFC5EC469FFFFF851B5CA726FFFFFFFFFFFD1430F6D03FFFFFCD3FE260D9767408FFFFF99C4BA5AFB7FFFFFFFFFDE460E0C10FFFFF7A2B441A868689047FFFFF91C687CA23FFFFFFFFFFC8235BA967FFFFBB465ECC403F008085FFFFF4A021DD73FFFFFFFFFFF955D821BCFFFFFD2002B4EFDC7210C00FFBFF9A9A12FE8F7FFFFFFFFEE98D6E6A1FFFFE6702EADE021D6CE000FFFFF9F20998247FFFFFFFFBF997E9D48FFFBF9A20373A780E6E5080737FDF1FA19F007FFFFFFFFFE9735EAA01FFFFF80001E57B54641B4003BFFFF97011646BBFFFFFFFFA690BF64CEFFFF3300189FB020856",
	mem_init2 => X"5001A9FFFFC815CE226FFFFFFFFEB3FD7431FFFFFF158006B1300CD43E802A3FFFFD90424F8FFFFFFFFBD266C6DD7FDFFF4450601932A0E28A30004BFFFF9F2AE92C3FFFFFFFF851002853FDFF9000087D180AC1363E001C7FFFF941D80D61FFFFFFFD34695AA0FFFFA340046B4D359A4CFCE0000DFFBF970EF8B83FFFFFFFB5F985EF3FFFF9240004C7630546CABC00009FFFF15432464EFFFFFFA4B182286FFFFF540005C018004B45BA000067FFFF802178ADFFFFFFFD973859DBFFFFDE20041FA520045253D000053FFFFCA3DA6377FFFFFF2BE485077FFFE9240001D408010247780000D5FFFFC68235257FFFFFEA0590753F7FF9600002FFB080000A0C",
	mem_init1 => X"8000137FFFF21962CBEFFFFFF1684F3E46FFFE9500005096D0020E8620000089FFFE46F35E9DFFFFFCFB2DC903FFFFBCA20060E420000062E40000C9FFFFB1B4158F1FFFFF1396C4F93FFBF5000006158000000144A0000017FFFFCFDDEC257FFFFE947D28EFFFFD4000004EB800000210CA000000FFFFF283855CBBFFFB73D8F9DDFFFED000005910000000648CC0000017FFFFF723E4AFFFFF85A8C1A17FFBED00000890C0000000C2800000017FFFF4C088D0BFFFF8DD34713FFFF056000097F8E000000F440000003FFFFA3751A3CFFFFFA56C4EFBFFFE20000000349E000000A240000016FFFFEF2F0D787FFEE0177675FFFF1600000008038000022458",
	mem_init0 => X"0000023FFFFE03EEB75FFFFF340FB75FFFF924000004A4000F8049470000006BFFFDD8AF57A3FFED85FE4187FFFC00000000801C8513804A00000002DDFFF843894C7FFF0472C266FFFE300000004000D91A9C50A80000030FFFFFBA8BD3EBFFE3DBAF4D2DFFC00000000C002D5A298515000000243FFFF9060EFFFFFD614EC4AFFFF380000000A20C45030A09E0000008E3FFFF82743C9FFFA4D4DD057FFF300000010460A05AF82980000000287FFFF02C25437FE42E7E023FF7E800000034DC1FFF16900A000000214FFFFE889C283FFBA53610DFFFE80800000073865A4D6442400000000DFFFFD200E04BFF9A88F233FFFD420000003360220263895C00",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y23_N30
\imRead|altsyncram_component|auto_generated|mux2|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~0_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead|altsyncram_component|auto_generated|ram_block1a68~portadataout\) # 
-- ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead|altsyncram_component|auto_generated|ram_block1a56~portadataout\ & 
-- !\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a68~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a56~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~0_combout\);

-- Location: LCCOMB_X52_Y23_N10
\imRead|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\ = (data_address(15) & (data_address(14) & data_address(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_address(15),
	datac => data_address(14),
	datad => data_address(13),
	combout => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\);

-- Location: M9K_X33_Y5_N0
\imRead|altsyncram_component|auto_generated|ram_block1a92\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a92_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a92_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y23_N8
\imRead|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\ = (data_address(15) & (data_address(14) & !data_address(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_address(15),
	datac => data_address(14),
	datad => data_address(13),
	combout => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\);

-- Location: M9K_X33_Y22_N0
\imRead|altsyncram_component|auto_generated|ram_block1a80\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFE8E012C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D8000FF2CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F1AC030E26E56FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF22B0A0203B4815FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF88020F41C00020947DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DCC789",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a80_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a80_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y23_N28
\imRead|altsyncram_component|auto_generated|mux2|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~1_combout\ = (\imRead|altsyncram_component|auto_generated|mux2|_~0_combout\ & ((\imRead|altsyncram_component|auto_generated|ram_block1a92~portadataout\) # 
-- ((!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead|altsyncram_component|auto_generated|mux2|_~0_combout\ & (((\imRead|altsyncram_component|auto_generated|ram_block1a80~portadataout\ & 
-- \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|mux2|_~0_combout\,
	datab => \imRead|altsyncram_component|auto_generated|ram_block1a92~portadataout\,
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a80~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~1_combout\);

-- Location: LCCOMB_X32_Y23_N24
\r~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~0_combout\ = (\process_0~13_combout\ & ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\imRead|altsyncram_component|auto_generated|mux2|_~1_combout\))) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- (\imRead|altsyncram_component|auto_generated|mux2|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~13_combout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datac => \imRead|altsyncram_component|auto_generated|mux2|_~3_combout\,
	datad => \imRead|altsyncram_component|auto_generated|mux2|_~1_combout\,
	combout => \r~0_combout\);

-- Location: FF_X32_Y23_N25
\r[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r[0]~reg0_q\);

-- Location: M9K_X53_Y9_N0
\imRead|altsyncram_component|auto_generated|ram_block1a45\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFBFFFFFFECB7EFCDFFE1DF8497FFF9FFFFFFFEAFFF08B3395FFBFFFFFFFF9FFFF93AE2FFFFF4FAEEEE7FFEFFFFFFFFDDFFDA1F407BFFFFFFFFFFFBFFFFEEDF1FFFF59A712B0FFFFFFFFFFFFFFFFF907C86FFCFFFFFFFFF3FFFF9FC11FD7FF14C77B33FF0FFFFFFFFF7FFEB0230BFFAFFFFFFFFCFFFFCFFAFDE37FFCAEFF79BFE9FFFFFFFFDFFFED3A3E7FF7FFFFFFFFBFFFF4EF1F766FCFBF9ECE79F8FFFFFFFFFFFFFF894EBDFFBFFFFFFFFCFFFF58FA96C5FBC753331BFF9FFFFFFFFFFFFEFDC18FFFFFFFFFFFFDFFFE5B9ABC89D8FDAAE968D9EDFFFFFFFFEFFF6FC896BDFEFFFFFFFF7BFFB33DC5946F273C7DAC5CBD5FFFFFFFEBFFFFC6023FFFCFBF",
	mem_init2 => X"FFFFFFFF9F055B3FB7F3FB8DF38F1F7FFFFFFFFECFFF0C3B3FFFF9FFFFFFFFF7F2C815FA6A747F7DCC45C6EFFFFFFFFFAFFFFADEC1FFFFFF7FFFFFBE7FA336FF63EBD3FFFCADB9DDFFFFFFFFF9FFFFD5762FFFFAFFFFFFFFDFD8C06B7E6FF17FFFB3DF5FFDFFFFFFFEBFFFDC057FFFFE7BFFFFFFF7F8976EDD07F97FFFFD3DFECDBFFFFFFFF7FFFF8FF2FFFFFFFFFFFFF79FEDDEF3F3FC3BFFFF39DE5DFFFFFFFFFA7FFF997897FFFEBFFFFFFFB3F77B7FFFBFCFBBFFF147DFAFFFFFFFFF7FFFEF393DFFFF5FFFFFFFF57E8F3ADFFBFC94CFFDF823C7FFFDBFFFF7FFFF65F5AFFFF767FBBFFFFFEDFD4FFFFC9926A5B7585BFFFFB3FEFCFFFFD9FFFF7FFC64FD",
	mem_init1 => X"5FFFFDFB7EE7FBFF1BDA4F37FF977FFFCFFFDBFFF79EBDDBBFFFA77FFDFFFFBFABAB3FFFF67D40EFF9FBFFFFFFFFF5D7FFCFDFBFD3FFFBEFFFFFFFFFF6FF51FFFF7FFEDFFE7F59FFEFEFFFBDEFEF5DFFBF33FF1FFF7FFFFFFFDFD9FFEF7BFE7B78EFDF3FFCDFFFFC7DF2C1DFEEB5BFE0FFFDBFFFEFE3F3970063FFFF7FD7FEE7FF18BFFFB3FC366FFF55AFFC1FFF87FFFDFFFF3EB1F2DFFFFF48BE7FFFE36FFFF8FFEF22CFDFF7FFA7FBE3FFFFDFF7DEFE3E37FFFF5E7F57BFFDA776D97FFC7EFFED679FFAFFBA97DFFFFA5CD5FE5BFFFE77FFF1F7FFCEDFFFFFFE1C77FDF3D7FE17E7F73FFF3F73D19B84FFFFD4FFFC9EFF99C8EFBFFFFB1BFFDD9D7FDBFDCC",
	mem_init0 => X"E67FEFF478431FFFFFF2FFFF379FFF343FBFFDFDBC9FFF3DAFF3FD3DAEFFFDFFFF9F87FFFFBE4FFFD5FFFED5C7FFFFBFEF43FFC89BFD7F8FAEADFFDFEBFFF9AFFFF892FFF93FFFFBB8BFFFF7E9347FFBADBF8DB9F599FFFFFEFF7F2FD7F3B217FFF79FFFFB9FFFFEFFDEBFFEAE8FF1FF6F297FFF3FD3FFFFAFFEE13C0FEDF8FF7763FDFFFFEC53FFF729FE75AFEECFFFE7FFBFFC59F7D677E3BBFF4F1FD77FDFFEFBFFFFFFFFFFEFEFE3AFE29CFFEFFFAFC674B61F2C4FE0EFFF7FEBFFDF7FFFFFFFFFFDFD7DFFDB639FFEB7DFEA4657D9F37BFD7E5FBE3F7FE7FFFFFFFFFFFE7FFF1FFE1AF3FF2AAE77FDF92FEF37FFB7EFF2E9FFFEFFFFFFFFFFFFD7FF87DF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y12_N0
\imRead|altsyncram_component|auto_generated|ram_block1a9\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFCE7FB7D7DE76F116BAF078D6BF63EED7FFFFFFFFFFFFFFFFFFFFFFFFF9FFBDCBBBFE50B20FEF6FD6FB7A7D5097DFFFFFFFFFFFFFFFFFFFFFFF3DE33F9F7CE951EBE52DE3C85787AF2BB1E7FFFFFFFFFFFFFFFFFFFFE7E827FAEFCDCF806DFDEE0CDDE9F52FE837FFFFFFFFFFFFFFFFFFFFFEFA18FFB9FFCC87673F9FFC1681BEBFFC617FFFFFFFFFFFFFFFFFFFFF968EF5F73FF81CFF8593F390F9DED53EFF17FFFFFFFFFFFFFFFFFFFFF643E6BF94FFF5249FB67E0688BF1B3FD9F197FFFFFFFFFFFFFFFFFFFEF3FFAD5A37FF8F0B77EFE9D7EFF86B75FF56FFFFFFFFFFFFFFFFFFFFEDFAFFFF67FFFFCFFEFCFFDDFECCDDFFFD5EFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFDF4B77FFDC7FF947FEE7FDFFFF1A7FFEF5AFFFFFFFFFFFFFFFFFFFFFF37CB3FDFEC7FFFFF9D4FFFFE6947FFFF34EB7FFFFFFFFFFFFFFFFFFFFFC18EFD97F2CD7FF6A83FDFB36FDFBFF1C2EFFFFFFFFFFFFFFFFFFFFDF400FF7FEF730FFC74D9FFF33BFFCFFE14BFFFFFFFFFFFFFFFFFFFFFF6BEE4FEFE5F80FE2FFFC3FC1FF7F7F257CEBFFFFFFFFFFFFFFFFFFFF60F4F87FC91FACF89FFE3BCDDEACFFC74BC37FFFFFFFFFFFFFFFFFFFED1E5817FBEECFCCBFFFF9F7FFF7FFA81A686FFFFFFFFFFFFFFFFFFFFDBDA2A3FFBEDFFFFFFFFFFF9FEDF7FF5516E5FFFFFFFFFFFFFFFFFFFFB9E86222C3DFFDFFFDFAFFFFFFBE346C617FBFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFF5FF7619F715FCFFFFEDF77FC7EBB9229BBFF7FFFFFFFFFFFFFFFFFFFE5FA3DC0FAB3FF38FF3CFF7FFFCFD503BA1FAFFFFFFFFFFFFFFFFFFFFDFEA87539EE7BB7EF986FDFB77D9A7AB841FDFFFFFFFFFFFFFFFFFFFFBFABB117DA0C7AFB52FFA4F561159A18DC9FBFFFFFFFFFFFFFFFFFFFF7F5E147D147879FC375F67F7C72A2F8B0C377FFFFFFFFFFFFFFFFFFFEFFFF9A31F1F0E3E723DBE7CF8D8F0C18FDFEFFFFFFFFFFFFFFFFFFFFDF7B976C1F1E3E78E9FEFDF971A7F1F7836BDFFFFFFFFFFFFFFFFFFFFBFFE9B703E3CF8F21BF597F9F3C7C3ED97FFBFFFFFFFFFFFFFFFFFFFF7FF61E27F9B0E3FBFF3FF7E0E3E7F75E1BFF7FFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFEFDFEF7DFDBFFD7DD3FFDB7EAFFDBFFAA3F7EFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFBFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFF07C3C7FFFFFFFFFE0C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC79FFFFFFFFFFF1CF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FDF9FFFFFFFFFFFFF39F9FFFFFFFFFFFFC3FFFFFFFFFFFFFFFFFFFFFFFBE1F7FFFFFFFBFFC73E1FFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFE801C3C18000FF00C0073C3C0000000000003FFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: M9K_X5_Y10_N0
\imRead|altsyncram_component|auto_generated|ram_block1a33\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"EFAE7FFBBF3F997E8FF5C3BFF7F69C5F7FFFFFFFFFFFFFFFFBFFFAF2E5FFCFFF601EFE97C61FACFFFEFF83D9F3FFDBFFFFFFFFFFFF9FFCB81C1FF9FFEE4F3F237E73BA1FFFDEF9F196FFFF3FFFFFFFFFFFFFFFDC6967FF3FFFC5DFCD9FF73E66FFFB8D2FBFA7FFFFFFFFFFFFFFFFFFEDD6BDB1E7FFE4A07EF7FF7FF3BFFE74FCF9B5FED2BFFFFFFFFFFF3DBEEE71FCBCFFFEC9BF6BFFFDC8CFFFCEBF87DB07F9EFFFFFFFFFFEFFFE45BF7FC79FFFEC83DFFFFFECF3FFF9E3F0FBF2EFFEBFFFFFFFFFC0FDD3F791F1F3FFFFDD1DFFFFFFC5FFFF3F7FBE1A4DFFCFEFFFFFFFF67FB21974FEFE7FFFFFFE7FFFFFFC7FFFE7E333E965FFFDB9FFFFFFFEEEFE9A5F3F",
	mem_init2 => X"8FCFFFFF3FBFFFFFFFFFFFFC7F7D1FDA1FFDCFFFFFFFFFF7DBB1AB1BE7F9FFFFFAFFFFFFFFFFFFFFCFFFDBDAEBBE94FFFFFFFFF8FD7782F6757F3FFFFF5FFFFFFFFFFFFFF9F8BF9FB67FB5FDFFFFFFFE3FAC6DBD7A1FE7FFFFFFFFFFFFFFFFFFFF7F8EF7E78A7DFC0FFFDFFD9EDF651F9B0EFCFFFFFFFFFFFFFFFFFFFFEBFBF6FFE8558FE27BFFDF11F1E5FFF7BDF9DFFFFFFFFFFFFFFFFFFFFD3FEF076EBFC6B79DF3EE67FF7FDCD83DFDBBFFFFFFFFFFFFFFFFFFFFCD71B9FC04FF05F07FDF6759CF3219EF8DE27FFFFFFFFFFFFFFFFFFFF43F0F9E283F8D7E301F5B2D2BFED1ABCBDACFFFFFFFFFFFFFFFFFFFFEFBFFE1EA8FD61FFE68A97FD27991717FF9",
	mem_init1 => X"BBFFFFFFFFFFFFFFFFFFFFDF1E1C9C79FFCD3FFED8FFF997B78E5E1F0F7FFFFFFFFFFFFFFFFFFFFBB7F141E38BBF42DFDBBFC6FFE29792CEFFA7FFFFFFFFFFFFFFFFFFFF753CFF9FFCDFF64FFFC7DB63DEFFEFF92CCCFFFFFFFFFFFFFFFFFFFFCFC17FC3D7D7FCEE1FF9CAD6FE377C2FB8379FFFFFFFFFFFFFFFFFFFFBFD7F3FF576FFDF58F0E7B17FDFEBFF2FAF73FFFFFFFFFFFFFFFFFFFFF7D7FFFFFFDF87E93EEF8A0F6AFFFBE7F9EF7FFFFFFFFFFFFFFFFFFFE81FEFFFBFFFFEFCA77FB5B5FFFFF3FFFFA06FFFFFFFFFFFFFFFFFFFFD07E7FFFFFFFFFFB8EABD9FFEFFFFFFF7FE0FFFFFFFFFFFFFFFFFFFFFB4DF6E3F1EBFFFB5BD5DF6FF53863F9F3E83",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFF683B80400C007005E44940E080010803BD26FFFFFFFFFFFFFFFFFFFFEFC0E3EDFFFFFFFEBD10B7DFFFFFFFFF0A875FFFFFFFFFFFFFFFFFFFFFF8FC7F8000FFFE1C1FAF9AFFC001EF33F0FBFFFFFFFFFFFFFFFFFFFFFFEF9C7E181F84E5419ED6703F0001C7BD3F7FFFFFFFFFFFFFFFFFFFF1FFF2BF0FF80EE533E1CFDBFC0013CBB7F7BFFFFFFFFFFFFFFFFFFFFED7FE2CBE1FFFFEBE47596253FFFF8A31FE8FFFFFFFFFFFFFFFFFFFFFF8F7E6E7CF3FFE69E69AFF6CFFF106D83EF59FFFFFFFFFFFFFFFFFFFFC81FCE77FF993EA1E8D9136796FBFD247C15FFFFFFFFFFFFFFFFFFFFFFD579F7A91B742114EFD2EFAF2C0A5FCEABFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y10_N14
\imRead|altsyncram_component|auto_generated|mux2|_~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~6_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0)) # 
-- (\imRead|altsyncram_component|auto_generated|ram_block1a33~portadataout\)))) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\imRead|altsyncram_component|auto_generated|ram_block1a9~portadataout\ & 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a9~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \imRead|altsyncram_component|auto_generated|ram_block1a33~portadataout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~6_combout\);

-- Location: M9K_X73_Y8_N0
\imRead|altsyncram_component|auto_generated|ram_block1a21\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFF80F3AFDFCF446C6B236D8445E7E76BF8CFFFFFFFFFFFFFFFFFFFFFFFFC2F779FEE56E7ACD4BF6B5B5BBBAB7340FFFFFFFFFFFFFFFFFFFFFFEFCBC6D6FCCF5677F30CF6054E353F6F7DF9FFFFFFFFFFFFFFFFFFFFFF7EF8DBBF7D4F9BBE998F2D3BDFFFE50F7FFFFFFFFFFFFFFFFFFFFFFF427F9B7AB37CAC8E855F6B6AFB1DCFE1FB6BFFFFFFFFFFFFFFFFFFFFF808F36F75B09EB037F9F86BD47E3FF4311DFFFFFFFFFFFFFFFFFFFFFEB1FE69F6FFF15FFEF036CE2FFFE2BE9F637FFFFFFFFFFFFFFFFFFFFF7FC3CDEEFC1818CE3EE9726FFFF37ADFC3BEFFFFFFFFFFFFFFFFFFFFFFFEFFBFDF2947077FFDFF5FE7A5EFEBFDFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFF2FFB77FBC81D23CB3D5BA278D89DDD6FFD5FFFFFFFFFFFFFFFFFFFFF68FF6EFF7EEF2937E7D6E5C745FF3BA9F6C1FFFFFFFFFFFFFFFFFFFFFF81F4DFEFC286003E79FEC3DB60C7752DD3FFFFFFFFFFFFFFFFFFFFFFAF6FBBFDFAE7AFEF9D9BD05F21BAE6A7DF17FFFFFFFFFFFFFFFFFFFFFFB15F7FBDC7B34F7F5730A1C9EFD8DCFC9BFFFFFFFFFFFFFFFFFFFFF3FE79EFF7DB67FB9F4EB362FD997B9BBF97FFFFFFFFFFFFFFFFFFFFFE5FEF9DFEF75A0DFECDDFF8FBE82F7377F73AFFFFFFFFFFFFFFFFFFFFCFFEE7ADDF71154E7DFFFA4AD0FFEE6A7DC7FFFFFFFFFFFFFFFFFFFFF9FF16F5BBE318F687B673B1EDD8BDCD5F8FFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFF6F72DEB77F66817B668FF5718A07B9AB7035FFFFFFFFFFFFFFFFFFFFEE0BF356EF84B5831DCEF79E26EEF7376DF17FFFFFFFFFFFFFFFFFFFFDE37E6ADDEB6DF0B396BF617A807EE6EDF9DFFFFFFFFFFFFFFFFFFFFFB47BCD5BBF74707F93D7EA5A1EBFDCDDBE72FFFFFFFFFFFFFFFFFFFFF39FDFA377F19B185E7BF6C52B1A7B93B6FFFFFFFFFFFFFFFFFFFFFFFE7F95B46EF49BBE29EFFDE37BDC1F72E6A1FFFFFFFFFFFFFFFFFFFFFFCFECA6A5DF3FD86FF12B9CA90EFFCF50CCC7FFFFFFFFFFFFFFFFFFFFFB7C3CD0BBF81F0ADFA3FF9137FBB9EA1FCFAFFFFFFFFFFFFFFFFFFFFF380FB8177AB7EBA1E6FBF97E009F3D53FC46FFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFF7BEFF02EFE57BFBFEBBDF98069FE7AB7FFDDFFFFFFFFFFFFFFFFFFFFEE73BE15DF6BEE2775B76E81F5D7CE56FEF9FFFFFFFFFFFFFFFFFFFFFDF9FFC2BBF73FEBCF8E1FABF3CD79CA97E7DFFFFFFFFFFFFFFFFFFFFFBFEFF8577F1E4EFFEEE45FF977C73957E9FFFFFFFFFFFFFFFFFFFFFFFD61730AEFF381F29F6957C38F7FE72AE605BFFFFFFFFFFFFFFFFFFFFCF89AE55DF43F4EBFF795C360E63EE573745FFFFFFFFFFFFFFFFFFFFF9C0FFC2FBDDC7888FF69FFFF32C3DFB3FF0BFFFFFFFFFFFFFFFFFFFFF383F525F7F89F3B6FCC1F27A819FB95D7F07FFFFFFFFFFFFFFFFFFFFE79FF96EEF6797F63F7FDCA12CFBF7AA9FF1FFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y10_N12
\imRead|altsyncram_component|auto_generated|mux2|_~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~7_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead|altsyncram_component|auto_generated|mux2|_~6_combout\ & 
-- (\imRead|altsyncram_component|auto_generated|ram_block1a45~portadataout\)) # (!\imRead|altsyncram_component|auto_generated|mux2|_~6_combout\ & ((\imRead|altsyncram_component|auto_generated|ram_block1a21~portadataout\))))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead|altsyncram_component|auto_generated|mux2|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \imRead|altsyncram_component|auto_generated|ram_block1a45~portadataout\,
	datac => \imRead|altsyncram_component|auto_generated|mux2|_~6_combout\,
	datad => \imRead|altsyncram_component|auto_generated|ram_block1a21~portadataout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~7_combout\);

-- Location: M9K_X53_Y3_N0
\imRead|altsyncram_component|auto_generated|ram_block1a81\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFF28011D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E7FFF00E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBA7C1F0FC7FBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FE685FDFC24FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED7A9F0BE3FFFCAF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2363872",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a81_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a81_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y12_N0
\imRead|altsyncram_component|auto_generated|ram_block1a69\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"1F65FF1C5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2ADC2047F0FAB7280BB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D1E17400FF9C8B6626E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6BDF5FC26FE81E6FD3DDBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE90DDDFCEF95067ABC077DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFC218A1FDDF6FE8B45A6E47BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF125F0FFC3BFF99D21ED7FBBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1D7BC197BF7FD016D3E9BE5DDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EF7CDB843EEFEC8BDC678C7E79FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC5BC35F12351F",
	mem_init2 => X"C31BB9887DC86FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF63FF82979EBBBBF8B61B7D7FADDB7FFFFFFFFFFFFFFFFFFFFFFFFFFF69BD5C7FFB9CF37E1D46739BFB2DA9FFFFFFFFFFFFFFFFFFFFFFFFFF9E7FB486F1EBF8BCE7FF3C63E7AF499FFFFFFFFFFFFFFFFFFFFFFFFFFE17F29ECD98BEB667DF2738546FFA4CBFFFFFFFFFFFFFFFFFFFFFFFFD487C67B8A0FBFDF76E90F33BEE31B8CFFFFFFFFFFFFFFFFFFFFFFFFEC36096F0B2B7DFFEBF5BFDF73106550F7FFFFFFFFFFFFFFFFFFFFFFF6079A4EDB770B7FFAFFDFC9AF3DDD31C2FFFFFFFFFFFFFFFFFFFFFFFF971597727BE1FFFFE7FFFFB5E218F17D3BFFFFFFFFFFFFFFFFFFFFFDC92C638E3B7C7FFC03",
	mem_init1 => X"FDFFFDA7F1F9CCBBBFFFFFFFFFFFFFFFFFFFFF3ED736697BC791B9FFC49E7CF93C69BD4CFFFFFFFFFFFFFFFFFFFFFFFD25E83F1E7BCA7C000FFD4E67BECF3F9FEDBFFFFFFFFFFFFFFFFFFFE4426D1FD3F055FFB7FEED9F4D8B2EC3E35B35FFFFFFFFFFFFFFFFFFFBA7D551FEFC2FDD7FFFFFEB3AE34C74FCD0C1DFFFFFFFFFFFFFFFFFFF40F1F75DB7C673FFFFFFFFD26BF7D8781FA9BFFFFFFFFFFFFFFFFFFFB4B3BDAFFFD747FFFFFFFFFFC5C23BD1E37B63DFFFFFFFFFFFFFFFFFFD2CBFFA8F2757FFFFFFFFFFFFFB2FFCE9CFFEF9FFFFFFFFFFFFFFFFFBE3B3FCF79FC7FFFFFFFFFFFFFFDD5E5F7E7BE5DFFFFFFFFFFFFFFFFEB6ECF8BBB5F7FFFFFFFFFF",
	mem_init0 => X"FFFFFDE6B17F9F6E0DFFFFFFFFFFFFFFFFF4287B87C6F3FFFFFFFF8FFFFFFFCB09FE27FEFABFFFFFFFFFFFFFFFE969D63BF87FFFFFFFFE93CFFFFFFFD83FCDEFBF89FFFFFFFFFFFFFFFE4B4FA79DD7FFFFFFFEEFF12FFFFFFCDDEEF1D8D0BFFFFFFFFFFFFFFDC361863B4EFFFFFFFF4FFFF9BFFFFFEEFFD9D51705FFFFFFFFFFFFFFB5E31CEB863FFFFFFD7FFF7FF7FFFFFEFBEC5870CD9FFFFFFFFFFFFFE918F19FB2DFFFFFFF06A9C3BFF3FFFFFB36719D30BFFFFFFFFFFFFFFB129D2BFE0FFFFFFEDF903E00FE9FFFFFBB3711ECF9FFFFFFFFFFFFFFF611673BE3FFFFFEAF8E5E603FF37FFFFBDFF31F0B1BFFFFFFFFFFFF990DBEA399FFFFFF2FF7B3FF39",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a69_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a69_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y7_N0
\imRead|altsyncram_component|auto_generated|ram_block1a57\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"7FDBFFFFF6FAC3C677BFFFFFFFFFFFFF9373EBDF7FFFFFB7EC0EBF979DFF5FFFFF2AFF0FD657FFFFFFFFFFFB2BDF97ADFFFFFFD3E43C9FE6B1BFF5FFFFF6625F7FD33FFFFFFFFFFF6B4FFEBFEFFFFFE9DC3464FE7B85FFAFFFFF7737BF3F37FFFFFFFFFFDFE4FE46BBFFFFFAFF2BB27FF6EC6FFBFFFFF35F2FF26CFFFFFFFFFFFEA1A7DE66FFFFFFDFE58BFBD9756F3FE7FFFF6DEAFFBDB7FFFFFFFFFF7E6F95BBBFFFFFB7FEB4E9FDE9D71FFE3FFFF38FF7C4DBFFFFFFFFFF076BD42BFFFFFFEDFFEE45D025BBBF7FAFFFFFE2FFFF3F7FFFFFFFFFE6FEFF24F7FFFFE7FFFA721926FAE3BFFE3FFFFF2FEF4BD5FFFFFFFFF91FE1DF3DFFFFF4CFFF4A7CFDE4B3",
	mem_init2 => X"8FFE77FFFFB3FA58FDCFFFFFFFFE5DD29FCF3FFFFEEE7FE76ACFF351E97FF79FFFFBAF97B42FFFFFFFFFF3B33BC3CFFFFF3BBF9DF7CD251CB1EFFFB5FFFFF8FF1FE9FFFFFFFFFFF7BF3593FFFFAFFFF7866404C6DF99FFE3FFFFFF3EE7F99FFFFFFFFCC9FEAA5FFFFFFBBFFB8533B3EBF3735FFFF1FFFFF3E977B0BFFFFFFFB1EA9BD7BFFFFADBFFFE59DCFAD33A77FFFFDFFFFFBADDC53BFFFFFFEF7A4B2DFFFFFFBBFFFBCDE7FFB7DA7DFFFFD9FFFFBFDFA6DBBFFFFFFB4D06FE1BFFFFEDDFFBE855DFFBB8AFFFFFFEDFFFFF5C9AECAFFFFFFFE47BF763FFFFF6DBFFFDAAF7FFFD18F7FFFF6FFFFFB9F2BAFE7FFFFFFBEE6EF3DFFFFEDFFFFDA6EF7FFFF7F2",
	mem_init1 => X"7FFFECBFFFFF5FCFB84FFFFFFABE53EDFFFFFF6EFFFFB57B3FFFF1A91FFFFF73FFFF6F5870E4FFFFFE43CF37F7FFFFCF5FFFDE3FFFFFFF9A9BFFFFF67FFFFBEF1C085FFFFFF469E9B5BFFFEBFFFFFDE6FFFFFFFFA95FFFFFF3FFFFF2615DD9FFFFF5EC8EDFFFFFFEFFFFFFB1AFFFFFFFF215FFFFFF7FFFF63A1F23FFFFFFAFF263AFFFFFBFFFFFE6AFFFFFFFFB733FFFFFE7FFFEC8173E67FFFFFEFDD7D9FFFFCEFFFFFF7D7FFFFFFF33FFFFFFFE7FFFE939F3A77FFFFF63BE3E5FFFF3BBFFFFEF5FFFFFFFF0CBFFFFFFDFFFFEAA6AF07FFFFC9B8E7973FFFEDFFFFFFFEF7FFFFFFF5FFFFFFFECFFFFD4FB6D87FFFFFFEB1F97FFFFEFFFFFFFFFFFFFFFFFFA7F",
	mem_init0 => X"FFFFFDCFFFFEBE1F1C7FFFF6E560CBBFFFE6DBFFFFFE5FFFF07FFEBCFFFFFFD5FFFFF75BAB9FFFFD7DFCEE37FFF9FFFFFFFFFFF7781C7FB5FFFFFFFD3FFFFFF5960B9FFF7AF1899FFFFFEFFFFFFFF3FF677E67BF5FFFFFFCF7FFFFA7242A1BFFF81643B1BFFFEFFFFFFFFEFFD2C84A7BEBFFFFFFDB7FFFFEFEF1C37FFB18F78B7FFFFA7FFFFFFFFFF783FE77FE7FFFFFFF3FFFFF4C6BCB77FF6A92FFE9FFFFCFFFFFFEF3FF559857F77FFFFFFFF67FFFFDAED77E7FEB519FFFFFFF97FFFFFFDA3FE43FFB7FF5FFFFFFDEBFFFFE35E1E78FF947B9EF7FFFFDF7FFFFFFEFFB73C913FF8FFFFFFFF4FFFFED147AB4FFC0FC5DCDFFFCFDFFFFFFD5FFE3F1C8BFE3FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y10_N22
\imRead|altsyncram_component|auto_generated|mux2|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~4_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1)) # 
-- ((\imRead|altsyncram_component|auto_generated|ram_block1a69~portadataout\)))) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\imRead|altsyncram_component|auto_generated|ram_block1a57~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a69~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|ram_block1a57~portadataout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~4_combout\);

-- Location: M9K_X73_Y7_N0
\imRead|altsyncram_component|auto_generated|ram_block1a93\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a93_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a93_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y10_N8
\imRead|altsyncram_component|auto_generated|mux2|_~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~5_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead|altsyncram_component|auto_generated|mux2|_~4_combout\ & 
-- ((\imRead|altsyncram_component|auto_generated|ram_block1a93~portadataout\))) # (!\imRead|altsyncram_component|auto_generated|mux2|_~4_combout\ & (\imRead|altsyncram_component|auto_generated|ram_block1a81~portadataout\)))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead|altsyncram_component|auto_generated|mux2|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a81~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead|altsyncram_component|auto_generated|mux2|_~4_combout\,
	datad => \imRead|altsyncram_component|auto_generated|ram_block1a93~portadataout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~5_combout\);

-- Location: LCCOMB_X45_Y10_N28
\imRead|altsyncram_component|auto_generated|mux2|_~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~8_combout\ = ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\imRead|altsyncram_component|auto_generated|mux2|_~5_combout\))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\imRead|altsyncram_component|auto_generated|mux2|_~7_combout\))) # (!\process_0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|mux2|_~7_combout\,
	datab => \imRead|altsyncram_component|auto_generated|mux2|_~5_combout\,
	datac => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datad => \process_0~13_combout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~8_combout\);

-- Location: FF_X45_Y10_N29
\r[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \imRead|altsyncram_component|auto_generated|mux2|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r[1]~reg0_q\);

-- Location: M9K_X33_Y10_N0
\imRead|altsyncram_component|auto_generated|ram_block1a10\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFC000002DFF53FEDBFDFFFC0FFE7FF76800001FFFFFFFFFFFFFFFFFFFF8004034BFFFF5FFFF8F1FFFFFF7FE6F602003FFFFFFFFFFFFFFFFFFFF003C0037FD7F7FFFFFFFF8375FFFCD900F007FFFFFFFFFFFFFFFFFFFE0178006FF9AFE7F7F7EFFF3FF97F9B001E80FFFFFFFFFFFFFFFFFFFFC03C0007BFF77F81FEFFFFFFFDBFF38000F01FFFFFFFFFFFFFFFFFFFF83F8000B7FFDBFFFFFFFFC7FD7FFE68001FC3FFFFFFFFFFFFFFFFFFFF07800007FFFE7F7BFFFFFFE79FFFDC000078FFFFFFFFFFFFFFFFFFFFE0D000005FFFFE207FFFFFFFFFFFF940000B1FFFFFFFFFFFFFFFFFFFFE28100001FFFFFFFFFFFFFFFFFFFE00002251FFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFC0BC80003BFFFFFFFFFFFFFFFFFC800003503FFFFFFFFFFFFFFFFFFFF08B8C00002FFFFFFFEDFFFFFFF980000C754FFFFFFFFFFFFFFFFFFFFF01E31000009FFFFFFFFFFFFFFB000000C791FFFFFFFFFFFFFFFFFFFFC07BF00000017FFFFE81FFFFFA0000001E781FFFFFFFFFFFFFFFFFFFFC171C98000005FFFF402FFFFA000001938F87FFFFFFFFFFFFFFFFFFFF870FCF8000001BFF20017FF62000003CFC38FFFFFFFFFFFFFFFFFFFFF0C1E7E80000003CC00007F800000017E7931FFFFFFFFFFFFFFFFFFFFE0A3D3CF0800000000000006000043CF2F153FFFFFFFFFFFFFFFFFFFFC01F1F5E38200000000000000043C78F8F807FFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFF801C9E38B68000000000000000436F5E4E00FFFFFFFFFFFFFFFFFFFFF00FCFFE1F4C0000006600000030727FF7F01FFFFFFFFFFFFFFFFFFFFE01E7EBC7D70408087870404083EF875F9E03FFFFFFFFFFFFFFFFFFFFC07C3E7865F387838B9E1D1E9EFA65F7C3607FFFFFFFFFFFFFFFFFFFF80F9F3C1E9C30F060638183C7065E0F3F7C0FFFFFFFFFFFFFFFFFFFFF0041E3CF8E0F0C181C3018307271F3C78201FFFFFFFFFFFFFFFFFFFFE00C7C60E0E3818787030786075C0C38FCC03FFFFFFFFFFFFFFFFFFFFC001E581C1030609060E09060C08381A78007FFFFFFFFFFFFFFFFFFFF8001E08104041E040000080E08082801E000FFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFF00038000000008000000081000000005C001FFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFF7FE3C3E7FFF00FF3FF8C3C3FFFFFFFFFFFFDFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y10_N0
\imRead|altsyncram_component|auto_generated|ram_block1a34\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"1C00FFF8FAC5FFBE5FFE3C7FE00983C1E0001FFFFFFFFFFFFF001F1F06001FFF9FA3FFE7E0FFD30FFC007C1E7C0003FFFFFFFFFFFFE003E783E003FFF1F1FFFCFD07F0C3FF800307A3C000FFFFFFFFFFFFF000F370B0007FFE3E1FFA1FE89E11FFF040F838F80007FFFFFFFFFFFF001F3E1E020FFFE3C3FD07FFC2E07FFE040F070F8001FFFFFFFFFFFFC0079387C081FFFE38FE83FFFC141FFFC16060F9F8000FFFFFFFFFFFF801F9F060783FFFE31F01FFFFE003FFF80C0F060E0001FFFFFFFFFFFE001C183E0C07FFFE03A2FFFFFF00FFFF0081C1F7F0003FFFFFFFFFFF800FEF838100FFFFE021FFFFFFFAFFFFE0184E0E9C0001FFFFFFFFFFF000E5C1C0",
	mem_init2 => X"F01FFFFF80FFFFFFFFDFFFFC03C3E1C7E0001FFFFFFFFFFC007E3C7C3C03FFFFF97FFFFFFFFFFFFFC010181D380001FFFFFFFFFF00073E060A007FFFFF9FFFFFFFFFFFFFF80783C38F80402FFFFFFFFFC003F1C3C0E00FFFFFFFFFFFFFFFFFFFFF0079787C700302FFFFFFFFC12038F8787801FFFFFFFFFFFFFFFFFFFFE0020B831F83E017FFFFFFE81E1F0C1C04003FFFFFFFFFFFFFFFFFFFFC4020F8F8E03E483FFFFFF007C1C7E7C10087FFFFFFFFFFFFFFFFFFFF948F4E07FF01FA04FFFFF482F8FDE660F078FFFFFFFFFFFFFFFFFFFFF1E07071E5C0170049FFEC00790E1E7C381E1FFFFFFFFFFFFFFFFFFFFE1C041E0F7E02F4089EE7007D07EF0F8207",
	mem_init1 => X"83FFFFFFFFFFFFFFFFFFFFC1C1C0C3C3801F801127402EA870F0C0E0C07FFFFFFFFFFFFFFFFFFFF8481E3E3C7C01FF2024002F681F7C7C78100FFFFFFFFFFFFFFFFFFFFF0A8283810F001FE8000037BC01C20F040F01FFFFFFFFFFFFFFFFFFFFE03C800820E00127A00027AD0078C10043C03FFFFFFFFFFFFFFFFFFFFC03000000080006BF0007DA80000000103007FFFFFFFFFFFFFFFFFFFF9000000000000014C001D7C0000000000008FFFFFFFFFFFFFFFFFFFFF7C0000000000007F8004A0000000000000F9FFFFFFFFFFFFFFFFFFFFEFC00000000000057044060000000000003F3FFFFFFFFFFFFFFFFFFFFCBA0000000000000433A000000000000017C",
	mem_init0 => X"7FFFFFFFFFFFFFFFFFFFF83E040400000000233FC20000000000207D0FFFFFFFFFFFFFFFFFFFFF07C1FFFFFFFFFFF8FA347FFFFFFFFFFE0F81FFFFFFFFFFFFFFFFFFFFC0583E00000FFFE13E0507FFFC00000FC1A03FFFFFFFFFFFFFFFFFFFF80207E8E18007FFC94E129803FFFFE2FC1007FFFFFFFFFFFFFFFFFFFF8000FF8F0000EEF8A3C3DFC03FFFFFFF8000FFFFFFFFFFFFFFFFFFFFF0001DF4000000191C7C28CA000007DF60021FFFFFFFFFFFFFFFFFFFFC7481FF80FC000C01DFD009B000F01FFC12E3FFFFFFFFFFFFFFFFFFFF8FC03FFFFFE1C0C017BDCB3871FFFFFF82FC7FFFFFFFFFFFFFFFFFFFF07F07BFCFF8F8D7EA261DF49FCFF9FEF0FE0F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y10_N26
\imRead|altsyncram_component|auto_generated|mux2|_~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~11_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0)) # 
-- (\imRead|altsyncram_component|auto_generated|ram_block1a34~portadataout\)))) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\imRead|altsyncram_component|auto_generated|ram_block1a10~portadataout\ & 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a10~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \imRead|altsyncram_component|auto_generated|ram_block1a34~portadataout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~11_combout\);

-- Location: M9K_X33_Y9_N0
\imRead|altsyncram_component|auto_generated|ram_block1a46\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000001FFFFCF880FF1FE7EA05FEFFFF8000000000FFFF3CD27FFF8000000001FFFF8FF17FF3F8F0D01F0FFFE0000000001FFF925BA9FFF0000000007FFFF8FE3FFC3FBF782FF4FFFC0000000003FFF8FFFFFFFF0000000007FFFFBFFDFFEFE7E7B87C4FFF0000000000FFFF9F6EFFFFF000000000FFFFD1EB0FF8F873F70F043FF0000000003FFFFACDDFFFFE000000000FFFFB7EFBFF8FBF7877F687FC0000000007FFFFD3BBFFFF8000000000FFF827867FFBE3D73C7DDE3F80000000007FFFFFFFFFFFF0000000001FFF247CC32E3C7FF31F1FC3E0000000001FFFFFFFFFFFFF0000000003FF0EDFBEA9F71FFFF7FFFF7C0000000005FFFFFDFFFFFFF000",
	mem_init2 => X"0000007FE3FBE4403E77FFFE7CEFEF80000000017FFFFF45FFFFFE000000000FF97FFE05DF8EFFFF9F33F8C0000000001FFFFF673BFFFFC000000000FF5F33E0DFFD9FFFFFF0FE3C0000000007FFFFAAC9BFFFFE000000001FC7FF78DFFF9BFFFFFC8FC70000000001FFFFFBFE8FFFFE4000000001FC7F6FBFFFE33FFFFF13FDE00000000017FFFF37CCFFFFD0000000003F8FC5FFFFFF03FFFFF6FF9C0000000007FFFFCFFF7FFFF90000000003FBFC5FFFFFEC7FFFFE8FE30000000000DFFFFE7FE7FFFFA000000000FE7FC3FFFFFDCBFFFF07F8E0000000000BFFFFFFF9FFFFFC000000000FC3F2FFFFFFB83FFFD07FB800000000057FFFFDFF7FFFFF9000",
	mem_init1 => X"000000FC7F1FFFFFF785FFD80FE380000000004FFFFFFFFFFFFFD8000000003FDFE4FFFFFEFEA0F007F8E00000000009FFFFFFFFFFFFFC0000000003F1FCBFFFFF8FC000017FBC00011000033FFFFFFFFFFFFFE0000200007F1FE3FFFFF3FF84005FE3000038000387FF7FFFFCF3FFF70001C00007F7F84FFFF8FFFF804FFDF00007C0005CFF8E7FFFF65FFFF000780001FC3FC18FFD3FFFE13FFFBC00007000079FD5DFFFFFEAFFCE000E00003FC7FB01FF8FFFFC7FFFC780001F8000E3FFA13FFE7B7FFF0007E00003FDFFE60005FFFF3FFFFDE00000E000007FF71FFF8F7BFFF0007000007F8FFFEC7DFFFFEFFFFE3E00063F00000FF403FFFAE1FFE4003F",
	mem_init0 => X"180007FBFFFFCFFFFCF8FFFFCFC001E9C00001FF43DFFEE27FFC0003978001FE1FFFF9FFFF063FFFF0F0001A3E00003FF0EFFFF6FBFF8001F160003FF7FFFF9FFFC22FFFFE7E000783C00007FFC2FFFE1FFFF0001C1E0003FC3FFFF3FFF840BFFFCFC0003C7C0000FFA1FFFFD1FFFE000FC700007FEFFFFF787F1E01FFE1F0000F0700003FF03FFFFE3BFF8000E0F0000FF87FFFA40F87D80FFC7E00E0F8F80007FFFFFFFFFFFFF0007C7C1C01FFC7FFD02C73FF407F9FC00C061E0000FFFFFFFFFFFFFE00078603003FF9FFE817CE3FFA0FE3F801E1F1F0001FFFFFFFFFFFFF8003E3E1E007FF0FF48BF1E3FFD0F1FF00380D3E0001FFFFFFFFFFFFF0007C30",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y8_N0
\imRead|altsyncram_component|auto_generated|ram_block1a22\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFE05F0F67BFF0DFB38CEC2BF3F61FFBCDC3E01FFFFFFFFFFFFFFFFFFFFC02C0EEFFFF99BEC289181FECC7FFFBBC3403FFFFFFFFFFFFFFFFFFFF80303DD3DC3F9AFE000307EB3FC7E97782007FFFFFFFFFFFFFFFFFFFF14107BBE0033F2741E230F3FCE003E6F0828FFFFFFFFFFFFFFFFFFFFE3C80777D83839EF96AE636F307067F9E06F1FFFFFFFFFFFFFFFFFFFFC3F20EEFFFFCE18F8DDE078C33FFEFFBC4FC3FFFFFFFFFFFFFFFFFFFF86F81D9FFFFFE60003FC0011FFFFDFF707D87FFFFFFFFFFFFFFFFFFFF00B03BEFF9FFFF0FE317F1FFFFFFBAEE0D00FFFFFFFFFFFFFFFFFFFFE000077FFFB6FFFFFE01FFFFFF36F7EDC0001FF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFC7000EFFFFFFE7FFFC03FFF9BE8FEFDB800E3FFFFFFFFFFFFFFFFFFFF9F401DFFFF1FDEE1F807F27FBFFFDFB701BE7FFFFFFFFFFFFFFFFFFFF0FD03BFFFFFFFFFDF00FF3FFFFFFBF6E0BF0FFFFFFFFFFFFFFFFFFFFE1BE077FFFFEB1FFFE55FFFB1DE7F76DC1FA1FFFFFFFFFFFFFFFFFFFFC06C0EFFFF3FEF28FDBBFB5FF7FFEED387243FFFFFFFFFFFFFFFFFFFF80181DFFFF05FF1EFB37F9FFFFF7DDA706007FFFFFFFFFFFFFFFFFFFF00003BFFFFF5C7FFF22FFFF29C5FBB4E0000FFFFFFFFFFFFFFFFFFFFE000076DFF8FFFC47E01FFB3DFFFF76DC0001FFFFFFFFFFFFFFFFFFFFC02E0EDBFFCDFFEB7C3BFCEFFFFBEEDB87403FFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFF82FC1DB7FFFB7EFFFB77FEE7FE0FDDB70FD87FFFFFFFFFFFFFFFFFFFF0FD03B6FFFFFB7BBF36FFAF7FF1FBB4E0BF0FFFFFFFFFFFFFFFFFFFFE7D8076DFFCB2FF2FE95FFFFFFF9F769C04F9FFFFFFFFFFFFFFFFFFFFCA800EDBFFFF9DFFFC23FFFF71FFEED381853FFFFFFFFFFFFFFFFFFFF80003DB7FCFF7754F807F399E1CFDDA700007FFFFFFFFFFFFFFFFFFFF00403B6FFFE2DF4FF28FFEFCBFAFBB5E0A00FFFFFFFFFFFFFFFFFFFFE03F076DFFFFF79FFED9FF6FDFFFF76FC3E81FFFFFFFFFFFFFFFFFFFFC2FE0EDBFE5BFFF6FCD3FE57FE1FEEDFC7F03FFFFFFFFFFFFFFFFFFFF8FD03FB7FFC8BFF3F907FFFFCFB7DDAF82FC7FFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFE1D107F6FFFFDE3FFF5CFE663D7FFBB4F00B8FFFFFFFFFFFFFFFFFFFFC18C0FEDFFDFFFDB7EFDFFBFFFFFF769E0061FFFFFFFFFFFFFFFFFFFF80601FDBFEBDFFC0FFFFFFDFFEBBEED7C0003FFFFFFFFFFFFFFFFFFFF00203FB7FFE3BFFFF3FBFFFFBB7FDDAB81007FFFFFFFFFFFFFFFFFFFE09783F6FFFFFE6F7CFFBFC3FEFFFBB571E80FFFFFFFFFFFFFFFFFFFFC03C0FADFF4FFB94FFFF7C77FFFFF76861F01FFFFFFFFFFFFFFFFFFFF81E01FDBFEE9FFF7FFFFFFFFFDFBEEDDC0703FFFFFFFFFFFFFFFFFFFF07402DB7FFF6EFFFF7FDFFFDFF7FDDA280B87FFFFFFFFFFFFFFFFFFFE0200292FFEFEED3FCFE3FFEDBFDFBB520040FFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y10_N4
\imRead|altsyncram_component|auto_generated|mux2|_~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~12_combout\ = (\imRead|altsyncram_component|auto_generated|mux2|_~11_combout\ & ((\imRead|altsyncram_component|auto_generated|ram_block1a46~portadataout\) # 
-- ((!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead|altsyncram_component|auto_generated|mux2|_~11_combout\ & (((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- \imRead|altsyncram_component|auto_generated|ram_block1a22~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|mux2|_~11_combout\,
	datab => \imRead|altsyncram_component|auto_generated|ram_block1a46~portadataout\,
	datac => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \imRead|altsyncram_component|auto_generated|ram_block1a22~portadataout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~12_combout\);

-- Location: M9K_X33_Y4_N0
\imRead|altsyncram_component|auto_generated|ram_block1a82\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFCFFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB00000001BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDC03FF0FF8009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA01E7FFFFFC700BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6067FFFFFFFFF302FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40DFFFC",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a82_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a82_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y6_N0
\imRead|altsyncram_component|auto_generated|ram_block1a58\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"C00FFFFFC1FF2E3F8E3FFFFFFFFFFFE3FDFE13F8FFFFFFE017D180197A007FFFFF4FE0E3F9E3FFFFFFFFFFFCFFFFE9FE7FFFFFF00BD27FFF0BE001FFFFE1FFB0FE3C7FFFFFFFFFFF1EBFFF7E0FFFFFF801EAFF01FD5C000FFFFF8FF87FE3CFFFFFFFFFFFE39BFFFF83FFFFF800757C800DFAD000FFFFF07FDFFFB8FFFFFFFFFFF8FE3FFFE1FFFFFC0012FD18219FD40007FFFF0FFFFF4387FFFFFFFFFC7FD7FFF87FFFFF80015E27FFF2B8C000FFFFFCFFFFF3FCFFFFFFFFFF9FF83F7E1FFFFF80000F2F9FE3D5E00003FFFFCFFFF0FF8FFFFFFFFFF1FF81DF8FFFFFF0000FDFA7072FBE00003FFFFCFFFCBFF1FFFFFFFFF87FFE11E3FFFFF80001DFA5FFF77C",
	mem_init2 => X"C00007FFFF8FFF2FFF9FFFFFFFFF3FFFE0787FFFFE00001DD5FFFF8B9000007FFFF87FCBFFF1FFFFFFFFCFF9FE1E1FFFFF800002EAFE23FE5E000003FFFF87F87FEE3FFFFFFFF8E85FCFE7FFFFC00000FDFEFF2FEBE000001FFFF8FE1FFE73FFFFFFFE7E03F5F8FFFFE000000CBEEFF0BF0E000003FFFF8FE7FFDF7FFFFFFFCF866E3E3FFFF80000019FEFFFFDF4C000003FFFF8FFFFFBC3FFFFFFE1C3F5CF1FFFFF00000037D7FFFE9FC0000003FFFF8FFFD9FE7FFFFFFCFCFE03E7FFFFC0000007F7FFFFF7FC0000003FFFFC7FF59FCFFFFFFF9F8FE8FCFFFFF0000003FEFFFFFFEFC0000003FFFFC7FD47FCFFFFFFC3E3FF9F1FFFFC0000003FBFFFFFFCFD",
	mem_init1 => X"0000007FFFF8FF287F9FFFFFFDFFAFF78FFFFF0000000FEFFFFFFF8FC0000003FFFF9FE78E30FFFFFF1FF1FFF9FFFFC0000001FBFFFFFFF8F80000003FFFF1FCE177BFFFFFCFDF17FC7FFFE00000001EFFFFFFFF8F00000007FFFF8F8F22E1FFFFF0E2E0FF1FFFF800000007BFFFFFFFF8E0000000FFFFF9FDE07F3FFFFE7E078FF3FFFF000000007FFFFFFFFFD800000007FFFF3FF05FD7FFFF87D2707A7FFFE000000003FFFFFFFFFC00000000FFFFE1E60C7E7FFFF3FEC3FFBFFFF0000000007FFFFFFFFF300000000FFFFF5F8D0B8FFFFC7FF197E7FFFC000000001FFFFFFFFFF800000000FFFFE7C4927CFFFF9FFEC0F9FFFF8000000003FFFFFFFFFF80",
	mem_init0 => X"0000001FFFFE7EE1279FFFE1F98F7F3FFFF000000001FFFFFFFFFFF000000003FFFFCFF87E79FFFEFE0397C7FFF8000000001FFFFE0FFFFE000000001FFFF87E7FFE1FFF8F8EFFF9FFFF000000000FFFFD817FFFE000000003FFFFDFD7F9F7FFF7CECC3E3FFFE000000000FFFFB877FFF8000000003FFFF0F1FFBC3FFC7FF87FCFFFF0000000001FFFEFFDBFFF8000000007FFFFBF9FF7EFFF1F6E01F1FFFE000000000FFFF0182FFFF8000000007FFFE1F7FC78FFF7EBF0FE7FFF8000000000FFFF4006FFFE000000000FFFFF7C3F1FDFFC786EDF9FFFF0000000001FFFFC30FBFFF000000000FFFFC3EC83F1FFBE033FE3FFFC000000000FFFD9FFFF7FFE00",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y13_N0
\imRead|altsyncram_component|auto_generated|ram_block1a70\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FF83FFFF605FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF41BFC7F0FD07F5FFEC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF437FCC7FFF863F1FFFB0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC13FFB3F9FF7F397D7FEC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF817EFF79F0FEFF907DC7FA07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0BDE7DE003F91D2079DFFE83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0BC9C787207F07EEDC3397F41FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE87EC3069C79FFFF998D439FFA0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FC3207BE21FFFF6019C73FFD07FFFFFFFFFFFFFFFFFFFFFFFFFFFFE2FF2CE675CEFF",
	mem_init2 => X"FFE0267783DFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFF17F8FD6E4385FFFFCDC04783DAF47FFFFFFFFFFFFFFFFFFFFFFFFFFF13FF2F1C64F11FF3F3B88864E78F81FFFFFFFFFFFFFFFFFFFFFFFFFFE3FFFBF90E1F87FF1826C3981E73FC2FFFFFFFFFFFFFFFFFFFFFFFFFF1FFFF7E1167E1FFD02870C7BB9C7FF0FFFFFFFFFFFFFFFFFFFFFFFFF0BFFF97C77F1FDFFE676F184301CFDE1FFFFFFFFFFFFFFFFFFFFFFFFE1D97F9FE6FEBFFFFFFFFF18CC2F9F1F87FFFFFFFFFFFFFFFFFFFFFFE9F06FF8F80FFFFFFFFFFFEE73C9FACFF4FFFFFFFFFFFFFFFFFFFFFFFC3EC2FE8C86FFFFFFFFFFFFD43C2F0E5FC7FFFFFFFFFFFFFFFFFFFFFE3FDF87E1C5FFFFFFFF",
	mem_init1 => X"FFFFFF9F8E063FF83FFFFFFFFFFFFFFFFFFFFF0FE9F1FF86FFFE3E003C7FFFFFF01243BF87FFFFFFFFFFFFFFFFFFFFE1FC3FCFEEFFF3800000033FFFFD31E1E7FA7FFFFFFFFFFFFFFFFFFFF9FF97E3FFFFE6007000F0013FFFFF3C187FE3FFFFFFFFFFFFFFFFFFFC3A7BFE7FFFC804FFFFFFCC067FFF8BCFA7FC3FFFFFFFFFFFFFFFFFFE2F07FFEFFFE817FFFFFFFFE419FFFA67F075C1FFFFFFFFFFFFFFFFFF8BCC7FF0FFE82FFFFFFFFFFFE82FFFA63CC2BC1FFFFFFFFFFFFFFFFFF2F1E7CD7FF02FFFFFFFFFFFFFA09FFD1F280FC1FFFFFFFFFFFFFFFFFCFCFC3387F42FFFFFFFFFFFFFFE80FFF1E1C59E1FFFFFFFFFFFFFFFFF3F0F8745FA1FFFFFFFFFFF",
	mem_init0 => X"FFFFFA17FE7E71F1F1FFFFFFFFFFFFFFFF87F7F86EFD07FFFFFFFFFFFFFFFFE0BFFFD03F0F1FFFFFFFFFFFFFFFF1CF1FCFFF83FFFFFFFF205FFFFFFF05FFF23FE0F1FFFFFFFFFFFFFFF875F1F87F41FFFFFFFF8000DFFFFFFA2FFC079F2F1FFFFFFFFFFFFFFE1C8C7F5FD0FFFFFFFE800000FFFFFFD17FA7E9E8FBFFFFFFFFFFFFFFC71DE7FBF87FFFFFFE80008002FFFFFF0FFCFEBF3E3FFFFFFFFFFFFFF1E71E3FF87FFFFFFE8067FCC00FFFFFF4BFFEF3CFC3FFFFFFFFFFFFFC7D6197FD0FFFFFFF804FFFFD005FFFFF85FFEF338C3FFFFFFFFFFFFF3DFE9CFF0FFFFFFF405FE01FE801FFFFFE1FECF0FCC7FFFFFFFFFFFF8FF7E1DFC1FFFFFF802FDC009F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a70_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a70_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y10_N30
\imRead|altsyncram_component|auto_generated|mux2|_~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~9_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1)) # 
-- (\imRead|altsyncram_component|auto_generated|ram_block1a70~portadataout\)))) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\imRead|altsyncram_component|auto_generated|ram_block1a58~portadataout\ & 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \imRead|altsyncram_component|auto_generated|ram_block1a58~portadataout\,
	datac => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \imRead|altsyncram_component|auto_generated|ram_block1a70~portadataout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~9_combout\);

-- Location: M9K_X73_Y6_N0
\imRead|altsyncram_component|auto_generated|ram_block1a94\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a94_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a94_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y10_N16
\imRead|altsyncram_component|auto_generated|mux2|_~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~10_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead|altsyncram_component|auto_generated|mux2|_~9_combout\ & 
-- ((\imRead|altsyncram_component|auto_generated|ram_block1a94~portadataout\))) # (!\imRead|altsyncram_component|auto_generated|mux2|_~9_combout\ & (\imRead|altsyncram_component|auto_generated|ram_block1a82~portadataout\)))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead|altsyncram_component|auto_generated|mux2|_~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a82~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead|altsyncram_component|auto_generated|mux2|_~9_combout\,
	datad => \imRead|altsyncram_component|auto_generated|ram_block1a94~portadataout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~10_combout\);

-- Location: LCCOMB_X45_Y10_N18
\r~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~1_combout\ = (\process_0~13_combout\ & ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\imRead|altsyncram_component|auto_generated|mux2|_~10_combout\))) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- (\imRead|altsyncram_component|auto_generated|mux2|_~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|mux2|_~12_combout\,
	datab => \imRead|altsyncram_component|auto_generated|mux2|_~10_combout\,
	datac => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datad => \process_0~13_combout\,
	combout => \r~1_combout\);

-- Location: FF_X45_Y10_N19
\r[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \r~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r[2]~reg0_q\);

-- Location: M9K_X53_Y23_N0
\imRead|altsyncram_component|auto_generated|ram_block1a83\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFF00003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000F000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC001FFFFFFF8007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF801FFFFFFFFFFC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF803FFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a83_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a83_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y29_N0
\imRead|altsyncram_component|auto_generated|ram_block1a95\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a95_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a95_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y26_N0
\imRead|altsyncram_component|auto_generated|ram_block1a59\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"8007FFFFE1FF1E1F1C7FFFFFFFFFFFF1FFFF0FF0FFFFFFC00FE07FE0FC003FFFFE1FF187F1C7FFFFFFFFFFFC7FFFF0FC3FFFFFE007E1FFFFC7C003FFFFF0FF01FF1C7FFFFFFFFFFF1F7FFF3F1FFFFFF003F1FFFFFE3E001FFFFF0FF07FF1C7FFFFFFFFFFC7C7FFFFC7FFFFFC00F8FF0003F1E000FFFFF8FF1FFE1C7FFFFFFFFFF1F87FFFF1FFFFFE000C7E07FE0F8E000FFFFF87F7FF87CFFFFFFFFFFE3F83FFFC7FFFFF00003F1FFFFC7C00007FFFF87FFFE1F8FFFFFFFFFF8FFC3EFF1FFFFFC0001F9FE01FE3C00007FFFF87FFF87F8FFFFFFFFFE3FFC38FC7FFFFE000078FC0F81F1C00007FFFF87FFE1FF8FFFFFFFFFCFFFC23F1FFFFF80000E7C3FFF8F9",
	mem_init2 => X"E00003FFFFC7FF87FF1FFFFFFFFF1FFFC0FC7FFFFC000003E3FFFFE7CC00003FFFFC7FE1FFF1FFFFFFFFC7C7FC3F1FFFFF000001F1FFDFFF3C000003FFFFC7F0FFF71FFFFFFFF1F03FC7C7FFFFC0000078FF001FF1C000003FFFFC7F3FFCE3FFFFFFFE3C01F1F1FFFFF000001E7F1FFC7F9C000003FFFFC7FFFF0E3FFFFFFF8F1C1C7C7FFFFC0000003F9FFFE3F98000003FFFFC7FFFE3E7FFFFFFF3E7E09F8FFFFE0000000FEFFFFF3F80000003FFFFC7FFFC7C7FFFFFFC78FF0FE3FFFF80000003FBFFFFF9F80000003FFFF8FFE11FC7FFFFFF1F1FF0F8FFFFE0000000FDFFFFFF9F80000003FFFF8FF803F8FFFFFFE7F1FF3E3FFFF80000007F7FFFFFF9F8",
	mem_init1 => X"0000003FFFF8FE10FF8FFFFFF8FE1FFFC7FFFE0000000FDFFFFFFFDF80000007FFFF8FC71F79FFFFFF3FE0FFF1FFFF80000001F7FFFFFFFDF00000007FFFF8F8F3871FFFFFC7BE0FFE7FFFF00000003DFFFFFFFFDE00000007FFFF1F9E01F3FFFFF9F1F07F8FFFFC000000037FFFFFFFFDC00000007FFFF1F1E0FE3FFFFE3C0F07E3FFFF000000000FFFFFFFFF800000000FFFFF1F183FE3FFFFCFE038FCFFFFC000000003FFFFFFFFF800000000FFFFF3F01FFC7FFFF1FF019F1FFFF800000000FFFFFFFFFF800000000FFFFE3E0607C7FFFE7FF00FC7FFFE000000001FFFFFFFFFF000000001FFFFE3E30038FFFF8FFC61F8FFFF8000000007FFFFFFFFFF00",
	mem_init0 => X"0000001FFFFC7DC0C38FFFF3FE1E3E3FFFE000000000FFFFFFFFFFE000000001FFFFC7F0FC71FFFC7803CFCFFFFC000000003FFFFFFFFFFE000000003FFFFCFE3FC73FFF9F0071F1FFFF0000000007FFFE00FFFFC000000003FFFF8FCFFCE3FFE3E19E7E7FFFC000000001FFFF0787FFFC000000007FFFF9F9FF1E7FFCFFF18F8FFFF8000000003FFFDFFE7FFF8000000007FFFF1F3FE3C7FF9FFF03F3FFFE0000000007FFFBE7C7FFF000000000FFFFF3E3F8FCFFE3C7E07C7FFFC000000001FFFF8001FFFF000000000FFFFE3E7E1F8FFCF81F3F8FFFF0000000003FFFFFFFFFFFE000000001FFFFE7C307F9FF1F00FFF3FFFE0000000007FFE7FFFC7FFC00",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y26_N0
\imRead|altsyncram_component|auto_generated|ram_block1a71\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFF803FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFF9FE01FBFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFF8FE3F001E3FFFC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFF18FC7E1E1C3EFFF01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FF3E3001FC7E3878FFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07FC3E7003F8FE70F38FFF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE07F383CE1C7F03C40E71CFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03F03838E38FE078818E70FFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81F807031C73FFFF13318E1FFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FE1C6023C47F",
	mem_init2 => X"FFE66231C3E7F07FFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFC78C427C8FF1F88E4E3078DF83FFFFFFFFFFFFFFFFFFFFFFFFFFF87FF9F88C0783FE1E11C1CE0719FC3FFFFFFFFFFFFFFFFFFFFFFFFFFC1FFE3F19C0F07FE0063831C8C71FE1FFFFFFFFFFFFFFFFFFFFFFFFFE0FFFC7F33C1F0FFE01CF863118E3FE1FFFFFFFFFFFFFFFFFFFFFFFFF87FFFCFE23C3E3FFF9F9F0CE633C7FF0FFFFFFFFFFFFFFFFFFFFFFFFC3E0FF8FC47C7FFFFFFFFE318E478FBF0FFFFFFFFFFFFFFFFFFFFFFFF0F807F1FCCFFFFFFFFFFFF631C0F1E3F87FFFFFFFFFFFFFFFFFFFFFF87C387F1F09FFFFFFFFFFFFEE783038EF87FFFFFFFFFFFFFFFFFFFFFE1F8F8FF003FFFFFFFF",
	mem_init1 => X"FFFFFFCF040318FC7FFFFFFFFFFFFFFFFFFFFF87F3F8FE01FFFFC00003FFFFFFE18C071FC3FFFFFFFFFFFFFFFFFFFFC3FE7F1FF1FFFC00000000FFFFFE23C0E3FC3FFFFFFFFFFFFFFFFFFFF0FFCFF1FFFFF8000FFF0000FFFFC47E3CFFC3FFFFFFFFFFFFFFFFFFFC7C3FFE3FFFF003FFFFFFF001FFFFC7870FFE3FFFFFFFFFFFFFFFFFFF1E03FFC7FFF00FFFFFFFFFF807FFFC31E07BE3FFFFFFFFFFFFFFFFFFC7803FF9FFF01FFFFFFFFFFFF01FFFC07C041E3FFFFFFFFFFFFFFFFFE1E3C3FE3FF81FFFFFFFFFFFFFC07FFE0F9C05E3FFFFFFFFFFFFFFFFF87C7C780FF81FFFFFFFFFFFFFFF03FFE3F3831E3FFFFFFFFFFFFFFFFE1F9FC603FC0FFFFFFFFFFF",
	mem_init0 => X"FFFFFC0FFFFC60F1E3FFFFFFFFFFFFFFFF8FF1FC71FE0FFFFFFFFFFFFFFFFFF07FFF887F1E3FFFFFFFFFFFFFFFE3FE3F87FF07FFFFFFFFC03FFFFFFF83FFF01FF1E3FFFFFFFFFFFFFFF8F8E3F8FF83FFFFFFFF00003FFFFFFC1FFE0FFF1E3FFFFFFFFFFFFFFE3E1E3F8FE1FFFFFFFF0000007FFFFFE0FFC3F3F1E3FFFFFFFFFFFFFF8F80C3F7F0FFFFFFFF00000001FFFFFF07FFFF1E1E3FFFFFFFFFFFFFE3E30C7FFC3FFFFFFF001FFF0007FFFFF87FFFE187E3FFFFFFFFFFFFF8F8F0C7FE1FFFFFFF003FFFFE003FFFFFC3FF9E01DE3FFFFFFFFFFFFE1E3F087F87FFFFFF803FFFFFF000FFFFFC3FF1E071E3FFFFFFFFFFFFC7CFF08FE3FFFFFFC01FE0007F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a71_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a71_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y26_N18
\imRead|altsyncram_component|auto_generated|mux2|_~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~13_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead|altsyncram_component|auto_generated|ram_block1a71~portadataout\))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\imRead|altsyncram_component|auto_generated|ram_block1a59~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a59~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|ram_block1a71~portadataout\,
	datac => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~13_combout\);

-- Location: LCCOMB_X52_Y26_N16
\imRead|altsyncram_component|auto_generated|mux2|_~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~14_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead|altsyncram_component|auto_generated|mux2|_~13_combout\ & 
-- ((\imRead|altsyncram_component|auto_generated|ram_block1a95~portadataout\))) # (!\imRead|altsyncram_component|auto_generated|mux2|_~13_combout\ & (\imRead|altsyncram_component|auto_generated|ram_block1a83~portadataout\)))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead|altsyncram_component|auto_generated|mux2|_~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a83~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a95~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|mux2|_~13_combout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~14_combout\);

-- Location: M9K_X53_Y26_N0
\imRead|altsyncram_component|auto_generated|ram_block1a47\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000001FFFFC7C01FF3FE3C403FC7FFF8000000001FFFC000C0FFFC000000003FFFFCFC0FFE3FCF9E01F9FFFF0000000003FFFDC3C73FFF8000000003FFFF9FFFFFE7F1E3CC3E27FFC0000000007FFFDFFFCFFFF0000000007FFFF1FFEFFC7E3CF1CFC87FF8000000000FFFFCF9F3FFFE0000000007FFFE3F79FFCFCF9E39F907FE0000000001FFFFC000FFFFC000000000FFFF03C71FF9F1E3CE3E343FC0000000003FFFFE7C7FFFFC000000001FFFC07CF3FF1E7EF9CFCEC1F0000000000FFFFFFFFFFFFF8000000001FFE00F9E7DF3CFFE79FBBE1E0000000001FFFFFFFFFFFFF0000000003FF840F1C43E39FFFE3E77E380000000003FFFFFE3FFFFFE000",
	mem_init2 => X"0000003FC1D9F3807C63FFFCFDDFC700000000007FFFFF83FFFFFC0000000007F0FBBE003FCC7FFFFFBBF9E0000000006FFFFF8007FFFF8000000000FE3FFFC03FF88FFFFFE67F38000000000DFFFFC0E07FFFF0000000000FE7F7FC3FFF11FFFFFC1FE700000000003FFFF01C07FFFFC000000001FCFEFFFFFFF23FFFFF83F8E0000000000FFFFE7FF9FFFFE8000000003F9FEFFFFFFE67FFFFE07F380000000003FFFFE7FF3FFFFC0000000007F1FCBFFFFFC47FFFFC1FE700000000007FFFFCFFCFFFFFC0000000007F3F87FFFFF8C7FFFF83FCE00000000007FFFFCFFBFFFFF8000000000FE7F87FFFFF1C7FFFE0FF1C0000000002FFFFFFFFFFFFFF0000",
	mem_init1 => X"000001FCFF0FFFFFE3C3FFE01FE70000000000DFFFFFFFFFFFFFC0000000001F8FF1FFFFFC7C1F0003FCE0000000001BFFFFFFFFFFFFFB0000000003F9FE3FFFFF9FE00000FF1C0000C0000C7FFFFFFFFFFFFF60000C00007F3FC7FFFFE3FF00003FE780003C0001CFFF80FFFF0FFFEC0003C0000FE3FC3FFFFC7FFF803FF8E00007800039FFC19FFF883FFC6000780000FE7F807FFE1FFFE0FFFF1C0000F800033FE3FFFFFFF1FF9C001F00001FCFFC000007FFF8FFFFE780000F000007F9C07FFF879FF38003C00003F8FFF80003FFFF1FFFF8F00001F00000FFE38FFFC03FFE6000F800007F9FFFF003FFFFC7FFFF3C00001E00001FF8E7FFFC73FFC0001E",
	mem_init0 => X"00000FF1FFFF8FFFFFF9FFFFC78000C3E00003FE01FFFFC01FF80007C30000FF3FFFF8FFFF8F3FFFF9F0003C3C00007FFFF3FFCF07FF0000F0F0001FE3FFFF1FFFE047FFFE3E0003C7C0000FFFF9FFFC7FFFE0003E3C0003FE7FFFF1E7F8807FFF8FC00078780001FF007FFFE00FFC00078780007FC7FFFE307E3C03FFF3F800078F80001FFFFFFFFFC7FF8001F1E0000FFCFFFFC007CFE01FFC7F006070F00003FFFFFFFFFFFFF0003C381801FF8FFFE018F9FF80FF1FE01E0F0F00007FFFFFFFFFFFFE000F0F07803FF8FFF00F8F3FFC07C7FC01C0E1E0000FFFFFFFFFFFFFC001E1C0E007FF9FF807F8E7FFE0F8FF801C1E1E0001FFFFFFFFFFFFF8007878",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y24_N0
\imRead|altsyncram_component|auto_generated|ram_block1a35\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"3800FFF1FC03FF1C3FFE1E3FF003C1E3C0003FFFFFFFFFFFFE000F0E0F001FFF1F01FFE3C1FFC38FFE00383C3C0007FFFFFFFFFFFFC003C3C1C003FFF1E0FFF8FE0FF863FFC00783C780007FFFFFFFFFFFF80078F078007FFF1C3FFC3FF07F08FFF820707878000FFFFFFFFFFFFE001E1C0E040FFFF187FE0FFF81C03FFF0E07078F0000FFFFFFFFFFFFC003C78381C1FFFF107F07FFFE080FFFE0C0F070F0001FFFFFFFFFFFF000F0E0F0303FFFF00F83FFFFF007FFFC1C0E0F1F0001FFFFFFFFFFFE003E3C1C0E07FFFF01C1FFFFFF81FFFF81C0E0E1E0001FFFFFFFFFFF800787070380FFFFF000FFFFFFFC7FFFF01C1C1E3E0003FFFFFFFFFFE001F1E0E0",
	mem_init2 => X"601FFFFF007FFFFFFFFFFFFE0181C1E3C0003FFFFFFFFFF8003C78381803FFFFF03FFFFFFFFFFFFF80383C3C7C0003FFFFFFFFFE000F8F0F07007FFFFFBFFFFFFFFFFFFFF0030383C780001FFFFFFFFF8001E3C1C1C00FFFFFFFFFFFFFFFFFFFFE00303838F80601FFFFFFFFE0007C70703001FFFFFFFFFFFFFFFFFFFFC60707078F00F00FFFFFFFF00C0F1E0E0E063FFFFFFFFFFFFFFFFFFFF8E0707071F01F007FFFFFF80383E3838381C7FFFFFFFFFFFFFFFFFFFF0E06070F1E02F003FFFFF801F078F0F06030FFFFFFFFFFFFFFFFFFFFE0C0E0E0F3E03F80C7FFF000FE1F3C1C1C0C1FFFFFFFFFFFFFFFFFFFFC0C0E0E1E3C01F8018112003F83C7870703",
	mem_init1 => X"03FFFFFFFFFFFFFFFFFFFF80C0E1E1E7C037C00332001FC0F9E1E1C0E07FFFFFFFFFFFFFFFFFFFF01C0C1C1C7800BC0000001FD01E383830380FFFFFFFFFFFFFFFFFFFFE01C1C1C3870005F000000FE80387060E0601FFFFFFFFFFFFFFFFFFFFC0181830000000BFC0001FF4000000C181803FFFFFFFFFFFFFFFFFFFF800000000000005FE000FF600000000000007FFFFFFFFFFFFFFFFFFFF0800000000000037C000FA00000000000010FFFFFFFFFFFFFFFFFFFFE38000000000000090001B400000000000071FFFFFFFFFFFFFFFFFFFFC7800000000000002198300000000000001E3FFFFFFFFFFFFFFFFFFFF87C000000000000003B000000000000000F8",
	mem_init0 => X"7FFFFFFFFFFFFFFFFFFFF07C03FBFFFFFFFFC07661FFFFFFFFFFC03E0FFFFFFFFFFFFFFFFFFFFE03E0FFFFFFFFFFFC64DC3FFFFFFFFFFE1F01FFFFFFFFFFFFFFFFFFFFC03C1FFFFFF0001E0E03000003FFFFFFC3C03FFFFFFFFFFFFFFFFFFFF80103F01E7FFFFFE0800C7FFC000001F82007FFFFFFFFFFFFFFFFFFFF00007F1FFFFF11FC41E38FFFFFFFFC7F0000FFFFFFFFFFFFFFFFFFFFE3800FF8000000061EFE71F00000003FE0071FFFFFFFFFFFFFFFFFFFFC7801BFFF000000039FC00000000FFFEC01E3FFFFFFFFFFFFFFFFFFFF87E037FFFFFE01FE03F8E4F00FFFFFFD81F87FFFFFFFFFFFFFFFFFFFF03E06DFF007FF0FC7733DF87FF007FDB07C0F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y30_N0
\imRead|altsyncram_component|auto_generated|ram_block1a11\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFE00001B6BFB9FFE47CFCFFFFFFB1F2DB00001FFFFFFFFFFFFFFFFFFFFC000006D7FFBBFFFFDFBFFFFCCFFEDB000003FFFFFFFFFFFFFFFFFFFF801800DAFEFFBFFFF9E7FFFFBFFFDB6006007FFFFFFFFFFFFFFFFFFFF00F00035FFDFF00FFBDFF007FF9FB6000F00FFFFFFFFFFFFFFFFFFFFE07E0004FFF8FFFFFF7BFFFFFE7FF64001F81FFFFFFFFFFFFFFFFFFFFC1F00001FFFE7FFFFEF7FFFFE3FFEC0000F83FFFFFFFFFFFFFFFFFFFF8FC00002FFFFE187FDEFF831FFFFC80000FC7FFFFFFFFFFFFFFFFFFFF1E000001FFFFFFFFFBDFFFFFFFFF80000078FFFFFFFFFFFFFFFFFFFFC10600003FFFFFFFFF7BFFFFFFFFF00001821FFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFF801E000007FFFFFFFEF7FFFFFFFF000007803FFFFFFFFFFFFFFFFFFFF807D800001FFFFFFFDEFFFFFFFE000006F807FFFFFFFFFFFFFFFFFFFE03F78000007FFFFFF99FFFFFFC000001EFC0FFFFFFFFFFFFFFFFFFFFE0FCF0000000FFFFFF33FFFFFC0000003CFC1FFFFFFFFFFFFFFFFFFFF83E3E30000003FFFF801FFFFC000000C7C7C3FFFFFFFFFFFFFFFFFFFF0F878700000007FFC000FFF800000038787C7FFFFFFFFFFFFFFFFFFFE1E1F1E30000000300000000000000C78F878FFFFFFFFFFFFFFFFFFFFC107C7C604000000000000000000818F8F821FFFFFFFFFFFFFFFFFFFF800F8F9C1C000000000000000001839F1F003FFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFF003E3E7878600000000000000187879F1F007FFFFFFFFFFFFFFFFFFFE007878F0E1C000000C30000003878F1E1E00FFFFFFFFFFFFFFFFFFFFC01F1F3C3838E00101CE02001C7070F3E3E01FFFFFFFFFFFFFFFFFFFF803C7CF0F0E1C307070C0E0C3870F0E3E3C03FFFFFFFFFFFFFFFFFFFF0070F9E3C387860E0E1C1C1838F0F1E7C3807FFFFFFFFFFFFFFFFFFFE00E3E787070E1C1C1C38383870E0E1E7C700FFFFFFFFFFFFFFFFFFFFC00078F1E1C1C383038703070E0E1E1C78001FFFFFFFFFFFFFFFFFFFF8000F0C3838707060000060E0E1C1C30F0003FFFFFFFFFFFFFFFFFFFF0001C102020E0C000000001C1C101020E0007FFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFE000100000000000000000000000000008000FFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000FFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y26_N22
\imRead|altsyncram_component|auto_generated|mux2|_~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~15_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead|altsyncram_component|auto_generated|ram_block1a35~portadataout\) # 
-- ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead|altsyncram_component|auto_generated|ram_block1a11~portadataout\ & 
-- !\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a35~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a11~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~15_combout\);

-- Location: M9K_X53_Y31_N0
\imRead|altsyncram_component|auto_generated|ram_block1a23\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFE03E0DBFC0003FC01E44100FF80007FB61F01FFFFFFFFFFFFFFFFFFFFC01C1B5FFFFE07F01000007F03FFFFD6C3803FFFFFFFFFFFFFFFFFFFF800036BF03FFE1FC0C038FF0FFF81FAD80007FFFFFFFFFFFFFFFFFFFF08006D64000FFC003807000FF00013DB0010FFFFFFFFFFFFFFFFFFFFE3F00DAC87C007F067660C1FC00F824B601F1FFFFFFFFFFFFFFFFFFFFC7FC1B593FFF007FC0CC1FF00FFFC496C3FE3FFFFFFFFFFFFFFFFFFFF81FC36F2FFFFF8000198000FFFFFC92D8FE07FFFFFFFFFFFFFFFFFFFF00786D35FFFFFFF000000FFFFFFF975B1E00FFFFFFFFFFFFFFFFFFFFE0000DA4BFE1FFFFFC00FFFFFFCDF25B60001FF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFC0001B497FFF8FFFF801FFFFC77FE4B6C0003FFFFFFFFFFFFFFFFFFFF8F803692FFFFFC7FF003F8E3FFFFC96D807C7FFFFFFFFFFFFFFFFFFFF1FE06D25FE3FFFE3E007FFFFFF1F92DB07F8FFFFFFFFFFFFFFFFFFFFE07F0DA4BFFF1FFFFC28FFFFF8FFF2DB63FC1FFFFFFFFFFFFFFFFFFFFC01E1B497FFFF19FF8D9FCC63FFFE5B6C3C03FFFFFFFFFFFFFFFFFFFF80003692FECFFFF1F31BFFFFFE2FCB6D80007FFFFFFFFFFFFFFFFFFFF00006D25FFF8FFFFE007FFFDC7FF96DB0000FFFFFFFFFFFFFFFFFFFFE0000DB6BFFFF8FFFC00FC673FFFF2DB60001FFFFFFFFFFFFFFFFFFFFC01C1B6D7F03FF9CF8D1FFFFFE07E5B6C3803FFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFF81F836DAFFFF9FFFF1B3FFFF1DFFCB6D87E07FFFFFFFFFFFFFFFFFFFF1FE06DB5FC3FF9CFE637E4CFFFFF96DB07F8FFFFFFFFFFFFFFFFFFFFE3E00DB6BFF61FFD7C00FFFFF0C3F2DB603F1FFFFFFFFFFFFFFFFFFFFC7001B6D7FFFFBFFF801FFFCEFFFE5B6C00E3FFFFFFFFFFFFFFFFFFFF800016DAFE70FBBBF003F13FFFFFCB6D80007FFFFFFFFFFFFFFFFFFFF00386DB5FFFDFFB3E147FFFFC3DF96DB1C00FFFFFFFFFFFFFFFFFFFFE01F0DB6BFFFF9FFFC6CFFF33FFFF2DB63F01FFFFFFFFFFFFFFFFFFFFC1FC1B6D7F67FF19F989FCEFFFF7E5B683FC3FFFFFFFFFFFFFFFFFFFF87E016DAFFF37FFFF003FFFFF86FCB6D01F87FFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFF0E002DB5FFFE7FFFE007FFFF3FFF96DA0070FFFFFFFFFFFFFFFFFFFFE00005B6BFBFFC64FC78FC4C7FFFF2DB40001FFFFFFFFFFFFFFFFFFFFC0000B6D7F63FFFFF9F9FFFFFF67E5B680003FFFFFFFFFFFFFFFFFFFF801816DAFFF9FFFFF7FBFFFFF0FFCB6D06007FFFFFFFFFFFFFFFFFFFF00F06DB5FFFF0FFFEFF7E3F07FFF96DA0F00FFFFFFFFFFFFFFFFFFFFE07E05B6BFBFFFC079FEFF8FFFFFF2DBC0F81FFFFFFFFFFFFFFFFFFFFC3F00B6D7F1FFFFFF3FCFFFFFF87E5B680FC3FFFFFFFFFFFFFFFFFFFF878016DAFFF87FFFE7FBFFFFC3FFCB6D00787FFFFFFFFFFFFFFFFFFFF0C000DB5F9FFC6FFEFF7E433FFFF96D80030FFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y26_N24
\imRead|altsyncram_component|auto_generated|mux2|_~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~16_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead|altsyncram_component|auto_generated|mux2|_~15_combout\ & 
-- (\imRead|altsyncram_component|auto_generated|ram_block1a47~portadataout\)) # (!\imRead|altsyncram_component|auto_generated|mux2|_~15_combout\ & ((\imRead|altsyncram_component|auto_generated|ram_block1a23~portadataout\))))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead|altsyncram_component|auto_generated|mux2|_~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a47~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead|altsyncram_component|auto_generated|mux2|_~15_combout\,
	datad => \imRead|altsyncram_component|auto_generated|ram_block1a23~portadataout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~16_combout\);

-- Location: LCCOMB_X52_Y26_N0
\r~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~2_combout\ = (\process_0~13_combout\ & ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\imRead|altsyncram_component|auto_generated|mux2|_~14_combout\)) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- ((\imRead|altsyncram_component|auto_generated|mux2|_~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~13_combout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datac => \imRead|altsyncram_component|auto_generated|mux2|_~14_combout\,
	datad => \imRead|altsyncram_component|auto_generated|mux2|_~16_combout\,
	combout => \r~2_combout\);

-- Location: FF_X52_Y26_N1
\r[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r[3]~reg0_q\);

-- Location: M9K_X53_Y19_N0
\imRead|altsyncram_component|auto_generated|ram_block1a4\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFEE6DD430DE5D6799C37E180043A9AB76B839DFFFFFFFFFFFFFFFFFFFFDB9BD9F5BE099C9CF5116690ABE7465D41D7BFFFFFFFFFFFFFFFFFFFFB1F3A6C37A7FA8D5FEEEA51B1A368D63FAE77FFFFFFFFFFFFFFFFFFFE6783F6D2F9D324183D59DCB2095D4CB9688EFFFFFFFFFFFFFFFFFFFFEE195E6A0E8C7F5C8C03B822B10B823BEA655FFFFFFFFFFFFFFFFFFFF96C737E0A58C5B127F49D8C73057B327CE76BFFFFFFFFFFFFFFFFFFFF058C6BCE5E3D1A5C4EC3A4F7ABD64BED9E61FFFFFFFFFFFFFFFFFFFFF0F578C4FD7EC8461F06FE99B20677921AAE7FFFFFFFFFFFFFFFFFFFFE8B113A8003FFC29728C9DF1FEF210B727660FFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFD0941637F77E66B9C6C633D5DCE39FFE60903FFFFFFFFFFFFFFFFFFFF1671569F66DB6D2EBCAE393F9E57FA06AA83FFFFFFFFFFFFFFFFFFFFFE8DB4FD8607A2DD9897475C2929DFBD8D9D3FFFFFFFFFFFFFFFFFFFFFF72EDE6B6D385FE387CF9FE472DB8B397195FFFFFFFFFFFFFFFFFFFFF10C0BBE5C54A3FD61F83C7C70A3B4E10B28FFFFFFFFFFFFFFFFFFFFF615AC31DCE5C850877FF803E5624E9C2B6A5FFFFFFFFFFFFFFFFFFFFEFC98C6839C7C014EEE7616471E71D9E25DA77FFFFFFFFFFFFFFFFFFFD9C17561385DE7E0CE318E1DFCEA7200BE067FFFFFFFFFFFFFFFFFFFFF8D0DDDE90BF8CFFF1B264E3E3F054439CB3FFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFD7423E73062B8FE19EDF37B87518374714F1FFFFFFFFFFFFFFFFFFFFEDFDA00F8549FE7C1C3CFC3E7FBAAA9047A7AFFFFFFFFFFFFFFFFFFFFD760E8AB452471FCEC80FDFE187C9B04CADBDFFFFFFFFFFFFFFFFFFFFAF847C8B95F73AD81EEFB1F93E629D7246BFBFFFFFFFFFFFFFFFFFFFF5BAEE889EA0F5AD462C07BCEB4D5646294377FFFFFFFFFFFFFFFFFFFEFF3071B68A7C00DA9FDB0715FEF24902DDBEFFFFFFFFFFFFFFFFFFFFDF18AD85C1AB4EFDFC7830F37B4ACAB040CBDFFFFFFFFFFFFFFFFFFFFBFFDDAEB4A30635320F29CA640DDA4E48BDFBFFFFFFFFFFFFFFFFFFFF7FF7F0AB2BB49839E1E3E102DB7D5163BBF77FFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFEF4AD256DDB731D5D8FFDBBE0CE4BFDA2870EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC787DFFFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFF8FFFFF3FFCFFF3F8F0FBFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFAFFF83CF3E0CCFA3E3CF3C7C7FEFC30C03FFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFFFFFFFFFFFFFFDFDFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFC3FFFFFFFFFFFFFFFFFFFF71FFFFFFFFFFFF9FFFFFE7F7FFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFF30FFFFBFFFFFFF3FFFFFC7CE07CFFFFFFC7CFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y19_N0
\imRead|altsyncram_component|auto_generated|ram_block1a28\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"E08E7FDAE5A276BEFAF4CC9FE7C01EE53BFFEDFFFFFFFFFFB4FF7299E20FCFEEAE369153C9FD6F777CC2A98BCA7FDBFFFFFFFFFFE7FFE535385239FFBDFD7FCC6E63CADFFF9EDC608D5FFF37FFFFFFFFFDE7FEBB07FF973FDBB866749EF16E74FFF2ED0D9D8BFFE4FCFFFFFFFFAF7FC3E96C94E7FFFC6575FBFF2D317FFF5E63F488BAD0DF9FFFFFFFF4AF3405591D7CFFFECB1823FFF74DCFFFC13E350B87F9FDD3FFFFFFFDABF6140F37CB9FFF64A5CFFFFFD4A6FFF9519C148E6F3E667FFFFFFFBEFC92ABAE46F3FFFE9D66FFFFFFBA3FFF3B47EB97A5EF3FBFFFFFFFF8FF812AF0E6BE7FFFC77DFDFFFFF8BFFFF7DD17651AFCF0BFFFFFFFFF3FF8F2BFC2",
	mem_init2 => X"AFCFFFFA35BFFFFFFFEF7FFEFA30ECE3BDDED37FFFFFFFC97BBB3336A5F9FFFFF87FFFFFFFBFFFFFFEBA53DC3FAC72EFFFFFFFFB1E73847B765F3FFFFDCFFFFFFFFFFFFFFFF01B7D35B555F6FFFFFFFF3DCC66FA4497E7FFFFF5FFFFFFFFFFFFFEE51307583360D85B9FE3BEFD2F197280243CFFFFFFFFFFFFFFFFFFFFC49DCCF827EF2511D3795FEA80FA71F1EFC2DFFFFFFFFFFFFFFFFFFFDF2B0C7DD94F3DCAEE0CE388BEE8ACE78C5D3BFFFFFFFFFFFFFFFFFFFFFC1C4964DB9623731FFFE7515D7B6606FCDA7FFFFFFFFFFFFFFFFFFFEC36271954E7AE9E1BF6AB2D5266AE5789D4DFFFFFFFFFFFFFFFFFFFFC0DF577DEB2F08210C13136ECA896AAE8F8",
	mem_init1 => X"23FFFFFFFFFFFFFFFFFFFF8C4DFCE882DF886CA925AE110BB681CF6ECA7FFFFFFFFFFFFFFFFFFFF3474543A57B1FC6548B25139A2FAD4AB5EFA7FFFFFFFFFFFFFFFFFFFF4951387F72FFF571E2F964B58B6AF5F31005FFFFFFFFFFFFFFFFFFFFEE2C97634E64FD19097EC7432A778C684245BFFFFFFFFFFFFFFFFFFFFFBB7236E5E2DF9DA777E08DCF75A9FB05CF57FFFFFFFFFFFFFFFFFFFFE582E6CFFD10F78D768034DB2ABFFB6E971FFFFFFFFFFFFFFFFFFFFFED42E8F51FF67EFF4667C2379FDF635E4FEEFFFFFFFFFFFFFFFFFFFFFDEDE1DE5BF6FFDEAFFFEF156AF7FDA7F77D8FFFFFFFFFFFFFFFFFFFFEBB4D646140C00024ACC9B6C94104B1C8D8B7",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFE75BB7F51FF00401A63461FC0ECDF94170F27FFFFFFFFFFFFFFFFFFFFA323804000000A1C4C4728430000784DE710FFFFFFFFFFFFFFFFFFFFC93DC937FC1F8CF0183822581E03FA0CFFEB1FFFFFFFFFFFFFFFFFFFE8B1F909E07C38B5E18C5787730F81C257F377FFFFFFFFFFFFFFFFFFFD99874B20773CFCA47D57187F83F803D26BFB7FFFFFFFFFFFFFFFFFFFFF11AF4B0007C0B1B603A1323FFFF85C6164FFFFFFFFFFFFFFFFFFFFFDC2B51BF28A31C89E4582D087F641A095FCABFFFFFFFFFFFFFFFFFFFB8C17CED8042CE0570809D908688523D7FB0DBFFFFFFFFFFFFFFFFFFFF58978883B252E930F041458784E3F9A6E35D7",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y17_N10
\imRead|altsyncram_component|auto_generated|mux2|_~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~19_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead|altsyncram_component|auto_generated|ram_block1a28~portadataout\))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\imRead|altsyncram_component|auto_generated|ram_block1a4~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a4~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a28~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~19_combout\);

-- Location: M9K_X33_Y17_N0
\imRead|altsyncram_component|auto_generated|ram_block1a40\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFAFCFFFFC36821F5FD0BECE73FFFB7FFFFFFFFA7FCC2B27E3EE47FFFFFFF1FFFDDC80D7D3F8C51E8557FFEFFFFFFFFF6FFEE061EAF5F2FFFFFFFFEFFFF468DD7E3D2D239B665BFDFFFFFFFFFFFFD100231FFEBFFFFFFFE7FFFF03537637E8C2C27BF3DF7FFFFFFFFFFFF0D25C56FDFBFFFFFFFAFFFFFA384FD7FEADCE42182FFFFFFFFFFFEFFFFA191D9FBB7FFFFFFF37FFB506C1D1DF553CF5FD35FDFFFFFFFFF9FFEF974FD56F6FFFFFFFFCFFEF7D1E6A81D9926C5C53EFBFFFFFFFFE3FFA5F08B2CDEFFFFFFFFCEFFA132D26D0383115C60D99EFFFFFFFFFDFFFCCF369FABAFFFFFFFF7BFF3AA1A86B8B5EECC6DB3BF91FFFFFFFE37FE9F2FCDF9FADBF",
	mem_init2 => X"FFFFFFBFF4D481D2A274E7FECD6FDEFFFFFFFFFCF7FFFE2A43F3F5FFFFFFFFFBEAB2FD3B599E4CFBFB133ECFFFFFFFFFEFFFF5E8C6FF7E5F7FFFFFBEFFC41419FC99D09E3521B7B8FFFFFFFFFB3FF86C089FEFC8FFFFFFFFDBF20DFD019BA8D3E72946AF1DFFFFFFFE5BFF683F87FFF8BBFFFFFFBDFC9F6FA2F9CA1C7FEAB6D1EDBFFFFFFFF6FFF058E0BCFF17FFFFFFF31FF350FF9CFF3BAF9BB14F1DAFFFFFFFF8B7FED219CFFFE2AFFFFFFEB7DE9B26E4DF8F09E3168087E9FFFFFFFF37FFE000B3FFFCDFFFFFFF74FCFDA107E6E1BD397837D3DFFFE49FF9D3FFFFB6F38C3FCF7FFFBFFFF7E2B0B7C7EABEF9E0F6E41FFFFFB0FEDE5F9F71DFB9CFFFE7F1",
	mem_init1 => X"5FFFFCFEBFA1F80CDFD3EA5D4EB7FFFFCF7FD357FCE093DBACFFE97FFCFFFF9FB7DE477BA87E1948D9E6EFFFF7FFF14EF7E542FBFF3FF6EFFF6FFFFFFE72CF1C0E5FEA8BEBB6DBFFFF6BFF931F19EBF8E0CDFF1DFF47FFFFBFAF723FE1DBFE5F70979F3FFFE7FFCCC354C32715A0BFEBFFFA7FFFEFE49D30FFD3BBFCE05554AFFFFF5FFFD86BA9F4F53B37FD51FE9FFFFDFCC70996CF6FFFCC036A39FFFF33FFD8F7B6ADEE2E21FF3A3FDEFFFFDFE86102E51FFFFCBE28079FEF26F5C93FF299BFE4FA3FE5E40F13BFFFF92EE1FA5FFFFF6BCE9977FFC4A67DFA7D695FFCBFA7EFB5F60A3FFF3FCF874DF4DFFFEAFFC9BEFF9E916BBE0FF6D8FF8238F9DBFDB2",
	mem_init0 => X"C67FEFF2F7F80FDFFAF2DFF4579FF6886DBEEAF8631FFFCFDF33FD96596FFCFF2BEF742FFB0B1DFE45FFFEE6AEF7F1D7969BFFED45E62EBDF69DFFDF84EDF83FF7E8BFBFFF7DFFF61DEDFE39D00779D0CF3E49BFF786FFFBFE8DF7DFE9F3B0AE3F77DFF91C79BFFC78347F9CFA67EDFFA23E0FFFFFAB9BE8536EA133C7F1F2FF8BE875F88FDCFBFFF999FF57B663E8FFE7FAB2FE6D93C5B3D8777E7DB8EB6BFFF57FFFFFFFFFFF04F79B6BA7FCFFE1F91B0AF7904D5FFFD792A0765FFF2B1FFFFFFFFFCC9EBEE1663F9FD21CF5894F225EF807FAB7A80EC7FFFF7FFFFFFFFFF897F0DC8F5B73FFA9505ACDDAD9C943DF540666B5FFFD6FFFFFFFFFFD03FFBCE6",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y16_N0
\imRead|altsyncram_component|auto_generated|ram_block1a16\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFEF00FA90880441CDC74103570A684762FC07FFFFFFFFFFFFFFFFFFFFFF705DC10419A541AEA9EA0093AC5743E650FDFFFFFFFFFFFFFFFFFFFFA33BA808F574DEFE87F260DCE1588003AFF1BFFFFFFFFFFFFFFFFFFFF4A11B19541B118286F214905470257CE70577FFFFFFFFFFFFFFFFFFFE2707F88F5A437148B3D5662F89C6048D8DF1FFFFFFFFFFFFFFFFFFFF98788D70025662E7C433F7D04080F8C0358D1FFFFFFFFFFFFFFFFFFFF22E3BC8809DF5C03E84C0C359FF4D8A7B175BFFFFFFFFFFFFFFFFFFFFE99A70C1DA3662ACDF2E16B7EC6FAFC6D938FFFFFFFFFFFFFFFFFFFFFEFEDA129B8798FD99E408A4E2A48FA3E9FFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFB09C3E3537564697AD9271C883A35B475381BFFFFFFFFFFFFFFFFFFFFB7037C6A6906B7B53BC998B82A1DD6CE213BFFFFFFFFFFFFFFFFFFFFF3B5978D4D9CB1C79D4935DF85A5F6D9D9DEAFFFFFFFFFFFFFFFFFFFFDB091F0A1A73B99D3FC86AD5D543EDB3964D5FFFFFFFFFFFFFFFFFFFF671C0615367780F93348C6757E7B9B6F29C6EFFFFFFFFFFFFFFFFFFFF3F0D8E3A6FFD9C60EADD71D62A2B36D8B97DFFFFFFFFFFFFFFFFFFFFF58C7AC74D9D56ED6FF32573632DE3DB057F8FFFFFFFFFFFFFFFFFFFFDC8AE3065FACC5D5FE825843854BE713AD7FFFFFFFFFFFFFFFFFFFFFFF78E660CBEC6C5D2B6EADFDF35E7CE2647BFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFEF8AE4197E8D7BC654316FF6406F9C4CD7D57FFFFFFFFFFFFFFFFFFFE47535822F9F006932C312F0DF4AF38B0CAB2FFFFFFFFFFFFFFFFFFFFC7F7EB941F4CF4F4981A73E7D01DE7160A5DBFFFFFFFFFFFFFFFFFFFF9D7A57203E0CC8B65AC4A218FB4FCE2D5892AFFFFFFFFFFFFFFFFFFFFB0C942407BF804B7FD20C4DC4E1F9C98F09B7FFFFFFFFFFFFFFFFFFFF7F8D8480F86140EFDE1165A701FF393199FFFFFFFFFFFFFFFFFFFFFFE61B7A9CDFF10545FAF2B9441109AF2AE9017FFFFFFFFFFFFFFFFFFFFE33F8539BF929DF964007B4EB92A5E559BCABFFFFFFFFFFFFFFFFFFFFA37202717ADF0CA1F8153615581CBC082F367FFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFF681745C2F8FDE4915C8F735B9BAD78A12930FFFFFFFFFFFFFFFFFFFFF648B8B85F29CAA8F16380800F1FA79406EBDFFFFFFFFFFFFFFFFFFFFCA607050BCBBDD7B590630BEC86F4F28625DBFFFFFFFFFFFFFFFFFFFFBB31A0A17EEE82D1FEB7A37DA41EBE55FABB7FFFFFFFFFFFFFFFFFFFF80871142F85E463F78667EEEF1CD3CAAB9ABFFFFFFFFFFFFFFFFFFFFEF652C7A5FFDB16D81863F4F9137ABE69EBBDFFFFFFFFFFFFFFFFFFFFDF6DFA54BD27674D2467BC3EE7FF5423334BBFFFFFFFFFFFFFFFFFFFFBA8B6211797581DBEB3E1DF695DEAFBB3E077FFFFFFFFFFFFFFFFFFFF7E7FA752FAE5CE79D2D27C2CE02D5EE8067EFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y17_N12
\imRead|altsyncram_component|auto_generated|mux2|_~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~20_combout\ = (\imRead|altsyncram_component|auto_generated|mux2|_~19_combout\ & (((\imRead|altsyncram_component|auto_generated|ram_block1a40~portadataout\)) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0)))) # (!\imRead|altsyncram_component|auto_generated|mux2|_~19_combout\ & (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\imRead|altsyncram_component|auto_generated|ram_block1a16~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|mux2|_~19_combout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a40~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|ram_block1a16~portadataout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~20_combout\);

-- Location: M9K_X53_Y4_N0
\imRead|altsyncram_component|auto_generated|ram_block1a76\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFDB387D447FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE84000E00D37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90042707166007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE2E1A020748C61FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF3820073FFFE20B1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF621CC101",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a76_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a76_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y15_N0
\imRead|altsyncram_component|auto_generated|ram_block1a88\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a88_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a88_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y20_N0
\imRead|altsyncram_component|auto_generated|ram_block1a64\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"31E0CC02DC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEABB3F2212CCF45C7DE07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4027EB545922AC893D6C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1863306C33C8E005982299FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3C3FE324B53D3883117DA8CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAC2C1F6B00CFECE48E8311851FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D6EA7817047C78390DABA8F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE4CAE7664C68C1DBA069F5185FFFFFFFFFFFFFFFFFFFFFFFFFFFFF396613BDC837F51276294AD6938EFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2B8481C00136E",
	mem_init2 => X"DCA12C5699C7047FFFFFFFFFFFFFFFFFFFFFFFFFDFD4DA0E5A553D7C73F89FEEE9295205FFFFFFFFFFFFFFFFFFFFFFFFFFF44AE93978BBC8EC52EC0D1A5062845DFFFFFFFFFFFFFFFFFFFFFFFFFEA184A696B14FB45178F52D0A8823FBFFFFFFFFFFFFFFFFFFFFFFFFFCD6CEF70D919416915A3AB48CDEBCDD8BFFFFFFFFFFFFFFFFFFFFFFFFC00719ADC4A8F3DB27D960C99EBBB63D7FFFFFFFFFFFFFFFFFFFFFFFE158340EE2815A7C2006B1120517FD9F73FFFFFFFFFFFFFFFFFFFFFFF25043F1C4089EF5AC57B5F6188827A0FAFFFFFFFFFFFFFFFFFFFFFFF82AFE283695987FFFFEFB7E3A5217DE6A3FFFFFFFFFFFFFFFFFFFFFFD53016EE882580C3FFD",
	mem_init1 => X"C93FF342901D18C7BFDFFFFFFFFFFFFFFFFFFF0D66C9E47A2F0D65FFCD23FF82C41CD322D3FFFFFFFFFFFFFFFFFFFFBED2332EA9076B70000C5BD113C33007D5371FFFFFFFFFFFFFFFFFFFFD3C4A07EACE1380B401A50E6274A315E466C3FFFFFFFFFFFFFFFFFFFF5FAAEAAD1F0A127FFFFF01273F3ED183F595DFFFFFFFFFFFFFFFFFFB1D7368A163DE25FFFFFFFF8A0A8DB9E500541DFFFFFFFFFFFFFFFFFF9132D03038DE4FFFFFFFFFCFB8477F0252EEA3BFFFFFFFFFFFFFFFFBE41C30D038CC47FFFFFFFFFFFFD1939266A5EF39FFFFFFFFFFFFFFFFF13249D23379EFFFFFFFFFFFFFFEDDB48A922AAE57FFFFFFFFFFFFFFB58C33924D0A2EFFFFFFFFFF",
	mem_init0 => X"FFFFF5B9AF76E0BDD9FFFFFFFFFFFFFFFC43C7A7352377FFFFFFFFD3FFFFFFDBFE0986B8D2BFFFFFFFFFFFFFFFFAB71B90F2A7FFFFFFFF43BFFFFFFFDFC77D119C4BFFFFFFFFFFFFFFDA9C8A4D1851FFFFFFFEF7D27FFFFFBE233A1D8DEEBFFFFFFFFFFFFFFE3E86298749FFFFFFFD4F7E39FFFFFFFC387A0BFC5FFFFFFFFFFFFFFFFADD13B476FFFFFFFDCA7063E0FFFFFD51A0A78DE29FFFFFFFFFFFFBF239363E54DFFFFFFFEEF21CEFDFFFDFFCA9BF1EF6E7FFFFFFFFFFFFFCAF612758AFFFFFFD5F29FC0B27DFFFFF024295C4113FFFFFFFFFFFDE690571B11A7FFDFFA200B60E57527F7FFACF9CED742BFFFFFFFFFFFFDF9A475619BFFFEBC368580066",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a64_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a64_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y20_N0
\imRead|altsyncram_component|auto_generated|ram_block1a52\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"9FDBFFFFF46BE88AE65FFFFFFFFFFFE70EEDD8F27FFFFF913D711978EFE75FFFFC0C9A811336FFFFFFFFFFE9BC2E76D55FFFFFC9EF21305E264E97FFFFC79D0B999C7FFFFFFFFFFE6FF5F8816FFFFF698D5002BE828EE59FFFFE69EEB658DBFFFFFFFFFFF851D5E4177FFFB0BFDD9E203B00B7FBFFFFFB2CDF4BE0BFFFFFFFFFF09527AA12FFFFFDD7F63CAF94761B3FEFFBFFE378F2F7077FFFFFFFFD59D8EA141FFFF410FE1AEA021CE81FFE6FFFF7FCC7B5BD7FFFFFFFFB4F5748D5E7FFBDC51FD09907BE2057FF8B7FDF4D2C62976FFFFFFFFFD23F5E1909FFFFC7F3FDFC6474461EFFFDFFFFFFAFC6D5DCBFFFFFFFFDB1D9E02BEFFFEC4FFE84BB020FBF",
	mem_init2 => X"2FFE59FFFF44092EDA5BFFFFFFFFD4AD8C3CFFFFFACA7FE32330046CD17FF5DFFFE99862E218FFFFFFFFCC16F0349FDFFE3BAFFC39304DA0BA8FFFB57FFF87D1B6979FFFFFFFF7E98F6853FDFFCFFFFFDD19F5312131FF629FFFFC5EDBF055FFFFFFFEFE98B6A9FFFFB8BFFF8AC5942C8CEE1FFFFBFFBF91CA33963FFFFFFF382EF3AE3FFFFA5BFFF8A29B8DB8CBF3FFFF1FFFF59D069ACAFFFFFFF472326E0BFFFF2B7FF7DC178FC8A5D87FFFD9FFFFC7260DACFFFFFFFD812777127FFFA9DFFAC2ACE7FEAC5FE7FFFEFFFFF8E327F367FFFFFFA671F2D77FFFFCDBFF59D2FBFA7C63B7FFFF3BFFFF877137877FFFFFC9C1AC441F7FFA93FFDDFA03F9FFD804",
	mem_init1 => X"7FFFEFFFFFFB1742C587FFFFFF7FCF99DFFFFEE6FFFFB1EB4878DE5CDFFFFF71FFFF8974CC51FFFFFF6AD9FC62FFFFB55DFFDEBA8E3F60656BFFFFF67FFFF15FCFC6EFFFEFA3F7CA0F3FFBFBFFFFF5E27F07FFFE937FFFFFE3FFFF438C23B3FFFFF4107CF647FFFE9FFFFE8257F3FFFFE0BFFFFFFF7FFFE545F5A5BFFFFED9D90F9DFFFE2B7FFFC29F7FFFFF9E8A7FFFFFAFFFFFC7EC7CA7FFFFF3287B117FFB62DFFFFFF29FFFFFFFC2FFFFFFFEFFFFA250F54FBFFFF48496BD37FFDBB3FFFFE323FFFE7FFE6BFFFFFFDFFFFBA04F8A77FFFEE34956B7FFFE9F7FFFFFBBBFFE0FFDEB3FFFFFE9FFFFD7CC8266FFFFB3B5746EFFFF2CF7FFFFE3AFFFE03F94D7",
	mem_init0 => X"FFFFFDEFFFFE030EF4EFFFE5CA7675FFFFF6DBFFFFEC9BFE7FC7B374FFFFFF9DFFFFB3A35742FFFF3ECED1CFFFFDFFFFFFFE9FE3C7C3BE8C7FFFFFF47DFFFC3329779BFFD71EB56DFFFA9FFFFFFF63FE891A78E8EFFFFFFCEDFFFF78DAD489FFF3F3D04D7FFF077FFFFFEC3FEC87178C15FFFFFFDB7FFFF9500E3B7FFFE15EBCD7FFF07FFFFFFFA7E8D5869CC4FFFFFFF513FFFFBE9432B7FF202C42CB7FFFEFFFFFFECCF8BB9A97DD43FFFFFFD67FFFEE0DAAC2FFFCB27EFBBFF797FFFFFFC8FF16401EADFAFFFFFFDEBFFFFF4AD8690FFDF6BA1F7FFFE5F7FFFFFEDFE589DEABBF69FFFFFFF5FFFFD88AFCA9FF55BBC335FFFCB5FFFFFFC2FCD812527FB13F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y17_N18
\imRead|altsyncram_component|auto_generated|mux2|_~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~17_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead|altsyncram_component|auto_generated|ram_block1a64~portadataout\) # 
-- ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead|altsyncram_component|auto_generated|ram_block1a52~portadataout\ & 
-- !\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a64~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a52~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~17_combout\);

-- Location: LCCOMB_X52_Y17_N20
\imRead|altsyncram_component|auto_generated|mux2|_~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~18_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead|altsyncram_component|auto_generated|mux2|_~17_combout\ & 
-- ((\imRead|altsyncram_component|auto_generated|ram_block1a88~portadataout\))) # (!\imRead|altsyncram_component|auto_generated|mux2|_~17_combout\ & (\imRead|altsyncram_component|auto_generated|ram_block1a76~portadataout\)))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead|altsyncram_component|auto_generated|mux2|_~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a76~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a88~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|mux2|_~17_combout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~18_combout\);

-- Location: LCCOMB_X52_Y17_N24
\g~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g~0_combout\ = (\process_0~13_combout\ & ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\imRead|altsyncram_component|auto_generated|mux2|_~18_combout\))) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- (\imRead|altsyncram_component|auto_generated|mux2|_~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|mux2|_~20_combout\,
	datab => \imRead|altsyncram_component|auto_generated|mux2|_~18_combout\,
	datac => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datad => \process_0~13_combout\,
	combout => \g~0_combout\);

-- Location: FF_X52_Y17_N25
\g[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \g~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g[0]~reg0_q\);

-- Location: M9K_X53_Y32_N0
\imRead|altsyncram_component|auto_generated|ram_block1a5\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFC000206C3F886EF0AD7F9FC94335B54800003FFFFFFFFFFFFFFFFFFFF800403447E137CDFF51962904BFF6AB602087FFFFFFFFFFFFFFFFFFFF00140160FB378ED5FAF6BC2FA85ED5D00B00FFFFFFFFFFFFFFFFFFFFE01000951FAF323E92569CB02293DAD4681A1FFFFFFFFFFFFFFFFFFFFC09881146E837FDD8C05B83EB6EF94C40460BFFFFFFFFFFFFFFFFFFFF8150C0097D8FFB027D45DC6F1577AA8030E87FFFFFFFFFFFFFFFFFFFF09C20026FE3DBDEE4ADBB3605FDE0C0000E4FFFFFFFFFFFFFFFFFFFFF0D002015DFECD0D5F87FFFB73067960400A1FFFFFFFFFFFFFFFFFFFFE2070000603FFC20738F9DF3FFF2080002817FFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFC024E0482BFE66B9C7DE33D5DCE5E0001040FFFFFFFFFFFFFFFFFFFFF0834C0000B5B6D2EFEBE393F9E380100CB04FFFFFFFFFFFFFFFFFFFFF02C71001009B2DD99D7C77E6C1000000E181FFFFFFFFFFFFFFFFFFFFE035F0000000C5FE38B0F9FE4C0004003690BFFFFFFFFFFFFFFFFFFFF86810300020833FDC0003C7CE104010808367FFFFFFFFFFFFFFFFFFFF018A438001031308E001C02220000420B464FFFFFFFFFFFFFFFFFFFFE0418370C22800334000048800104206C5821FFFFFFFFFFFFFFFFFFFFC22545400320000101020002001100088E913FFFFFFFFFFFFFFFFFFFF80041D8C14200000000800000042C1938E007FFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFF08009E7488F000180000000003C44D964406FFFFFFFFFFFFFFFFFFFFE005803F540A0100004200008070209C43A00FFFFFFFFFFFFFFFFFFFFC014180C400040831201020428601890F2A01FFFFFFFFFFFFFFFFFFFF80561E6800F30404420C120A9CE8016722A03FFFFFFFFFFFFFFFFFFFF0021EB82E247800E09201C0870515076A0407FFFFFFFFFFFFFFFFFFFE000865CE0B0F02390C308850707153260040FFFFFFFFFFFFFFFFFFFFC0042891E02140810201C4060A181A0044A01FFFFFFFFFFFFFFFFFFFF8001459340048A01150A08073218240A08203FFFFFFFFFFFFFFFFFFFF0001E38402041A040000081618182871A0007FFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFE0041009000084A000000001A10800204A000FFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y23_N0
\imRead|altsyncram_component|auto_generated|ram_block1a29\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00207FF0E040769E72FE3C7FF00842C280000DFFFFFFFFFFB400050D0A400FFF9F81916787FF130FFE206C0C0C0007FFFFFFFFFFE7E00303036441FFF3F0FFCF7E0FC8E1FFC00606F10000F7FFFFFFFFFDE000209878403FFF7A26713FF08F197FF860C05A480004FCFFFFFFFFAE00120A8F2607FFE345F50FFF40025FFE0A0302200403DF9FFFFFFFF4C08051A70140FFFE309889FFFA040FFFC1803021980015D3FFFFFFFDA0019040B0181FFFE20580FFFFF857FFF8120C050D0001667FFFFFFFBC0020082C3603FFFF028BFFFFFF45FFFF040041C3B000BFBFFFFFFFF9800D028000007FFFF881FFFFFFFC7FFFF03844169A000AFFFFFFFFFF3001E5A0E8",
	mem_init2 => X"300FFFFF003FFFFFFFFFFFFE0082E2E7A001237FFFFFFFC8007A74743001FFFFF91FFFFFFFFFFFFFC034203F340081EFFFFFFFFF010B3D0B0A003FFFFFBFFFFFFFFFFFFFF806834309C00026FFFFFFFFC023DAC2D9E007FFFFFFFFFFFFFFFFFFFF001008183002035BDFE3BE60201871432080FFFFFFFFFFFFFFFFFFFFEC0404001791701197F97FE90E1A8000120B1FFFFFFFFFFFFFFFFFFFFC0040F8D14039016E0CF38D4280A0C7C08003FFFFFFFFFFFFFFFFFFFF9A8D00073B2138079FFF908270FCE01071187FFFFFFFFFFFFFFFFFFFF000B081D2C03200EE774400D4072E103C040FFFFFFFFFFFFFFFFFFFFE860016177201E0819676002D80EE868006",
	mem_init1 => X"91FFFFFFFFFFFFFFFFFFFFD151E17386803240000540006018F3A1E0E43FFFFFFFFFFFFFFFFFFFF820043206FCA0852024902B000E684C320007FFFFFFFFFFFFFFFFFFFE024340C083000330110604BC4504080A2B40FFFFFFFFFFFFFFFFFFFFC02C282011200151C081172104488047DA421FFFFFFFFFFFFFFFFFFFF802010010080045A70008CE80800200302003FFFFFFFFFFFFFFFFFFFF0814100000000016406045C04000000008907FFFFFFFFFFFFFFFFFFFE5400408200000074010484000001020800E8FFFFFFFFFFFFFFFFFFFFCE806000401002047154268900802000003F1FFFFFFFFFFFFFFFFFFFF8F2200000020011002A2400200000000213C",
	mem_init0 => X"3FFFFFFFFFFFFFFFFFFFF8F603FFF3FF0040203B4217C0FCCFF7F82E4FFFFFFFFFFFFFFFFFFFFF0321C000000002181EEC00400000684C1705FFFFFFFFFFFFFFFFFFFFE0703807FFE0000E3A068E5801FFFB00C0E0BFFFFFFFFFFFFFFFFFFFFD0107301FFC07B1A99632F87C0FFE21D82003FFFFFFFFFFFFFFFFFFFF8400DF0F803F01A4434340407FF802570000FFFFFFFFFFFFFFFFFFFFF1401F7400000018128A29D80000075CE00E0FFFFFFFFFFFFFFFFFFFFE8C039B830C000E01D7D409B801CF905C03B1FFFFFFFFFFFFFFFFFFFFC4603FC80436815E173CCC90218423CF80887FFFFFFFFFFFFFFFFFFFF84A06086FEC0BCE2B1005102897F9BA30762F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y26_N26
\imRead|altsyncram_component|auto_generated|mux2|_~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~23_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead|altsyncram_component|auto_generated|ram_block1a29~portadataout\) # 
-- (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\imRead|altsyncram_component|auto_generated|ram_block1a5~portadataout\ & 
-- ((!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a5~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a29~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~23_combout\);

-- Location: M9K_X53_Y27_N0
\imRead|altsyncram_component|auto_generated|ram_block1a41\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000103FFFFE34081F1FE0A107F2FFFF80000000017FCFA0CC0BEE4000000009FFFF84C1D7C7FC48301507FFE0000000002FFED18BF0F5F0000000007FFFF97E8D7CFF0C648746FFFA0000000003FFD400269FFF0000000017FFFFA372F627F0EA24BCCBFF0000000000FFF583DDF6FDF0000000047FFFD03C87D47C22D082843FF0000000002FFFF0CCCD9FB8000000008FFFE314C1D99FB47845F185FC0000000005FFEFC2FBD76F4000000000FFF827052B83F5BAAEDC663F00000000003FFB5F3EF2CDE0000000013FFE642907303833D596A3A1C0000000000FFFDC7369FABB0000000001FF8CC02A01973EEFC6C2BB7C400000000D7FE8FB7DDF9FB200",
	mem_init2 => X"0000007F82BA86C068E4E7FCCC7FE7800000000377FFFFC4C3F3F6000000000FF0361A449D8E0CFBDB3938E0000000005FFFF4E33AFF7E0000000000FE64DD009C9CC49E3702F63C00000000073FF822805FEFC6000000001FCB3F7CE19A18D3E76A86A380000000005BFF63FE8FFFF98000000003FC1F9FA2F9C35C7FEA82D1E0000000000FFFF050DDBCFF08000000009F9361FF9CFF23AF9B860FBC0000000005B7FEE2992FFFE11000000003F89CA6F4DF86CDE31680A3800000000097FFF00683FFFC8000000001FE7F852FE6E189397A83D440000120000BFFFFAEF9DC3FC8000000000FEEF2B7C7EA3959FE40641800000000035F9F77DFF9CFFF9000",
	mem_init1 => X"000001F9BF19FC0EC78DA0C80EA3000000000027FCE1D3FFECFFDC000000003F97C1477BE87AB99127E4700000000498F7F562F9FF3FF50000000007F1702F1C0E8FD41011B698000010000E1F19EBF8E0CDFFE0002000007E2F463FE1C1FF240817A30000240000835DBE27106AFFFF000240000FE49858FFDC7FFF8881F160000700006C6BCB94F5A277FEC000380001FC06C0CE093FFFF2A37B9E00003000001794DDFE2A28FF58001E00001F886001D98FFFF8BE28A320009E821083F3C03FF6787FE10185644003F9AE2A0005FFFF0BCE9CF00009A000007DF197FE802BEE60000900003F8F876470FFFF6BFFE93E00063104000FE4E4FFA262F9E40033",
	mem_init0 => X"180007F2F7F857FFFDF1DFFCE7800882400012FA037FFFE21F3C0022411001FE0FEF79FFFF975DFF69F000286E00005799A7FFFFC5E68001F950001FF4EDF88FFFC22DBFFE3E000645800009D63879D4627E70001E260007FC0DF7D3DFF002EE3F47C0065DF800017C013F9DD057EE0043CEB0003FFF9BE17CFE0407C7F1F800478800002FD7BFFFF8D7FF800871F20007FCF2FE2407CD883874FF00E028E800017FFFFFFFFFFF10081C745C00FF89F9303CF0D980DF8FE802180600002B1FFFFFFFFFCE01060096801FFC5CE01C06087C0C8BFD41A001C0001F7FFFFFFFFFF98000E0816083FF1D508AC1E6D9D4C8FFA000051600036FFFFFFFFFFD28007820",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y31_N0
\imRead|altsyncram_component|auto_generated|ram_block1a17\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFF0700EC0A83091B384E2527B1A181BF6C0380FFFFFFFFFFFFFFFFFFFFE03E04964192B80425D901C8CA44555792C03FFFFFFFFFFFFFFFFFFFFC00079295334B378140C88FAA19AD0D300007FFFFFFFFFFFFFFFFFFFF880C7244006B166406B9892C6A0021AF0810FFFFFFFFFFFFFFFFFFFFF64806405CC8153717EA81C9504C2034E06FBFFFFFFFFFFFFFFFFFFFFE0767C80825B415FC0120F942B80C028468C7FFFFFFFFFFFFFFFFFFFFC4E01D6299DC690000BC401C9FF5945701487FFFFFFFFFFFFFFFFFFFF00393210D9D66330C1168DB7EC7F0A261C84FFFFFFFFFFFFFFFFFFFFE00002483BD1B8FC981008A4FABE9115C4001FF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFC2030E8077786FD7EC0675D0F3D5622B0C147FFFFFFFFFFFFFFFFFFFF17201D00E916D65D38119A009A1D8456003A3FFFFFFFFFFFFFFFFFFFE03423A01DBDF9FC5D00353FA5BFF88AD47E5FFFFFFFFFFFFFFFFFFFFE1C927503A53249D3E006AEBFDE7F11582423FFFFFFFFFFFFFFFFFFFF986E46A0762FCCA8F00CCD4BD01BA22305213FFFFFFFFFFFFFFFFFFFF80180D40EF849446EB15F9D62E43444482027FFFFFFFFFFFFFFFFFFFE00002A81D9F1BE57F0225730078E88882000FFFFFFFFFFFFFFFFFFFFE00403503FA2EFE5FE005DB4AB0BF195A0801FFFFFFFFFFFFFFFFFFFF804F06A07F087597B49ADAFF36F3E32A4F603FFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFF008C2540FE910C84D03966FA35F7C6548FC8FFFFFFFFFFFFFFFFFFFFE37405A91FE14A18F2311A014551F8C8902FDFFFFFFFFFFFFFFFFFFFFC1C80B523F0914F7D8847BE8C7F9F191240E1FFFFFFFFFFFFFFFFFFFF8B8096A47E8B47917820B73DCB47E323400C7FFFFFFFFFFFFFFFFFFFF0804A548F8FE4E5AF810D3B94057C6848864FFFFFFFFFFFFFFFFFFFFE00784A91FB6501DDD1E37CA423FF8D093E00FFFFFFFFFFFFFFFFFFFFE8738B5A3FF123D47AD0FA56F109B1ADA5389FFFFFFFFFFFFFFFFFFFFD43C56B47E6E9AB265DC7C62B866635B47C47FFFFFFFFFFFFFFFFFFFF8B71A568FFD91CFFF9053605B764C69483B0FFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFF10000BD1F9B5E04150CF66FF1E2D8D18002DFFFFFFFFFFFFFFFFFFFFE980017A3FBDDB527A28917E0F3FB1A320063FFFFFFFFFFFFFFFFFFFFD00003D47C87DD71570635DECB27634600207FFFFFFFFFFFFFFFFFFFF003007A8FCE8B3D1E3BBA33F282EC6880204FFFFFFFFFFFFFFFFFFFFE49C85F51F85FA6F7696AF320E9CD8D105391FFFFFFFFFFFFFFFFFFFFC0E601AA3F5DBB100086BEC7F1BBB5F021BC3FFFFFFFFFFFFFFFFFFFF837001D47F24EF7724F63C3EED83684C00C87FFFFFFFFFFFFFFFFFFFF00C02D30F8760DDBE3381DF3EB3ED7268080FFFFFFFFFFFFFFFFFFFFE06002911FBE6CEF5CAC255E5D04DAF520061FFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y26_N12
\imRead|altsyncram_component|auto_generated|mux2|_~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~24_combout\ = (\imRead|altsyncram_component|auto_generated|mux2|_~23_combout\ & ((\imRead|altsyncram_component|auto_generated|ram_block1a41~portadataout\) # 
-- ((!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead|altsyncram_component|auto_generated|mux2|_~23_combout\ & (((\imRead|altsyncram_component|auto_generated|ram_block1a17~portadataout\ & 
-- \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|mux2|_~23_combout\,
	datab => \imRead|altsyncram_component|auto_generated|ram_block1a41~portadataout\,
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a17~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~24_combout\);

-- Location: M9K_X73_Y25_N0
\imRead|altsyncram_component|auto_generated|ram_block1a65\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F1BACC03A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC133DA286F0149D7F437FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6267A895B90635099D90BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6223B81C43D4E055B42241FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA26F6360393EAF20554D8817FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1EDE766002F9CE50B2491BABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECC5807000ED703C2D052824C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E0297046966FC9005841F706FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF47682205A811FD33032B033F9017FFFFFFFFFFFFFFFFFFFFFFFFFFFF81BC2CA0564AEE",
	mem_init2 => X"ECC4155883F710FFFFFFFFFFFFFFFFFFFFFFFFFFFFE1DA064284184C77FC0E48283D0243FFFFFFFFFFFFFFFFFFFFFFFFFFF36EE238004210EC122A48426A09A69FFFFFFFFFFFFFFFFFFFFFFFFFFE01843730A140747105142B44850B63FFFFFFFFFFFFFFFFFFFFFFFFFE1ECEC3112875969903088E0AB900DB0FFFFFFFFFFFFFFFFFFFFFFFFF087F182650B0C2FB891670C8421CB431FFFFFFFFFFFFFFFFFFFFFFFF8351F49EE4549A7C340AF1311C0F9B1F07FFFFFFFFFFFFFFFFFFFFFFE9D805B0E480FEFDA557B78250C52382FC3FFFFFFFFFFFFFFFFFFFFFF86828289D83987FFFFEFBFE721C2134EACFFFFFFFFFFFFFFFFFFFFFFC26D18EF1C6D80C3FFD",
	mem_init1 => X"CB3FF31AA60039C03FFFFFFFFFFFFFFFFFFFFF252ACBF7843F0E06003B63FF84C0976B93A7FFFFFFFFFFFFFFFFFFFFC2D2174EA1857180000006B11BC2737065323FFFFFFFFFFFFFFFFFFFE9BC5A81E8CE280193FFC800A274B25404A6C5FFFFFFFFFFFFFFFFFFFC182AEB3D1F240B3FFFFFEA059FBFC50A0DBE1FFFFFFFFFFFFFFFFFFE7F0568836BF80BFFFFFFFFD01C89BE2300D203FFFFFFFFFFFFFFFFFFC949527038F80FFFFFFFFFFFF83D7F145484001FFFFFFFFFFFFFFFFFE31260C178D017FFFFFFFFFFFF20F39316120401FFFFFFFFFFFFFFFFF8144E51037027FFFFFFFFFFFFFD02B5A490449B9FFFFFFFFFFFFFFFFF090387000A17FFFFFFFFFF",
	mem_init0 => X"FFFFF819EEF460A1F1FFFFFFFFFFFFFFFFEBD1A4BD2103FFFFFFFF8FFFFFFFD0FE09D039071FFFFFFFFFFFFFFFD2A639C8F38BFFFFFFFED0D7FFFFFF47C77293C071FFFFFFFFFFFFFFF498B0583A87FFFFFFFEC0210FFFFFFE23382FDD0F1FFFFFFFFFFFFFFDBC1669C7B2FFFFFFFE008001FFFFFFE1382621E863FFFFFFFFFFFFFFCA0003B478BFFFFFFC840F8007FFFFFF85B3A60D201FFFFFFFFFFFFFFAC6067E461FFFFFFE80561E4007FFFFF469BC02CFD9FFFFFFFFFFFFFCA0E0135A0FFFFFFF80B9FC0F004FFFFFA4CA641310FFFFFFFFFFFFFE086484F767FFFFFE0470A79E40217FFFF82FD372F123FFFFFFFFFFFFC6E2415EE1FFFFFF60084C0086",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a65_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a65_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y24_N0
\imRead|altsyncram_component|auto_generated|ram_block1a53\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0003FFFFC37E293B107FFFFFFFFFFFF32CEC34D17FFFFFA01171405062001FFFFF5D81AD7DA7FFFFFFFFFFF87C2E68563FFFFFD20B02701F4E7002FFFFF19C20983F7FFFFFFFFFFF1F37F9400FFFFFE801DB8339807B002FFFFF18F07ED0EFFFFFFFFFFFE049F5FD2BFFFFFA40D55DC00D139001FFFFF82F0F6B007FFFFFFFFFF9DE7FAB94FFFFFF001E7C04668E900007FFFF0B69FE4347FFFFFFFFFE1180EA53BFFFFFA4015B360216A800003FFFF47DCFD2BCFFFFFFFFFF0FD42BD51FFFFFA8003139286A04400027FFFF8D6C61D79FFFFFFFFFF43D00C90FFFFFE0000594E2F9071D00027FFFF85FD615B9FFFFFFFFFCB7DE2086FFFFF88001B083021CE5",
	mem_init2 => X"200027FFFFC80D87DA1FFFFFFFFF06ADD0313FFFFE24001907300486D800025FFFF85848EBD7FFFFFFFFF85CF2154FFFFF001002283287E37E200001FFFF9FD2B6863FFFFFFFF8E04FCA63FFFFE00000599A0E09216800017FFFF9DF1BF441FFFFFFFE3861F9A8FFFFE300001A4CCC308C8C400003FFFFCDD2AB077FFFFFFFCA0C16287FFFF880000582BB8D94C4840000DFFFF8FD2EA2C3FFFFFFF00404920FFFFF9000082E1F8FC885C0000001FFFFC726DC243FFFFFF8A4EE0727FFFFCC000107A2E7FEEB5C1000001FFFFCE340834FFFFFFF1E01FC5C7FFFE200002257FBFA7EC380000045FFFF877C45807FFFFFE5D1BD0D1FFFFC4000005913F9FFD80D",
	mem_init1 => X"0000003FFFF4B63043CFFFFFF55E2D9387FFFF0000000BEDC878DE0EC0000003FFFF79A49E54FFFFFD2CE0FC69FFFFC80200019A8E3F6060600000007FFFF858D386BFFFFFDBF7124C7FFFE00000000B7F07FFFEC200000013FFFF819961A3FFFFF01370360FFFFC4000003217F3FFFFEDA00000007FFFFB41E07D7FFFFF580D6BD1FFFF900000045F7FFFFF9E890000000FFFFF072B5997FFFF830228367FFFCC000000009FFFFFFFCC00000000FFFFE25605487FFFF89D418FBFFFF800000004A3FFFE7FFE100000001FFFFF4585060FFFFC26508E87FFFE400000001BBFFE0FFDE840000005FFFFC3C790617FFFD3B6E061FFFFC200000003AFFFE03F9508",
	mem_init0 => X"0000000FFFFE4100A09FFFF1D097741FFFE000000001BBFE7FC7B37000000041FFFFCBA85401FFFEBC02018FFFF8000000001FEBC523BECE000000011FFFF83A49C41FFF9682336AFFFF600000000FFE9881F8E8E000000017FFFFD88AD187FFE7C9D24E7FFFE8000000013FEDAFA38C14000000003FFFF1510E183FF8E7184CAFFFFA0000000007E8EC051CC4800000082FFFFFBF1436A7FF11BD02D3FFFF000000000CF8B1E7AFDDC0000000207FFFF2512C00FFF4A260F87FFF8000000011FF1BC004ADFA000000000FFFFF485A194FFCB94E1F9FFFF8000000003FE50DA7A7BF7000000004FFFFE0E185E8FFB5009331FFFC480000001AFCC61E173FB000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y26_N30
\imRead|altsyncram_component|auto_generated|mux2|_~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~21_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\imRead|altsyncram_component|auto_generated|ram_block1a65~portadataout\)) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead|altsyncram_component|auto_generated|ram_block1a53~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a65~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|ram_block1a53~portadataout\,
	datac => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~21_combout\);

-- Location: M9K_X73_Y28_N0
\imRead|altsyncram_component|auto_generated|ram_block1a89\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a89_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a89_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y21_N0
\imRead|altsyncram_component|auto_generated|ram_block1a77\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFEDBFFCD3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA80000003AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA403E0F818013FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF101D7A02079301FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEA0560073FFFE3503FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE009C105",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a77_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a77_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y26_N4
\imRead|altsyncram_component|auto_generated|mux2|_~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~22_combout\ = (\imRead|altsyncram_component|auto_generated|mux2|_~21_combout\ & (((\imRead|altsyncram_component|auto_generated|ram_block1a89~portadataout\)) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1)))) # (!\imRead|altsyncram_component|auto_generated|mux2|_~21_combout\ & (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\imRead|altsyncram_component|auto_generated|ram_block1a77~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|mux2|_~21_combout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a89~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|ram_block1a77~portadataout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~22_combout\);

-- Location: LCCOMB_X52_Y26_N14
\imRead|altsyncram_component|auto_generated|mux2|_~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~25_combout\ = ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\imRead|altsyncram_component|auto_generated|mux2|_~22_combout\))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\imRead|altsyncram_component|auto_generated|mux2|_~24_combout\))) # (!\process_0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|mux2|_~24_combout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datac => \imRead|altsyncram_component|auto_generated|mux2|_~22_combout\,
	datad => \process_0~13_combout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~25_combout\);

-- Location: FF_X52_Y26_N15
\g[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \imRead|altsyncram_component|auto_generated|mux2|_~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g[1]~reg0_q\);

-- Location: M9K_X53_Y28_N0
\imRead|altsyncram_component|auto_generated|ram_block1a42\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000001FFFFCCC00E01FE74A020C7FFF800000000180301C1E1411C000000001FFFF8320A833F830C00A0FFFE00000000030014250510A00000000003FFFF980B2803F9318A0B2FFFC0000000000002CFFD860000000000003FFFF9C8F09CFE70D98C087FF0000000000000A5CB209020000000000FFFFC1D7082CF850270D803FE00000000010000800126046000000000FFFF86A3A261F8B00320703F80000000006001025402890C000000000FFF800831479E66D90A1B83F80000000004004A0C10D3210000000001FFF0051C45E1C4C26899863E0000000000000238C9605440000000003FF021F94C2670110312C443C00000000008017060220604000",
	mem_init2 => X"0000007FE301608056731800B0900F0000000000080000813C0C080000000007F94904004204F3046408C0C00000000040000A86050081C0000000007F1BEEE043619B61C8F2081C0000000000C007804060103A000000001FC4C0845E65932C189489670000000001A4009800000007C000000001F860F01D0621238015912CC00000000018000F67014300D0000000003F9CA400630000506470F03C000000000248012D661000180000000003F360F90B206C321CE80F43000000000048000E7964000320000000007E0046D0191CC2C685002CE000000000000000410223C034000000000FC100483815986601909BB8000000000620608A208630000000",
	mem_init1 => X"000000FCC00603F133805F100143800000000048031E2C00130000000000003FC830B88416FC19E0001CE00000000001080A9D0600C0080000000003F08C10E3F10FC00000C93C000100000120E614071F320000000200007F3085C01E33FE8000484300001C000304A2C1D8ED9900080003800007F364370024FFFF004E0CF000008000109447EB0A5C28003000400001FC390041F01FFFE19C843C000040000788410201D5C20096001000003FCF9A003E07FFFCC1D7678000010000600C20000883001A0002800003FC51CC0001FFFE343161E000014000000216800103501010007800007F0078880DFFFFC400171E00000E00000010E70058830600000C",
	mem_init0 => X"000007F908078FFFFCF920030FC001638000030500A0012020C00001C68001FE101081FFFF07220098F000301000006860500009BE1900000030003FE312079FFFC00240007E0001C600000E29C9062A5D81800002380003FC320823F7F84051C08F80006004000183808062018810000C0180007FC0641F287F1A023811F000008F00003027800006EC0000009100000FF88D01800F8A5017887E0000D0100006800000000000E000600C0001FFC606C014F02680A01FC01E06180000D4E0000000003000018605803FF9A3080ACE17840363F80041F0300000800000000006000303608007FF12A40131E5260039FF003808280000900000000002D8000410",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y30_N0
\imRead|altsyncram_component|auto_generated|ram_block1a18\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFE02F01B717C04E20082C3988EC07E03B03D01FFFFFFFFFFFFFFFFFFFFC0100279BE630BE8080180B6863BAAE400803FFFFFFFFFFFFFFFFFFFF800004FA8F0B210604030F119E1D29E400007FFFFFFFFFFFFFFFFFFFF1C0009FA0018E410180206138C003FC00038FFFFFFFFFFFFFFFFFFFFE190013F8CF00CD881046226603C47F900201FFFFFFFFFFFFFFFFFFFFC384027F7DA380C04DCC0018187F2FF382703FFFFFFFFFFFFFFFFFFFF821800FF66238E000300000C600A0BE006907FFFFFFFFFFFFFFFFFFFF008809FE22099C3F22017C48138035C81100FFFFFFFFFFFFFFFFFFFFE000053FC46147036601F75B05C866F800001FF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFC700007F8881882810018A214D788DF0800E3FFFFFFFFFFFFFFFFFFFF884000FF1609083CC006684705E21BE100847FFFFFFFFFFFFFFFFFFFF0C9001FE24206000200CA005A40037C30C10FFFFFFFFFFFFFFFFFFFFE0B7003FC5AD1462C0559500E00006F843B41FFFFFFFFFFFFFFFFFFFFC022087F890023900DB3340001E44DF086403FFFFFFFFFFFFFFFFFFFF800010FF10C86B5810220029D19C9BE384007FFFFFFFFFFFFFFFFFFFF000011FE260039A8000DA8C68B8137C60000FFFFFFFFFFFFFFFFFFFFE000043FC02110318001A20670F406F860001FFFFFFFFFFFFFFFFFFFFC020087F80038A7CC8A12210C90C0DF1C0403FFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFF827038FF0162007B2B4690198BF01BE380107FFFFFFFFFFFFFFFFFFFF189061FE004B1034D07E5CEA2A0037C70908FFFFFFFFFFFFFFFFFFFFE6100C3FC0821B0626018417280006F8E0219FFFFFFFFFFFFFFFFFFFFC100187F8174526F840348C29AB80DF0C0093FFFFFFFFFFFFFFFFFFFF800038FF0401392E00072024AF901B2380007FFFFFFFFFFFFFFFFFFFF002871FE04879E90228C82589C5036471400FFFFFFFFFFFFFFFFFFFFC02C0C37C00ED04B840904392EF646C062D01FFFFFFFFFFFFFFFFFFFF82C2186F802560049913803946798D80C4343FFFFFFFFFFFFFFFFFFFF0CA038DF0011A30C0002C9FA30D31B23814C7FFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFE1D0070BE064003BEA100801C49D236470098FFFFFFFFFFFFFFFFFFFFC0000E17C062240384956EC1F0C046C8E0001FFFFFFFFFFFFFFFFFFFF80001C0F823222B3A8F9CA0135948D91C0003FFFFFFFFFFFFFFFFFFFF0010381F030B0C2E00405CC013411B2383007FFFFFFFFFFFFFFFFFFFE00B0603E07A00000A6910FD8063236470D00FFFFFFFFFFFFFFFFFFFFC05A0E07C0B24080FF79C3B80E404688E1481FFFFFFFFFFFFFFFFFFFF82901C0F81CE1880DB09C3C110448E91C0B03FFFFFFFFFFFFFFFFFFFF078000870780E22414C3E20A00011A0000387FFFFFFFFFFFFFFFFFFFE0400003E051823C205218A004F9234000020FFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y33_N0
\imRead|altsyncram_component|auto_generated|ram_block1a6\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFC0000005C0DA902210806306BDC2460000001FFFFFFFFFFFFFFFFFFFF8000000F81E4A3200DE89D6FB4808C0000003FFFFFFFFFFFFFFFFFFFF002800570648D12A05094408F781184005007FFFFFFFFFFFFFFFFFFFE0078003E025CC00ED286200DD00236001E00FFFFFFFFFFFFFFFFFFFFC0240003D174005C72F847C14A50678000901FFFFFFFFFFFFFFFFFFFF82A80003827244FD80B22010C0884C0001143FFFFFFFFFFFFFFFFFFFF0E40000101C3C285B1244010E0219000009C7FFFFFFFFFFFFFFFFFFFF00000000201312F207800040CF9800000010FFFFFFFFFFFFFFFFFFFFE08400001FC003DF8C70620C000DE00000841FFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFC0080000180199463821CC2A2319000003003FFFFFFFFFFFFFFFFFFFF008C0000012492D10061C6C061A000000C407FFFFFFFFFFFFFFFFFFFF032400000044D226628388193A0000002640FFFFFFFFFFFFFFFFFFFFE04C00000001BA01C6310601B600000008E81FFFFFFFFFFFFFFFFFFFFC170C28000006C023402C3834000001030C83FFFFFFFFFFFFFFFFFFFF86058C00000008F74000BFC40000001C481C7FFFFFFFFFFFFFFFFFFFF08060800000000F800003F00000000102010FFFFFFFFFFFFFFFFFFFFE086868F0800000000000000000043C781841FFFFFFFFFFFFFFFFFFFFC00B82822C000000000000000003061C11003FFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFF801C00483820000000000000010702880A007FFFFFFFFFFFFFFFFFFFF00A4FC11A04000000240000000058E3B0501FFFFFFFFFFFFFFFFFFFFE00A06103C700001818606000058E06103403FFFFFFFFFFFFFFFFFFFFC02860906000838785920E1400106090E1407FFFFFFFFFFFFFFFFFFFF8058184303C48F000E18003440B0B0854780FFFFFFFFFFFFFFFFFFFFF0041860184000C00000010200001A0E18201FFFFFFFFFFFFFFFFFFFFE00854F100C2C106810207800D040638B8403FFFFFFFFFFFFFFFFFFFFC000A10281030408020401000C101C1870007FFFFFFFFFFFFFFFFFFFF800001010600060000000018101020204000FFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFF000280000000000000000000000000014001FFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000001FFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y22_N0
\imRead|altsyncram_component|auto_generated|ram_block1a30\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"1C00FFF81A05893E2D00003FE001C12160001200000000004B001A120C001FFF00026E87E100800FFC0010107000040000000000180000E0808003FFE0010030FD083823FF80050142C0000800000000021000D0E048007FFE04398A3FE85108FFF0203860B00003030000000051000D1610040FFFE086080FFFC2E03FFE0E0C0107800020600000000B00078200C1C1FFFE08E603FFFE101FFFC06050D860001A2C00000002580069B0D0603FFFE11A81FFFFF007FFF81C0302030000998000000040003C10100A07FFFE0140FFFFFF00FFFF0081803040000040000000060002CD038100FFFFE0207FFFFFFAFFFFF0040A180600030000000000C001006100",
	mem_init2 => X"C01FFFFF80FFFFFFFFDFFFFE0341012040002C8000000034000448080C03FFFFF87FFFFFFFFFFFFFC02038200C00021000000000000C030D00007FFFFF3FFFFFFFFFFFFFF801808086000009000000000000230101000FFFFFFFFFFFFFFFFFFFFF00687064400101A4201C41A0002088385801FFFFFFFFFFFFFFFFFFFFE4060783080090066806800010050C1C06023FFFFFFFFFFFFFFFFFFFFC40200029A0070051F30C7805416700010087FFFFFFFFFFFFFFFFFFFF86030E000401C00360006400880000708060FFFFFFFFFFFFFFFFFFFFF1E0C0703300258086080800AD093028041A1FFFFFFFFFFFFFFFFFFFFE180408180C031409099100508701810201",
	mem_init1 => X"83FFFFFFFFFFFFFFFFFFFFC18021A045002DC01002402EC068016100207FFFFFFFFFFFFFFFFFFFF8081A0C3800017A000000146810143048100FFFFFFFFFFFFFFFFFFFFF00C183C10C001ED80000130000C20F060C01FFFFFFFFFFFFFFFFFFFFE010002820C000366000308C0030414001803FFFFFFFFFFFFFFFFFFFFC0100000000000318000F1400000000003007FFFFFFFFFFFFFFFFFFFF98000000000000028001A200000000000018FFFFFFFFFFFFFFFFFFFFF280000000000000B80000400000000000011FFFFFFFFFFFFFFFFFFFFE140000000000001011020000000000000203FFFFFFFFFFFFFFFFFFFFC08000000000000041980000000000000040",
	mem_init0 => X"7FFFFFFFFFFFFFFFFFFFF04A07FFF3FF004003048017C0FCCFF7E0520FFFFFFFFFFFFFFFFFFFFE04E03FFFFFFFFDE4F4D07FBFFFFF97B21881FFFFFFFFFFFFFFFFFFFFC0280607FFFFFFFF040101A7FFFFFB0301403FFFFFFFFFFFFFFFFFFFF80300D0FFFC004E60C800007FF00001203007FFFFFFFFFFFFFFFFFFFF00002080003FFF5CE280DF800007FCA80000FFFFFFFFFFFFFFFFFFFFE0000280000000090EF601100000008380041FFFFFFFFFFFFFFFFFFFFC74006403F000040008000000003F8FA00243FFFFFFFFFFFFFFFFFFFF8BA00037FBC7019E008107A0187BDC2001747FFFFFFFFFFFFFFFFFFFF07501B7B01CF309C13618E4E7180444C08A0F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y26_N20
\imRead|altsyncram_component|auto_generated|mux2|_~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~28_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead|altsyncram_component|auto_generated|ram_block1a30~portadataout\) # 
-- (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\imRead|altsyncram_component|auto_generated|ram_block1a6~portadataout\ & 
-- ((!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a6~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a30~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~28_combout\);

-- Location: LCCOMB_X52_Y26_N10
\imRead|altsyncram_component|auto_generated|mux2|_~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~29_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead|altsyncram_component|auto_generated|mux2|_~28_combout\ & 
-- (\imRead|altsyncram_component|auto_generated|ram_block1a42~portadataout\)) # (!\imRead|altsyncram_component|auto_generated|mux2|_~28_combout\ & ((\imRead|altsyncram_component|auto_generated|ram_block1a18~portadataout\))))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead|altsyncram_component|auto_generated|mux2|_~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a42~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|ram_block1a18~portadataout\,
	datac => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \imRead|altsyncram_component|auto_generated|mux2|_~28_combout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~29_combout\);

-- Location: M9K_X53_Y22_N0
\imRead|altsyncram_component|auto_generated|ram_block1a78\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFF1C003CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3000000009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8001FFFE0009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA00305FDF81C00BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4031FF8C0001C6017FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4043EF9",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a78_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a78_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y29_N0
\imRead|altsyncram_component|auto_generated|ram_block1a90\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a90_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y25_N0
\imRead|altsyncram_component|auto_generated|ram_block1a54\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"400FFFFFC08006040E7FFFFFFFFFFFE0D1120708FFFFFFE006A0C06118007FFFFF1260428043FFFFFFFFFFFC03D181A87FFFFFF000D10FE045A003FFFFE0621066003FFFFFFFFFFF0108063E0FFFFFF800317C387D26000FFFFF8700013307FFFFFFFFFFC3C20A0283FFFFF800A0210004E94000FFFFF850009438FFFFFFFFFFF920405471FFFFFC000C811C0711440007FFFF0C820100C7FFFFFFFFFC6E4715AC7FFFFF80000511FDE410C000FFFFF882300040FFFFFFFFFF902C14AB1FFFFF80001E96B019D1A00003FFFFC29390280FFFFFFFFFE1C2810687FFFFF0000A4341FE28A200007FFFFC202A2A49FFFFFFFFFCC8203161FFFFF000016B26FDE891",
	mem_init2 => X"E00007FFFFC3F288258FFFFFFFFE395220487FFFFE000004D2CFFB254000003FFFF827A31421FFFFFFFFC3A50E2A1FFFFF800000C2CCFC1D20000003FFFF8028C9783FFFFFFFF800100587FFFF800000A4650016CA8000001FFFF821040833FFFFFFFC40020050FFFFE00000167223C43382000001FFFF823554983FFFFFFF858218167FFFF80000003D547241314000003FFFF802D14103FFFFFFF1C7C11D1FFFFF00000009C870363A00000003FFFFC8D904DA7FFFFFFC5C1104C3FFFFC00000005D180118A00000003FFFFC9C900C8FFFFFFF818E1020FFFFF0000001A90405810C40000003FFFFC080027CFFFFFFC63242931FFFFC00000066AC060024F0",
	mem_init1 => X"0000007FFFF84918381FFFFFF8A002640FFFFF0000000402378721D100000003FFFF86430160FFFFFE33010391FFFFC00000006171C09F9D980000003FFFF1A422811FFFFFC42805B23FFFE00000001580F800015D00000007FFFF8E170143FFFFF0F190C91FFFF800000005E80C00001540000000FFFFF0B800823FFFFE260A8023FFFF000000002080000061500000000FFFFE38180647FFFF84D0584C7FFFE0000000016000000030000000007FFFE3B009367FFFF36282701FFFF800000000DC00018001000000000FFFFE1A08058FFFFC19A01163FFFC00000000044001F0021000000001FFFFE400001CFFFF8C4A2091FFFF800000000050001FC06A00",
	mem_init0 => X"0000001FFFFE3FE1C71FFFE023180B3FFFF000000000440180384C8000000003FFFFC4582A39FFFC4001860FFFF800000000001439EC4130000000001FFFF844160A1FFF1800C891FFFF000000000001650087170000000003FFFF870D2C73FFF0271C707FFFE000000001C0121FC073EC000000003FFFF1A0F1843FFC98E0034FFFF000000000181713F8233B0000000007FFFF000BC14FFF0E430323FFFE0000000003074BFF802238000000007FFFE3A6D4F87FE34990067FFF800000000100E480025204000000000FFFFE3665069FF8C020C01FFFF000000000001A718654408000000000FFFFC3070619FF8B00BCD3FFFC00000000050305E1E8004E00",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y27_N0
\imRead|altsyncram_component|auto_generated|ram_block1a66\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0E3933FCC05FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808C1DD89202BC28181FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF011824EA06800A1662203FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC11C43038C2313826BDC82FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81119C19C1C0501028BA7207FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE09000A000100D270C386E503FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0793C0871C28000C0C6115B81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE840818098119903098C47808A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2940002163002CC2230C4006D07FFFFFFFFFFFFFFFFFFFFFFFFFFFFE1430046318411",
	mem_init2 => X"030422210028E83FFFFFFFFFFFFFFFFFFFFFFFFFFFF0A589846024138800424C5000AD07FFFFFFFFFFFFFFFFFFFFFFFFFFF05118C9C60D01132D1180C40C315C1FFFFFFFFFFFFFFFFFFFFFFFFFF83E7B080040B80B80826810C16234A0FFFFFFFFFFFFFFFFFFFFFFFFFF013120F0360A0964008F807100C7240FFFFFFFFFFFFFFFFFFFFFFFFF0380E0D823413F046F60814C700049D0FFFFFFFFFFFFFFFFFFFFFFFFE2808B01022A2583CBF50E28C02004A087FFFFFFFFFFFFFFFFFFFFFFE0280A491C8701025AA848582309D84108FFFFFFFFFFFFFFFFFFFFFFFC5628D61101678000010401AE200808B503FFFFFFFFFFFFFFFFFFFFFE090E09100327F3C002",
	mem_init1 => X"34C00CC50806043C3FFFFFFFFFFFFFFFFFFFFF0AC3380902C0F07800071C00793084000C07FFFFFFFFFFFFFFFFFFFFE32E28814F7A82000000018EE43E01A182C87FFFFFFFFFFFFFFFFFFFF043CD621731CC007001F0019D8B0C281CD923FFFFFFFFFFFFFFFFFFF862511442E0C806FFFFFFCC0360404ACD8A423FFFFFFFFFFFFFFFFFFE1000974C94101FFFFFFFFFE405764440F023C1FFFFFFFFFFFFFFFFFFC2842D80C71027FFFFFFFFFFD01280A068463C1FFFFFFFFFFFFFFFFFF0E3870C07282FFFFFFFFFFFFFA04C6E09180AC1FFFFFFFFFFFFFFFFFCE8B06084840FFFFFFFFFFFFFFE824A5171C1041FFFFFFFFFFFFFFFFE361C0001F01FFFFFFFFFFF",
	mem_init0 => X"FFFFFA0E108A114001FFFFFFFFFFFFFFFF8C205C53DC07FFFFFFFFFFFFFFFFF041F60006081FFFFFFFFFFFFFFFE379260F0C03FFFFFFFF604FFFFFFF0238802C2081FFFFFFFFFFFFFFF8E941A04541FFFFFFFF8000DFFFFFF80CC40862001FFFFFFFFFFFFFFE201A169860FFFFFFFE800000BFFFFFD04781C20081FFFFFFFFFFFFFF8D01E44F80FFFFFFFE00000002FFFFFE0A4F59321C3FFFFFFFFFFFFFE3001841BC7FFFFFFE0031E0800BFFFFF05640F10003FFFFFFFFFFFFF8D00180A50FFFFFFE806603F2001FFFFF81350B209C3FFFFFFFFFFFFF341A1C080FFFFFFF402F4781A801FFFFFE30309008E7FFFFFFFFFFFFC905A08121FFFFFFC027900059",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a66_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a66_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y26_N6
\imRead|altsyncram_component|auto_generated|mux2|_~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~26_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead|altsyncram_component|auto_generated|ram_block1a66~portadataout\))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\imRead|altsyncram_component|auto_generated|ram_block1a54~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a54~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a66~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~26_combout\);

-- Location: LCCOMB_X52_Y26_N8
\imRead|altsyncram_component|auto_generated|mux2|_~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~27_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead|altsyncram_component|auto_generated|mux2|_~26_combout\ & 
-- ((\imRead|altsyncram_component|auto_generated|ram_block1a90~portadataout\))) # (!\imRead|altsyncram_component|auto_generated|mux2|_~26_combout\ & (\imRead|altsyncram_component|auto_generated|ram_block1a78~portadataout\)))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead|altsyncram_component|auto_generated|mux2|_~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a78~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|ram_block1a90~portadataout\,
	datac => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \imRead|altsyncram_component|auto_generated|mux2|_~26_combout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~27_combout\);

-- Location: LCCOMB_X52_Y26_N28
\g~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g~1_combout\ = (\process_0~13_combout\ & ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\imRead|altsyncram_component|auto_generated|mux2|_~27_combout\))) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- (\imRead|altsyncram_component|auto_generated|mux2|_~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|mux2|_~29_combout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datac => \imRead|altsyncram_component|auto_generated|mux2|_~27_combout\,
	datad => \process_0~13_combout\,
	combout => \g~1_combout\);

-- Location: FF_X52_Y26_N29
\g[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \g~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g[2]~reg0_q\);

-- Location: M9K_X5_Y17_N0
\imRead|altsyncram_component|auto_generated|ram_block1a79\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFE00003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000FFFFFFE0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800FFFFFFFFFF800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF803FFFE",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a79_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a79_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y5_N0
\imRead|altsyncram_component|auto_generated|ram_block1a91\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a91_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a91_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y11_N0
\imRead|altsyncram_component|auto_generated|ram_block1a55\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"8007FFFFE1FF1E1F1C3FFFFFFFFFFFF1FFFF0BF0FFFFFFC00FC03F80FC003FFFFE0FF187F1C7FFFFFFFFFFFC7FFFF0FC3FFFFFE007E0FFFF83C001FFFFF0FF01FF1C7FFFFFFFFFFF1E7FFF3F1FFFFFF003E0FFC7FE1C001FFFFF0FF07FE1C7FFFFFFFFFFC787FFFFC7FFFFFC0078FE0003F0E000FFFFF0FF1FFE1C7FFFFFFFFFF0F83FFFE1FFFFFE00007E03F80F8E000FFFFF87F7FF878FFFFFFFFFFE3F83FFF87FFFFF00003E0FFFF87C00007FFFF87FFFE1F8FFFFFFFFFF8FF83E7E1FFFFFC0000F0FC007E3C00007FFFF87FFF87F8FFFFFFFFFE3FFC38FC7FFFFE000078F80001F1C00003FFFF87FFC1FF0FFFFFFFFF87FFC03F1FFFFF80000C7C1FFF078",
	mem_init2 => X"C00003FFFF87FF07FF1FFFFFFFFF1FFFC0FC7FFFFC000003E1FFFFC38C00003FFFFC7FC1FFF1FFFFFFFFC7C3FC1F1FFFFF000001F1FF03FE1C000003FFFFC7F07FE71FFFFFFFF1F03FC7C7FFFFC0000078FE000FF1C000003FFFFC7E3FFCE3FFFFFFFE3C01F1F1FFFFF000000C3F1FF87F1C000003FFFFC7EFFF0E3FFFFFFF8F1C0C7C3FFFFC0000001F8FFFE3F88000003FFFFC7FFFE3E7FFFFFFE3E3E08F8FFFFE00000007E7FFFF1F80000003FFFF87FFF87C7FFFFFFC78FE0BE3FFFF80000003F3FFFFF1F80000003FFFF87FE11FC7FFFFFF1F1FE0F8FFFFE0000000FCFFFFFF9F80000003FFFF8FF803F8FFFFFFE3E1FF3E3FFFF80000003F7FFFFFF9F8",
	mem_init1 => X"0000003FFFF8FE00FF8FFFFFF8FE1FFFC7FFFE0000000FDFFFFFFF8F80000007FFFF8FC71E39FFFFFF1FE0FFF1FFFF80000001F7FFFFFFF8F00000007FFFF8F8F1071FFFFFC79E0FFC7FFFF00000003CFFFFFFFF8E00000007FFFF1F8E00F1FFFFF9E0E07F8FFFFC000000033FFFFFFFF8C00000007FFFF1F1E07E3FFFFE3C0707E3FFFF000000000FFFFFFFFF8000000007FFFF1F103FE3FFFFCFE030F8FFFFC000000003FFFFFFFFF800000000FFFFF1E01EFC7FFFF1FF019F1FFFF0000000007FFFFFFFFF800000000FFFFE3E0603C7FFFE7FF00FC7FFFE000000001FFFFFFFFFF000000000FFFFE3E30038FFFF8FFC41F8FFFF8000000007FFFFFFFFFF00",
	mem_init0 => X"0000001FFFFC7CC0038FFFF3FC0E3E3FFFE000000000FFFFFFFFFFE000000001FFFFC7F0FC71FFFC7803CFC7FFFC000000003FFFFE1FFFFE000000003FFFFCFE3FC73FFF8F0071F1FFFF0000000007FFFE007FFFC000000003FFFF8FC7F8E3FFE3C08E3E3FFFC000000000FFFF0007FFF8000000007FFFF8F9FF1E7FFC7FF18F8FFFF8000000003FFFCFFE7FFF8000000007FFFF1F3FE3C7FF9FFE01F1FFFE0000000007FFF00047FFF000000000FFFFF1E3F87CFFE3C7E07C7FFFC000000000FFFF0001FFFF000000000FFFFE3C3E1F8FFC781F3F8FFFF0000000003FFFFE79FBFFE000000001FFFFE7C003F1FF1E007FE3FFFE0000000007FFE3FFFC7FFC00",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y14_N0
\imRead|altsyncram_component|auto_generated|ram_block1a67\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFC7FFFF003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FE7F1FC01F3FFE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFD87E3F001E3FFFC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFF18FC7E1E1C3C7FF01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FE3E3000FC7E3878C7FC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07FC3C7003F83C20718FFE07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE03E183CE007F03C40E31CFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03F03038E38FE078818E30FFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81F807031C63FFFF11118E1FFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FE1C6023C47F",
	mem_init2 => X"FFE26231C3C7F07FFFFFFFFFFFFFFFFFFFFFFFFFFFE07FC78C42788FF1F88C063078DF83FFFFFFFFFFFFFFFFFFFFFFFFFFF83FF1F08C0783FE1E11C18E0718F83FFFFFFFFFFFFFFFFFFFFFFFFFFC1FFE3F19C0F07FE006383188C71FC1FFFFFFFFFFFFFFFFFFFFFFFFFE0FFFC7E31C1F0FFE01C7063118E3FE1FFFFFFFFFFFFFFFFFFFFFFFFF87FFFC7E23C3E1FFF0F9F086233C7FE0FFFFFFFFFFFFFFFFFFFFFFFFC1E07F8FC47C7FFFFFFFFE118E478F1F0FFFFFFFFFFFFFFFFFFFFFFFF0F007F0F84FFFFFFFFFFFE631C0F1E3F07FFFFFFFFFFFFFFFFFFFFFF83C107F0E08FFFFFFFFFFFFC47830384F87FFFFFFFFFFFFFFFFFFFFFE1F8F87E001FFFFFFFF",
	mem_init1 => X"FFFFFF8F040318F87FFFFFFFFFFFFFFFFFFFFF87F1F0FE01FFFF800000FFFFFFE108071FC3FFFFFFFFFFFFFFFFFFFFC1FC7F1FF0FFFC000000007FFFFC23C0E3FC3FFFFFFFFFFFFFFFFFFFF0FF87F1FFFFF0000FFE00007FFFC47E387FC3FFFFFFFFFFFFFFFFFFFC3C3FFE3FFFF001FFFFFFF000FFFF878707FC3FFFFFFFFFFFFFFFFFFF0E03FFC7FFE007FFFFFFFFF803FFF831E079E3FFFFFFFFFFFFFFFFFF87803FF9FFE01FFFFFFFFFFFE00FFFC03C001E3FFFFFFFFFFFFFFFFFE1E1C3FE3FF01FFFFFFFFFFFFFC03FFC0F8C05E3FFFFFFFFFFFFFFFFF87C7C380FF81FFFFFFFFFFFFFFF01FFE3E3831E3FFFFFFFFFFFFFFFFE1F8FC603FC0FFFFFFFFFFF",
	mem_init0 => X"FFFFFC07FF7C60F1E3FFFFFFFFFFFFFFFF87F1F860FE0FFFFFFFFFFFFFFFFFE03FFF887F1E3FFFFFFFFFFFFFFFE1CE1F87FF07FFFFFFFF803FFFFFFF81FFF01FF1E3FFFFFFFFFFFFFFF870E3F8FF83FFFFFFFF00003FFFFFFC1FFE079F1E3FFFFFFFFFFFFFFE1E0C3F0FC1FFFFFFFF0000007FFFFFE0FFC3F1F1E3FFFFFFFFFFFFFF8780C3F3F07FFFFFFF00000001FFFFFF07FCFE1E1E3FFFFFFFFFFFFFE1E30C3FF83FFFFFFF000FFF0007FFFFF83FFFE187E3FFFFFFFFFFFFF878F0C7FE1FFFFFFF001FFFFC003FFFFFC3FF9E01CE3FFFFFFFFFFFFE1E3F087F87FFFFFF801FF87FF000FFFFFC1FE1E071C3FFFFFFFFFFFF87CFF08FC3FFFFFF801FE0003F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a67_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a67_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y17_N14
\imRead|altsyncram_component|auto_generated|mux2|_~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~30_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead|altsyncram_component|auto_generated|ram_block1a67~portadataout\) # 
-- (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\imRead|altsyncram_component|auto_generated|ram_block1a55~portadataout\ & 
-- ((!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a55~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a67~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~30_combout\);

-- Location: LCCOMB_X52_Y17_N16
\imRead|altsyncram_component|auto_generated|mux2|_~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~31_combout\ = (\imRead|altsyncram_component|auto_generated|mux2|_~30_combout\ & (((\imRead|altsyncram_component|auto_generated|ram_block1a91~portadataout\) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead|altsyncram_component|auto_generated|mux2|_~30_combout\ & (\imRead|altsyncram_component|auto_generated|ram_block1a79~portadataout\ & 
-- ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a79~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|ram_block1a91~portadataout\,
	datac => \imRead|altsyncram_component|auto_generated|mux2|_~30_combout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~31_combout\);

-- Location: M9K_X53_Y12_N0
\imRead|altsyncram_component|auto_generated|ram_block1a43\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000001FFFFC7801FF3FE3C401FC7FFF8000000000FFFC00000FFF8000000003FFFFCFC07FE3FCF9E01F9FFFF0000000001FFF9C3C23FFF8000000003FFFF8FF7FFE7F1E3C43E07FFC0000000007FFF9FFFCFFFF0000000007FFFF1FFCFFC7E3C71C7C07FF8000000000FFFF8F0F3FFFE0000000007FFFE3E39FF8FCF9E39F107FE0000000001FFFFC000FFFFC000000000FFFF03C71FF8F1E3CE3E243FC0000000003FFFFC387FFFF8000000001FFFC07CE3FF1E3C71C7CCC1F0000000000FFFFFFFFFFFFF8000000001FFE00F8E38F3CFFE31F3BC1E0000000001FFFFFFFFFFFFF0000000003FF840F1C01E39FFFE3E77E380000000003FFFFFC3FFFFFE000",
	mem_init2 => X"0000003FC1D9F3003C63FFFC7DCFC700000000007FFFFF03FFFFFC0000000007F0FBBE003FCC7FFF9FB3F9E0000000002FFFFF0003FFFF8000000000FE3F33C03FF88FFFFFE47F38000000000DFFFFC0E03FFFF0000000000FE7F7783FFF11FFFFFC1FC700000000003FFFF01C07FFFE4000000001FCFE6FFFFFF23FFFFF03F8E00000000007FFFE3FF8FFFFE8000000003F8FCFFFFFFE67FFFFE07F180000000003FFFFC7FF3FFFFC0000000007F1FC1FFFFFC47FFFFC1FE700000000007FFFFCFFCFFFFFC0000000007F3F83FFFFF8C7FFFF83F8E00000000007FFFFCFF9FFFFF8000000000FE7F87FFFFF1C3FFFE07F1C0000000000FFFFFDFF7FFFFF0000",
	mem_init1 => X"000001FC7F0FFFFFE3C3FFE01FE70000000000DFFFFFFFFFFFFFC0000000001F8FE1FFFFFC7C060003F8E0000000001BFFFFFFFFFFFFFB0000000003F9FE3FFFFF9FE000007F1C0000C0000C7FFFFFFFFFFFFF60000C00007F1FC3FFFFE3FF00003FE78000380001CFFF00FFFE07FFE40001C0000FE3F80FFFF87FFF803FF8E00007800039FF801FFF801FFC6000780000FE7F803FFE1FFFE07FFF1C0000F800033FE3FFFFFFF1FF8C000F00001FC7FC000007FFF87FFFC780000F000007F9C07FFF079FF38003C00003F8FFF00003FFFF1FFFF8F00000F00000FFE30FFFC03FFE6000F000007F9FFFF003FFFFC7FFFE3C00001E00001FF803FFFC71FFC0001E",
	mem_init0 => X"00000FF1FFFF8FFFFFF8FFFFC78000C1E00001FE01DFFEC01FF80007830000FF3FFFF8FFFF8E3FFFF1F0001C3C00003FFFE3FFC603FF0000F0E0001FE3FFFF1FFFE047FFFE3E000383C00007FFF0FFFC3FFFE0003C1C0003FE7FFFF1E7F8803FFF8FC00038780000FF007FFFE00FFC00078700007FC7FFFE307E3C01FFE3F800070780001FF87FFFFF03FF8001E0E0000FFC7FFFC007C7E00FFC7F006070F00003FFFFFFFFFFFFF0003C381801FF8FFFE00879FF007F1FE00C0F0F00007FFFFFFFFFFFFE000F0F03003FF8FFF0078F3FF807C7FC01C0E1E0000FFFFFFFFFFFFFC001E1C0E007FF8FF807F8E3FFE0F0FF801C1E1E0001FFFFFFFFFFFFF0007878",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y17_N0
\imRead|altsyncram_component|auto_generated|ram_block1a7\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFE00001B6BF31FFC47CFCFCFFFE31F2DB00001FFFFFFFFFFFFFFFFFFFFC00000697FFB1FFFF8F3FFFFCC7FE5B000003FFFFFFFFFFFFFFFFFFFF8018009AFCFF3FFFF9E7FBF71FFFCB2006007FFFFFFFFFFFFFFFFFFFF00F00025FD8FF007FBDFF007FF9F92000F00FFFFFFFFFFFFFFFFFFFFE07E0004BFF8FFA3FF7BFFFFFC3FF24001F81FFFFFFFFFFFFFFFFFFFFC1F000017FFC3FFFFEF7FFFFE3FFE40000F83FFFFFFFFFFFFFFFFFFFF87800002FFFE6103FDEFF8219FFFC80000787FFFFFFFFFFFFFFFFFFFE1E000001FFFFEF0FFBDFFFFFFFFF80000078FFFFFFFFFFFFFFFFFFFFC10200003FFFFFFFFF7BFFFFFFFFF00001021FFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFF801E000007FFFFFFFEF7FFFFFFFE000007803FFFFFFFFFFFFFFFFFFFF8079800000FFFFFFFDCFFFFFFFC0000067807FFFFFFFFFFFFFFFFFFFE01F38000003FFFFFF99FFFFFFC000001CF80FFFFFFFFFFFFFFFFFFFFC0F8F00000007FFFFF03FFFFF80000003C7C1FFFFFFFFFFFFFFFFFFFF83E3E10000001FFFF801FFFF8000000C7C7C3FFFFFFFFFFFFFFFFFFFF0F878700000007FF80007FF80000003878787FFFFFFFFFFFFFFFFFFFE1E1F1E30000000000000000000000C78F878FFFFFFFFFFFFFFFFFFFFC103C3C604000000000000000000818F0F021FFFFFFFFFFFFFFFFFFFF800F0F1C18000000000000000001838F0F003FFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFF003E3E3870400000000000000083871F1F007FFFFFFFFFFFFFFFFFFFE007878E0E1C000000C3000000387071E1E00FFFFFFFFFFFFFFFFFFFFC01F1F3C3838E00001CE00001C3070F3E1E01FFFFFFFFFFFFFFFFFFFF803C3C70F0E1C303030C0C0C3870F0E3C3C03FFFFFFFFFFFFFFFFFFFF0070F1E1C183060E061C1C183860E1E3C3807FFFFFFFFFFFFFFFFFFFE00E3E387070E1C1C1C38383870E0E1C7C700FFFFFFFFFFFFFFFFFFFFC0007860E1C1838303870307060E1C1C78001FFFFFFFFFFFFFFFFFFFF8000F0C1838707060000060E0E0C1830F0003FFFFFFFFFFFFFFFFFFFF0001C002000E0C000000000C0C001000E0007FFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFE000100000000000000000000000000008000FFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000FFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y18_N0
\imRead|altsyncram_component|auto_generated|ram_block1a31\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"3800FFF1FC03FF1C1FFE1E3FF00381C3C0003FFFFFFFFFFFFE000F0E07001FFF1F01FFE3C0FFC38FFE00383C3C0003FFFFFFFFFFFFC003C3C1C003FFF1E0FFF8FE07F043FFC003838780007FFFFFFFFFFFF800787030007FFF1C1FFC1FF03E00FFF800703878000FFFFFFFFFFFFE001E1C0E000FFFF183FE07FF81C03FFF0407078F0000FFFFFFFFFFFFC003C7838081FFFF107F07FFFC080FFFE0C0E070F0000FFFFFFFFFFFF000F0E060303FFFF00F03FFFFE003FFFC0C0E0F1E0001FFFFFFFFFFFE001E3C1C0C07FFFF0181FFFFFF81FFFF81C0E0E1E0001FFFFFFFFFFF800787070380FFFFF000FFFFFFFC7FFFE0181C0E3C0001FFFFFFFFFFE000F1C0E0",
	mem_init2 => X"601FFFFF007FFFFFFFFFFFFC0181C1C3C0001FFFFFFFFFF8003C38381803FFFFF03FFFFFFFFFFFFF80181C1C780001FFFFFFFFFE00078E0607007FFFFF9FFFFFFFFFFFFFF0030383C780001FFFFFFFFF8001E1C1C0C00FFFFFFFFFFFFFFFFFFFFE00303838F80600FFFFFFFFC0007C70703001FFFFFFFFFFFFFFFFFFFFC20303078F00E00FFFFFFFF00C0F1E0E0C043FFFFFFFFFFFFFFFFFFFF8E0707070F01E003FFFFFF00383C3838381C7FFFFFFFFFFFFFFFFFFFF0C06070F1E02F000FFFFF801F078F0E06030FFFFFFFFFFFFFFFFFFFFE0C060E0E1E01F0041FFF0007A1E1C1C180C1FFFFFFFFFFFFFFFFFFFFC0C0E0E0E3C00F8008002003F03C7070703",
	mem_init1 => X"03FFFFFFFFFFFFFFFFFFFF80C0C0C1E3C017800332001F80F1E0C0C0C07FFFFFFFFFFFFFFFFFFFF01C0C1C1C7800BC0000000FD01E383830380FFFFFFFFFFFFFFFFFFFFE0180C183870005E000000FE80387060C0601FFFFFFFFFFFFFFFFFFFFC0181810000000AF80000FF40000008181803FFFFFFFFFFFFFFFFFFFF800000000000004FE0007F200000000000007FFFFFFFFFFFFFFFFFFFF0000000000000035C000DA00000000000000FFFFFFFFFFFFFFFFFFFFE38000000000000090001B000000000000071FFFFFFFFFFFFFFFFFFFFC7800000000000002088100000000000001E3FFFFFFFFFFFFFFFFFFFF87C0000000000000033000000000000000F8",
	mem_init0 => X"7FFFFFFFFFFFFFFFFFFFF03C00000C00FFBFC07661E83F033008003C0FFFFFFFFFFFFFFFFFFFFE03C0FFFFFFFFFFF8601C3FFFFFFFFFFE0F01FFFFFFFFFFFFFFFFFFFFC01C1FF8000000000E030000000004FFC3803FFFFFFFFFFFFFFFFFFFF80003E00003FFFFC0000C7F80000000F80007FFFFFFFFFFFFFFFFFFFF00007F1FFFC000F801E38FFFFFFFFC7F0000FFFFFFFFFFFFFFFFFFFFE3800DF8000000061C7C70E00000003F60031FFFFFFFFFFFFFFFFFFFFC7801BFFC000000039FC0000000007FEC01E3FFFFFFFFFFFFFFFFFFFF87C037FFFFF800E003F8E07007FFFFFD80F87FFFFFFFFFFFFFFFFFFFF03E06DFC003FC07C6633DF81FE003FDB07C0F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y17_N22
\imRead|altsyncram_component|auto_generated|mux2|_~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~32_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead|altsyncram_component|auto_generated|ram_block1a31~portadataout\))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\imRead|altsyncram_component|auto_generated|ram_block1a7~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a7~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a31~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~32_combout\);

-- Location: M9K_X73_Y9_N0
\imRead|altsyncram_component|auto_generated|ram_block1a19\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFE01E0D2FC0003FC01E440007F00007C961E01FFFFFFFFFFFFFFFFFFFFC00C1B4FFFFC07F01000007F01FFFF92C3003FFFFFFFFFFFFFFFFFFFF8000369700FFC0FC080387E07FE01F2D80007FFFFFFFFFFFFFFFFFFFF00006D240007F8003807000FF000125B0000FFFFFFFFFFFFFFFFFFFFE3E00DA4830003E066660C1F8003824B601F1FFFFFFFFFFFFFFFFFFFFC7F81B493FFC003F80CC1FE007FFC496C1FE3FFFFFFFFFFFFFFFFFFFF81FC3692FFFFF00001980003FFFFC92D8FE07FFFFFFFFFFFFFFFFFFFF00706D25FDFFFFC0000003FFFFFF925B0E00FFFFFFFFFFFFFFFFFFFFE0000DA4BFA0FFFFFC00FFFFFF05F24B60001FF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFC0001B497FFF87FFF801FFFF860FE496C0003FFFFFFFFFFFFFFFFFFFF8F803692FFFFFC63F003F0E3FFFFC92D807C7FFFFFFFFFFFFFFFFFFFF1FE06D25FE3FFFE3E007FFFFFF1F925A03F8FFFFFFFFFFFFFFFFFFFFE07E0DA4BFFE1BFFFC28FFFF18FFF24B61F81FFFFFFFFFFFFFFFFFFFFC01C1B497FFFF10FF8D9F8C63FFFE496C3803FFFFFFFFFFFFFFFFFFFF80003692FE07FFB1F31BFFFFFE27C92D00007FFFFFFFFFFFFFFFFFFFF00006D25FFF8C7FFE007FFF9C47F925B0000FFFFFFFFFFFFFFFFFFFFE0000DA4BFDFF8CE7C00FC631FFFF24B40001FFFFFFFFFFFFFFFFFFFFC01C1B497F01FF887851FDEFFE03E49683803FFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFF81F81692FFFF9FFFF1B3FFE71C0FC92D07E07FFFFFFFFFFFFFFFFFFFF0FE02D25FC3FF9CBE627E0C7FFFF925A07F0FFFFFFFFFFFFFFFFFFFFE3E005A4BFF60FF97C00FFFFF0C3F24B401F1FFFFFFFFFFFFFFFFFFFFC6000B497FFFB9FFF801FFFC65FFE49680063FFFFFFFFFFFFFFFFFFFF80001692FE70F391F003F11BF1EFC96D00007FFFFFFFFFFFFFFFFFFFF00102D25FFF8FF23E147FFFFC38F92DA0800FFFFFFFFFFFFFFFFFFFFE01F05A4BFFFF9BFFC6CFFE31FFFF25B43E01FFFFFFFFFFFFFFFFFFFFC1FC0B497F43FF19F889FCC7FF97E4B683F83FFFFFFFFFFFFFFFFFFFF87C01692FFE27FF3F003FFFFC82FC96D00F87FFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFF0E002D25FFFE7FFFE007FFE337FF92DA0070FFFFFFFFFFFFFFFFFFFFE00005A4BF9FFC647C78FC0C7FFFF25B40001FFFFFFFFFFFFFFFFFFFFC0000B697F61FFCCF9F9FFFFFE63E4B680003FFFFFFFFFFFFFFFFFFFF800816D2FFF1FFFFF7FBFFFFF0FFC96D04007FFFFFFFFFFFFFFFFFFFF00702DA5FFFF0FFFCFF7E0307FFF92DA0E00FFFFFFFFFFFFFFFFFFFFE03C05B4BF0FFFC079FE7C07FFFFF25B40F01FFFFFFFFFFFFFFFFFFFFC1E00B697E19FFFFF3FCFFFFFF83E5B6807C3FFFFFFFFFFFFFFFFFFFF870016DAFFF87FFFE7F9FFFDC3FFC96D00787FFFFFFFFFFFFFFFFFFFF08000DA5F8FFC43FEFF7E433BFFF92D80010FFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y17_N8
\imRead|altsyncram_component|auto_generated|mux2|_~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~33_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead|altsyncram_component|auto_generated|mux2|_~32_combout\ & 
-- (\imRead|altsyncram_component|auto_generated|ram_block1a43~portadataout\)) # (!\imRead|altsyncram_component|auto_generated|mux2|_~32_combout\ & ((\imRead|altsyncram_component|auto_generated|ram_block1a19~portadataout\))))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead|altsyncram_component|auto_generated|mux2|_~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a43~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead|altsyncram_component|auto_generated|mux2|_~32_combout\,
	datad => \imRead|altsyncram_component|auto_generated|ram_block1a19~portadataout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~33_combout\);

-- Location: LCCOMB_X52_Y17_N6
\g~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g~2_combout\ = (\process_0~13_combout\ & ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\imRead|altsyncram_component|auto_generated|mux2|_~31_combout\)) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- ((\imRead|altsyncram_component|auto_generated|mux2|_~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datab => \imRead|altsyncram_component|auto_generated|mux2|_~31_combout\,
	datac => \imRead|altsyncram_component|auto_generated|mux2|_~33_combout\,
	datad => \process_0~13_combout\,
	combout => \g~2_combout\);

-- Location: FF_X52_Y17_N7
\g[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \g~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g[3]~reg0_q\);

-- Location: M9K_X5_Y21_N0
\imRead|altsyncram_component|auto_generated|ram_block1a24\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"05937FF53D13B07C5B3C867FEE0B1D2881F9D0CFFFFFFFFE48FF6E42593E6FFF93257703E4F3392F7D663045BF3F3B08FFFFFFFFC9F7E09B3FB40DFFECF0AAFB7CC33E6FFFB437C2F477E2759FFFFFFFFC0CF5B36B7141BFFFEDE1CF3FE53F8C7FFD38FBF44BF4219FFFFFFFFFE79C62136FF337FFF6348FDFFFD9A2BFFECC4935A5BA8923DFFFFFFFE8DE51B4C1D6C6FFFF529347FEFCD17FFFDC351ED127528A77FFFFFFFE39C0B1570294DFFF773DFDFF9FF1A3FDF97C7141FB3E747E7FFFFFFFD062A81DB5569BFFFE21A1FFFFFF4FFFFFC9CA20EE427F360FFFFFFFF368F55C3CB39B7FFEFC3BEFFFFEF9FDFFB85DFC4BB3442871FFFFFFFFCB19BF7BC8",
	mem_init2 => X"696FFFDF223FFFFE3FDF7FF52AF552401CB3C0FFFFFFFFC9A74719E410ADFFFDFC5FF9FFFFBFFC7FD25FFA7021E7037FFFFFFFF920D6240E2E3DBFFFFFBDF7FF3F9FBFCFFE7C2A15511C6522F3FFFFFD0BDCBC82E041F7FFFFFF7FFFFFFFFFFFFE7C6C8D6881C95887D9ED696178395EB1CFE7FFFFFFFFFFFFFFFFFFFFDD51338B5B6BB65E5BA8D0A498599FDF7F1BB7FFFFFFFFFFFFFFFFFFFF210EC30AC9149BD07FDAC3CD1B0B11DCE556FFFFFFFFFFFFFFFFFFFFF1EA3D2D22E2612D612732259377462D47E6FFFFFFFFFFFFFFFFFFFFFE502E13E358F0D0E93DB8D1C2D9F35790918FFFFFFFFFFFFFFFFFFFFE71AD76095D3723E98DC6AFCC8087402302",
	mem_init1 => X"29FFFFFFFFFFFFFFFFFFFFCCD84597480ECC6D6F225334E898320F3CB73FFFFFFFFFFFFFFFFFFFF9EB160A24958C3508EB79B9D0A3B7D0E7C387FFFFFFFFFFFFFFFFFFEEDE920C11ADCFC7789728287EB461687C4F44FFFFFFFFFFFFFFFFFFFDF30AEFA18A61FE13E0571A11040087B2EEB91FFFFFFFFFFFFFFFFFFF9BC1870F0CC50FA0135EB11FF0AB1BC6BF9A83FFFFFFFFFFFFFFFFFFF19C617682003F191667CC5E8A1DBA175959E97FFFFFFFFFFFFFFFFFFFE8E09D7B8E5786796D4BBB1089FE81F6F6154FFFFFFFFFFFFFFFFFFFFD7F2B1F44B23076B98097D9901C0C3C4DE309FFFFFFFFFFFFFFFFFFFFE824C62EF42FC139A975314B52C7B8A20811",
	mem_init0 => X"3FFFFFFFFFFFFFFFFFFFF53E1E0A2094F8C01338D7155012D3B8004F77FFFFFFFFFFFFFFFFFFFE9A2DF9A3FFC08BF80C7B5A48001B6A493149BFFFFFFFFFFFFFFFFFFFDB9A124C3DE1F1DB9531250FF07F1DD08C573FFFFFFFFFFFFFFFFFFFE94F65E3DF9207B12C1E44FEA31800195E2133FFFFFFFFFFFFFFFFFFFD36A4B08BF0630C2DEFE89AB7810CF82B5BF7FFFFFFFFFFFFFFFFFFFE23530DCC0C3981B17C1336E0FDFF6252100E2FFFFFFFFFFFFFFFFFFFCEDD213310EBFA169916753019FEF357C3D6E1FFFFFFFFFFFFFFFFFFFFD6543092479F188052A3F0F41D78CCB558917FFFFFFFFFFFFFFFFFFFFB7AE3CCF312967DEE81C56A8FCE06FD1BDA4F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y32_N0
\imRead|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFA55C83AA9C9F656F9753F9E83A0E3F77A2EFFFFFFFFFFFFFFFFFFFFFD48D1F0152DE0ABDDD717F9B042DCFC14F19FFFFFFFFFFFFFFFFFFFFF6E8A3D9256FA32B2EE135CF0AD239B59FE83FFFFFFFFFFFFFFFFFFFFECF78D6FCB2CD122ECC0A2F390F0624B098D7FFFFFFFFFFFFFFFFFFFFFEDFADD0904E7438F102E4158201D290D5A91FFFFFFFFFFFFFFFFFFFF9F0002632A3E3DEF42813BC527120B39C7C47FFFFFFFFFFFFFFFFFFFF651BE1C4F82BF26A7100A8410F319DD27218FFFFFFFFFFFFFFFFFFFFEA3D23F9888254B4D338916950B2C6E4D4CA5FFFFFFFFFFFFFFFFFFFFCCD68FDEF5F8ECF7CC41FDDCE94EF838AD817FFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFA6FE0369FFE19ECE7885EC1BD859FC482BF4FFFFFFFFFFFFFFFFFFFF9E97FDB2F19137C2854EBC7DE14B5EDFC88F8FFFFFFFFFFFFFFFFFFFF2685EAC3B11B22D432DE7F1EB10269CD20510FFFFFFFFFFFFFFFFFFFEDF21E94F3DB53C7E09BC81C19F0E0CDBBAA93FFFFFFFFFFFFFFFFFFFFEB19A3CE3F63FCFA3AF56463E0DD9C0F5B807FFFFFFFFFFFFFFFFFFFF2E2487ACADE14860B9E2E2E1BEF0F3C0FD94FFFFFFFFFFFFFFFFFFFFE7E127A7CD96BAA14540CD734C622D78D0E65FFFFFFFFFFFFFFFFFFFFF46D3AEB6E3D80A0040C318DAE272CDFB81D1FFFFFFFFFFFFFFFFFFFDECFD5FC9E84B83E7A13C180CC896B66310FD7FFFFFFFF",
	mem_init1 => X"FFFFFFFFFFF909A3C06F685C081E719DECF9CD4631D98F92FFFFFFFFFFFFFFFFFFFF24C897F51F9AC7AAFC08606BE92B824B768F8FFFFFFFFFFFFFFFFFFFFEAB8DA33743CC8A74EA6DE35103F21B1895B9FFFFFFFFFFFFFFFFFFFFD47BA6A8B9BB4A43749ECB78CDC03F3AD8C77FFFFFFFFFFFFFFFFFFFFAA91096147CEB2A00D3C9AD6CAE86FD31A5AFFFFFFFFFFFFFFFFFFFFF4C4D38CB3F04EB426FC6D49AACF99F4F4685FFFFFFFFFFFFFFFFFFFFF1122D1E01DA1F41C805A40E427AC58F4DAEBFFFFFFFFFFFFFFFFFFFFE29FE5C84F2F21A49D0893B3444C6BA8637D7FFFFFFFFFFFFFFFFFFFFC1430426CE48FEF4C9FCE310FB5AE731C032FFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFF8898223FF08A28D5FBFE6838546B6EAFFBB5FFFFFFFFFFFFFFFFFFFFF79977E676A847FB97FC0F9FF1E18F81E567BFFFFFFFFFFFFFFFFFFFFFFFFFF1F61DF1063EDA07078E3C367F3121F3FFFFFFFFFFFFFFFFFFFFFEF000607784800600006061E00DE059DC36FFFFFFFFFFFFFFFFFFFFF7F386323E1DCFF3EFC3F6F7E3FC531C03FF5FFFFFFFFFFFFFFFFFFFFFDFF1C40787A91E4D986666FC3F88E1807FE9FFFFFFFFFFFFFFFFFFFFCDFFFD01F1BD21C3E3FCC0FFFFCF3E7CFFFF7FFFFFFFFFFFFFFFFFFFFA1FFBE179F1B8F8785BFA7E5FE15FFFF3F26FFFFFFFFFFFFFFFFFFFFE83FC312F1E3F1B0E0A3F4F4B0D887FFC1C4DFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y23_N10
\imRead|altsyncram_component|auto_generated|mux2|_~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~36_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\imRead|altsyncram_component|auto_generated|ram_block1a24~portadataout\)) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead|altsyncram_component|auto_generated|ram_block1a0~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a24~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~36_combout\);

-- Location: M9K_X33_Y24_N0
\imRead|altsyncram_component|auto_generated|ram_block1a36\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"7FFF813FFF7F91D9063FEAE862BC79FFB1FF1FFFC2B243B8444F6F9B8FFFFFF9FFC5DD65E7F3FA78DD84EFFFE7FFFFFFFA2A4A34494FAFFA71FFFCFF3FFCFB2178F33FF7C49123FBFFFFFFFFFF0149F431FF667C4E3FFF9FFFFFBF09ADD7176DC4843B8BDFBFFFFFFFE4293A976059DEB3C7FFF3F9FFFFC4A4953E7A7E2AE88BFFEFFFFFFFFCB5A4492486759478FFFE7E1FFFF613DCC96F9900F5CC97BB1FFFFFFFEDB4ABF13C7ED04E1FFFDFDAFFFA75227023F0B12D68B00FA3FFFFFFF8BE922B0E96E23E83FFFBFA3FFFCAFB48279FF8678E3955EC7FFFFFFF6FF245FD800A45C0FFFF7FF7FFFC5CE56AD69D5039142C3B2FFFFFFFF8DE6361BD89007A7F",
	mem_init2 => X"FFEFF73F98488EF17C71DC08C94F4709FFFFFFFDCFC4AA9719304EEFFFFDFE67F0CB8947EEA613322B3110E93FFFFFFF7AFA5A34FA613F4CFFFFBFC47FFAE853A6A8937248DEB7BA8FFFFFFFE04F4072FCEC2FC4BFFFF7F8EFFE6FC802C319CE6858827F3BFFFFFFFC75E899C529E7D853FFFEFE1FDD26021183B1A37F18C091C7FFFFFFFFA37D2423BB3CF325FFFFDFC15FC2FDCC7CBCA7EFFF1E843DDFFFFFFFF1CFA3B6713FDE4D2FFFFBF857F0F1AFEE9726EBFFF432E367C70E1F8693F4722C5BB1CDBFFC38FE094E33236F36E5838F625FE8F0E2F5A23116BF9E8B8322BE714F955F807DCCD4E4842F9A459260C2791D4FDF45B3A991A0E987B7CDDCF2",
	mem_init1 => X"C3F00FBEB06645C47FA54FE1ADA323CD834FAC8B7562BD85C477161E0F7C019F8E213F8C237E42E13765F4F0A2F1ED59DD5CC831ED4CE2B3C508003FFA3BA40DB8DFF06C31C59F1E6754712C8104767E6555842E787E00FF7F979A61577BFFF39924E3E3FC28BC1C67A8EB5FC7B570B40F17007FD7E3E55AE9177BFFB33D9A6C7F804F01C16D2557F19137F7E8E4900FFDFEFEC479D95FFFE95E24BD1FF417E09F846419CDF892FE260C1D07FF3EF2CD0E0887E3FA99EFFB23F61F392B6EE04A3679934E43EA55233FFBFEDBA72839987F64B4ACECFCD5C787CFD31C0EC80481CD8212B5FE7F7FEDDD14A8F3FFCFE19ADE3FF8F6527E449305E15B02E9BC4A5F",
	mem_init0 => X"CC07E7F577BA5FFEFCF5482C5FA7FC76427FBE8BE3E3E9DC9D3DCE42183079FF6E4FF6FFEB860BFD86F9F6A061FBE0300F948FD13DA68DCDEFC00F7FEFEDFBCFFFC32CBFE6FFF4D298EA0056018394E2E65CCB0DAE1A41E3FE4F71E9E7FC3B21FF2EBC98464941C739B88ADC2AC3F031B2A3B03D67E4D66AE37F14B27F17D49D01406A3FF7BB3443E0636ED4F25A5223FEF8194D1FB78CCF2655FF9D6FBE90A6792001FFFF181C71DB0B8E38F6EF868E8CFC737BBF98BFE6FAF553F4CFA667FFFFFFFF8C6A1997FA4CDEF058997FEE22C63F83FA03450E4C39F8E7FFFFFFFFB2D12C85E6C31BFF74936CC7E3E1B765FF4753B95C8FB9DCFFFFFFFFF262310128",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\);

-- Location: M9K_X5_Y25_N0
\imRead|altsyncram_component|auto_generated|ram_block1a12\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFF8E81EF0F04907333A953F7C91BF126A43C148FFFFFFFFFFFFFFFFFFFF44129145652A9C28219B3B1301FAE4FE536AFFFFFFFFFFFFFFFFFFFFE9D83DE861B27C361F2E15FD8F7C1AD746E6EFFFFFFFFFFFFFFFFFFFFF27C24D36903262599B73A9B6D408B660FC49FFFFFFFFFFFFFFFFFFFFE448D99004BF3100D93F725CF86D53DCF8E3FFFFFFFFFFFFFFFFFFFFFD4F6C12CF72660174D0886107791A648F7E6BFFFFFFFFFFFFFFFFFFFF47A3D61F803CE50983EF02129C3B417D1AC0FFFFFFFFFFFFFFFFFFFF9CFF2F825A157E9477F23DC683B9F0FE3AF26FFFFFFFFFFFFFFFFFFFE99FDD885CB5030FB8E88E8398B50709F5AE59BF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFF3464994A9CF402B0F4F6A73144708B7833B7FFFFFFFFFFFFFFFFFFFFF4E167294B2C5347B09C8806340915EE34A633FFFFFFFFFFFFFFFFFFFF509465216A39D6B86EE46FB75A100DC6B987FFFFFFFFFFFFFFFFFFFFFF69FCA4AC800FFBE77114B750B481B9594FDFFFFFFFFFFFFFFFFFFFF9C4DC15059FEC29B13AE7044E401C7721609EFFFFFFFFFFFFFFFFFFFFBF7F82A5BCC98E2933280D28DD9F86E2AEF7FFFFFFFFFFFFFFFFFFFFA4C6AAD5E5D30BE874E21F9F58D7F09C4DD4AFFFFFFFFFFFFFFFFFFFFCCA7E1B0C8CF14940E195A772660C1190994BFFFFFFFFFFFFFFFFFFFFF1F82361904AF65A6D3C5B2AC86182309C827FFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFF86EBC6C73FC19852EFFF066D146F046355DD7FFFFFFFFFFFFFFFFFFFF68EB4D8E7C1338CCD8E96406C87608CF097FFFFFFFFFFFFFFFFFFFFFEF43A9B1AE201E886C0CA8A4ED00C11AAA8D3FFFFFFFFFFFFFFFFFFFFD1A352435D75BB9B013211245FD182149BBC67FFFFFFFFFFFFFFFFFFFF931CC16BE7428D23868E030F543042E0D7BCFFFFFFFFFFFFFFFFFFFFA915D82D7DD89F1E1923758619F680404940FFFFFFFFFFFFFFFFFFFFF9E48882AF4449A554A315FE035AD053806F7FFFFFFFFFFFFFFFFFFFFB4BC15276E4639909D46B48AB1DFA4E6B817BFFFFFFFFFFFFFFFFFFFFABC91A4C2B70E26C7D789777E66F49C99E12FFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFE91A6F49090A662CB3439F373328E929B2D98FFFFFFFFFFFFFFFFFFFFEE130C9334710C665DA5284865D8D252D128DFFFFFFFFFFFFFFFFFFFFD669D9265B728D4524D272B07F71A6A79FE1BFFFFFFFFFFFFFFFFFFFF4C5FB85DBF6045EAD461B6FAE04F4C488DA97FFFFFFFFFFFFFFFFFFFEBE9990BB7B230BFFA7672AF864EE989921CBFFFFFFFFFFFFFFFFFFFFFD7AB00335695D840841080A0E7CF3805D51FFFFFFFFFFFFFFFFFFFFFA599FD36681B8AD6A3E9D5B73E45C4BC3385FFFFFFFFFFFFFFFFFFFFFA62B5A9CD9A0C45A76DC812AC1D38D5AD33BFFFFFFFFFFFFFFFFFFFFE551BE901B8A0A0C043C36C0002D7123AD697FFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y23_N8
\imRead|altsyncram_component|auto_generated|mux2|_~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~37_combout\ = (\imRead|altsyncram_component|auto_generated|mux2|_~36_combout\ & (((\imRead|altsyncram_component|auto_generated|ram_block1a36~portadataout\)) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0)))) # (!\imRead|altsyncram_component|auto_generated|mux2|_~36_combout\ & (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\imRead|altsyncram_component|auto_generated|ram_block1a12~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|mux2|_~36_combout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a36~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|ram_block1a12~portadataout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~37_combout\);

-- Location: M9K_X33_Y29_N0
\imRead|altsyncram_component|auto_generated|ram_block1a84\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a84_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a84_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y19_N0
\imRead|altsyncram_component|auto_generated|ram_block1a60\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"729ABD1A191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8199B56007C75808FF9FFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF7BE85952697579C2A1275FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4CEFF80D65E8D3ED59690FFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF85E55B58DF6EDC7AB047A34FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAD4907B29E39BC440BED14FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFB21244F91CFE07365A957C81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1CBF705181DA4D694FD000FFD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C35AEBEE103AAD25A0616BFAD7FFFFFFFFFFFFFFFFFFFFFFFFFFFDE93B68A9419072",
	mem_init2 => X"23C39BDA283936FFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCF9B21060887ADF5FEA9A682C17DFEFFFFFFFFFFFFFFFFFFFFFFFE1A67645CEC071700330F041E74E08939FFFFFFFFFFFFFFFFFFFFFFF6F81B5D6F64984281A31361A9A5547E9AFF7FFFFFFFFFFFFFFFFFFFFF0F7A30F42785869E2321BDB5352457B38BF7FFFFFFFFFFFFFFFFFFFFF37E92B9245DD3E00A23A83E5276F76639FFFFFFFFFFFFFFFFFFFFFFFFC691BBB6768A7031662338FA6D48BE0827FFFFFFFFFFFFFFFFFFFFFFE52E556491FDB749285102923F182119E97FFFFFFFFFFFFFFFFFFFFFFC2C37DE76CFDE7E7FF9C921767620C53B979FDFFFFFFFFFFFFFFFFEFFAD7AC6254653F43378",
	mem_init1 => X"AF8C98CA0D699747BDFBFFFFFFFFFFFFFFFF9FD2BB73895668869D798C3FD68CA35EA18F4B1FFFFFFFFFFFFFFFFFFBF16D369BBF119E6F38ED362F2D18C60127E83BFFFFFFFFFFFFFFFFFFA77D16B4AF9CD2E8B4615E8313B40AC3FC9E597FFFFFFFFFFFFFFFFFF5D2F3EC376C63E9FFFFFFEA75022525E295E0FBFFFFFFFFFFFFFFFFFEBCE366A91E02E3FFFFFFFFCFE0C67FE5CCE715EFFFFFFFFFFFFFFFFF9F12CFF1F65227F3FBFFFCFCDB00C1E06DB4085BFFFFFFFFFFFFFFCFF7B7B69BFFF7BFFFFFFCEFFFFF4F7A4F2350A5BF7FFFFFFFFFFFFFF3FD5166E953211FC7FFFFFFFFFFFFE6795ACAC72037FFFFFFFFFFFFFCFE4E864E3878C6FBFFFFFFFF",
	mem_init0 => X"ECFFF90B88CA51C7ABFFFFFFFFFFFFFF9FA812E0D6603A71FFFFFFDFF85FBFC858F6CBCB48FFFFFFFFFFFFFFFFE2930FE063E79FFFFFFF04AF8FEFFFF9BEA22C53AFFFFFFFFFFFFFFFF8BAEA22946BDFFFF9FF45911FFE1FBFA6A20F57A3DEFFFFFFFFFFFFFCD75265E65BD7F3FE3F56D8783FEFFFFECEF2A4A5818FFFFFFFFFFFFFD2F25CAB61F9FFFFDDAA83DD94FCFFFF1EA9530AD9D1FFFFFFFFFFF2F49960610B7FFFFFFE6257E387BFFFFFFD20C3DE34FF9FFFFFFFFFFCFB7B3EEF70DFFF9FFFB790FBF145BFFFFF8E75C1B1DAB1FFFFFFFFFFDF888EEB9B87FF85FF2C93E161D1DF7BBF9E719F014DE23FFFFFFFFFFFBB430B4B87BFF6FF1740407044",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y21_N0
\imRead|altsyncram_component|auto_generated|ram_block1a48\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"160FC3FFDBC02BAEC0A7FFFFFFFFFFE867E3B5A9F9FFFF9D31D95F28D27AFFFFFF3D6AC745327FFFFFFFFFF943913073FF3FFFC03EC232B400BFDFFFFFE36FD8B3C97F7FFFFFFFFFFA165405AFF0FFF1CB60E678F82438EFFBFFB8D1D67D2FE7FFFFFFFFC98AE525CF7F1FF9801CF400036B4C7BFFFFF88C572F7BFCFFFFFFBFF5AFC31BEFFFFFFCC3AC6303B5048C8FF7D9FF5F5096514FFFFFFFFFEE7592A39A7FFFFF44FBD517E11E9085FF7CFFFCF03A9546FFFFFFFFF3CDC2758B3FFFBFD65EA619A780E2B70E435FFFDDDC3CD3DFFFFFFFFFEBF13F797FFFFFE92397962484139431CCFFFFDF689342F7BFFFFFFF38E7DE6612EFFFFAF074763189EAE4",
	mem_init2 => X"8DE14BFFFBEF2D428E7BFFFFFFE3DB187682BFFFFF59BCBDE18FC1135DFE1C5FFEFE8E4D887DBFFFFFFBCD649FDE0FFFFF7C4B67BBDC8D076FE1E271FBFF81A966F497FFFFFFFD70B381AFFDFF9C03EC317A0908A9AD1E9E7FF7FE8C3A7015FFFFFFFDDCECDC56FFFFB6C07D747637883C14E1E037FFFFA8A39D007FFFFFF7B4531B136FFFFCE40FC4BC17B0E271B43E03BFFFFCB4741697FFFFFE2448567A7FFFFE4C01FC9046FFC9830ED7C015FFFF80B172593FFFFF9A3F8915B3FFFFD3200EAF7F1F8ED30F6AF80A3FCFFEDFC26997FFFFFFA396CE2FFFFFE56DF07888887F0095861F01AFFDF9ED2F3824FFFFFFF0F113477F7FF8EDFF0F5693C77C4D6A",
	mem_init1 => X"63F80CFFFFFDEE92058FFFFFFE5F32C8CEFFFFD53FE57E0D33FF2715FFC7FB35FF9F3E2DD87DFFFFFE65764471AFFFE12DFCA577D08F81B6C9F8FF2C3FDFBFE513907FFFFEFF45001473FFF621FFC759DF3BE42C40ECFFFFEFFFFF8296695BFFFFD0F3A66E8EFFFDA1FFFA54B7F07CC7D52D1FFFFFFFFFFFF3372FFFFFFB86CEEE13FFFFCC3FFF5A2BFE1FEF7C4CE1FFFFF7FFFE13F386F3FFFFA1A25BE0FFFBE327FFE3E0BCD9FE67E0703FFFE6FFFFE229B5B8FFFFF9975A14FFFFF3EDFFFF7A059A406CF5A801FFFC7FFFFF6751427FFFFDF61A1F0FFFFEADFFFFF82743B80FFF07F03FFF9DFFE7E745BC867FFFE3011F26FFFFA2BFFFF81251C1FE3D7B68",
	mem_init0 => X"0FFFF3AFFDFC641B851FFFEF09F5367FFFFD2BFFFF00F73C533EAFFB03FFFE73FFFDF24D820FFFEE3058BA87FFFCC1FFFFEA59FBD52D99CFF87FFFC71FFE7B41D9785F7DD9CCDEABEFFF583FFFFD3EBD13B923598F1FFFFB57FFCFBF540F37FFE8A7FA253DFFDE07FFFFE811E98BA4D3E9A7FFFFAD7FF9F10A38AE7BFAE4814BDFFFF400FFFFFCF23DF79573090CFFFFF6C7FFBFCA32C66FFFB578003BFFBEF41FFFFF346489A5C5D1293FFFFFEA7FFF7933F7D0FFE494BB40FBFBCAC1FFFFE2841ADFD1CD75979FFFF89FFFFE9709DE1FFB3C67948FFE3A0F07FFFD91E6CFD516B1E4E3FFFF16F9FFCD83BFCCFF7388299FC7FCC2F07FFF2F9C825568721E9C",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y23_N2
\imRead|altsyncram_component|auto_generated|mux2|_~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~34_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead|altsyncram_component|auto_generated|ram_block1a60~portadataout\) # 
-- ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead|altsyncram_component|auto_generated|ram_block1a48~portadataout\ & 
-- !\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a60~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a48~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~34_combout\);

-- Location: M9K_X5_Y22_N0
\imRead|altsyncram_component|auto_generated|ram_block1a72\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFDF07FCF7F303FACFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFEC833FFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FFFAB83C7C104618FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF7E7DACE0A8EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1180A282D060BD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE66976F1",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a72_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y23_N16
\imRead|altsyncram_component|auto_generated|mux2|_~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~35_combout\ = (\imRead|altsyncram_component|auto_generated|mux2|_~34_combout\ & ((\imRead|altsyncram_component|auto_generated|ram_block1a84~portadataout\) # 
-- ((!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead|altsyncram_component|auto_generated|mux2|_~34_combout\ & (((\imRead|altsyncram_component|auto_generated|ram_block1a72~portadataout\ & 
-- \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a84~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|mux2|_~34_combout\,
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a72~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~35_combout\);

-- Location: LCCOMB_X32_Y23_N14
\b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b~0_combout\ = (\process_0~13_combout\ & ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\imRead|altsyncram_component|auto_generated|mux2|_~35_combout\))) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- (\imRead|altsyncram_component|auto_generated|mux2|_~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~13_combout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datac => \imRead|altsyncram_component|auto_generated|mux2|_~37_combout\,
	datad => \imRead|altsyncram_component|auto_generated|mux2|_~35_combout\,
	combout => \b~0_combout\);

-- Location: FF_X32_Y23_N15
\b[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b[0]~reg0_q\);

-- Location: M9K_X73_Y11_N0
\imRead|altsyncram_component|auto_generated|ram_block1a25\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"682DFFF74659C37DE4054D3FEE97611D8E064830000000018681A2E40041BFFF64158EDBDF42F2AFFD4E75DFA6C0CD070000000030B0359F658077FFFFE609FFFD9A16BFFFA4CB77AA281C2460000000022C0F1DE8BA66FFFEEB0E24DFF19ED6FFFE04B0A07403D2800000000024838E29AD10DFFFF8867B37FF9CC0FFFFEF028FD64471C00000000001B1A88DF505BBFFFEB04953FFFEE87FFFFC5380A46C8D340000000000643DD21114AB7FFFEDB811FFFFE34FFFFD829D913C81860000000000081D475E6A8B6FFFFE19FDFFFFFF03FFFFB165606AD980640000000007A71E52040645FFFFE38AFFFFFFFBFFFFF6627D173838C70000000000A8E2F21251",
	mem_init2 => X"80BFFFFFD3FFFFFFFFDFFFFEC56AFFFDB70C640000000022585BD4CC4917FFFFF57FFFFFFFFFFFFF8C4C5FDA76E0F580000000059F1C55998CC2FFFFFF1FFFFFFFFFFFFFF580D7813E5C20750C000003642676A78B5C1FFFFFFFFFFFFFFFFFFFFE014FA999DE12C161A6100750566B6466CCE2FFFFFFFFFFFFFFFFFFFFD32F81CB591385B6584701992C9EBF3F18681FFFFFFFFFFFFFFFFFFFFB7EB088148E300B1FB42C4E64C7B90545BB83FFFFFFFFFFFFFFFFFFFF778CD1D8CC0E6C41FE1F99D7EBB3599BF9847FFFFFFFFFFFFFFFFFFFFA97B90355D16AAE41BDAECE11CC2B520E4A5FFFFFFFFFFFFFFFFFFFFFAB523534D9044B9F99B3918CEFBA8A0B81",
	mem_init1 => X"33FFFFFFFFFFFFFFFFFFFF92055257FDA05A1099F8ACB22FF71A9470407FFFFFFFFFFFFFFFFFFFF012F42A60EC21F1B4C424E9EBFC8AD4E4642FFFFFFFFFFFFFFFFFFFFE869AD48500B0172E01C850825BA20C912B61FFFFFFFFFFFFFFFFFFFFFD45CBDAC40603F451B83B2A6372AEFD78C6BFFFFFFFFFFFFFFFFFFFFE43F75EF912F0528E2052471652FD8509E897FFFFFFFFFFFFFFFFFFFF9AA6AC7DF1C00633ED01F364D20C3826AC4AFFFFFFFFFFFFFFFFFFFFE258609C383800997C4E508070014A61C8029FFFFFFFFFFFFFFFFFFFFC32060003350007A99A165002000000369413FFFFFFFFFFFFFFFFFFFFC3331E377B7FFFF77FB13EFFFEFFF8D60430",
	mem_init0 => X"7FFFFFFFFFFFFFFFFFFFFBB12BCDD39C00C0652BF0145010C33FE07C9FFFFFFFFFFFFFFFFFFFFF70117820003FFC0949289DD7FFE0944BB84DFFFFFFFFFFFFFFFFFFFFECA3BDF7FE1E0C0792F0F8040FFFC1131518BFFFFFFFFFFFFFFFFFFFFFCE31D07F91FFB2EC77F9C083E00021ACFA07FFFFFFFFFFFFFFFFFFFFBE1E2D60007C0E247C3AFA007FFFF9099E34FFFFFFFFFFFFFFFFFFFFF72FD6D003F981D8E6B9263BFDFF9CBEDF195FFFFFFFFFFFFFFFFFFFFCDBFAA870F3F9DE0D49C000A1FE0FB48BE89BFFFFFFFFFFFFFFFFFFFF984B5666C7D9F86A65F3C7C7C4FFEF0C76947FFFFFFFFFFFFFFFFFFFF48A8C5020097B444F23F1495F680E443D12AF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y10_N0
\imRead|altsyncram_component|auto_generated|ram_block1a1\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFD5C83266760B1EA0180A4030276124D307CF1FFFFFFFFFFFFFFFFFFFFAF0CF7A4EE1EBEC1F09B869C877E499E010E3FFFFFFFFFFFFFFFFFFFFDD41EFA18E35990F1D2010CF052C979A023C7FFFFFFFFFFFFFFFFFFFFB323E6E30BCF30000A4C00032F993D6E04E8FFFFFFFFFFFFFFFFFFFFF11B1EC37FB4BB9803CB0214F06E32F713249FFFFFFFFFFFFFFFFFFFFCD44FC0FF4103F138792036DE24C414636203FFFFFFFFFFFFFFFFFFFF85787827C01FA2058B2470101E0081AD83D07FFFFFFFFFFFFFFFFFFFF5B79E048E813640A1640F6BEFC12F4375D28FFFFFFFFFFFFFFFFFFFFCB389020C600130702F802010681B18774481FFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFBBA104FEFBF0068004F2001027BEC3BEC0683FFFFFFFFFFFFFFFFFFFF5C6C64D01DC483D048E400006A1B030243A47FFFFFFFFFFFFFFFFFFFE0764F1C1E193D2A072380811C5E1030A0FE1FFFFFFFFFFFFFFFFFFFFE2E061D0FE4A9001FB35FE3E45C1F02E582D9FFFFFFFFFFFFFFFFFFFF9EB3A770BADA5F0789F5BBE3B927E9D65C103FFFFFFFFFFFFFFFFFFFF5E7F328DC318607B781A8602003C0263B6107FFFFFFFFFFFFFFFFFFFEA72FED4B56B04DF7C3F137CC39722AFA82F8FFFFFFFFFFFFFFFFFFFFEC48959714167F3E037231821FA160A5224A3FFFFFFFFFFFFFFFFFFFFD733370B62547C185CC467F33EB52515E4CC3FFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFF78EA883C423387F9993A370631F10F1D3BA47FFFFFFFFFFFFFFFFFFFFF1B2347A4E6009CC24E1C13C8395DA65E481FFFFFFFFFFFFFFFFFFFFDC98FF21B32D019A523026070A0DA8F4FF503FFFFFFFFFFFFFFFFFFFFB84B1CBD7D1A53B4030C3F1445AAFB714D007FFFFFFFFFFFFFFFFFFFF70C06236882A11516D2E482287151B5C38C4FFFFFFFFFFFFFFFFFFFFEF257C60E8B951AA7BE41F11E2513F2306AF9FFFFFFFFFFFFFFFFFFFFCE5A1B629D3063727DB6F53E9ABC58B375733FFFFFFFFFFFFFFFFFFFF9FD039A1DE9C8DC4B0696E7B1B29017BF04E7FFFFFFFFFFFFFFFFFFFF3F962445AF250E1E361DDED22E0190E133DCFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFE776142CE3D5DE300300183E284A060C2B749FFFFFFFFFFFFFFFFFFFFC8667018067038040E03F0600E1E700604F83FFFFFFFFFFFFFFFFFFFF800000E083E0EF9C1E5F8F871C3CF80CE1E03FFFFFFFFFFFFFFFFFFFF010FFF9F8FFBFFF9FFFF9F9E1FF3FFBFE3C8FFFFFFFFFFFFFFFFFFFFE00079C1C1E2300C103C010000003CE3FC009FFFFFFFFFFFFFFFFFFFFC200E3878784601820780000000071E7F8011FFFFFFFFFFFFFFFFFFFF8200020E0E00C03000000C000000C18300007FFFFFFFFFFFFFFFFFFFF1E00000800000060020018180008000000C0FFFFFFFFFFFFFFFFFFFFF43FFFEEFFFFFFF3FFBFFCFCF0E4FFFFFFC7EFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y10_N6
\imRead|altsyncram_component|auto_generated|mux2|_~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~40_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\imRead|altsyncram_component|auto_generated|ram_block1a25~portadataout\)) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead|altsyncram_component|auto_generated|ram_block1a1~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a25~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|ram_block1a1~portadataout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~40_combout\);

-- Location: M9K_X33_Y11_N0
\imRead|altsyncram_component|auto_generated|ram_block1a37\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"80003E3FFFFDB7FFB89FE937E4CA7FFF8E00E0003AC180138DFC90EC70000007FFFFF6F8602BFB55ED9AAFFFF000000007503355A7CB101D8E0003007FFFFB2ACC063FEA159AED7FFC00000000EE0638B6324182B1C000600BFFFF614D88BFE876B9CB07FF800000001940CF170110205438000C05FFFFD36910CAFB43C84671FFF00000000328183409D60808870001819FFFF20AF2365FEA5FD85139FAE0000000080324DF7D814311E0002023FFFE0A5E99C9E943AADD5DDF9C00000001806286BEE9007C7C0004051FFE4DCC7B02DE46A3C89B69E380000000480C2421FE320F8F00008007FF8F7935F37F923FF5C69A3C500000001D019C05920601B180",
	mem_init2 => X"0010083FF188173E714003F470788F460000000120332A9610C036900002018FFE83BC8CABE6800C2C2181D8C000000004042213D31E00A300004038FFCEC8924770D0018F02A599300000000E8087B123A3C014400008073FFE93754F0C9A0010A11457640000000080107F9A0A002248000101E1FA03DD04603E9080050501DC0000000001022DE88F400C400000203EFFF6483300018A10000E02BEA0000000078041E28DD0018010000407A7FC08900108AD70000C7A575838F1E078F8080A754840308003C701F4FFE16F300514BE408474CCD7070F3C0FDB400104789C8194707AA07F8FF73A030011DE3E2D76407CE0F1A382C046601707133033D70D",
	mem_init1 => X"1C0FF0FF0EC434013FA43D20187B9C3E0FF055028267E01A3588C1E1F303FE1FF1ABA0701B7E3CCEEB93F30FCE7E1408C093EC021E33138C3A37FFC3FC86C4FE068FFF4C1AFAFAE19AEB8FB7617C04001C6262198714FF007FF0FC9F90CBFF48819B5F5C034643E57C0440800E138C4A70E7DF8017FA13C8F0D37FFFD4B666FB806B20FEDB174C080016380827195BF000FEE6B739C1FFFFF3C78EBCE009BA1FD7CBC28000108001D6F38D7800BFD8D5F1F8AFFFFBBE101FDC099686D32F0886E18FE29036C5A0A4C003FE40B4EFBDFFFEDB3396EB031978780DE0A02C3691560669ED5CC1807F6A03197BFFFF5E004BFCC0080A2D80002BD51EF89E10E63DD3",
	mem_init0 => X"E47807FC88468FFF7CFA60107FD809DD158076047E1C17A1C217C1ABA09F84FF61B01EFFFF17F00286F6083221041EA04EA100027443C2336681F0BFFD12063FFFC529401DFEC32032E5FF840E48A40E55E059B2EB473E1FFFD00E25D7F5194E01AFD86796F4BE3A43004CC2B0C40AFE52022FC27FC71185F37E478C405FF3014BDA55C0487CFB801AB3819F097B4C1C17F9E03017FFB86C6DAB7E60110D6359881FFE0000FFE02F96DED2018BFFE47194E3FE1CBFE6FFC8331D878B3181800000000005F2C60F85F37FFE275F183F9C2F2057FA7E2B4A8BC634180000000040EE1454B328EFFFE238A0A6FC87728DFF47C63D51704283000000000C0DCEB3AC",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y8_N0
\imRead|altsyncram_component|auto_generated|ram_block1a13\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFE0A418198340AC663363DC8CEA0FC5BA75F45FFFFFFFFFFFFFFFFFFFFC06A26221EF208791F27C8228B7EA844CCE03FFFFFFFFFFFFFFFFFFFF9C0060B02718A0672D867A60B0043A864E0F7FFFFFFFFFFFFFFFFFFFF33DC817A601608370F9C8E116807ED8C87CAFFFFFFFFFFFFFFFFFFFFF61E0837533014C8C9B54215501C9D8171301FFFFFFFFFFFFFFFFFFFFEC042063471B40B0FAE721A82C1F7A82E3E07FFFFFFFFFFFFFFFFFFFFA52C80829FFCF607935DCC019FC00B8D27917FFFFFFFFFFFFFFFFFFFFB4A40510FC98E67821A74C0FC7ED371365E0FFFFFFFFFFFFFFFFFFFFF61D142234E0D0FE8415E83E4D61267276E79FF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFE563004561068FEF551A1BE6C68D46A26C313FFFFFFFFFFFFFFFFFFFFCEAD408BC117C8242A1D68C3BE7EC544ED407FFFFFFFFFFFFFFFFFFFF7622811F882FEE620BBF9F82570D3A89F418FFFFFFFFFFFFFFFFFFFFE74A1023F05F04985DB06352F85B27503E53BFFFFFFFFFFFFFFFFFFFFD914285FE0A64088F5A88481DE124AA078B83FFFFFFFFFFFFFFFFFFFFB86850BAC24B0641EC2111F9641C9D404BB87FFFFFFFFFFFFFFFFFFFF73848961A7C8FE0AD81A31F184B93E81ACF0FFFFFFFFFFFFFFFFFFFFE047152E37C0F8FDBAE70C24091D27D02DF05FFFFFFFFFFFFFFFFFFFFA1D72A5C6F0198ACD5527D13CF0E4FA05DBEBFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFF23E054B8C26A8971A9F2F06B0E0C9F40A1F4FFFFFFFFFFFFFFFFFFFFE0BC8E971807651185712CCCF96B93E805468FFFFFFFFFFFFFFFFFFFFDB0E5D2E70C006FF47935655480127D1D4B81FFFFFFFFFFFFFFFFFFFFB0E0BB7CE09B50649CE6EDDA7A4A4F8320333FFFFFFFFFFFFFFFFFFFF473476E9C2736900E8A5313DB80C9F00471A7FFFFFFFFFFFFFFFFFFFEF1F8EDD387418FC9BAF8B044DFC93E04CEC0FFFFFFFFFFFFFFFFFFFFDF341D3E70C3F9EB8B750F8A3F4527C05622BFFFFFFFFFFFFFFFFFFFFD23A3A7CC065BD181696081EBC804B8120043FFFFFFFFFFFFFFFFFFFF0F4874FBA37390C02CED4FFE480897023CD87FFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFE9B90E9FF0AAB6FACD23A152C4AF12E0441D4FFFFFFFFFFFFFFFFFFFFF0EC8F3EE393DC0362FD44CC1FF925C19ED41FFFFFFFFFFFFFFFFFFFFE8081E7DE7034D7858808C20BC22498101803FFFFFFFFFFFFFFFFFFFF7B4C36EBC383869B3598505B42609303AE967FFFFFFFFFFFFFFFFFFFE4A868DD787EA0EF4468467F0A1F1260F4950FFFFFFFFFFFFFFFFFFFFF1801BAAE3AA74C0C60D599DF9E52451900E1FFFFFFFFFFFFFFFFFFFFE6041765C6C075043EEBB18BF3824B83AA043FFFFFFFFFFFFFFFFFFFF88A0229B8450545A3409415DC33C93013D487FFFFFFFFFFFFFFFFFFFF126041170161A0FEEC34C4314C992E903E60FFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y10_N24
\imRead|altsyncram_component|auto_generated|mux2|_~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~41_combout\ = (\imRead|altsyncram_component|auto_generated|mux2|_~40_combout\ & ((\imRead|altsyncram_component|auto_generated|ram_block1a37~portadataout\) # 
-- ((!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead|altsyncram_component|auto_generated|mux2|_~40_combout\ & (((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- \imRead|altsyncram_component|auto_generated|ram_block1a13~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|mux2|_~40_combout\,
	datab => \imRead|altsyncram_component|auto_generated|ram_block1a37~portadataout\,
	datac => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \imRead|altsyncram_component|auto_generated|ram_block1a13~portadataout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~41_combout\);

-- Location: M9K_X33_Y14_N0
\imRead|altsyncram_component|auto_generated|ram_block1a61\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"82E6CE395E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8C3C40165FA22E789D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9F6F882D7CBCAFAC49CC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7ACF1048359F258D6A2FF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDB9797817C96CE1C2144586FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80C2CBDF8E30C58D5A66D1033FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC28ED34E361733CA68A1B863FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF6978B41F275BE1F1739894159FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EA0D00C456FC5F392D77CFC7627FFFFFFFFFFFFFFFFFFFFFFFFFFFFEE0091C3D591C1",
	mem_init2 => X"845CFEE2CEE84C3FFFFFFFFFFFFFFFFFFFFFFFFFFFEF90F365699AA0129E3F04E694393FFFFFFFFFFFFFFFFFFFFFFFFFFFF8280474B56DEA85400E7B4F3E4AC65FFFFFFFFFFFFFFFFFFFFFFFFFFA4CE15152B42718BDBE9A6D2CD9C12CFFFFFFFFFFFFFFFFFFFFFFFFFF3DF97E3A672A0718435F416C3BF10B9FFFFFFFFFFFFFFFFFFFFFFFFF30F30F01EC791CC99AF297D3E63FB8DAFFFFFFFFFFFFFFFFFFFFFFFFC03F41FC182A2E410A6EE533371BF41567FFFFFFFFFFFFFFFFFFFFFFED21EC07197FF83222A32D38FEE3B4CFE57FFFFFFFFFFFFFFFFFFFFFFCC9434A6B0EE001800668FF4FEC76F555F3FFFFFFFFFFFFFFFFFFFFFDA169505F8C1C0C0378",
	mem_init1 => X"207F0B9C259F5CD8FBFFFFFFFFFFFFFFFFFFFFC3DEAF48A347E7E1FF823FE67F2A58BC761FFFFFFFFFFFFFFFFFFFF7C6B64AF9AE2A909F38E1F9520BE7452368DC37FFFFFFFFFFFFFFFFFFFAB8C5615395FF8E6C006EFA9C4BE69439E27BFFFFFFFFFFFFFFFFFFFFC67714A91FF8ECFFFFFFC46C9C5655B05AA7DFFFFFFFFFFFFFFFFFFE426F91D089112FFFFFFFFFF3E5819249116823FFFFFFFFFFFFFFFFFFD3F6C1A781CEF7FFFFFFFFFFFBED3377E4A0A91FFFFFFFFFFFFFFFFFF6583F3CA04FAFFFFFFFFFFFFFCF5C3045CBA50FFFFFFFFFFFFFFFFFFB3B3E3314E33FFFFFFFFFFFFFFE2542915EC6891FFFFFFFFFFFFFFFFF01DCE64291CFFFFFFFFFFF",
	mem_init0 => X"FFFFFBF239F803F00DFFFFFFFFFFFFFFFFB7DBA40F5B8FFFFFFFFFFFFFBFFFCF9FFF5BD703BFFFFFFFFFFFFFFFE8F687F87EB7FFFFFFFF543FFFFFFFBAC079CE057FFFFFFFFFFFFFFFFA3CF36F4ECBFFFFFFFE0260EFFFFFFBF42AE8C75DDFFFFFFFFFFFFFFEBE655351F9FFFFFFFF080781FFFFFFDDA182C3E4D3FFFFFFFFFFFFFFAE90195DADFFFFFFFF24FF1C60FFFFFE2F49FFDA98FFFFFFFFFFFFFFE398EBD17EDFFFFFFE83CFE2F03BFFFFFACE7B53B84FFFFFFFFFFFFFFEAFFC3A4BEFFFFFFE29B0FFF3C1FFFFFFDE87A55E5C7FFFFFFFFFFFFFC442EDA2C7FFFFFEC15381E1D42CFF7FFA49C74BEDDBFFFFFFFFFFFFF008055DB7FFF9FF9090500065",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a61_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y7_N0
\imRead|altsyncram_component|auto_generated|ram_block1a49\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"31CBFFFFCDBCFB22067FFFFFFFFFFFE93D0575537FFFFFDBBB30C0308D04DFFFFE1AF61EAE1BFFFFFFFFFFFF9FC0FD073FFFFFE3D0F3427340980DFFFFF0F3EEC7F7BFFFFFFFFFFFDE4C2C196FFFFFE40E108078030F844FFFFFAB2811388FFFFFFFFFFFE697EAFEBFFFFFFD7DE985000508CB81FFFFFA32D4D60D7FFFFFFFFFFA9F1C0456FFFFFD1C288F087800D27017FFFFE2BC02102FFFFFFFFFFC8B38D4323FFFFF77034C2000E8445E017FFFF321C99F96FFFFFFFFFFB8B58E65FFFFFFD9E14028A82B56B071A3FFFFE823EBC14FFFFFFFFFFC021A0C57FFFFF8DC69D0827620920E32BFFFFF8062A446FFFFFFFFFF582BBA59FFFFF20F89CBE58FFD99",
	mem_init2 => X"F61E2BFFFFFE10A3E76FFFFFFFFEEE373FB4FFFFFD264304E23FCF22CE41E23FFFFF21C8F4C5FFFFFFFFCD0AE972BFFFFFC3B0F010F1047F34CE1D83FFFFEA12B93F3FFFFFFFF77F64C4A3FFFFD3FC1ED425060A7A04E1611FFFFE132C0C53FFFFFFFF8918A687FFFFF53F83BE7D0FF4D21E5E1FC5FFFFA97B4BFC3FFFFFFFD4F0C2613FFFF81BF03B8A4443B0B8DFC1FC1FFFFCBAD18317FFFFFFF4FF84DFDFFFFE53FE030BCF0034175DE03FC7FFFFD52FE9497FFFFFFE4D427C67FFFF9CDFF14DD1C07129752C07F43FFFFBAEF5D0B7FFFFFFCD71C63FFFFFE2920F807DF781FE8121E0FE43FFFFFD19AC737FFFFFD934EF2CDFFFF85200F0630C3803B863",
	mem_init1 => X"1C07E07FFFF8E214737FFFFFFF223F252FFFFFAEC01A964A0000014E60380443FFFFB4688017FFFFFF55D47331DFFFEFD2035AA720800015540700D2BFFFFA017BE2DFFFFFCCA5E3CA3FFFF5FE003C4CA03818020F8300001FFFFF3967DE55FFFFFAB01F34CFFFF95E0007ABE80003003C80E00000FFFFF5643FD5FFFFFEBC7ADFDBFFFF53C000E5EC01E01003851E00001FFFFF7E415A7BFFFFFAAD9E53FFFFFCD8001C0B403E01801B0FC000197FFFF8D129A1FFFFFD6D4DF21FFFFC12000084980780100453FE0003AFFFFEF96BDBD7FFFE4A0A5F13FFFD52000007B800400000047FC00062FFDFEACF5D76FFFFB48F653AFFFF8F400001E100000002021F",
	mem_init0 => X"F0000C3FFFFFFA55357FFFECCDF798FFFFFAD000003C400033C1400CFC0001C3FFFFD8E1910BFFFC143F8BEFFFFE3E000007D60C31D66025078000381FFFFAC5D6913FFF798738F1FFFF27C00000AC4069003C4400E00004A3FFFFF8E8326BFFED68853CFFFFD1F80000188E151835000E18000052FFFFF2764501FFFC579599FFFFF67F000003C1C7CFF320004300000927FFFFEDF9A177FFBB45E6F5FFFF0BE00000C4196A3DA6200CC0000035FFFFEF98102F7FF524A639FFF7D53E00001B83224004F202386000071FFFFF88D91D7FFF8CC879DFFFF5F0F8000258030C590F4E351C0000E1FFFFCBB176A5FF6ABF926BFFFE7D0F8000C3004424C22DE6A3",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y10_N10
\imRead|altsyncram_component|auto_generated|mux2|_~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~38_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1)) # 
-- ((\imRead|altsyncram_component|auto_generated|ram_block1a61~portadataout\)))) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\imRead|altsyncram_component|auto_generated|ram_block1a49~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a61~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|ram_block1a49~portadataout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~38_combout\);

-- Location: M9K_X33_Y3_N0
\imRead|altsyncram_component|auto_generated|ram_block1a73\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFF9EFFDE3F9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F53F3FFFF85FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD78427C1FBE0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8F3E0FA0E12FEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20481631E1FFF3C57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE7040E",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a73_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a73_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y6_N0
\imRead|altsyncram_component|auto_generated|ram_block1a85\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a85_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a85_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y10_N20
\imRead|altsyncram_component|auto_generated|mux2|_~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~39_combout\ = (\imRead|altsyncram_component|auto_generated|mux2|_~38_combout\ & (((\imRead|altsyncram_component|auto_generated|ram_block1a85~portadataout\)) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1)))) # (!\imRead|altsyncram_component|auto_generated|mux2|_~38_combout\ & (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- (\imRead|altsyncram_component|auto_generated|ram_block1a73~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|mux2|_~38_combout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a73~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|ram_block1a85~portadataout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~39_combout\);

-- Location: LCCOMB_X45_Y10_N0
\imRead|altsyncram_component|auto_generated|mux2|_~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~42_combout\ = ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\imRead|altsyncram_component|auto_generated|mux2|_~39_combout\))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\imRead|altsyncram_component|auto_generated|mux2|_~41_combout\))) # (!\process_0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|mux2|_~41_combout\,
	datab => \imRead|altsyncram_component|auto_generated|mux2|_~39_combout\,
	datac => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datad => \process_0~13_combout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~42_combout\);

-- Location: FF_X45_Y10_N1
\b[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \imRead|altsyncram_component|auto_generated|mux2|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b[1]~reg0_q\);

-- Location: M9K_X33_Y27_N0
\imRead|altsyncram_component|auto_generated|ram_block1a86\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a86_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a86_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y18_N0
\imRead|altsyncram_component|auto_generated|ram_block1a62\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FEFEFFF860BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6043FFE97E006EFF903FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60EFF8BCBF020C2FF9F0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1CFF2B00FC01391C63F0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0861E4F81FD0DBB307FC297FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDC42C5E771BFB791AA20D110FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0432114D627F0303D6044BC9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82980F96EC07E078F942407F66FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2E420F08E53FC3F6E280C0FF31FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF13D101A318E7F",
	mem_init2 => X"87C54104D0C073FFFFFFFFFFFFFFFFFFFFFFFFFFFFE09FCB12F41D57F0F04E3869115F47FFFFFFFFFFFFFFFFFFFFFFFFFFF76FEA7B42FF92FC21F00D4ECE29E49FFFFFFFFFFFFFFFFFFFFFFFFFFFAFFC9F808F681FA00055A153E12F23FFFFFFFFFFFFFFFFFFFFFFFFFFCFFFC7F22CCE07FA014FB8A3D86DFA6FFFFFFFFFFFFFFFFFFFFFFFFFC8F3FCBC01C3C2F79DB8F16A5B3C3ED5FFFFFFFFFFFFFFFFFFFFFFFFDA20FF87A3B87E7EFE6DFC2D46A386BC9FFFFFFFFFFFFFFFFFFFFFFFFA2805E932CFFFFFDFFFDFA030D52AC3EA7FFFFFFFFFFFFFFFFFFFFFFF4AB89683E9FFFFFFFFF7FF647B8912278FFFFFFFFFFFFFFFFFFFFFFE471323D0021FFC0378",
	mem_init1 => X"23FFFB8EFA0520B43FFFFFFFFFFFFFFFFFFFFF2BF2E879017FE7FE007E3FF9FFF42D441943FFFFFFFFFFFFFFFFFFFFDAFE5E1FB13F9F00C71E00C3F7FE383C653FBFFFFFFFFFFFFFFFFFFFFD39CFF3FF9BFC71E3FE71059FFFC111BCBE27FFFFFFFFFFFFFFFFFFF86437FC7EFFF01BFFFFFFF7839FF74D4AABA23FFFFFFFFFFFFFFFFFFF1113FF8BF71E07FFFFFFFFE41CFFF407DE6A2FFFFFFFFFFFFFFFFFFFA70D1FE1FFD1EFFFFFFFFFFFEC1DFF407F8608FFFFFFFFFFFFFFFFFFF9C203B13FC87FFFFFFFFFFFFF90DFF207B04B21FFFFFFFFFFFFFFFFFCA8BD78AFE4EFFFFFFFFFFFFFFF5B7F83D27A08DFFFFFFFFFFFFFFFFFAFB7D602F22FFFFFFFFFFF",
	mem_init0 => X"FFFFFE0BF97B9CF011FFFFFFFFFFFFFFFFCBD4D7117A77FFFFFFFFFFFFFFFFE05FFF385F001FFFFFFFFFFFFFFFF2A748887E0BFFFFFFFF9B9FFFFFFF46FFE62E5161FFFFFFFFFFFFFFFCB9EF90FE95FFFFFFFF7FFFDFFFFFFE17DA0BA71C3FFFFFFFFFFFFFFF3E969F87A6FFFFFFFE7FFFFF7FFFFFF0BFC2F2E9CFFFFFFFFFFFFFFFCA8D25F5E27FFFFFFEDF00E3FDFFFFFFC7FAFE29183FFFFFFFFFFFFFFA80105F7C7FFFFFFFFC3FE30FCFFFFFF44FFB404063FFFFFFFFFFFFFCA8F153BA0FFFFFFF5E70FFF23E5FFFFFA2FF84205EFFFFFFFFFFFFFF2E0E143EB7FFFFFF7E3381E1DBF2FFFFFFAFD15661EBFFFFFFFFFFFF8BCBC08FA9FFFFFFAF30600024",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a62_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y16_N0
\imRead|altsyncram_component|auto_generated|ram_block1a50\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"4FFFFFFFF1FC18CE03BFFFFFFFFFFFF65FFD01E8FFFFFFC7CB203FC184FF7FFFFECFF067E067FFFFFFFFFFFC1FFFF0707FFFFFEFE8E1023044A7F1FFFFFCFF10FF007FFFFFFFFFFF1F5FFC1D0FFFFFF3F211807802227FBFFFFFCBE61FF29FFFFFFFFFFFF7C7DFFFC3FFFFFAFE888600030117FFFFFFF4BE17FD9C7FFFFFFFFFF5F85FFFD1FFFFFFFFDA6207FE1085FFEFFFFF0BF5FE6757FFFFFFFFFF5F44FFF5FFFFFF3FFC0D10000C44FFFE7FFFFCBDF781F1FFFFFFFFFFCF740EFD1FFFFFAFFF90983018628FFFFFFFFFC1FFE85F3FFFFFFFFFF3FF020F4FFFFFF7FFF980C1F81013FFFF3FFFFC1FF207E0FFFFFFFFF8FFF832D7FFFFFDFFFF27C38FF089",
	mem_init2 => X"2FFFF3FFFF87FC8BFE9FFFFFFFFF0E3F00B57FFFFCFFFFC0C23FCF264DFFFFFFFFF83FE2FFC3FFFFFFFFF536FABE5FFFFFBFFFF911F1FC7E243FFFFFFFFF93F0BFE75FFFFFFFF17027BB97FFFFEFFFFF903E001BF03BFFFFFFFFF91E2FFCCFFFFFFFFE5A02E0E8FFFFEBFFFFD23D1FF85E93FFFFFBFFFFD1EBF70DFFFFFFFFE692107ABFFFFBFFFFFC2E17FFA2F97FFFFFFFFFFB3FFF8B8BFFFFFFE8E5810DBFFFFEBFFFFFEBE7FFFD2703FFFFFBFFFFA9DFE0FAFFFFFFFDB87905EFFFFFAFFFFFF1F3FFFFE970EFFFFFFFFFF8B1E09F87FFFFFF8F17D038FFFFEFFFFFFF7CFFFFFE975FFFFFFFFFFFCEF851F4FFFFFFE5E2FFAD1FFFFBFFFFFFDF5FFFFFF965",
	mem_init1 => X"FFFFFFFFFFFEDF7B771FFFFFFC7EDFEF1FFFFF7FFFFFE5DFFFFFFF161FFFFFFBFFFFC7906158FFFFFFB9C97FEFFFFFDFFFFFFCF3FF7FFFF14BFFFFFF7FFFF17676823FFFFFF7A413BBFFFFEBFFFFFF88FFC7FFFE517FFFFFF7FFFF5F172151FFFFF4E110BAAFFFFEFFFFFFF43FFFFFFFF97FFFFFFFFFFFF9A8009C3FFFFF5C0827C7FFFFBFFFFFFE0FFFFFFFFF9BFFFFFFE7FFFF9E3603E3FFFF8BB248F47FFFEFFFFFFFF3FFFFFFFFF8FFFFFFFEFFFFE2D6C1BA7FFFF3FDB21E3FFFF3FFFFFFFFBFFFFFFFFBBFFFFFFFDFFFFF3C8C27C7FFFC7E058CA7FFFEFFFFFFFFCFFFFFFFFFEBFFFFFFFCFFFFF7C08231FFFFC782A158FFFFFFFFFFFFF9FFFFFFFFFEFF",
	mem_init0 => X"FFFFFFDFFFFC7928C11FFFF3CE145D3FFFF7FFFFFFFF7FFFF3FFFFD7FFFFFFFFFFFFE3EA9201FFFFB0018B97FFF9FFFFFFFF9FF7F1F7FFFCFFFFFFFFFFFFFCFC1F891FFF9D02B0EFFFFFFFFFFFFFB7FFFA00BFBFBFFFFFFFFFFFFFCFDBF567FFE1C1507C3FFFCFFFFFFFFBFFFD07C5FFFDFFFFFFFF3FFFFD787CEE3FFFF4896F8FFFFBFFFFFFFFBFFFD00C7FFF3FFFFFFFFFFFFF8F3F9DCFFF5F1D1AF1FFFFFFFFFFFFFFFFE23D87FFE3FFFFFFFE7FFFF3C5F4BCFFF98C90BA7FFFBFFFFFFFFDFFFA8003FFFF7FFFFFFFEFFFFF5A581F1FFCBB213FAFFFFFFFFFFFFF9FFF8FDF0BFFEDFFFFFFFCFFFFF78F83EBFF0F4083F7FFFDFFFFFFFFF3FFE204007FFDBF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y23_N18
\imRead|altsyncram_component|auto_generated|mux2|_~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~43_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead|altsyncram_component|auto_generated|ram_block1a62~portadataout\) # 
-- ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead|altsyncram_component|auto_generated|ram_block1a50~portadataout\ & 
-- !\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a62~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a50~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~43_combout\);

-- Location: M9K_X5_Y20_N0
\imRead|altsyncram_component|auto_generated|ram_block1a74\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFE03F83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C0C000073FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE478183E001FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB70FE0FA0E1D01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE381E3FE1FFFC3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF41F07FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a74_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a74_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y23_N12
\imRead|altsyncram_component|auto_generated|mux2|_~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~44_combout\ = (\imRead|altsyncram_component|auto_generated|mux2|_~43_combout\ & ((\imRead|altsyncram_component|auto_generated|ram_block1a86~portadataout\) # 
-- ((!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead|altsyncram_component|auto_generated|mux2|_~43_combout\ & (((\imRead|altsyncram_component|auto_generated|ram_block1a74~portadataout\ & 
-- \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a86~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|mux2|_~43_combout\,
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a74~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~44_combout\);

-- Location: M9K_X33_Y30_N0
\imRead|altsyncram_component|auto_generated|ram_block1a14\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFF65E087C0006041CCAC3B040C0003826A1BFFFFFFFFFFFFFFFFFFFFFFF99C1160003040EE8D9B48307010C04F09FFFFFFFFFFFFFFFFFFFFFFE3FF826CDF00C11ECC7834107007DE0031F1FFFFFFFFFFFFFFFFFFFFFD43F04C0000E0C00C0E4700070000000782FFFFFFFFFFFFFFFFFFFFFF811E8888FC00C105108E0326003E0006E11FFFFFFFFFFFFFFFFFFFFFF407C110070380704513C0301C1F2100DFE1FFFFFFFFFFFFFFFFFFFFFFB2302609FFCF8006E26000F9FFF060D739FFFFFFFFFFFFFFFFFFFFFF786304C1F9FFE07FFE5C3C0FFFF30C13C61FFFFFFFFFFFFFFFFFFFFFEFE2E0983F81F0FE83FF683FCF88E1826D187FF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFDD9FE1307F0687FFB3FCFFF98777C1005FCEFFFFFFFFFFFFFFFFFFFFFB6C38260FFF7FC7FE7F1F0E3FE1FC200B0C7FFFFFFFFFFFFFFFFFFFFF963F04C1F63FFEE1D407FF825F1F04014C07FFFFFFFFFFFFFFFFFFFFF8C8E0983FDE0B987C647E76F8E7E08022447FFFFFFFFFFFFFFFFFFFFFE31C1207F7E500FF110F8443E13C10044C7FFFFFFFFFFFFFFFFFFFFFFF9F8240FE8306A0E3F1FFF864078200B47FFFFFFFFFFFFFFFFFFFFFFFFFF0C81FC08C603C7E3F1F8C7BF040173FFFFFFFFFFFFFFFFFFFFFFFFF8E1903FC0F8CFB9807C610F01E0803E0FFFFFFFFFFFFFFFFFFFFFFDE33C3207F01F0987228BF13CE03C1007EC1FFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFF9E78640FE0F19716283F8771DFF8200F9E3FFFFFFFFFFFFFFFFFFFFFE3F74C81FC36798BC073E0C790FF0401EC6FFFFFFFFFFFFFFFFFFFFFE511E9903FF416F13CFC7E7C4003E0802F617FFFFFFFFFFFFFFFFFFFFC91FD3207F9879C0FBF8FDFCEA43C1205FC9FFFFFFFFFFFFFFFFFFFFFB8CFA640FC7163AFE711F11BFE7F8240B8E5FFFFFFFFFFFFFFFFFFFFF7E274C81FF5FEF938683F107839F0481243FFFFFFFFFFFFFFFFFFFFFEE15E9903FC1F1E078A87F921F41E0902831DFFFFFFFFFFFFFFFFFFFFFE3BD3207F43BD19F018FCA6BD27C1205407FFFFFFFFFFFFFFFFFFFFFFB17A640DF4350B3E311FFFFF8278240E213FFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFF727F4C81F8AA7FEFCDC3EEC32AFF0481FE47FFFFFFFFFFFFFFFFFFFFCF1FF9903FB1DC64F8787C0C7FF9E0902FE3FFFFFFFFFFFFFFFFFFFFF9FF7F3207E41CD7F70F0FC20FE67C1207E7FFFFFFFFFFFFFFFFFFFFFFBFBBE640FFF9C79BF5F9F01A40FF8240777FFFFFFFFFFFFFFFFFFFFFFFD8F2C81FFE307FFE7E7E03031FF0488F1BFFFFFFFFFFFFFFFFFFFFFCE43ED803F187BC078FCFA07FFE5E0912F09FFFFFFFFFFFFFFFFFFFFF9A13FB207F15F700D318F18FFD83C1225C87FFFFFFFFFFFFFFFFFFFFF70DFE210FC78545BE7FBC11FC3FF8240FEC7FFFFFFFFFFFFFFFFFFFFEE4FFA001F8E1823FEFF7E42340FF0483FF2FFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y23_N0
\imRead|altsyncram_component|auto_generated|ram_block1a38\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFDFFFFE3401FE5FF58C1AF97FFFFFFFFFFFFDFFF80C1E0FFFDFFFFFFFF9FFFF87C0FFF7FC71D21E9FFFEFFFFFFFFFBFFD465463FFFBFFFFFFFFFFFFFD58CFFEFF8F12A3D47FFFFFFFFFFFF7FFF430307FFE7FFFFFFFF7FFFF0F0EFF8FF5CEC2787FFF7FFFFFFFFE7FFF47911FFFCFFFFFFFFEFFFFFBF597FDFC79D41E843FFFFFFFFFFFCFFFF4C007FFFBFFFFFFFFEFFFF6D872FF2F8E1CC5C707FDFFFFFFFFF5FFDFE445FFBF7FFFFFFFFCFFF9D34F59EFF5CB08F8221FFFFFFFFFFEBFFDFE3EFFFFFBFFFFFFFFFFFF36F960563CFEE78EB323FFFFFFFFFF8FFFFBE1FFFDFF7FFFFFFFFBFF028F82C1C77FFFE1CE39FBFFFFFFFFE1FFFFF85FFFFFEFFF",
	mem_init2 => X"FFFFFFBFE208F0403AEDFFFCF85FBF7FFFFFFFFE3FFFDAEA1FFFFD7FFFFFFFFFF983B4706FDFBFFFCF89F6FFFFFFFFFF87FFFE6E3FFFFFDFFFFFFFFFFF0E05AC27F6F7FFFFC23B7BFFFFFFFFF0FFFFCE2F7FFFF9FFFFFFFFCFC3F374CFFEFEFFFFF857EFFFFFFFFFFF1FFFF218F3FFFF7FFFFFFFFFFC3E8F47FFF25FFFFFA9F7EFFFFFFFFFDAFFDC0BA57FFFFFFFFFFFFFBF95EBFFFFFC77FFFFD7BE5DFFFFFFFFF9FFFFCAFC1FFFFDFFFFFFFFFBFAF8FFFFFF967FFFFF5DCFBFFFFFFFFF3FFFF8FBEBFFFFBFFFFFFFFFFE3F16DFFBF2C7FFFE393FEFFFFFFFFFE7FFFF8FFAFF7FF7FFFFFFFFFFE7FBBFFFFF195FFF7FFEBBFFFFFFFFF8FFFFF5FF9FCFFF3FFF",
	mem_init1 => X"FFFFFFFCBE37FBFFE7D83C3FDFE7FFFFFFFFFA5DFF9FFFFFFBFFCFFFFCFFFFDFC7F5DFFFF87F9F31F3F4EFFFF1FFFF833FEFEFFFFFFFF27FFFCFFFFFF0FE0BFFFEBFC093FC7E3DFFFDDFFFC57EFC07FFFC7FFE07FFE7FFFFFF3F84FFEFD7FEBB7E7FC33FFF85FFFA4FFC80FFFC0FFFC9FFFA3FFFEFF7F438FFD47FFFE877F5F7FFF31FFF057F439FFF887FF80FFE17FFFEFD7888F9C03FFFFCC7FE7FFFFEB9FFE08FE501FFF769FF13FFDDFFFFFFEB3600071FFFF8BFFFA7BFFFE67FFCF7F8217FFFF89FE8BFF99FFFFFFD7FB81047FFFF2FCF70F7FFEF77FFF2FF975FFECD07FC17FEFB3FFFFF8FFF1FF9FFFFE3FFF73DFFF7EFFFFFE7EC01FFFCE2FF81FFBE",
	mem_init0 => X"1BFFFFFAFFFE7FFFFFF97FFFCFFFFF2BCFFFFAFE005FFEA21FF03FF3D7FFFEFEAFFFF0FFFFFE1FFFE9FFFFE1BAFFFF7FCE51FFC581FE3FFC60AFFFFFF1FFFE9FFFFAF1FFFC7FFFFC47DFFFEFFE09BBFC487FC7FF2AA0FFFFFC5FFFE1FFFA46CFFF5FFFFF5177FFFD7F004F3FA107F9FFEA7A9FFFFFFFEFFD74FF84727FD1FFFEF3AA3FFFAFFFFFFFF8CFFFBFFD5543FFEFFEFFFF2C0FC9F387F8FFFF8EA26FFFF5FFFFFFFFFFFFE7EF1915C7FDFFC7FF9B147064C07E1FFFD2ED777FFE3FFFFFFFFFFFFCFDEEEF74BFBFF97FD3894E0FE4C7ABFDFC1C54D7FFC7FFFFFFFFFFFFDFFACA8C1FF7FF17FCC4E0E4FF2CEBFFBFA5DCBCFFFCFFFFFFFFFFFFEBFF342B",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\);

-- Location: M9K_X5_Y23_N0
\imRead|altsyncram_component|auto_generated|ram_block1a26\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"A7FEFFF178E7FEBC27FCEEFFF19B5FA13FFF8FFFFFFFFFFFFD7FD615E8FFDFFF873BFFC3E17DDC9FFEBFB3BC7DFFF5FFFFFFFFFFFF8FF9A359BFFBFFF0EE37F8FF6BFBE3FFDBF7BBD75FFFBBFFFFFFFFFFEBFEBAE77F9F7FFF08CFE41FF67F71FFF3CF3F73F3FFE37FFFFFFFFFDD7FCFCADCE3EFFFE07FFA07FFA23F7FFE7AFA77A6BFFE7FFFFFFFFFFF8FF595B9793DFFFE07F9ABFFFD179FFFCF2E972B63FFD7FFFFFFFFFFEBFEFD4E9F4FBFFFE3CC8FFFFFECF3FFFBD1E4615D7FF87FFFFFFFFFF8FFAE9D89E2F7FFFFFEC2FFFFFFFCFFFF7D5F6F74C7FF87FFFFFFFFFF1FE72AF4FA3EFFFFFFE57FFFFFFEFFFFEF85DEF6BAFFFA7FFFFFFFFF97FDF42D4E",
	mem_init2 => X"9FDFFFFFBCFFFFFFFFFFFFFDFA1CCCE18FFFA7FFFFFFFFE5FF985303A7FBFFFFF3FFFFFFFFFFFFFFBF8BBDB975FFFBFFFFFFFFFC7FEE2569747F7FFFFFDFFFFFFFFFFFFFF3FCBB79433FDF97FFFFFFFF1FF8CA989D7FEFFFFFFFFFFFFFFFFFFFFEFF834A5EFBE13F7FFFFFFF6FAF78EB6B039DFFFFFFFFFFFFFFFFFFFFC8F579332FFC13CFDFFFFF93D3EE5ECEEAF1FFFFFFFFFFFFFFFFFFFFF82F170789C7E17C5FFBFFC9F07BA579389D3FFFFFFFFFFFFFFFFFFFFF02F169680DFD63F2FFFF9CF9EC305696874BFFFFFFFFFFFFFFFFFFFFF52EA61C53CFAA1F07BDB13C951D28B1E5F0FFFFFFFFFFFFFFFFFFFFFED0EAC4D41AFB6CF900117E4EB382B2F17C",
	mem_init1 => X"9FFFFFFFFFFFFFFFFFFFFFBD1E6D69E59F824FF0073F175EF905A90E2FFFFFFFFFFFFFFFFFFFFFF7D1C7C98333FF327F3F9F194FCC45132BA3FFFFFFFFFFFFFFFFFFFFFE783D3A38787FF931FFF788C5FC58F962FAFFFFFFFFFFFFFFFFFFFFFFEEBF873F3FFFFD0C6FFFFB75FFFF5DCE1F1FFFFFFFFFFFFFFFFFFFFFFDBF78D1F7EFFFFDC1FFE464F7FDE3FBF7B77FFFFFFFFFFFFFFFFFFFFFF9DFDFFFFFFFFFB11EFF58DCEFFFFFFFF38FFFFFFFFFFFFFFFFFFFFFEC1FFFFFFFFFFFE683B1D03FFFFFF7FFFFE9FFFFFFFFFFFFFFFFFFFFFDB5FFFFFFCFFFF856646A2FFFFFFFFFFF7A3FFFFFFFFFFFFFFFFFFFFFFB0FE1C000800000C08AC00001000709FF37",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFE72F7CFF39C00C03A040E145010C33FFFCE6FFFFFFFFFFFFFFFFFFFFFE42E782000000002920F602000000048D0B7FFFFFFFFFFFFFFFFFFFFFF61DE3800000000600C000000003EEFB86FFFFFFFFFFFFFFFFFFFFFFFB2F9E0806FFFB3B9480A7F7C000000FB37FFFFFFFFFFFFFFFFFFFFFFC1FF3C80007FF127E22452300000068F61CBFFFFFFFFFFFFFFFFFFFFFB9FE5C000067E0902BA88300200003E4FE4FFFFFFFFFFFFFFFFFFFFFF1CFCB870FC07EC010FD0C1FE01FFF7C9F2BFFFFFFFFFFFFFFFFFFFFFE86797FE381E06B781F4EC783C000FFD3997FFFFFFFFFFFFFFFFFFFFFF4B701FC007038C3915208CC07001FD36907F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y15_N0
\imRead|altsyncram_component|auto_generated|ram_block1a2\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFCE3FFC003F211FC478787CCFE7B1E090FFF1FFFFFFFFFFFFFFFFFFFFF9FF3F8407E1A1EC1F5FBFE9FCCFFC107FEFFFFFFFFFFFFFFFFFFFFFFF3FA7F008FCB73807F9EBECCF0D2F8247FB7FFFFFFFFFFFFFFFFFFFFFE7C2FF911FD9F2007EBCFF003299F061FF43FFFFFFFFFFFFFFFFFFFFFCE5AFF3E3FF8BFE7FF7BFE14F22FF58FED2BFFFFFFFFFFFFFFFFFFFFFB34BFFF87FF27F03FEF3FCEDC27FCEBFF927FFFFFFFFFFFFFFFFFFFFF7147FFF8FFFE2083F9E7F8011FFF9E7FFC93FFFFFFFFFFFFFFFFFFFFEE207FFF4F7FF7DF7F3CFF6BFFFFE1FFF62A7FFFFFFFFFFFFFFFFFFFFDE857FFF07FFFFF7FE79FFFFFFFF8FFFFAB5FFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFF9C00FFFF07FFF97FFCF3FFEFFFFF3FFFF013FFFFFFFFFFFFFFFFFFFFF3EFC1FFFE31FFFFFB9C7FFFFFE20FFFF8BDFFFFFFFFFFFFFFFFFFFFFEFA749FFFFE73FFFFF00FFFFFC61FFFFC2F5FFFFFFFFFFFFFFFFFFFFFDCA4663FFFF19FFFF930FFFFC63FFFF198A4FFFFFFFFFFFFFFFFFFFFFB283AABFBFFC3FFF8C0B3FE3C7FFF7F55C13FFFFFFFFFFFFFFFFFFFFF6E074A73FFFF987847FD86047FFFFD843013FFFFFFFFFFFFFFFFFFFFEC6CF0C87AFFFF0083FFE0803FFFDF1388167FFFFFFFFFFFFFFFFFFFFFAB58589EDEFFFC1FFFFCE7FFFDE5D4782B5FFFFFFFFFFFFFFFFFFFFFF8C7878A85AFFFFFFFFBFFFFFF4A5D171633FFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFF7F2A087BCFAFFFFFFEC7FFFFFF1C779D5F7FFFFFFFFFFFFFFFFFFFFFFFE34B065441FF7F3F14FFFCF7CA0A6040D7FFFFFFFFFFFFFFFFFFFFFFF5C1F2035CA1E7DBC01FFF8E182A6F0E3CFFFFFFFFFFFFFFFFFFFFFFFF985C22F6047CFCFFFFF2F38227F465E1BFFFFFFFFFFFFFFFFFFFFFFFF0E682ABA56E9E0FCCDE9E548965545843FFFFFFFFFFFFFFFFFFFFFFFF0BC432F364D9C5CD83B3D9220CCC23507FFFFFFFFFFFFFFFFFFFFFFFEDBC140F0E5B3CBEFC78F66B4199E0F2CFFFFFFFFFFFFFFFFFFFFFFFFEF771C3AB0717D7EF6F7E8E0C383AEEFBFFFFFFFFFFFFFFFFFFFFFFFFFC1AB972F0F3E1F9E3E1FFC1EF2F3E0FFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFEBDF1C3E3DFFFFFFFFFDFFBDF9F3D4FFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFF9FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFFEFFFFFFF3FFBFFCFCF0FCFFFFFFC7EFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y23_N22
\imRead|altsyncram_component|auto_generated|mux2|_~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~45_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\imRead|altsyncram_component|auto_generated|ram_block1a26~portadataout\)) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead|altsyncram_component|auto_generated|ram_block1a2~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a26~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a2~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~45_combout\);

-- Location: LCCOMB_X32_Y23_N0
\imRead|altsyncram_component|auto_generated|mux2|_~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~46_combout\ = (\imRead|altsyncram_component|auto_generated|mux2|_~45_combout\ & (((\imRead|altsyncram_component|auto_generated|ram_block1a38~portadataout\) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead|altsyncram_component|auto_generated|mux2|_~45_combout\ & (\imRead|altsyncram_component|auto_generated|ram_block1a14~portadataout\ & 
-- ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a14~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|ram_block1a38~portadataout\,
	datac => \imRead|altsyncram_component|auto_generated|mux2|_~45_combout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~46_combout\);

-- Location: LCCOMB_X32_Y23_N20
\b~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b~1_combout\ = (\process_0~13_combout\ & ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\imRead|altsyncram_component|auto_generated|mux2|_~44_combout\)) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- ((\imRead|altsyncram_component|auto_generated|mux2|_~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|mux2|_~44_combout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datac => \process_0~13_combout\,
	datad => \imRead|altsyncram_component|auto_generated|mux2|_~46_combout\,
	combout => \b~1_combout\);

-- Location: FF_X32_Y23_N21
\b[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b[2]~reg0_q\);

-- Location: M9K_X73_Y13_N0
\imRead|altsyncram_component|auto_generated|ram_block1a63\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"01010007807FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF803C001080019100600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF801000420000121006007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8030010FC021E04201C003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07820300000720048803C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE03D02000000086205182EE07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE03C182821C0000C4087184303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0160302803880000808C308081FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81180703102003C0111182100C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C20C64224400",
	mem_init2 => X"782222310307807FFFFFFFFFFFFFFFFFFFFFFFFFFFF060048C4260880108804610688083FFFFFFFFFFFFFFFFFFFFFFFFFFF81011808C0001021E11C0800110183FFFFFFFFFFFFFFFFFFFFFFFFFFC1002201940906040062810880610C1FFFFFFFFFFFFFFFFFFFFFFFFFE0000000110110804008006110082041FFFFFFFFFFFFFFFFFFFFFFFFF870C0042220021006041008420004120FFFFFFFFFFFFFFFFFFFFFFFFE1C000084444018001900210884409030FFFFFFFFFFFFFFFFFFFFFFFF0D00210CC000000000000460108D12010FFFFFFFFFFFFFFFFFFFFFFF83400611C0000000000000080003028C807FFFFFFFFFFFFFFFFFFFFFE188C8C2001E003FC87",
	mem_init1 => X"DC000401040218087FFFFFFFFFFFFFFFFFFFFF84011086008018000001C000000180030087FFFFFFFFFFFFFFFFFFFFE100210040C060000000003C000023C082007FFFFFFFFFFFFFFFFFFFF0C60000006000001FFF80006000046E0041C3FFFFFFFFFFFFFFFFFFFC38080200000007FFFFFFF80060088285045C3FFFFFFFFFFFFFFFFFFF0E00004400E01FFFFFFFFFF8030008302011C3FFFFFFFFFFFFFFFFFFC080201800201FFFFFFFFFFFF00200800040163FFFFFFFFFFFFFFFFFE021C04E00301FFFFFFFFFFFFFE0200C080C04C3FFFFFFFFFFFFFFFFF844400000181FFFFFFFFFFFFFFF8080602181163FFFFFFFFFFFFFFFFE100800010C1FFFFFFFFFFF",
	mem_init0 => X"FFFFFC0406046001E3FFFFFFFFFFFFFFFF84210860840FFFFFFFFFFFFFFFFFF0200080201E3FFFFFFFFFFFFFFFE14830078107FFFFFFFFE07FFFFFFF81001011A083FFFFFFFFFFFFFFF84000080103FFFFFFFF80003FFFFFFC08040418023FFFFFFFFFFFFFFE0008200841FFFFFFFF800000FFFFFFE04001011023FFFFFFFFFFFFFF8500C20210FFFFFFFF00000003FFFFFF00040016063FFFFFFFFFFFFFE1630C20803FFFFFFF00001C0007FFFFF83004A18783FFFFFFFFFFFFF8500084041FFFFFFF800F000C003FFFFFC1001A01803FFFFFFFFFFFFE103108410FFFFFFF800C7E1E2001FFFFFC1020A01007FFFFFFFFFFFFC404308043FFFFFFC00F80001B",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a63_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y18_N0
\imRead|altsyncram_component|auto_generated|ram_block1a51\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"8007FFFFE00306111C7FFFFFFFFFFFF180020A10FFFFFFE004C0000078003FFFFF00018011C7FFFFFFFFFFFC6000008C3FFFFFF00700FDCF834003FFFFF00001001C7FFFFFFFFFFF002003221FFFFFF801E07F87FC1C001FFFFF0410600147FFFFFFFFFFC000000007FFFFFC0070780000F0E000FFFFF841080200FFFFFFFFFFF800200021FFFFFE00041C00000F0E000FFFFF840201808FFFFFFFFFFE208300087FFFFF8000320FFFF0380000FFFFF842006008FFFFFFFFFF800830021FFFFFC0000F07C00781400007FFFF860010208FFFFFFFFFE000C18087FFFFE000060F00000F0C00007FFFF8600C1819FFFFFFFFFC00040121FFFFF80000C000700070",
	mem_init2 => X"C00007FFFFC00304011FFFFFFFFF11C0C0487FFFFE00000301C030C18000003FFFFC40010031FFFFFFFFC2C104011FFFFF000000E00E038018000003FFFFC40040003FFFFFFFF880184447FFFFC0000068C0000401C000003FFFFC60100023FFFFFFFE24011111FFFFF000000C020000210C000003FFFFC60400023FFFFFFF890C0C047FFFFC00000011880041008000003FFFFC40006067FFFFFFF30260800FFFFF000000040000021880000003FFFFC6001C047FFFFFFC40860A03FFFFC000000200000010881000003FFFFC4001004FFFFFFF100820C0FFFFF0000000800000010880000003FFFF80000208FFFFFFE20100123FFFFC000000202000000098",
	mem_init1 => X"0000003FFFF80000888FFFFFF8800010C7FFFE00000008000000008980000007FFFF88471E21FFFFFF02208011FFFF800000010000000008B00000007FFFF88881051FFFFFC01A0C047FFFF000000034000000018E00000007FFFF808800A3FFFFF900E0411FFFFC000000030000000000C00000007FFFF011E0623FFFFE20070023FFFF000000000000000000000000000FFFFF01183C07FFFFC4403008FFFFC000000000000000000000000000FFFFF1201E447FFFF00201811FFFF8000000004000000000000000000FFFFE0206000FFFFE01F00047FFFE0000000010000000001000000001FFFFE0230008FFFF887C4081FFFF8000000006000000000100",
	mem_init0 => X"0000001FFFFE04C0028FFFF0300A223FFFE00000000080000C00002000000001FFFFC4106C71FFFC4802444FFFFC0000000020000E080002000000003FFFFC0220463FFF82004111FFFF000000004000040040004000000003FFFF80040883FFF2008E027FFFE000000004000200020000000000007FFFF88183107FFC0B70800FFFF80000000000000FFE00008000000007FFFF10006207FF80E20103FFFE00000000000011C240001000000000FFFFF0220840FFE24360447FFFC000000000000500000000000000000FFFFE2426008FFC401E001FFFF00000000020007020F0000200000001FFFFE0400011FF90007C03FFFE00000000040001FBFC000040",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y17_N30
\imRead|altsyncram_component|auto_generated|mux2|_~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~47_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1)) # 
-- ((\imRead|altsyncram_component|auto_generated|ram_block1a63~portadataout\)))) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\imRead|altsyncram_component|auto_generated|ram_block1a51~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a63~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|ram_block1a51~portadataout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~47_combout\);

-- Location: M9K_X73_Y21_N0
\imRead|altsyncram_component|auto_generated|ram_block1a87\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a87_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a87_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y13_N0
\imRead|altsyncram_component|auto_generated|ram_block1a75\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0001F05F1E0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC007E1C01E000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800F800",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a75_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a75_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y17_N28
\imRead|altsyncram_component|auto_generated|mux2|_~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~48_combout\ = (\imRead|altsyncram_component|auto_generated|mux2|_~47_combout\ & (((\imRead|altsyncram_component|auto_generated|ram_block1a87~portadataout\)) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1)))) # (!\imRead|altsyncram_component|auto_generated|mux2|_~47_combout\ & (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\imRead|altsyncram_component|auto_generated|ram_block1a75~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|mux2|_~47_combout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a87~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|ram_block1a75~portadataout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~48_combout\);

-- Location: M9K_X53_Y14_N0
\imRead|altsyncram_component|auto_generated|ram_block1a15\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFE01A0D2000001F801E440003F000004901E01FFFFFFFFFFFFFFFFFFFFC0041A49FFFC03F01000007C00FFF39203003FFFFFFFFFFFFFFFFFFFF8000349300FF00FC00038FE00FF8012D80007FFFFFFFFFFFFFFFFFFFF080069240001F0003803000F8000125B0010FFFFFFFFFFFFFFFFFFFFE3E00524800003E026660C0F8000024B000F1FFFFFFFFFFFFFFFFFFFFC3F81A4938FC000F80CC1FC003E0C496001E3FFFFFFFFFFFFFFFFFFFF80DC349260030000019800006000C9208C607FFFFFFFFFFFFFFFFFFFF0018692400001F80000003F0000092481800FFFFFFFFFFFFFFFFFFFFE0000D2480200F017C0097C03004124900001FF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFC2001A4900F90000080100000008249680003FFFFFFFFFFFFFFFFFFFF89003492000800001002000001E0092D003C7FFFFFFFFFFFFFFFFFFFF09C06924000001002000007DA000925A03F8FFFFFFFFFFFFFFFFFFFFE0370D2480201067800881890000124B41B81FFFFFFFFFFFFFFFFFFFFC00E1A490001A10008D9000201EC249683003FFFFFFFFFFFFFFFFFFFF800034920004F910131A00079A20492D00007FFFFFFFFFFFFFFFFFFFF0000612403F001FC20040E000040925A0000FFFFFFFFFFFFFFFFFFFFE0000C24803F00004400800210FE124B40001FFFFFFFFFFFFFFFFFFFFC00C184900000F0008D100EC3000249683003FFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFF8018309201F0068E113007800000492D06007FFFFFFFFFFFFFFFFFFFF1C00212400098000262400006F00925A0390FFFFFFFFFFFFFFFFFFFFE2E004248002090000008183B0C0124B401F9FFFFFFFFFFFFFFFFFFFFC60008490067803F0001020005BC249680063FFFFFFFFFFFFFFFFFFFF8000109200009010100200000180492D00007FFFFFFFFFFFFFFFFFFFF0018212400A0102061440EF80000925A1800FFFFFFFFFFFFFFFFFFFFE00B0424803E001F844C806100BE124B43C01FFFFFFFFFFFFFFFFFFFFC1C4084900004200098900414210249683F83FFFFFFFFFFFFFFFFFFFF84E0109200802F00100200000000492D01EC7FFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFF0C00212407540010200400001500925A0038FFFFFFFFFFFFFFFFFFFFE0000424800E2000040080000006124B40001FFFFFFFFFFFFFFFFFFFFC000084900203280890903DF0000249680003FFFFFFFFFFFFFFFFFFFF800010920000386402020FE5B000492D00007FFFFFFFFFFFFFFFFFFFF00706124001C0000081000004E0092520E00FFFFFFFFFFFFFFFFFFFFE03C04348007800001020400001A124A40F01FFFFFFFFFFFFFFFFFFFFC1E00849000808FF00040E700000249480783FFFFFFFFFFFFFFFFFFFF870014C203802BA400003EE00000492D00387FFFFFFFFFFFFFFFFFFFF08000DA4001E440000000000BF0092580010FFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y17_N0
\imRead|altsyncram_component|auto_generated|ram_block1a27\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"1800FFF88000011E1802103FF060804240003000000000000200090A07001FFF18000027C080030FFE000800000002000000000000400240804003FFF101C000FE040043FFC000000080004000000000001000401000007FFF1430183FF80008FFF820400808000C00000000000200101402040FFFF180040FFFC1C03FFF0405000900008000000000004002420280C1FFFF180607FFFE080FFFE0C060509000080000000000100000A060303FFFF00303FFFFF007FFFC0C0A0E020001800000000006001020140C07FFFF0101FFFFFF81FFFF808080812000180000000000800085030180FFFFF000FFFFFFFC7FFFF01800080400018000000000600001C0A0",
	mem_init2 => X"601FFFFF007FFFFFFFFFFFFE018101024000180000000018002428381803FFFFF83FFFFFFFFFFFFFC0300004080000000000000200018A0603007FFFFFBFFFFFFFFFFFFFF803008284800008000000008001214140800FFFFFFFFFFFFFFFFFFFFF003030200006008000000080000410103001FFFFFFFFFFFFFFFFFFFFE60206048000E000200000600C01000004063FFFFFFFFFFFFFFFFFFFFCC0607070301E0020000030038042828300C7FFFFFFFFFFFFFFFFFFFF8C06060712029000000060001048A0606030FFFFFFFFFFFFFFFFFFFFE0C040E0A0201500C04240006A02140C180C1FFFFFFFFFFFFFFFFFFFFC0C040A0A24009000800200310045050603",
	mem_init1 => X"03FFFFFFFFFFFFFFFFFFFFC0C0808002403580033240088000E040C0C07FFFFFFFFFFFFFFFFFFFF80C08141C48008C000000061012382810180FFFFFFFFFFFFFFFFFFFFF01C0C1C3870004C0000007280387060C0401FFFFFFFFFFFFFFFFFFFFC0181800000000A3800004840000000181803FFFFFFFFFFFFFFFFFFFF8000020000000043E000F9208000000000007FFFFFFFFFFFFFFFFFFFF0000000000000004C0008203000000000010FFFFFFFFFFFFFFFFFFFFF38000000000000090000B400000000000071FFFFFFFFFFFFFFFFFFFFE4800000000000002198100000000000001E3FFFFFFFFFFFFFFFFFFFF84C0000000000000033000000000000000C8",
	mem_init0 => X"7FFFFFFFFFFFFFFFFFFFF00C00300C63FF3FC07661EBAFEF3CC000300FFFFFFFFFFFFFFFFFFFFE03C087DFFFFFFFFC64D43FFFFFFFFFB60F01FFFFFFFFFFFFFFFFFFFFC01C0000000000000E0300000000000043803FFFFFFFFFFFFFFFFFFFF80102000000004C4080040000000000000007FFFFFFFFFFFFFFFFFFFF0000431FFF8000D801C38DCFFFFFFC700000FFFFFFFFFFFFFFFFFFFFE0000838000000061C4471C00000000120031FFFFFFFFFFFFFFFFFFFFC6001078F0000000290000000000008240163FFFFFFFFFFFFFFFFFFFF87802001FFE001C00208003003FFF00080687FFFFFFFFFFFFFFFFFFFF03406800000FC03C6621DF03F800000806C0F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y15_N0
\imRead|altsyncram_component|auto_generated|ram_block1a3\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFE00001B48010E000048480001800124B00001FFFFFFFFFFFFFFFFFFFFC000006901E1013E08000160000024B000003FFFFFFFFFFFFFFFFFFFF801800D2004807F80004033012D0492004007FFFFFFFFFFFFFFFFFFFF00D000240000C00010100004D00092000B00FFFFFFFFFFFFFFFFFFFFE024000480004000000001EB0C10024000D01FFFFFFFFFFFFFFFFFFFFC0B00001000C00FC000400120180240000D83FFFFFFFFFFFFFFFFFFFF8E800002000041000408002080004800006C7FFFFFFFFFFFFFFFFFFFF1C0000010000820008100940000180008058FFFFFFFFFFFFFFFFFFFFE102000038000008010200000000700001021FFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFC01E000000000000020400000000000007803FFFFFFFFFFFFFFFFFFFF8001800000E000000408000001C0000064007FFFFFFFFFFFFFFFFFFFF01830000000C00000990000038000001C080FFFFFFFFFFFFFFFFFFFFE058900000006000060300003800000024581FFFFFFFFFFFFFFFFFFFFC1604100400000007000C01C00000008206C3FFFFFFFFFFFFFFFFFFFF8180850000000787800079F800000038486C7FFFFFFFFFFFFFFFFFFFF18101230000000000000000000000C407818FFFFFFFFFFFFFFFFFFFFC10242460000000000000000000083880D021FFFFFFFFFFFFFFFFFFFF8008081418000000000000000001828809003FFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFF8014360030400000000000000083800200007FFFFFFFFFFFFFFFFFFFE00484880A1C000000E3000000307011A1200FFFFFFFFFFFFFFFFFFFFC003001C0830E00001CE00001C70500300201FFFFFFFFFFFFFFFFFFFF8024205000E1830300000C0C3850008202403FFFFFFFFFFFFFFFFFFFF007091C14181060E021014183060A0A243807FFFFFFFFFFFFFFFFFFFE00E02385040A04181038082050E021C48700FFFFFFFFFFFFFFFFFFFFC00040E1E0C1808303030301040E061C08001FFFFFFFFFFFFFFFFFFFF800080C381070602000000060E1C1C1010003FFFFFFFFFFFFFFFFFFFF0001C102000E0C000000000C1C101000E0007FFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFE000100000000000000000000000000008000FFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFE3C000010000000C004003030F03000000381FFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y17_N26
\imRead|altsyncram_component|auto_generated|mux2|_~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~49_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead|altsyncram_component|auto_generated|ram_block1a27~portadataout\) # 
-- ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead|altsyncram_component|auto_generated|ram_block1a3~portadataout\ & 
-- !\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a27~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead|altsyncram_component|auto_generated|ram_block1a3~portadataout\,
	datad => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~49_combout\);

-- Location: M9K_X53_Y16_N0
\imRead|altsyncram_component|auto_generated|ram_block1a39\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000001FFFFC4800013FE2400104FFFF80000000000004000000000000000003FFFFC8000003FC8820011FFFF00000000000009838300000000000003FFFF88730007F102C4022FFFC00000000000009CFCC80010000000007FFFF90F00047E2011C0487FF80000000008000880E200020000000007FFFE0020800FC802381107FE00000000010000800080004000000000FFFF92401009F1020222243FC00000000020000038200008000000001FFFC24802611E2041404CC3F0000000000400001C1000000000000001FFE000087893C01001108C1E0000000001000001E0000000000000003FF84001C002380000221463C00000000020000062000000000",
	mem_init2 => X"0000007FC1D1038004720000058047800000000040000501E000000000000007F0780200100C4000103209E000000000680001800000000000000000FE313240180988000024403C000000000D000000C0000002000000001FE404083001110000048807000000000020000004040000C000000001FCC060B800032000001208E0000000000400027458800008000000003F88040000026000002041380000000002000005032000000000000007F1040000004C000000802700000000004000040004000040000000007F0080000009C000018200E0000000000000004001000008000000000FE0004000003C200080011C0000000006000008006000000000",
	mem_init1 => X"000001FC4108000003C3C3C000070000000000C000000000000000000000003F8800000004FC00000008E00000000018000010000000090000000003F9003000011FE00000011C00000000080003F80003800160000800007F0043000023FF04000027800038000180030000000000240001C0000FE008070028FFFF800808E00004800038808000000000047000680001FE0100063E1FFFE038011C00004000033003FE000FF0008C000200001FC408000007FFFC40004780000900000001C000000700130002400003F880400003FFFF100009F000008000000063800102380260000000007F9000E007FFFFC400003E00001000001810E200007100400000",
	mem_init0 => X"00000FF100018FFFFFF88000078000C0200001000180004000080004030001FF100009FFFF8F200011F0001C0400000031E2000E020100009070001FE200011FFFE04600023E00038000000001F040003F802000141C0003FE200013E7F88030008FC000280800008000300040080400058500007FC00002387E38018023F80004058000100000000700000000A0A0000FFC0000C007C60018047F006050900002000000000000100024281801FF88006008F98300011FE00C020800004000000000000200010003003FF88020068F30180047FC01C0A120000800000000000000012140E007FF88000319E300C010FF80180202000100000000000010004850",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../projects/vga/vga_lab1/logo_227x222.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_mem:imRead|altsyncram:altsyncram_component|altsyncram_6kt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sync2_clk~clkctrl_outclk\,
	ena0 => \imRead|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y17_N4
\imRead|altsyncram_component|auto_generated|mux2|_~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead|altsyncram_component|auto_generated|mux2|_~50_combout\ = (\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead|altsyncram_component|auto_generated|mux2|_~49_combout\ & 
-- ((\imRead|altsyncram_component|auto_generated|ram_block1a39~portadataout\))) # (!\imRead|altsyncram_component|auto_generated|mux2|_~49_combout\ & (\imRead|altsyncram_component|auto_generated|ram_block1a15~portadataout\)))) # 
-- (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead|altsyncram_component|auto_generated|mux2|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|ram_block1a15~portadataout\,
	datab => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead|altsyncram_component|auto_generated|mux2|_~49_combout\,
	datad => \imRead|altsyncram_component|auto_generated|ram_block1a39~portadataout\,
	combout => \imRead|altsyncram_component|auto_generated|mux2|_~50_combout\);

-- Location: LCCOMB_X52_Y17_N0
\b~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b~2_combout\ = (\process_0~13_combout\ & ((\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\imRead|altsyncram_component|auto_generated|mux2|_~48_combout\)) # (!\imRead|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- ((\imRead|altsyncram_component|auto_generated|mux2|_~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datab => \imRead|altsyncram_component|auto_generated|mux2|_~48_combout\,
	datac => \imRead|altsyncram_component|auto_generated|mux2|_~50_combout\,
	datad => \process_0~13_combout\,
	combout => \b~2_combout\);

-- Location: FF_X52_Y17_N1
\b[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \b~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b[3]~reg0_q\);

-- Location: LCCOMB_X52_Y29_N26
\process_0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~15_combout\ = ((\chooseRes~input_o\ & !hposition(3))) # (!hposition(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chooseRes~input_o\,
	datac => hposition(3),
	datad => hposition(4),
	combout => \process_0~15_combout\);

-- Location: LCCOMB_X52_Y29_N20
\LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (((\chooseRes~input_o\) # (!hposition(6))) # (!hposition(4))) # (!hposition(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(5),
	datab => hposition(4),
	datac => \chooseRes~input_o\,
	datad => hposition(6),
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X52_Y29_N6
\LessThan3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (hposition(7) & (\chooseRes~input_o\ & (\LessThan3~0_combout\))) # (!hposition(7) & ((\LessThan3~1_combout\) # ((\chooseRes~input_o\ & \LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(7),
	datab => \chooseRes~input_o\,
	datac => \LessThan3~0_combout\,
	datad => \LessThan3~1_combout\,
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X52_Y29_N0
\process_0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~14_combout\ = (((hposition(9)) # (hposition(8))) # (!\process_0~11_combout\)) # (!\LessThan3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~2_combout\,
	datab => \process_0~11_combout\,
	datac => hposition(9),
	datad => hposition(8),
	combout => \process_0~14_combout\);

-- Location: LCCOMB_X52_Y29_N16
\process_0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~16_combout\ = (\process_0~14_combout\) # ((\process_0~15_combout\ & (\LessThan3~0_combout\ & !hposition(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~15_combout\,
	datab => \process_0~14_combout\,
	datac => \LessThan3~0_combout\,
	datad => hposition(7),
	combout => \process_0~16_combout\);

-- Location: FF_X52_Y29_N17
\hsync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \process_0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync~reg0_q\);

-- Location: LCCOMB_X47_Y29_N28
\process_0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~20_combout\ = (!vposition(2) & (vposition(1) & vposition(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vposition(2),
	datac => vposition(1),
	datad => vposition(3),
	combout => \process_0~20_combout\);

-- Location: LCCOMB_X47_Y29_N22
\process_0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~19_combout\ = (vposition(2) & (((!vposition(3))))) # (!vposition(2) & ((vposition(0) & (vposition(1) & !vposition(3))) # (!vposition(0) & (!vposition(1) & vposition(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(0),
	datab => vposition(1),
	datac => vposition(2),
	datad => vposition(3),
	combout => \process_0~19_combout\);

-- Location: LCCOMB_X47_Y29_N4
\process_0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~17_combout\ = (vposition(4)) # ((vposition(5)) # ((vposition(7)) # (vposition(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(4),
	datab => vposition(5),
	datac => vposition(7),
	datad => vposition(8),
	combout => \process_0~17_combout\);

-- Location: LCCOMB_X51_Y29_N14
\process_0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~18_combout\ = (!vposition(6) & (\process_0~9_combout\ & !\process_0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(6),
	datab => \process_0~9_combout\,
	datad => \process_0~17_combout\,
	combout => \process_0~18_combout\);

-- Location: LCCOMB_X47_Y29_N16
\process_0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~21_combout\ = ((\chooseRes~input_o\ & ((\process_0~20_combout\) # (!\process_0~19_combout\))) # (!\chooseRes~input_o\ & ((\process_0~19_combout\) # (!\process_0~20_combout\)))) # (!\process_0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chooseRes~input_o\,
	datab => \process_0~20_combout\,
	datac => \process_0~19_combout\,
	datad => \process_0~18_combout\,
	combout => \process_0~21_combout\);

-- Location: FF_X47_Y29_N17
\vsync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync2_clk~clkctrl_outclk\,
	d => \process_0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync~reg0_q\);

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
END structure;


