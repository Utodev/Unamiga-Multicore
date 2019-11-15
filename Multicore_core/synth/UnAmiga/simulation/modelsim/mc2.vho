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

-- DATE "10/14/2019 22:41:46"

-- 
-- Device: Altera EP4CE22F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	stm_b12_io : INOUT std_logic;
	stm_b13_io : INOUT std_logic;
	stm_b15_io : INOUT std_logic;
	clock_50_i : IN std_logic;
	btn_n_i : IN std_logic_vector(4 DOWNTO 1);
	ps2_clk_io : INOUT std_logic;
	ps2_data_io : INOUT std_logic;
	joy1_up_i : IN std_logic;
	joy1_down_i : IN std_logic;
	joy1_left_i : IN std_logic;
	joy1_right_i : IN std_logic;
	joy1_p6_i : IN std_logic;
	joy1_p9_i : IN std_logic;
	joy2_up_i : IN std_logic;
	joy2_down_i : IN std_logic;
	joy2_left_i : IN std_logic;
	joy2_right_i : IN std_logic;
	joy2_p6_i : IN std_logic;
	joy2_p9_i : IN std_logic;
	joyX_p7_o : OUT std_logic;
	vga_r_o : OUT std_logic_vector(4 DOWNTO 0);
	vga_g_o : OUT std_logic_vector(4 DOWNTO 0);
	vga_b_o : OUT std_logic_vector(4 DOWNTO 0);
	vga_hsync_n_o : OUT std_logic;
	vga_vsync_n_o : OUT std_logic;
	stm_rst_o : OUT std_logic;
	stm_b14_io : INOUT std_logic
	);
END top;

-- Design Ports Information
-- btn_n_i[1]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- btn_n_i[2]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- btn_n_i[3]	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- btn_n_i[4]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- joy2_up_i	=>  Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- joy2_down_i	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- joy2_left_i	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- joy2_right_i	=>  Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- joy2_p6_i	=>  Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- joy2_p9_i	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- joyX_p7_o	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r_o[0]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r_o[1]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r_o[2]	=>  Location: PIN_E6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r_o[3]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r_o[4]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g_o[0]	=>  Location: PIN_M10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g_o[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g_o[2]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g_o[3]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g_o[4]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b_o[0]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b_o[1]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b_o[2]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b_o[3]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b_o[4]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_hsync_n_o	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_vsync_n_o	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- stm_rst_o	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ps2_clk_io	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ps2_data_io	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- stm_b12_io	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- stm_b13_io	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- stm_b14_io	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- stm_b15_io	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clock_50_i	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- joy1_down_i	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- joy1_left_i	=>  Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- joy1_right_i	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- joy1_up_i	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- joy1_p6_i	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- joy1_p9_i	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50_i : std_logic;
SIGNAL ww_btn_n_i : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_joy1_up_i : std_logic;
SIGNAL ww_joy1_down_i : std_logic;
SIGNAL ww_joy1_left_i : std_logic;
SIGNAL ww_joy1_right_i : std_logic;
SIGNAL ww_joy1_p6_i : std_logic;
SIGNAL ww_joy1_p9_i : std_logic;
SIGNAL ww_joy2_up_i : std_logic;
SIGNAL ww_joy2_down_i : std_logic;
SIGNAL ww_joy2_left_i : std_logic;
SIGNAL ww_joy2_right_i : std_logic;
SIGNAL ww_joy2_p6_i : std_logic;
SIGNAL ww_joy2_p9_i : std_logic;
SIGNAL ww_joyX_p7_o : std_logic;
SIGNAL ww_vga_r_o : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_vga_g_o : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_vga_b_o : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_vga_hsync_n_o : std_logic;
SIGNAL ww_vga_vsync_n_o : std_logic;
SIGNAL ww_stm_rst_o : std_logic;
SIGNAL \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U00|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U00|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \kb|ps2_alt0|sigtrigger~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga1|hs~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_div_q[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \kb|ps2_alt0|FROMPS2~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \kb|ps2_alt0|sigsendend~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \kb|ps2_alt0|process_2~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \btn_n_i[1]~input_o\ : std_logic;
SIGNAL \btn_n_i[2]~input_o\ : std_logic;
SIGNAL \btn_n_i[3]~input_o\ : std_logic;
SIGNAL \btn_n_i[4]~input_o\ : std_logic;
SIGNAL \joy2_up_i~input_o\ : std_logic;
SIGNAL \joy2_down_i~input_o\ : std_logic;
SIGNAL \joy2_left_i~input_o\ : std_logic;
SIGNAL \joy2_right_i~input_o\ : std_logic;
SIGNAL \joy2_p6_i~input_o\ : std_logic;
SIGNAL \joy2_p9_i~input_o\ : std_logic;
SIGNAL \stm_b14_io~input_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \clock_50_i~input_o\ : std_logic;
SIGNAL \U00|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \stm_rst_o~reg0feeder_combout\ : std_logic;
SIGNAL \stm_rst_o~reg0_q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \power_on_s[0]~0_combout\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \power_on_s[1]~7_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \power_on_s[2]~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \power_on_s[3]~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \power_on_s[4]~4_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \power_on_s[5]~3_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \power_on_s[6]~2_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \power_on_s[7]~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \stm_rst_o~en_q\ : std_logic;
SIGNAL \vga1|Add0~0_combout\ : std_logic;
SIGNAL \clock_div_q[1]~1_combout\ : std_logic;
SIGNAL \clock_div_q[1]~clkctrl_outclk\ : std_logic;
SIGNAL \kb|ps2_alt0|count[0]~8_combout\ : std_logic;
SIGNAL \ps2_clk_io~input_o\ : std_logic;
SIGNAL \kb|ps2_alt0|rcount[2]~1_combout\ : std_logic;
SIGNAL \reset_s~0_combout\ : std_logic;
SIGNAL \reset_s~q\ : std_logic;
SIGNAL \kb|ps2_alt0|rcount[0]~3_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|rcount~2_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|rcount[0]~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|fcount[0]~2_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|fcount[2]~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|fcount~1_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|sigtrigger~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|sigtrigger~1_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|sigtrigger~q\ : std_logic;
SIGNAL \kb|ps2_alt0|sigtrigger~clkctrl_outclk\ : std_logic;
SIGNAL \kb|ps2_alt0|TOPS2:count[0]~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|count[4]~17\ : std_logic;
SIGNAL \kb|ps2_alt0|count[5]~18_combout\ : std_logic;
SIGNAL \ps2_data_io~input_o\ : std_logic;
SIGNAL \kb|ps2_alt0|Add3~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|count~25_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|FROMPS2~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|FROMPS2~0clkctrl_outclk\ : std_logic;
SIGNAL \kb|ps2_alt0|FROMPS2:count[3]~q\ : std_logic;
SIGNAL \kb|ps2_alt0|Equal2~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|count~26_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|count~27_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|FROMPS2:count[2]~q\ : std_logic;
SIGNAL \kb|ps2_alt0|Equal0~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|FROMPS2:count[0]~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|FROMPS2:count[0]~q\ : std_logic;
SIGNAL \kb|ps2_alt0|count~28_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|FROMPS2:count[1]~q\ : std_logic;
SIGNAL \kb|ps2_alt0|Decoder0~5_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|sdata[2]~5_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|Decoder0~6_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|sdata[3]~6_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|Decoder0~4_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|sdata[1]~4_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|Decoder0~2_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|sdata[7]~2_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|Decoder0~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|sdata[6]~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|Decoder0~3_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|sdata[0]~3_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|Decoder0~1_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|sdata[5]~1_combout\ : std_logic;
SIGNAL \kb|Equal2~1_combout\ : std_logic;
SIGNAL \kb|Equal2~2_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|Equal1~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|parchecked~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|Decoder0~7_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|sdata[4]~7_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|FROMPS2~2_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|FROMPS2~1_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|parchecked~1_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|parchecked~2_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|parchecked~q\ : std_logic;
SIGNAL \kb|keymap_seq_s~16_combout\ : std_logic;
SIGNAL \kb|Equal1~1_combout\ : std_logic;
SIGNAL \kb|Equal1~0_combout\ : std_logic;
SIGNAL \kb|keymap_seq_s~17_combout\ : std_logic;
SIGNAL \kb|keymap_seq_s.KM_READ~q\ : std_logic;
SIGNAL \kb|keymap_seq_s.KM_END~feeder_combout\ : std_logic;
SIGNAL \kb|keymap_seq_s.KM_END~q\ : std_logic;
SIGNAL \kb|Selector0~0_combout\ : std_logic;
SIGNAL \kb|keymap_seq_s.KM_IDLE~q\ : std_logic;
SIGNAL \kb|keymap_seq_s~18_combout\ : std_logic;
SIGNAL \kb|keymap_seq_s.KM_SEND~q\ : std_logic;
SIGNAL \kb|data_send_rdy_s~q\ : std_logic;
SIGNAL \kb|ps2_alt0|sigsending~feeder_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|sigsending~q\ : std_logic;
SIGNAL \kb|ps2_alt0|count[7]~24_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|count[5]~19\ : std_logic;
SIGNAL \kb|ps2_alt0|count[6]~20_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|LessThan3~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|LessThan3~1_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|count[6]~21\ : std_logic;
SIGNAL \kb|ps2_alt0|count[7]~22_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|sigclkheld~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|sigclkheld~q\ : std_logic;
SIGNAL \kb|ps2_alt0|TOPS2~1_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|sigsendend~2_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|sigsendend~2clkctrl_outclk\ : std_logic;
SIGNAL \kb|ps2_alt0|sigclkreleased~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|sigclkreleased~q\ : std_logic;
SIGNAL \kb|ps2_alt0|TOPS2~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|TOPS2:count[0]~q\ : std_logic;
SIGNAL \kb|ps2_alt0|TOPS2:count[2]~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|TOPS2:count[2]~q\ : std_logic;
SIGNAL \kb|ps2_alt0|Add6~1_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|TOPS2:count[1]~q\ : std_logic;
SIGNAL \kb|ps2_alt0|Add6~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|TOPS2:count[3]~q\ : std_logic;
SIGNAL \kb|ps2_alt0|sigsendend~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|Equal6~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|sigsendend~1_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|sigsendend~q\ : std_logic;
SIGNAL \kb|ps2_alt0|process_2~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|process_2~0clkctrl_outclk\ : std_logic;
SIGNAL \kb|ps2_alt0|count[0]~9\ : std_logic;
SIGNAL \kb|ps2_alt0|count[1]~10_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|count[1]~11\ : std_logic;
SIGNAL \kb|ps2_alt0|count[2]~12_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|count[2]~13\ : std_logic;
SIGNAL \kb|ps2_alt0|count[3]~14_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|count[3]~15\ : std_logic;
SIGNAL \kb|ps2_alt0|count[4]~16_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|ps2_clk_io~2_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|ps2_clk_io~1_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|ps2_clk_io~3_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|ps2_clk_io~en_q\ : std_logic;
SIGNAL \kb|ps2_alt0|ps2_data_io~9_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|ps2_data_io~8_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|ps2_data_io~reg0_q\ : std_logic;
SIGNAL \kb|ps2_alt0|ps2_data_io~1_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|Equal6~1_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|ps2_data_io~3_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|ps2_data_io~0_combout\ : std_logic;
SIGNAL \kb|ps2_alt0|ps2_data_io~en_emulated_q\ : std_logic;
SIGNAL \kb|ps2_alt0|ps2_data_io~2_combout\ : std_logic;
SIGNAL \stm_b13_io~input_o\ : std_logic;
SIGNAL \stm_b15_io~input_o\ : std_logic;
SIGNAL \stm_b12_io~input_o\ : std_logic;
SIGNAL \osd1|cnt[0]~37_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \osd1|cnt[2]~42\ : std_logic;
SIGNAL \osd1|cnt[3]~43_combout\ : std_logic;
SIGNAL \osd1|cnt[3]~44\ : std_logic;
SIGNAL \osd1|cnt[4]~45_combout\ : std_logic;
SIGNAL \osd1|sdo_s~0_combout\ : std_logic;
SIGNAL \osd1|LessThan0~0_combout\ : std_logic;
SIGNAL \osd1|cnt[0]~38\ : std_logic;
SIGNAL \osd1|cnt[1]~39_combout\ : std_logic;
SIGNAL \osd1|cnt[1]~40\ : std_logic;
SIGNAL \osd1|cnt[2]~41_combout\ : std_logic;
SIGNAL \osd1|Equal3~0_combout\ : std_logic;
SIGNAL \osd1|cmd[7]~0_combout\ : std_logic;
SIGNAL \vga1|Add0~1\ : std_logic;
SIGNAL \vga1|Add0~2_combout\ : std_logic;
SIGNAL \vga1|Add0~3\ : std_logic;
SIGNAL \vga1|Add0~4_combout\ : std_logic;
SIGNAL \vga1|Add0~5\ : std_logic;
SIGNAL \vga1|Add0~6_combout\ : std_logic;
SIGNAL \vga1|Add0~7\ : std_logic;
SIGNAL \vga1|Add0~8_combout\ : std_logic;
SIGNAL \vga1|Add0~9\ : std_logic;
SIGNAL \vga1|Add0~10_combout\ : std_logic;
SIGNAL \vga1|Add0~13\ : std_logic;
SIGNAL \vga1|Add0~14_combout\ : std_logic;
SIGNAL \vga1|Add0~15\ : std_logic;
SIGNAL \vga1|Add0~16_combout\ : std_logic;
SIGNAL \vga1|h_cnt~2_combout\ : std_logic;
SIGNAL \vga1|Add0~17\ : std_logic;
SIGNAL \vga1|Add0~18_combout\ : std_logic;
SIGNAL \vga1|h_cnt~1_combout\ : std_logic;
SIGNAL \vga1|Equal0~0_combout\ : std_logic;
SIGNAL \vga1|Equal0~1_combout\ : std_logic;
SIGNAL \vga1|Equal0~2_combout\ : std_logic;
SIGNAL \vga1|h_cnt~0_combout\ : std_logic;
SIGNAL \vga1|Add0~11\ : std_logic;
SIGNAL \vga1|Add0~12_combout\ : std_logic;
SIGNAL \vga1|Equal1~0_combout\ : std_logic;
SIGNAL \vga1|Equal1~1_combout\ : std_logic;
SIGNAL \vga1|Equal1~2_combout\ : std_logic;
SIGNAL \vga1|hs~0_combout\ : std_logic;
SIGNAL \vga1|hs~q\ : std_logic;
SIGNAL \vga1|hs~clkctrl_outclk\ : std_logic;
SIGNAL \joy1_p9_i~input_o\ : std_logic;
SIGNAL \joy1_s[5]~6_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \joy1_p6_i~input_o\ : std_logic;
SIGNAL \joy1_s[6]~0_combout\ : std_logic;
SIGNAL \joy1_s[4]~7_combout\ : std_logic;
SIGNAL \kb|keys_s~0_combout\ : std_logic;
SIGNAL \kb|keys_s~1_combout\ : std_logic;
SIGNAL \kb|keys_s~2_combout\ : std_logic;
SIGNAL \kb|Mux4~5_combout\ : std_logic;
SIGNAL \kb|Mux0~1_combout\ : std_logic;
SIGNAL \kb|Selector3~1_combout\ : std_logic;
SIGNAL \kb|Selector2~0_combout\ : std_logic;
SIGNAL \kb|Selector2~1_combout\ : std_logic;
SIGNAL \kb|extended_s~q\ : std_logic;
SIGNAL \kb|keys_s~4_combout\ : std_logic;
SIGNAL \kb|keys_s~5_combout\ : std_logic;
SIGNAL \kb|Mux0~0_combout\ : std_logic;
SIGNAL \kb|Selector3~0_combout\ : std_logic;
SIGNAL \kb|Selector3~2_combout\ : std_logic;
SIGNAL \kb|release_s~q\ : std_logic;
SIGNAL \kb|keys_s~3_combout\ : std_logic;
SIGNAL \kb|keys_s~6_combout\ : std_logic;
SIGNAL \osd1|sdo_s~3_combout\ : std_logic;
SIGNAL \joy1_down_i~input_o\ : std_logic;
SIGNAL \joy1_s[1]~1_combout\ : std_logic;
SIGNAL \joy1_up_i~input_o\ : std_logic;
SIGNAL \joy1_s[0]~4_combout\ : std_logic;
SIGNAL \kb|Mux3~3_combout\ : std_logic;
SIGNAL \kb|Mux3~4_combout\ : std_logic;
SIGNAL \kb|Mux3~5_combout\ : std_logic;
SIGNAL \kb|Mux3~8_combout\ : std_logic;
SIGNAL \kb|Equal2~0_combout\ : std_logic;
SIGNAL \kb|Mux3~2_combout\ : std_logic;
SIGNAL \kb|Mux3~6_combout\ : std_logic;
SIGNAL \kb|Mux3~7_combout\ : std_logic;
SIGNAL \kb|Mux4~2_combout\ : std_logic;
SIGNAL \kb|Mux4~3_combout\ : std_logic;
SIGNAL \kb|Mux4~4_combout\ : std_logic;
SIGNAL \kb|Mux4~6_combout\ : std_logic;
SIGNAL \kb|Mux1~4_combout\ : std_logic;
SIGNAL \kb|Mux4~7_combout\ : std_logic;
SIGNAL \kb|Mux4~8_combout\ : std_logic;
SIGNAL \kb|Mux4~9_combout\ : std_logic;
SIGNAL \kb|Mux4~0_combout\ : std_logic;
SIGNAL \kb|Mux4~1_combout\ : std_logic;
SIGNAL \kb|Mux4~10_combout\ : std_logic;
SIGNAL \joy1_left_i~input_o\ : std_logic;
SIGNAL \joy1_s[2]~2_combout\ : std_logic;
SIGNAL \joy1_right_i~input_o\ : std_logic;
SIGNAL \joy1_s[3]~3_combout\ : std_logic;
SIGNAL \kb|Mux1~0_combout\ : std_logic;
SIGNAL \kb|Mux1~1_combout\ : std_logic;
SIGNAL \kb|Mux1~2_combout\ : std_logic;
SIGNAL \kb|Mux1~3_combout\ : std_logic;
SIGNAL \kb|Mux1~5_combout\ : std_logic;
SIGNAL \kb|Mux1~6_combout\ : std_logic;
SIGNAL \kb|Mux1~7_combout\ : std_logic;
SIGNAL \kb|Mux1~8_combout\ : std_logic;
SIGNAL \osd1|Mux0~0_combout\ : std_logic;
SIGNAL \kb|Mux2~0_combout\ : std_logic;
SIGNAL \kb|Mux2~2_combout\ : std_logic;
SIGNAL \kb|Mux2~1_combout\ : std_logic;
SIGNAL \kb|Mux2~3_combout\ : std_logic;
SIGNAL \kb|Mux2~5_combout\ : std_logic;
SIGNAL \kb|Mux2~6_combout\ : std_logic;
SIGNAL \kb|Mux2~4_combout\ : std_logic;
SIGNAL \kb|Mux2~7_combout\ : std_logic;
SIGNAL \kb|Mux2~8_combout\ : std_logic;
SIGNAL \osd1|Mux0~1_combout\ : std_logic;
SIGNAL \osd1|Mux0~2_combout\ : std_logic;
SIGNAL \osd1|Mux0~3_combout\ : std_logic;
SIGNAL \osd1|sdo_s~4_combout\ : std_logic;
SIGNAL \osd1|sbuf[5]~feeder_combout\ : std_logic;
SIGNAL \osd1|cmd[6]~feeder_combout\ : std_logic;
SIGNAL \osd1|sbuf[6]~feeder_combout\ : std_logic;
SIGNAL \osd1|Equal0~0_combout\ : std_logic;
SIGNAL \osd1|Equal0~1_combout\ : std_logic;
SIGNAL \osd1|sram_data_s[2]~feeder_combout\ : std_logic;
SIGNAL \osd1|Equal7~0_combout\ : std_logic;
SIGNAL \osd1|Equal9~0_combout\ : std_logic;
SIGNAL \osd1|osd_buffer~0_combout\ : std_logic;
SIGNAL \osd1|Equal10~0_combout\ : std_logic;
SIGNAL \osd1|sram_data_s[0]~0_combout\ : std_logic;
SIGNAL \osd1|Mux2~0_combout\ : std_logic;
SIGNAL \osd1|sram_data_s[1]~feeder_combout\ : std_logic;
SIGNAL \osd1|Mux2~1_combout\ : std_logic;
SIGNAL \osd1|sram_data_s[5]~feeder_combout\ : std_logic;
SIGNAL \osd1|Mux2~2_combout\ : std_logic;
SIGNAL \osd1|Mux2~3_combout\ : std_logic;
SIGNAL \osd1|sdo_s~1_combout\ : std_logic;
SIGNAL \osd1|Mux1~0_combout\ : std_logic;
SIGNAL \osd1|sdo_s~2_combout\ : std_logic;
SIGNAL \osd1|sdo_s~5_combout\ : std_logic;
SIGNAL \osd1|Equal0~2_combout\ : std_logic;
SIGNAL \osd1|sdo_s~6_combout\ : std_logic;
SIGNAL \osd1|sdo_s~q\ : std_logic;
SIGNAL \osd1|sdo_s~enfeeder_combout\ : std_logic;
SIGNAL \osd1|sdo_s~en_q\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \joyP7_s~q\ : std_logic;
SIGNAL \info1|localX[0]~11_combout\ : std_logic;
SIGNAL \info1|hPos[0]~11_combout\ : std_logic;
SIGNAL \info1|oldH~q\ : std_logic;
SIGNAL \info1|process_0~0_combout\ : std_logic;
SIGNAL \info1|hPos[0]~12\ : std_logic;
SIGNAL \info1|hPos[1]~13_combout\ : std_logic;
SIGNAL \info1|hPos[1]~14\ : std_logic;
SIGNAL \info1|hPos[2]~15_combout\ : std_logic;
SIGNAL \info1|hPos[2]~16\ : std_logic;
SIGNAL \info1|hPos[3]~17_combout\ : std_logic;
SIGNAL \info1|hPos[3]~18\ : std_logic;
SIGNAL \info1|hPos[4]~19_combout\ : std_logic;
SIGNAL \info1|hPos[4]~20\ : std_logic;
SIGNAL \info1|hPos[5]~21_combout\ : std_logic;
SIGNAL \info1|hPos[5]~22\ : std_logic;
SIGNAL \info1|hPos[6]~23_combout\ : std_logic;
SIGNAL \info1|hPos[6]~24\ : std_logic;
SIGNAL \info1|hPos[7]~25_combout\ : std_logic;
SIGNAL \info1|Equal0~1_combout\ : std_logic;
SIGNAL \info1|hPos[7]~26\ : std_logic;
SIGNAL \info1|hPos[8]~27_combout\ : std_logic;
SIGNAL \info1|hPos[8]~28\ : std_logic;
SIGNAL \info1|hPos[9]~29_combout\ : std_logic;
SIGNAL \info1|hPos[9]~30\ : std_logic;
SIGNAL \info1|hPos[10]~31_combout\ : std_logic;
SIGNAL \info1|Equal0~2_combout\ : std_logic;
SIGNAL \info1|Equal0~0_combout\ : std_logic;
SIGNAL \info1|Equal0~3_combout\ : std_logic;
SIGNAL \info1|localX[1]~29_combout\ : std_logic;
SIGNAL \info1|localX[0]~12\ : std_logic;
SIGNAL \info1|localX[1]~13_combout\ : std_logic;
SIGNAL \info1|localX[1]~14\ : std_logic;
SIGNAL \info1|localX[2]~15_combout\ : std_logic;
SIGNAL \info1|localX[2]~16\ : std_logic;
SIGNAL \info1|localX[3]~17_combout\ : std_logic;
SIGNAL \info1|localX[3]~18\ : std_logic;
SIGNAL \info1|localX[4]~19_combout\ : std_logic;
SIGNAL \info1|localX[4]~20\ : std_logic;
SIGNAL \info1|localX[5]~21_combout\ : std_logic;
SIGNAL \info1|localX[5]~22\ : std_logic;
SIGNAL \info1|localX[6]~23_combout\ : std_logic;
SIGNAL \info1|process_1~0_combout\ : std_logic;
SIGNAL \info1|runX~0_combout\ : std_logic;
SIGNAL \info1|runX~q\ : std_logic;
SIGNAL \info1|process_1~1_combout\ : std_logic;
SIGNAL \info1|localX[6]~24\ : std_logic;
SIGNAL \info1|localX[7]~25_combout\ : std_logic;
SIGNAL \info1|localX[7]~26\ : std_logic;
SIGNAL \info1|localX[8]~27_combout\ : std_logic;
SIGNAL \info1|process_1~2_combout\ : std_logic;
SIGNAL \info1|vPos[0]~10_combout\ : std_logic;
SIGNAL \vga1|Add1~3\ : std_logic;
SIGNAL \vga1|Add1~4_combout\ : std_logic;
SIGNAL \vga1|v_cnt~3_combout\ : std_logic;
SIGNAL \vga1|Equal1~3_combout\ : std_logic;
SIGNAL \vga1|Add1~5\ : std_logic;
SIGNAL \vga1|Add1~6_combout\ : std_logic;
SIGNAL \vga1|v_cnt~0_combout\ : std_logic;
SIGNAL \vga1|Add1~7\ : std_logic;
SIGNAL \vga1|Add1~8_combout\ : std_logic;
SIGNAL \vga1|Add1~9\ : std_logic;
SIGNAL \vga1|Add1~10_combout\ : std_logic;
SIGNAL \vga1|Add1~11\ : std_logic;
SIGNAL \vga1|Add1~12_combout\ : std_logic;
SIGNAL \vga1|Add1~13\ : std_logic;
SIGNAL \vga1|Add1~14_combout\ : std_logic;
SIGNAL \vga1|Add1~15\ : std_logic;
SIGNAL \vga1|Add1~16_combout\ : std_logic;
SIGNAL \vga1|Equal3~1_combout\ : std_logic;
SIGNAL \vga1|Add1~17\ : std_logic;
SIGNAL \vga1|Add1~18_combout\ : std_logic;
SIGNAL \vga1|v_cnt~1_combout\ : std_logic;
SIGNAL \vga1|Equal3~0_combout\ : std_logic;
SIGNAL \vga1|Equal3~2_combout\ : std_logic;
SIGNAL \vga1|Add1~0_combout\ : std_logic;
SIGNAL \vga1|v_cnt~2_combout\ : std_logic;
SIGNAL \vga1|Add1~1\ : std_logic;
SIGNAL \vga1|Add1~2_combout\ : std_logic;
SIGNAL \vga1|Equal5~0_combout\ : std_logic;
SIGNAL \vga1|Equal5~1_combout\ : std_logic;
SIGNAL \vga1|Equal5~2_combout\ : std_logic;
SIGNAL \vga1|vs~0_combout\ : std_logic;
SIGNAL \vga1|vs~q\ : std_logic;
SIGNAL \info1|oldV~q\ : std_logic;
SIGNAL \info1|process_0~1_combout\ : std_logic;
SIGNAL \info1|vPos[7]~18_combout\ : std_logic;
SIGNAL \info1|vPos[0]~11\ : std_logic;
SIGNAL \info1|vPos[1]~12_combout\ : std_logic;
SIGNAL \info1|vPos[1]~13\ : std_logic;
SIGNAL \info1|vPos[2]~14_combout\ : std_logic;
SIGNAL \info1|vPos[2]~15\ : std_logic;
SIGNAL \info1|vPos[3]~16_combout\ : std_logic;
SIGNAL \info1|vPos[3]~17\ : std_logic;
SIGNAL \info1|vPos[4]~19_combout\ : std_logic;
SIGNAL \info1|vPos[4]~20\ : std_logic;
SIGNAL \info1|vPos[5]~21_combout\ : std_logic;
SIGNAL \info1|vPos[5]~22\ : std_logic;
SIGNAL \info1|vPos[6]~23_combout\ : std_logic;
SIGNAL \info1|vPos[6]~24\ : std_logic;
SIGNAL \info1|vPos[7]~25_combout\ : std_logic;
SIGNAL \info1|runY~3_combout\ : std_logic;
SIGNAL \info1|vPos[7]~26\ : std_logic;
SIGNAL \info1|vPos[8]~27_combout\ : std_logic;
SIGNAL \info1|vPos[8]~28\ : std_logic;
SIGNAL \info1|vPos[9]~29_combout\ : std_logic;
SIGNAL \info1|runY~2_combout\ : std_logic;
SIGNAL \info1|runY~6_combout\ : std_logic;
SIGNAL \info1|localY~2_combout\ : std_logic;
SIGNAL \info1|localY[0]~4_combout\ : std_logic;
SIGNAL \info1|localY[1]~5_combout\ : std_logic;
SIGNAL \info1|Add2~0_combout\ : std_logic;
SIGNAL \info1|localY[2]~3_combout\ : std_logic;
SIGNAL \info1|Add2~1_combout\ : std_logic;
SIGNAL \info1|localY[3]~6_combout\ : std_logic;
SIGNAL \info1|Equal3~0_combout\ : std_logic;
SIGNAL \info1|runY~4_combout\ : std_logic;
SIGNAL \info1|runY~5_combout\ : std_logic;
SIGNAL \info1|runY~q\ : std_logic;
SIGNAL \osd1|v_cnt[0]~10_combout\ : std_logic;
SIGNAL \osd1|vsD~feeder_combout\ : std_logic;
SIGNAL \osd1|hs~q\ : std_logic;
SIGNAL \osd1|pixcnt[0]~32_combout\ : std_logic;
SIGNAL \osd1|cnt[0]~47_combout\ : std_logic;
SIGNAL \osd1|always2~0_combout\ : std_logic;
SIGNAL \osd1|cnt[0]~reg1_q\ : std_logic;
SIGNAL \osd1|cnt[0]~48\ : std_logic;
SIGNAL \osd1|cnt[1]~49_combout\ : std_logic;
SIGNAL \osd1|cnt[1]~reg1_q\ : std_logic;
SIGNAL \osd1|cnt[1]~50\ : std_logic;
SIGNAL \osd1|cnt[2]~51_combout\ : std_logic;
SIGNAL \osd1|cnt[2]~reg1_q\ : std_logic;
SIGNAL \osd1|cnt[2]~52\ : std_logic;
SIGNAL \osd1|cnt[3]~53_combout\ : std_logic;
SIGNAL \osd1|cnt[3]~reg1_q\ : std_logic;
SIGNAL \osd1|cnt[3]~54\ : std_logic;
SIGNAL \osd1|cnt[4]~55_combout\ : std_logic;
SIGNAL \osd1|cnt[4]~reg1_q\ : std_logic;
SIGNAL \osd1|cnt[4]~56\ : std_logic;
SIGNAL \osd1|cnt[5]~57_combout\ : std_logic;
SIGNAL \osd1|cnt[5]~58\ : std_logic;
SIGNAL \osd1|cnt[6]~59_combout\ : std_logic;
SIGNAL \osd1|cnt[6]~60\ : std_logic;
SIGNAL \osd1|cnt[7]~61_combout\ : std_logic;
SIGNAL \osd1|cnt[7]~62\ : std_logic;
SIGNAL \osd1|cnt[8]~63_combout\ : std_logic;
SIGNAL \osd1|cnt[8]~64\ : std_logic;
SIGNAL \osd1|cnt[9]~65_combout\ : std_logic;
SIGNAL \osd1|cnt[9]~66\ : std_logic;
SIGNAL \osd1|cnt[10]~67_combout\ : std_logic;
SIGNAL \osd1|cnt[10]~68\ : std_logic;
SIGNAL \osd1|cnt[11]~69_combout\ : std_logic;
SIGNAL \osd1|cnt[11]~70\ : std_logic;
SIGNAL \osd1|cnt[12]~71_combout\ : std_logic;
SIGNAL \osd1|cnt[12]~72\ : std_logic;
SIGNAL \osd1|cnt[13]~73_combout\ : std_logic;
SIGNAL \osd1|cnt[13]~74\ : std_logic;
SIGNAL \osd1|cnt[14]~75_combout\ : std_logic;
SIGNAL \osd1|cnt[14]~76\ : std_logic;
SIGNAL \osd1|cnt[15]~77_combout\ : std_logic;
SIGNAL \osd1|cnt[15]~78\ : std_logic;
SIGNAL \osd1|cnt[16]~79_combout\ : std_logic;
SIGNAL \osd1|cnt[16]~80\ : std_logic;
SIGNAL \osd1|cnt[17]~81_combout\ : std_logic;
SIGNAL \osd1|cnt[17]~82\ : std_logic;
SIGNAL \osd1|cnt[18]~83_combout\ : std_logic;
SIGNAL \osd1|cnt[18]~84\ : std_logic;
SIGNAL \osd1|cnt[19]~85_combout\ : std_logic;
SIGNAL \osd1|cnt[19]~86\ : std_logic;
SIGNAL \osd1|cnt[20]~87_combout\ : std_logic;
SIGNAL \osd1|cnt[20]~88\ : std_logic;
SIGNAL \osd1|cnt[21]~89_combout\ : std_logic;
SIGNAL \osd1|cnt[21]~90\ : std_logic;
SIGNAL \osd1|cnt[22]~91_combout\ : std_logic;
SIGNAL \osd1|cnt[22]~92\ : std_logic;
SIGNAL \osd1|cnt[23]~93_combout\ : std_logic;
SIGNAL \osd1|cnt[23]~94\ : std_logic;
SIGNAL \osd1|cnt[24]~95_combout\ : std_logic;
SIGNAL \osd1|cnt[24]~96\ : std_logic;
SIGNAL \osd1|cnt[25]~97_combout\ : std_logic;
SIGNAL \osd1|cnt[25]~98\ : std_logic;
SIGNAL \osd1|cnt[26]~99_combout\ : std_logic;
SIGNAL \osd1|pixsz[1]~24_cout\ : std_logic;
SIGNAL \osd1|pixsz[1]~26\ : std_logic;
SIGNAL \osd1|pixsz[2]~29\ : std_logic;
SIGNAL \osd1|pixsz[3]~31\ : std_logic;
SIGNAL \osd1|pixsz[4]~33\ : std_logic;
SIGNAL \osd1|pixsz[5]~35\ : std_logic;
SIGNAL \osd1|pixsz[6]~37\ : std_logic;
SIGNAL \osd1|pixsz[7]~39\ : std_logic;
SIGNAL \osd1|pixsz[8]~41\ : std_logic;
SIGNAL \osd1|pixsz[9]~43\ : std_logic;
SIGNAL \osd1|pixsz[10]~45\ : std_logic;
SIGNAL \osd1|pixsz[11]~47\ : std_logic;
SIGNAL \osd1|pixsz[12]~49\ : std_logic;
SIGNAL \osd1|pixsz[13]~51\ : std_logic;
SIGNAL \osd1|pixsz[14]~53\ : std_logic;
SIGNAL \osd1|pixsz[15]~55\ : std_logic;
SIGNAL \osd1|pixsz[16]~57\ : std_logic;
SIGNAL \osd1|pixsz[17]~58_combout\ : std_logic;
SIGNAL \osd1|pixsz[16]~56_combout\ : std_logic;
SIGNAL \osd1|pixcnt[5]~34_combout\ : std_logic;
SIGNAL \osd1|pixsz[7]~38_combout\ : std_logic;
SIGNAL \osd1|pixsz[6]~36_combout\ : std_logic;
SIGNAL \osd1|Equal11~3_combout\ : std_logic;
SIGNAL \osd1|pixsz[3]~30_combout\ : std_logic;
SIGNAL \osd1|pixsz[2]~28_combout\ : std_logic;
SIGNAL \osd1|Equal11~1_combout\ : std_logic;
SIGNAL \osd1|pixsz[1]~25_combout\ : std_logic;
SIGNAL \osd1|pixsz[0]~27_combout\ : std_logic;
SIGNAL \osd1|Equal11~0_combout\ : std_logic;
SIGNAL \osd1|pixsz[4]~32_combout\ : std_logic;
SIGNAL \osd1|pixsz[5]~34_combout\ : std_logic;
SIGNAL \osd1|Equal11~2_combout\ : std_logic;
SIGNAL \osd1|Equal11~4_combout\ : std_logic;
SIGNAL \osd1|pixsz[8]~40_combout\ : std_logic;
SIGNAL \osd1|pixsz[9]~42_combout\ : std_logic;
SIGNAL \osd1|Equal11~5_combout\ : std_logic;
SIGNAL \osd1|pixsz[13]~50_combout\ : std_logic;
SIGNAL \osd1|pixsz[12]~48_combout\ : std_logic;
SIGNAL \osd1|Equal11~7_combout\ : std_logic;
SIGNAL \osd1|pixsz[15]~54_combout\ : std_logic;
SIGNAL \osd1|pixsz[14]~52_combout\ : std_logic;
SIGNAL \osd1|Equal11~8_combout\ : std_logic;
SIGNAL \osd1|pixsz[10]~44_combout\ : std_logic;
SIGNAL \osd1|pixsz[11]~46_combout\ : std_logic;
SIGNAL \osd1|Equal11~6_combout\ : std_logic;
SIGNAL \osd1|Equal11~9_combout\ : std_logic;
SIGNAL \osd1|pixcnt[19]~76\ : std_logic;
SIGNAL \osd1|pixcnt[20]~77_combout\ : std_logic;
SIGNAL \osd1|pixcnt[20]~78\ : std_logic;
SIGNAL \osd1|pixcnt[21]~79_combout\ : std_logic;
SIGNAL \osd1|pixcnt[21]~80\ : std_logic;
SIGNAL \osd1|pixcnt[22]~81_combout\ : std_logic;
SIGNAL \osd1|cnt[26]~100\ : std_logic;
SIGNAL \osd1|cnt[27]~101_combout\ : std_logic;
SIGNAL \osd1|cnt[27]~102\ : std_logic;
SIGNAL \osd1|cnt[28]~103_combout\ : std_logic;
SIGNAL \osd1|cnt[28]~104\ : std_logic;
SIGNAL \osd1|cnt[29]~105_combout\ : std_logic;
SIGNAL \osd1|cnt[29]~106\ : std_logic;
SIGNAL \osd1|cnt[30]~107_combout\ : std_logic;
SIGNAL \osd1|cnt[30]~108\ : std_logic;
SIGNAL \osd1|cnt[31]~109_combout\ : std_logic;
SIGNAL \osd1|pixsz[17]~59\ : std_logic;
SIGNAL \osd1|pixsz[18]~61\ : std_logic;
SIGNAL \osd1|pixsz[19]~63\ : std_logic;
SIGNAL \osd1|pixsz[20]~65\ : std_logic;
SIGNAL \osd1|pixsz[21]~67\ : std_logic;
SIGNAL \osd1|pixsz[22]~68_combout\ : std_logic;
SIGNAL \osd1|pixcnt[22]~82\ : std_logic;
SIGNAL \osd1|pixcnt[23]~83_combout\ : std_logic;
SIGNAL \osd1|pixsz[22]~69\ : std_logic;
SIGNAL \osd1|pixsz[23]~70_combout\ : std_logic;
SIGNAL \osd1|Equal11~10_combout\ : std_logic;
SIGNAL \osd1|pixcnt[5]~35_combout\ : std_logic;
SIGNAL \osd1|pixsz[19]~62_combout\ : std_logic;
SIGNAL \osd1|pixsz[18]~60_combout\ : std_logic;
SIGNAL \osd1|Equal11~14_combout\ : std_logic;
SIGNAL \osd1|pixcnt[23]~84\ : std_logic;
SIGNAL \osd1|pixcnt[24]~85_combout\ : std_logic;
SIGNAL \osd1|pixcnt[24]~86\ : std_logic;
SIGNAL \osd1|pixcnt[25]~87_combout\ : std_logic;
SIGNAL \osd1|pixcnt[25]~88\ : std_logic;
SIGNAL \osd1|pixcnt[26]~89_combout\ : std_logic;
SIGNAL \osd1|pixcnt[26]~90\ : std_logic;
SIGNAL \osd1|pixcnt[27]~91_combout\ : std_logic;
SIGNAL \osd1|pixcnt[27]~92\ : std_logic;
SIGNAL \osd1|pixcnt[28]~93_combout\ : std_logic;
SIGNAL \osd1|pixcnt[28]~94\ : std_logic;
SIGNAL \osd1|pixcnt[29]~95_combout\ : std_logic;
SIGNAL \osd1|pixcnt[29]~96\ : std_logic;
SIGNAL \osd1|pixcnt[30]~97_combout\ : std_logic;
SIGNAL \osd1|pixcnt[30]~98\ : std_logic;
SIGNAL \osd1|pixcnt[31]~99_combout\ : std_logic;
SIGNAL \osd1|pixcnt[5]~36_combout\ : std_logic;
SIGNAL \osd1|pixsz[20]~64_combout\ : std_logic;
SIGNAL \osd1|pixsz[21]~66_combout\ : std_logic;
SIGNAL \osd1|Equal11~11_combout\ : std_logic;
SIGNAL \osd1|Equal11~12_combout\ : std_logic;
SIGNAL \osd1|Equal11~13_combout\ : std_logic;
SIGNAL \osd1|pixcnt[5]~37_combout\ : std_logic;
SIGNAL \osd1|pixcnt[5]~38_combout\ : std_logic;
SIGNAL \osd1|pixcnt[0]~33\ : std_logic;
SIGNAL \osd1|pixcnt[1]~39_combout\ : std_logic;
SIGNAL \osd1|pixcnt[1]~40\ : std_logic;
SIGNAL \osd1|pixcnt[2]~41_combout\ : std_logic;
SIGNAL \osd1|pixcnt[2]~42\ : std_logic;
SIGNAL \osd1|pixcnt[3]~43_combout\ : std_logic;
SIGNAL \osd1|pixcnt[3]~44\ : std_logic;
SIGNAL \osd1|pixcnt[4]~45_combout\ : std_logic;
SIGNAL \osd1|pixcnt[4]~46\ : std_logic;
SIGNAL \osd1|pixcnt[5]~47_combout\ : std_logic;
SIGNAL \osd1|pixcnt[5]~48\ : std_logic;
SIGNAL \osd1|pixcnt[6]~49_combout\ : std_logic;
SIGNAL \osd1|pixcnt[6]~50\ : std_logic;
SIGNAL \osd1|pixcnt[7]~51_combout\ : std_logic;
SIGNAL \osd1|pixcnt[7]~52\ : std_logic;
SIGNAL \osd1|pixcnt[8]~53_combout\ : std_logic;
SIGNAL \osd1|pixcnt[8]~54\ : std_logic;
SIGNAL \osd1|pixcnt[9]~55_combout\ : std_logic;
SIGNAL \osd1|pixcnt[9]~56\ : std_logic;
SIGNAL \osd1|pixcnt[10]~57_combout\ : std_logic;
SIGNAL \osd1|pixcnt[10]~58\ : std_logic;
SIGNAL \osd1|pixcnt[11]~59_combout\ : std_logic;
SIGNAL \osd1|pixcnt[11]~60\ : std_logic;
SIGNAL \osd1|pixcnt[12]~61_combout\ : std_logic;
SIGNAL \osd1|pixcnt[12]~62\ : std_logic;
SIGNAL \osd1|pixcnt[13]~63_combout\ : std_logic;
SIGNAL \osd1|pixcnt[13]~64\ : std_logic;
SIGNAL \osd1|pixcnt[14]~65_combout\ : std_logic;
SIGNAL \osd1|pixcnt[14]~66\ : std_logic;
SIGNAL \osd1|pixcnt[15]~67_combout\ : std_logic;
SIGNAL \osd1|pixcnt[15]~68\ : std_logic;
SIGNAL \osd1|pixcnt[16]~69_combout\ : std_logic;
SIGNAL \osd1|pixcnt[16]~70\ : std_logic;
SIGNAL \osd1|pixcnt[17]~71_combout\ : std_logic;
SIGNAL \osd1|pixcnt[17]~72\ : std_logic;
SIGNAL \osd1|pixcnt[18]~73_combout\ : std_logic;
SIGNAL \osd1|pixcnt[18]~74\ : std_logic;
SIGNAL \osd1|pixcnt[19]~75_combout\ : std_logic;
SIGNAL \osd1|WideNor0~5_combout\ : std_logic;
SIGNAL \osd1|WideNor0~8_combout\ : std_logic;
SIGNAL \osd1|WideNor0~7_combout\ : std_logic;
SIGNAL \osd1|WideNor0~6_combout\ : std_logic;
SIGNAL \osd1|WideNor0~9_combout\ : std_logic;
SIGNAL \osd1|WideNor0~1_combout\ : std_logic;
SIGNAL \osd1|WideNor0~2_combout\ : std_logic;
SIGNAL \osd1|WideNor0~3_combout\ : std_logic;
SIGNAL \osd1|WideNor0~0_combout\ : std_logic;
SIGNAL \osd1|WideNor0~4_combout\ : std_logic;
SIGNAL \osd1|ce_pix~2_combout\ : std_logic;
SIGNAL \osd1|ce_pix~q\ : std_logic;
SIGNAL \osd1|vsD~q\ : std_logic;
SIGNAL \osd1|vsD2~q\ : std_logic;
SIGNAL \osd1|v_cnt[0]~30_combout\ : std_logic;
SIGNAL \osd1|hsD~feeder_combout\ : std_logic;
SIGNAL \osd1|hsD~q\ : std_logic;
SIGNAL \osd1|hsD2~feeder_combout\ : std_logic;
SIGNAL \osd1|hsD2~q\ : std_logic;
SIGNAL \osd1|v_cnt[0]~31_combout\ : std_logic;
SIGNAL \osd1|v_cnt[0]~32_combout\ : std_logic;
SIGNAL \osd1|v_cnt[0]~11\ : std_logic;
SIGNAL \osd1|v_cnt[1]~12_combout\ : std_logic;
SIGNAL \osd1|v_cnt[1]~13\ : std_logic;
SIGNAL \osd1|v_cnt[2]~14_combout\ : std_logic;
SIGNAL \osd1|v_cnt[2]~15\ : std_logic;
SIGNAL \osd1|v_cnt[3]~16_combout\ : std_logic;
SIGNAL \osd1|v_cnt[3]~17\ : std_logic;
SIGNAL \osd1|v_cnt[4]~18_combout\ : std_logic;
SIGNAL \osd1|v_cnt[4]~19\ : std_logic;
SIGNAL \osd1|v_cnt[5]~20_combout\ : std_logic;
SIGNAL \osd1|v_cnt[5]~21\ : std_logic;
SIGNAL \osd1|v_cnt[6]~22_combout\ : std_logic;
SIGNAL \osd1|v_cnt[6]~23\ : std_logic;
SIGNAL \osd1|v_cnt[7]~24_combout\ : std_logic;
SIGNAL \osd1|v_cnt[7]~25\ : std_logic;
SIGNAL \osd1|v_cnt[8]~26_combout\ : std_logic;
SIGNAL \osd1|v_cnt[8]~27\ : std_logic;
SIGNAL \osd1|v_cnt[9]~28_combout\ : std_logic;
SIGNAL \osd1|vs_high[9]~0_combout\ : std_logic;
SIGNAL \osd1|vs_low[9]~0_combout\ : std_logic;
SIGNAL \osd1|LessThan3~1_cout\ : std_logic;
SIGNAL \osd1|LessThan3~3_cout\ : std_logic;
SIGNAL \osd1|LessThan3~5_cout\ : std_logic;
SIGNAL \osd1|LessThan3~7_cout\ : std_logic;
SIGNAL \osd1|LessThan3~9_cout\ : std_logic;
SIGNAL \osd1|LessThan3~11_cout\ : std_logic;
SIGNAL \osd1|LessThan3~13_cout\ : std_logic;
SIGNAL \osd1|LessThan3~15_cout\ : std_logic;
SIGNAL \osd1|LessThan3~17_cout\ : std_logic;
SIGNAL \osd1|LessThan3~18_combout\ : std_logic;
SIGNAL \osd1|h_cnt[0]~10_combout\ : std_logic;
SIGNAL \osd1|h_cnt~30_combout\ : std_logic;
SIGNAL \osd1|h_cnt[0]~11\ : std_logic;
SIGNAL \osd1|h_cnt[1]~12_combout\ : std_logic;
SIGNAL \osd1|h_cnt[1]~13\ : std_logic;
SIGNAL \osd1|h_cnt[2]~14_combout\ : std_logic;
SIGNAL \osd1|h_cnt[2]~15\ : std_logic;
SIGNAL \osd1|h_cnt[3]~16_combout\ : std_logic;
SIGNAL \osd1|h_cnt[3]~17\ : std_logic;
SIGNAL \osd1|h_cnt[4]~18_combout\ : std_logic;
SIGNAL \osd1|h_cnt[4]~19\ : std_logic;
SIGNAL \osd1|h_cnt[5]~20_combout\ : std_logic;
SIGNAL \osd1|h_cnt[5]~21\ : std_logic;
SIGNAL \osd1|h_cnt[6]~22_combout\ : std_logic;
SIGNAL \osd1|h_cnt[6]~23\ : std_logic;
SIGNAL \osd1|h_cnt[7]~24_combout\ : std_logic;
SIGNAL \osd1|h_cnt[7]~25\ : std_logic;
SIGNAL \osd1|h_cnt[8]~26_combout\ : std_logic;
SIGNAL \osd1|h_cnt[8]~27\ : std_logic;
SIGNAL \osd1|h_cnt[9]~28_combout\ : std_logic;
SIGNAL \osd1|hs_high[9]~0_combout\ : std_logic;
SIGNAL \osd1|hs_low[9]~0_combout\ : std_logic;
SIGNAL \osd1|hs_low[2]~feeder_combout\ : std_logic;
SIGNAL \osd1|LessThan2~1_cout\ : std_logic;
SIGNAL \osd1|LessThan2~3_cout\ : std_logic;
SIGNAL \osd1|LessThan2~5_cout\ : std_logic;
SIGNAL \osd1|LessThan2~7_cout\ : std_logic;
SIGNAL \osd1|LessThan2~9_cout\ : std_logic;
SIGNAL \osd1|LessThan2~11_cout\ : std_logic;
SIGNAL \osd1|LessThan2~13_cout\ : std_logic;
SIGNAL \osd1|LessThan2~15_cout\ : std_logic;
SIGNAL \osd1|LessThan2~17_cout\ : std_logic;
SIGNAL \osd1|LessThan2~18_combout\ : std_logic;
SIGNAL \osd1|osd_de~0_combout\ : std_logic;
SIGNAL \osd1|dsp_height[9]~0_combout\ : std_logic;
SIGNAL \osd1|dsp_height[8]~1_combout\ : std_logic;
SIGNAL \osd1|Add12~1\ : std_logic;
SIGNAL \osd1|Add12~2_combout\ : std_logic;
SIGNAL \osd1|Add12~0_combout\ : std_logic;
SIGNAL \osd1|dsp_height[7]~2_combout\ : std_logic;
SIGNAL \osd1|dsp_height[6]~3_combout\ : std_logic;
SIGNAL \osd1|dsp_height[5]~4_combout\ : std_logic;
SIGNAL \osd1|dsp_height[4]~5_combout\ : std_logic;
SIGNAL \osd1|dsp_height[3]~6_combout\ : std_logic;
SIGNAL \osd1|dsp_height[2]~7_combout\ : std_logic;
SIGNAL \osd1|dsp_height[1]~8_combout\ : std_logic;
SIGNAL \osd1|v_osd_start[0]~1\ : std_logic;
SIGNAL \osd1|v_osd_start[1]~3\ : std_logic;
SIGNAL \osd1|v_osd_start[2]~5\ : std_logic;
SIGNAL \osd1|v_osd_start[3]~7\ : std_logic;
SIGNAL \osd1|v_osd_start[4]~9\ : std_logic;
SIGNAL \osd1|v_osd_start[5]~11\ : std_logic;
SIGNAL \osd1|v_osd_start[6]~13\ : std_logic;
SIGNAL \osd1|v_osd_start[7]~15\ : std_logic;
SIGNAL \osd1|v_osd_start[8]~17\ : std_logic;
SIGNAL \osd1|Add13~0_combout\ : std_logic;
SIGNAL \osd1|v_osd_start[8]~16_combout\ : std_logic;
SIGNAL \osd1|v_osd_end[8]~1\ : std_logic;
SIGNAL \osd1|v_osd_end[9]~2_combout\ : std_logic;
SIGNAL \osd1|v_osd_end[8]~0_combout\ : std_logic;
SIGNAL \osd1|v_osd_start[7]~14_combout\ : std_logic;
SIGNAL \osd1|v_osd_start[6]~12_combout\ : std_logic;
SIGNAL \osd1|v_osd_start[5]~10_combout\ : std_logic;
SIGNAL \osd1|v_osd_start[4]~8_combout\ : std_logic;
SIGNAL \osd1|v_osd_start[3]~6_combout\ : std_logic;
SIGNAL \osd1|v_osd_start[2]~4_combout\ : std_logic;
SIGNAL \osd1|v_osd_start[1]~2_combout\ : std_logic;
SIGNAL \osd1|v_osd_start[0]~0_combout\ : std_logic;
SIGNAL \osd1|LessThan7~1_cout\ : std_logic;
SIGNAL \osd1|LessThan7~3_cout\ : std_logic;
SIGNAL \osd1|LessThan7~5_cout\ : std_logic;
SIGNAL \osd1|LessThan7~7_cout\ : std_logic;
SIGNAL \osd1|LessThan7~9_cout\ : std_logic;
SIGNAL \osd1|LessThan7~11_cout\ : std_logic;
SIGNAL \osd1|LessThan7~13_cout\ : std_logic;
SIGNAL \osd1|LessThan7~15_cout\ : std_logic;
SIGNAL \osd1|LessThan7~17_cout\ : std_logic;
SIGNAL \osd1|LessThan7~18_combout\ : std_logic;
SIGNAL \osd1|LessThan6~1_cout\ : std_logic;
SIGNAL \osd1|LessThan6~3_cout\ : std_logic;
SIGNAL \osd1|LessThan6~5_cout\ : std_logic;
SIGNAL \osd1|LessThan6~7_cout\ : std_logic;
SIGNAL \osd1|LessThan6~9_cout\ : std_logic;
SIGNAL \osd1|LessThan6~11_cout\ : std_logic;
SIGNAL \osd1|LessThan6~13_cout\ : std_logic;
SIGNAL \osd1|LessThan6~15_cout\ : std_logic;
SIGNAL \osd1|LessThan6~17_cout\ : std_logic;
SIGNAL \osd1|LessThan6~18_combout\ : std_logic;
SIGNAL \osd1|osd_enable~0_combout\ : std_logic;
SIGNAL \osd1|osd_enable~1_combout\ : std_logic;
SIGNAL \osd1|osd_enable~q\ : std_logic;
SIGNAL \osd1|dsp_width[9]~1_combout\ : std_logic;
SIGNAL \osd1|dsp_width[8]~0_combout\ : std_logic;
SIGNAL \osd1|dsp_width[7]~2_combout\ : std_logic;
SIGNAL \osd1|dsp_width[6]~3_combout\ : std_logic;
SIGNAL \osd1|dsp_width[5]~4_combout\ : std_logic;
SIGNAL \osd1|dsp_width[4]~5_combout\ : std_logic;
SIGNAL \osd1|dsp_width[3]~6_combout\ : std_logic;
SIGNAL \osd1|dsp_width[2]~7_combout\ : std_logic;
SIGNAL \osd1|h_osd_end[1]~1\ : std_logic;
SIGNAL \osd1|h_osd_end[2]~3\ : std_logic;
SIGNAL \osd1|h_osd_end[3]~5\ : std_logic;
SIGNAL \osd1|h_osd_end[4]~7\ : std_logic;
SIGNAL \osd1|h_osd_end[5]~9\ : std_logic;
SIGNAL \osd1|h_osd_end[6]~11\ : std_logic;
SIGNAL \osd1|h_osd_end[7]~13\ : std_logic;
SIGNAL \osd1|h_osd_start[8]~1\ : std_logic;
SIGNAL \osd1|Add10~0_combout\ : std_logic;
SIGNAL \osd1|h_osd_start[8]~0_combout\ : std_logic;
SIGNAL \osd1|h_osd_end[7]~12_combout\ : std_logic;
SIGNAL \osd1|h_osd_end[6]~10_combout\ : std_logic;
SIGNAL \osd1|h_osd_end[5]~8_combout\ : std_logic;
SIGNAL \osd1|h_osd_end[4]~6_combout\ : std_logic;
SIGNAL \osd1|h_osd_end[3]~4_combout\ : std_logic;
SIGNAL \osd1|h_osd_end[2]~2_combout\ : std_logic;
SIGNAL \osd1|h_osd_end[1]~0_combout\ : std_logic;
SIGNAL \osd1|h_osd_end[0]~14_combout\ : std_logic;
SIGNAL \osd1|LessThan4~1_cout\ : std_logic;
SIGNAL \osd1|LessThan4~3_cout\ : std_logic;
SIGNAL \osd1|LessThan4~5_cout\ : std_logic;
SIGNAL \osd1|LessThan4~7_cout\ : std_logic;
SIGNAL \osd1|LessThan4~9_cout\ : std_logic;
SIGNAL \osd1|LessThan4~11_cout\ : std_logic;
SIGNAL \osd1|LessThan4~13_cout\ : std_logic;
SIGNAL \osd1|LessThan4~15_cout\ : std_logic;
SIGNAL \osd1|LessThan4~17_cout\ : std_logic;
SIGNAL \osd1|LessThan4~18_combout\ : std_logic;
SIGNAL \osd1|Add11~0_combout\ : std_logic;
SIGNAL \osd1|LessThan5~1_cout\ : std_logic;
SIGNAL \osd1|LessThan5~3_cout\ : std_logic;
SIGNAL \osd1|LessThan5~5_cout\ : std_logic;
SIGNAL \osd1|LessThan5~7_cout\ : std_logic;
SIGNAL \osd1|LessThan5~9_cout\ : std_logic;
SIGNAL \osd1|LessThan5~11_cout\ : std_logic;
SIGNAL \osd1|LessThan5~13_cout\ : std_logic;
SIGNAL \osd1|LessThan5~15_cout\ : std_logic;
SIGNAL \osd1|LessThan5~17_cout\ : std_logic;
SIGNAL \osd1|LessThan5~18_combout\ : std_logic;
SIGNAL \osd1|osd_de~1_combout\ : std_logic;
SIGNAL \osd1|osd_de~2_combout\ : std_logic;
SIGNAL \osd1|comb~0_combout\ : std_logic;
SIGNAL \osd1|bcnt[0]~11_combout\ : std_logic;
SIGNAL \osd1|osd_buffer~1_combout\ : std_logic;
SIGNAL \osd1|bcnt[1]~13_combout\ : std_logic;
SIGNAL \osd1|bcnt[0]~12\ : std_logic;
SIGNAL \osd1|bcnt[1]~14_combout\ : std_logic;
SIGNAL \osd1|bcnt[1]~15\ : std_logic;
SIGNAL \osd1|bcnt[2]~16_combout\ : std_logic;
SIGNAL \osd1|bcnt[2]~17\ : std_logic;
SIGNAL \osd1|bcnt[3]~18_combout\ : std_logic;
SIGNAL \osd1|bcnt[3]~19\ : std_logic;
SIGNAL \osd1|bcnt[4]~20_combout\ : std_logic;
SIGNAL \osd1|bcnt[4]~21\ : std_logic;
SIGNAL \osd1|bcnt[5]~22_combout\ : std_logic;
SIGNAL \osd1|bcnt[5]~23\ : std_logic;
SIGNAL \osd1|bcnt[6]~24_combout\ : std_logic;
SIGNAL \osd1|bcnt[6]~25\ : std_logic;
SIGNAL \osd1|bcnt[7]~26_combout\ : std_logic;
SIGNAL \osd1|bcnt[7]~27\ : std_logic;
SIGNAL \osd1|bcnt[8]~28_combout\ : std_logic;
SIGNAL \osd1|bcnt[8]~29\ : std_logic;
SIGNAL \osd1|bcnt[9]~30_combout\ : std_logic;
SIGNAL \osd1|bcnt[9]~31\ : std_logic;
SIGNAL \osd1|bcnt[10]~32_combout\ : std_logic;
SIGNAL \osd1|Add15~0_combout\ : std_logic;
SIGNAL \osd1|Add15~1\ : std_logic;
SIGNAL \osd1|Add15~2_combout\ : std_logic;
SIGNAL \osd1|Add16~0_combout\ : std_logic;
SIGNAL \osd1|Add15~3\ : std_logic;
SIGNAL \osd1|Add15~4_combout\ : std_logic;
SIGNAL \osd1|Add16~1\ : std_logic;
SIGNAL \osd1|Add16~2_combout\ : std_logic;
SIGNAL \osd1|Add15~5\ : std_logic;
SIGNAL \osd1|Add15~6_combout\ : std_logic;
SIGNAL \osd1|Add16~3\ : std_logic;
SIGNAL \osd1|Add16~4_combout\ : std_logic;
SIGNAL \osd1|Add15~7\ : std_logic;
SIGNAL \osd1|Add15~8_combout\ : std_logic;
SIGNAL \osd1|Add16~5\ : std_logic;
SIGNAL \osd1|Add16~6_combout\ : std_logic;
SIGNAL \osd1|Add15~9\ : std_logic;
SIGNAL \osd1|Add15~10_combout\ : std_logic;
SIGNAL \osd1|Add16~7\ : std_logic;
SIGNAL \osd1|Add16~8_combout\ : std_logic;
SIGNAL \osd1|Add15~11\ : std_logic;
SIGNAL \osd1|Add15~12_combout\ : std_logic;
SIGNAL \osd1|Add16~9\ : std_logic;
SIGNAL \osd1|Add16~10_combout\ : std_logic;
SIGNAL \osd1|Add15~13\ : std_logic;
SIGNAL \osd1|Add15~14_combout\ : std_logic;
SIGNAL \osd1|Add16~11\ : std_logic;
SIGNAL \osd1|Add16~12_combout\ : std_logic;
SIGNAL \osd1|Add17~1_cout\ : std_logic;
SIGNAL \osd1|Add17~3_cout\ : std_logic;
SIGNAL \osd1|Add17~5\ : std_logic;
SIGNAL \osd1|Add17~7\ : std_logic;
SIGNAL \osd1|Add17~9\ : std_logic;
SIGNAL \osd1|Add17~10_combout\ : std_logic;
SIGNAL \osd1|Add17~11\ : std_logic;
SIGNAL \osd1|Add17~12_combout\ : std_logic;
SIGNAL \osd1|Add17~13\ : std_logic;
SIGNAL \osd1|Add17~14_combout\ : std_logic;
SIGNAL \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \osd1|Add17~6_combout\ : std_logic;
SIGNAL \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \osd1|Add17~4_combout\ : std_logic;
SIGNAL \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \osd1|Mux3~2_combout\ : std_logic;
SIGNAL \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \osd1|Mux3~3_combout\ : std_logic;
SIGNAL \osd1|Add17~8_combout\ : std_logic;
SIGNAL \osd1|sbuf[7]~feeder_combout\ : std_logic;
SIGNAL \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \osd1|Mux3~0_combout\ : std_logic;
SIGNAL \osd1|Mux3~1_combout\ : std_logic;
SIGNAL \osd1|red_out[4]~0_combout\ : std_logic;
SIGNAL \info1|r_o[2]~5_combout\ : std_logic;
SIGNAL \info1|r_o~2_combout\ : std_logic;
SIGNAL \info1|Mux0~5_combout\ : std_logic;
SIGNAL \osd1|cnf_byte[3]~4_combout\ : std_logic;
SIGNAL \osd1|cnf_byte[0]~15_combout\ : std_logic;
SIGNAL \osd1|cnf_byte[1]~6_cout\ : std_logic;
SIGNAL \osd1|cnf_byte[1]~7_combout\ : std_logic;
SIGNAL \osd1|cnf_byte[1]~8\ : std_logic;
SIGNAL \osd1|cnf_byte[2]~9_combout\ : std_logic;
SIGNAL \osd1|cnf_byte[2]~10\ : std_logic;
SIGNAL \osd1|cnf_byte[3]~11_combout\ : std_logic;
SIGNAL \osd1|cnf_byte[3]~12\ : std_logic;
SIGNAL \osd1|cnf_byte[4]~13_combout\ : std_logic;
SIGNAL \osd1|Decoder0~0_combout\ : std_logic;
SIGNAL \osd1|Decoder0~2_combout\ : std_logic;
SIGNAL \osd1|config_buffer_o[2][5]~q\ : std_logic;
SIGNAL \info1|Mux0~3_combout\ : std_logic;
SIGNAL \info1|Mux0~4_combout\ : std_logic;
SIGNAL \info1|Mux0~2_combout\ : std_logic;
SIGNAL \info1|Mux0~6_combout\ : std_logic;
SIGNAL \osd1|Decoder0~1_combout\ : std_logic;
SIGNAL \osd1|config_buffer_o[1][5]~q\ : std_logic;
SIGNAL \osd1|config_buffer_o[0][5]~feeder_combout\ : std_logic;
SIGNAL \osd1|Decoder0~3_combout\ : std_logic;
SIGNAL \osd1|config_buffer_o[0][5]~q\ : std_logic;
SIGNAL \info1|Mux0~7_combout\ : std_logic;
SIGNAL \info1|Mux0~8_combout\ : std_logic;
SIGNAL \info1|Mux0~9_combout\ : std_logic;
SIGNAL \info1|pixels~35_combout\ : std_logic;
SIGNAL \info1|Mux2~4_combout\ : std_logic;
SIGNAL \osd1|config_buffer_o[1][3]~q\ : std_logic;
SIGNAL \info1|Mux2~0_combout\ : std_logic;
SIGNAL \osd1|config_buffer_o[2][3]~q\ : std_logic;
SIGNAL \info1|Mux2~2_combout\ : std_logic;
SIGNAL \osd1|config_buffer_o[0][3]~q\ : std_logic;
SIGNAL \info1|Mux2~1_combout\ : std_logic;
SIGNAL \info1|Mux2~3_combout\ : std_logic;
SIGNAL \info1|Mux2~5_combout\ : std_logic;
SIGNAL \osd1|config_buffer_o[1][4]~q\ : std_logic;
SIGNAL \info1|Mux1~1_combout\ : std_logic;
SIGNAL \osd1|config_buffer_o[0][4]~q\ : std_logic;
SIGNAL \osd1|config_buffer_o[2][4]~q\ : std_logic;
SIGNAL \info1|Mux1~2_combout\ : std_logic;
SIGNAL \info1|Mux1~3_combout\ : std_logic;
SIGNAL \info1|Mux1~4_combout\ : std_logic;
SIGNAL \info1|Mux1~5_combout\ : std_logic;
SIGNAL \info1|Mux5~7_combout\ : std_logic;
SIGNAL \info1|Mux0~0_combout\ : std_logic;
SIGNAL \info1|Mux0~1_combout\ : std_logic;
SIGNAL \osd1|config_buffer_o[2][0]~q\ : std_logic;
SIGNAL \info1|Mux5~3_combout\ : std_logic;
SIGNAL \osd1|config_buffer_o[1][0]~q\ : std_logic;
SIGNAL \info1|Mux5~2_combout\ : std_logic;
SIGNAL \osd1|config_buffer_o[0][0]~q\ : std_logic;
SIGNAL \info1|Mux5~4_combout\ : std_logic;
SIGNAL \info1|Mux5~5_combout\ : std_logic;
SIGNAL \info1|Mux5~6_combout\ : std_logic;
SIGNAL \info1|Mux5~8_combout\ : std_logic;
SIGNAL \info1|Mux3~4_combout\ : std_logic;
SIGNAL \osd1|config_buffer_o[0][2]~q\ : std_logic;
SIGNAL \info1|Mux3~2_combout\ : std_logic;
SIGNAL \osd1|config_buffer_o[1][2]~q\ : std_logic;
SIGNAL \info1|Mux3~0_combout\ : std_logic;
SIGNAL \osd1|config_buffer_o[2][2]~q\ : std_logic;
SIGNAL \info1|Mux3~1_combout\ : std_logic;
SIGNAL \info1|Mux3~3_combout\ : std_logic;
SIGNAL \info1|Mux3~5_combout\ : std_logic;
SIGNAL \osd1|config_buffer_o[1][1]~q\ : std_logic;
SIGNAL \info1|Mux4~1_combout\ : std_logic;
SIGNAL \osd1|config_buffer_o[2][1]~q\ : std_logic;
SIGNAL \info1|Mux4~2_combout\ : std_logic;
SIGNAL \osd1|config_buffer_o[0][1]~q\ : std_logic;
SIGNAL \info1|Mux4~3_combout\ : std_logic;
SIGNAL \info1|Mux4~4_combout\ : std_logic;
SIGNAL \info1|Mux4~0_combout\ : std_logic;
SIGNAL \info1|Mux1~0_combout\ : std_logic;
SIGNAL \info1|Mux4~5_combout\ : std_logic;
SIGNAL \info1|Mux14~1_combout\ : std_logic;
SIGNAL \info1|Mux14~0_combout\ : std_logic;
SIGNAL \info1|pixels~36_combout\ : std_logic;
SIGNAL \info1|localX2[0]~feeder_combout\ : std_logic;
SIGNAL \info1|Mux27~2_combout\ : std_logic;
SIGNAL \info1|Mux27~1_combout\ : std_logic;
SIGNAL \info1|pixels~33_combout\ : std_logic;
SIGNAL \info1|Mux27~0_combout\ : std_logic;
SIGNAL \info1|pixels~34_combout\ : std_logic;
SIGNAL \info1|Mux49~2_combout\ : std_logic;
SIGNAL \info1|Mux38~0_combout\ : std_logic;
SIGNAL \info1|Mux9~0_combout\ : std_logic;
SIGNAL \info1|pixels~31_combout\ : std_logic;
SIGNAL \info1|Mux15~0_combout\ : std_logic;
SIGNAL \info1|pixels~32_combout\ : std_logic;
SIGNAL \info1|pixels~37_combout\ : std_logic;
SIGNAL \info1|pixels~38_combout\ : std_logic;
SIGNAL \info1|pixels~39_combout\ : std_logic;
SIGNAL \info1|pixels~29_combout\ : std_logic;
SIGNAL \info1|Mux34~1_combout\ : std_logic;
SIGNAL \info1|pixels~40_combout\ : std_logic;
SIGNAL \info1|Mux49~3_combout\ : std_logic;
SIGNAL \info1|Mux21~0_combout\ : std_logic;
SIGNAL \info1|pixels~47_combout\ : std_logic;
SIGNAL \info1|Mux21~1_combout\ : std_logic;
SIGNAL \info1|pixels~48_combout\ : std_logic;
SIGNAL \info1|Mux20~0_combout\ : std_logic;
SIGNAL \info1|Mux17~0_combout\ : std_logic;
SIGNAL \info1|Mux20~1_combout\ : std_logic;
SIGNAL \info1|Mux19~1_combout\ : std_logic;
SIGNAL \info1|Mux19~0_combout\ : std_logic;
SIGNAL \info1|Mux20~2_combout\ : std_logic;
SIGNAL \info1|pixels~99_combout\ : std_logic;
SIGNAL \info1|Mux7~0_combout\ : std_logic;
SIGNAL \info1|pixels~44_combout\ : std_logic;
SIGNAL \info1|pixels~43_combout\ : std_logic;
SIGNAL \info1|pixels~45_combout\ : std_logic;
SIGNAL \info1|pixels~46_combout\ : std_logic;
SIGNAL \info1|Mux49~4_combout\ : std_logic;
SIGNAL \info1|Mux9~2_combout\ : std_logic;
SIGNAL \info1|Mux9~1_combout\ : std_logic;
SIGNAL \info1|pixels~41_combout\ : std_logic;
SIGNAL \info1|pixels~42_combout\ : std_logic;
SIGNAL \info1|Mux49~5_combout\ : std_logic;
SIGNAL \info1|Mux49~6_combout\ : std_logic;
SIGNAL \info1|Mux41~0_combout\ : std_logic;
SIGNAL \info1|Mux41~1_combout\ : std_logic;
SIGNAL \info1|pixels~49_combout\ : std_logic;
SIGNAL \info1|pixels~50_combout\ : std_logic;
SIGNAL \info1|pixels~52_combout\ : std_logic;
SIGNAL \info1|pixels~51_combout\ : std_logic;
SIGNAL \info1|pixels~53_combout\ : std_logic;
SIGNAL \info1|pixels~54_combout\ : std_logic;
SIGNAL \info1|pixels~55_combout\ : std_logic;
SIGNAL \info1|Mux49~7_combout\ : std_logic;
SIGNAL \info1|Mux34~0_combout\ : std_logic;
SIGNAL \info1|pixels~24_combout\ : std_logic;
SIGNAL \info1|pixels~25_combout\ : std_logic;
SIGNAL \info1|Mux45~1_combout\ : std_logic;
SIGNAL \info1|Mux45~0_combout\ : std_logic;
SIGNAL \info1|Mux46~0_combout\ : std_logic;
SIGNAL \info1|Mux46~1_combout\ : std_logic;
SIGNAL \info1|Mux46~2_combout\ : std_logic;
SIGNAL \info1|pixels~98_combout\ : std_logic;
SIGNAL \info1|Mux33~2_combout\ : std_logic;
SIGNAL \info1|pixels~27_combout\ : std_logic;
SIGNAL \info1|Mux33~1_combout\ : std_logic;
SIGNAL \info1|Mux33~0_combout\ : std_logic;
SIGNAL \info1|pixels~26_combout\ : std_logic;
SIGNAL \info1|pixels~28_combout\ : std_logic;
SIGNAL \info1|Mux49~0_combout\ : std_logic;
SIGNAL \info1|Mux47~0_combout\ : std_logic;
SIGNAL \info1|pixels~116_combout\ : std_logic;
SIGNAL \info1|pixels~117_combout\ : std_logic;
SIGNAL \info1|pixels~30_combout\ : std_logic;
SIGNAL \info1|Mux49~1_combout\ : std_logic;
SIGNAL \info1|Mux49~8_combout\ : std_logic;
SIGNAL \info1|Mux23~0_combout\ : std_logic;
SIGNAL \info1|pixels~89_combout\ : std_logic;
SIGNAL \info1|Mux36~0_combout\ : std_logic;
SIGNAL \info1|pixels~97_combout\ : std_logic;
SIGNAL \info1|Mux49~29_combout\ : std_logic;
SIGNAL \info1|Mux22~0_combout\ : std_logic;
SIGNAL \info1|pixels~110_combout\ : std_logic;
SIGNAL \info1|pixels~111_combout\ : std_logic;
SIGNAL \info1|pixels~91_combout\ : std_logic;
SIGNAL \info1|Mux10~0_combout\ : std_logic;
SIGNAL \info1|Mux10~1_combout\ : std_logic;
SIGNAL \info1|pixels~92_combout\ : std_logic;
SIGNAL \info1|pixels~109_combout\ : std_logic;
SIGNAL \info1|Mux49~26_combout\ : std_logic;
SIGNAL \info1|Mux18~5_combout\ : std_logic;
SIGNAL \info1|pixels~94_combout\ : std_logic;
SIGNAL \info1|pixels~95_combout\ : std_logic;
SIGNAL \info1|pixels~93_combout\ : std_logic;
SIGNAL \info1|pixels~96_combout\ : std_logic;
SIGNAL \info1|Mux16~1_combout\ : std_logic;
SIGNAL \info1|Mux16~0_combout\ : std_logic;
SIGNAL \info1|pixels~90_combout\ : std_logic;
SIGNAL \info1|pixels~108_combout\ : std_logic;
SIGNAL \info1|Mux49~27_combout\ : std_logic;
SIGNAL \info1|Mux49~28_combout\ : std_logic;
SIGNAL \info1|Mux42~0_combout\ : std_logic;
SIGNAL \info1|Mux42~1_combout\ : std_logic;
SIGNAL \info1|pixels~87_combout\ : std_logic;
SIGNAL \info1|pixels~88_combout\ : std_logic;
SIGNAL \info1|Mux48~2_combout\ : std_logic;
SIGNAL \info1|Mux48~0_combout\ : std_logic;
SIGNAL \info1|Mux48~1_combout\ : std_logic;
SIGNAL \info1|pixels~83_combout\ : std_logic;
SIGNAL \info1|pixels~84_combout\ : std_logic;
SIGNAL \info1|Mux35~0_combout\ : std_logic;
SIGNAL \info1|pixels~107_combout\ : std_logic;
SIGNAL \info1|Mux18~0_combout\ : std_logic;
SIGNAL \info1|Mux35~1_combout\ : std_logic;
SIGNAL \info1|pixels~85_combout\ : std_logic;
SIGNAL \info1|pixels~86_combout\ : std_logic;
SIGNAL \info1|Mux49~24_combout\ : std_logic;
SIGNAL \info1|Mux49~25_combout\ : std_logic;
SIGNAL \info1|Mux49~30_combout\ : std_logic;
SIGNAL \info1|localX2[2]~feeder_combout\ : std_logic;
SIGNAL \info1|pixels~78_combout\ : std_logic;
SIGNAL \info1|pixels~79_combout\ : std_logic;
SIGNAL \info1|pixels~80_combout\ : std_logic;
SIGNAL \info1|pixels~75_combout\ : std_logic;
SIGNAL \info1|Mux17~1_combout\ : std_logic;
SIGNAL \info1|pixels~76_combout\ : std_logic;
SIGNAL \info1|pixels~77_combout\ : std_logic;
SIGNAL \info1|Mux49~20_combout\ : std_logic;
SIGNAL \info1|Mux11~1_combout\ : std_logic;
SIGNAL \info1|Mux11~2_combout\ : std_logic;
SIGNAL \info1|pixels~73_combout\ : std_logic;
SIGNAL \info1|Mux11~0_combout\ : std_logic;
SIGNAL \info1|pixels~74_combout\ : std_logic;
SIGNAL \info1|Mux30~0_combout\ : std_logic;
SIGNAL \info1|pixels~106_combout\ : std_logic;
SIGNAL \info1|Mux24~0_combout\ : std_logic;
SIGNAL \info1|pixels~81_combout\ : std_logic;
SIGNAL \info1|pixels~82_combout\ : std_logic;
SIGNAL \info1|Mux49~21_combout\ : std_logic;
SIGNAL \info1|Mux37~0_combout\ : std_logic;
SIGNAL \info1|pixels~62_combout\ : std_logic;
SIGNAL \info1|pixels~112_combout\ : std_logic;
SIGNAL \info1|pixels~113_combout\ : std_logic;
SIGNAL \info1|pixels~72_combout\ : std_logic;
SIGNAL \info1|Mux43~0_combout\ : std_logic;
SIGNAL \info1|Mux43~1_combout\ : std_logic;
SIGNAL \info1|Mux43~2_combout\ : std_logic;
SIGNAL \info1|Mux43~3_combout\ : std_logic;
SIGNAL \info1|pixels~105_combout\ : std_logic;
SIGNAL \info1|Mux30~1_combout\ : std_logic;
SIGNAL \info1|pixels~70_combout\ : std_logic;
SIGNAL \info1|pixels~71_combout\ : std_logic;
SIGNAL \info1|Mux49~18_combout\ : std_logic;
SIGNAL \info1|Mux49~19_combout\ : std_logic;
SIGNAL \info1|Mux49~22_combout\ : std_logic;
SIGNAL \info1|localX2[1]~feeder_combout\ : std_logic;
SIGNAL \info1|Mux19~2_combout\ : std_logic;
SIGNAL \info1|Mux19~3_combout\ : std_logic;
SIGNAL \info1|Mux19~4_combout\ : std_logic;
SIGNAL \info1|Mux19~5_combout\ : std_logic;
SIGNAL \info1|pixels~103_combout\ : std_logic;
SIGNAL \info1|pixels~66_combout\ : std_logic;
SIGNAL \info1|pixels~67_combout\ : std_logic;
SIGNAL \info1|Mux18~2_combout\ : std_logic;
SIGNAL \info1|Mux18~1_combout\ : std_logic;
SIGNAL \info1|Mux18~3_combout\ : std_logic;
SIGNAL \info1|Mux18~4_combout\ : std_logic;
SIGNAL \info1|pixels~102_combout\ : std_logic;
SIGNAL \info1|Mux49~13_combout\ : std_logic;
SIGNAL \info1|Mux49~14_combout\ : std_logic;
SIGNAL \info1|Mux26~2_combout\ : std_logic;
SIGNAL \info1|Mux26~0_combout\ : std_logic;
SIGNAL \info1|Mux26~1_combout\ : std_logic;
SIGNAL \info1|pixels~64_combout\ : std_logic;
SIGNAL \info1|pixels~65_combout\ : std_logic;
SIGNAL \info1|pixels~114_combout\ : std_logic;
SIGNAL \info1|Mux25~0_combout\ : std_logic;
SIGNAL \info1|pixels~115_combout\ : std_logic;
SIGNAL \info1|Mux12~0_combout\ : std_logic;
SIGNAL \info1|pixels~61_combout\ : std_logic;
SIGNAL \info1|pixels~63_combout\ : std_logic;
SIGNAL \info1|Mux49~11_combout\ : std_logic;
SIGNAL \info1|Mux13~1_combout\ : std_logic;
SIGNAL \info1|Mux13~0_combout\ : std_logic;
SIGNAL \info1|pixels~60_combout\ : std_logic;
SIGNAL \info1|Mux49~12_combout\ : std_logic;
SIGNAL \info1|Mux49~15_combout\ : std_logic;
SIGNAL \info1|Mux39~3_combout\ : std_logic;
SIGNAL \info1|Mux39~1_combout\ : std_logic;
SIGNAL \info1|Mux39~0_combout\ : std_logic;
SIGNAL \info1|Mux39~2_combout\ : std_logic;
SIGNAL \info1|Mux39~4_combout\ : std_logic;
SIGNAL \info1|pixels~104_combout\ : std_logic;
SIGNAL \info1|Mux38~1_combout\ : std_logic;
SIGNAL \info1|pixels~68_combout\ : std_logic;
SIGNAL \info1|Mux44~1_combout\ : std_logic;
SIGNAL \info1|pixels~69_combout\ : std_logic;
SIGNAL \info1|Mux49~16_combout\ : std_logic;
SIGNAL \info1|Mux45~2_combout\ : std_logic;
SIGNAL \info1|Mux45~3_combout\ : std_logic;
SIGNAL \info1|Mux45~4_combout\ : std_logic;
SIGNAL \info1|pixels~101_combout\ : std_logic;
SIGNAL \info1|Mux32~2_combout\ : std_logic;
SIGNAL \info1|Mux32~1_combout\ : std_logic;
SIGNAL \info1|Mux32~0_combout\ : std_logic;
SIGNAL \info1|pixels~56_combout\ : std_logic;
SIGNAL \info1|pixels~57_combout\ : std_logic;
SIGNAL \info1|Mux44~2_combout\ : std_logic;
SIGNAL \info1|Mux44~0_combout\ : std_logic;
SIGNAL \info1|pixels~58_combout\ : std_logic;
SIGNAL \info1|pixels~59_combout\ : std_logic;
SIGNAL \info1|Mux31~0_combout\ : std_logic;
SIGNAL \info1|Mux31~1_combout\ : std_logic;
SIGNAL \info1|Mux31~2_combout\ : std_logic;
SIGNAL \info1|pixels~100_combout\ : std_logic;
SIGNAL \info1|Mux49~9_combout\ : std_logic;
SIGNAL \info1|Mux49~10_combout\ : std_logic;
SIGNAL \info1|Mux49~17_combout\ : std_logic;
SIGNAL \info1|Mux49~23_combout\ : std_logic;
SIGNAL \info1|Mux49~31_combout\ : std_logic;
SIGNAL \info1|video_s~q\ : std_logic;
SIGNAL \info1|r_o[3]~3_combout\ : std_logic;
SIGNAL \info1|r_o[2]~4_combout\ : std_logic;
SIGNAL \info1|b_o[2]~2_combout\ : std_logic;
SIGNAL \osd1|v_cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U00|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \osd1|h_cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \info1|hPos\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \info1|localX\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \osd1|pixcnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL clock_div_q : std_logic_vector(7 DOWNTO 0);
SIGNAL \info1|vPos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \osd1|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \osd1|bcnt\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \osd1|pixsz\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \kb|ps2_alt0|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \osd1|cnf_byte\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \kb|keys_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \osd1|hs_high\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \osd1|hs_low\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \kb|ps2_alt0|rcount\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \osd1|vs_high\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \kb|ps2_alt0|sdata\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \osd1|vs_low\ : std_logic_vector(9 DOWNTO 0);
SIGNAL state_v : std_logic_vector(7 DOWNTO 0);
SIGNAL \info1|localY\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga1|h_cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga1|v_cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \osd1|sbuf\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \osd1|cmd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \info1|pixels\ : std_logic_vector(0 TO 63);
SIGNAL \info1|localX3\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \info1|cChar\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \info1|localX2\ : std_logic_vector(8 DOWNTO 0);
SIGNAL power_on_s : std_logic_vector(7 DOWNTO 0);
SIGNAL \osd1|sram_data_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL joy1_s : std_logic_vector(11 DOWNTO 0);
SIGNAL \kb|ps2_alt0|fcount\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \kb|keyb_valid_edge_v\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \kb|ps2_alt0|ALT_INV_process_2~0clkctrl_outclk\ : std_logic;
SIGNAL \kb|ps2_alt0|ALT_INV_sigsendend~2clkctrl_outclk\ : std_logic;
SIGNAL \kb|ps2_alt0|ALT_INV_FROMPS2~0clkctrl_outclk\ : std_logic;
SIGNAL \vga1|ALT_INV_hs~clkctrl_outclk\ : std_logic;
SIGNAL \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_stm_b13_io~input_o\ : std_logic;
SIGNAL \ALT_INV_stm_b12_io~input_o\ : std_logic;
SIGNAL \kb|ps2_alt0|ALT_INV_ps2_data_io~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset_s~q\ : std_logic;
SIGNAL \kb|ps2_alt0|ALT_INV_sigclkheld~q\ : std_logic;
SIGNAL \kb|ps2_alt0|ALT_INV_ps2_clk_io~en_q\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_stm_rst_o~en_q\ : std_logic;
SIGNAL \ALT_INV_stm_rst_o~reg0_q\ : std_logic;

BEGIN

ww_clock_50_i <= clock_50_i;
ww_btn_n_i <= btn_n_i;
ww_joy1_up_i <= joy1_up_i;
ww_joy1_down_i <= joy1_down_i;
ww_joy1_left_i <= joy1_left_i;
ww_joy1_right_i <= joy1_right_i;
ww_joy1_p6_i <= joy1_p6_i;
ww_joy1_p9_i <= joy1_p9_i;
ww_joy2_up_i <= joy2_up_i;
ww_joy2_down_i <= joy2_down_i;
ww_joy2_left_i <= joy2_left_i;
ww_joy2_right_i <= joy2_right_i;
ww_joy2_p6_i <= joy2_p6_i;
ww_joy2_p9_i <= joy2_p9_i;
joyX_p7_o <= ww_joyX_p7_o;
vga_r_o <= ww_vga_r_o;
vga_g_o <= ww_vga_g_o;
vga_b_o <= ww_vga_b_o;
vga_hsync_n_o <= ww_vga_hsync_n_o;
vga_vsync_n_o <= ww_vga_vsync_n_o;
stm_rst_o <= ww_stm_rst_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\osd1|sbuf\(7) & \osd1|sbuf\(6) & \osd1|sbuf\(5) & \osd1|sbuf\(4));

\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\osd1|bcnt\(10) & \osd1|bcnt\(9) & \osd1|bcnt\(8) & \osd1|bcnt\(7) & \osd1|bcnt\(6) & \osd1|bcnt\(5) & \osd1|bcnt\(4) & \osd1|bcnt\(3) & \osd1|bcnt\(2) & 
\osd1|bcnt\(1) & \osd1|bcnt\(0));

\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\osd1|Add17~14_combout\ & \osd1|Add17~12_combout\ & \osd1|Add17~10_combout\ & \osd1|Add16~12_combout\ & \osd1|Add16~10_combout\ & \osd1|Add16~8_combout\ & \osd1|Add16~6_combout\ & 
\osd1|Add16~4_combout\ & \osd1|Add16~2_combout\ & \osd1|Add16~0_combout\ & \osd1|Add15~0_combout\);

\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);
\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a5\ <= \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(1);
\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a6\ <= \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(2);
\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a7\ <= \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(3);

\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\osd1|sbuf\(3) & \osd1|sbuf\(2) & \osd1|sbuf\(1) & \stm_b15_io~input_o\);

\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\osd1|bcnt\(10) & \osd1|bcnt\(9) & \osd1|bcnt\(8) & \osd1|bcnt\(7) & \osd1|bcnt\(6) & \osd1|bcnt\(5) & \osd1|bcnt\(4) & \osd1|bcnt\(3) & \osd1|bcnt\(2) & 
\osd1|bcnt\(1) & \osd1|bcnt\(0));

\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\osd1|Add17~14_combout\ & \osd1|Add17~12_combout\ & \osd1|Add17~10_combout\ & \osd1|Add16~12_combout\ & \osd1|Add16~10_combout\ & \osd1|Add16~8_combout\ & \osd1|Add16~6_combout\ & 
\osd1|Add16~4_combout\ & \osd1|Add16~2_combout\ & \osd1|Add16~0_combout\ & \osd1|Add15~0_combout\);

\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a1\ <= \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a2\ <= \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a3\ <= \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\U00|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clock_50_i~input_o\);

\U00|altpll_component|auto_generated|wire_pll1_clk\(0) <= \U00|altpll_component|auto_generated|pll1_CLK_bus\(0);
\U00|altpll_component|auto_generated|wire_pll1_clk\(1) <= \U00|altpll_component|auto_generated|pll1_CLK_bus\(1);
\U00|altpll_component|auto_generated|wire_pll1_clk\(2) <= \U00|altpll_component|auto_generated|pll1_CLK_bus\(2);
\U00|altpll_component|auto_generated|wire_pll1_clk\(3) <= \U00|altpll_component|auto_generated|pll1_CLK_bus\(3);
\U00|altpll_component|auto_generated|wire_pll1_clk\(4) <= \U00|altpll_component|auto_generated|pll1_CLK_bus\(4);

\kb|ps2_alt0|sigtrigger~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \kb|ps2_alt0|sigtrigger~q\);

\U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U00|altpll_component|auto_generated|wire_pll1_clk\(0));

\vga1|hs~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \vga1|hs~q\);

\clock_div_q[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & clock_div_q(1));

\kb|ps2_alt0|FROMPS2~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \kb|ps2_alt0|FROMPS2~0_combout\);

\kb|ps2_alt0|sigsendend~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \kb|ps2_alt0|sigsendend~2_combout\);

\kb|ps2_alt0|process_2~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \kb|ps2_alt0|process_2~0_combout\);
\kb|ps2_alt0|ALT_INV_process_2~0clkctrl_outclk\ <= NOT \kb|ps2_alt0|process_2~0clkctrl_outclk\;
\kb|ps2_alt0|ALT_INV_sigsendend~2clkctrl_outclk\ <= NOT \kb|ps2_alt0|sigsendend~2clkctrl_outclk\;
\kb|ps2_alt0|ALT_INV_FROMPS2~0clkctrl_outclk\ <= NOT \kb|ps2_alt0|FROMPS2~0clkctrl_outclk\;
\vga1|ALT_INV_hs~clkctrl_outclk\ <= NOT \vga1|hs~clkctrl_outclk\;
\U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;
\ALT_INV_stm_b13_io~input_o\ <= NOT \stm_b13_io~input_o\;
\ALT_INV_stm_b12_io~input_o\ <= NOT \stm_b12_io~input_o\;
\kb|ps2_alt0|ALT_INV_ps2_data_io~0_combout\ <= NOT \kb|ps2_alt0|ps2_data_io~0_combout\;
\ALT_INV_reset_s~q\ <= NOT \reset_s~q\;
\kb|ps2_alt0|ALT_INV_sigclkheld~q\ <= NOT \kb|ps2_alt0|sigclkheld~q\;
\kb|ps2_alt0|ALT_INV_ps2_clk_io~en_q\ <= NOT \kb|ps2_alt0|ps2_clk_io~en_q\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_stm_rst_o~en_q\ <= NOT \stm_rst_o~en_q\;
\ALT_INV_stm_rst_o~reg0_q\ <= NOT \stm_rst_o~reg0_q\;

-- Location: IOOBUF_X40_Y0_N23
\stm_rst_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_stm_rst_o~reg0_q\,
	oe => \ALT_INV_stm_rst_o~en_q\,
	devoe => ww_devoe,
	o => ww_stm_rst_o);

-- Location: IOOBUF_X14_Y0_N16
\joyX_p7_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \joyP7_s~q\,
	devoe => ww_devoe,
	o => ww_joyX_p7_o);

-- Location: IOOBUF_X0_Y23_N23
\vga_r_o[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_vga_r_o(0));

-- Location: IOOBUF_X0_Y10_N23
\vga_r_o[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_vga_r_o(1));

-- Location: IOOBUF_X14_Y34_N16
\vga_r_o[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_vga_r_o(2));

-- Location: IOOBUF_X0_Y24_N16
\vga_r_o[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \info1|r_o[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_vga_r_o(3));

-- Location: IOOBUF_X0_Y6_N16
\vga_r_o[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \info1|r_o[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_vga_r_o(4));

-- Location: IOOBUF_X43_Y0_N23
\vga_g_o[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_vga_g_o(0));

-- Location: IOOBUF_X0_Y11_N2
\vga_g_o[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_vga_g_o(1));

-- Location: IOOBUF_X0_Y8_N23
\vga_g_o[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_vga_g_o(2));

-- Location: IOOBUF_X0_Y4_N16
\vga_g_o[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \info1|r_o[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_vga_g_o(3));

-- Location: IOOBUF_X3_Y0_N2
\vga_g_o[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \info1|r_o[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_vga_g_o(4));

-- Location: IOOBUF_X0_Y7_N9
\vga_b_o[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_vga_b_o(0));

-- Location: IOOBUF_X0_Y11_N9
\vga_b_o[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_vga_b_o(1));

-- Location: IOOBUF_X0_Y7_N2
\vga_b_o[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \info1|r_o[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_vga_b_o(2));

-- Location: IOOBUF_X0_Y4_N23
\vga_b_o[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \info1|b_o[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_vga_b_o(3));

-- Location: IOOBUF_X0_Y5_N23
\vga_b_o[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \info1|r_o[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_vga_b_o(4));

-- Location: IOOBUF_X0_Y12_N9
\vga_hsync_n_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga1|hs~q\,
	devoe => ww_devoe,
	o => ww_vga_hsync_n_o);

-- Location: IOOBUF_X0_Y12_N2
\vga_vsync_n_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga1|vs~q\,
	devoe => ww_devoe,
	o => ww_vga_vsync_n_o);

-- Location: IOOBUF_X16_Y34_N16
\ps2_clk_io~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \kb|ps2_alt0|ALT_INV_ps2_clk_io~en_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ps2_clk_io);

-- Location: IOOBUF_X0_Y23_N2
\ps2_data_io~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kb|ps2_alt0|ps2_data_io~reg0_q\,
	oe => \kb|ps2_alt0|ps2_data_io~2_combout\,
	devoe => ww_devoe,
	o => ps2_data_io);

-- Location: IOOBUF_X49_Y0_N9
\stm_b12_io~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => stm_b12_io);

-- Location: IOOBUF_X53_Y6_N16
\stm_b13_io~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => stm_b13_io);

-- Location: IOOBUF_X53_Y8_N23
\stm_b14_io~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \osd1|sdo_s~q\,
	oe => \osd1|sdo_s~en_q\,
	devoe => ww_devoe,
	o => stm_b14_io);

-- Location: IOOBUF_X45_Y0_N16
\stm_b15_io~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => stm_b15_io);

-- Location: IOIBUF_X0_Y16_N8
\clock_50_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50_i,
	o => \clock_50_i~input_o\);

-- Location: PLL_1
\U00|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 13,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
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
	clk0_divide_by => 125,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 63,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
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
	loop_filter_r_bits => 16,
	m => 63,
	m_initial => 1,
	m_ph => 0,
	n => 5,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 198,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \U00|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \U00|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \U00|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \U00|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X40_Y1_N16
\stm_rst_o~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stm_rst_o~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \stm_rst_o~reg0feeder_combout\);

-- Location: FF_X40_Y1_N17
\stm_rst_o~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \stm_rst_o~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stm_rst_o~reg0_q\);

-- Location: LCCOMB_X19_Y6_N22
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (power_on_s(4) & (power_on_s(3) & (power_on_s(2) & power_on_s(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => power_on_s(4),
	datab => power_on_s(3),
	datac => power_on_s(2),
	datad => power_on_s(1),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X18_Y6_N16
\power_on_s[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \power_on_s[0]~0_combout\ = ((\Equal0~0_combout\ & \Equal0~1_combout\)) # (!power_on_s(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => power_on_s(0),
	datad => \Equal0~1_combout\,
	combout => \power_on_s[0]~0_combout\);

-- Location: FF_X18_Y6_N17
\power_on_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \power_on_s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => power_on_s(0));

-- Location: LCCOMB_X19_Y6_N6
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(!power_on_s(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => power_on_s(0),
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X19_Y6_N8
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (power_on_s(1) & (!\Add0~1_cout\)) # (!power_on_s(1) & (\Add0~1_cout\ & VCC))
-- \Add0~3\ = CARRY((power_on_s(1) & !\Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => power_on_s(1),
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X19_Y6_N28
\power_on_s[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \power_on_s[1]~7_combout\ = !\Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	combout => \power_on_s[1]~7_combout\);

-- Location: FF_X19_Y6_N29
\power_on_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \power_on_s[1]~7_combout\,
	ena => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => power_on_s(1));

-- Location: LCCOMB_X19_Y6_N10
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (power_on_s(2) & (\Add0~3\ $ (GND))) # (!power_on_s(2) & ((GND) # (!\Add0~3\)))
-- \Add0~5\ = CARRY((!\Add0~3\) # (!power_on_s(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => power_on_s(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X19_Y6_N26
\power_on_s[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \power_on_s[2]~6_combout\ = !\Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~4_combout\,
	combout => \power_on_s[2]~6_combout\);

-- Location: FF_X19_Y6_N27
\power_on_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \power_on_s[2]~6_combout\,
	ena => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => power_on_s(2));

-- Location: LCCOMB_X19_Y6_N12
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (power_on_s(3) & (!\Add0~5\)) # (!power_on_s(3) & (\Add0~5\ & VCC))
-- \Add0~7\ = CARRY((power_on_s(3) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => power_on_s(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X19_Y6_N0
\power_on_s[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \power_on_s[3]~5_combout\ = !\Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~6_combout\,
	combout => \power_on_s[3]~5_combout\);

-- Location: FF_X19_Y6_N1
\power_on_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \power_on_s[3]~5_combout\,
	ena => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => power_on_s(3));

-- Location: LCCOMB_X19_Y6_N14
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (power_on_s(4) & (\Add0~7\ $ (GND))) # (!power_on_s(4) & ((GND) # (!\Add0~7\)))
-- \Add0~9\ = CARRY((!\Add0~7\) # (!power_on_s(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => power_on_s(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X19_Y6_N30
\power_on_s[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \power_on_s[4]~4_combout\ = !\Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \power_on_s[4]~4_combout\);

-- Location: FF_X19_Y6_N31
\power_on_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \power_on_s[4]~4_combout\,
	ena => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => power_on_s(4));

-- Location: LCCOMB_X19_Y6_N16
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (power_on_s(5) & (!\Add0~9\)) # (!power_on_s(5) & (\Add0~9\ & VCC))
-- \Add0~11\ = CARRY((power_on_s(5) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => power_on_s(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X19_Y6_N4
\power_on_s[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \power_on_s[5]~3_combout\ = !\Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~10_combout\,
	combout => \power_on_s[5]~3_combout\);

-- Location: FF_X19_Y6_N5
\power_on_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \power_on_s[5]~3_combout\,
	ena => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => power_on_s(5));

-- Location: LCCOMB_X19_Y6_N18
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (power_on_s(6) & (\Add0~11\ $ (GND))) # (!power_on_s(6) & ((GND) # (!\Add0~11\)))
-- \Add0~13\ = CARRY((!\Add0~11\) # (!power_on_s(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => power_on_s(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X19_Y6_N2
\power_on_s[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \power_on_s[6]~2_combout\ = !\Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~12_combout\,
	combout => \power_on_s[6]~2_combout\);

-- Location: FF_X19_Y6_N3
\power_on_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \power_on_s[6]~2_combout\,
	ena => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => power_on_s(6));

-- Location: LCCOMB_X19_Y6_N20
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~13\ $ (power_on_s(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => power_on_s(7),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X19_Y6_N24
\power_on_s[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \power_on_s[7]~1_combout\ = !\Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~14_combout\,
	combout => \power_on_s[7]~1_combout\);

-- Location: FF_X19_Y6_N25
\power_on_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \power_on_s[7]~1_combout\,
	ena => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => power_on_s(7));

-- Location: LCCOMB_X18_Y6_N10
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (power_on_s(6) & (power_on_s(7) & (power_on_s(0) & power_on_s(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => power_on_s(6),
	datab => power_on_s(7),
	datac => power_on_s(0),
	datad => power_on_s(5),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X18_Y6_N12
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & \Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: FF_X19_Y6_N9
\stm_rst_o~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Equal0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stm_rst_o~en_q\);

-- Location: LCCOMB_X28_Y1_N12
\vga1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~0_combout\ = \vga1|h_cnt\(0) $ (VCC)
-- \vga1|Add0~1\ = CARRY(\vga1|h_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|h_cnt\(0),
	datad => VCC,
	combout => \vga1|Add0~0_combout\,
	cout => \vga1|Add0~1\);

-- Location: FF_X28_Y1_N13
\vga1|h_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|h_cnt\(0));

-- Location: LCCOMB_X27_Y1_N28
\clock_div_q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_q[1]~1_combout\ = \vga1|h_cnt\(0) $ (clock_div_q(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|h_cnt\(0),
	datac => clock_div_q(1),
	combout => \clock_div_q[1]~1_combout\);

-- Location: FF_X27_Y1_N29
\clock_div_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \clock_div_q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_q(1));

-- Location: CLKCTRL_G19
\clock_div_q[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_div_q[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_div_q[1]~clkctrl_outclk\);

-- Location: LCCOMB_X11_Y19_N8
\kb|ps2_alt0|count[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|count[0]~8_combout\ = \kb|ps2_alt0|count\(0) $ (VCC)
-- \kb|ps2_alt0|count[0]~9\ = CARRY(\kb|ps2_alt0|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|count\(0),
	datad => VCC,
	combout => \kb|ps2_alt0|count[0]~8_combout\,
	cout => \kb|ps2_alt0|count[0]~9\);

-- Location: IOIBUF_X16_Y34_N15
\ps2_clk_io~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ps2_clk_io,
	o => \ps2_clk_io~input_o\);

-- Location: LCCOMB_X26_Y1_N24
\kb|ps2_alt0|rcount[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|rcount[2]~1_combout\ = (\ps2_clk_io~input_o\ & ((\kb|ps2_alt0|rcount\(2)) # ((\kb|ps2_alt0|rcount\(1) & \kb|ps2_alt0|rcount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_clk_io~input_o\,
	datab => \kb|ps2_alt0|rcount\(1),
	datac => \kb|ps2_alt0|rcount\(2),
	datad => \kb|ps2_alt0|rcount\(0),
	combout => \kb|ps2_alt0|rcount[2]~1_combout\);

-- Location: LCCOMB_X18_Y6_N14
\reset_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_s~0_combout\ = !\Equal0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal0~2_combout\,
	combout => \reset_s~0_combout\);

-- Location: FF_X18_Y6_N15
reset_s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reset_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_s~q\);

-- Location: FF_X26_Y1_N25
\kb|ps2_alt0|rcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div_q[1]~clkctrl_outclk\,
	d => \kb|ps2_alt0|rcount[2]~1_combout\,
	clrn => \ALT_INV_reset_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|rcount\(2));

-- Location: LCCOMB_X26_Y1_N20
\kb|ps2_alt0|rcount[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|rcount[0]~3_combout\ = (\ps2_clk_io~input_o\ & ((\kb|ps2_alt0|rcount\(0) & ((\kb|ps2_alt0|rcount\(2)))) # (!\kb|ps2_alt0|rcount\(0) & ((!\kb|ps2_alt0|rcount\(2)) # (!\kb|ps2_alt0|rcount\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_clk_io~input_o\,
	datab => \kb|ps2_alt0|rcount\(1),
	datac => \kb|ps2_alt0|rcount\(0),
	datad => \kb|ps2_alt0|rcount\(2),
	combout => \kb|ps2_alt0|rcount[0]~3_combout\);

-- Location: FF_X26_Y1_N21
\kb|ps2_alt0|rcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div_q[1]~clkctrl_outclk\,
	d => \kb|ps2_alt0|rcount[0]~3_combout\,
	clrn => \ALT_INV_reset_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|rcount\(0));

-- Location: LCCOMB_X26_Y1_N26
\kb|ps2_alt0|rcount~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|rcount~2_combout\ = (\ps2_clk_io~input_o\ & (\kb|ps2_alt0|rcount\(1) $ (((\kb|ps2_alt0|rcount\(0) & !\kb|ps2_alt0|rcount\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_clk_io~input_o\,
	datab => \kb|ps2_alt0|rcount\(0),
	datac => \kb|ps2_alt0|rcount\(1),
	datad => \kb|ps2_alt0|rcount\(2),
	combout => \kb|ps2_alt0|rcount~2_combout\);

-- Location: FF_X26_Y1_N27
\kb|ps2_alt0|rcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div_q[1]~clkctrl_outclk\,
	d => \kb|ps2_alt0|rcount~2_combout\,
	clrn => \ALT_INV_reset_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|rcount\(1));

-- Location: LCCOMB_X26_Y1_N22
\kb|ps2_alt0|rcount[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|rcount[0]~0_combout\ = (\ps2_clk_io~input_o\ & (\kb|ps2_alt0|rcount\(2) & ((\kb|ps2_alt0|rcount\(1)) # (\kb|ps2_alt0|rcount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|rcount\(1),
	datab => \kb|ps2_alt0|rcount\(0),
	datac => \ps2_clk_io~input_o\,
	datad => \kb|ps2_alt0|rcount\(2),
	combout => \kb|ps2_alt0|rcount[0]~0_combout\);

-- Location: LCCOMB_X26_Y1_N12
\kb|ps2_alt0|fcount[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|fcount[0]~2_combout\ = (!\ps2_clk_io~input_o\ & ((\kb|ps2_alt0|fcount\(2) & ((\kb|ps2_alt0|fcount\(0)) # (!\kb|ps2_alt0|fcount\(1)))) # (!\kb|ps2_alt0|fcount\(2) & (!\kb|ps2_alt0|fcount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_clk_io~input_o\,
	datab => \kb|ps2_alt0|fcount\(2),
	datac => \kb|ps2_alt0|fcount\(0),
	datad => \kb|ps2_alt0|fcount\(1),
	combout => \kb|ps2_alt0|fcount[0]~2_combout\);

-- Location: FF_X26_Y1_N13
\kb|ps2_alt0|fcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div_q[1]~clkctrl_outclk\,
	d => \kb|ps2_alt0|fcount[0]~2_combout\,
	clrn => \ALT_INV_reset_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|fcount\(0));

-- Location: LCCOMB_X26_Y1_N0
\kb|ps2_alt0|fcount[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|fcount[2]~0_combout\ = (!\ps2_clk_io~input_o\ & ((\kb|ps2_alt0|fcount\(2)) # ((\kb|ps2_alt0|fcount\(1) & \kb|ps2_alt0|fcount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|fcount\(1),
	datab => \ps2_clk_io~input_o\,
	datac => \kb|ps2_alt0|fcount\(2),
	datad => \kb|ps2_alt0|fcount\(0),
	combout => \kb|ps2_alt0|fcount[2]~0_combout\);

-- Location: FF_X26_Y1_N1
\kb|ps2_alt0|fcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div_q[1]~clkctrl_outclk\,
	d => \kb|ps2_alt0|fcount[2]~0_combout\,
	clrn => \ALT_INV_reset_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|fcount\(2));

-- Location: LCCOMB_X26_Y1_N10
\kb|ps2_alt0|fcount~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|fcount~1_combout\ = (!\ps2_clk_io~input_o\ & (\kb|ps2_alt0|fcount\(1) $ (((!\kb|ps2_alt0|fcount\(2) & \kb|ps2_alt0|fcount\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_clk_io~input_o\,
	datab => \kb|ps2_alt0|fcount\(2),
	datac => \kb|ps2_alt0|fcount\(1),
	datad => \kb|ps2_alt0|fcount\(0),
	combout => \kb|ps2_alt0|fcount~1_combout\);

-- Location: FF_X26_Y1_N11
\kb|ps2_alt0|fcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div_q[1]~clkctrl_outclk\,
	d => \kb|ps2_alt0|fcount~1_combout\,
	clrn => \ALT_INV_reset_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|fcount\(1));

-- Location: LCCOMB_X26_Y1_N30
\kb|ps2_alt0|sigtrigger~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|sigtrigger~0_combout\ = (\kb|ps2_alt0|fcount\(2) & (!\ps2_clk_io~input_o\ & ((\kb|ps2_alt0|fcount\(1)) # (\kb|ps2_alt0|fcount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|fcount\(1),
	datab => \kb|ps2_alt0|fcount\(2),
	datac => \ps2_clk_io~input_o\,
	datad => \kb|ps2_alt0|fcount\(0),
	combout => \kb|ps2_alt0|sigtrigger~0_combout\);

-- Location: LCCOMB_X27_Y1_N4
\kb|ps2_alt0|sigtrigger~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|sigtrigger~1_combout\ = (\kb|ps2_alt0|sigtrigger~0_combout\) # ((!\kb|ps2_alt0|rcount[0]~0_combout\ & \kb|ps2_alt0|sigtrigger~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|rcount[0]~0_combout\,
	datac => \kb|ps2_alt0|sigtrigger~q\,
	datad => \kb|ps2_alt0|sigtrigger~0_combout\,
	combout => \kb|ps2_alt0|sigtrigger~1_combout\);

-- Location: FF_X27_Y1_N5
\kb|ps2_alt0|sigtrigger\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clock_div_q(1),
	d => \kb|ps2_alt0|sigtrigger~1_combout\,
	clrn => \ALT_INV_reset_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|sigtrigger~q\);

-- Location: CLKCTRL_G18
\kb|ps2_alt0|sigtrigger~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \kb|ps2_alt0|sigtrigger~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \kb|ps2_alt0|sigtrigger~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y20_N4
\kb|ps2_alt0|TOPS2:count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|TOPS2:count[0]~0_combout\ = !\kb|ps2_alt0|TOPS2:count[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kb|ps2_alt0|TOPS2:count[0]~q\,
	combout => \kb|ps2_alt0|TOPS2:count[0]~0_combout\);

-- Location: LCCOMB_X11_Y19_N16
\kb|ps2_alt0|count[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|count[4]~16_combout\ = (\kb|ps2_alt0|count\(4) & (\kb|ps2_alt0|count[3]~15\ $ (GND))) # (!\kb|ps2_alt0|count\(4) & (!\kb|ps2_alt0|count[3]~15\ & VCC))
-- \kb|ps2_alt0|count[4]~17\ = CARRY((\kb|ps2_alt0|count\(4) & !\kb|ps2_alt0|count[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|count\(4),
	datad => VCC,
	cin => \kb|ps2_alt0|count[3]~15\,
	combout => \kb|ps2_alt0|count[4]~16_combout\,
	cout => \kb|ps2_alt0|count[4]~17\);

-- Location: LCCOMB_X11_Y19_N18
\kb|ps2_alt0|count[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|count[5]~18_combout\ = (\kb|ps2_alt0|count\(5) & (!\kb|ps2_alt0|count[4]~17\)) # (!\kb|ps2_alt0|count\(5) & ((\kb|ps2_alt0|count[4]~17\) # (GND)))
-- \kb|ps2_alt0|count[5]~19\ = CARRY((!\kb|ps2_alt0|count[4]~17\) # (!\kb|ps2_alt0|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|count\(5),
	datad => VCC,
	cin => \kb|ps2_alt0|count[4]~17\,
	combout => \kb|ps2_alt0|count[5]~18_combout\,
	cout => \kb|ps2_alt0|count[5]~19\);

-- Location: IOIBUF_X0_Y23_N1
\ps2_data_io~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ps2_data_io,
	o => \ps2_data_io~input_o\);

-- Location: LCCOMB_X17_Y15_N8
\kb|ps2_alt0|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|Add3~0_combout\ = \kb|ps2_alt0|FROMPS2:count[3]~q\ $ (((\kb|ps2_alt0|FROMPS2:count[1]~q\ & (\kb|ps2_alt0|FROMPS2:count[0]~q\ & \kb|ps2_alt0|FROMPS2:count[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|FROMPS2:count[1]~q\,
	datab => \kb|ps2_alt0|FROMPS2:count[0]~q\,
	datac => \kb|ps2_alt0|FROMPS2:count[2]~q\,
	datad => \kb|ps2_alt0|FROMPS2:count[3]~q\,
	combout => \kb|ps2_alt0|Add3~0_combout\);

-- Location: LCCOMB_X17_Y15_N12
\kb|ps2_alt0|count~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|count~25_combout\ = (\kb|ps2_alt0|Add3~0_combout\ & ((\kb|ps2_alt0|Equal0~0_combout\ & (!\ps2_data_io~input_o\)) # (!\kb|ps2_alt0|Equal0~0_combout\ & ((!\kb|ps2_alt0|Equal2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_data_io~input_o\,
	datab => \kb|ps2_alt0|Equal2~0_combout\,
	datac => \kb|ps2_alt0|Add3~0_combout\,
	datad => \kb|ps2_alt0|Equal0~0_combout\,
	combout => \kb|ps2_alt0|count~25_combout\);

-- Location: LCCOMB_X14_Y20_N12
\kb|ps2_alt0|FROMPS2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|FROMPS2~0_combout\ = (\kb|ps2_alt0|sigsending~q\) # (\reset_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sigsending~q\,
	datad => \reset_s~q\,
	combout => \kb|ps2_alt0|FROMPS2~0_combout\);

-- Location: CLKCTRL_G0
\kb|ps2_alt0|FROMPS2~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \kb|ps2_alt0|FROMPS2~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \kb|ps2_alt0|FROMPS2~0clkctrl_outclk\);

-- Location: FF_X17_Y15_N13
\kb|ps2_alt0|FROMPS2:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kb|ps2_alt0|sigtrigger~clkctrl_outclk\,
	d => \kb|ps2_alt0|count~25_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_FROMPS2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|FROMPS2:count[3]~q\);

-- Location: LCCOMB_X17_Y15_N20
\kb|ps2_alt0|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|Equal2~0_combout\ = (\kb|ps2_alt0|FROMPS2:count[1]~q\ & (!\kb|ps2_alt0|FROMPS2:count[0]~q\ & (!\kb|ps2_alt0|FROMPS2:count[2]~q\ & \kb|ps2_alt0|FROMPS2:count[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|FROMPS2:count[1]~q\,
	datab => \kb|ps2_alt0|FROMPS2:count[0]~q\,
	datac => \kb|ps2_alt0|FROMPS2:count[2]~q\,
	datad => \kb|ps2_alt0|FROMPS2:count[3]~q\,
	combout => \kb|ps2_alt0|Equal2~0_combout\);

-- Location: LCCOMB_X17_Y15_N6
\kb|ps2_alt0|count~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|count~26_combout\ = (\kb|ps2_alt0|Equal0~0_combout\ & ((\ps2_data_io~input_o\))) # (!\kb|ps2_alt0|Equal0~0_combout\ & (\kb|ps2_alt0|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|Equal2~0_combout\,
	datac => \ps2_data_io~input_o\,
	datad => \kb|ps2_alt0|Equal0~0_combout\,
	combout => \kb|ps2_alt0|count~26_combout\);

-- Location: LCCOMB_X17_Y15_N22
\kb|ps2_alt0|count~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|count~27_combout\ = (!\kb|ps2_alt0|count~26_combout\ & (\kb|ps2_alt0|FROMPS2:count[2]~q\ $ (((\kb|ps2_alt0|FROMPS2:count[1]~q\ & \kb|ps2_alt0|FROMPS2:count[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|FROMPS2:count[1]~q\,
	datab => \kb|ps2_alt0|FROMPS2:count[0]~q\,
	datac => \kb|ps2_alt0|FROMPS2:count[2]~q\,
	datad => \kb|ps2_alt0|count~26_combout\,
	combout => \kb|ps2_alt0|count~27_combout\);

-- Location: FF_X17_Y15_N23
\kb|ps2_alt0|FROMPS2:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kb|ps2_alt0|sigtrigger~clkctrl_outclk\,
	d => \kb|ps2_alt0|count~27_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_FROMPS2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|FROMPS2:count[2]~q\);

-- Location: LCCOMB_X17_Y15_N10
\kb|ps2_alt0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|Equal0~0_combout\ = (!\kb|ps2_alt0|FROMPS2:count[1]~q\ & (!\kb|ps2_alt0|FROMPS2:count[0]~q\ & (!\kb|ps2_alt0|FROMPS2:count[2]~q\ & !\kb|ps2_alt0|FROMPS2:count[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|FROMPS2:count[1]~q\,
	datab => \kb|ps2_alt0|FROMPS2:count[0]~q\,
	datac => \kb|ps2_alt0|FROMPS2:count[2]~q\,
	datad => \kb|ps2_alt0|FROMPS2:count[3]~q\,
	combout => \kb|ps2_alt0|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y15_N24
\kb|ps2_alt0|FROMPS2:count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|FROMPS2:count[0]~0_combout\ = (!\kb|ps2_alt0|FROMPS2:count[0]~q\ & ((\kb|ps2_alt0|Equal0~0_combout\ & (!\ps2_data_io~input_o\)) # (!\kb|ps2_alt0|Equal0~0_combout\ & ((!\kb|ps2_alt0|Equal2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|Equal0~0_combout\,
	datab => \ps2_data_io~input_o\,
	datac => \kb|ps2_alt0|FROMPS2:count[0]~q\,
	datad => \kb|ps2_alt0|Equal2~0_combout\,
	combout => \kb|ps2_alt0|FROMPS2:count[0]~0_combout\);

-- Location: FF_X17_Y15_N25
\kb|ps2_alt0|FROMPS2:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kb|ps2_alt0|sigtrigger~clkctrl_outclk\,
	d => \kb|ps2_alt0|FROMPS2:count[0]~0_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_FROMPS2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|FROMPS2:count[0]~q\);

-- Location: LCCOMB_X16_Y15_N14
\kb|ps2_alt0|count~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|count~28_combout\ = (!\kb|ps2_alt0|count~26_combout\ & (\kb|ps2_alt0|FROMPS2:count[0]~q\ $ (\kb|ps2_alt0|FROMPS2:count[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|FROMPS2:count[0]~q\,
	datac => \kb|ps2_alt0|FROMPS2:count[1]~q\,
	datad => \kb|ps2_alt0|count~26_combout\,
	combout => \kb|ps2_alt0|count~28_combout\);

-- Location: FF_X16_Y15_N15
\kb|ps2_alt0|FROMPS2:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kb|ps2_alt0|sigtrigger~clkctrl_outclk\,
	d => \kb|ps2_alt0|count~28_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_FROMPS2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|FROMPS2:count[1]~q\);

-- Location: LCCOMB_X16_Y15_N8
\kb|ps2_alt0|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|Decoder0~5_combout\ = (\kb|ps2_alt0|FROMPS2:count[1]~q\ & (\kb|ps2_alt0|FROMPS2:count[0]~q\ & (!\kb|ps2_alt0|FROMPS2:count[3]~q\ & !\kb|ps2_alt0|FROMPS2:count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|FROMPS2:count[1]~q\,
	datab => \kb|ps2_alt0|FROMPS2:count[0]~q\,
	datac => \kb|ps2_alt0|FROMPS2:count[3]~q\,
	datad => \kb|ps2_alt0|FROMPS2:count[2]~q\,
	combout => \kb|ps2_alt0|Decoder0~5_combout\);

-- Location: LCCOMB_X16_Y15_N22
\kb|ps2_alt0|sdata[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|sdata[2]~5_combout\ = (\kb|ps2_alt0|Decoder0~5_combout\ & (\ps2_data_io~input_o\)) # (!\kb|ps2_alt0|Decoder0~5_combout\ & ((\kb|ps2_alt0|sdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_data_io~input_o\,
	datab => \kb|ps2_alt0|Decoder0~5_combout\,
	datac => \kb|ps2_alt0|sdata\(2),
	combout => \kb|ps2_alt0|sdata[2]~5_combout\);

-- Location: FF_X16_Y15_N23
\kb|ps2_alt0|sdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kb|ps2_alt0|sigtrigger~clkctrl_outclk\,
	d => \kb|ps2_alt0|sdata[2]~5_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_FROMPS2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|sdata\(2));

-- Location: LCCOMB_X16_Y15_N26
\kb|ps2_alt0|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|Decoder0~6_combout\ = (!\kb|ps2_alt0|FROMPS2:count[1]~q\ & (!\kb|ps2_alt0|FROMPS2:count[0]~q\ & (!\kb|ps2_alt0|FROMPS2:count[3]~q\ & \kb|ps2_alt0|FROMPS2:count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|FROMPS2:count[1]~q\,
	datab => \kb|ps2_alt0|FROMPS2:count[0]~q\,
	datac => \kb|ps2_alt0|FROMPS2:count[3]~q\,
	datad => \kb|ps2_alt0|FROMPS2:count[2]~q\,
	combout => \kb|ps2_alt0|Decoder0~6_combout\);

-- Location: LCCOMB_X16_Y15_N16
\kb|ps2_alt0|sdata[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|sdata[3]~6_combout\ = (\kb|ps2_alt0|Decoder0~6_combout\ & ((\ps2_data_io~input_o\))) # (!\kb|ps2_alt0|Decoder0~6_combout\ & (\kb|ps2_alt0|sdata\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|Decoder0~6_combout\,
	datac => \kb|ps2_alt0|sdata\(3),
	datad => \ps2_data_io~input_o\,
	combout => \kb|ps2_alt0|sdata[3]~6_combout\);

-- Location: FF_X16_Y15_N17
\kb|ps2_alt0|sdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kb|ps2_alt0|sigtrigger~clkctrl_outclk\,
	d => \kb|ps2_alt0|sdata[3]~6_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_FROMPS2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|sdata\(3));

-- Location: LCCOMB_X17_Y15_N14
\kb|ps2_alt0|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|Decoder0~4_combout\ = (\kb|ps2_alt0|FROMPS2:count[1]~q\ & (!\kb|ps2_alt0|FROMPS2:count[0]~q\ & (!\kb|ps2_alt0|FROMPS2:count[2]~q\ & !\kb|ps2_alt0|FROMPS2:count[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|FROMPS2:count[1]~q\,
	datab => \kb|ps2_alt0|FROMPS2:count[0]~q\,
	datac => \kb|ps2_alt0|FROMPS2:count[2]~q\,
	datad => \kb|ps2_alt0|FROMPS2:count[3]~q\,
	combout => \kb|ps2_alt0|Decoder0~4_combout\);

-- Location: LCCOMB_X17_Y15_N26
\kb|ps2_alt0|sdata[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|sdata[1]~4_combout\ = (\kb|ps2_alt0|Decoder0~4_combout\ & ((\ps2_data_io~input_o\))) # (!\kb|ps2_alt0|Decoder0~4_combout\ & (\kb|ps2_alt0|sdata\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|Decoder0~4_combout\,
	datac => \kb|ps2_alt0|sdata\(1),
	datad => \ps2_data_io~input_o\,
	combout => \kb|ps2_alt0|sdata[1]~4_combout\);

-- Location: FF_X17_Y15_N27
\kb|ps2_alt0|sdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kb|ps2_alt0|sigtrigger~clkctrl_outclk\,
	d => \kb|ps2_alt0|sdata[1]~4_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_FROMPS2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|sdata\(1));

-- Location: LCCOMB_X16_Y15_N6
\kb|ps2_alt0|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|Decoder0~2_combout\ = (!\kb|ps2_alt0|FROMPS2:count[1]~q\ & (!\kb|ps2_alt0|FROMPS2:count[0]~q\ & (\kb|ps2_alt0|FROMPS2:count[3]~q\ & !\kb|ps2_alt0|FROMPS2:count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|FROMPS2:count[1]~q\,
	datab => \kb|ps2_alt0|FROMPS2:count[0]~q\,
	datac => \kb|ps2_alt0|FROMPS2:count[3]~q\,
	datad => \kb|ps2_alt0|FROMPS2:count[2]~q\,
	combout => \kb|ps2_alt0|Decoder0~2_combout\);

-- Location: LCCOMB_X16_Y15_N28
\kb|ps2_alt0|sdata[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|sdata[7]~2_combout\ = (\kb|ps2_alt0|Decoder0~2_combout\ & ((\ps2_data_io~input_o\))) # (!\kb|ps2_alt0|Decoder0~2_combout\ & (\kb|ps2_alt0|sdata\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|Decoder0~2_combout\,
	datac => \kb|ps2_alt0|sdata\(7),
	datad => \ps2_data_io~input_o\,
	combout => \kb|ps2_alt0|sdata[7]~2_combout\);

-- Location: FF_X16_Y15_N29
\kb|ps2_alt0|sdata[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kb|ps2_alt0|sigtrigger~clkctrl_outclk\,
	d => \kb|ps2_alt0|sdata[7]~2_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_FROMPS2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|sdata\(7));

-- Location: LCCOMB_X16_Y15_N24
\kb|ps2_alt0|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|Decoder0~0_combout\ = (\kb|ps2_alt0|FROMPS2:count[1]~q\ & (\kb|ps2_alt0|FROMPS2:count[0]~q\ & (!\kb|ps2_alt0|FROMPS2:count[3]~q\ & \kb|ps2_alt0|FROMPS2:count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|FROMPS2:count[1]~q\,
	datab => \kb|ps2_alt0|FROMPS2:count[0]~q\,
	datac => \kb|ps2_alt0|FROMPS2:count[3]~q\,
	datad => \kb|ps2_alt0|FROMPS2:count[2]~q\,
	combout => \kb|ps2_alt0|Decoder0~0_combout\);

-- Location: LCCOMB_X16_Y15_N0
\kb|ps2_alt0|sdata[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|sdata[6]~0_combout\ = (\kb|ps2_alt0|Decoder0~0_combout\ & (\ps2_data_io~input_o\)) # (!\kb|ps2_alt0|Decoder0~0_combout\ & ((\kb|ps2_alt0|sdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_data_io~input_o\,
	datac => \kb|ps2_alt0|sdata\(6),
	datad => \kb|ps2_alt0|Decoder0~0_combout\,
	combout => \kb|ps2_alt0|sdata[6]~0_combout\);

-- Location: FF_X16_Y15_N1
\kb|ps2_alt0|sdata[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kb|ps2_alt0|sigtrigger~clkctrl_outclk\,
	d => \kb|ps2_alt0|sdata[6]~0_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_FROMPS2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|sdata\(6));

-- Location: LCCOMB_X17_Y15_N4
\kb|ps2_alt0|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|Decoder0~3_combout\ = (!\kb|ps2_alt0|FROMPS2:count[1]~q\ & (\kb|ps2_alt0|FROMPS2:count[0]~q\ & (!\kb|ps2_alt0|FROMPS2:count[2]~q\ & !\kb|ps2_alt0|FROMPS2:count[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|FROMPS2:count[1]~q\,
	datab => \kb|ps2_alt0|FROMPS2:count[0]~q\,
	datac => \kb|ps2_alt0|FROMPS2:count[2]~q\,
	datad => \kb|ps2_alt0|FROMPS2:count[3]~q\,
	combout => \kb|ps2_alt0|Decoder0~3_combout\);

-- Location: LCCOMB_X17_Y15_N0
\kb|ps2_alt0|sdata[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|sdata[0]~3_combout\ = (\kb|ps2_alt0|Decoder0~3_combout\ & ((\ps2_data_io~input_o\))) # (!\kb|ps2_alt0|Decoder0~3_combout\ & (\kb|ps2_alt0|sdata\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|Decoder0~3_combout\,
	datac => \kb|ps2_alt0|sdata\(0),
	datad => \ps2_data_io~input_o\,
	combout => \kb|ps2_alt0|sdata[0]~3_combout\);

-- Location: FF_X17_Y15_N1
\kb|ps2_alt0|sdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kb|ps2_alt0|sigtrigger~clkctrl_outclk\,
	d => \kb|ps2_alt0|sdata[0]~3_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_FROMPS2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|sdata\(0));

-- Location: LCCOMB_X16_Y15_N18
\kb|ps2_alt0|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|Decoder0~1_combout\ = (\kb|ps2_alt0|FROMPS2:count[1]~q\ & (!\kb|ps2_alt0|FROMPS2:count[0]~q\ & (!\kb|ps2_alt0|FROMPS2:count[3]~q\ & \kb|ps2_alt0|FROMPS2:count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|FROMPS2:count[1]~q\,
	datab => \kb|ps2_alt0|FROMPS2:count[0]~q\,
	datac => \kb|ps2_alt0|FROMPS2:count[3]~q\,
	datad => \kb|ps2_alt0|FROMPS2:count[2]~q\,
	combout => \kb|ps2_alt0|Decoder0~1_combout\);

-- Location: LCCOMB_X16_Y15_N2
\kb|ps2_alt0|sdata[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|sdata[5]~1_combout\ = (\kb|ps2_alt0|Decoder0~1_combout\ & (\ps2_data_io~input_o\)) # (!\kb|ps2_alt0|Decoder0~1_combout\ & ((\kb|ps2_alt0|sdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_data_io~input_o\,
	datac => \kb|ps2_alt0|sdata\(5),
	datad => \kb|ps2_alt0|Decoder0~1_combout\,
	combout => \kb|ps2_alt0|sdata[5]~1_combout\);

-- Location: FF_X16_Y15_N3
\kb|ps2_alt0|sdata[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kb|ps2_alt0|sigtrigger~clkctrl_outclk\,
	d => \kb|ps2_alt0|sdata[5]~1_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_FROMPS2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|sdata\(5));

-- Location: LCCOMB_X16_Y15_N4
\kb|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Equal2~1_combout\ = (\kb|ps2_alt0|sdata\(7) & (\kb|ps2_alt0|sdata\(6) & (!\kb|ps2_alt0|sdata\(0) & \kb|ps2_alt0|sdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(7),
	datab => \kb|ps2_alt0|sdata\(6),
	datac => \kb|ps2_alt0|sdata\(0),
	datad => \kb|ps2_alt0|sdata\(5),
	combout => \kb|Equal2~1_combout\);

-- Location: LCCOMB_X16_Y16_N30
\kb|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Equal2~2_combout\ = (!\kb|ps2_alt0|sdata\(2) & (!\kb|ps2_alt0|sdata\(3) & (!\kb|ps2_alt0|sdata\(1) & \kb|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(2),
	datab => \kb|ps2_alt0|sdata\(3),
	datac => \kb|ps2_alt0|sdata\(1),
	datad => \kb|Equal2~1_combout\,
	combout => \kb|Equal2~2_combout\);

-- Location: LCCOMB_X17_Y15_N16
\kb|ps2_alt0|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|Equal1~0_combout\ = (!\kb|ps2_alt0|FROMPS2:count[1]~q\ & (\kb|ps2_alt0|FROMPS2:count[0]~q\ & (!\kb|ps2_alt0|FROMPS2:count[2]~q\ & \kb|ps2_alt0|FROMPS2:count[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|FROMPS2:count[1]~q\,
	datab => \kb|ps2_alt0|FROMPS2:count[0]~q\,
	datac => \kb|ps2_alt0|FROMPS2:count[2]~q\,
	datad => \kb|ps2_alt0|FROMPS2:count[3]~q\,
	combout => \kb|ps2_alt0|Equal1~0_combout\);

-- Location: LCCOMB_X17_Y15_N18
\kb|ps2_alt0|parchecked~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|parchecked~0_combout\ = (\kb|ps2_alt0|parchecked~q\ & ((\kb|ps2_alt0|Equal0~0_combout\) # ((!\kb|ps2_alt0|Equal2~0_combout\ & !\kb|ps2_alt0|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|Equal0~0_combout\,
	datab => \kb|ps2_alt0|Equal2~0_combout\,
	datac => \kb|ps2_alt0|parchecked~q\,
	datad => \kb|ps2_alt0|Equal1~0_combout\,
	combout => \kb|ps2_alt0|parchecked~0_combout\);

-- Location: LCCOMB_X16_Y15_N20
\kb|ps2_alt0|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|Decoder0~7_combout\ = (!\kb|ps2_alt0|FROMPS2:count[1]~q\ & (\kb|ps2_alt0|FROMPS2:count[0]~q\ & (!\kb|ps2_alt0|FROMPS2:count[3]~q\ & \kb|ps2_alt0|FROMPS2:count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|FROMPS2:count[1]~q\,
	datab => \kb|ps2_alt0|FROMPS2:count[0]~q\,
	datac => \kb|ps2_alt0|FROMPS2:count[3]~q\,
	datad => \kb|ps2_alt0|FROMPS2:count[2]~q\,
	combout => \kb|ps2_alt0|Decoder0~7_combout\);

-- Location: LCCOMB_X16_Y15_N10
\kb|ps2_alt0|sdata[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|sdata[4]~7_combout\ = (\kb|ps2_alt0|Decoder0~7_combout\ & (\ps2_data_io~input_o\)) # (!\kb|ps2_alt0|Decoder0~7_combout\ & ((\kb|ps2_alt0|sdata\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_data_io~input_o\,
	datac => \kb|ps2_alt0|sdata\(4),
	datad => \kb|ps2_alt0|Decoder0~7_combout\,
	combout => \kb|ps2_alt0|sdata[4]~7_combout\);

-- Location: FF_X16_Y15_N11
\kb|ps2_alt0|sdata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kb|ps2_alt0|sigtrigger~clkctrl_outclk\,
	d => \kb|ps2_alt0|sdata[4]~7_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_FROMPS2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|sdata\(4));

-- Location: LCCOMB_X16_Y15_N30
\kb|ps2_alt0|FROMPS2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|FROMPS2~2_combout\ = \kb|ps2_alt0|sdata\(4) $ (\kb|ps2_alt0|sdata\(3) $ (\kb|ps2_alt0|sdata\(2) $ (\kb|ps2_alt0|sdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(4),
	datab => \kb|ps2_alt0|sdata\(3),
	datac => \kb|ps2_alt0|sdata\(2),
	datad => \kb|ps2_alt0|sdata\(1),
	combout => \kb|ps2_alt0|FROMPS2~2_combout\);

-- Location: LCCOMB_X17_Y15_N28
\kb|ps2_alt0|FROMPS2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|FROMPS2~1_combout\ = \kb|ps2_alt0|sdata\(5) $ (\kb|ps2_alt0|sdata\(6) $ (\ps2_data_io~input_o\ $ (\kb|ps2_alt0|sdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(5),
	datab => \kb|ps2_alt0|sdata\(6),
	datac => \ps2_data_io~input_o\,
	datad => \kb|ps2_alt0|sdata\(7),
	combout => \kb|ps2_alt0|FROMPS2~1_combout\);

-- Location: LCCOMB_X17_Y15_N30
\kb|ps2_alt0|parchecked~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|parchecked~1_combout\ = (\kb|ps2_alt0|Equal1~0_combout\ & (\kb|ps2_alt0|FROMPS2~2_combout\ $ (\kb|ps2_alt0|FROMPS2~1_combout\ $ (\kb|ps2_alt0|sdata\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|FROMPS2~2_combout\,
	datab => \kb|ps2_alt0|FROMPS2~1_combout\,
	datac => \kb|ps2_alt0|sdata\(0),
	datad => \kb|ps2_alt0|Equal1~0_combout\,
	combout => \kb|ps2_alt0|parchecked~1_combout\);

-- Location: LCCOMB_X17_Y15_N2
\kb|ps2_alt0|parchecked~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|parchecked~2_combout\ = (\kb|ps2_alt0|parchecked~0_combout\) # ((!\kb|ps2_alt0|Equal0~0_combout\ & (\kb|ps2_alt0|parchecked~1_combout\ & !\kb|ps2_alt0|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|Equal0~0_combout\,
	datab => \kb|ps2_alt0|parchecked~0_combout\,
	datac => \kb|ps2_alt0|parchecked~1_combout\,
	datad => \kb|ps2_alt0|Equal2~0_combout\,
	combout => \kb|ps2_alt0|parchecked~2_combout\);

-- Location: FF_X17_Y15_N3
\kb|ps2_alt0|parchecked\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kb|ps2_alt0|sigtrigger~clkctrl_outclk\,
	d => \kb|ps2_alt0|parchecked~2_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_FROMPS2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|parchecked~q\);

-- Location: FF_X16_Y16_N9
\kb|keyb_valid_edge_v[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \kb|ps2_alt0|parchecked~q\,
	clrn => \ALT_INV_reset_s~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|keyb_valid_edge_v\(0));

-- Location: LCCOMB_X16_Y16_N8
\kb|keymap_seq_s~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|keymap_seq_s~16_combout\ = (!\kb|Equal2~2_combout\ & (\kb|ps2_alt0|parchecked~q\ & !\kb|keyb_valid_edge_v\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|Equal2~2_combout\,
	datab => \kb|ps2_alt0|parchecked~q\,
	datac => \kb|keyb_valid_edge_v\(0),
	combout => \kb|keymap_seq_s~16_combout\);

-- Location: LCCOMB_X15_Y15_N2
\kb|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Equal1~1_combout\ = (\kb|ps2_alt0|sdata\(7) & (\kb|ps2_alt0|sdata\(5) & (!\kb|ps2_alt0|sdata\(0) & \kb|ps2_alt0|sdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(7),
	datab => \kb|ps2_alt0|sdata\(5),
	datac => \kb|ps2_alt0|sdata\(0),
	datad => \kb|ps2_alt0|sdata\(3),
	combout => \kb|Equal1~1_combout\);

-- Location: LCCOMB_X16_Y16_N20
\kb|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Equal1~0_combout\ = (!\kb|ps2_alt0|sdata\(2) & (\kb|ps2_alt0|sdata\(1) & (!\kb|ps2_alt0|sdata\(4) & !\kb|ps2_alt0|sdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(2),
	datab => \kb|ps2_alt0|sdata\(1),
	datac => \kb|ps2_alt0|sdata\(4),
	datad => \kb|ps2_alt0|sdata\(6),
	combout => \kb|Equal1~0_combout\);

-- Location: LCCOMB_X16_Y16_N2
\kb|keymap_seq_s~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|keymap_seq_s~17_combout\ = (!\kb|keymap_seq_s.KM_IDLE~q\ & (\kb|keymap_seq_s~16_combout\ & ((!\kb|Equal1~0_combout\) # (!\kb|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|keymap_seq_s.KM_IDLE~q\,
	datab => \kb|keymap_seq_s~16_combout\,
	datac => \kb|Equal1~1_combout\,
	datad => \kb|Equal1~0_combout\,
	combout => \kb|keymap_seq_s~17_combout\);

-- Location: FF_X16_Y16_N3
\kb|keymap_seq_s.KM_READ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \kb|keymap_seq_s~17_combout\,
	clrn => \ALT_INV_reset_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|keymap_seq_s.KM_READ~q\);

-- Location: LCCOMB_X16_Y16_N6
\kb|keymap_seq_s.KM_END~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|keymap_seq_s.KM_END~feeder_combout\ = \kb|keymap_seq_s.KM_READ~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kb|keymap_seq_s.KM_READ~q\,
	combout => \kb|keymap_seq_s.KM_END~feeder_combout\);

-- Location: FF_X16_Y16_N7
\kb|keymap_seq_s.KM_END\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \kb|keymap_seq_s.KM_END~feeder_combout\,
	clrn => \ALT_INV_reset_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|keymap_seq_s.KM_END~q\);

-- Location: LCCOMB_X16_Y16_N10
\kb|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Selector0~0_combout\ = (!\kb|keymap_seq_s.KM_END~q\ & (!\kb|keymap_seq_s.KM_SEND~q\ & ((\kb|keymap_seq_s.KM_IDLE~q\) # (\kb|keymap_seq_s~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|keymap_seq_s.KM_END~q\,
	datab => \kb|keymap_seq_s.KM_SEND~q\,
	datac => \kb|keymap_seq_s.KM_IDLE~q\,
	datad => \kb|keymap_seq_s~16_combout\,
	combout => \kb|Selector0~0_combout\);

-- Location: FF_X16_Y16_N11
\kb|keymap_seq_s.KM_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \kb|Selector0~0_combout\,
	clrn => \ALT_INV_reset_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|keymap_seq_s.KM_IDLE~q\);

-- Location: LCCOMB_X16_Y16_N16
\kb|keymap_seq_s~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|keymap_seq_s~18_combout\ = (!\kb|keymap_seq_s.KM_IDLE~q\ & (\kb|keymap_seq_s~16_combout\ & (\kb|Equal1~1_combout\ & \kb|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|keymap_seq_s.KM_IDLE~q\,
	datab => \kb|keymap_seq_s~16_combout\,
	datac => \kb|Equal1~1_combout\,
	datad => \kb|Equal1~0_combout\,
	combout => \kb|keymap_seq_s~18_combout\);

-- Location: FF_X16_Y16_N17
\kb|keymap_seq_s.KM_SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \kb|keymap_seq_s~18_combout\,
	clrn => \ALT_INV_reset_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|keymap_seq_s.KM_SEND~q\);

-- Location: FF_X12_Y19_N19
\kb|data_send_rdy_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \kb|keymap_seq_s.KM_SEND~q\,
	sload => VCC,
	ena => \ALT_INV_reset_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|data_send_rdy_s~q\);

-- Location: LCCOMB_X12_Y19_N0
\kb|ps2_alt0|sigsending~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|sigsending~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \kb|ps2_alt0|sigsending~feeder_combout\);

-- Location: FF_X12_Y19_N1
\kb|ps2_alt0|sigsending\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kb|data_send_rdy_s~q\,
	d => \kb|ps2_alt0|sigsending~feeder_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_process_2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|sigsending~q\);

-- Location: LCCOMB_X11_Y19_N30
\kb|ps2_alt0|count[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|count[7]~24_combout\ = (\kb|ps2_alt0|ps2_clk_io~3_combout\ & \kb|ps2_alt0|sigsending~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|ps2_clk_io~3_combout\,
	datac => \kb|ps2_alt0|sigsending~q\,
	combout => \kb|ps2_alt0|count[7]~24_combout\);

-- Location: FF_X11_Y19_N19
\kb|ps2_alt0|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div_q[1]~clkctrl_outclk\,
	d => \kb|ps2_alt0|count[5]~18_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_process_2~0clkctrl_outclk\,
	ena => \kb|ps2_alt0|count[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|count\(5));

-- Location: LCCOMB_X11_Y19_N20
\kb|ps2_alt0|count[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|count[6]~20_combout\ = (\kb|ps2_alt0|count\(6) & (\kb|ps2_alt0|count[5]~19\ $ (GND))) # (!\kb|ps2_alt0|count\(6) & (!\kb|ps2_alt0|count[5]~19\ & VCC))
-- \kb|ps2_alt0|count[6]~21\ = CARRY((\kb|ps2_alt0|count\(6) & !\kb|ps2_alt0|count[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|count\(6),
	datad => VCC,
	cin => \kb|ps2_alt0|count[5]~19\,
	combout => \kb|ps2_alt0|count[6]~20_combout\,
	cout => \kb|ps2_alt0|count[6]~21\);

-- Location: FF_X11_Y19_N21
\kb|ps2_alt0|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div_q[1]~clkctrl_outclk\,
	d => \kb|ps2_alt0|count[6]~20_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_process_2~0clkctrl_outclk\,
	ena => \kb|ps2_alt0|count[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|count\(6));

-- Location: LCCOMB_X11_Y19_N2
\kb|ps2_alt0|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|LessThan3~0_combout\ = ((!\kb|ps2_alt0|count\(1) & (!\kb|ps2_alt0|count\(0) & !\kb|ps2_alt0|count\(2)))) # (!\kb|ps2_alt0|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|count\(1),
	datab => \kb|ps2_alt0|count\(0),
	datac => \kb|ps2_alt0|count\(3),
	datad => \kb|ps2_alt0|count\(2),
	combout => \kb|ps2_alt0|LessThan3~0_combout\);

-- Location: LCCOMB_X11_Y19_N28
\kb|ps2_alt0|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|LessThan3~1_combout\ = (!\kb|ps2_alt0|count\(6) & (!\kb|ps2_alt0|count\(4) & (\kb|ps2_alt0|LessThan3~0_combout\ & !\kb|ps2_alt0|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|count\(6),
	datab => \kb|ps2_alt0|count\(4),
	datac => \kb|ps2_alt0|LessThan3~0_combout\,
	datad => \kb|ps2_alt0|count\(5),
	combout => \kb|ps2_alt0|LessThan3~1_combout\);

-- Location: LCCOMB_X11_Y19_N22
\kb|ps2_alt0|count[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|count[7]~22_combout\ = \kb|ps2_alt0|count\(7) $ (\kb|ps2_alt0|count[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|count\(7),
	cin => \kb|ps2_alt0|count[6]~21\,
	combout => \kb|ps2_alt0|count[7]~22_combout\);

-- Location: FF_X11_Y19_N23
\kb|ps2_alt0|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div_q[1]~clkctrl_outclk\,
	d => \kb|ps2_alt0|count[7]~22_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_process_2~0clkctrl_outclk\,
	ena => \kb|ps2_alt0|count[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|count\(7));

-- Location: LCCOMB_X11_Y19_N26
\kb|ps2_alt0|sigclkheld~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|sigclkheld~0_combout\ = (!\kb|ps2_alt0|LessThan3~1_combout\ & (\kb|ps2_alt0|count\(7) & \kb|ps2_alt0|ps2_clk_io~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|LessThan3~1_combout\,
	datac => \kb|ps2_alt0|count\(7),
	datad => \kb|ps2_alt0|ps2_clk_io~3_combout\,
	combout => \kb|ps2_alt0|sigclkheld~0_combout\);

-- Location: FF_X11_Y19_N27
\kb|ps2_alt0|sigclkheld\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div_q[1]~clkctrl_outclk\,
	d => \kb|ps2_alt0|sigclkheld~0_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_process_2~0clkctrl_outclk\,
	ena => \kb|ps2_alt0|sigsending~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|sigclkheld~q\);

-- Location: LCCOMB_X12_Y19_N2
\kb|ps2_alt0|TOPS2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|TOPS2~1_combout\ = (\reset_s~q\) # (!\kb|ps2_alt0|sigsending~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_s~q\,
	datad => \kb|ps2_alt0|sigsending~q\,
	combout => \kb|ps2_alt0|TOPS2~1_combout\);

-- Location: LCCOMB_X12_Y19_N20
\kb|ps2_alt0|sigsendend~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|sigsendend~2_combout\ = (\kb|ps2_alt0|sigclkheld~q\) # (\kb|ps2_alt0|TOPS2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kb|ps2_alt0|sigclkheld~q\,
	datad => \kb|ps2_alt0|TOPS2~1_combout\,
	combout => \kb|ps2_alt0|sigsendend~2_combout\);

-- Location: CLKCTRL_G4
\kb|ps2_alt0|sigsendend~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \kb|ps2_alt0|sigsendend~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \kb|ps2_alt0|sigsendend~2clkctrl_outclk\);

-- Location: LCCOMB_X11_Y19_N0
\kb|ps2_alt0|sigclkreleased~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|sigclkreleased~0_combout\ = (\kb|ps2_alt0|LessThan3~1_combout\) # (\kb|ps2_alt0|ps2_clk_io~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|LessThan3~1_combout\,
	datad => \kb|ps2_alt0|ps2_clk_io~3_combout\,
	combout => \kb|ps2_alt0|sigclkreleased~0_combout\);

-- Location: FF_X11_Y19_N1
\kb|ps2_alt0|sigclkreleased\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div_q[1]~clkctrl_outclk\,
	d => \kb|ps2_alt0|sigclkreleased~0_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_process_2~0clkctrl_outclk\,
	ena => \kb|ps2_alt0|sigsending~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|sigclkreleased~q\);

-- Location: LCCOMB_X14_Y20_N22
\kb|ps2_alt0|TOPS2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|TOPS2~0_combout\ = (!\kb|ps2_alt0|sigclkreleased~q\ & \kb|ps2_alt0|sigsending~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|sigclkreleased~q\,
	datac => \kb|ps2_alt0|sigsending~q\,
	combout => \kb|ps2_alt0|TOPS2~0_combout\);

-- Location: FF_X14_Y20_N5
\kb|ps2_alt0|TOPS2:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kb|ps2_alt0|sigtrigger~clkctrl_outclk\,
	d => \kb|ps2_alt0|TOPS2:count[0]~0_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_sigsendend~2clkctrl_outclk\,
	ena => \kb|ps2_alt0|TOPS2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|TOPS2:count[0]~q\);

-- Location: LCCOMB_X14_Y20_N28
\kb|ps2_alt0|TOPS2:count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|TOPS2:count[2]~0_combout\ = \kb|ps2_alt0|TOPS2:count[2]~q\ $ (((\kb|ps2_alt0|TOPS2~0_combout\ & (\kb|ps2_alt0|TOPS2:count[0]~q\ & \kb|ps2_alt0|TOPS2:count[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|TOPS2~0_combout\,
	datab => \kb|ps2_alt0|TOPS2:count[0]~q\,
	datac => \kb|ps2_alt0|TOPS2:count[2]~q\,
	datad => \kb|ps2_alt0|TOPS2:count[1]~q\,
	combout => \kb|ps2_alt0|TOPS2:count[2]~0_combout\);

-- Location: FF_X14_Y20_N29
\kb|ps2_alt0|TOPS2:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kb|ps2_alt0|sigtrigger~clkctrl_outclk\,
	d => \kb|ps2_alt0|TOPS2:count[2]~0_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_sigsendend~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|TOPS2:count[2]~q\);

-- Location: LCCOMB_X14_Y20_N18
\kb|ps2_alt0|Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|Add6~1_combout\ = (\kb|ps2_alt0|TOPS2:count[0]~q\ & (((!\kb|ps2_alt0|TOPS2:count[1]~q\)))) # (!\kb|ps2_alt0|TOPS2:count[0]~q\ & (\kb|ps2_alt0|TOPS2:count[1]~q\ & ((\kb|ps2_alt0|TOPS2:count[2]~q\) # (!\kb|ps2_alt0|TOPS2:count[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|TOPS2:count[3]~q\,
	datab => \kb|ps2_alt0|TOPS2:count[0]~q\,
	datac => \kb|ps2_alt0|TOPS2:count[1]~q\,
	datad => \kb|ps2_alt0|TOPS2:count[2]~q\,
	combout => \kb|ps2_alt0|Add6~1_combout\);

-- Location: FF_X14_Y20_N19
\kb|ps2_alt0|TOPS2:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kb|ps2_alt0|sigtrigger~clkctrl_outclk\,
	d => \kb|ps2_alt0|Add6~1_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_sigsendend~2clkctrl_outclk\,
	ena => \kb|ps2_alt0|TOPS2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|TOPS2:count[1]~q\);

-- Location: LCCOMB_X14_Y20_N0
\kb|ps2_alt0|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|Add6~0_combout\ = (\kb|ps2_alt0|TOPS2:count[1]~q\ & ((\kb|ps2_alt0|TOPS2:count[0]~q\ & (\kb|ps2_alt0|TOPS2:count[3]~q\ $ (\kb|ps2_alt0|TOPS2:count[2]~q\))) # (!\kb|ps2_alt0|TOPS2:count[0]~q\ & (\kb|ps2_alt0|TOPS2:count[3]~q\ & 
-- \kb|ps2_alt0|TOPS2:count[2]~q\)))) # (!\kb|ps2_alt0|TOPS2:count[1]~q\ & (((\kb|ps2_alt0|TOPS2:count[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|TOPS2:count[1]~q\,
	datab => \kb|ps2_alt0|TOPS2:count[0]~q\,
	datac => \kb|ps2_alt0|TOPS2:count[3]~q\,
	datad => \kb|ps2_alt0|TOPS2:count[2]~q\,
	combout => \kb|ps2_alt0|Add6~0_combout\);

-- Location: FF_X14_Y20_N1
\kb|ps2_alt0|TOPS2:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kb|ps2_alt0|sigtrigger~clkctrl_outclk\,
	d => \kb|ps2_alt0|Add6~0_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_sigsendend~2clkctrl_outclk\,
	ena => \kb|ps2_alt0|TOPS2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|TOPS2:count[3]~q\);

-- Location: LCCOMB_X14_Y20_N24
\kb|ps2_alt0|sigsendend~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|sigsendend~0_combout\ = (\kb|ps2_alt0|TOPS2:count[3]~q\ & ((\kb|ps2_alt0|TOPS2:count[1]~q\) # (\kb|ps2_alt0|TOPS2:count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|TOPS2:count[3]~q\,
	datac => \kb|ps2_alt0|TOPS2:count[1]~q\,
	datad => \kb|ps2_alt0|TOPS2:count[2]~q\,
	combout => \kb|ps2_alt0|sigsendend~0_combout\);

-- Location: LCCOMB_X14_Y20_N6
\kb|ps2_alt0|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|Equal6~0_combout\ = (\kb|ps2_alt0|TOPS2:count[1]~q\ & (\kb|ps2_alt0|TOPS2:count[3]~q\ & (!\kb|ps2_alt0|TOPS2:count[0]~q\ & !\kb|ps2_alt0|TOPS2:count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|TOPS2:count[1]~q\,
	datab => \kb|ps2_alt0|TOPS2:count[3]~q\,
	datac => \kb|ps2_alt0|TOPS2:count[0]~q\,
	datad => \kb|ps2_alt0|TOPS2:count[2]~q\,
	combout => \kb|ps2_alt0|Equal6~0_combout\);

-- Location: LCCOMB_X14_Y20_N8
\kb|ps2_alt0|sigsendend~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|sigsendend~1_combout\ = (\kb|ps2_alt0|Equal6~0_combout\) # ((\kb|ps2_alt0|sigsendend~0_combout\ & \kb|ps2_alt0|sigsendend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|sigsendend~0_combout\,
	datac => \kb|ps2_alt0|sigsendend~q\,
	datad => \kb|ps2_alt0|Equal6~0_combout\,
	combout => \kb|ps2_alt0|sigsendend~1_combout\);

-- Location: FF_X14_Y20_N9
\kb|ps2_alt0|sigsendend\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kb|ps2_alt0|sigtrigger~clkctrl_outclk\,
	d => \kb|ps2_alt0|sigsendend~1_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_sigsendend~2clkctrl_outclk\,
	ena => \kb|ps2_alt0|TOPS2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|sigsendend~q\);

-- Location: LCCOMB_X14_Y20_N26
\kb|ps2_alt0|process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|process_2~0_combout\ = (\kb|ps2_alt0|sigsendend~q\) # (\reset_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|sigsendend~q\,
	datad => \reset_s~q\,
	combout => \kb|ps2_alt0|process_2~0_combout\);

-- Location: CLKCTRL_G1
\kb|ps2_alt0|process_2~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \kb|ps2_alt0|process_2~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \kb|ps2_alt0|process_2~0clkctrl_outclk\);

-- Location: FF_X11_Y19_N9
\kb|ps2_alt0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div_q[1]~clkctrl_outclk\,
	d => \kb|ps2_alt0|count[0]~8_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_process_2~0clkctrl_outclk\,
	ena => \kb|ps2_alt0|count[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|count\(0));

-- Location: LCCOMB_X11_Y19_N10
\kb|ps2_alt0|count[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|count[1]~10_combout\ = (\kb|ps2_alt0|count\(1) & (!\kb|ps2_alt0|count[0]~9\)) # (!\kb|ps2_alt0|count\(1) & ((\kb|ps2_alt0|count[0]~9\) # (GND)))
-- \kb|ps2_alt0|count[1]~11\ = CARRY((!\kb|ps2_alt0|count[0]~9\) # (!\kb|ps2_alt0|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|count\(1),
	datad => VCC,
	cin => \kb|ps2_alt0|count[0]~9\,
	combout => \kb|ps2_alt0|count[1]~10_combout\,
	cout => \kb|ps2_alt0|count[1]~11\);

-- Location: FF_X11_Y19_N11
\kb|ps2_alt0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div_q[1]~clkctrl_outclk\,
	d => \kb|ps2_alt0|count[1]~10_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_process_2~0clkctrl_outclk\,
	ena => \kb|ps2_alt0|count[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|count\(1));

-- Location: LCCOMB_X11_Y19_N12
\kb|ps2_alt0|count[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|count[2]~12_combout\ = (\kb|ps2_alt0|count\(2) & (\kb|ps2_alt0|count[1]~11\ $ (GND))) # (!\kb|ps2_alt0|count\(2) & (!\kb|ps2_alt0|count[1]~11\ & VCC))
-- \kb|ps2_alt0|count[2]~13\ = CARRY((\kb|ps2_alt0|count\(2) & !\kb|ps2_alt0|count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|count\(2),
	datad => VCC,
	cin => \kb|ps2_alt0|count[1]~11\,
	combout => \kb|ps2_alt0|count[2]~12_combout\,
	cout => \kb|ps2_alt0|count[2]~13\);

-- Location: FF_X11_Y19_N13
\kb|ps2_alt0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div_q[1]~clkctrl_outclk\,
	d => \kb|ps2_alt0|count[2]~12_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_process_2~0clkctrl_outclk\,
	ena => \kb|ps2_alt0|count[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|count\(2));

-- Location: LCCOMB_X11_Y19_N14
\kb|ps2_alt0|count[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|count[3]~14_combout\ = (\kb|ps2_alt0|count\(3) & (!\kb|ps2_alt0|count[2]~13\)) # (!\kb|ps2_alt0|count\(3) & ((\kb|ps2_alt0|count[2]~13\) # (GND)))
-- \kb|ps2_alt0|count[3]~15\ = CARRY((!\kb|ps2_alt0|count[2]~13\) # (!\kb|ps2_alt0|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|count\(3),
	datad => VCC,
	cin => \kb|ps2_alt0|count[2]~13\,
	combout => \kb|ps2_alt0|count[3]~14_combout\,
	cout => \kb|ps2_alt0|count[3]~15\);

-- Location: FF_X11_Y19_N15
\kb|ps2_alt0|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div_q[1]~clkctrl_outclk\,
	d => \kb|ps2_alt0|count[3]~14_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_process_2~0clkctrl_outclk\,
	ena => \kb|ps2_alt0|count[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|count\(3));

-- Location: FF_X11_Y19_N17
\kb|ps2_alt0|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div_q[1]~clkctrl_outclk\,
	d => \kb|ps2_alt0|count[4]~16_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_process_2~0clkctrl_outclk\,
	ena => \kb|ps2_alt0|count[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|count\(4));

-- Location: LCCOMB_X11_Y19_N6
\kb|ps2_alt0|ps2_clk_io~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|ps2_clk_io~2_combout\ = (!\kb|ps2_alt0|count\(5)) # (!\kb|ps2_alt0|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|count\(4),
	datad => \kb|ps2_alt0|count\(5),
	combout => \kb|ps2_alt0|ps2_clk_io~2_combout\);

-- Location: LCCOMB_X11_Y19_N4
\kb|ps2_alt0|ps2_clk_io~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|ps2_clk_io~1_combout\ = ((!\kb|ps2_alt0|count\(2) & ((!\kb|ps2_alt0|count\(0)) # (!\kb|ps2_alt0|count\(1))))) # (!\kb|ps2_alt0|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|count\(1),
	datab => \kb|ps2_alt0|count\(0),
	datac => \kb|ps2_alt0|count\(3),
	datad => \kb|ps2_alt0|count\(2),
	combout => \kb|ps2_alt0|ps2_clk_io~1_combout\);

-- Location: LCCOMB_X11_Y19_N24
\kb|ps2_alt0|ps2_clk_io~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|ps2_clk_io~3_combout\ = ((!\kb|ps2_alt0|count\(6) & ((\kb|ps2_alt0|ps2_clk_io~2_combout\) # (\kb|ps2_alt0|ps2_clk_io~1_combout\)))) # (!\kb|ps2_alt0|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|ps2_clk_io~2_combout\,
	datab => \kb|ps2_alt0|ps2_clk_io~1_combout\,
	datac => \kb|ps2_alt0|count\(7),
	datad => \kb|ps2_alt0|count\(6),
	combout => \kb|ps2_alt0|ps2_clk_io~3_combout\);

-- Location: FF_X11_Y19_N25
\kb|ps2_alt0|ps2_clk_io~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div_q[1]~clkctrl_outclk\,
	d => \kb|ps2_alt0|ps2_clk_io~3_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_process_2~0clkctrl_outclk\,
	ena => \kb|ps2_alt0|sigsending~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|ps2_clk_io~en_q\);

-- Location: LCCOMB_X14_Y19_N0
\kb|ps2_alt0|ps2_data_io~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|ps2_data_io~9_combout\ = !\kb|ps2_alt0|TOPS2:count[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kb|ps2_alt0|TOPS2:count[0]~q\,
	combout => \kb|ps2_alt0|ps2_data_io~9_combout\);

-- Location: LCCOMB_X14_Y20_N30
\kb|ps2_alt0|ps2_data_io~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|ps2_data_io~8_combout\ = (!\kb|ps2_alt0|sigclkreleased~q\ & (\kb|ps2_alt0|sigsending~q\ & ((\kb|ps2_alt0|Equal6~0_combout\) # (!\kb|ps2_alt0|sigsendend~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|Equal6~0_combout\,
	datab => \kb|ps2_alt0|sigclkreleased~q\,
	datac => \kb|ps2_alt0|sigsending~q\,
	datad => \kb|ps2_alt0|sigsendend~0_combout\,
	combout => \kb|ps2_alt0|ps2_data_io~8_combout\);

-- Location: FF_X14_Y19_N1
\kb|ps2_alt0|ps2_data_io~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kb|ps2_alt0|sigtrigger~clkctrl_outclk\,
	d => \kb|ps2_alt0|ps2_data_io~9_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_sigclkheld~q\,
	ena => \kb|ps2_alt0|ps2_data_io~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|ps2_data_io~reg0_q\);

-- Location: LCCOMB_X14_Y19_N6
\kb|ps2_alt0|ps2_data_io~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|ps2_data_io~1_combout\ = (!\kb|ps2_alt0|TOPS2~1_combout\ & ((\kb|ps2_alt0|sigclkheld~q\) # (\kb|ps2_alt0|ps2_data_io~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|TOPS2~1_combout\,
	datab => \kb|ps2_alt0|sigclkheld~q\,
	datad => \kb|ps2_alt0|ps2_data_io~1_combout\,
	combout => \kb|ps2_alt0|ps2_data_io~1_combout\);

-- Location: LCCOMB_X14_Y20_N10
\kb|ps2_alt0|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|Equal6~1_combout\ = (!\kb|ps2_alt0|TOPS2:count[2]~q\ & \kb|ps2_alt0|TOPS2:count[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|TOPS2:count[2]~q\,
	datad => \kb|ps2_alt0|TOPS2:count[3]~q\,
	combout => \kb|ps2_alt0|Equal6~1_combout\);

-- Location: LCCOMB_X14_Y19_N10
\kb|ps2_alt0|ps2_data_io~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|ps2_data_io~3_combout\ = \kb|ps2_alt0|ps2_data_io~1_combout\ $ (((\kb|ps2_alt0|TOPS2:count[1]~q\ $ (!\kb|ps2_alt0|TOPS2:count[0]~q\)) # (!\kb|ps2_alt0|Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|TOPS2:count[1]~q\,
	datab => \kb|ps2_alt0|Equal6~1_combout\,
	datac => \kb|ps2_alt0|TOPS2:count[0]~q\,
	datad => \kb|ps2_alt0|ps2_data_io~1_combout\,
	combout => \kb|ps2_alt0|ps2_data_io~3_combout\);

-- Location: LCCOMB_X14_Y19_N12
\kb|ps2_alt0|ps2_data_io~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|ps2_data_io~0_combout\ = (\kb|ps2_alt0|sigclkheld~q\) # (\kb|ps2_alt0|TOPS2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|sigclkheld~q\,
	datad => \kb|ps2_alt0|TOPS2~1_combout\,
	combout => \kb|ps2_alt0|ps2_data_io~0_combout\);

-- Location: FF_X14_Y19_N11
\kb|ps2_alt0|ps2_data_io~en_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kb|ps2_alt0|sigtrigger~clkctrl_outclk\,
	d => \kb|ps2_alt0|ps2_data_io~3_combout\,
	clrn => \kb|ps2_alt0|ALT_INV_ps2_data_io~0_combout\,
	ena => \kb|ps2_alt0|ps2_data_io~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|ps2_alt0|ps2_data_io~en_emulated_q\);

-- Location: LCCOMB_X12_Y19_N12
\kb|ps2_alt0|ps2_data_io~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|ps2_alt0|ps2_data_io~2_combout\ = (!\kb|ps2_alt0|TOPS2~1_combout\ & ((\kb|ps2_alt0|sigclkheld~q\) # (\kb|ps2_alt0|ps2_data_io~1_combout\ $ (\kb|ps2_alt0|ps2_data_io~en_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sigclkheld~q\,
	datab => \kb|ps2_alt0|TOPS2~1_combout\,
	datac => \kb|ps2_alt0|ps2_data_io~1_combout\,
	datad => \kb|ps2_alt0|ps2_data_io~en_emulated_q\,
	combout => \kb|ps2_alt0|ps2_data_io~2_combout\);

-- Location: IOIBUF_X53_Y6_N15
\stm_b13_io~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => stm_b13_io,
	o => \stm_b13_io~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\stm_b15_io~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => stm_b15_io,
	o => \stm_b15_io~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\stm_b12_io~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => stm_b12_io,
	o => \stm_b12_io~input_o\);

-- Location: FF_X37_Y12_N1
\osd1|sbuf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \stm_b15_io~input_o\,
	sload => VCC,
	ena => \ALT_INV_stm_b12_io~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|sbuf\(0));

-- Location: FF_X37_Y12_N23
\osd1|sbuf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(0),
	sload => VCC,
	ena => \ALT_INV_stm_b12_io~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|sbuf\(1));

-- Location: FF_X37_Y12_N17
\osd1|sbuf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(1),
	sload => VCC,
	ena => \ALT_INV_stm_b12_io~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|sbuf\(2));

-- Location: FF_X37_Y12_N9
\osd1|sbuf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(2),
	sload => VCC,
	ena => \ALT_INV_stm_b12_io~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|sbuf\(3));

-- Location: LCCOMB_X32_Y15_N14
\osd1|cnt[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[0]~37_combout\ = \osd1|cnt\(0) $ (VCC)
-- \osd1|cnt[0]~38\ = CARRY(\osd1|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(0),
	datad => VCC,
	combout => \osd1|cnt[0]~37_combout\,
	cout => \osd1|cnt[0]~38\);

-- Location: LCCOMB_X34_Y17_N0
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X32_Y15_N18
\osd1|cnt[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[2]~41_combout\ = (\osd1|cnt\(2) & (\osd1|cnt[1]~40\ $ (GND))) # (!\osd1|cnt\(2) & (!\osd1|cnt[1]~40\ & VCC))
-- \osd1|cnt[2]~42\ = CARRY((\osd1|cnt\(2) & !\osd1|cnt[1]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(2),
	datad => VCC,
	cin => \osd1|cnt[1]~40\,
	combout => \osd1|cnt[2]~41_combout\,
	cout => \osd1|cnt[2]~42\);

-- Location: LCCOMB_X32_Y15_N20
\osd1|cnt[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[3]~43_combout\ = (\osd1|cnt\(3) & (!\osd1|cnt[2]~42\)) # (!\osd1|cnt\(3) & ((\osd1|cnt[2]~42\) # (GND)))
-- \osd1|cnt[3]~44\ = CARRY((!\osd1|cnt[2]~42\) # (!\osd1|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(3),
	datad => VCC,
	cin => \osd1|cnt[2]~42\,
	combout => \osd1|cnt[3]~43_combout\,
	cout => \osd1|cnt[3]~44\);

-- Location: FF_X32_Y15_N21
\osd1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|cnt[3]~43_combout\,
	asdata => VCC,
	clrn => \ALT_INV_stm_b12_io~input_o\,
	sload => \osd1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(3));

-- Location: LCCOMB_X32_Y15_N22
\osd1|cnt[4]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[4]~45_combout\ = \osd1|cnt\(4) $ (!\osd1|cnt[3]~44\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(4),
	cin => \osd1|cnt[3]~44\,
	combout => \osd1|cnt[4]~45_combout\);

-- Location: FF_X32_Y15_N23
\osd1|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|cnt[4]~45_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_stm_b12_io~input_o\,
	sload => \osd1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(4));

-- Location: LCCOMB_X26_Y15_N24
\osd1|sdo_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|sdo_s~0_combout\ = (\osd1|cnt\(1) & \osd1|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(1),
	datad => \osd1|cnt\(0),
	combout => \osd1|sdo_s~0_combout\);

-- Location: LCCOMB_X26_Y15_N6
\osd1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan0~0_combout\ = (\osd1|cnt\(4)) # ((\osd1|cnt\(2) & (\osd1|cnt\(3) & \osd1|sdo_s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(2),
	datab => \osd1|cnt\(3),
	datac => \osd1|cnt\(4),
	datad => \osd1|sdo_s~0_combout\,
	combout => \osd1|LessThan0~0_combout\);

-- Location: FF_X32_Y15_N15
\osd1|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|cnt[0]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_stm_b12_io~input_o\,
	sload => \osd1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(0));

-- Location: LCCOMB_X32_Y15_N16
\osd1|cnt[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[1]~39_combout\ = (\osd1|cnt\(1) & (!\osd1|cnt[0]~38\)) # (!\osd1|cnt\(1) & ((\osd1|cnt[0]~38\) # (GND)))
-- \osd1|cnt[1]~40\ = CARRY((!\osd1|cnt[0]~38\) # (!\osd1|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(1),
	datad => VCC,
	cin => \osd1|cnt[0]~38\,
	combout => \osd1|cnt[1]~39_combout\,
	cout => \osd1|cnt[1]~40\);

-- Location: FF_X32_Y15_N17
\osd1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|cnt[1]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_stm_b12_io~input_o\,
	sload => \osd1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(1));

-- Location: FF_X32_Y15_N19
\osd1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|cnt[2]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_stm_b12_io~input_o\,
	sload => \osd1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(2));

-- Location: LCCOMB_X26_Y15_N10
\osd1|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal3~0_combout\ = (\osd1|cnt\(2) & (!\osd1|cnt\(3) & (!\osd1|cnt\(4) & \osd1|sdo_s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(2),
	datab => \osd1|cnt\(3),
	datac => \osd1|cnt\(4),
	datad => \osd1|sdo_s~0_combout\,
	combout => \osd1|Equal3~0_combout\);

-- Location: LCCOMB_X35_Y15_N0
\osd1|cmd[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cmd[7]~0_combout\ = (\osd1|Equal3~0_combout\ & !\stm_b12_io~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|Equal3~0_combout\,
	datad => \stm_b12_io~input_o\,
	combout => \osd1|cmd[7]~0_combout\);

-- Location: FF_X36_Y15_N15
\osd1|cmd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(3),
	sload => VCC,
	ena => \osd1|cmd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cmd\(4));

-- Location: LCCOMB_X28_Y1_N14
\vga1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~2_combout\ = (\vga1|h_cnt\(1) & (!\vga1|Add0~1\)) # (!\vga1|h_cnt\(1) & ((\vga1|Add0~1\) # (GND)))
-- \vga1|Add0~3\ = CARRY((!\vga1|Add0~1\) # (!\vga1|h_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|h_cnt\(1),
	datad => VCC,
	cin => \vga1|Add0~1\,
	combout => \vga1|Add0~2_combout\,
	cout => \vga1|Add0~3\);

-- Location: FF_X28_Y1_N15
\vga1|h_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|h_cnt\(1));

-- Location: LCCOMB_X28_Y1_N16
\vga1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~4_combout\ = (\vga1|h_cnt\(2) & (\vga1|Add0~3\ $ (GND))) # (!\vga1|h_cnt\(2) & (!\vga1|Add0~3\ & VCC))
-- \vga1|Add0~5\ = CARRY((\vga1|h_cnt\(2) & !\vga1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|h_cnt\(2),
	datad => VCC,
	cin => \vga1|Add0~3\,
	combout => \vga1|Add0~4_combout\,
	cout => \vga1|Add0~5\);

-- Location: FF_X28_Y1_N17
\vga1|h_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|h_cnt\(2));

-- Location: LCCOMB_X28_Y1_N18
\vga1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~6_combout\ = (\vga1|h_cnt\(3) & (!\vga1|Add0~5\)) # (!\vga1|h_cnt\(3) & ((\vga1|Add0~5\) # (GND)))
-- \vga1|Add0~7\ = CARRY((!\vga1|Add0~5\) # (!\vga1|h_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|h_cnt\(3),
	datad => VCC,
	cin => \vga1|Add0~5\,
	combout => \vga1|Add0~6_combout\,
	cout => \vga1|Add0~7\);

-- Location: FF_X28_Y1_N19
\vga1|h_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|h_cnt\(3));

-- Location: LCCOMB_X28_Y1_N20
\vga1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~8_combout\ = (\vga1|h_cnt\(4) & (\vga1|Add0~7\ $ (GND))) # (!\vga1|h_cnt\(4) & (!\vga1|Add0~7\ & VCC))
-- \vga1|Add0~9\ = CARRY((\vga1|h_cnt\(4) & !\vga1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|h_cnt\(4),
	datad => VCC,
	cin => \vga1|Add0~7\,
	combout => \vga1|Add0~8_combout\,
	cout => \vga1|Add0~9\);

-- Location: FF_X28_Y1_N21
\vga1|h_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|h_cnt\(4));

-- Location: LCCOMB_X28_Y1_N22
\vga1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~10_combout\ = (\vga1|h_cnt\(5) & (!\vga1|Add0~9\)) # (!\vga1|h_cnt\(5) & ((\vga1|Add0~9\) # (GND)))
-- \vga1|Add0~11\ = CARRY((!\vga1|Add0~9\) # (!\vga1|h_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|h_cnt\(5),
	datad => VCC,
	cin => \vga1|Add0~9\,
	combout => \vga1|Add0~10_combout\,
	cout => \vga1|Add0~11\);

-- Location: LCCOMB_X28_Y1_N24
\vga1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~12_combout\ = (\vga1|h_cnt\(6) & (\vga1|Add0~11\ $ (GND))) # (!\vga1|h_cnt\(6) & (!\vga1|Add0~11\ & VCC))
-- \vga1|Add0~13\ = CARRY((\vga1|h_cnt\(6) & !\vga1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|h_cnt\(6),
	datad => VCC,
	cin => \vga1|Add0~11\,
	combout => \vga1|Add0~12_combout\,
	cout => \vga1|Add0~13\);

-- Location: LCCOMB_X28_Y1_N26
\vga1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~14_combout\ = (\vga1|h_cnt\(7) & (!\vga1|Add0~13\)) # (!\vga1|h_cnt\(7) & ((\vga1|Add0~13\) # (GND)))
-- \vga1|Add0~15\ = CARRY((!\vga1|Add0~13\) # (!\vga1|h_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|h_cnt\(7),
	datad => VCC,
	cin => \vga1|Add0~13\,
	combout => \vga1|Add0~14_combout\,
	cout => \vga1|Add0~15\);

-- Location: FF_X28_Y1_N27
\vga1|h_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|h_cnt\(7));

-- Location: LCCOMB_X28_Y1_N28
\vga1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~16_combout\ = (\vga1|h_cnt\(8) & (\vga1|Add0~15\ $ (GND))) # (!\vga1|h_cnt\(8) & (!\vga1|Add0~15\ & VCC))
-- \vga1|Add0~17\ = CARRY((\vga1|h_cnt\(8) & !\vga1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|h_cnt\(8),
	datad => VCC,
	cin => \vga1|Add0~15\,
	combout => \vga1|Add0~16_combout\,
	cout => \vga1|Add0~17\);

-- Location: LCCOMB_X28_Y1_N0
\vga1|h_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|h_cnt~2_combout\ = (\vga1|Add0~16_combout\ & !\vga1|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|Add0~16_combout\,
	datad => \vga1|Equal0~2_combout\,
	combout => \vga1|h_cnt~2_combout\);

-- Location: FF_X28_Y1_N1
\vga1|h_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|h_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|h_cnt\(8));

-- Location: LCCOMB_X28_Y1_N30
\vga1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~18_combout\ = \vga1|Add0~17\ $ (\vga1|h_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga1|h_cnt\(9),
	cin => \vga1|Add0~17\,
	combout => \vga1|Add0~18_combout\);

-- Location: LCCOMB_X28_Y3_N16
\vga1|h_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|h_cnt~1_combout\ = (!\vga1|Equal0~2_combout\ & \vga1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|Equal0~2_combout\,
	datac => \vga1|Add0~18_combout\,
	combout => \vga1|h_cnt~1_combout\);

-- Location: FF_X28_Y3_N17
\vga1|h_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|h_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|h_cnt\(9));

-- Location: LCCOMB_X28_Y1_N6
\vga1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal0~0_combout\ = (\vga1|h_cnt\(9) & (!\vga1|h_cnt\(6) & (!\vga1|h_cnt\(5) & \vga1|h_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|h_cnt\(9),
	datab => \vga1|h_cnt\(6),
	datac => \vga1|h_cnt\(5),
	datad => \vga1|h_cnt\(4),
	combout => \vga1|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y1_N8
\vga1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal0~1_combout\ = (\vga1|h_cnt\(8) & (\vga1|h_cnt\(2) & (!\vga1|h_cnt\(7) & \vga1|h_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|h_cnt\(8),
	datab => \vga1|h_cnt\(2),
	datac => \vga1|h_cnt\(7),
	datad => \vga1|h_cnt\(3),
	combout => \vga1|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y1_N10
\vga1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal0~2_combout\ = (\vga1|Equal0~0_combout\ & (\vga1|Equal0~1_combout\ & (\vga1|h_cnt\(1) & \vga1|h_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Equal0~0_combout\,
	datab => \vga1|Equal0~1_combout\,
	datac => \vga1|h_cnt\(1),
	datad => \vga1|h_cnt\(0),
	combout => \vga1|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y3_N20
\vga1|h_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|h_cnt~0_combout\ = (\vga1|Add0~10_combout\ & !\vga1|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|Add0~10_combout\,
	datac => \vga1|Equal0~2_combout\,
	combout => \vga1|h_cnt~0_combout\);

-- Location: FF_X28_Y3_N21
\vga1|h_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|h_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|h_cnt\(5));

-- Location: FF_X28_Y1_N25
\vga1|h_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|h_cnt\(6));

-- Location: LCCOMB_X28_Y1_N2
\vga1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal1~0_combout\ = (\vga1|h_cnt\(9) & (!\vga1|h_cnt\(8) & (\vga1|h_cnt\(7) & \vga1|h_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|h_cnt\(9),
	datab => \vga1|h_cnt\(8),
	datac => \vga1|h_cnt\(7),
	datad => \vga1|h_cnt\(4),
	combout => \vga1|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y1_N4
\vga1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal1~1_combout\ = (!\vga1|h_cnt\(0) & (!\vga1|h_cnt\(2) & (!\vga1|h_cnt\(1) & !\vga1|h_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|h_cnt\(0),
	datab => \vga1|h_cnt\(2),
	datac => \vga1|h_cnt\(1),
	datad => \vga1|h_cnt\(3),
	combout => \vga1|Equal1~1_combout\);

-- Location: LCCOMB_X28_Y3_N18
\vga1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal1~2_combout\ = (\vga1|Equal1~0_combout\ & \vga1|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|Equal1~0_combout\,
	datad => \vga1|Equal1~1_combout\,
	combout => \vga1|Equal1~2_combout\);

-- Location: LCCOMB_X28_Y3_N22
\vga1|hs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|hs~0_combout\ = (\vga1|h_cnt\(6) & ((\vga1|hs~q\) # ((\vga1|Equal1~2_combout\ & \vga1|h_cnt\(5))))) # (!\vga1|h_cnt\(6) & (\vga1|hs~q\ & ((\vga1|h_cnt\(5)) # (!\vga1|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|h_cnt\(6),
	datab => \vga1|Equal1~2_combout\,
	datac => \vga1|hs~q\,
	datad => \vga1|h_cnt\(5),
	combout => \vga1|hs~0_combout\);

-- Location: FF_X28_Y3_N23
\vga1|hs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|hs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|hs~q\);

-- Location: CLKCTRL_G17
\vga1|hs~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \vga1|hs~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \vga1|hs~clkctrl_outclk\);

-- Location: IOIBUF_X1_Y0_N1
\joy1_p9_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_joy1_p9_i,
	o => \joy1_p9_i~input_o\);

-- Location: LCCOMB_X11_Y7_N14
\joy1_s[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \joy1_s[5]~6_combout\ = !\joy1_p9_i~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \joy1_p9_i~input_o\,
	combout => \joy1_s[5]~6_combout\);

-- Location: FF_X14_Y4_N3
\state_v[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga1|ALT_INV_hs~clkctrl_outclk\,
	d => \Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_v(0));

-- Location: LCCOMB_X14_Y4_N2
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = state_v(0) $ (VCC)
-- \Add2~1\ = CARRY(state_v(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state_v(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: FF_X14_Y4_N11
\state_v[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga1|ALT_INV_hs~clkctrl_outclk\,
	d => \Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_v(4));

-- Location: LCCOMB_X14_Y4_N4
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (state_v(1) & (!\Add2~1\)) # (!state_v(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!state_v(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => state_v(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: FF_X14_Y4_N5
\state_v[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga1|ALT_INV_hs~clkctrl_outclk\,
	d => \Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_v(1));

-- Location: LCCOMB_X14_Y4_N6
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (state_v(2) & (\Add2~3\ $ (GND))) # (!state_v(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((state_v(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => state_v(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: FF_X14_Y4_N7
\state_v[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga1|ALT_INV_hs~clkctrl_outclk\,
	d => \Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_v(2));

-- Location: LCCOMB_X14_Y4_N8
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (state_v(3) & (!\Add2~5\)) # (!state_v(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!state_v(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => state_v(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: FF_X14_Y4_N9
\state_v[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga1|ALT_INV_hs~clkctrl_outclk\,
	d => \Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_v(3));

-- Location: LCCOMB_X14_Y4_N10
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (state_v(4) & (\Add2~7\ $ (GND))) # (!state_v(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((state_v(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => state_v(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: FF_X14_Y4_N15
\state_v[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga1|ALT_INV_hs~clkctrl_outclk\,
	d => \Add2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_v(6));

-- Location: LCCOMB_X14_Y4_N12
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (state_v(5) & (!\Add2~9\)) # (!state_v(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!state_v(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => state_v(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: FF_X14_Y4_N13
\state_v[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga1|ALT_INV_hs~clkctrl_outclk\,
	d => \Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_v(5));

-- Location: LCCOMB_X14_Y4_N14
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (state_v(6) & (\Add2~11\ $ (GND))) # (!state_v(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((state_v(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => state_v(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X14_Y4_N26
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\Add2~8_combout\ & (!\Add2~6_combout\ & (!\Add2~12_combout\ & !\Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~12_combout\,
	datad => \Add2~10_combout\,
	combout => \Mux0~0_combout\);

-- Location: FF_X14_Y4_N17
\state_v[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga1|ALT_INV_hs~clkctrl_outclk\,
	d => \Add2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_v(7));

-- Location: LCCOMB_X14_Y4_N16
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = state_v(7) $ (\Add2~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => state_v(7),
	cin => \Add2~13\,
	combout => \Add2~14_combout\);

-- Location: LCCOMB_X14_Y4_N0
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux0~0_combout\ & (!\Add2~4_combout\ & (\Add2~2_combout\ & !\Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~2_combout\,
	datad => \Add2~14_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X14_Y4_N18
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (!\Add2~0_combout\ & \Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~0_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: FF_X11_Y7_N15
\joy1_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga1|ALT_INV_hs~clkctrl_outclk\,
	d => \joy1_s[5]~6_combout\,
	ena => \Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => joy1_s(5));

-- Location: IOIBUF_X1_Y0_N22
\joy1_p6_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_joy1_p6_i,
	o => \joy1_p6_i~input_o\);

-- Location: LCCOMB_X14_Y4_N20
\joy1_s[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \joy1_s[6]~0_combout\ = (\Add2~0_combout\ & ((\Mux7~0_combout\ & (!\joy1_p6_i~input_o\)) # (!\Mux7~0_combout\ & ((joy1_s(6)))))) # (!\Add2~0_combout\ & (((joy1_s(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \joy1_p6_i~input_o\,
	datab => \Add2~0_combout\,
	datac => joy1_s(6),
	datad => \Mux7~0_combout\,
	combout => \joy1_s[6]~0_combout\);

-- Location: FF_X14_Y4_N21
\joy1_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga1|ALT_INV_hs~clkctrl_outclk\,
	d => \joy1_s[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => joy1_s(6));

-- Location: LCCOMB_X14_Y4_N30
\joy1_s[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \joy1_s[4]~7_combout\ = !\joy1_p6_i~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \joy1_p6_i~input_o\,
	combout => \joy1_s[4]~7_combout\);

-- Location: FF_X14_Y4_N31
\joy1_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga1|ALT_INV_hs~clkctrl_outclk\,
	d => \joy1_s[4]~7_combout\,
	ena => \Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => joy1_s(4));

-- Location: LCCOMB_X17_Y16_N14
\kb|keys_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|keys_s~0_combout\ = ((\kb|ps2_alt0|sdata\(3)) # ((\kb|ps2_alt0|sdata\(2)) # (!\kb|ps2_alt0|sdata\(0)))) # (!\kb|ps2_alt0|sdata\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(1),
	datab => \kb|ps2_alt0|sdata\(3),
	datac => \kb|ps2_alt0|sdata\(2),
	datad => \kb|ps2_alt0|sdata\(0),
	combout => \kb|keys_s~0_combout\);

-- Location: LCCOMB_X17_Y16_N16
\kb|keys_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|keys_s~1_combout\ = (!\kb|ps2_alt0|sdata\(5) & (((\kb|ps2_alt0|sdata\(2)) # (!\kb|ps2_alt0|sdata\(1))) # (!\kb|ps2_alt0|sdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(5),
	datab => \kb|ps2_alt0|sdata\(3),
	datac => \kb|ps2_alt0|sdata\(2),
	datad => \kb|ps2_alt0|sdata\(1),
	combout => \kb|keys_s~1_combout\);

-- Location: LCCOMB_X17_Y16_N18
\kb|keys_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|keys_s~2_combout\ = (\kb|ps2_alt0|sdata\(7) & ((\kb|keys_s~0_combout\) # ((\kb|ps2_alt0|sdata\(4) & \kb|keys_s~1_combout\)))) # (!\kb|ps2_alt0|sdata\(7) & (\kb|ps2_alt0|sdata\(4) & ((\kb|keys_s~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(7),
	datab => \kb|ps2_alt0|sdata\(4),
	datac => \kb|keys_s~0_combout\,
	datad => \kb|keys_s~1_combout\,
	combout => \kb|keys_s~2_combout\);

-- Location: LCCOMB_X15_Y15_N22
\kb|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux4~5_combout\ = (!\kb|ps2_alt0|sdata\(4) & !\kb|ps2_alt0|sdata\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|sdata\(4),
	datac => \kb|ps2_alt0|sdata\(5),
	combout => \kb|Mux4~5_combout\);

-- Location: LCCOMB_X15_Y15_N20
\kb|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux0~1_combout\ = (\kb|ps2_alt0|sdata\(0) & (((!\kb|ps2_alt0|sdata\(3))) # (!\kb|ps2_alt0|sdata\(2)))) # (!\kb|ps2_alt0|sdata\(0) & (\kb|ps2_alt0|sdata\(2) $ (((\kb|ps2_alt0|sdata\(3) & \kb|ps2_alt0|sdata\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(0),
	datab => \kb|ps2_alt0|sdata\(2),
	datac => \kb|ps2_alt0|sdata\(3),
	datad => \kb|ps2_alt0|sdata\(1),
	combout => \kb|Mux0~1_combout\);

-- Location: LCCOMB_X16_Y16_N26
\kb|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Selector3~1_combout\ = (!\kb|keymap_seq_s.KM_IDLE~q\ & (\kb|ps2_alt0|parchecked~q\ & !\kb|keyb_valid_edge_v\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|keymap_seq_s.KM_IDLE~q\,
	datab => \kb|ps2_alt0|parchecked~q\,
	datac => \kb|keyb_valid_edge_v\(0),
	combout => \kb|Selector3~1_combout\);

-- Location: LCCOMB_X16_Y16_N12
\kb|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Selector2~0_combout\ = (\kb|extended_s~q\ & (((\kb|keymap_seq_s.KM_SEND~q\) # (\kb|keymap_seq_s.KM_READ~q\)) # (!\kb|keymap_seq_s.KM_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|keymap_seq_s.KM_IDLE~q\,
	datab => \kb|keymap_seq_s.KM_SEND~q\,
	datac => \kb|extended_s~q\,
	datad => \kb|keymap_seq_s.KM_READ~q\,
	combout => \kb|Selector2~0_combout\);

-- Location: LCCOMB_X16_Y16_N24
\kb|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Selector2~1_combout\ = (\kb|Selector2~0_combout\) # ((\kb|Selector3~1_combout\ & (!\kb|ps2_alt0|sdata\(4) & \kb|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|Selector3~1_combout\,
	datab => \kb|ps2_alt0|sdata\(4),
	datac => \kb|Equal2~2_combout\,
	datad => \kb|Selector2~0_combout\,
	combout => \kb|Selector2~1_combout\);

-- Location: FF_X16_Y16_N25
\kb|extended_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \kb|Selector2~1_combout\,
	clrn => \ALT_INV_reset_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|extended_s~q\);

-- Location: LCCOMB_X15_Y15_N6
\kb|keys_s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|keys_s~4_combout\ = ((\kb|extended_s~q\) # ((!\kb|ps2_alt0|sdata\(7) & !\kb|Mux0~1_combout\))) # (!\kb|Mux4~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(7),
	datab => \kb|Mux0~1_combout\,
	datac => \kb|Mux4~5_combout\,
	datad => \kb|extended_s~q\,
	combout => \kb|keys_s~4_combout\);

-- Location: LCCOMB_X15_Y15_N0
\kb|keys_s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|keys_s~5_combout\ = (\kb|ps2_alt0|sdata\(6) & ((\kb|Mux4~5_combout\) # ((\kb|ps2_alt0|sdata\(0))))) # (!\kb|ps2_alt0|sdata\(6) & (((\kb|keys_s~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|Mux4~5_combout\,
	datab => \kb|ps2_alt0|sdata\(6),
	datac => \kb|ps2_alt0|sdata\(0),
	datad => \kb|keys_s~4_combout\,
	combout => \kb|keys_s~5_combout\);

-- Location: LCCOMB_X17_Y16_N12
\kb|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux0~0_combout\ = (\kb|ps2_alt0|sdata\(3) & (\kb|ps2_alt0|sdata\(4) & (\kb|ps2_alt0|sdata\(2) $ (!\kb|ps2_alt0|sdata\(1))))) # (!\kb|ps2_alt0|sdata\(3) & (\kb|ps2_alt0|sdata\(2) & (!\kb|ps2_alt0|sdata\(4) & \kb|ps2_alt0|sdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(3),
	datab => \kb|ps2_alt0|sdata\(2),
	datac => \kb|ps2_alt0|sdata\(4),
	datad => \kb|ps2_alt0|sdata\(1),
	combout => \kb|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y16_N28
\kb|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Selector3~0_combout\ = (\kb|release_s~q\ & (((\kb|keymap_seq_s.KM_SEND~q\) # (\kb|keymap_seq_s.KM_READ~q\)) # (!\kb|keymap_seq_s.KM_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|keymap_seq_s.KM_IDLE~q\,
	datab => \kb|keymap_seq_s.KM_SEND~q\,
	datac => \kb|release_s~q\,
	datad => \kb|keymap_seq_s.KM_READ~q\,
	combout => \kb|Selector3~0_combout\);

-- Location: LCCOMB_X16_Y16_N22
\kb|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Selector3~2_combout\ = (\kb|Selector3~0_combout\) # ((\kb|Selector3~1_combout\ & (\kb|ps2_alt0|sdata\(4) & \kb|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|Selector3~1_combout\,
	datab => \kb|ps2_alt0|sdata\(4),
	datac => \kb|Equal2~2_combout\,
	datad => \kb|Selector3~0_combout\,
	combout => \kb|Selector3~2_combout\);

-- Location: FF_X16_Y16_N23
\kb|release_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \kb|Selector3~2_combout\,
	clrn => \ALT_INV_reset_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|release_s~q\);

-- Location: LCCOMB_X17_Y16_N6
\kb|keys_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|keys_s~3_combout\ = (\kb|release_s~q\) # ((\kb|ps2_alt0|sdata\(5) & ((\kb|extended_s~q\) # (!\kb|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|Mux0~0_combout\,
	datab => \kb|release_s~q\,
	datac => \kb|ps2_alt0|sdata\(5),
	datad => \kb|extended_s~q\,
	combout => \kb|keys_s~3_combout\);

-- Location: LCCOMB_X17_Y16_N2
\kb|keys_s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|keys_s~6_combout\ = (!\kb|keys_s~2_combout\ & (!\kb|keys_s~5_combout\ & !\kb|keys_s~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb|keys_s~2_combout\,
	datac => \kb|keys_s~5_combout\,
	datad => \kb|keys_s~3_combout\,
	combout => \kb|keys_s~6_combout\);

-- Location: FF_X17_Y16_N3
\kb|keys_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \kb|keys_s~6_combout\,
	clrn => \ALT_INV_reset_s~q\,
	ena => \kb|keymap_seq_s.KM_READ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|keys_s\(4));

-- Location: LCCOMB_X14_Y7_N10
\osd1|sdo_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|sdo_s~3_combout\ = (!joy1_s(5) & (!joy1_s(6) & (!joy1_s(4) & !\kb|keys_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => joy1_s(5),
	datab => joy1_s(6),
	datac => joy1_s(4),
	datad => \kb|keys_s\(4),
	combout => \osd1|sdo_s~3_combout\);

-- Location: IOIBUF_X1_Y0_N8
\joy1_down_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_joy1_down_i,
	o => \joy1_down_i~input_o\);

-- Location: LCCOMB_X11_Y7_N24
\joy1_s[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \joy1_s[1]~1_combout\ = !\joy1_down_i~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \joy1_down_i~input_o\,
	combout => \joy1_s[1]~1_combout\);

-- Location: FF_X11_Y7_N25
\joy1_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga1|ALT_INV_hs~clkctrl_outclk\,
	d => \joy1_s[1]~1_combout\,
	ena => \Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => joy1_s(1));

-- Location: IOIBUF_X5_Y0_N22
\joy1_up_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_joy1_up_i,
	o => \joy1_up_i~input_o\);

-- Location: LCCOMB_X11_Y7_N4
\joy1_s[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \joy1_s[0]~4_combout\ = !\joy1_up_i~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \joy1_up_i~input_o\,
	combout => \joy1_s[0]~4_combout\);

-- Location: FF_X11_Y7_N5
\joy1_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga1|ALT_INV_hs~clkctrl_outclk\,
	d => \joy1_s[0]~4_combout\,
	ena => \Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => joy1_s(0));

-- Location: LCCOMB_X15_Y16_N10
\kb|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux3~3_combout\ = (\kb|ps2_alt0|sdata\(0) & (\kb|ps2_alt0|sdata\(1) $ (((\kb|ps2_alt0|sdata\(4) & !\kb|ps2_alt0|sdata\(2)))))) # (!\kb|ps2_alt0|sdata\(0) & (\kb|ps2_alt0|sdata\(4) & ((\kb|ps2_alt0|sdata\(2)) # (\kb|ps2_alt0|sdata\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(4),
	datab => \kb|ps2_alt0|sdata\(2),
	datac => \kb|ps2_alt0|sdata\(0),
	datad => \kb|ps2_alt0|sdata\(1),
	combout => \kb|Mux3~3_combout\);

-- Location: LCCOMB_X15_Y16_N4
\kb|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux3~4_combout\ = (\kb|Mux3~3_combout\ & ((\kb|ps2_alt0|sdata\(2) & ((!\kb|extended_s~q\))) # (!\kb|ps2_alt0|sdata\(2) & (!\kb|ps2_alt0|sdata\(3) & \kb|extended_s~q\)))) # (!\kb|Mux3~3_combout\ & (((\kb|ps2_alt0|sdata\(3) & \kb|extended_s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|Mux3~3_combout\,
	datab => \kb|ps2_alt0|sdata\(2),
	datac => \kb|ps2_alt0|sdata\(3),
	datad => \kb|extended_s~q\,
	combout => \kb|Mux3~4_combout\);

-- Location: LCCOMB_X15_Y16_N30
\kb|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux3~5_combout\ = (\kb|Mux3~3_combout\ & (((\kb|extended_s~q\)))) # (!\kb|Mux3~3_combout\ & ((\kb|ps2_alt0|sdata\(3) & (\kb|ps2_alt0|sdata\(2))) # (!\kb|ps2_alt0|sdata\(3) & ((\kb|extended_s~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|Mux3~3_combout\,
	datab => \kb|ps2_alt0|sdata\(2),
	datac => \kb|ps2_alt0|sdata\(3),
	datad => \kb|extended_s~q\,
	combout => \kb|Mux3~5_combout\);

-- Location: LCCOMB_X15_Y16_N22
\kb|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux3~8_combout\ = (\kb|Mux3~5_combout\) # ((!\kb|Mux3~4_combout\ & ((\kb|ps2_alt0|sdata\(5)) # (\kb|ps2_alt0|sdata\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(5),
	datab => \kb|Mux3~4_combout\,
	datac => \kb|ps2_alt0|sdata\(6),
	datad => \kb|Mux3~5_combout\,
	combout => \kb|Mux3~8_combout\);

-- Location: LCCOMB_X17_Y16_N28
\kb|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Equal2~0_combout\ = (\kb|ps2_alt0|sdata\(5) & \kb|ps2_alt0|sdata\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(5),
	datac => \kb|ps2_alt0|sdata\(6),
	combout => \kb|Equal2~0_combout\);

-- Location: LCCOMB_X15_Y16_N24
\kb|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux3~2_combout\ = (\kb|ps2_alt0|sdata\(0) & (!\kb|ps2_alt0|sdata\(4) & ((!\kb|ps2_alt0|sdata\(1)) # (!\kb|ps2_alt0|sdata\(2))))) # (!\kb|ps2_alt0|sdata\(0) & (((\kb|ps2_alt0|sdata\(2) & \kb|ps2_alt0|sdata\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(4),
	datab => \kb|ps2_alt0|sdata\(2),
	datac => \kb|ps2_alt0|sdata\(0),
	datad => \kb|ps2_alt0|sdata\(1),
	combout => \kb|Mux3~2_combout\);

-- Location: LCCOMB_X15_Y16_N8
\kb|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux3~6_combout\ = (\kb|Mux3~4_combout\ & ((\kb|Mux3~8_combout\ $ (!\kb|Mux3~2_combout\)) # (!\kb|Equal2~0_combout\))) # (!\kb|Mux3~4_combout\ & ((\kb|Mux3~8_combout\) # ((!\kb|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|Mux3~8_combout\,
	datab => \kb|Mux3~4_combout\,
	datac => \kb|Equal2~0_combout\,
	datad => \kb|Mux3~2_combout\,
	combout => \kb|Mux3~6_combout\);

-- Location: LCCOMB_X16_Y16_N18
\kb|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux3~7_combout\ = (!\kb|Mux3~6_combout\ & (!\kb|ps2_alt0|sdata\(7) & !\kb|release_s~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|Mux3~6_combout\,
	datab => \kb|ps2_alt0|sdata\(7),
	datac => \kb|release_s~q\,
	combout => \kb|Mux3~7_combout\);

-- Location: FF_X16_Y16_N19
\kb|keys_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \kb|Mux3~7_combout\,
	clrn => \ALT_INV_reset_s~q\,
	ena => \kb|keymap_seq_s.KM_READ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|keys_s\(1));

-- Location: LCCOMB_X15_Y15_N24
\kb|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux4~2_combout\ = (\kb|ps2_alt0|sdata\(3) & (!\kb|ps2_alt0|sdata\(2) & (\kb|ps2_alt0|sdata\(4) & !\kb|ps2_alt0|sdata\(1)))) # (!\kb|ps2_alt0|sdata\(3) & (\kb|ps2_alt0|sdata\(2) & ((\kb|ps2_alt0|sdata\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(3),
	datab => \kb|ps2_alt0|sdata\(2),
	datac => \kb|ps2_alt0|sdata\(4),
	datad => \kb|ps2_alt0|sdata\(1),
	combout => \kb|Mux4~2_combout\);

-- Location: LCCOMB_X15_Y15_N18
\kb|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux4~3_combout\ = ((!\kb|extended_s~q\ & ((\kb|ps2_alt0|sdata\(0)) # (!\kb|Mux4~2_combout\)))) # (!\kb|ps2_alt0|sdata\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|Mux4~2_combout\,
	datab => \kb|ps2_alt0|sdata\(5),
	datac => \kb|ps2_alt0|sdata\(0),
	datad => \kb|extended_s~q\,
	combout => \kb|Mux4~3_combout\);

-- Location: LCCOMB_X15_Y15_N12
\kb|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux4~4_combout\ = (!\kb|ps2_alt0|sdata\(3) & ((\kb|ps2_alt0|sdata\(2) & ((!\kb|ps2_alt0|sdata\(1)))) # (!\kb|ps2_alt0|sdata\(2) & (\kb|ps2_alt0|sdata\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(0),
	datab => \kb|ps2_alt0|sdata\(2),
	datac => \kb|ps2_alt0|sdata\(3),
	datad => \kb|ps2_alt0|sdata\(1),
	combout => \kb|Mux4~4_combout\);

-- Location: LCCOMB_X15_Y15_N16
\kb|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux4~6_combout\ = (\kb|ps2_alt0|sdata\(6) & (((\kb|Mux4~3_combout\)))) # (!\kb|ps2_alt0|sdata\(6) & (((!\kb|Mux4~4_combout\)) # (!\kb|Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|Mux4~5_combout\,
	datab => \kb|Mux4~3_combout\,
	datac => \kb|ps2_alt0|sdata\(6),
	datad => \kb|Mux4~4_combout\,
	combout => \kb|Mux4~6_combout\);

-- Location: LCCOMB_X15_Y16_N16
\kb|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux1~4_combout\ = (\kb|ps2_alt0|sdata\(0) & (!\kb|ps2_alt0|sdata\(2) & (\kb|ps2_alt0|sdata\(3) & !\kb|ps2_alt0|sdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(0),
	datab => \kb|ps2_alt0|sdata\(2),
	datac => \kb|ps2_alt0|sdata\(3),
	datad => \kb|ps2_alt0|sdata\(1),
	combout => \kb|Mux1~4_combout\);

-- Location: LCCOMB_X15_Y16_N26
\kb|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux4~7_combout\ = (\kb|ps2_alt0|sdata\(0) & (\kb|ps2_alt0|sdata\(2) & ((!\kb|ps2_alt0|sdata\(1))))) # (!\kb|ps2_alt0|sdata\(0) & (!\kb|ps2_alt0|sdata\(2) & (\kb|ps2_alt0|sdata\(3) & \kb|ps2_alt0|sdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(0),
	datab => \kb|ps2_alt0|sdata\(2),
	datac => \kb|ps2_alt0|sdata\(3),
	datad => \kb|ps2_alt0|sdata\(1),
	combout => \kb|Mux4~7_combout\);

-- Location: LCCOMB_X15_Y16_N28
\kb|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux4~8_combout\ = ((\kb|ps2_alt0|sdata\(4) & ((!\kb|Mux4~7_combout\))) # (!\kb|ps2_alt0|sdata\(4) & (!\kb|Mux1~4_combout\))) # (!\kb|ps2_alt0|sdata\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(5),
	datab => \kb|Mux1~4_combout\,
	datac => \kb|Mux4~7_combout\,
	datad => \kb|ps2_alt0|sdata\(4),
	combout => \kb|Mux4~8_combout\);

-- Location: LCCOMB_X15_Y15_N10
\kb|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux4~9_combout\ = (!\kb|ps2_alt0|sdata\(7) & ((\kb|Mux4~6_combout\) # ((\kb|Mux4~8_combout\ & \kb|extended_s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(7),
	datab => \kb|Mux4~6_combout\,
	datac => \kb|Mux4~8_combout\,
	datad => \kb|extended_s~q\,
	combout => \kb|Mux4~9_combout\);

-- Location: LCCOMB_X16_Y15_N12
\kb|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux4~0_combout\ = (!\kb|extended_s~q\ & (!\kb|ps2_alt0|sdata\(3) & (\kb|ps2_alt0|sdata\(0) & !\kb|ps2_alt0|sdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|extended_s~q\,
	datab => \kb|ps2_alt0|sdata\(3),
	datac => \kb|ps2_alt0|sdata\(0),
	datad => \kb|ps2_alt0|sdata\(5),
	combout => \kb|Mux4~0_combout\);

-- Location: LCCOMB_X16_Y16_N14
\kb|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux4~1_combout\ = (!\kb|release_s~q\ & (((\kb|Mux4~0_combout\ & \kb|Equal1~0_combout\)) # (!\kb|ps2_alt0|sdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|Mux4~0_combout\,
	datab => \kb|ps2_alt0|sdata\(7),
	datac => \kb|release_s~q\,
	datad => \kb|Equal1~0_combout\,
	combout => \kb|Mux4~1_combout\);

-- Location: LCCOMB_X16_Y16_N4
\kb|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux4~10_combout\ = (!\kb|Mux4~9_combout\ & \kb|Mux4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|Mux4~9_combout\,
	datac => \kb|Mux4~1_combout\,
	combout => \kb|Mux4~10_combout\);

-- Location: FF_X16_Y16_N5
\kb|keys_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \kb|Mux4~10_combout\,
	clrn => \ALT_INV_reset_s~q\,
	ena => \kb|keymap_seq_s.KM_READ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|keys_s\(0));

-- Location: IOIBUF_X5_Y0_N8
\joy1_left_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_joy1_left_i,
	o => \joy1_left_i~input_o\);

-- Location: LCCOMB_X14_Y7_N8
\joy1_s[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \joy1_s[2]~2_combout\ = !\joy1_left_i~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \joy1_left_i~input_o\,
	combout => \joy1_s[2]~2_combout\);

-- Location: FF_X14_Y7_N9
\joy1_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga1|ALT_INV_hs~clkctrl_outclk\,
	d => \joy1_s[2]~2_combout\,
	ena => \Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => joy1_s(2));

-- Location: IOIBUF_X1_Y0_N15
\joy1_right_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_joy1_right_i,
	o => \joy1_right_i~input_o\);

-- Location: LCCOMB_X11_Y7_N26
\joy1_s[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \joy1_s[3]~3_combout\ = !\joy1_right_i~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \joy1_right_i~input_o\,
	combout => \joy1_s[3]~3_combout\);

-- Location: FF_X11_Y7_N27
\joy1_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga1|ALT_INV_hs~clkctrl_outclk\,
	d => \joy1_s[3]~3_combout\,
	ena => \Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => joy1_s(3));

-- Location: LCCOMB_X15_Y16_N0
\kb|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux1~0_combout\ = (\kb|ps2_alt0|sdata\(6) & ((\kb|ps2_alt0|sdata\(5)) # (!\kb|ps2_alt0|sdata\(4)))) # (!\kb|ps2_alt0|sdata\(6) & (\kb|ps2_alt0|sdata\(5) & !\kb|ps2_alt0|sdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb|ps2_alt0|sdata\(6),
	datac => \kb|ps2_alt0|sdata\(5),
	datad => \kb|ps2_alt0|sdata\(4),
	combout => \kb|Mux1~0_combout\);

-- Location: LCCOMB_X15_Y16_N18
\kb|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux1~1_combout\ = (\kb|ps2_alt0|sdata\(0) & ((\kb|ps2_alt0|sdata\(3)) # (\kb|ps2_alt0|sdata\(1)))) # (!\kb|ps2_alt0|sdata\(0) & (\kb|ps2_alt0|sdata\(3) & \kb|ps2_alt0|sdata\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(0),
	datac => \kb|ps2_alt0|sdata\(3),
	datad => \kb|ps2_alt0|sdata\(1),
	combout => \kb|Mux1~1_combout\);

-- Location: LCCOMB_X15_Y16_N20
\kb|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux1~2_combout\ = (\kb|ps2_alt0|sdata\(2) & (!\kb|Mux1~1_combout\ & ((\kb|ps2_alt0|sdata\(1)) # (!\kb|ps2_alt0|sdata\(4))))) # (!\kb|ps2_alt0|sdata\(2) & (!\kb|ps2_alt0|sdata\(4) & (\kb|Mux1~1_combout\ & \kb|ps2_alt0|sdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(4),
	datab => \kb|ps2_alt0|sdata\(2),
	datac => \kb|Mux1~1_combout\,
	datad => \kb|ps2_alt0|sdata\(1),
	combout => \kb|Mux1~2_combout\);

-- Location: LCCOMB_X15_Y16_N6
\kb|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux1~3_combout\ = (\kb|extended_s~q\ & (\kb|ps2_alt0|sdata\(4))) # (!\kb|extended_s~q\ & ((\kb|ps2_alt0|sdata\(4) $ (\kb|Mux1~0_combout\)) # (!\kb|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(4),
	datab => \kb|Mux1~0_combout\,
	datac => \kb|Mux1~2_combout\,
	datad => \kb|extended_s~q\,
	combout => \kb|Mux1~3_combout\);

-- Location: LCCOMB_X15_Y16_N2
\kb|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux1~5_combout\ = (!\kb|ps2_alt0|sdata\(3) & (\kb|ps2_alt0|sdata\(0) $ (\kb|ps2_alt0|sdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(0),
	datab => \kb|ps2_alt0|sdata\(2),
	datac => \kb|ps2_alt0|sdata\(3),
	combout => \kb|Mux1~5_combout\);

-- Location: LCCOMB_X15_Y16_N12
\kb|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux1~6_combout\ = (\kb|Mux1~3_combout\ & (!\kb|ps2_alt0|sdata\(1) & (\kb|Mux1~5_combout\))) # (!\kb|Mux1~3_combout\ & (((\kb|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(1),
	datab => \kb|Mux1~5_combout\,
	datac => \kb|Mux1~3_combout\,
	datad => \kb|Mux1~4_combout\,
	combout => \kb|Mux1~6_combout\);

-- Location: LCCOMB_X15_Y16_N14
\kb|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux1~7_combout\ = (\kb|extended_s~q\ & (((!\kb|Mux1~6_combout\) # (!\kb|Equal2~0_combout\)))) # (!\kb|extended_s~q\ & (\kb|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|Mux1~3_combout\,
	datab => \kb|extended_s~q\,
	datac => \kb|Equal2~0_combout\,
	datad => \kb|Mux1~6_combout\,
	combout => \kb|Mux1~7_combout\);

-- Location: LCCOMB_X16_Y16_N0
\kb|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux1~8_combout\ = (\kb|Mux4~1_combout\ & ((\kb|ps2_alt0|sdata\(7)) # (!\kb|Mux1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|Mux1~7_combout\,
	datab => \kb|ps2_alt0|sdata\(7),
	datac => \kb|Mux4~1_combout\,
	combout => \kb|Mux1~8_combout\);

-- Location: FF_X16_Y16_N1
\kb|keys_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \kb|Mux1~8_combout\,
	clrn => \ALT_INV_reset_s~q\,
	ena => \kb|keymap_seq_s.KM_READ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|keys_s\(3));

-- Location: LCCOMB_X26_Y15_N8
\osd1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Mux0~0_combout\ = (\osd1|cnt\(0) & (joy1_s(2))) # (!\osd1|cnt\(0) & (((joy1_s(3)) # (\kb|keys_s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => joy1_s(2),
	datab => \osd1|cnt\(0),
	datac => joy1_s(3),
	datad => \kb|keys_s\(3),
	combout => \osd1|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y16_N30
\kb|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux2~0_combout\ = (\kb|ps2_alt0|sdata\(7)) # (\kb|release_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(7),
	datad => \kb|release_s~q\,
	combout => \kb|Mux2~0_combout\);

-- Location: LCCOMB_X17_Y16_N10
\kb|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux2~2_combout\ = (!\kb|ps2_alt0|sdata\(2) & ((\kb|ps2_alt0|sdata\(1) & (\kb|ps2_alt0|sdata\(3) & !\kb|ps2_alt0|sdata\(0))) # (!\kb|ps2_alt0|sdata\(1) & (!\kb|ps2_alt0|sdata\(3) & \kb|ps2_alt0|sdata\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(1),
	datab => \kb|ps2_alt0|sdata\(3),
	datac => \kb|ps2_alt0|sdata\(2),
	datad => \kb|ps2_alt0|sdata\(0),
	combout => \kb|Mux2~2_combout\);

-- Location: LCCOMB_X17_Y16_N0
\kb|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux2~1_combout\ = (!\kb|ps2_alt0|sdata\(0) & ((\kb|ps2_alt0|sdata\(1) & (!\kb|ps2_alt0|sdata\(3) & \kb|ps2_alt0|sdata\(2))) # (!\kb|ps2_alt0|sdata\(1) & (\kb|ps2_alt0|sdata\(3) & !\kb|ps2_alt0|sdata\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(1),
	datab => \kb|ps2_alt0|sdata\(3),
	datac => \kb|ps2_alt0|sdata\(2),
	datad => \kb|ps2_alt0|sdata\(0),
	combout => \kb|Mux2~1_combout\);

-- Location: LCCOMB_X17_Y16_N20
\kb|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux2~3_combout\ = (\kb|ps2_alt0|sdata\(4) & ((\kb|extended_s~q\ & (\kb|Mux2~2_combout\)) # (!\kb|extended_s~q\ & ((\kb|Mux2~1_combout\))))) # (!\kb|ps2_alt0|sdata\(4) & (((\kb|extended_s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|Mux2~2_combout\,
	datab => \kb|Mux2~1_combout\,
	datac => \kb|ps2_alt0|sdata\(4),
	datad => \kb|extended_s~q\,
	combout => \kb|Mux2~3_combout\);

-- Location: LCCOMB_X17_Y16_N24
\kb|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux2~5_combout\ = (\kb|ps2_alt0|sdata\(2) & (((!\kb|ps2_alt0|sdata\(1) & !\kb|ps2_alt0|sdata\(0))) # (!\kb|ps2_alt0|sdata\(3)))) # (!\kb|ps2_alt0|sdata\(2) & (!\kb|ps2_alt0|sdata\(1) & ((\kb|ps2_alt0|sdata\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(1),
	datab => \kb|ps2_alt0|sdata\(3),
	datac => \kb|ps2_alt0|sdata\(2),
	datad => \kb|ps2_alt0|sdata\(0),
	combout => \kb|Mux2~5_combout\);

-- Location: LCCOMB_X17_Y16_N26
\kb|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux2~6_combout\ = (\kb|ps2_alt0|sdata\(5)) # ((\kb|ps2_alt0|sdata\(6)) # (!\kb|Mux2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(5),
	datac => \kb|ps2_alt0|sdata\(6),
	datad => \kb|Mux2~5_combout\,
	combout => \kb|Mux2~6_combout\);

-- Location: LCCOMB_X17_Y16_N22
\kb|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux2~4_combout\ = (\kb|ps2_alt0|sdata\(3) & ((\kb|ps2_alt0|sdata\(1) & (!\kb|ps2_alt0|sdata\(2) & \kb|ps2_alt0|sdata\(0))) # (!\kb|ps2_alt0|sdata\(1) & (\kb|ps2_alt0|sdata\(2) & !\kb|ps2_alt0|sdata\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|ps2_alt0|sdata\(1),
	datab => \kb|ps2_alt0|sdata\(3),
	datac => \kb|ps2_alt0|sdata\(2),
	datad => \kb|ps2_alt0|sdata\(0),
	combout => \kb|Mux2~4_combout\);

-- Location: LCCOMB_X17_Y16_N4
\kb|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux2~7_combout\ = (\kb|ps2_alt0|sdata\(4)) # ((\kb|Mux2~3_combout\ & ((\kb|Mux2~4_combout\))) # (!\kb|Mux2~3_combout\ & (\kb|Mux2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|Mux2~6_combout\,
	datab => \kb|ps2_alt0|sdata\(4),
	datac => \kb|Mux2~4_combout\,
	datad => \kb|Mux2~3_combout\,
	combout => \kb|Mux2~7_combout\);

-- Location: LCCOMB_X17_Y16_N8
\kb|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb|Mux2~8_combout\ = (!\kb|Mux2~0_combout\ & ((\kb|Mux2~3_combout\ & (\kb|Mux2~7_combout\ & \kb|Equal2~0_combout\)) # (!\kb|Mux2~3_combout\ & (!\kb|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb|Mux2~0_combout\,
	datab => \kb|Mux2~3_combout\,
	datac => \kb|Mux2~7_combout\,
	datad => \kb|Equal2~0_combout\,
	combout => \kb|Mux2~8_combout\);

-- Location: FF_X17_Y16_N9
\kb|keys_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \kb|Mux2~8_combout\,
	clrn => \ALT_INV_reset_s~q\,
	ena => \kb|keymap_seq_s.KM_READ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb|keys_s\(2));

-- Location: LCCOMB_X26_Y15_N2
\osd1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Mux0~1_combout\ = (\osd1|cnt\(1) & (\osd1|cnt\(0))) # (!\osd1|cnt\(1) & (!\osd1|Mux0~0_combout\ & ((!\kb|keys_s\(2)) # (!\osd1|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(1),
	datab => \osd1|cnt\(0),
	datac => \osd1|Mux0~0_combout\,
	datad => \kb|keys_s\(2),
	combout => \osd1|Mux0~1_combout\);

-- Location: LCCOMB_X19_Y15_N0
\osd1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Mux0~2_combout\ = (\osd1|Mux0~1_combout\ & ((joy1_s(0)) # ((\kb|keys_s\(0))))) # (!\osd1|Mux0~1_combout\ & (((\kb|keys_s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => joy1_s(0),
	datab => \kb|keys_s\(1),
	datac => \kb|keys_s\(0),
	datad => \osd1|Mux0~1_combout\,
	combout => \osd1|Mux0~2_combout\);

-- Location: LCCOMB_X26_Y15_N28
\osd1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Mux0~3_combout\ = (\osd1|cnt\(1) & (!\osd1|Mux0~2_combout\ & ((\osd1|Mux0~1_combout\) # (!joy1_s(1))))) # (!\osd1|cnt\(1) & (((\osd1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(1),
	datab => joy1_s(1),
	datac => \osd1|Mux0~2_combout\,
	datad => \osd1|Mux0~1_combout\,
	combout => \osd1|Mux0~3_combout\);

-- Location: LCCOMB_X26_Y15_N22
\osd1|sdo_s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|sdo_s~4_combout\ = (\osd1|cnt\(2) & (((\osd1|Mux0~3_combout\)))) # (!\osd1|cnt\(2) & ((\osd1|sdo_s~3_combout\) # ((!\osd1|sdo_s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|sdo_s~3_combout\,
	datab => \osd1|sdo_s~0_combout\,
	datac => \osd1|cnt\(2),
	datad => \osd1|Mux0~3_combout\,
	combout => \osd1|sdo_s~4_combout\);

-- Location: FF_X36_Y15_N29
\osd1|cmd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(0),
	sload => VCC,
	ena => \osd1|cmd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cmd\(1));

-- Location: FF_X37_Y12_N15
\osd1|sbuf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(3),
	sload => VCC,
	ena => \ALT_INV_stm_b12_io~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|sbuf\(4));

-- Location: LCCOMB_X35_Y18_N20
\osd1|sbuf[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|sbuf[5]~feeder_combout\ = \osd1|sbuf\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \osd1|sbuf\(4),
	combout => \osd1|sbuf[5]~feeder_combout\);

-- Location: FF_X35_Y18_N21
\osd1|sbuf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|sbuf[5]~feeder_combout\,
	ena => \ALT_INV_stm_b12_io~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|sbuf\(5));

-- Location: LCCOMB_X36_Y15_N16
\osd1|cmd[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cmd[6]~feeder_combout\ = \osd1|sbuf\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \osd1|sbuf\(5),
	combout => \osd1|cmd[6]~feeder_combout\);

-- Location: FF_X36_Y15_N17
\osd1|cmd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|cmd[6]~feeder_combout\,
	ena => \osd1|cmd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cmd\(6));

-- Location: LCCOMB_X35_Y18_N6
\osd1|sbuf[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|sbuf[6]~feeder_combout\ = \osd1|sbuf\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \osd1|sbuf\(5),
	combout => \osd1|sbuf[6]~feeder_combout\);

-- Location: FF_X35_Y18_N7
\osd1|sbuf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|sbuf[6]~feeder_combout\,
	ena => \ALT_INV_stm_b12_io~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|sbuf\(6));

-- Location: FF_X36_Y15_N11
\osd1|cmd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(6),
	sload => VCC,
	ena => \osd1|cmd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cmd\(7));

-- Location: FF_X36_Y15_N1
\osd1|cmd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(4),
	sload => VCC,
	ena => \osd1|cmd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cmd\(5));

-- Location: FF_X36_Y15_N5
\osd1|cmd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(2),
	sload => VCC,
	ena => \osd1|cmd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cmd\(3));

-- Location: LCCOMB_X36_Y15_N0
\osd1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal0~0_combout\ = (!\osd1|cmd\(6) & (!\osd1|cmd\(7) & (!\osd1|cmd\(5) & !\osd1|cmd\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cmd\(6),
	datab => \osd1|cmd\(7),
	datac => \osd1|cmd\(5),
	datad => \osd1|cmd\(3),
	combout => \osd1|Equal0~0_combout\);

-- Location: FF_X36_Y15_N9
\osd1|cmd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \stm_b15_io~input_o\,
	sload => VCC,
	ena => \osd1|cmd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cmd\(0));

-- Location: FF_X36_Y15_N19
\osd1|cmd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(1),
	sload => VCC,
	ena => \osd1|cmd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cmd\(2));

-- Location: LCCOMB_X36_Y15_N26
\osd1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal0~1_combout\ = (!\osd1|cmd\(1) & (\osd1|Equal0~0_combout\ & (!\osd1|cmd\(0) & !\osd1|cmd\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cmd\(1),
	datab => \osd1|Equal0~0_combout\,
	datac => \osd1|cmd\(0),
	datad => \osd1|cmd\(2),
	combout => \osd1|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y15_N16
\osd1|sram_data_s[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|sram_data_s[2]~feeder_combout\ = \osd1|sbuf\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \osd1|sbuf\(1),
	combout => \osd1|sram_data_s[2]~feeder_combout\);

-- Location: LCCOMB_X26_Y15_N4
\osd1|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal7~0_combout\ = (\osd1|cnt\(2) & (\osd1|cnt\(3) & (!\osd1|cnt\(4) & \osd1|sdo_s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(2),
	datab => \osd1|cnt\(3),
	datac => \osd1|cnt\(4),
	datad => \osd1|sdo_s~0_combout\,
	combout => \osd1|Equal7~0_combout\);

-- Location: LCCOMB_X36_Y15_N22
\osd1|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal9~0_combout\ = (!\osd1|cmd\(2) & (\osd1|cmd\(6) & !\osd1|cmd\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cmd\(2),
	datac => \osd1|cmd\(6),
	datad => \osd1|cmd\(1),
	combout => \osd1|Equal9~0_combout\);

-- Location: LCCOMB_X36_Y15_N4
\osd1|osd_buffer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|osd_buffer~0_combout\ = (!\osd1|cmd\(4) & (!\osd1|cmd\(7) & (!\osd1|cmd\(3) & \osd1|cmd\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cmd\(4),
	datab => \osd1|cmd\(7),
	datac => \osd1|cmd\(3),
	datad => \osd1|cmd\(5),
	combout => \osd1|osd_buffer~0_combout\);

-- Location: LCCOMB_X36_Y15_N24
\osd1|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal10~0_combout\ = (\osd1|Equal9~0_combout\ & (\osd1|osd_buffer~0_combout\ & \osd1|cmd\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|Equal9~0_combout\,
	datab => \osd1|osd_buffer~0_combout\,
	datac => \osd1|cmd\(0),
	combout => \osd1|Equal10~0_combout\);

-- Location: LCCOMB_X35_Y15_N8
\osd1|sram_data_s[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|sram_data_s[0]~0_combout\ = (!\stm_b12_io~input_o\ & (\osd1|Equal7~0_combout\ & \osd1|Equal10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stm_b12_io~input_o\,
	datac => \osd1|Equal7~0_combout\,
	datad => \osd1|Equal10~0_combout\,
	combout => \osd1|sram_data_s[0]~0_combout\);

-- Location: FF_X35_Y15_N17
\osd1|sram_data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|sram_data_s[2]~feeder_combout\,
	ena => \osd1|sram_data_s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|sram_data_s\(2));

-- Location: FF_X35_Y15_N19
\osd1|sram_data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(2),
	sload => VCC,
	ena => \osd1|sram_data_s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|sram_data_s\(3));

-- Location: LCCOMB_X35_Y15_N18
\osd1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Mux2~0_combout\ = (\osd1|cnt\(1) & (((\osd1|cnt\(0))))) # (!\osd1|cnt\(1) & ((\osd1|cnt\(0) & (\osd1|sram_data_s\(2))) # (!\osd1|cnt\(0) & ((\osd1|sram_data_s\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(1),
	datab => \osd1|sram_data_s\(2),
	datac => \osd1|sram_data_s\(3),
	datad => \osd1|cnt\(0),
	combout => \osd1|Mux2~0_combout\);

-- Location: FF_X35_Y15_N13
\osd1|sram_data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \stm_b15_io~input_o\,
	sload => VCC,
	ena => \osd1|sram_data_s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|sram_data_s\(0));

-- Location: LCCOMB_X35_Y15_N6
\osd1|sram_data_s[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|sram_data_s[1]~feeder_combout\ = \osd1|sbuf\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \osd1|sbuf\(0),
	combout => \osd1|sram_data_s[1]~feeder_combout\);

-- Location: FF_X35_Y15_N7
\osd1|sram_data_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|sram_data_s[1]~feeder_combout\,
	ena => \osd1|sram_data_s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|sram_data_s\(1));

-- Location: LCCOMB_X35_Y15_N12
\osd1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Mux2~1_combout\ = (\osd1|cnt\(1) & ((\osd1|Mux2~0_combout\ & (\osd1|sram_data_s\(0))) # (!\osd1|Mux2~0_combout\ & ((\osd1|sram_data_s\(1)))))) # (!\osd1|cnt\(1) & (\osd1|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(1),
	datab => \osd1|Mux2~0_combout\,
	datac => \osd1|sram_data_s\(0),
	datad => \osd1|sram_data_s\(1),
	combout => \osd1|Mux2~1_combout\);

-- Location: FF_X35_Y15_N23
\osd1|sram_data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(5),
	sload => VCC,
	ena => \osd1|sram_data_s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|sram_data_s\(6));

-- Location: LCCOMB_X35_Y15_N24
\osd1|sram_data_s[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|sram_data_s[5]~feeder_combout\ = \osd1|sbuf\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \osd1|sbuf\(4),
	combout => \osd1|sram_data_s[5]~feeder_combout\);

-- Location: FF_X35_Y15_N25
\osd1|sram_data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|sram_data_s[5]~feeder_combout\,
	ena => \osd1|sram_data_s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|sram_data_s\(5));

-- Location: FF_X35_Y15_N27
\osd1|sram_data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(6),
	sload => VCC,
	ena => \osd1|sram_data_s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|sram_data_s\(7));

-- Location: LCCOMB_X35_Y15_N26
\osd1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Mux2~2_combout\ = (\osd1|cnt\(1) & ((\osd1|sram_data_s\(5)) # ((\osd1|cnt\(0))))) # (!\osd1|cnt\(1) & (((\osd1|sram_data_s\(7) & !\osd1|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(1),
	datab => \osd1|sram_data_s\(5),
	datac => \osd1|sram_data_s\(7),
	datad => \osd1|cnt\(0),
	combout => \osd1|Mux2~2_combout\);

-- Location: FF_X35_Y15_N5
\osd1|sram_data_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(3),
	sload => VCC,
	ena => \osd1|sram_data_s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|sram_data_s\(4));

-- Location: LCCOMB_X35_Y15_N4
\osd1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Mux2~3_combout\ = (\osd1|Mux2~2_combout\ & (((\osd1|sram_data_s\(4)) # (!\osd1|cnt\(0))))) # (!\osd1|Mux2~2_combout\ & (\osd1|sram_data_s\(6) & ((\osd1|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|sram_data_s\(6),
	datab => \osd1|Mux2~2_combout\,
	datac => \osd1|sram_data_s\(4),
	datad => \osd1|cnt\(0),
	combout => \osd1|Mux2~3_combout\);

-- Location: LCCOMB_X35_Y15_N14
\osd1|sdo_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|sdo_s~1_combout\ = (\osd1|Equal10~0_combout\ & ((\osd1|cnt\(2) & (\osd1|Mux2~1_combout\)) # (!\osd1|cnt\(2) & ((\osd1|Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|Mux2~1_combout\,
	datab => \osd1|cnt\(2),
	datac => \osd1|Mux2~3_combout\,
	datad => \osd1|Equal10~0_combout\,
	combout => \osd1|sdo_s~1_combout\);

-- Location: LCCOMB_X36_Y15_N14
\osd1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Mux1~0_combout\ = \osd1|cnt\(2) $ (((!\osd1|cnt\(1) & \osd1|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(2),
	datab => \osd1|cnt\(1),
	datad => \osd1|cnt\(0),
	combout => \osd1|Mux1~0_combout\);

-- Location: LCCOMB_X36_Y15_N20
\osd1|sdo_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|sdo_s~2_combout\ = (\osd1|Equal0~1_combout\ & (((\osd1|Mux1~0_combout\ & !\osd1|cmd\(4))))) # (!\osd1|Equal0~1_combout\ & (\osd1|sdo_s~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|sdo_s~1_combout\,
	datab => \osd1|Mux1~0_combout\,
	datac => \osd1|Equal0~1_combout\,
	datad => \osd1|cmd\(4),
	combout => \osd1|sdo_s~2_combout\);

-- Location: LCCOMB_X36_Y15_N30
\osd1|sdo_s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|sdo_s~5_combout\ = (\osd1|sdo_s~2_combout\) # ((\osd1|cmd\(4) & (\osd1|sdo_s~4_combout\ & \osd1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cmd\(4),
	datab => \osd1|sdo_s~4_combout\,
	datac => \osd1|Equal0~1_combout\,
	datad => \osd1|sdo_s~2_combout\,
	combout => \osd1|sdo_s~5_combout\);

-- Location: LCCOMB_X36_Y15_N10
\osd1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal0~2_combout\ = (!\osd1|cmd\(1) & (!\osd1|cmd\(0) & \osd1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cmd\(1),
	datab => \osd1|cmd\(0),
	datad => \osd1|Equal0~0_combout\,
	combout => \osd1|Equal0~2_combout\);

-- Location: LCCOMB_X36_Y15_N18
\osd1|sdo_s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|sdo_s~6_combout\ = (\osd1|Equal10~0_combout\) # ((\osd1|Equal0~2_combout\ & ((\osd1|cmd\(4)) # (!\osd1|cmd\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|Equal0~2_combout\,
	datab => \osd1|Equal10~0_combout\,
	datac => \osd1|cmd\(2),
	datad => \osd1|cmd\(4),
	combout => \osd1|sdo_s~6_combout\);

-- Location: FF_X36_Y15_N31
\osd1|sdo_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_stm_b13_io~input_o\,
	d => \osd1|sdo_s~5_combout\,
	ena => \osd1|sdo_s~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|sdo_s~q\);

-- Location: LCCOMB_X48_Y13_N0
\osd1|sdo_s~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|sdo_s~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \osd1|sdo_s~enfeeder_combout\);

-- Location: FF_X48_Y13_N1
\osd1|sdo_s~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_stm_b13_io~input_o\,
	d => \osd1|sdo_s~enfeeder_combout\,
	clrn => \ALT_INV_stm_b12_io~input_o\,
	ena => \osd1|sdo_s~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|sdo_s~en_q\);

-- Location: LCCOMB_X14_Y4_N24
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Add2~0_combout\) # ((\Add2~14_combout\) # (!\Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~0_combout\,
	datac => \Mux0~0_combout\,
	datad => \Add2~14_combout\,
	combout => \Mux0~1_combout\);

-- Location: FF_X14_Y4_N25
joyP7_s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga1|ALT_INV_hs~clkctrl_outclk\,
	d => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \joyP7_s~q\);

-- Location: LCCOMB_X34_Y12_N6
\info1|localX[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|localX[0]~11_combout\ = \info1|localX\(0) $ (VCC)
-- \info1|localX[0]~12\ = CARRY(\info1|localX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(0),
	datad => VCC,
	combout => \info1|localX[0]~11_combout\,
	cout => \info1|localX[0]~12\);

-- Location: LCCOMB_X34_Y14_N6
\info1|hPos[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|hPos[0]~11_combout\ = \info1|hPos\(0) $ (VCC)
-- \info1|hPos[0]~12\ = CARRY(\info1|hPos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|hPos\(0),
	datad => VCC,
	combout => \info1|hPos[0]~11_combout\,
	cout => \info1|hPos[0]~12\);

-- Location: FF_X29_Y14_N31
\info1|oldH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \vga1|hs~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|oldH~q\);

-- Location: LCCOMB_X29_Y14_N30
\info1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|process_0~0_combout\ = (!\vga1|hs~q\ & \info1|oldH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|hs~q\,
	datac => \info1|oldH~q\,
	combout => \info1|process_0~0_combout\);

-- Location: FF_X34_Y14_N7
\info1|hPos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|hPos[0]~11_combout\,
	sclr => \info1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|hPos\(0));

-- Location: LCCOMB_X34_Y14_N8
\info1|hPos[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|hPos[1]~13_combout\ = (\info1|hPos\(1) & (!\info1|hPos[0]~12\)) # (!\info1|hPos\(1) & ((\info1|hPos[0]~12\) # (GND)))
-- \info1|hPos[1]~14\ = CARRY((!\info1|hPos[0]~12\) # (!\info1|hPos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \info1|hPos\(1),
	datad => VCC,
	cin => \info1|hPos[0]~12\,
	combout => \info1|hPos[1]~13_combout\,
	cout => \info1|hPos[1]~14\);

-- Location: FF_X34_Y14_N9
\info1|hPos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|hPos[1]~13_combout\,
	sclr => \info1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|hPos\(1));

-- Location: LCCOMB_X34_Y14_N10
\info1|hPos[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|hPos[2]~15_combout\ = (\info1|hPos\(2) & (\info1|hPos[1]~14\ $ (GND))) # (!\info1|hPos\(2) & (!\info1|hPos[1]~14\ & VCC))
-- \info1|hPos[2]~16\ = CARRY((\info1|hPos\(2) & !\info1|hPos[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info1|hPos\(2),
	datad => VCC,
	cin => \info1|hPos[1]~14\,
	combout => \info1|hPos[2]~15_combout\,
	cout => \info1|hPos[2]~16\);

-- Location: FF_X34_Y14_N11
\info1|hPos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|hPos[2]~15_combout\,
	sclr => \info1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|hPos\(2));

-- Location: LCCOMB_X34_Y14_N12
\info1|hPos[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|hPos[3]~17_combout\ = (\info1|hPos\(3) & (!\info1|hPos[2]~16\)) # (!\info1|hPos\(3) & ((\info1|hPos[2]~16\) # (GND)))
-- \info1|hPos[3]~18\ = CARRY((!\info1|hPos[2]~16\) # (!\info1|hPos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info1|hPos\(3),
	datad => VCC,
	cin => \info1|hPos[2]~16\,
	combout => \info1|hPos[3]~17_combout\,
	cout => \info1|hPos[3]~18\);

-- Location: FF_X34_Y14_N13
\info1|hPos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|hPos[3]~17_combout\,
	sclr => \info1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|hPos\(3));

-- Location: LCCOMB_X34_Y14_N14
\info1|hPos[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|hPos[4]~19_combout\ = (\info1|hPos\(4) & (\info1|hPos[3]~18\ $ (GND))) # (!\info1|hPos\(4) & (!\info1|hPos[3]~18\ & VCC))
-- \info1|hPos[4]~20\ = CARRY((\info1|hPos\(4) & !\info1|hPos[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \info1|hPos\(4),
	datad => VCC,
	cin => \info1|hPos[3]~18\,
	combout => \info1|hPos[4]~19_combout\,
	cout => \info1|hPos[4]~20\);

-- Location: FF_X34_Y14_N15
\info1|hPos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|hPos[4]~19_combout\,
	sclr => \info1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|hPos\(4));

-- Location: LCCOMB_X34_Y14_N16
\info1|hPos[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|hPos[5]~21_combout\ = (\info1|hPos\(5) & (!\info1|hPos[4]~20\)) # (!\info1|hPos\(5) & ((\info1|hPos[4]~20\) # (GND)))
-- \info1|hPos[5]~22\ = CARRY((!\info1|hPos[4]~20\) # (!\info1|hPos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \info1|hPos\(5),
	datad => VCC,
	cin => \info1|hPos[4]~20\,
	combout => \info1|hPos[5]~21_combout\,
	cout => \info1|hPos[5]~22\);

-- Location: FF_X34_Y14_N17
\info1|hPos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|hPos[5]~21_combout\,
	sclr => \info1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|hPos\(5));

-- Location: LCCOMB_X34_Y14_N18
\info1|hPos[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|hPos[6]~23_combout\ = (\info1|hPos\(6) & (\info1|hPos[5]~22\ $ (GND))) # (!\info1|hPos\(6) & (!\info1|hPos[5]~22\ & VCC))
-- \info1|hPos[6]~24\ = CARRY((\info1|hPos\(6) & !\info1|hPos[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \info1|hPos\(6),
	datad => VCC,
	cin => \info1|hPos[5]~22\,
	combout => \info1|hPos[6]~23_combout\,
	cout => \info1|hPos[6]~24\);

-- Location: FF_X34_Y14_N19
\info1|hPos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|hPos[6]~23_combout\,
	sclr => \info1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|hPos\(6));

-- Location: LCCOMB_X34_Y14_N20
\info1|hPos[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|hPos[7]~25_combout\ = (\info1|hPos\(7) & (!\info1|hPos[6]~24\)) # (!\info1|hPos\(7) & ((\info1|hPos[6]~24\) # (GND)))
-- \info1|hPos[7]~26\ = CARRY((!\info1|hPos[6]~24\) # (!\info1|hPos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \info1|hPos\(7),
	datad => VCC,
	cin => \info1|hPos[6]~24\,
	combout => \info1|hPos[7]~25_combout\,
	cout => \info1|hPos[7]~26\);

-- Location: FF_X34_Y14_N21
\info1|hPos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|hPos[7]~25_combout\,
	sclr => \info1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|hPos\(7));

-- Location: LCCOMB_X34_Y14_N2
\info1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Equal0~1_combout\ = (!\info1|hPos\(7) & (!\info1|hPos\(5) & (!\info1|hPos\(4) & \info1|hPos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|hPos\(7),
	datab => \info1|hPos\(5),
	datac => \info1|hPos\(4),
	datad => \info1|hPos\(6),
	combout => \info1|Equal0~1_combout\);

-- Location: LCCOMB_X34_Y14_N22
\info1|hPos[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|hPos[8]~27_combout\ = (\info1|hPos\(8) & (\info1|hPos[7]~26\ $ (GND))) # (!\info1|hPos\(8) & (!\info1|hPos[7]~26\ & VCC))
-- \info1|hPos[8]~28\ = CARRY((\info1|hPos\(8) & !\info1|hPos[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info1|hPos\(8),
	datad => VCC,
	cin => \info1|hPos[7]~26\,
	combout => \info1|hPos[8]~27_combout\,
	cout => \info1|hPos[8]~28\);

-- Location: FF_X34_Y14_N23
\info1|hPos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|hPos[8]~27_combout\,
	sclr => \info1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|hPos\(8));

-- Location: LCCOMB_X34_Y14_N24
\info1|hPos[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|hPos[9]~29_combout\ = (\info1|hPos\(9) & (!\info1|hPos[8]~28\)) # (!\info1|hPos\(9) & ((\info1|hPos[8]~28\) # (GND)))
-- \info1|hPos[9]~30\ = CARRY((!\info1|hPos[8]~28\) # (!\info1|hPos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \info1|hPos\(9),
	datad => VCC,
	cin => \info1|hPos[8]~28\,
	combout => \info1|hPos[9]~29_combout\,
	cout => \info1|hPos[9]~30\);

-- Location: FF_X34_Y14_N25
\info1|hPos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|hPos[9]~29_combout\,
	sclr => \info1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|hPos\(9));

-- Location: LCCOMB_X34_Y14_N26
\info1|hPos[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|hPos[10]~31_combout\ = \info1|hPos\(10) $ (!\info1|hPos[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info1|hPos\(10),
	cin => \info1|hPos[9]~30\,
	combout => \info1|hPos[10]~31_combout\);

-- Location: FF_X34_Y14_N27
\info1|hPos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|hPos[10]~31_combout\,
	sclr => \info1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|hPos\(10));

-- Location: LCCOMB_X34_Y14_N4
\info1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Equal0~2_combout\ = (!\info1|hPos\(10) & (\info1|hPos\(8) & !\info1|hPos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|hPos\(10),
	datac => \info1|hPos\(8),
	datad => \info1|hPos\(9),
	combout => \info1|Equal0~2_combout\);

-- Location: LCCOMB_X34_Y14_N0
\info1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Equal0~0_combout\ = (\info1|hPos\(2) & (!\info1|hPos\(3) & (!\info1|hPos\(1) & \info1|hPos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|hPos\(2),
	datab => \info1|hPos\(3),
	datac => \info1|hPos\(1),
	datad => \info1|hPos\(0),
	combout => \info1|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y14_N28
\info1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Equal0~3_combout\ = (\info1|Equal0~1_combout\ & (\info1|Equal0~2_combout\ & \info1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \info1|Equal0~1_combout\,
	datac => \info1|Equal0~2_combout\,
	datad => \info1|Equal0~0_combout\,
	combout => \info1|Equal0~3_combout\);

-- Location: LCCOMB_X34_Y14_N30
\info1|localX[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|localX[1]~29_combout\ = ((\info1|Equal0~1_combout\ & (\info1|Equal0~2_combout\ & \info1|Equal0~0_combout\))) # (!\info1|process_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|process_1~2_combout\,
	datab => \info1|Equal0~1_combout\,
	datac => \info1|Equal0~2_combout\,
	datad => \info1|Equal0~0_combout\,
	combout => \info1|localX[1]~29_combout\);

-- Location: FF_X34_Y12_N7
\info1|localX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|localX[0]~11_combout\,
	sclr => \info1|Equal0~3_combout\,
	ena => \info1|localX[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|localX\(0));

-- Location: LCCOMB_X34_Y12_N8
\info1|localX[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|localX[1]~13_combout\ = (\info1|localX\(1) & (!\info1|localX[0]~12\)) # (!\info1|localX\(1) & ((\info1|localX[0]~12\) # (GND)))
-- \info1|localX[1]~14\ = CARRY((!\info1|localX[0]~12\) # (!\info1|localX\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \info1|localX\(1),
	datad => VCC,
	cin => \info1|localX[0]~12\,
	combout => \info1|localX[1]~13_combout\,
	cout => \info1|localX[1]~14\);

-- Location: FF_X34_Y12_N9
\info1|localX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|localX[1]~13_combout\,
	sclr => \info1|Equal0~3_combout\,
	ena => \info1|localX[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|localX\(1));

-- Location: LCCOMB_X34_Y12_N10
\info1|localX[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|localX[2]~15_combout\ = (\info1|localX\(2) & (\info1|localX[1]~14\ $ (GND))) # (!\info1|localX\(2) & (!\info1|localX[1]~14\ & VCC))
-- \info1|localX[2]~16\ = CARRY((\info1|localX\(2) & !\info1|localX[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(2),
	datad => VCC,
	cin => \info1|localX[1]~14\,
	combout => \info1|localX[2]~15_combout\,
	cout => \info1|localX[2]~16\);

-- Location: FF_X34_Y12_N11
\info1|localX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|localX[2]~15_combout\,
	sclr => \info1|Equal0~3_combout\,
	ena => \info1|localX[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|localX\(2));

-- Location: LCCOMB_X34_Y12_N12
\info1|localX[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|localX[3]~17_combout\ = (\info1|localX\(3) & (!\info1|localX[2]~16\)) # (!\info1|localX\(3) & ((\info1|localX[2]~16\) # (GND)))
-- \info1|localX[3]~18\ = CARRY((!\info1|localX[2]~16\) # (!\info1|localX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(3),
	datad => VCC,
	cin => \info1|localX[2]~16\,
	combout => \info1|localX[3]~17_combout\,
	cout => \info1|localX[3]~18\);

-- Location: FF_X34_Y12_N13
\info1|localX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|localX[3]~17_combout\,
	sclr => \info1|Equal0~3_combout\,
	ena => \info1|localX[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|localX\(3));

-- Location: LCCOMB_X34_Y12_N14
\info1|localX[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|localX[4]~19_combout\ = (\info1|localX\(4) & (\info1|localX[3]~18\ $ (GND))) # (!\info1|localX\(4) & (!\info1|localX[3]~18\ & VCC))
-- \info1|localX[4]~20\ = CARRY((\info1|localX\(4) & !\info1|localX[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \info1|localX\(4),
	datad => VCC,
	cin => \info1|localX[3]~18\,
	combout => \info1|localX[4]~19_combout\,
	cout => \info1|localX[4]~20\);

-- Location: FF_X34_Y12_N15
\info1|localX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|localX[4]~19_combout\,
	sclr => \info1|Equal0~3_combout\,
	ena => \info1|localX[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|localX\(4));

-- Location: LCCOMB_X34_Y12_N16
\info1|localX[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|localX[5]~21_combout\ = (\info1|localX\(5) & (!\info1|localX[4]~20\)) # (!\info1|localX\(5) & ((\info1|localX[4]~20\) # (GND)))
-- \info1|localX[5]~22\ = CARRY((!\info1|localX[4]~20\) # (!\info1|localX\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(5),
	datad => VCC,
	cin => \info1|localX[4]~20\,
	combout => \info1|localX[5]~21_combout\,
	cout => \info1|localX[5]~22\);

-- Location: FF_X34_Y12_N17
\info1|localX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|localX[5]~21_combout\,
	sclr => \info1|Equal0~3_combout\,
	ena => \info1|localX[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|localX\(5));

-- Location: LCCOMB_X34_Y12_N18
\info1|localX[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|localX[6]~23_combout\ = (\info1|localX\(6) & (\info1|localX[5]~22\ $ (GND))) # (!\info1|localX\(6) & (!\info1|localX[5]~22\ & VCC))
-- \info1|localX[6]~24\ = CARRY((\info1|localX\(6) & !\info1|localX[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \info1|localX\(6),
	datad => VCC,
	cin => \info1|localX[5]~22\,
	combout => \info1|localX[6]~23_combout\,
	cout => \info1|localX[6]~24\);

-- Location: FF_X34_Y12_N19
\info1|localX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|localX[6]~23_combout\,
	sclr => \info1|Equal0~3_combout\,
	ena => \info1|localX[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|localX\(6));

-- Location: LCCOMB_X34_Y12_N26
\info1|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|process_1~0_combout\ = (\info1|localX\(5) & (\info1|localX\(6) & (\info1|localX\(4) & \info1|localX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(5),
	datab => \info1|localX\(6),
	datac => \info1|localX\(4),
	datad => \info1|localX\(3),
	combout => \info1|process_1~0_combout\);

-- Location: LCCOMB_X34_Y12_N24
\info1|runX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|runX~0_combout\ = (\info1|Equal0~3_combout\) # ((\info1|runX~q\ & !\info1|process_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Equal0~3_combout\,
	datac => \info1|runX~q\,
	datad => \info1|process_1~2_combout\,
	combout => \info1|runX~0_combout\);

-- Location: FF_X34_Y12_N25
\info1|runX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|runX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|runX~q\);

-- Location: LCCOMB_X34_Y12_N28
\info1|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|process_1~1_combout\ = (\info1|localX\(2) & (\info1|runX~q\ & (\info1|localX\(1) & \info1|localX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(2),
	datab => \info1|runX~q\,
	datac => \info1|localX\(1),
	datad => \info1|localX\(0),
	combout => \info1|process_1~1_combout\);

-- Location: LCCOMB_X34_Y12_N20
\info1|localX[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|localX[7]~25_combout\ = (\info1|localX\(7) & (!\info1|localX[6]~24\)) # (!\info1|localX\(7) & ((\info1|localX[6]~24\) # (GND)))
-- \info1|localX[7]~26\ = CARRY((!\info1|localX[6]~24\) # (!\info1|localX\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \info1|localX\(7),
	datad => VCC,
	cin => \info1|localX[6]~24\,
	combout => \info1|localX[7]~25_combout\,
	cout => \info1|localX[7]~26\);

-- Location: FF_X34_Y12_N21
\info1|localX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|localX[7]~25_combout\,
	sclr => \info1|Equal0~3_combout\,
	ena => \info1|localX[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|localX\(7));

-- Location: LCCOMB_X34_Y12_N22
\info1|localX[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|localX[8]~27_combout\ = \info1|localX\(8) $ (!\info1|localX[7]~26\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(8),
	cin => \info1|localX[7]~26\,
	combout => \info1|localX[8]~27_combout\);

-- Location: FF_X34_Y12_N23
\info1|localX[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|localX[8]~27_combout\,
	sclr => \info1|Equal0~3_combout\,
	ena => \info1|localX[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|localX\(8));

-- Location: LCCOMB_X34_Y12_N0
\info1|process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|process_1~2_combout\ = (\info1|process_1~0_combout\ & (\info1|process_1~1_combout\ & (\info1|localX\(8) & \info1|localX\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|process_1~0_combout\,
	datab => \info1|process_1~1_combout\,
	datac => \info1|localX\(8),
	datad => \info1|localX\(7),
	combout => \info1|process_1~2_combout\);

-- Location: LCCOMB_X28_Y13_N0
\info1|vPos[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|vPos[0]~10_combout\ = \info1|vPos\(0) $ (VCC)
-- \info1|vPos[0]~11\ = CARRY(\info1|vPos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \info1|vPos\(0),
	datad => VCC,
	combout => \info1|vPos[0]~10_combout\,
	cout => \info1|vPos[0]~11\);

-- Location: LCCOMB_X27_Y3_N12
\vga1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~2_combout\ = (\vga1|v_cnt\(1) & (!\vga1|Add1~1\)) # (!\vga1|v_cnt\(1) & ((\vga1|Add1~1\) # (GND)))
-- \vga1|Add1~3\ = CARRY((!\vga1|Add1~1\) # (!\vga1|v_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|v_cnt\(1),
	datad => VCC,
	cin => \vga1|Add1~1\,
	combout => \vga1|Add1~2_combout\,
	cout => \vga1|Add1~3\);

-- Location: LCCOMB_X27_Y3_N14
\vga1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~4_combout\ = (\vga1|v_cnt\(2) & (\vga1|Add1~3\ $ (GND))) # (!\vga1|v_cnt\(2) & (!\vga1|Add1~3\ & VCC))
-- \vga1|Add1~5\ = CARRY((\vga1|v_cnt\(2) & !\vga1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|v_cnt\(2),
	datad => VCC,
	cin => \vga1|Add1~3\,
	combout => \vga1|Add1~4_combout\,
	cout => \vga1|Add1~5\);

-- Location: LCCOMB_X27_Y3_N8
\vga1|v_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|v_cnt~3_combout\ = (\vga1|Add1~4_combout\ & !\vga1|Equal3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|Add1~4_combout\,
	datad => \vga1|Equal3~2_combout\,
	combout => \vga1|v_cnt~3_combout\);

-- Location: LCCOMB_X28_Y3_N8
\vga1|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal1~3_combout\ = (\vga1|Equal1~1_combout\ & (!\vga1|h_cnt\(5) & (\vga1|Equal1~0_combout\ & !\vga1|h_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Equal1~1_combout\,
	datab => \vga1|h_cnt\(5),
	datac => \vga1|Equal1~0_combout\,
	datad => \vga1|h_cnt\(6),
	combout => \vga1|Equal1~3_combout\);

-- Location: FF_X27_Y3_N9
\vga1|v_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|v_cnt~3_combout\,
	ena => \vga1|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|v_cnt\(2));

-- Location: LCCOMB_X27_Y3_N16
\vga1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~6_combout\ = (\vga1|v_cnt\(3) & (!\vga1|Add1~5\)) # (!\vga1|v_cnt\(3) & ((\vga1|Add1~5\) # (GND)))
-- \vga1|Add1~7\ = CARRY((!\vga1|Add1~5\) # (!\vga1|v_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|v_cnt\(3),
	datad => VCC,
	cin => \vga1|Add1~5\,
	combout => \vga1|Add1~6_combout\,
	cout => \vga1|Add1~7\);

-- Location: LCCOMB_X27_Y3_N0
\vga1|v_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|v_cnt~0_combout\ = (!\vga1|Equal3~2_combout\ & \vga1|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Equal3~2_combout\,
	datad => \vga1|Add1~6_combout\,
	combout => \vga1|v_cnt~0_combout\);

-- Location: FF_X27_Y3_N1
\vga1|v_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|v_cnt~0_combout\,
	ena => \vga1|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|v_cnt\(3));

-- Location: LCCOMB_X27_Y3_N18
\vga1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~8_combout\ = (\vga1|v_cnt\(4) & (\vga1|Add1~7\ $ (GND))) # (!\vga1|v_cnt\(4) & (!\vga1|Add1~7\ & VCC))
-- \vga1|Add1~9\ = CARRY((\vga1|v_cnt\(4) & !\vga1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|v_cnt\(4),
	datad => VCC,
	cin => \vga1|Add1~7\,
	combout => \vga1|Add1~8_combout\,
	cout => \vga1|Add1~9\);

-- Location: FF_X27_Y3_N19
\vga1|v_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|Add1~8_combout\,
	ena => \vga1|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|v_cnt\(4));

-- Location: LCCOMB_X27_Y3_N20
\vga1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~10_combout\ = (\vga1|v_cnt\(5) & (!\vga1|Add1~9\)) # (!\vga1|v_cnt\(5) & ((\vga1|Add1~9\) # (GND)))
-- \vga1|Add1~11\ = CARRY((!\vga1|Add1~9\) # (!\vga1|v_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|v_cnt\(5),
	datad => VCC,
	cin => \vga1|Add1~9\,
	combout => \vga1|Add1~10_combout\,
	cout => \vga1|Add1~11\);

-- Location: FF_X27_Y3_N21
\vga1|v_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|Add1~10_combout\,
	ena => \vga1|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|v_cnt\(5));

-- Location: LCCOMB_X27_Y3_N22
\vga1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~12_combout\ = (\vga1|v_cnt\(6) & (\vga1|Add1~11\ $ (GND))) # (!\vga1|v_cnt\(6) & (!\vga1|Add1~11\ & VCC))
-- \vga1|Add1~13\ = CARRY((\vga1|v_cnt\(6) & !\vga1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|v_cnt\(6),
	datad => VCC,
	cin => \vga1|Add1~11\,
	combout => \vga1|Add1~12_combout\,
	cout => \vga1|Add1~13\);

-- Location: FF_X27_Y3_N23
\vga1|v_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|Add1~12_combout\,
	ena => \vga1|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|v_cnt\(6));

-- Location: LCCOMB_X27_Y3_N24
\vga1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~14_combout\ = (\vga1|v_cnt\(7) & (!\vga1|Add1~13\)) # (!\vga1|v_cnt\(7) & ((\vga1|Add1~13\) # (GND)))
-- \vga1|Add1~15\ = CARRY((!\vga1|Add1~13\) # (!\vga1|v_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|v_cnt\(7),
	datad => VCC,
	cin => \vga1|Add1~13\,
	combout => \vga1|Add1~14_combout\,
	cout => \vga1|Add1~15\);

-- Location: FF_X27_Y3_N25
\vga1|v_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|Add1~14_combout\,
	ena => \vga1|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|v_cnt\(7));

-- Location: LCCOMB_X27_Y3_N26
\vga1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~16_combout\ = (\vga1|v_cnt\(8) & (\vga1|Add1~15\ $ (GND))) # (!\vga1|v_cnt\(8) & (!\vga1|Add1~15\ & VCC))
-- \vga1|Add1~17\ = CARRY((\vga1|v_cnt\(8) & !\vga1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|v_cnt\(8),
	datad => VCC,
	cin => \vga1|Add1~15\,
	combout => \vga1|Add1~16_combout\,
	cout => \vga1|Add1~17\);

-- Location: FF_X27_Y3_N27
\vga1|v_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|Add1~16_combout\,
	ena => \vga1|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|v_cnt\(8));

-- Location: LCCOMB_X28_Y3_N10
\vga1|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal3~1_combout\ = (!\vga1|v_cnt\(1) & (!\vga1|v_cnt\(7) & (!\vga1|v_cnt\(8) & \vga1|v_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|v_cnt\(1),
	datab => \vga1|v_cnt\(7),
	datac => \vga1|v_cnt\(8),
	datad => \vga1|v_cnt\(2),
	combout => \vga1|Equal3~1_combout\);

-- Location: LCCOMB_X27_Y3_N28
\vga1|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~18_combout\ = \vga1|Add1~17\ $ (\vga1|v_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga1|v_cnt\(9),
	cin => \vga1|Add1~17\,
	combout => \vga1|Add1~18_combout\);

-- Location: LCCOMB_X27_Y3_N2
\vga1|v_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|v_cnt~1_combout\ = (!\vga1|Equal3~2_combout\ & \vga1|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Equal3~2_combout\,
	datad => \vga1|Add1~18_combout\,
	combout => \vga1|v_cnt~1_combout\);

-- Location: FF_X27_Y3_N3
\vga1|v_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|v_cnt~1_combout\,
	ena => \vga1|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|v_cnt\(9));

-- Location: LCCOMB_X27_Y3_N30
\vga1|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal3~0_combout\ = (\vga1|v_cnt\(9) & (\vga1|v_cnt\(3) & (!\vga1|v_cnt\(0) & !\vga1|v_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|v_cnt\(9),
	datab => \vga1|v_cnt\(3),
	datac => \vga1|v_cnt\(0),
	datad => \vga1|v_cnt\(4),
	combout => \vga1|Equal3~0_combout\);

-- Location: LCCOMB_X28_Y3_N2
\vga1|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal3~2_combout\ = (\vga1|Equal3~1_combout\ & (!\vga1|v_cnt\(6) & (\vga1|Equal3~0_combout\ & !\vga1|v_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Equal3~1_combout\,
	datab => \vga1|v_cnt\(6),
	datac => \vga1|Equal3~0_combout\,
	datad => \vga1|v_cnt\(5),
	combout => \vga1|Equal3~2_combout\);

-- Location: LCCOMB_X27_Y3_N10
\vga1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~0_combout\ = \vga1|v_cnt\(0) $ (VCC)
-- \vga1|Add1~1\ = CARRY(\vga1|v_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|v_cnt\(0),
	datad => VCC,
	combout => \vga1|Add1~0_combout\,
	cout => \vga1|Add1~1\);

-- Location: LCCOMB_X27_Y3_N4
\vga1|v_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|v_cnt~2_combout\ = (!\vga1|Equal3~2_combout\ & \vga1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Equal3~2_combout\,
	datad => \vga1|Add1~0_combout\,
	combout => \vga1|v_cnt~2_combout\);

-- Location: FF_X27_Y3_N5
\vga1|v_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|v_cnt~2_combout\,
	ena => \vga1|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|v_cnt\(0));

-- Location: FF_X27_Y3_N13
\vga1|v_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|Add1~2_combout\,
	ena => \vga1|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|v_cnt\(1));

-- Location: LCCOMB_X27_Y3_N6
\vga1|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal5~0_combout\ = (!\vga1|v_cnt\(9) & (\vga1|v_cnt\(3) & (!\vga1|v_cnt\(0) & !\vga1|v_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|v_cnt\(9),
	datab => \vga1|v_cnt\(3),
	datac => \vga1|v_cnt\(0),
	datad => \vga1|v_cnt\(4),
	combout => \vga1|Equal5~0_combout\);

-- Location: LCCOMB_X28_Y3_N12
\vga1|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal5~1_combout\ = (\vga1|v_cnt\(7) & (\vga1|v_cnt\(5) & (\vga1|v_cnt\(8) & \vga1|v_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|v_cnt\(7),
	datab => \vga1|v_cnt\(5),
	datac => \vga1|v_cnt\(8),
	datad => \vga1|v_cnt\(6),
	combout => \vga1|Equal5~1_combout\);

-- Location: LCCOMB_X28_Y3_N4
\vga1|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal5~2_combout\ = (\vga1|Equal5~0_combout\ & \vga1|Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|Equal5~0_combout\,
	datad => \vga1|Equal5~1_combout\,
	combout => \vga1|Equal5~2_combout\);

-- Location: LCCOMB_X28_Y3_N0
\vga1|vs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|vs~0_combout\ = (\vga1|v_cnt\(1) & ((\vga1|vs~q\) # ((\vga1|Equal5~2_combout\ & !\vga1|v_cnt\(2))))) # (!\vga1|v_cnt\(1) & (\vga1|vs~q\ & ((!\vga1|v_cnt\(2)) # (!\vga1|Equal5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|v_cnt\(1),
	datab => \vga1|Equal5~2_combout\,
	datac => \vga1|vs~q\,
	datad => \vga1|v_cnt\(2),
	combout => \vga1|vs~0_combout\);

-- Location: FF_X28_Y3_N1
\vga1|vs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vga1|vs~0_combout\,
	ena => \vga1|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|vs~q\);

-- Location: FF_X29_Y14_N25
\info1|oldV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \vga1|vs~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|oldV~q\);

-- Location: LCCOMB_X29_Y14_N26
\info1|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|process_0~1_combout\ = (!\vga1|vs~q\ & \info1|oldV~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|vs~q\,
	datad => \info1|oldV~q\,
	combout => \info1|process_0~1_combout\);

-- Location: LCCOMB_X29_Y14_N24
\info1|vPos[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|vPos[7]~18_combout\ = (\vga1|vs~q\ & (!\vga1|hs~q\ & ((\info1|oldH~q\)))) # (!\vga1|vs~q\ & ((\info1|oldV~q\) # ((!\vga1|hs~q\ & \info1|oldH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|vs~q\,
	datab => \vga1|hs~q\,
	datac => \info1|oldV~q\,
	datad => \info1|oldH~q\,
	combout => \info1|vPos[7]~18_combout\);

-- Location: FF_X28_Y13_N1
\info1|vPos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|vPos[0]~10_combout\,
	sclr => \info1|process_0~1_combout\,
	ena => \info1|vPos[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|vPos\(0));

-- Location: LCCOMB_X28_Y13_N2
\info1|vPos[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|vPos[1]~12_combout\ = (\info1|vPos\(1) & (!\info1|vPos[0]~11\)) # (!\info1|vPos\(1) & ((\info1|vPos[0]~11\) # (GND)))
-- \info1|vPos[1]~13\ = CARRY((!\info1|vPos[0]~11\) # (!\info1|vPos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \info1|vPos\(1),
	datad => VCC,
	cin => \info1|vPos[0]~11\,
	combout => \info1|vPos[1]~12_combout\,
	cout => \info1|vPos[1]~13\);

-- Location: FF_X28_Y13_N3
\info1|vPos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|vPos[1]~12_combout\,
	sclr => \info1|process_0~1_combout\,
	ena => \info1|vPos[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|vPos\(1));

-- Location: LCCOMB_X28_Y13_N4
\info1|vPos[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|vPos[2]~14_combout\ = (\info1|vPos\(2) & (\info1|vPos[1]~13\ $ (GND))) # (!\info1|vPos\(2) & (!\info1|vPos[1]~13\ & VCC))
-- \info1|vPos[2]~15\ = CARRY((\info1|vPos\(2) & !\info1|vPos[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \info1|vPos\(2),
	datad => VCC,
	cin => \info1|vPos[1]~13\,
	combout => \info1|vPos[2]~14_combout\,
	cout => \info1|vPos[2]~15\);

-- Location: FF_X28_Y13_N5
\info1|vPos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|vPos[2]~14_combout\,
	sclr => \info1|process_0~1_combout\,
	ena => \info1|vPos[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|vPos\(2));

-- Location: LCCOMB_X28_Y13_N6
\info1|vPos[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|vPos[3]~16_combout\ = (\info1|vPos\(3) & (!\info1|vPos[2]~15\)) # (!\info1|vPos\(3) & ((\info1|vPos[2]~15\) # (GND)))
-- \info1|vPos[3]~17\ = CARRY((!\info1|vPos[2]~15\) # (!\info1|vPos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info1|vPos\(3),
	datad => VCC,
	cin => \info1|vPos[2]~15\,
	combout => \info1|vPos[3]~16_combout\,
	cout => \info1|vPos[3]~17\);

-- Location: FF_X28_Y13_N7
\info1|vPos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|vPos[3]~16_combout\,
	sclr => \info1|process_0~1_combout\,
	ena => \info1|vPos[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|vPos\(3));

-- Location: LCCOMB_X28_Y13_N8
\info1|vPos[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|vPos[4]~19_combout\ = (\info1|vPos\(4) & (\info1|vPos[3]~17\ $ (GND))) # (!\info1|vPos\(4) & (!\info1|vPos[3]~17\ & VCC))
-- \info1|vPos[4]~20\ = CARRY((\info1|vPos\(4) & !\info1|vPos[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \info1|vPos\(4),
	datad => VCC,
	cin => \info1|vPos[3]~17\,
	combout => \info1|vPos[4]~19_combout\,
	cout => \info1|vPos[4]~20\);

-- Location: FF_X28_Y13_N9
\info1|vPos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|vPos[4]~19_combout\,
	sclr => \info1|process_0~1_combout\,
	ena => \info1|vPos[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|vPos\(4));

-- Location: LCCOMB_X28_Y13_N10
\info1|vPos[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|vPos[5]~21_combout\ = (\info1|vPos\(5) & (!\info1|vPos[4]~20\)) # (!\info1|vPos\(5) & ((\info1|vPos[4]~20\) # (GND)))
-- \info1|vPos[5]~22\ = CARRY((!\info1|vPos[4]~20\) # (!\info1|vPos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info1|vPos\(5),
	datad => VCC,
	cin => \info1|vPos[4]~20\,
	combout => \info1|vPos[5]~21_combout\,
	cout => \info1|vPos[5]~22\);

-- Location: FF_X28_Y13_N11
\info1|vPos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|vPos[5]~21_combout\,
	sclr => \info1|process_0~1_combout\,
	ena => \info1|vPos[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|vPos\(5));

-- Location: LCCOMB_X28_Y13_N12
\info1|vPos[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|vPos[6]~23_combout\ = (\info1|vPos\(6) & (\info1|vPos[5]~22\ $ (GND))) # (!\info1|vPos\(6) & (!\info1|vPos[5]~22\ & VCC))
-- \info1|vPos[6]~24\ = CARRY((\info1|vPos\(6) & !\info1|vPos[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info1|vPos\(6),
	datad => VCC,
	cin => \info1|vPos[5]~22\,
	combout => \info1|vPos[6]~23_combout\,
	cout => \info1|vPos[6]~24\);

-- Location: FF_X28_Y13_N13
\info1|vPos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|vPos[6]~23_combout\,
	sclr => \info1|process_0~1_combout\,
	ena => \info1|vPos[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|vPos\(6));

-- Location: LCCOMB_X28_Y13_N14
\info1|vPos[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|vPos[7]~25_combout\ = (\info1|vPos\(7) & (!\info1|vPos[6]~24\)) # (!\info1|vPos\(7) & ((\info1|vPos[6]~24\) # (GND)))
-- \info1|vPos[7]~26\ = CARRY((!\info1|vPos[6]~24\) # (!\info1|vPos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \info1|vPos\(7),
	datad => VCC,
	cin => \info1|vPos[6]~24\,
	combout => \info1|vPos[7]~25_combout\,
	cout => \info1|vPos[7]~26\);

-- Location: FF_X28_Y13_N15
\info1|vPos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|vPos[7]~25_combout\,
	sclr => \info1|process_0~1_combout\,
	ena => \info1|vPos[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|vPos\(7));

-- Location: LCCOMB_X28_Y13_N24
\info1|runY~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|runY~3_combout\ = (!\info1|vPos\(6) & (\info1|vPos\(7) & (\info1|vPos\(4) & \info1|vPos\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|vPos\(6),
	datab => \info1|vPos\(7),
	datac => \info1|vPos\(4),
	datad => \info1|vPos\(5),
	combout => \info1|runY~3_combout\);

-- Location: LCCOMB_X28_Y13_N16
\info1|vPos[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|vPos[8]~27_combout\ = (\info1|vPos\(8) & (\info1|vPos[7]~26\ $ (GND))) # (!\info1|vPos\(8) & (!\info1|vPos[7]~26\ & VCC))
-- \info1|vPos[8]~28\ = CARRY((\info1|vPos\(8) & !\info1|vPos[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \info1|vPos\(8),
	datad => VCC,
	cin => \info1|vPos[7]~26\,
	combout => \info1|vPos[8]~27_combout\,
	cout => \info1|vPos[8]~28\);

-- Location: FF_X28_Y13_N17
\info1|vPos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|vPos[8]~27_combout\,
	sclr => \info1|process_0~1_combout\,
	ena => \info1|vPos[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|vPos\(8));

-- Location: LCCOMB_X28_Y13_N18
\info1|vPos[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|vPos[9]~29_combout\ = \info1|vPos\(9) $ (\info1|vPos[8]~28\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \info1|vPos\(9),
	cin => \info1|vPos[8]~28\,
	combout => \info1|vPos[9]~29_combout\);

-- Location: FF_X28_Y13_N19
\info1|vPos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|vPos[9]~29_combout\,
	sclr => \info1|process_0~1_combout\,
	ena => \info1|vPos[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|vPos\(9));

-- Location: LCCOMB_X28_Y13_N22
\info1|runY~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|runY~2_combout\ = (\info1|vPos\(3) & (!\info1|vPos\(1) & (!\info1|vPos\(2) & !\info1|vPos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|vPos\(3),
	datab => \info1|vPos\(1),
	datac => \info1|vPos\(2),
	datad => \info1|vPos\(0),
	combout => \info1|runY~2_combout\);

-- Location: LCCOMB_X28_Y13_N30
\info1|runY~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|runY~6_combout\ = (\info1|runY~3_combout\ & (!\info1|vPos\(9) & (\info1|runY~2_combout\ & \info1|vPos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|runY~3_combout\,
	datab => \info1|vPos\(9),
	datac => \info1|runY~2_combout\,
	datad => \info1|vPos\(8),
	combout => \info1|runY~6_combout\);

-- Location: LCCOMB_X28_Y13_N20
\info1|localY~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|localY~2_combout\ = (\info1|Equal0~3_combout\ & (((\info1|runY~6_combout\)))) # (!\info1|Equal0~3_combout\ & (\info1|process_1~2_combout\ & (!\info1|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|process_1~2_combout\,
	datab => \info1|Equal3~0_combout\,
	datac => \info1|runY~6_combout\,
	datad => \info1|Equal0~3_combout\,
	combout => \info1|localY~2_combout\);

-- Location: LCCOMB_X32_Y13_N2
\info1|localY[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|localY[0]~4_combout\ = (\info1|localY\(0) & ((!\info1|localY~2_combout\))) # (!\info1|localY\(0) & (!\info1|Equal0~3_combout\ & \info1|localY~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Equal0~3_combout\,
	datac => \info1|localY\(0),
	datad => \info1|localY~2_combout\,
	combout => \info1|localY[0]~4_combout\);

-- Location: FF_X32_Y13_N3
\info1|localY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|localY[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|localY\(0));

-- Location: LCCOMB_X31_Y13_N26
\info1|localY[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|localY[1]~5_combout\ = (\info1|localY~2_combout\ & (!\info1|Equal0~3_combout\ & (\info1|localY\(1) $ (\info1|localY\(0))))) # (!\info1|localY~2_combout\ & (((\info1|localY\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localY~2_combout\,
	datab => \info1|Equal0~3_combout\,
	datac => \info1|localY\(1),
	datad => \info1|localY\(0),
	combout => \info1|localY[1]~5_combout\);

-- Location: FF_X31_Y13_N27
\info1|localY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|localY[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|localY\(1));

-- Location: LCCOMB_X31_Y13_N20
\info1|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Add2~0_combout\ = \info1|localY\(2) $ (((\info1|localY\(1) & \info1|localY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \info1|localY\(2),
	datac => \info1|localY\(1),
	datad => \info1|localY\(0),
	combout => \info1|Add2~0_combout\);

-- Location: LCCOMB_X31_Y13_N16
\info1|localY[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|localY[2]~3_combout\ = (\info1|localY~2_combout\ & (!\info1|Equal0~3_combout\ & ((\info1|Add2~0_combout\)))) # (!\info1|localY~2_combout\ & (((\info1|localY\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localY~2_combout\,
	datab => \info1|Equal0~3_combout\,
	datac => \info1|localY\(2),
	datad => \info1|Add2~0_combout\,
	combout => \info1|localY[2]~3_combout\);

-- Location: FF_X31_Y13_N17
\info1|localY[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|localY[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|localY\(2));

-- Location: LCCOMB_X31_Y13_N6
\info1|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Add2~1_combout\ = \info1|localY\(3) $ (((\info1|localY\(2) & (\info1|localY\(1) & \info1|localY\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localY\(3),
	datab => \info1|localY\(2),
	datac => \info1|localY\(1),
	datad => \info1|localY\(0),
	combout => \info1|Add2~1_combout\);

-- Location: LCCOMB_X31_Y13_N12
\info1|localY[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|localY[3]~6_combout\ = (\info1|localY~2_combout\ & (!\info1|Equal0~3_combout\ & ((\info1|Add2~1_combout\)))) # (!\info1|localY~2_combout\ & (((\info1|localY\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localY~2_combout\,
	datab => \info1|Equal0~3_combout\,
	datac => \info1|localY\(3),
	datad => \info1|Add2~1_combout\,
	combout => \info1|localY[3]~6_combout\);

-- Location: FF_X31_Y13_N13
\info1|localY[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|localY[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|localY\(3));

-- Location: LCCOMB_X31_Y13_N22
\info1|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Equal3~0_combout\ = (!\info1|localY\(3) & (\info1|localY\(2) & (\info1|localY\(1) & \info1|localY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localY\(3),
	datab => \info1|localY\(2),
	datac => \info1|localY\(1),
	datad => \info1|localY\(0),
	combout => \info1|Equal3~0_combout\);

-- Location: LCCOMB_X28_Y13_N26
\info1|runY~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|runY~4_combout\ = (\info1|Equal0~3_combout\ & (((\info1|runY~6_combout\)))) # (!\info1|Equal0~3_combout\ & (\info1|process_1~2_combout\ & (\info1|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|process_1~2_combout\,
	datab => \info1|Equal3~0_combout\,
	datac => \info1|runY~6_combout\,
	datad => \info1|Equal0~3_combout\,
	combout => \info1|runY~4_combout\);

-- Location: LCCOMB_X28_Y13_N28
\info1|runY~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|runY~5_combout\ = (\info1|runY~4_combout\ & ((\info1|Equal0~3_combout\))) # (!\info1|runY~4_combout\ & (\info1|runY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|runY~4_combout\,
	datac => \info1|runY~q\,
	datad => \info1|Equal0~3_combout\,
	combout => \info1|runY~5_combout\);

-- Location: FF_X28_Y13_N29
\info1|runY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|runY~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|runY~q\);

-- Location: LCCOMB_X30_Y19_N2
\osd1|v_cnt[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_cnt[0]~10_combout\ = \osd1|v_cnt\(0) $ (VCC)
-- \osd1|v_cnt[0]~11\ = CARRY(\osd1|v_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|v_cnt\(0),
	datad => VCC,
	combout => \osd1|v_cnt[0]~10_combout\,
	cout => \osd1|v_cnt[0]~11\);

-- Location: LCCOMB_X30_Y19_N0
\osd1|vsD~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|vsD~feeder_combout\ = \vga1|vs~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga1|vs~q\,
	combout => \osd1|vsD~feeder_combout\);

-- Location: FF_X16_Y22_N1
\osd1|hs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \vga1|hs~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hs~q\);

-- Location: LCCOMB_X18_Y22_N0
\osd1|pixcnt[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[0]~32_combout\ = \osd1|pixcnt\(0) $ (VCC)
-- \osd1|pixcnt[0]~33\ = CARRY(\osd1|pixcnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|pixcnt\(0),
	datad => VCC,
	combout => \osd1|pixcnt[0]~32_combout\,
	cout => \osd1|pixcnt[0]~33\);

-- Location: LCCOMB_X15_Y22_N0
\osd1|cnt[0]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[0]~47_combout\ = \osd1|cnt[0]~reg1_q\ $ (VCC)
-- \osd1|cnt[0]~48\ = CARRY(\osd1|cnt[0]~reg1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt[0]~reg1_q\,
	datad => VCC,
	combout => \osd1|cnt[0]~47_combout\,
	cout => \osd1|cnt[0]~48\);

-- Location: LCCOMB_X16_Y22_N2
\osd1|always2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|always2~0_combout\ = (\osd1|hs~q\ & !\vga1|hs~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|hs~q\,
	datac => \vga1|hs~q\,
	combout => \osd1|always2~0_combout\);

-- Location: FF_X15_Y22_N1
\osd1|cnt[0]~reg1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[0]~47_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt[0]~reg1_q\);

-- Location: LCCOMB_X15_Y22_N2
\osd1|cnt[1]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[1]~49_combout\ = (\osd1|cnt[1]~reg1_q\ & (!\osd1|cnt[0]~48\)) # (!\osd1|cnt[1]~reg1_q\ & ((\osd1|cnt[0]~48\) # (GND)))
-- \osd1|cnt[1]~50\ = CARRY((!\osd1|cnt[0]~48\) # (!\osd1|cnt[1]~reg1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt[1]~reg1_q\,
	datad => VCC,
	cin => \osd1|cnt[0]~48\,
	combout => \osd1|cnt[1]~49_combout\,
	cout => \osd1|cnt[1]~50\);

-- Location: FF_X15_Y22_N3
\osd1|cnt[1]~reg1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[1]~49_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt[1]~reg1_q\);

-- Location: LCCOMB_X15_Y22_N4
\osd1|cnt[2]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[2]~51_combout\ = (\osd1|cnt[2]~reg1_q\ & (\osd1|cnt[1]~50\ $ (GND))) # (!\osd1|cnt[2]~reg1_q\ & (!\osd1|cnt[1]~50\ & VCC))
-- \osd1|cnt[2]~52\ = CARRY((\osd1|cnt[2]~reg1_q\ & !\osd1|cnt[1]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt[2]~reg1_q\,
	datad => VCC,
	cin => \osd1|cnt[1]~50\,
	combout => \osd1|cnt[2]~51_combout\,
	cout => \osd1|cnt[2]~52\);

-- Location: FF_X15_Y22_N5
\osd1|cnt[2]~reg1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[2]~51_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt[2]~reg1_q\);

-- Location: LCCOMB_X15_Y22_N6
\osd1|cnt[3]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[3]~53_combout\ = (\osd1|cnt[3]~reg1_q\ & (!\osd1|cnt[2]~52\)) # (!\osd1|cnt[3]~reg1_q\ & ((\osd1|cnt[2]~52\) # (GND)))
-- \osd1|cnt[3]~54\ = CARRY((!\osd1|cnt[2]~52\) # (!\osd1|cnt[3]~reg1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt[3]~reg1_q\,
	datad => VCC,
	cin => \osd1|cnt[2]~52\,
	combout => \osd1|cnt[3]~53_combout\,
	cout => \osd1|cnt[3]~54\);

-- Location: FF_X15_Y22_N7
\osd1|cnt[3]~reg1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[3]~53_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt[3]~reg1_q\);

-- Location: LCCOMB_X15_Y22_N8
\osd1|cnt[4]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[4]~55_combout\ = (\osd1|cnt[4]~reg1_q\ & (\osd1|cnt[3]~54\ $ (GND))) # (!\osd1|cnt[4]~reg1_q\ & (!\osd1|cnt[3]~54\ & VCC))
-- \osd1|cnt[4]~56\ = CARRY((\osd1|cnt[4]~reg1_q\ & !\osd1|cnt[3]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt[4]~reg1_q\,
	datad => VCC,
	cin => \osd1|cnt[3]~54\,
	combout => \osd1|cnt[4]~55_combout\,
	cout => \osd1|cnt[4]~56\);

-- Location: FF_X15_Y22_N9
\osd1|cnt[4]~reg1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[4]~55_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt[4]~reg1_q\);

-- Location: LCCOMB_X15_Y22_N10
\osd1|cnt[5]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[5]~57_combout\ = (\osd1|cnt\(5) & (!\osd1|cnt[4]~56\)) # (!\osd1|cnt\(5) & ((\osd1|cnt[4]~56\) # (GND)))
-- \osd1|cnt[5]~58\ = CARRY((!\osd1|cnt[4]~56\) # (!\osd1|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(5),
	datad => VCC,
	cin => \osd1|cnt[4]~56\,
	combout => \osd1|cnt[5]~57_combout\,
	cout => \osd1|cnt[5]~58\);

-- Location: FF_X15_Y22_N11
\osd1|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[5]~57_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(5));

-- Location: LCCOMB_X15_Y22_N12
\osd1|cnt[6]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[6]~59_combout\ = (\osd1|cnt\(6) & (\osd1|cnt[5]~58\ $ (GND))) # (!\osd1|cnt\(6) & (!\osd1|cnt[5]~58\ & VCC))
-- \osd1|cnt[6]~60\ = CARRY((\osd1|cnt\(6) & !\osd1|cnt[5]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(6),
	datad => VCC,
	cin => \osd1|cnt[5]~58\,
	combout => \osd1|cnt[6]~59_combout\,
	cout => \osd1|cnt[6]~60\);

-- Location: FF_X15_Y22_N13
\osd1|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[6]~59_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(6));

-- Location: LCCOMB_X15_Y22_N14
\osd1|cnt[7]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[7]~61_combout\ = (\osd1|cnt\(7) & (!\osd1|cnt[6]~60\)) # (!\osd1|cnt\(7) & ((\osd1|cnt[6]~60\) # (GND)))
-- \osd1|cnt[7]~62\ = CARRY((!\osd1|cnt[6]~60\) # (!\osd1|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(7),
	datad => VCC,
	cin => \osd1|cnt[6]~60\,
	combout => \osd1|cnt[7]~61_combout\,
	cout => \osd1|cnt[7]~62\);

-- Location: FF_X15_Y22_N15
\osd1|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[7]~61_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(7));

-- Location: LCCOMB_X15_Y22_N16
\osd1|cnt[8]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[8]~63_combout\ = (\osd1|cnt\(8) & (\osd1|cnt[7]~62\ $ (GND))) # (!\osd1|cnt\(8) & (!\osd1|cnt[7]~62\ & VCC))
-- \osd1|cnt[8]~64\ = CARRY((\osd1|cnt\(8) & !\osd1|cnt[7]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(8),
	datad => VCC,
	cin => \osd1|cnt[7]~62\,
	combout => \osd1|cnt[8]~63_combout\,
	cout => \osd1|cnt[8]~64\);

-- Location: FF_X15_Y22_N17
\osd1|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[8]~63_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(8));

-- Location: LCCOMB_X15_Y22_N18
\osd1|cnt[9]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[9]~65_combout\ = (\osd1|cnt\(9) & (!\osd1|cnt[8]~64\)) # (!\osd1|cnt\(9) & ((\osd1|cnt[8]~64\) # (GND)))
-- \osd1|cnt[9]~66\ = CARRY((!\osd1|cnt[8]~64\) # (!\osd1|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(9),
	datad => VCC,
	cin => \osd1|cnt[8]~64\,
	combout => \osd1|cnt[9]~65_combout\,
	cout => \osd1|cnt[9]~66\);

-- Location: FF_X15_Y22_N19
\osd1|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[9]~65_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(9));

-- Location: LCCOMB_X15_Y22_N20
\osd1|cnt[10]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[10]~67_combout\ = (\osd1|cnt\(10) & (\osd1|cnt[9]~66\ $ (GND))) # (!\osd1|cnt\(10) & (!\osd1|cnt[9]~66\ & VCC))
-- \osd1|cnt[10]~68\ = CARRY((\osd1|cnt\(10) & !\osd1|cnt[9]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(10),
	datad => VCC,
	cin => \osd1|cnt[9]~66\,
	combout => \osd1|cnt[10]~67_combout\,
	cout => \osd1|cnt[10]~68\);

-- Location: FF_X15_Y22_N21
\osd1|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[10]~67_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(10));

-- Location: LCCOMB_X15_Y22_N22
\osd1|cnt[11]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[11]~69_combout\ = (\osd1|cnt\(11) & (!\osd1|cnt[10]~68\)) # (!\osd1|cnt\(11) & ((\osd1|cnt[10]~68\) # (GND)))
-- \osd1|cnt[11]~70\ = CARRY((!\osd1|cnt[10]~68\) # (!\osd1|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(11),
	datad => VCC,
	cin => \osd1|cnt[10]~68\,
	combout => \osd1|cnt[11]~69_combout\,
	cout => \osd1|cnt[11]~70\);

-- Location: FF_X15_Y22_N23
\osd1|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[11]~69_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(11));

-- Location: LCCOMB_X15_Y22_N24
\osd1|cnt[12]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[12]~71_combout\ = (\osd1|cnt\(12) & (\osd1|cnt[11]~70\ $ (GND))) # (!\osd1|cnt\(12) & (!\osd1|cnt[11]~70\ & VCC))
-- \osd1|cnt[12]~72\ = CARRY((\osd1|cnt\(12) & !\osd1|cnt[11]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(12),
	datad => VCC,
	cin => \osd1|cnt[11]~70\,
	combout => \osd1|cnt[12]~71_combout\,
	cout => \osd1|cnt[12]~72\);

-- Location: FF_X15_Y22_N25
\osd1|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[12]~71_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(12));

-- Location: LCCOMB_X15_Y22_N26
\osd1|cnt[13]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[13]~73_combout\ = (\osd1|cnt\(13) & (!\osd1|cnt[12]~72\)) # (!\osd1|cnt\(13) & ((\osd1|cnt[12]~72\) # (GND)))
-- \osd1|cnt[13]~74\ = CARRY((!\osd1|cnt[12]~72\) # (!\osd1|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(13),
	datad => VCC,
	cin => \osd1|cnt[12]~72\,
	combout => \osd1|cnt[13]~73_combout\,
	cout => \osd1|cnt[13]~74\);

-- Location: FF_X15_Y22_N27
\osd1|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[13]~73_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(13));

-- Location: LCCOMB_X15_Y22_N28
\osd1|cnt[14]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[14]~75_combout\ = (\osd1|cnt\(14) & (\osd1|cnt[13]~74\ $ (GND))) # (!\osd1|cnt\(14) & (!\osd1|cnt[13]~74\ & VCC))
-- \osd1|cnt[14]~76\ = CARRY((\osd1|cnt\(14) & !\osd1|cnt[13]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(14),
	datad => VCC,
	cin => \osd1|cnt[13]~74\,
	combout => \osd1|cnt[14]~75_combout\,
	cout => \osd1|cnt[14]~76\);

-- Location: FF_X15_Y22_N29
\osd1|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[14]~75_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(14));

-- Location: LCCOMB_X15_Y22_N30
\osd1|cnt[15]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[15]~77_combout\ = (\osd1|cnt\(15) & (!\osd1|cnt[14]~76\)) # (!\osd1|cnt\(15) & ((\osd1|cnt[14]~76\) # (GND)))
-- \osd1|cnt[15]~78\ = CARRY((!\osd1|cnt[14]~76\) # (!\osd1|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(15),
	datad => VCC,
	cin => \osd1|cnt[14]~76\,
	combout => \osd1|cnt[15]~77_combout\,
	cout => \osd1|cnt[15]~78\);

-- Location: FF_X15_Y22_N31
\osd1|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[15]~77_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(15));

-- Location: LCCOMB_X15_Y21_N0
\osd1|cnt[16]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[16]~79_combout\ = (\osd1|cnt\(16) & (\osd1|cnt[15]~78\ $ (GND))) # (!\osd1|cnt\(16) & (!\osd1|cnt[15]~78\ & VCC))
-- \osd1|cnt[16]~80\ = CARRY((\osd1|cnt\(16) & !\osd1|cnt[15]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(16),
	datad => VCC,
	cin => \osd1|cnt[15]~78\,
	combout => \osd1|cnt[16]~79_combout\,
	cout => \osd1|cnt[16]~80\);

-- Location: FF_X15_Y21_N1
\osd1|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[16]~79_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(16));

-- Location: LCCOMB_X15_Y21_N2
\osd1|cnt[17]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[17]~81_combout\ = (\osd1|cnt\(17) & (!\osd1|cnt[16]~80\)) # (!\osd1|cnt\(17) & ((\osd1|cnt[16]~80\) # (GND)))
-- \osd1|cnt[17]~82\ = CARRY((!\osd1|cnt[16]~80\) # (!\osd1|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(17),
	datad => VCC,
	cin => \osd1|cnt[16]~80\,
	combout => \osd1|cnt[17]~81_combout\,
	cout => \osd1|cnt[17]~82\);

-- Location: FF_X15_Y21_N3
\osd1|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[17]~81_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(17));

-- Location: LCCOMB_X15_Y21_N4
\osd1|cnt[18]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[18]~83_combout\ = (\osd1|cnt\(18) & (\osd1|cnt[17]~82\ $ (GND))) # (!\osd1|cnt\(18) & (!\osd1|cnt[17]~82\ & VCC))
-- \osd1|cnt[18]~84\ = CARRY((\osd1|cnt\(18) & !\osd1|cnt[17]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(18),
	datad => VCC,
	cin => \osd1|cnt[17]~82\,
	combout => \osd1|cnt[18]~83_combout\,
	cout => \osd1|cnt[18]~84\);

-- Location: FF_X15_Y21_N5
\osd1|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[18]~83_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(18));

-- Location: LCCOMB_X15_Y21_N6
\osd1|cnt[19]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[19]~85_combout\ = (\osd1|cnt\(19) & (!\osd1|cnt[18]~84\)) # (!\osd1|cnt\(19) & ((\osd1|cnt[18]~84\) # (GND)))
-- \osd1|cnt[19]~86\ = CARRY((!\osd1|cnt[18]~84\) # (!\osd1|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(19),
	datad => VCC,
	cin => \osd1|cnt[18]~84\,
	combout => \osd1|cnt[19]~85_combout\,
	cout => \osd1|cnt[19]~86\);

-- Location: FF_X15_Y21_N7
\osd1|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[19]~85_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(19));

-- Location: LCCOMB_X15_Y21_N8
\osd1|cnt[20]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[20]~87_combout\ = (\osd1|cnt\(20) & (\osd1|cnt[19]~86\ $ (GND))) # (!\osd1|cnt\(20) & (!\osd1|cnt[19]~86\ & VCC))
-- \osd1|cnt[20]~88\ = CARRY((\osd1|cnt\(20) & !\osd1|cnt[19]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(20),
	datad => VCC,
	cin => \osd1|cnt[19]~86\,
	combout => \osd1|cnt[20]~87_combout\,
	cout => \osd1|cnt[20]~88\);

-- Location: FF_X15_Y21_N9
\osd1|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[20]~87_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(20));

-- Location: LCCOMB_X15_Y21_N10
\osd1|cnt[21]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[21]~89_combout\ = (\osd1|cnt\(21) & (!\osd1|cnt[20]~88\)) # (!\osd1|cnt\(21) & ((\osd1|cnt[20]~88\) # (GND)))
-- \osd1|cnt[21]~90\ = CARRY((!\osd1|cnt[20]~88\) # (!\osd1|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(21),
	datad => VCC,
	cin => \osd1|cnt[20]~88\,
	combout => \osd1|cnt[21]~89_combout\,
	cout => \osd1|cnt[21]~90\);

-- Location: FF_X15_Y21_N11
\osd1|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[21]~89_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(21));

-- Location: LCCOMB_X15_Y21_N12
\osd1|cnt[22]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[22]~91_combout\ = (\osd1|cnt\(22) & (\osd1|cnt[21]~90\ $ (GND))) # (!\osd1|cnt\(22) & (!\osd1|cnt[21]~90\ & VCC))
-- \osd1|cnt[22]~92\ = CARRY((\osd1|cnt\(22) & !\osd1|cnt[21]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(22),
	datad => VCC,
	cin => \osd1|cnt[21]~90\,
	combout => \osd1|cnt[22]~91_combout\,
	cout => \osd1|cnt[22]~92\);

-- Location: FF_X15_Y21_N13
\osd1|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[22]~91_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(22));

-- Location: LCCOMB_X15_Y21_N14
\osd1|cnt[23]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[23]~93_combout\ = (\osd1|cnt\(23) & (!\osd1|cnt[22]~92\)) # (!\osd1|cnt\(23) & ((\osd1|cnt[22]~92\) # (GND)))
-- \osd1|cnt[23]~94\ = CARRY((!\osd1|cnt[22]~92\) # (!\osd1|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(23),
	datad => VCC,
	cin => \osd1|cnt[22]~92\,
	combout => \osd1|cnt[23]~93_combout\,
	cout => \osd1|cnt[23]~94\);

-- Location: FF_X15_Y21_N15
\osd1|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[23]~93_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(23));

-- Location: LCCOMB_X15_Y21_N16
\osd1|cnt[24]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[24]~95_combout\ = (\osd1|cnt\(24) & (\osd1|cnt[23]~94\ $ (GND))) # (!\osd1|cnt\(24) & (!\osd1|cnt[23]~94\ & VCC))
-- \osd1|cnt[24]~96\ = CARRY((\osd1|cnt\(24) & !\osd1|cnt[23]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(24),
	datad => VCC,
	cin => \osd1|cnt[23]~94\,
	combout => \osd1|cnt[24]~95_combout\,
	cout => \osd1|cnt[24]~96\);

-- Location: FF_X15_Y21_N17
\osd1|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[24]~95_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(24));

-- Location: LCCOMB_X15_Y21_N18
\osd1|cnt[25]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[25]~97_combout\ = (\osd1|cnt\(25) & (!\osd1|cnt[24]~96\)) # (!\osd1|cnt\(25) & ((\osd1|cnt[24]~96\) # (GND)))
-- \osd1|cnt[25]~98\ = CARRY((!\osd1|cnt[24]~96\) # (!\osd1|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(25),
	datad => VCC,
	cin => \osd1|cnt[24]~96\,
	combout => \osd1|cnt[25]~97_combout\,
	cout => \osd1|cnt[25]~98\);

-- Location: FF_X15_Y21_N19
\osd1|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[25]~97_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(25));

-- Location: LCCOMB_X15_Y21_N20
\osd1|cnt[26]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[26]~99_combout\ = (\osd1|cnt\(26) & (\osd1|cnt[25]~98\ $ (GND))) # (!\osd1|cnt\(26) & (!\osd1|cnt[25]~98\ & VCC))
-- \osd1|cnt[26]~100\ = CARRY((\osd1|cnt\(26) & !\osd1|cnt[25]~98\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(26),
	datad => VCC,
	cin => \osd1|cnt[25]~98\,
	combout => \osd1|cnt[26]~99_combout\,
	cout => \osd1|cnt[26]~100\);

-- Location: FF_X15_Y21_N21
\osd1|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[26]~99_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(26));

-- Location: LCCOMB_X16_Y22_N8
\osd1|pixsz[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[1]~24_cout\ = CARRY(\osd1|cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(9),
	datad => VCC,
	cout => \osd1|pixsz[1]~24_cout\);

-- Location: LCCOMB_X16_Y22_N10
\osd1|pixsz[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[1]~25_combout\ = (\osd1|cnt\(10) & (\osd1|pixsz[1]~24_cout\ & VCC)) # (!\osd1|cnt\(10) & (!\osd1|pixsz[1]~24_cout\))
-- \osd1|pixsz[1]~26\ = CARRY((!\osd1|cnt\(10) & !\osd1|pixsz[1]~24_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(10),
	datad => VCC,
	cin => \osd1|pixsz[1]~24_cout\,
	combout => \osd1|pixsz[1]~25_combout\,
	cout => \osd1|pixsz[1]~26\);

-- Location: LCCOMB_X16_Y22_N12
\osd1|pixsz[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[2]~28_combout\ = (\osd1|cnt\(11) & ((GND) # (!\osd1|pixsz[1]~26\))) # (!\osd1|cnt\(11) & (\osd1|pixsz[1]~26\ $ (GND)))
-- \osd1|pixsz[2]~29\ = CARRY((\osd1|cnt\(11)) # (!\osd1|pixsz[1]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(11),
	datad => VCC,
	cin => \osd1|pixsz[1]~26\,
	combout => \osd1|pixsz[2]~28_combout\,
	cout => \osd1|pixsz[2]~29\);

-- Location: LCCOMB_X16_Y22_N14
\osd1|pixsz[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[3]~30_combout\ = (\osd1|cnt\(12) & (\osd1|pixsz[2]~29\ & VCC)) # (!\osd1|cnt\(12) & (!\osd1|pixsz[2]~29\))
-- \osd1|pixsz[3]~31\ = CARRY((!\osd1|cnt\(12) & !\osd1|pixsz[2]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(12),
	datad => VCC,
	cin => \osd1|pixsz[2]~29\,
	combout => \osd1|pixsz[3]~30_combout\,
	cout => \osd1|pixsz[3]~31\);

-- Location: LCCOMB_X16_Y22_N16
\osd1|pixsz[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[4]~32_combout\ = (\osd1|cnt\(13) & ((GND) # (!\osd1|pixsz[3]~31\))) # (!\osd1|cnt\(13) & (\osd1|pixsz[3]~31\ $ (GND)))
-- \osd1|pixsz[4]~33\ = CARRY((\osd1|cnt\(13)) # (!\osd1|pixsz[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(13),
	datad => VCC,
	cin => \osd1|pixsz[3]~31\,
	combout => \osd1|pixsz[4]~32_combout\,
	cout => \osd1|pixsz[4]~33\);

-- Location: LCCOMB_X16_Y22_N18
\osd1|pixsz[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[5]~34_combout\ = (\osd1|cnt\(14) & (\osd1|pixsz[4]~33\ & VCC)) # (!\osd1|cnt\(14) & (!\osd1|pixsz[4]~33\))
-- \osd1|pixsz[5]~35\ = CARRY((!\osd1|cnt\(14) & !\osd1|pixsz[4]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(14),
	datad => VCC,
	cin => \osd1|pixsz[4]~33\,
	combout => \osd1|pixsz[5]~34_combout\,
	cout => \osd1|pixsz[5]~35\);

-- Location: LCCOMB_X16_Y22_N20
\osd1|pixsz[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[6]~36_combout\ = (\osd1|cnt\(15) & ((GND) # (!\osd1|pixsz[5]~35\))) # (!\osd1|cnt\(15) & (\osd1|pixsz[5]~35\ $ (GND)))
-- \osd1|pixsz[6]~37\ = CARRY((\osd1|cnt\(15)) # (!\osd1|pixsz[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(15),
	datad => VCC,
	cin => \osd1|pixsz[5]~35\,
	combout => \osd1|pixsz[6]~36_combout\,
	cout => \osd1|pixsz[6]~37\);

-- Location: LCCOMB_X16_Y22_N22
\osd1|pixsz[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[7]~38_combout\ = (\osd1|cnt\(16) & (\osd1|pixsz[6]~37\ & VCC)) # (!\osd1|cnt\(16) & (!\osd1|pixsz[6]~37\))
-- \osd1|pixsz[7]~39\ = CARRY((!\osd1|cnt\(16) & !\osd1|pixsz[6]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(16),
	datad => VCC,
	cin => \osd1|pixsz[6]~37\,
	combout => \osd1|pixsz[7]~38_combout\,
	cout => \osd1|pixsz[7]~39\);

-- Location: LCCOMB_X16_Y22_N24
\osd1|pixsz[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[8]~40_combout\ = (\osd1|cnt\(17) & ((GND) # (!\osd1|pixsz[7]~39\))) # (!\osd1|cnt\(17) & (\osd1|pixsz[7]~39\ $ (GND)))
-- \osd1|pixsz[8]~41\ = CARRY((\osd1|cnt\(17)) # (!\osd1|pixsz[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(17),
	datad => VCC,
	cin => \osd1|pixsz[7]~39\,
	combout => \osd1|pixsz[8]~40_combout\,
	cout => \osd1|pixsz[8]~41\);

-- Location: LCCOMB_X16_Y22_N26
\osd1|pixsz[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[9]~42_combout\ = (\osd1|cnt\(18) & (\osd1|pixsz[8]~41\ & VCC)) # (!\osd1|cnt\(18) & (!\osd1|pixsz[8]~41\))
-- \osd1|pixsz[9]~43\ = CARRY((!\osd1|cnt\(18) & !\osd1|pixsz[8]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(18),
	datad => VCC,
	cin => \osd1|pixsz[8]~41\,
	combout => \osd1|pixsz[9]~42_combout\,
	cout => \osd1|pixsz[9]~43\);

-- Location: LCCOMB_X16_Y22_N28
\osd1|pixsz[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[10]~44_combout\ = (\osd1|cnt\(19) & ((GND) # (!\osd1|pixsz[9]~43\))) # (!\osd1|cnt\(19) & (\osd1|pixsz[9]~43\ $ (GND)))
-- \osd1|pixsz[10]~45\ = CARRY((\osd1|cnt\(19)) # (!\osd1|pixsz[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(19),
	datad => VCC,
	cin => \osd1|pixsz[9]~43\,
	combout => \osd1|pixsz[10]~44_combout\,
	cout => \osd1|pixsz[10]~45\);

-- Location: LCCOMB_X16_Y22_N30
\osd1|pixsz[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[11]~46_combout\ = (\osd1|cnt\(20) & (\osd1|pixsz[10]~45\ & VCC)) # (!\osd1|cnt\(20) & (!\osd1|pixsz[10]~45\))
-- \osd1|pixsz[11]~47\ = CARRY((!\osd1|cnt\(20) & !\osd1|pixsz[10]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(20),
	datad => VCC,
	cin => \osd1|pixsz[10]~45\,
	combout => \osd1|pixsz[11]~46_combout\,
	cout => \osd1|pixsz[11]~47\);

-- Location: LCCOMB_X16_Y21_N0
\osd1|pixsz[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[12]~48_combout\ = (\osd1|cnt\(21) & ((GND) # (!\osd1|pixsz[11]~47\))) # (!\osd1|cnt\(21) & (\osd1|pixsz[11]~47\ $ (GND)))
-- \osd1|pixsz[12]~49\ = CARRY((\osd1|cnt\(21)) # (!\osd1|pixsz[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(21),
	datad => VCC,
	cin => \osd1|pixsz[11]~47\,
	combout => \osd1|pixsz[12]~48_combout\,
	cout => \osd1|pixsz[12]~49\);

-- Location: LCCOMB_X16_Y21_N2
\osd1|pixsz[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[13]~50_combout\ = (\osd1|cnt\(22) & (\osd1|pixsz[12]~49\ & VCC)) # (!\osd1|cnt\(22) & (!\osd1|pixsz[12]~49\))
-- \osd1|pixsz[13]~51\ = CARRY((!\osd1|cnt\(22) & !\osd1|pixsz[12]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(22),
	datad => VCC,
	cin => \osd1|pixsz[12]~49\,
	combout => \osd1|pixsz[13]~50_combout\,
	cout => \osd1|pixsz[13]~51\);

-- Location: LCCOMB_X16_Y21_N4
\osd1|pixsz[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[14]~52_combout\ = (\osd1|cnt\(23) & ((GND) # (!\osd1|pixsz[13]~51\))) # (!\osd1|cnt\(23) & (\osd1|pixsz[13]~51\ $ (GND)))
-- \osd1|pixsz[14]~53\ = CARRY((\osd1|cnt\(23)) # (!\osd1|pixsz[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(23),
	datad => VCC,
	cin => \osd1|pixsz[13]~51\,
	combout => \osd1|pixsz[14]~52_combout\,
	cout => \osd1|pixsz[14]~53\);

-- Location: LCCOMB_X16_Y21_N6
\osd1|pixsz[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[15]~54_combout\ = (\osd1|cnt\(24) & (\osd1|pixsz[14]~53\ & VCC)) # (!\osd1|cnt\(24) & (!\osd1|pixsz[14]~53\))
-- \osd1|pixsz[15]~55\ = CARRY((!\osd1|cnt\(24) & !\osd1|pixsz[14]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(24),
	datad => VCC,
	cin => \osd1|pixsz[14]~53\,
	combout => \osd1|pixsz[15]~54_combout\,
	cout => \osd1|pixsz[15]~55\);

-- Location: LCCOMB_X16_Y21_N8
\osd1|pixsz[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[16]~56_combout\ = (\osd1|cnt\(25) & ((GND) # (!\osd1|pixsz[15]~55\))) # (!\osd1|cnt\(25) & (\osd1|pixsz[15]~55\ $ (GND)))
-- \osd1|pixsz[16]~57\ = CARRY((\osd1|cnt\(25)) # (!\osd1|pixsz[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(25),
	datad => VCC,
	cin => \osd1|pixsz[15]~55\,
	combout => \osd1|pixsz[16]~56_combout\,
	cout => \osd1|pixsz[16]~57\);

-- Location: LCCOMB_X16_Y21_N10
\osd1|pixsz[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[17]~58_combout\ = (\osd1|cnt\(26) & (\osd1|pixsz[16]~57\ & VCC)) # (!\osd1|cnt\(26) & (!\osd1|pixsz[16]~57\))
-- \osd1|pixsz[17]~59\ = CARRY((!\osd1|cnt\(26) & !\osd1|pixsz[16]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(26),
	datad => VCC,
	cin => \osd1|pixsz[16]~57\,
	combout => \osd1|pixsz[17]~58_combout\,
	cout => \osd1|pixsz[17]~59\);

-- Location: FF_X16_Y21_N11
\osd1|pixsz[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[17]~58_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(17));

-- Location: FF_X16_Y21_N9
\osd1|pixsz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[16]~56_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(16));

-- Location: LCCOMB_X17_Y21_N30
\osd1|pixcnt[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[5]~34_combout\ = (\osd1|pixsz\(17) & (\osd1|pixcnt\(17) & (\osd1|pixcnt\(16) $ (!\osd1|pixsz\(16))))) # (!\osd1|pixsz\(17) & (!\osd1|pixcnt\(17) & (\osd1|pixcnt\(16) $ (!\osd1|pixsz\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixsz\(17),
	datab => \osd1|pixcnt\(17),
	datac => \osd1|pixcnt\(16),
	datad => \osd1|pixsz\(16),
	combout => \osd1|pixcnt[5]~34_combout\);

-- Location: FF_X16_Y22_N23
\osd1|pixsz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[7]~38_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(7));

-- Location: FF_X16_Y22_N21
\osd1|pixsz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[6]~36_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(6));

-- Location: LCCOMB_X17_Y22_N6
\osd1|Equal11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal11~3_combout\ = (\osd1|pixsz\(7) & (\osd1|pixcnt\(7) & (\osd1|pixsz\(6) $ (!\osd1|pixcnt\(6))))) # (!\osd1|pixsz\(7) & (!\osd1|pixcnt\(7) & (\osd1|pixsz\(6) $ (!\osd1|pixcnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixsz\(7),
	datab => \osd1|pixsz\(6),
	datac => \osd1|pixcnt\(6),
	datad => \osd1|pixcnt\(7),
	combout => \osd1|Equal11~3_combout\);

-- Location: FF_X16_Y22_N15
\osd1|pixsz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[3]~30_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(3));

-- Location: FF_X16_Y22_N13
\osd1|pixsz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[2]~28_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(2));

-- Location: LCCOMB_X17_Y22_N18
\osd1|Equal11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal11~1_combout\ = (\osd1|pixcnt\(3) & (\osd1|pixsz\(3) & (\osd1|pixsz\(2) $ (!\osd1|pixcnt\(2))))) # (!\osd1|pixcnt\(3) & (!\osd1|pixsz\(3) & (\osd1|pixsz\(2) $ (!\osd1|pixcnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(3),
	datab => \osd1|pixsz\(3),
	datac => \osd1|pixsz\(2),
	datad => \osd1|pixcnt\(2),
	combout => \osd1|Equal11~1_combout\);

-- Location: FF_X16_Y22_N11
\osd1|pixsz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[1]~25_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(1));

-- Location: LCCOMB_X16_Y22_N4
\osd1|pixsz[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[0]~27_combout\ = (\osd1|hs~q\ & ((\vga1|hs~q\ & ((\osd1|pixsz\(0)))) # (!\vga1|hs~q\ & (!\osd1|cnt\(9))))) # (!\osd1|hs~q\ & (((\osd1|pixsz\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|hs~q\,
	datab => \osd1|cnt\(9),
	datac => \osd1|pixsz\(0),
	datad => \vga1|hs~q\,
	combout => \osd1|pixsz[0]~27_combout\);

-- Location: FF_X16_Y22_N5
\osd1|pixsz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(0));

-- Location: LCCOMB_X17_Y22_N8
\osd1|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal11~0_combout\ = (\osd1|pixsz\(1) & (\osd1|pixcnt\(1) & (\osd1|pixsz\(0) $ (!\osd1|pixcnt\(0))))) # (!\osd1|pixsz\(1) & (!\osd1|pixcnt\(1) & (\osd1|pixsz\(0) $ (!\osd1|pixcnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixsz\(1),
	datab => \osd1|pixsz\(0),
	datac => \osd1|pixcnt\(0),
	datad => \osd1|pixcnt\(1),
	combout => \osd1|Equal11~0_combout\);

-- Location: FF_X16_Y22_N17
\osd1|pixsz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[4]~32_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(4));

-- Location: FF_X16_Y22_N19
\osd1|pixsz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[5]~34_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(5));

-- Location: LCCOMB_X17_Y22_N12
\osd1|Equal11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal11~2_combout\ = (\osd1|pixsz\(4) & (\osd1|pixcnt\(4) & (\osd1|pixcnt\(5) $ (!\osd1|pixsz\(5))))) # (!\osd1|pixsz\(4) & (!\osd1|pixcnt\(4) & (\osd1|pixcnt\(5) $ (!\osd1|pixsz\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixsz\(4),
	datab => \osd1|pixcnt\(5),
	datac => \osd1|pixcnt\(4),
	datad => \osd1|pixsz\(5),
	combout => \osd1|Equal11~2_combout\);

-- Location: LCCOMB_X17_Y22_N16
\osd1|Equal11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal11~4_combout\ = (\osd1|Equal11~3_combout\ & (\osd1|Equal11~1_combout\ & (\osd1|Equal11~0_combout\ & \osd1|Equal11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|Equal11~3_combout\,
	datab => \osd1|Equal11~1_combout\,
	datac => \osd1|Equal11~0_combout\,
	datad => \osd1|Equal11~2_combout\,
	combout => \osd1|Equal11~4_combout\);

-- Location: FF_X16_Y22_N25
\osd1|pixsz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[8]~40_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(8));

-- Location: FF_X16_Y22_N27
\osd1|pixsz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[9]~42_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(9));

-- Location: LCCOMB_X17_Y22_N10
\osd1|Equal11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal11~5_combout\ = (\osd1|pixsz\(8) & (\osd1|pixcnt\(8) & (\osd1|pixcnt\(9) $ (!\osd1|pixsz\(9))))) # (!\osd1|pixsz\(8) & (!\osd1|pixcnt\(8) & (\osd1|pixcnt\(9) $ (!\osd1|pixsz\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixsz\(8),
	datab => \osd1|pixcnt\(9),
	datac => \osd1|pixsz\(9),
	datad => \osd1|pixcnt\(8),
	combout => \osd1|Equal11~5_combout\);

-- Location: FF_X16_Y21_N3
\osd1|pixsz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[13]~50_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(13));

-- Location: FF_X16_Y21_N1
\osd1|pixsz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[12]~48_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(12));

-- Location: LCCOMB_X16_Y21_N26
\osd1|Equal11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal11~7_combout\ = (\osd1|pixcnt\(12) & (\osd1|pixsz\(12) & (\osd1|pixsz\(13) $ (!\osd1|pixcnt\(13))))) # (!\osd1|pixcnt\(12) & (!\osd1|pixsz\(12) & (\osd1|pixsz\(13) $ (!\osd1|pixcnt\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(12),
	datab => \osd1|pixsz\(13),
	datac => \osd1|pixcnt\(13),
	datad => \osd1|pixsz\(12),
	combout => \osd1|Equal11~7_combout\);

-- Location: FF_X16_Y21_N7
\osd1|pixsz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[15]~54_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(15));

-- Location: FF_X16_Y21_N5
\osd1|pixsz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[14]~52_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(14));

-- Location: LCCOMB_X16_Y21_N28
\osd1|Equal11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal11~8_combout\ = (\osd1|pixsz\(15) & (\osd1|pixcnt\(15) & (\osd1|pixsz\(14) $ (!\osd1|pixcnt\(14))))) # (!\osd1|pixsz\(15) & (!\osd1|pixcnt\(15) & (\osd1|pixsz\(14) $ (!\osd1|pixcnt\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixsz\(15),
	datab => \osd1|pixcnt\(15),
	datac => \osd1|pixsz\(14),
	datad => \osd1|pixcnt\(14),
	combout => \osd1|Equal11~8_combout\);

-- Location: FF_X16_Y22_N29
\osd1|pixsz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[10]~44_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(10));

-- Location: FF_X16_Y22_N31
\osd1|pixsz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[11]~46_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(11));

-- Location: LCCOMB_X17_Y22_N20
\osd1|Equal11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal11~6_combout\ = (\osd1|pixsz\(10) & (\osd1|pixcnt\(10) & (\osd1|pixsz\(11) $ (!\osd1|pixcnt\(11))))) # (!\osd1|pixsz\(10) & (!\osd1|pixcnt\(10) & (\osd1|pixsz\(11) $ (!\osd1|pixcnt\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixsz\(10),
	datab => \osd1|pixsz\(11),
	datac => \osd1|pixcnt\(10),
	datad => \osd1|pixcnt\(11),
	combout => \osd1|Equal11~6_combout\);

-- Location: LCCOMB_X17_Y22_N30
\osd1|Equal11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal11~9_combout\ = (\osd1|Equal11~5_combout\ & (\osd1|Equal11~7_combout\ & (\osd1|Equal11~8_combout\ & \osd1|Equal11~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|Equal11~5_combout\,
	datab => \osd1|Equal11~7_combout\,
	datac => \osd1|Equal11~8_combout\,
	datad => \osd1|Equal11~6_combout\,
	combout => \osd1|Equal11~9_combout\);

-- Location: LCCOMB_X18_Y21_N6
\osd1|pixcnt[19]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[19]~75_combout\ = (\osd1|pixcnt\(19) & (!\osd1|pixcnt[18]~74\)) # (!\osd1|pixcnt\(19) & ((\osd1|pixcnt[18]~74\) # (GND)))
-- \osd1|pixcnt[19]~76\ = CARRY((!\osd1|pixcnt[18]~74\) # (!\osd1|pixcnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(19),
	datad => VCC,
	cin => \osd1|pixcnt[18]~74\,
	combout => \osd1|pixcnt[19]~75_combout\,
	cout => \osd1|pixcnt[19]~76\);

-- Location: LCCOMB_X18_Y21_N8
\osd1|pixcnt[20]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[20]~77_combout\ = (\osd1|pixcnt\(20) & (\osd1|pixcnt[19]~76\ $ (GND))) # (!\osd1|pixcnt\(20) & (!\osd1|pixcnt[19]~76\ & VCC))
-- \osd1|pixcnt[20]~78\ = CARRY((\osd1|pixcnt\(20) & !\osd1|pixcnt[19]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|pixcnt\(20),
	datad => VCC,
	cin => \osd1|pixcnt[19]~76\,
	combout => \osd1|pixcnt[20]~77_combout\,
	cout => \osd1|pixcnt[20]~78\);

-- Location: FF_X18_Y21_N9
\osd1|pixcnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[20]~77_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(20));

-- Location: LCCOMB_X18_Y21_N10
\osd1|pixcnt[21]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[21]~79_combout\ = (\osd1|pixcnt\(21) & (!\osd1|pixcnt[20]~78\)) # (!\osd1|pixcnt\(21) & ((\osd1|pixcnt[20]~78\) # (GND)))
-- \osd1|pixcnt[21]~80\ = CARRY((!\osd1|pixcnt[20]~78\) # (!\osd1|pixcnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(21),
	datad => VCC,
	cin => \osd1|pixcnt[20]~78\,
	combout => \osd1|pixcnt[21]~79_combout\,
	cout => \osd1|pixcnt[21]~80\);

-- Location: FF_X18_Y21_N11
\osd1|pixcnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[21]~79_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(21));

-- Location: LCCOMB_X18_Y21_N12
\osd1|pixcnt[22]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[22]~81_combout\ = (\osd1|pixcnt\(22) & (\osd1|pixcnt[21]~80\ $ (GND))) # (!\osd1|pixcnt\(22) & (!\osd1|pixcnt[21]~80\ & VCC))
-- \osd1|pixcnt[22]~82\ = CARRY((\osd1|pixcnt\(22) & !\osd1|pixcnt[21]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(22),
	datad => VCC,
	cin => \osd1|pixcnt[21]~80\,
	combout => \osd1|pixcnt[22]~81_combout\,
	cout => \osd1|pixcnt[22]~82\);

-- Location: FF_X18_Y21_N13
\osd1|pixcnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[22]~81_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(22));

-- Location: LCCOMB_X15_Y21_N22
\osd1|cnt[27]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[27]~101_combout\ = (\osd1|cnt\(27) & (!\osd1|cnt[26]~100\)) # (!\osd1|cnt\(27) & ((\osd1|cnt[26]~100\) # (GND)))
-- \osd1|cnt[27]~102\ = CARRY((!\osd1|cnt[26]~100\) # (!\osd1|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(27),
	datad => VCC,
	cin => \osd1|cnt[26]~100\,
	combout => \osd1|cnt[27]~101_combout\,
	cout => \osd1|cnt[27]~102\);

-- Location: FF_X15_Y21_N23
\osd1|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[27]~101_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(27));

-- Location: LCCOMB_X15_Y21_N24
\osd1|cnt[28]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[28]~103_combout\ = (\osd1|cnt\(28) & (\osd1|cnt[27]~102\ $ (GND))) # (!\osd1|cnt\(28) & (!\osd1|cnt[27]~102\ & VCC))
-- \osd1|cnt[28]~104\ = CARRY((\osd1|cnt\(28) & !\osd1|cnt[27]~102\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(28),
	datad => VCC,
	cin => \osd1|cnt[27]~102\,
	combout => \osd1|cnt[28]~103_combout\,
	cout => \osd1|cnt[28]~104\);

-- Location: FF_X15_Y21_N25
\osd1|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[28]~103_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(28));

-- Location: LCCOMB_X15_Y21_N26
\osd1|cnt[29]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[29]~105_combout\ = (\osd1|cnt\(29) & (!\osd1|cnt[28]~104\)) # (!\osd1|cnt\(29) & ((\osd1|cnt[28]~104\) # (GND)))
-- \osd1|cnt[29]~106\ = CARRY((!\osd1|cnt[28]~104\) # (!\osd1|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(29),
	datad => VCC,
	cin => \osd1|cnt[28]~104\,
	combout => \osd1|cnt[29]~105_combout\,
	cout => \osd1|cnt[29]~106\);

-- Location: FF_X15_Y21_N27
\osd1|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[29]~105_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(29));

-- Location: LCCOMB_X15_Y21_N28
\osd1|cnt[30]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[30]~107_combout\ = (\osd1|cnt\(30) & (\osd1|cnt[29]~106\ $ (GND))) # (!\osd1|cnt\(30) & (!\osd1|cnt[29]~106\ & VCC))
-- \osd1|cnt[30]~108\ = CARRY((\osd1|cnt\(30) & !\osd1|cnt[29]~106\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(30),
	datad => VCC,
	cin => \osd1|cnt[29]~106\,
	combout => \osd1|cnt[30]~107_combout\,
	cout => \osd1|cnt[30]~108\);

-- Location: FF_X15_Y21_N29
\osd1|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[30]~107_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(30));

-- Location: LCCOMB_X15_Y21_N30
\osd1|cnt[31]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnt[31]~109_combout\ = \osd1|cnt\(31) $ (\osd1|cnt[30]~108\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(31),
	cin => \osd1|cnt[30]~108\,
	combout => \osd1|cnt[31]~109_combout\);

-- Location: FF_X15_Y21_N31
\osd1|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|cnt[31]~109_combout\,
	sclr => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnt\(31));

-- Location: LCCOMB_X16_Y21_N12
\osd1|pixsz[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[18]~60_combout\ = (\osd1|cnt\(27) & ((GND) # (!\osd1|pixsz[17]~59\))) # (!\osd1|cnt\(27) & (\osd1|pixsz[17]~59\ $ (GND)))
-- \osd1|pixsz[18]~61\ = CARRY((\osd1|cnt\(27)) # (!\osd1|pixsz[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(27),
	datad => VCC,
	cin => \osd1|pixsz[17]~59\,
	combout => \osd1|pixsz[18]~60_combout\,
	cout => \osd1|pixsz[18]~61\);

-- Location: LCCOMB_X16_Y21_N14
\osd1|pixsz[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[19]~62_combout\ = (\osd1|cnt\(28) & (\osd1|pixsz[18]~61\ & VCC)) # (!\osd1|cnt\(28) & (!\osd1|pixsz[18]~61\))
-- \osd1|pixsz[19]~63\ = CARRY((!\osd1|cnt\(28) & !\osd1|pixsz[18]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(28),
	datad => VCC,
	cin => \osd1|pixsz[18]~61\,
	combout => \osd1|pixsz[19]~62_combout\,
	cout => \osd1|pixsz[19]~63\);

-- Location: LCCOMB_X16_Y21_N16
\osd1|pixsz[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[20]~64_combout\ = (\osd1|cnt\(29) & ((GND) # (!\osd1|pixsz[19]~63\))) # (!\osd1|cnt\(29) & (\osd1|pixsz[19]~63\ $ (GND)))
-- \osd1|pixsz[20]~65\ = CARRY((\osd1|cnt\(29)) # (!\osd1|pixsz[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(29),
	datad => VCC,
	cin => \osd1|pixsz[19]~63\,
	combout => \osd1|pixsz[20]~64_combout\,
	cout => \osd1|pixsz[20]~65\);

-- Location: LCCOMB_X16_Y21_N18
\osd1|pixsz[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[21]~66_combout\ = (\osd1|cnt\(30) & (\osd1|pixsz[20]~65\ & VCC)) # (!\osd1|cnt\(30) & (!\osd1|pixsz[20]~65\))
-- \osd1|pixsz[21]~67\ = CARRY((!\osd1|cnt\(30) & !\osd1|pixsz[20]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnt\(30),
	datad => VCC,
	cin => \osd1|pixsz[20]~65\,
	combout => \osd1|pixsz[21]~66_combout\,
	cout => \osd1|pixsz[21]~67\);

-- Location: LCCOMB_X16_Y21_N20
\osd1|pixsz[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[22]~68_combout\ = (\osd1|cnt\(31) & ((GND) # (!\osd1|pixsz[21]~67\))) # (!\osd1|cnt\(31) & (\osd1|pixsz[21]~67\ $ (GND)))
-- \osd1|pixsz[22]~69\ = CARRY((\osd1|cnt\(31)) # (!\osd1|pixsz[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnt\(31),
	datad => VCC,
	cin => \osd1|pixsz[21]~67\,
	combout => \osd1|pixsz[22]~68_combout\,
	cout => \osd1|pixsz[22]~69\);

-- Location: FF_X16_Y21_N21
\osd1|pixsz[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[22]~68_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(22));

-- Location: LCCOMB_X18_Y21_N14
\osd1|pixcnt[23]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[23]~83_combout\ = (\osd1|pixcnt\(23) & (!\osd1|pixcnt[22]~82\)) # (!\osd1|pixcnt\(23) & ((\osd1|pixcnt[22]~82\) # (GND)))
-- \osd1|pixcnt[23]~84\ = CARRY((!\osd1|pixcnt[22]~82\) # (!\osd1|pixcnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|pixcnt\(23),
	datad => VCC,
	cin => \osd1|pixcnt[22]~82\,
	combout => \osd1|pixcnt[23]~83_combout\,
	cout => \osd1|pixcnt[23]~84\);

-- Location: FF_X18_Y21_N15
\osd1|pixcnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[23]~83_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(23));

-- Location: LCCOMB_X16_Y21_N22
\osd1|pixsz[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixsz[23]~70_combout\ = !\osd1|pixsz[22]~69\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \osd1|pixsz[22]~69\,
	combout => \osd1|pixsz[23]~70_combout\);

-- Location: FF_X16_Y21_N23
\osd1|pixsz[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[23]~70_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(23));

-- Location: LCCOMB_X17_Y21_N12
\osd1|Equal11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal11~10_combout\ = (\osd1|pixcnt\(22) & (\osd1|pixsz\(22) & (\osd1|pixcnt\(23) $ (!\osd1|pixsz\(23))))) # (!\osd1|pixcnt\(22) & (!\osd1|pixsz\(22) & (\osd1|pixcnt\(23) $ (!\osd1|pixsz\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(22),
	datab => \osd1|pixsz\(22),
	datac => \osd1|pixcnt\(23),
	datad => \osd1|pixsz\(23),
	combout => \osd1|Equal11~10_combout\);

-- Location: LCCOMB_X17_Y21_N8
\osd1|pixcnt[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[5]~35_combout\ = (\osd1|pixcnt[5]~34_combout\ & (\osd1|Equal11~4_combout\ & (\osd1|Equal11~9_combout\ & \osd1|Equal11~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt[5]~34_combout\,
	datab => \osd1|Equal11~4_combout\,
	datac => \osd1|Equal11~9_combout\,
	datad => \osd1|Equal11~10_combout\,
	combout => \osd1|pixcnt[5]~35_combout\);

-- Location: FF_X16_Y21_N15
\osd1|pixsz[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[19]~62_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(19));

-- Location: FF_X16_Y21_N13
\osd1|pixsz[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[18]~60_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(18));

-- Location: LCCOMB_X17_Y21_N24
\osd1|Equal11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal11~14_combout\ = (\osd1|pixsz\(19) & (\osd1|pixcnt\(19) & (\osd1|pixcnt\(18) $ (!\osd1|pixsz\(18))))) # (!\osd1|pixsz\(19) & (!\osd1|pixcnt\(19) & (\osd1|pixcnt\(18) $ (!\osd1|pixsz\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixsz\(19),
	datab => \osd1|pixcnt\(18),
	datac => \osd1|pixsz\(18),
	datad => \osd1|pixcnt\(19),
	combout => \osd1|Equal11~14_combout\);

-- Location: LCCOMB_X18_Y21_N16
\osd1|pixcnt[24]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[24]~85_combout\ = (\osd1|pixcnt\(24) & (\osd1|pixcnt[23]~84\ $ (GND))) # (!\osd1|pixcnt\(24) & (!\osd1|pixcnt[23]~84\ & VCC))
-- \osd1|pixcnt[24]~86\ = CARRY((\osd1|pixcnt\(24) & !\osd1|pixcnt[23]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|pixcnt\(24),
	datad => VCC,
	cin => \osd1|pixcnt[23]~84\,
	combout => \osd1|pixcnt[24]~85_combout\,
	cout => \osd1|pixcnt[24]~86\);

-- Location: FF_X18_Y21_N17
\osd1|pixcnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[24]~85_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(24));

-- Location: LCCOMB_X18_Y21_N18
\osd1|pixcnt[25]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[25]~87_combout\ = (\osd1|pixcnt\(25) & (!\osd1|pixcnt[24]~86\)) # (!\osd1|pixcnt\(25) & ((\osd1|pixcnt[24]~86\) # (GND)))
-- \osd1|pixcnt[25]~88\ = CARRY((!\osd1|pixcnt[24]~86\) # (!\osd1|pixcnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|pixcnt\(25),
	datad => VCC,
	cin => \osd1|pixcnt[24]~86\,
	combout => \osd1|pixcnt[25]~87_combout\,
	cout => \osd1|pixcnt[25]~88\);

-- Location: FF_X18_Y21_N19
\osd1|pixcnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[25]~87_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(25));

-- Location: LCCOMB_X18_Y21_N20
\osd1|pixcnt[26]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[26]~89_combout\ = (\osd1|pixcnt\(26) & (\osd1|pixcnt[25]~88\ $ (GND))) # (!\osd1|pixcnt\(26) & (!\osd1|pixcnt[25]~88\ & VCC))
-- \osd1|pixcnt[26]~90\ = CARRY((\osd1|pixcnt\(26) & !\osd1|pixcnt[25]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|pixcnt\(26),
	datad => VCC,
	cin => \osd1|pixcnt[25]~88\,
	combout => \osd1|pixcnt[26]~89_combout\,
	cout => \osd1|pixcnt[26]~90\);

-- Location: FF_X18_Y21_N21
\osd1|pixcnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[26]~89_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(26));

-- Location: LCCOMB_X18_Y21_N22
\osd1|pixcnt[27]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[27]~91_combout\ = (\osd1|pixcnt\(27) & (!\osd1|pixcnt[26]~90\)) # (!\osd1|pixcnt\(27) & ((\osd1|pixcnt[26]~90\) # (GND)))
-- \osd1|pixcnt[27]~92\ = CARRY((!\osd1|pixcnt[26]~90\) # (!\osd1|pixcnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(27),
	datad => VCC,
	cin => \osd1|pixcnt[26]~90\,
	combout => \osd1|pixcnt[27]~91_combout\,
	cout => \osd1|pixcnt[27]~92\);

-- Location: FF_X18_Y21_N23
\osd1|pixcnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[27]~91_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(27));

-- Location: LCCOMB_X18_Y21_N24
\osd1|pixcnt[28]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[28]~93_combout\ = (\osd1|pixcnt\(28) & (\osd1|pixcnt[27]~92\ $ (GND))) # (!\osd1|pixcnt\(28) & (!\osd1|pixcnt[27]~92\ & VCC))
-- \osd1|pixcnt[28]~94\ = CARRY((\osd1|pixcnt\(28) & !\osd1|pixcnt[27]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|pixcnt\(28),
	datad => VCC,
	cin => \osd1|pixcnt[27]~92\,
	combout => \osd1|pixcnt[28]~93_combout\,
	cout => \osd1|pixcnt[28]~94\);

-- Location: FF_X18_Y21_N25
\osd1|pixcnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[28]~93_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(28));

-- Location: LCCOMB_X18_Y21_N26
\osd1|pixcnt[29]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[29]~95_combout\ = (\osd1|pixcnt\(29) & (!\osd1|pixcnt[28]~94\)) # (!\osd1|pixcnt\(29) & ((\osd1|pixcnt[28]~94\) # (GND)))
-- \osd1|pixcnt[29]~96\ = CARRY((!\osd1|pixcnt[28]~94\) # (!\osd1|pixcnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(29),
	datad => VCC,
	cin => \osd1|pixcnt[28]~94\,
	combout => \osd1|pixcnt[29]~95_combout\,
	cout => \osd1|pixcnt[29]~96\);

-- Location: FF_X18_Y21_N27
\osd1|pixcnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[29]~95_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(29));

-- Location: LCCOMB_X18_Y21_N28
\osd1|pixcnt[30]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[30]~97_combout\ = (\osd1|pixcnt\(30) & (\osd1|pixcnt[29]~96\ $ (GND))) # (!\osd1|pixcnt\(30) & (!\osd1|pixcnt[29]~96\ & VCC))
-- \osd1|pixcnt[30]~98\ = CARRY((\osd1|pixcnt\(30) & !\osd1|pixcnt[29]~96\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|pixcnt\(30),
	datad => VCC,
	cin => \osd1|pixcnt[29]~96\,
	combout => \osd1|pixcnt[30]~97_combout\,
	cout => \osd1|pixcnt[30]~98\);

-- Location: FF_X18_Y21_N29
\osd1|pixcnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[30]~97_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(30));

-- Location: LCCOMB_X18_Y21_N30
\osd1|pixcnt[31]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[31]~99_combout\ = \osd1|pixcnt\(31) $ (\osd1|pixcnt[30]~98\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(31),
	cin => \osd1|pixcnt[30]~98\,
	combout => \osd1|pixcnt[31]~99_combout\);

-- Location: FF_X18_Y21_N31
\osd1|pixcnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[31]~99_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(31));

-- Location: LCCOMB_X17_Y21_N26
\osd1|pixcnt[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[5]~36_combout\ = (\osd1|Equal11~14_combout\ & ((\osd1|pixsz\(23) & (\osd1|pixcnt\(31) & \osd1|pixcnt\(30))) # (!\osd1|pixsz\(23) & (!\osd1|pixcnt\(31) & !\osd1|pixcnt\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixsz\(23),
	datab => \osd1|Equal11~14_combout\,
	datac => \osd1|pixcnt\(31),
	datad => \osd1|pixcnt\(30),
	combout => \osd1|pixcnt[5]~36_combout\);

-- Location: FF_X16_Y21_N17
\osd1|pixsz[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[20]~64_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(20));

-- Location: FF_X16_Y21_N19
\osd1|pixsz[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixsz[21]~66_combout\,
	ena => \osd1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixsz\(21));

-- Location: LCCOMB_X17_Y21_N18
\osd1|Equal11~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal11~11_combout\ = (\osd1|pixsz\(20) & (\osd1|pixcnt\(20) & (\osd1|pixsz\(21) $ (!\osd1|pixcnt\(21))))) # (!\osd1|pixsz\(20) & (!\osd1|pixcnt\(20) & (\osd1|pixsz\(21) $ (!\osd1|pixcnt\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixsz\(20),
	datab => \osd1|pixsz\(21),
	datac => \osd1|pixcnt\(20),
	datad => \osd1|pixcnt\(21),
	combout => \osd1|Equal11~11_combout\);

-- Location: LCCOMB_X17_Y21_N4
\osd1|Equal11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal11~12_combout\ = (\osd1|pixsz\(23) & (\osd1|pixcnt\(25) & (\osd1|pixcnt\(26) & \osd1|pixcnt\(24)))) # (!\osd1|pixsz\(23) & (!\osd1|pixcnt\(25) & (!\osd1|pixcnt\(26) & !\osd1|pixcnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixsz\(23),
	datab => \osd1|pixcnt\(25),
	datac => \osd1|pixcnt\(26),
	datad => \osd1|pixcnt\(24),
	combout => \osd1|Equal11~12_combout\);

-- Location: LCCOMB_X17_Y21_N6
\osd1|Equal11~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Equal11~13_combout\ = (\osd1|pixsz\(23) & (\osd1|pixcnt\(29) & (\osd1|pixcnt\(28) & \osd1|pixcnt\(27)))) # (!\osd1|pixsz\(23) & (!\osd1|pixcnt\(29) & (!\osd1|pixcnt\(28) & !\osd1|pixcnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixsz\(23),
	datab => \osd1|pixcnt\(29),
	datac => \osd1|pixcnt\(28),
	datad => \osd1|pixcnt\(27),
	combout => \osd1|Equal11~13_combout\);

-- Location: LCCOMB_X17_Y21_N28
\osd1|pixcnt[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[5]~37_combout\ = (\osd1|pixcnt[5]~36_combout\ & (\osd1|Equal11~11_combout\ & (\osd1|Equal11~12_combout\ & \osd1|Equal11~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt[5]~36_combout\,
	datab => \osd1|Equal11~11_combout\,
	datac => \osd1|Equal11~12_combout\,
	datad => \osd1|Equal11~13_combout\,
	combout => \osd1|pixcnt[5]~37_combout\);

-- Location: LCCOMB_X17_Y21_N14
\osd1|pixcnt[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[5]~38_combout\ = (\osd1|hs~q\ & (((\osd1|pixcnt[5]~35_combout\ & \osd1|pixcnt[5]~37_combout\)) # (!\vga1|hs~q\))) # (!\osd1|hs~q\ & (((\osd1|pixcnt[5]~35_combout\ & \osd1|pixcnt[5]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|hs~q\,
	datab => \vga1|hs~q\,
	datac => \osd1|pixcnt[5]~35_combout\,
	datad => \osd1|pixcnt[5]~37_combout\,
	combout => \osd1|pixcnt[5]~38_combout\);

-- Location: FF_X18_Y22_N1
\osd1|pixcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[0]~32_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(0));

-- Location: LCCOMB_X18_Y22_N2
\osd1|pixcnt[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[1]~39_combout\ = (\osd1|pixcnt\(1) & (!\osd1|pixcnt[0]~33\)) # (!\osd1|pixcnt\(1) & ((\osd1|pixcnt[0]~33\) # (GND)))
-- \osd1|pixcnt[1]~40\ = CARRY((!\osd1|pixcnt[0]~33\) # (!\osd1|pixcnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|pixcnt\(1),
	datad => VCC,
	cin => \osd1|pixcnt[0]~33\,
	combout => \osd1|pixcnt[1]~39_combout\,
	cout => \osd1|pixcnt[1]~40\);

-- Location: FF_X18_Y22_N3
\osd1|pixcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[1]~39_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(1));

-- Location: LCCOMB_X18_Y22_N4
\osd1|pixcnt[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[2]~41_combout\ = (\osd1|pixcnt\(2) & (\osd1|pixcnt[1]~40\ $ (GND))) # (!\osd1|pixcnt\(2) & (!\osd1|pixcnt[1]~40\ & VCC))
-- \osd1|pixcnt[2]~42\ = CARRY((\osd1|pixcnt\(2) & !\osd1|pixcnt[1]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|pixcnt\(2),
	datad => VCC,
	cin => \osd1|pixcnt[1]~40\,
	combout => \osd1|pixcnt[2]~41_combout\,
	cout => \osd1|pixcnt[2]~42\);

-- Location: FF_X18_Y22_N5
\osd1|pixcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[2]~41_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(2));

-- Location: LCCOMB_X18_Y22_N6
\osd1|pixcnt[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[3]~43_combout\ = (\osd1|pixcnt\(3) & (!\osd1|pixcnt[2]~42\)) # (!\osd1|pixcnt\(3) & ((\osd1|pixcnt[2]~42\) # (GND)))
-- \osd1|pixcnt[3]~44\ = CARRY((!\osd1|pixcnt[2]~42\) # (!\osd1|pixcnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(3),
	datad => VCC,
	cin => \osd1|pixcnt[2]~42\,
	combout => \osd1|pixcnt[3]~43_combout\,
	cout => \osd1|pixcnt[3]~44\);

-- Location: FF_X18_Y22_N7
\osd1|pixcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[3]~43_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(3));

-- Location: LCCOMB_X18_Y22_N8
\osd1|pixcnt[4]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[4]~45_combout\ = (\osd1|pixcnt\(4) & (\osd1|pixcnt[3]~44\ $ (GND))) # (!\osd1|pixcnt\(4) & (!\osd1|pixcnt[3]~44\ & VCC))
-- \osd1|pixcnt[4]~46\ = CARRY((\osd1|pixcnt\(4) & !\osd1|pixcnt[3]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|pixcnt\(4),
	datad => VCC,
	cin => \osd1|pixcnt[3]~44\,
	combout => \osd1|pixcnt[4]~45_combout\,
	cout => \osd1|pixcnt[4]~46\);

-- Location: FF_X18_Y22_N9
\osd1|pixcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[4]~45_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(4));

-- Location: LCCOMB_X18_Y22_N10
\osd1|pixcnt[5]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[5]~47_combout\ = (\osd1|pixcnt\(5) & (!\osd1|pixcnt[4]~46\)) # (!\osd1|pixcnt\(5) & ((\osd1|pixcnt[4]~46\) # (GND)))
-- \osd1|pixcnt[5]~48\ = CARRY((!\osd1|pixcnt[4]~46\) # (!\osd1|pixcnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(5),
	datad => VCC,
	cin => \osd1|pixcnt[4]~46\,
	combout => \osd1|pixcnt[5]~47_combout\,
	cout => \osd1|pixcnt[5]~48\);

-- Location: FF_X18_Y22_N11
\osd1|pixcnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[5]~47_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(5));

-- Location: LCCOMB_X18_Y22_N12
\osd1|pixcnt[6]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[6]~49_combout\ = (\osd1|pixcnt\(6) & (\osd1|pixcnt[5]~48\ $ (GND))) # (!\osd1|pixcnt\(6) & (!\osd1|pixcnt[5]~48\ & VCC))
-- \osd1|pixcnt[6]~50\ = CARRY((\osd1|pixcnt\(6) & !\osd1|pixcnt[5]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(6),
	datad => VCC,
	cin => \osd1|pixcnt[5]~48\,
	combout => \osd1|pixcnt[6]~49_combout\,
	cout => \osd1|pixcnt[6]~50\);

-- Location: FF_X18_Y22_N13
\osd1|pixcnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[6]~49_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(6));

-- Location: LCCOMB_X18_Y22_N14
\osd1|pixcnt[7]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[7]~51_combout\ = (\osd1|pixcnt\(7) & (!\osd1|pixcnt[6]~50\)) # (!\osd1|pixcnt\(7) & ((\osd1|pixcnt[6]~50\) # (GND)))
-- \osd1|pixcnt[7]~52\ = CARRY((!\osd1|pixcnt[6]~50\) # (!\osd1|pixcnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|pixcnt\(7),
	datad => VCC,
	cin => \osd1|pixcnt[6]~50\,
	combout => \osd1|pixcnt[7]~51_combout\,
	cout => \osd1|pixcnt[7]~52\);

-- Location: FF_X18_Y22_N15
\osd1|pixcnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[7]~51_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(7));

-- Location: LCCOMB_X18_Y22_N16
\osd1|pixcnt[8]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[8]~53_combout\ = (\osd1|pixcnt\(8) & (\osd1|pixcnt[7]~52\ $ (GND))) # (!\osd1|pixcnt\(8) & (!\osd1|pixcnt[7]~52\ & VCC))
-- \osd1|pixcnt[8]~54\ = CARRY((\osd1|pixcnt\(8) & !\osd1|pixcnt[7]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|pixcnt\(8),
	datad => VCC,
	cin => \osd1|pixcnt[7]~52\,
	combout => \osd1|pixcnt[8]~53_combout\,
	cout => \osd1|pixcnt[8]~54\);

-- Location: FF_X18_Y22_N17
\osd1|pixcnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[8]~53_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(8));

-- Location: LCCOMB_X18_Y22_N18
\osd1|pixcnt[9]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[9]~55_combout\ = (\osd1|pixcnt\(9) & (!\osd1|pixcnt[8]~54\)) # (!\osd1|pixcnt\(9) & ((\osd1|pixcnt[8]~54\) # (GND)))
-- \osd1|pixcnt[9]~56\ = CARRY((!\osd1|pixcnt[8]~54\) # (!\osd1|pixcnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|pixcnt\(9),
	datad => VCC,
	cin => \osd1|pixcnt[8]~54\,
	combout => \osd1|pixcnt[9]~55_combout\,
	cout => \osd1|pixcnt[9]~56\);

-- Location: FF_X18_Y22_N19
\osd1|pixcnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[9]~55_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(9));

-- Location: LCCOMB_X18_Y22_N20
\osd1|pixcnt[10]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[10]~57_combout\ = (\osd1|pixcnt\(10) & (\osd1|pixcnt[9]~56\ $ (GND))) # (!\osd1|pixcnt\(10) & (!\osd1|pixcnt[9]~56\ & VCC))
-- \osd1|pixcnt[10]~58\ = CARRY((\osd1|pixcnt\(10) & !\osd1|pixcnt[9]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|pixcnt\(10),
	datad => VCC,
	cin => \osd1|pixcnt[9]~56\,
	combout => \osd1|pixcnt[10]~57_combout\,
	cout => \osd1|pixcnt[10]~58\);

-- Location: FF_X18_Y22_N21
\osd1|pixcnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[10]~57_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(10));

-- Location: LCCOMB_X18_Y22_N22
\osd1|pixcnt[11]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[11]~59_combout\ = (\osd1|pixcnt\(11) & (!\osd1|pixcnt[10]~58\)) # (!\osd1|pixcnt\(11) & ((\osd1|pixcnt[10]~58\) # (GND)))
-- \osd1|pixcnt[11]~60\ = CARRY((!\osd1|pixcnt[10]~58\) # (!\osd1|pixcnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(11),
	datad => VCC,
	cin => \osd1|pixcnt[10]~58\,
	combout => \osd1|pixcnt[11]~59_combout\,
	cout => \osd1|pixcnt[11]~60\);

-- Location: FF_X18_Y22_N23
\osd1|pixcnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[11]~59_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(11));

-- Location: LCCOMB_X18_Y22_N24
\osd1|pixcnt[12]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[12]~61_combout\ = (\osd1|pixcnt\(12) & (\osd1|pixcnt[11]~60\ $ (GND))) # (!\osd1|pixcnt\(12) & (!\osd1|pixcnt[11]~60\ & VCC))
-- \osd1|pixcnt[12]~62\ = CARRY((\osd1|pixcnt\(12) & !\osd1|pixcnt[11]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|pixcnt\(12),
	datad => VCC,
	cin => \osd1|pixcnt[11]~60\,
	combout => \osd1|pixcnt[12]~61_combout\,
	cout => \osd1|pixcnt[12]~62\);

-- Location: FF_X18_Y22_N25
\osd1|pixcnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[12]~61_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(12));

-- Location: LCCOMB_X18_Y22_N26
\osd1|pixcnt[13]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[13]~63_combout\ = (\osd1|pixcnt\(13) & (!\osd1|pixcnt[12]~62\)) # (!\osd1|pixcnt\(13) & ((\osd1|pixcnt[12]~62\) # (GND)))
-- \osd1|pixcnt[13]~64\ = CARRY((!\osd1|pixcnt[12]~62\) # (!\osd1|pixcnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(13),
	datad => VCC,
	cin => \osd1|pixcnt[12]~62\,
	combout => \osd1|pixcnt[13]~63_combout\,
	cout => \osd1|pixcnt[13]~64\);

-- Location: FF_X18_Y22_N27
\osd1|pixcnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[13]~63_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(13));

-- Location: LCCOMB_X18_Y22_N28
\osd1|pixcnt[14]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[14]~65_combout\ = (\osd1|pixcnt\(14) & (\osd1|pixcnt[13]~64\ $ (GND))) # (!\osd1|pixcnt\(14) & (!\osd1|pixcnt[13]~64\ & VCC))
-- \osd1|pixcnt[14]~66\ = CARRY((\osd1|pixcnt\(14) & !\osd1|pixcnt[13]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|pixcnt\(14),
	datad => VCC,
	cin => \osd1|pixcnt[13]~64\,
	combout => \osd1|pixcnt[14]~65_combout\,
	cout => \osd1|pixcnt[14]~66\);

-- Location: FF_X18_Y22_N29
\osd1|pixcnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[14]~65_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(14));

-- Location: LCCOMB_X18_Y22_N30
\osd1|pixcnt[15]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[15]~67_combout\ = (\osd1|pixcnt\(15) & (!\osd1|pixcnt[14]~66\)) # (!\osd1|pixcnt\(15) & ((\osd1|pixcnt[14]~66\) # (GND)))
-- \osd1|pixcnt[15]~68\ = CARRY((!\osd1|pixcnt[14]~66\) # (!\osd1|pixcnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(15),
	datad => VCC,
	cin => \osd1|pixcnt[14]~66\,
	combout => \osd1|pixcnt[15]~67_combout\,
	cout => \osd1|pixcnt[15]~68\);

-- Location: FF_X18_Y22_N31
\osd1|pixcnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[15]~67_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(15));

-- Location: LCCOMB_X18_Y21_N0
\osd1|pixcnt[16]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[16]~69_combout\ = (\osd1|pixcnt\(16) & (\osd1|pixcnt[15]~68\ $ (GND))) # (!\osd1|pixcnt\(16) & (!\osd1|pixcnt[15]~68\ & VCC))
-- \osd1|pixcnt[16]~70\ = CARRY((\osd1|pixcnt\(16) & !\osd1|pixcnt[15]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|pixcnt\(16),
	datad => VCC,
	cin => \osd1|pixcnt[15]~68\,
	combout => \osd1|pixcnt[16]~69_combout\,
	cout => \osd1|pixcnt[16]~70\);

-- Location: FF_X18_Y21_N1
\osd1|pixcnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[16]~69_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(16));

-- Location: LCCOMB_X18_Y21_N2
\osd1|pixcnt[17]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[17]~71_combout\ = (\osd1|pixcnt\(17) & (!\osd1|pixcnt[16]~70\)) # (!\osd1|pixcnt\(17) & ((\osd1|pixcnt[16]~70\) # (GND)))
-- \osd1|pixcnt[17]~72\ = CARRY((!\osd1|pixcnt[16]~70\) # (!\osd1|pixcnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|pixcnt\(17),
	datad => VCC,
	cin => \osd1|pixcnt[16]~70\,
	combout => \osd1|pixcnt[17]~71_combout\,
	cout => \osd1|pixcnt[17]~72\);

-- Location: FF_X18_Y21_N3
\osd1|pixcnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[17]~71_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(17));

-- Location: LCCOMB_X18_Y21_N4
\osd1|pixcnt[18]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|pixcnt[18]~73_combout\ = (\osd1|pixcnt\(18) & (\osd1|pixcnt[17]~72\ $ (GND))) # (!\osd1|pixcnt\(18) & (!\osd1|pixcnt[17]~72\ & VCC))
-- \osd1|pixcnt[18]~74\ = CARRY((\osd1|pixcnt\(18) & !\osd1|pixcnt[17]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|pixcnt\(18),
	datad => VCC,
	cin => \osd1|pixcnt[17]~72\,
	combout => \osd1|pixcnt[18]~73_combout\,
	cout => \osd1|pixcnt[18]~74\);

-- Location: FF_X18_Y21_N5
\osd1|pixcnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[18]~73_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(18));

-- Location: FF_X18_Y21_N7
\osd1|pixcnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|pixcnt[19]~75_combout\,
	sclr => \osd1|pixcnt[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|pixcnt\(19));

-- Location: LCCOMB_X17_Y21_N10
\osd1|WideNor0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|WideNor0~5_combout\ = (!\osd1|pixcnt\(19) & (!\osd1|pixcnt\(18) & (!\osd1|pixcnt\(16) & !\osd1|pixcnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(19),
	datab => \osd1|pixcnt\(18),
	datac => \osd1|pixcnt\(16),
	datad => \osd1|pixcnt\(17),
	combout => \osd1|WideNor0~5_combout\);

-- Location: LCCOMB_X17_Y21_N0
\osd1|WideNor0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|WideNor0~8_combout\ = (!\osd1|pixcnt\(28) & (!\osd1|pixcnt\(30) & (!\osd1|pixcnt\(31) & !\osd1|pixcnt\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(28),
	datab => \osd1|pixcnt\(30),
	datac => \osd1|pixcnt\(31),
	datad => \osd1|pixcnt\(29),
	combout => \osd1|WideNor0~8_combout\);

-- Location: LCCOMB_X17_Y21_N22
\osd1|WideNor0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|WideNor0~7_combout\ = (!\osd1|pixcnt\(27) & (!\osd1|pixcnt\(25) & (!\osd1|pixcnt\(26) & !\osd1|pixcnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(27),
	datab => \osd1|pixcnt\(25),
	datac => \osd1|pixcnt\(26),
	datad => \osd1|pixcnt\(24),
	combout => \osd1|WideNor0~7_combout\);

-- Location: LCCOMB_X17_Y21_N20
\osd1|WideNor0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|WideNor0~6_combout\ = (!\osd1|pixcnt\(21) & (!\osd1|pixcnt\(23) & (!\osd1|pixcnt\(20) & !\osd1|pixcnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(21),
	datab => \osd1|pixcnt\(23),
	datac => \osd1|pixcnt\(20),
	datad => \osd1|pixcnt\(22),
	combout => \osd1|WideNor0~6_combout\);

-- Location: LCCOMB_X17_Y21_N2
\osd1|WideNor0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|WideNor0~9_combout\ = (\osd1|WideNor0~5_combout\ & (\osd1|WideNor0~8_combout\ & (\osd1|WideNor0~7_combout\ & \osd1|WideNor0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|WideNor0~5_combout\,
	datab => \osd1|WideNor0~8_combout\,
	datac => \osd1|WideNor0~7_combout\,
	datad => \osd1|WideNor0~6_combout\,
	combout => \osd1|WideNor0~9_combout\);

-- Location: LCCOMB_X17_Y22_N26
\osd1|WideNor0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|WideNor0~1_combout\ = (!\osd1|pixcnt\(5) & (!\osd1|pixcnt\(6) & (!\osd1|pixcnt\(4) & !\osd1|pixcnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(5),
	datab => \osd1|pixcnt\(6),
	datac => \osd1|pixcnt\(4),
	datad => \osd1|pixcnt\(7),
	combout => \osd1|WideNor0~1_combout\);

-- Location: LCCOMB_X17_Y22_N28
\osd1|WideNor0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|WideNor0~2_combout\ = (!\osd1|pixcnt\(9) & (!\osd1|pixcnt\(11) & (!\osd1|pixcnt\(10) & !\osd1|pixcnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(9),
	datab => \osd1|pixcnt\(11),
	datac => \osd1|pixcnt\(10),
	datad => \osd1|pixcnt\(8),
	combout => \osd1|WideNor0~2_combout\);

-- Location: LCCOMB_X16_Y21_N24
\osd1|WideNor0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|WideNor0~3_combout\ = (!\osd1|pixcnt\(14) & (!\osd1|pixcnt\(13) & (!\osd1|pixcnt\(12) & !\osd1|pixcnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(14),
	datab => \osd1|pixcnt\(13),
	datac => \osd1|pixcnt\(12),
	datad => \osd1|pixcnt\(15),
	combout => \osd1|WideNor0~3_combout\);

-- Location: LCCOMB_X17_Y22_N24
\osd1|WideNor0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|WideNor0~0_combout\ = (!\osd1|pixcnt\(2) & (!\osd1|pixcnt\(0) & (!\osd1|pixcnt\(1) & !\osd1|pixcnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|pixcnt\(2),
	datab => \osd1|pixcnt\(0),
	datac => \osd1|pixcnt\(1),
	datad => \osd1|pixcnt\(3),
	combout => \osd1|WideNor0~0_combout\);

-- Location: LCCOMB_X17_Y22_N22
\osd1|WideNor0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|WideNor0~4_combout\ = (\osd1|WideNor0~1_combout\ & (\osd1|WideNor0~2_combout\ & (\osd1|WideNor0~3_combout\ & \osd1|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|WideNor0~1_combout\,
	datab => \osd1|WideNor0~2_combout\,
	datac => \osd1|WideNor0~3_combout\,
	datad => \osd1|WideNor0~0_combout\,
	combout => \osd1|WideNor0~4_combout\);

-- Location: LCCOMB_X17_Y21_N16
\osd1|ce_pix~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|ce_pix~2_combout\ = (\osd1|hs~q\ & (((\osd1|WideNor0~9_combout\ & \osd1|WideNor0~4_combout\)) # (!\vga1|hs~q\))) # (!\osd1|hs~q\ & (\osd1|WideNor0~9_combout\ & ((\osd1|WideNor0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|hs~q\,
	datab => \osd1|WideNor0~9_combout\,
	datac => \vga1|hs~q\,
	datad => \osd1|WideNor0~4_combout\,
	combout => \osd1|ce_pix~2_combout\);

-- Location: FF_X17_Y21_N17
\osd1|ce_pix\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|ce_pix~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|ce_pix~q\);

-- Location: FF_X30_Y19_N1
\osd1|vsD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|vsD~feeder_combout\,
	ena => \osd1|ce_pix~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vsD~q\);

-- Location: FF_X31_Y19_N31
\osd1|vsD2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|vsD~q\,
	sload => VCC,
	ena => \osd1|ce_pix~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vsD2~q\);

-- Location: LCCOMB_X30_Y19_N24
\osd1|v_cnt[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_cnt[0]~30_combout\ = \osd1|vsD~q\ $ (\osd1|vsD2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|vsD~q\,
	datac => \osd1|vsD2~q\,
	combout => \osd1|v_cnt[0]~30_combout\);

-- Location: LCCOMB_X31_Y19_N0
\osd1|hsD~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|hsD~feeder_combout\ = \vga1|hs~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga1|hs~q\,
	combout => \osd1|hsD~feeder_combout\);

-- Location: FF_X31_Y19_N1
\osd1|hsD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|hsD~feeder_combout\,
	ena => \osd1|ce_pix~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hsD~q\);

-- Location: LCCOMB_X35_Y21_N26
\osd1|hsD2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|hsD2~feeder_combout\ = \osd1|hsD~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \osd1|hsD~q\,
	combout => \osd1|hsD2~feeder_combout\);

-- Location: FF_X35_Y21_N27
\osd1|hsD2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|hsD2~feeder_combout\,
	ena => \osd1|ce_pix~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hsD2~q\);

-- Location: LCCOMB_X31_Y19_N28
\osd1|v_cnt[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_cnt[0]~31_combout\ = (\osd1|hsD~q\ & ((\osd1|vsD2~q\ $ (\osd1|vsD~q\)) # (!\osd1|hsD2~q\))) # (!\osd1|hsD~q\ & (\osd1|vsD2~q\ $ ((\osd1|vsD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|vsD2~q\,
	datab => \osd1|hsD~q\,
	datac => \osd1|vsD~q\,
	datad => \osd1|hsD2~q\,
	combout => \osd1|v_cnt[0]~31_combout\);

-- Location: LCCOMB_X30_Y19_N26
\osd1|v_cnt[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_cnt[0]~32_combout\ = (\osd1|ce_pix~q\ & \osd1|v_cnt[0]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|ce_pix~q\,
	datad => \osd1|v_cnt[0]~31_combout\,
	combout => \osd1|v_cnt[0]~32_combout\);

-- Location: FF_X30_Y19_N3
\osd1|v_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|v_cnt[0]~10_combout\,
	sclr => \osd1|v_cnt[0]~30_combout\,
	ena => \osd1|v_cnt[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|v_cnt\(0));

-- Location: LCCOMB_X30_Y19_N4
\osd1|v_cnt[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_cnt[1]~12_combout\ = (\osd1|v_cnt\(1) & (!\osd1|v_cnt[0]~11\)) # (!\osd1|v_cnt\(1) & ((\osd1|v_cnt[0]~11\) # (GND)))
-- \osd1|v_cnt[1]~13\ = CARRY((!\osd1|v_cnt[0]~11\) # (!\osd1|v_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|v_cnt\(1),
	datad => VCC,
	cin => \osd1|v_cnt[0]~11\,
	combout => \osd1|v_cnt[1]~12_combout\,
	cout => \osd1|v_cnt[1]~13\);

-- Location: FF_X30_Y19_N5
\osd1|v_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|v_cnt[1]~12_combout\,
	sclr => \osd1|v_cnt[0]~30_combout\,
	ena => \osd1|v_cnt[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|v_cnt\(1));

-- Location: LCCOMB_X30_Y19_N6
\osd1|v_cnt[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_cnt[2]~14_combout\ = (\osd1|v_cnt\(2) & (\osd1|v_cnt[1]~13\ $ (GND))) # (!\osd1|v_cnt\(2) & (!\osd1|v_cnt[1]~13\ & VCC))
-- \osd1|v_cnt[2]~15\ = CARRY((\osd1|v_cnt\(2) & !\osd1|v_cnt[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_cnt\(2),
	datad => VCC,
	cin => \osd1|v_cnt[1]~13\,
	combout => \osd1|v_cnt[2]~14_combout\,
	cout => \osd1|v_cnt[2]~15\);

-- Location: FF_X30_Y19_N7
\osd1|v_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|v_cnt[2]~14_combout\,
	sclr => \osd1|v_cnt[0]~30_combout\,
	ena => \osd1|v_cnt[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|v_cnt\(2));

-- Location: LCCOMB_X30_Y19_N8
\osd1|v_cnt[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_cnt[3]~16_combout\ = (\osd1|v_cnt\(3) & (!\osd1|v_cnt[2]~15\)) # (!\osd1|v_cnt\(3) & ((\osd1|v_cnt[2]~15\) # (GND)))
-- \osd1|v_cnt[3]~17\ = CARRY((!\osd1|v_cnt[2]~15\) # (!\osd1|v_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|v_cnt\(3),
	datad => VCC,
	cin => \osd1|v_cnt[2]~15\,
	combout => \osd1|v_cnt[3]~16_combout\,
	cout => \osd1|v_cnt[3]~17\);

-- Location: FF_X30_Y19_N9
\osd1|v_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|v_cnt[3]~16_combout\,
	sclr => \osd1|v_cnt[0]~30_combout\,
	ena => \osd1|v_cnt[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|v_cnt\(3));

-- Location: LCCOMB_X30_Y19_N10
\osd1|v_cnt[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_cnt[4]~18_combout\ = (\osd1|v_cnt\(4) & (\osd1|v_cnt[3]~17\ $ (GND))) # (!\osd1|v_cnt\(4) & (!\osd1|v_cnt[3]~17\ & VCC))
-- \osd1|v_cnt[4]~19\ = CARRY((\osd1|v_cnt\(4) & !\osd1|v_cnt[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_cnt\(4),
	datad => VCC,
	cin => \osd1|v_cnt[3]~17\,
	combout => \osd1|v_cnt[4]~18_combout\,
	cout => \osd1|v_cnt[4]~19\);

-- Location: FF_X30_Y19_N11
\osd1|v_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|v_cnt[4]~18_combout\,
	sclr => \osd1|v_cnt[0]~30_combout\,
	ena => \osd1|v_cnt[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|v_cnt\(4));

-- Location: LCCOMB_X30_Y19_N12
\osd1|v_cnt[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_cnt[5]~20_combout\ = (\osd1|v_cnt\(5) & (!\osd1|v_cnt[4]~19\)) # (!\osd1|v_cnt\(5) & ((\osd1|v_cnt[4]~19\) # (GND)))
-- \osd1|v_cnt[5]~21\ = CARRY((!\osd1|v_cnt[4]~19\) # (!\osd1|v_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_cnt\(5),
	datad => VCC,
	cin => \osd1|v_cnt[4]~19\,
	combout => \osd1|v_cnt[5]~20_combout\,
	cout => \osd1|v_cnt[5]~21\);

-- Location: FF_X30_Y19_N13
\osd1|v_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|v_cnt[5]~20_combout\,
	sclr => \osd1|v_cnt[0]~30_combout\,
	ena => \osd1|v_cnt[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|v_cnt\(5));

-- Location: LCCOMB_X30_Y19_N14
\osd1|v_cnt[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_cnt[6]~22_combout\ = (\osd1|v_cnt\(6) & (\osd1|v_cnt[5]~21\ $ (GND))) # (!\osd1|v_cnt\(6) & (!\osd1|v_cnt[5]~21\ & VCC))
-- \osd1|v_cnt[6]~23\ = CARRY((\osd1|v_cnt\(6) & !\osd1|v_cnt[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|v_cnt\(6),
	datad => VCC,
	cin => \osd1|v_cnt[5]~21\,
	combout => \osd1|v_cnt[6]~22_combout\,
	cout => \osd1|v_cnt[6]~23\);

-- Location: FF_X30_Y19_N15
\osd1|v_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|v_cnt[6]~22_combout\,
	sclr => \osd1|v_cnt[0]~30_combout\,
	ena => \osd1|v_cnt[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|v_cnt\(6));

-- Location: LCCOMB_X30_Y19_N16
\osd1|v_cnt[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_cnt[7]~24_combout\ = (\osd1|v_cnt\(7) & (!\osd1|v_cnt[6]~23\)) # (!\osd1|v_cnt\(7) & ((\osd1|v_cnt[6]~23\) # (GND)))
-- \osd1|v_cnt[7]~25\ = CARRY((!\osd1|v_cnt[6]~23\) # (!\osd1|v_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|v_cnt\(7),
	datad => VCC,
	cin => \osd1|v_cnt[6]~23\,
	combout => \osd1|v_cnt[7]~24_combout\,
	cout => \osd1|v_cnt[7]~25\);

-- Location: FF_X30_Y19_N17
\osd1|v_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|v_cnt[7]~24_combout\,
	sclr => \osd1|v_cnt[0]~30_combout\,
	ena => \osd1|v_cnt[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|v_cnt\(7));

-- Location: LCCOMB_X30_Y19_N18
\osd1|v_cnt[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_cnt[8]~26_combout\ = (\osd1|v_cnt\(8) & (\osd1|v_cnt[7]~25\ $ (GND))) # (!\osd1|v_cnt\(8) & (!\osd1|v_cnt[7]~25\ & VCC))
-- \osd1|v_cnt[8]~27\ = CARRY((\osd1|v_cnt\(8) & !\osd1|v_cnt[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|v_cnt\(8),
	datad => VCC,
	cin => \osd1|v_cnt[7]~25\,
	combout => \osd1|v_cnt[8]~26_combout\,
	cout => \osd1|v_cnt[8]~27\);

-- Location: FF_X30_Y19_N19
\osd1|v_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|v_cnt[8]~26_combout\,
	sclr => \osd1|v_cnt[0]~30_combout\,
	ena => \osd1|v_cnt[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|v_cnt\(8));

-- Location: LCCOMB_X30_Y19_N20
\osd1|v_cnt[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_cnt[9]~28_combout\ = \osd1|v_cnt\(9) $ (\osd1|v_cnt[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|v_cnt\(9),
	cin => \osd1|v_cnt[8]~27\,
	combout => \osd1|v_cnt[9]~28_combout\);

-- Location: FF_X30_Y19_N21
\osd1|v_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|v_cnt[9]~28_combout\,
	sclr => \osd1|v_cnt[0]~30_combout\,
	ena => \osd1|v_cnt[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|v_cnt\(9));

-- Location: LCCOMB_X30_Y19_N30
\osd1|vs_high[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|vs_high[9]~0_combout\ = (\osd1|ce_pix~q\ & (!\osd1|vsD~q\ & \osd1|vsD2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|ce_pix~q\,
	datab => \osd1|vsD~q\,
	datac => \osd1|vsD2~q\,
	combout => \osd1|vs_high[9]~0_combout\);

-- Location: FF_X30_Y18_N27
\osd1|vs_high[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|v_cnt\(9),
	sload => VCC,
	ena => \osd1|vs_high[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vs_high\(9));

-- Location: LCCOMB_X31_Y19_N30
\osd1|vs_low[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|vs_low[9]~0_combout\ = (\osd1|vsD~q\ & (\osd1|ce_pix~q\ & !\osd1|vsD2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|vsD~q\,
	datab => \osd1|ce_pix~q\,
	datac => \osd1|vsD2~q\,
	combout => \osd1|vs_low[9]~0_combout\);

-- Location: FF_X31_Y18_N5
\osd1|vs_low[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|v_cnt\(9),
	sload => VCC,
	ena => \osd1|vs_low[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vs_low\(9));

-- Location: FF_X30_Y18_N25
\osd1|vs_high[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|v_cnt\(8),
	sload => VCC,
	ena => \osd1|vs_high[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vs_high\(8));

-- Location: FF_X31_Y18_N27
\osd1|vs_low[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|v_cnt\(8),
	sload => VCC,
	ena => \osd1|vs_low[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vs_low\(8));

-- Location: FF_X30_Y18_N23
\osd1|vs_low[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|v_cnt\(7),
	sload => VCC,
	ena => \osd1|vs_low[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vs_low\(7));

-- Location: FF_X30_Y18_N1
\osd1|vs_high[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|v_cnt\(7),
	sload => VCC,
	ena => \osd1|vs_high[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vs_high\(7));

-- Location: FF_X31_Y18_N29
\osd1|vs_low[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|v_cnt\(6),
	sload => VCC,
	ena => \osd1|vs_low[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vs_low\(6));

-- Location: FF_X30_Y18_N21
\osd1|vs_high[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|v_cnt\(6),
	sload => VCC,
	ena => \osd1|vs_high[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vs_high\(6));

-- Location: FF_X30_Y18_N3
\osd1|vs_high[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|v_cnt\(5),
	sload => VCC,
	ena => \osd1|vs_high[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vs_high\(5));

-- Location: FF_X30_Y18_N19
\osd1|vs_low[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|v_cnt\(5),
	sload => VCC,
	ena => \osd1|vs_low[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vs_low\(5));

-- Location: FF_X31_Y18_N21
\osd1|vs_low[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|v_cnt\(4),
	sload => VCC,
	ena => \osd1|vs_low[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vs_low\(4));

-- Location: FF_X30_Y18_N17
\osd1|vs_high[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|v_cnt\(4),
	sload => VCC,
	ena => \osd1|vs_high[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vs_high\(4));

-- Location: FF_X30_Y18_N5
\osd1|vs_high[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|v_cnt\(3),
	sload => VCC,
	ena => \osd1|vs_high[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vs_high\(3));

-- Location: FF_X30_Y18_N15
\osd1|vs_low[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|v_cnt\(3),
	sload => VCC,
	ena => \osd1|vs_low[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vs_low\(3));

-- Location: FF_X30_Y18_N7
\osd1|vs_low[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|v_cnt\(2),
	sload => VCC,
	ena => \osd1|vs_low[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vs_low\(2));

-- Location: FF_X30_Y18_N13
\osd1|vs_high[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|v_cnt\(2),
	sload => VCC,
	ena => \osd1|vs_high[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vs_high\(2));

-- Location: FF_X30_Y18_N11
\osd1|vs_low[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|v_cnt\(1),
	sload => VCC,
	ena => \osd1|vs_low[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vs_low\(1));

-- Location: FF_X30_Y18_N29
\osd1|vs_high[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|v_cnt\(1),
	sload => VCC,
	ena => \osd1|vs_high[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vs_high\(1));

-- Location: FF_X30_Y18_N31
\osd1|vs_low[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|v_cnt\(0),
	sload => VCC,
	ena => \osd1|vs_low[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vs_low\(0));

-- Location: FF_X30_Y18_N9
\osd1|vs_high[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|v_cnt\(0),
	sload => VCC,
	ena => \osd1|vs_high[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|vs_high\(0));

-- Location: LCCOMB_X30_Y18_N8
\osd1|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan3~1_cout\ = CARRY((\osd1|vs_low\(0) & !\osd1|vs_high\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|vs_low\(0),
	datab => \osd1|vs_high\(0),
	datad => VCC,
	cout => \osd1|LessThan3~1_cout\);

-- Location: LCCOMB_X30_Y18_N10
\osd1|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan3~3_cout\ = CARRY((\osd1|vs_low\(1) & (\osd1|vs_high\(1) & !\osd1|LessThan3~1_cout\)) # (!\osd1|vs_low\(1) & ((\osd1|vs_high\(1)) # (!\osd1|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|vs_low\(1),
	datab => \osd1|vs_high\(1),
	datad => VCC,
	cin => \osd1|LessThan3~1_cout\,
	cout => \osd1|LessThan3~3_cout\);

-- Location: LCCOMB_X30_Y18_N12
\osd1|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan3~5_cout\ = CARRY((\osd1|vs_low\(2) & ((!\osd1|LessThan3~3_cout\) # (!\osd1|vs_high\(2)))) # (!\osd1|vs_low\(2) & (!\osd1|vs_high\(2) & !\osd1|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|vs_low\(2),
	datab => \osd1|vs_high\(2),
	datad => VCC,
	cin => \osd1|LessThan3~3_cout\,
	cout => \osd1|LessThan3~5_cout\);

-- Location: LCCOMB_X30_Y18_N14
\osd1|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan3~7_cout\ = CARRY((\osd1|vs_high\(3) & ((!\osd1|LessThan3~5_cout\) # (!\osd1|vs_low\(3)))) # (!\osd1|vs_high\(3) & (!\osd1|vs_low\(3) & !\osd1|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|vs_high\(3),
	datab => \osd1|vs_low\(3),
	datad => VCC,
	cin => \osd1|LessThan3~5_cout\,
	cout => \osd1|LessThan3~7_cout\);

-- Location: LCCOMB_X30_Y18_N16
\osd1|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan3~9_cout\ = CARRY((\osd1|vs_low\(4) & ((!\osd1|LessThan3~7_cout\) # (!\osd1|vs_high\(4)))) # (!\osd1|vs_low\(4) & (!\osd1|vs_high\(4) & !\osd1|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|vs_low\(4),
	datab => \osd1|vs_high\(4),
	datad => VCC,
	cin => \osd1|LessThan3~7_cout\,
	cout => \osd1|LessThan3~9_cout\);

-- Location: LCCOMB_X30_Y18_N18
\osd1|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan3~11_cout\ = CARRY((\osd1|vs_high\(5) & ((!\osd1|LessThan3~9_cout\) # (!\osd1|vs_low\(5)))) # (!\osd1|vs_high\(5) & (!\osd1|vs_low\(5) & !\osd1|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|vs_high\(5),
	datab => \osd1|vs_low\(5),
	datad => VCC,
	cin => \osd1|LessThan3~9_cout\,
	cout => \osd1|LessThan3~11_cout\);

-- Location: LCCOMB_X30_Y18_N20
\osd1|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan3~13_cout\ = CARRY((\osd1|vs_low\(6) & ((!\osd1|LessThan3~11_cout\) # (!\osd1|vs_high\(6)))) # (!\osd1|vs_low\(6) & (!\osd1|vs_high\(6) & !\osd1|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|vs_low\(6),
	datab => \osd1|vs_high\(6),
	datad => VCC,
	cin => \osd1|LessThan3~11_cout\,
	cout => \osd1|LessThan3~13_cout\);

-- Location: LCCOMB_X30_Y18_N22
\osd1|LessThan3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan3~15_cout\ = CARRY((\osd1|vs_low\(7) & (\osd1|vs_high\(7) & !\osd1|LessThan3~13_cout\)) # (!\osd1|vs_low\(7) & ((\osd1|vs_high\(7)) # (!\osd1|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|vs_low\(7),
	datab => \osd1|vs_high\(7),
	datad => VCC,
	cin => \osd1|LessThan3~13_cout\,
	cout => \osd1|LessThan3~15_cout\);

-- Location: LCCOMB_X30_Y18_N24
\osd1|LessThan3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan3~17_cout\ = CARRY((\osd1|vs_high\(8) & (\osd1|vs_low\(8) & !\osd1|LessThan3~15_cout\)) # (!\osd1|vs_high\(8) & ((\osd1|vs_low\(8)) # (!\osd1|LessThan3~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|vs_high\(8),
	datab => \osd1|vs_low\(8),
	datad => VCC,
	cin => \osd1|LessThan3~15_cout\,
	cout => \osd1|LessThan3~17_cout\);

-- Location: LCCOMB_X30_Y18_N26
\osd1|LessThan3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan3~18_combout\ = (\osd1|vs_high\(9) & (\osd1|LessThan3~17_cout\ & \osd1|vs_low\(9))) # (!\osd1|vs_high\(9) & ((\osd1|LessThan3~17_cout\) # (\osd1|vs_low\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|vs_high\(9),
	datad => \osd1|vs_low\(9),
	cin => \osd1|LessThan3~17_cout\,
	combout => \osd1|LessThan3~18_combout\);

-- Location: LCCOMB_X34_Y19_N8
\osd1|h_cnt[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|h_cnt[0]~10_combout\ = \osd1|h_cnt\(0) $ (VCC)
-- \osd1|h_cnt[0]~11\ = CARRY(\osd1|h_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|h_cnt\(0),
	datad => VCC,
	combout => \osd1|h_cnt[0]~10_combout\,
	cout => \osd1|h_cnt[0]~11\);

-- Location: LCCOMB_X34_Y19_N2
\osd1|h_cnt~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|h_cnt~30_combout\ = \osd1|hsD~q\ $ (\osd1|hsD2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|hsD~q\,
	datad => \osd1|hsD2~q\,
	combout => \osd1|h_cnt~30_combout\);

-- Location: FF_X34_Y19_N9
\osd1|h_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|h_cnt[0]~10_combout\,
	sclr => \osd1|h_cnt~30_combout\,
	ena => \osd1|ce_pix~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|h_cnt\(0));

-- Location: LCCOMB_X34_Y19_N10
\osd1|h_cnt[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|h_cnt[1]~12_combout\ = (\osd1|h_cnt\(1) & (!\osd1|h_cnt[0]~11\)) # (!\osd1|h_cnt\(1) & ((\osd1|h_cnt[0]~11\) # (GND)))
-- \osd1|h_cnt[1]~13\ = CARRY((!\osd1|h_cnt[0]~11\) # (!\osd1|h_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_cnt\(1),
	datad => VCC,
	cin => \osd1|h_cnt[0]~11\,
	combout => \osd1|h_cnt[1]~12_combout\,
	cout => \osd1|h_cnt[1]~13\);

-- Location: FF_X34_Y19_N11
\osd1|h_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|h_cnt[1]~12_combout\,
	sclr => \osd1|h_cnt~30_combout\,
	ena => \osd1|ce_pix~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|h_cnt\(1));

-- Location: LCCOMB_X34_Y19_N12
\osd1|h_cnt[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|h_cnt[2]~14_combout\ = (\osd1|h_cnt\(2) & (\osd1|h_cnt[1]~13\ $ (GND))) # (!\osd1|h_cnt\(2) & (!\osd1|h_cnt[1]~13\ & VCC))
-- \osd1|h_cnt[2]~15\ = CARRY((\osd1|h_cnt\(2) & !\osd1|h_cnt[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_cnt\(2),
	datad => VCC,
	cin => \osd1|h_cnt[1]~13\,
	combout => \osd1|h_cnt[2]~14_combout\,
	cout => \osd1|h_cnt[2]~15\);

-- Location: FF_X34_Y19_N13
\osd1|h_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|h_cnt[2]~14_combout\,
	sclr => \osd1|h_cnt~30_combout\,
	ena => \osd1|ce_pix~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|h_cnt\(2));

-- Location: LCCOMB_X34_Y19_N14
\osd1|h_cnt[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|h_cnt[3]~16_combout\ = (\osd1|h_cnt\(3) & (!\osd1|h_cnt[2]~15\)) # (!\osd1|h_cnt\(3) & ((\osd1|h_cnt[2]~15\) # (GND)))
-- \osd1|h_cnt[3]~17\ = CARRY((!\osd1|h_cnt[2]~15\) # (!\osd1|h_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|h_cnt\(3),
	datad => VCC,
	cin => \osd1|h_cnt[2]~15\,
	combout => \osd1|h_cnt[3]~16_combout\,
	cout => \osd1|h_cnt[3]~17\);

-- Location: FF_X34_Y19_N15
\osd1|h_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|h_cnt[3]~16_combout\,
	sclr => \osd1|h_cnt~30_combout\,
	ena => \osd1|ce_pix~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|h_cnt\(3));

-- Location: LCCOMB_X34_Y19_N16
\osd1|h_cnt[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|h_cnt[4]~18_combout\ = (\osd1|h_cnt\(4) & (\osd1|h_cnt[3]~17\ $ (GND))) # (!\osd1|h_cnt\(4) & (!\osd1|h_cnt[3]~17\ & VCC))
-- \osd1|h_cnt[4]~19\ = CARRY((\osd1|h_cnt\(4) & !\osd1|h_cnt[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|h_cnt\(4),
	datad => VCC,
	cin => \osd1|h_cnt[3]~17\,
	combout => \osd1|h_cnt[4]~18_combout\,
	cout => \osd1|h_cnt[4]~19\);

-- Location: FF_X34_Y19_N17
\osd1|h_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|h_cnt[4]~18_combout\,
	sclr => \osd1|h_cnt~30_combout\,
	ena => \osd1|ce_pix~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|h_cnt\(4));

-- Location: LCCOMB_X34_Y19_N18
\osd1|h_cnt[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|h_cnt[5]~20_combout\ = (\osd1|h_cnt\(5) & (!\osd1|h_cnt[4]~19\)) # (!\osd1|h_cnt\(5) & ((\osd1|h_cnt[4]~19\) # (GND)))
-- \osd1|h_cnt[5]~21\ = CARRY((!\osd1|h_cnt[4]~19\) # (!\osd1|h_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|h_cnt\(5),
	datad => VCC,
	cin => \osd1|h_cnt[4]~19\,
	combout => \osd1|h_cnt[5]~20_combout\,
	cout => \osd1|h_cnt[5]~21\);

-- Location: FF_X34_Y19_N19
\osd1|h_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|h_cnt[5]~20_combout\,
	sclr => \osd1|h_cnt~30_combout\,
	ena => \osd1|ce_pix~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|h_cnt\(5));

-- Location: LCCOMB_X34_Y19_N20
\osd1|h_cnt[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|h_cnt[6]~22_combout\ = (\osd1|h_cnt\(6) & (\osd1|h_cnt[5]~21\ $ (GND))) # (!\osd1|h_cnt\(6) & (!\osd1|h_cnt[5]~21\ & VCC))
-- \osd1|h_cnt[6]~23\ = CARRY((\osd1|h_cnt\(6) & !\osd1|h_cnt[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|h_cnt\(6),
	datad => VCC,
	cin => \osd1|h_cnt[5]~21\,
	combout => \osd1|h_cnt[6]~22_combout\,
	cout => \osd1|h_cnt[6]~23\);

-- Location: FF_X34_Y19_N21
\osd1|h_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|h_cnt[6]~22_combout\,
	sclr => \osd1|h_cnt~30_combout\,
	ena => \osd1|ce_pix~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|h_cnt\(6));

-- Location: LCCOMB_X34_Y19_N22
\osd1|h_cnt[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|h_cnt[7]~24_combout\ = (\osd1|h_cnt\(7) & (!\osd1|h_cnt[6]~23\)) # (!\osd1|h_cnt\(7) & ((\osd1|h_cnt[6]~23\) # (GND)))
-- \osd1|h_cnt[7]~25\ = CARRY((!\osd1|h_cnt[6]~23\) # (!\osd1|h_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_cnt\(7),
	datad => VCC,
	cin => \osd1|h_cnt[6]~23\,
	combout => \osd1|h_cnt[7]~24_combout\,
	cout => \osd1|h_cnt[7]~25\);

-- Location: FF_X34_Y19_N23
\osd1|h_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|h_cnt[7]~24_combout\,
	sclr => \osd1|h_cnt~30_combout\,
	ena => \osd1|ce_pix~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|h_cnt\(7));

-- Location: LCCOMB_X34_Y19_N24
\osd1|h_cnt[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|h_cnt[8]~26_combout\ = (\osd1|h_cnt\(8) & (\osd1|h_cnt[7]~25\ $ (GND))) # (!\osd1|h_cnt\(8) & (!\osd1|h_cnt[7]~25\ & VCC))
-- \osd1|h_cnt[8]~27\ = CARRY((\osd1|h_cnt\(8) & !\osd1|h_cnt[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|h_cnt\(8),
	datad => VCC,
	cin => \osd1|h_cnt[7]~25\,
	combout => \osd1|h_cnt[8]~26_combout\,
	cout => \osd1|h_cnt[8]~27\);

-- Location: FF_X34_Y19_N25
\osd1|h_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|h_cnt[8]~26_combout\,
	sclr => \osd1|h_cnt~30_combout\,
	ena => \osd1|ce_pix~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|h_cnt\(8));

-- Location: LCCOMB_X34_Y19_N26
\osd1|h_cnt[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|h_cnt[9]~28_combout\ = \osd1|h_cnt[8]~27\ $ (\osd1|h_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \osd1|h_cnt\(9),
	cin => \osd1|h_cnt[8]~27\,
	combout => \osd1|h_cnt[9]~28_combout\);

-- Location: FF_X34_Y19_N27
\osd1|h_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|h_cnt[9]~28_combout\,
	sclr => \osd1|h_cnt~30_combout\,
	ena => \osd1|ce_pix~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|h_cnt\(9));

-- Location: LCCOMB_X34_Y19_N0
\osd1|hs_high[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|hs_high[9]~0_combout\ = (\osd1|ce_pix~q\ & (\osd1|hsD2~q\ & !\osd1|hsD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|ce_pix~q\,
	datab => \osd1|hsD2~q\,
	datad => \osd1|hsD~q\,
	combout => \osd1|hs_high[9]~0_combout\);

-- Location: FF_X34_Y21_N25
\osd1|hs_high[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|h_cnt\(9),
	sload => VCC,
	ena => \osd1|hs_high[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hs_high\(9));

-- Location: LCCOMB_X35_Y21_N28
\osd1|hs_low[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|hs_low[9]~0_combout\ = (\osd1|ce_pix~q\ & (!\osd1|hsD2~q\ & \osd1|hsD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|ce_pix~q\,
	datac => \osd1|hsD2~q\,
	datad => \osd1|hsD~q\,
	combout => \osd1|hs_low[9]~0_combout\);

-- Location: FF_X35_Y21_N25
\osd1|hs_low[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|h_cnt\(9),
	sload => VCC,
	ena => \osd1|hs_low[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hs_low\(9));

-- Location: FF_X35_Y21_N21
\osd1|hs_low[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|h_cnt\(8),
	sload => VCC,
	ena => \osd1|hs_low[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hs_low\(8));

-- Location: FF_X34_Y21_N23
\osd1|hs_high[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|h_cnt\(8),
	sload => VCC,
	ena => \osd1|hs_high[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hs_high\(8));

-- Location: FF_X34_Y21_N1
\osd1|hs_high[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|h_cnt\(7),
	sload => VCC,
	ena => \osd1|hs_high[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hs_high\(7));

-- Location: FF_X34_Y21_N21
\osd1|hs_low[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|h_cnt\(7),
	sload => VCC,
	ena => \osd1|hs_low[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hs_low\(7));

-- Location: FF_X35_Y21_N31
\osd1|hs_low[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|h_cnt\(6),
	sload => VCC,
	ena => \osd1|hs_low[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hs_low\(6));

-- Location: FF_X34_Y21_N19
\osd1|hs_high[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|h_cnt\(6),
	sload => VCC,
	ena => \osd1|hs_high[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hs_high\(6));

-- Location: FF_X34_Y21_N27
\osd1|hs_high[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|h_cnt\(5),
	sload => VCC,
	ena => \osd1|hs_high[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hs_high\(5));

-- Location: FF_X34_Y21_N17
\osd1|hs_low[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|h_cnt\(5),
	sload => VCC,
	ena => \osd1|hs_low[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hs_low\(5));

-- Location: FF_X34_Y21_N15
\osd1|hs_high[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|h_cnt\(4),
	sload => VCC,
	ena => \osd1|hs_high[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hs_high\(4));

-- Location: FF_X35_Y21_N1
\osd1|hs_low[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|h_cnt\(4),
	sload => VCC,
	ena => \osd1|hs_low[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hs_low\(4));

-- Location: FF_X34_Y21_N13
\osd1|hs_low[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|h_cnt\(3),
	sload => VCC,
	ena => \osd1|hs_low[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hs_low\(3));

-- Location: FF_X34_Y21_N29
\osd1|hs_high[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|h_cnt\(3),
	sload => VCC,
	ena => \osd1|hs_high[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hs_high\(3));

-- Location: FF_X34_Y21_N11
\osd1|hs_high[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|h_cnt\(2),
	sload => VCC,
	ena => \osd1|hs_high[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hs_high\(2));

-- Location: LCCOMB_X34_Y21_N2
\osd1|hs_low[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|hs_low[2]~feeder_combout\ = \osd1|h_cnt\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \osd1|h_cnt\(2),
	combout => \osd1|hs_low[2]~feeder_combout\);

-- Location: FF_X34_Y21_N3
\osd1|hs_low[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \osd1|hs_low[2]~feeder_combout\,
	ena => \osd1|hs_low[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hs_low\(2));

-- Location: FF_X34_Y21_N5
\osd1|hs_high[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|h_cnt\(1),
	sload => VCC,
	ena => \osd1|hs_high[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hs_high\(1));

-- Location: FF_X34_Y21_N9
\osd1|hs_low[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|h_cnt\(1),
	sload => VCC,
	ena => \osd1|hs_low[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hs_low\(1));

-- Location: FF_X34_Y21_N7
\osd1|hs_high[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|h_cnt\(0),
	sload => VCC,
	ena => \osd1|hs_high[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hs_high\(0));

-- Location: FF_X34_Y21_N31
\osd1|hs_low[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \osd1|h_cnt\(0),
	sload => VCC,
	ena => \osd1|hs_low[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|hs_low\(0));

-- Location: LCCOMB_X34_Y21_N6
\osd1|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan2~1_cout\ = CARRY((!\osd1|hs_high\(0) & \osd1|hs_low\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|hs_high\(0),
	datab => \osd1|hs_low\(0),
	datad => VCC,
	cout => \osd1|LessThan2~1_cout\);

-- Location: LCCOMB_X34_Y21_N8
\osd1|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan2~3_cout\ = CARRY((\osd1|hs_high\(1) & ((!\osd1|LessThan2~1_cout\) # (!\osd1|hs_low\(1)))) # (!\osd1|hs_high\(1) & (!\osd1|hs_low\(1) & !\osd1|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|hs_high\(1),
	datab => \osd1|hs_low\(1),
	datad => VCC,
	cin => \osd1|LessThan2~1_cout\,
	cout => \osd1|LessThan2~3_cout\);

-- Location: LCCOMB_X34_Y21_N10
\osd1|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan2~5_cout\ = CARRY((\osd1|hs_high\(2) & (\osd1|hs_low\(2) & !\osd1|LessThan2~3_cout\)) # (!\osd1|hs_high\(2) & ((\osd1|hs_low\(2)) # (!\osd1|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|hs_high\(2),
	datab => \osd1|hs_low\(2),
	datad => VCC,
	cin => \osd1|LessThan2~3_cout\,
	cout => \osd1|LessThan2~5_cout\);

-- Location: LCCOMB_X34_Y21_N12
\osd1|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan2~7_cout\ = CARRY((\osd1|hs_low\(3) & (\osd1|hs_high\(3) & !\osd1|LessThan2~5_cout\)) # (!\osd1|hs_low\(3) & ((\osd1|hs_high\(3)) # (!\osd1|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|hs_low\(3),
	datab => \osd1|hs_high\(3),
	datad => VCC,
	cin => \osd1|LessThan2~5_cout\,
	cout => \osd1|LessThan2~7_cout\);

-- Location: LCCOMB_X34_Y21_N14
\osd1|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan2~9_cout\ = CARRY((\osd1|hs_high\(4) & (\osd1|hs_low\(4) & !\osd1|LessThan2~7_cout\)) # (!\osd1|hs_high\(4) & ((\osd1|hs_low\(4)) # (!\osd1|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|hs_high\(4),
	datab => \osd1|hs_low\(4),
	datad => VCC,
	cin => \osd1|LessThan2~7_cout\,
	cout => \osd1|LessThan2~9_cout\);

-- Location: LCCOMB_X34_Y21_N16
\osd1|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan2~11_cout\ = CARRY((\osd1|hs_high\(5) & ((!\osd1|LessThan2~9_cout\) # (!\osd1|hs_low\(5)))) # (!\osd1|hs_high\(5) & (!\osd1|hs_low\(5) & !\osd1|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|hs_high\(5),
	datab => \osd1|hs_low\(5),
	datad => VCC,
	cin => \osd1|LessThan2~9_cout\,
	cout => \osd1|LessThan2~11_cout\);

-- Location: LCCOMB_X34_Y21_N18
\osd1|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan2~13_cout\ = CARRY((\osd1|hs_low\(6) & ((!\osd1|LessThan2~11_cout\) # (!\osd1|hs_high\(6)))) # (!\osd1|hs_low\(6) & (!\osd1|hs_high\(6) & !\osd1|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|hs_low\(6),
	datab => \osd1|hs_high\(6),
	datad => VCC,
	cin => \osd1|LessThan2~11_cout\,
	cout => \osd1|LessThan2~13_cout\);

-- Location: LCCOMB_X34_Y21_N20
\osd1|LessThan2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan2~15_cout\ = CARRY((\osd1|hs_high\(7) & ((!\osd1|LessThan2~13_cout\) # (!\osd1|hs_low\(7)))) # (!\osd1|hs_high\(7) & (!\osd1|hs_low\(7) & !\osd1|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|hs_high\(7),
	datab => \osd1|hs_low\(7),
	datad => VCC,
	cin => \osd1|LessThan2~13_cout\,
	cout => \osd1|LessThan2~15_cout\);

-- Location: LCCOMB_X34_Y21_N22
\osd1|LessThan2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan2~17_cout\ = CARRY((\osd1|hs_low\(8) & ((!\osd1|LessThan2~15_cout\) # (!\osd1|hs_high\(8)))) # (!\osd1|hs_low\(8) & (!\osd1|hs_high\(8) & !\osd1|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|hs_low\(8),
	datab => \osd1|hs_high\(8),
	datad => VCC,
	cin => \osd1|LessThan2~15_cout\,
	cout => \osd1|LessThan2~17_cout\);

-- Location: LCCOMB_X34_Y21_N24
\osd1|LessThan2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan2~18_combout\ = (\osd1|hs_high\(9) & (\osd1|LessThan2~17_cout\ & \osd1|hs_low\(9))) # (!\osd1|hs_high\(9) & ((\osd1|LessThan2~17_cout\) # (\osd1|hs_low\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|hs_high\(9),
	datad => \osd1|hs_low\(9),
	cin => \osd1|LessThan2~17_cout\,
	combout => \osd1|LessThan2~18_combout\);

-- Location: LCCOMB_X29_Y14_N0
\osd1|osd_de~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|osd_de~0_combout\ = (\vga1|vs~q\ & (!\osd1|LessThan3~18_combout\ & (\vga1|hs~q\ $ (\osd1|LessThan2~18_combout\)))) # (!\vga1|vs~q\ & (\osd1|LessThan3~18_combout\ & (\vga1|hs~q\ $ (\osd1|LessThan2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|vs~q\,
	datab => \osd1|LessThan3~18_combout\,
	datac => \vga1|hs~q\,
	datad => \osd1|LessThan2~18_combout\,
	combout => \osd1|osd_de~0_combout\);

-- Location: LCCOMB_X31_Y18_N4
\osd1|dsp_height[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|dsp_height[9]~0_combout\ = (\osd1|LessThan3~18_combout\ & ((\osd1|vs_low\(9)))) # (!\osd1|LessThan3~18_combout\ & (\osd1|vs_high\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|vs_high\(9),
	datac => \osd1|vs_low\(9),
	datad => \osd1|LessThan3~18_combout\,
	combout => \osd1|dsp_height[9]~0_combout\);

-- Location: LCCOMB_X31_Y18_N26
\osd1|dsp_height[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|dsp_height[8]~1_combout\ = (\osd1|LessThan3~18_combout\ & (\osd1|vs_low\(8))) # (!\osd1|LessThan3~18_combout\ & ((\osd1|vs_high\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|LessThan3~18_combout\,
	datac => \osd1|vs_low\(8),
	datad => \osd1|vs_high\(8),
	combout => \osd1|dsp_height[8]~1_combout\);

-- Location: LCCOMB_X31_Y18_N0
\osd1|Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add12~0_combout\ = \osd1|dsp_height[8]~1_combout\ $ (VCC)
-- \osd1|Add12~1\ = CARRY(\osd1|dsp_height[8]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|dsp_height[8]~1_combout\,
	datad => VCC,
	combout => \osd1|Add12~0_combout\,
	cout => \osd1|Add12~1\);

-- Location: LCCOMB_X31_Y18_N2
\osd1|Add12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add12~2_combout\ = \osd1|dsp_height[9]~0_combout\ $ (!\osd1|Add12~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|dsp_height[9]~0_combout\,
	cin => \osd1|Add12~1\,
	combout => \osd1|Add12~2_combout\);

-- Location: LCCOMB_X30_Y18_N0
\osd1|dsp_height[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|dsp_height[7]~2_combout\ = (\osd1|LessThan3~18_combout\ & ((\osd1|vs_low\(7)))) # (!\osd1|LessThan3~18_combout\ & (\osd1|vs_high\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|LessThan3~18_combout\,
	datac => \osd1|vs_high\(7),
	datad => \osd1|vs_low\(7),
	combout => \osd1|dsp_height[7]~2_combout\);

-- Location: LCCOMB_X31_Y18_N28
\osd1|dsp_height[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|dsp_height[6]~3_combout\ = (\osd1|LessThan3~18_combout\ & (\osd1|vs_low\(6))) # (!\osd1|LessThan3~18_combout\ & ((\osd1|vs_high\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|LessThan3~18_combout\,
	datac => \osd1|vs_low\(6),
	datad => \osd1|vs_high\(6),
	combout => \osd1|dsp_height[6]~3_combout\);

-- Location: LCCOMB_X30_Y18_N2
\osd1|dsp_height[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|dsp_height[5]~4_combout\ = (\osd1|LessThan3~18_combout\ & (\osd1|vs_low\(5))) # (!\osd1|LessThan3~18_combout\ & ((\osd1|vs_high\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|vs_low\(5),
	datac => \osd1|vs_high\(5),
	datad => \osd1|LessThan3~18_combout\,
	combout => \osd1|dsp_height[5]~4_combout\);

-- Location: LCCOMB_X30_Y18_N30
\osd1|dsp_height[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|dsp_height[4]~5_combout\ = (\osd1|LessThan3~18_combout\ & (\osd1|vs_low\(4))) # (!\osd1|LessThan3~18_combout\ & ((\osd1|vs_high\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|vs_low\(4),
	datab => \osd1|LessThan3~18_combout\,
	datad => \osd1|vs_high\(4),
	combout => \osd1|dsp_height[4]~5_combout\);

-- Location: LCCOMB_X30_Y18_N4
\osd1|dsp_height[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|dsp_height[3]~6_combout\ = (\osd1|LessThan3~18_combout\ & (\osd1|vs_low\(3))) # (!\osd1|LessThan3~18_combout\ & ((\osd1|vs_high\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|vs_low\(3),
	datac => \osd1|vs_high\(3),
	datad => \osd1|LessThan3~18_combout\,
	combout => \osd1|dsp_height[3]~6_combout\);

-- Location: LCCOMB_X30_Y18_N6
\osd1|dsp_height[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|dsp_height[2]~7_combout\ = (\osd1|LessThan3~18_combout\ & (\osd1|vs_low\(2))) # (!\osd1|LessThan3~18_combout\ & ((\osd1|vs_high\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|LessThan3~18_combout\,
	datac => \osd1|vs_low\(2),
	datad => \osd1|vs_high\(2),
	combout => \osd1|dsp_height[2]~7_combout\);

-- Location: LCCOMB_X30_Y18_N28
\osd1|dsp_height[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|dsp_height[1]~8_combout\ = (\osd1|LessThan3~18_combout\ & ((\osd1|vs_low\(1)))) # (!\osd1|LessThan3~18_combout\ & (\osd1|vs_high\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|LessThan3~18_combout\,
	datac => \osd1|vs_high\(1),
	datad => \osd1|vs_low\(1),
	combout => \osd1|dsp_height[1]~8_combout\);

-- Location: LCCOMB_X31_Y18_N6
\osd1|v_osd_start[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_osd_start[0]~0_combout\ = \osd1|dsp_height[1]~8_combout\ $ (VCC)
-- \osd1|v_osd_start[0]~1\ = CARRY(\osd1|dsp_height[1]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|dsp_height[1]~8_combout\,
	datad => VCC,
	combout => \osd1|v_osd_start[0]~0_combout\,
	cout => \osd1|v_osd_start[0]~1\);

-- Location: LCCOMB_X31_Y18_N8
\osd1|v_osd_start[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_osd_start[1]~2_combout\ = (\osd1|dsp_height[2]~7_combout\ & (\osd1|v_osd_start[0]~1\ & VCC)) # (!\osd1|dsp_height[2]~7_combout\ & (!\osd1|v_osd_start[0]~1\))
-- \osd1|v_osd_start[1]~3\ = CARRY((!\osd1|dsp_height[2]~7_combout\ & !\osd1|v_osd_start[0]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|dsp_height[2]~7_combout\,
	datad => VCC,
	cin => \osd1|v_osd_start[0]~1\,
	combout => \osd1|v_osd_start[1]~2_combout\,
	cout => \osd1|v_osd_start[1]~3\);

-- Location: LCCOMB_X31_Y18_N10
\osd1|v_osd_start[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_osd_start[2]~4_combout\ = (\osd1|dsp_height[3]~6_combout\ & ((GND) # (!\osd1|v_osd_start[1]~3\))) # (!\osd1|dsp_height[3]~6_combout\ & (\osd1|v_osd_start[1]~3\ $ (GND)))
-- \osd1|v_osd_start[2]~5\ = CARRY((\osd1|dsp_height[3]~6_combout\) # (!\osd1|v_osd_start[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|dsp_height[3]~6_combout\,
	datad => VCC,
	cin => \osd1|v_osd_start[1]~3\,
	combout => \osd1|v_osd_start[2]~4_combout\,
	cout => \osd1|v_osd_start[2]~5\);

-- Location: LCCOMB_X31_Y18_N12
\osd1|v_osd_start[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_osd_start[3]~6_combout\ = (\osd1|dsp_height[4]~5_combout\ & (\osd1|v_osd_start[2]~5\ & VCC)) # (!\osd1|dsp_height[4]~5_combout\ & (!\osd1|v_osd_start[2]~5\))
-- \osd1|v_osd_start[3]~7\ = CARRY((!\osd1|dsp_height[4]~5_combout\ & !\osd1|v_osd_start[2]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|dsp_height[4]~5_combout\,
	datad => VCC,
	cin => \osd1|v_osd_start[2]~5\,
	combout => \osd1|v_osd_start[3]~6_combout\,
	cout => \osd1|v_osd_start[3]~7\);

-- Location: LCCOMB_X31_Y18_N14
\osd1|v_osd_start[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_osd_start[4]~8_combout\ = (\osd1|dsp_height[5]~4_combout\ & (\osd1|v_osd_start[3]~7\ $ (GND))) # (!\osd1|dsp_height[5]~4_combout\ & (!\osd1|v_osd_start[3]~7\ & VCC))
-- \osd1|v_osd_start[4]~9\ = CARRY((\osd1|dsp_height[5]~4_combout\ & !\osd1|v_osd_start[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|dsp_height[5]~4_combout\,
	datad => VCC,
	cin => \osd1|v_osd_start[3]~7\,
	combout => \osd1|v_osd_start[4]~8_combout\,
	cout => \osd1|v_osd_start[4]~9\);

-- Location: LCCOMB_X31_Y18_N16
\osd1|v_osd_start[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_osd_start[5]~10_combout\ = (\osd1|dsp_height[6]~3_combout\ & (!\osd1|v_osd_start[4]~9\)) # (!\osd1|dsp_height[6]~3_combout\ & ((\osd1|v_osd_start[4]~9\) # (GND)))
-- \osd1|v_osd_start[5]~11\ = CARRY((!\osd1|v_osd_start[4]~9\) # (!\osd1|dsp_height[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|dsp_height[6]~3_combout\,
	datad => VCC,
	cin => \osd1|v_osd_start[4]~9\,
	combout => \osd1|v_osd_start[5]~10_combout\,
	cout => \osd1|v_osd_start[5]~11\);

-- Location: LCCOMB_X31_Y18_N18
\osd1|v_osd_start[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_osd_start[6]~12_combout\ = (\osd1|dsp_height[7]~2_combout\ & (\osd1|v_osd_start[5]~11\ $ (GND))) # (!\osd1|dsp_height[7]~2_combout\ & (!\osd1|v_osd_start[5]~11\ & VCC))
-- \osd1|v_osd_start[6]~13\ = CARRY((\osd1|dsp_height[7]~2_combout\ & !\osd1|v_osd_start[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|dsp_height[7]~2_combout\,
	datad => VCC,
	cin => \osd1|v_osd_start[5]~11\,
	combout => \osd1|v_osd_start[6]~12_combout\,
	cout => \osd1|v_osd_start[6]~13\);

-- Location: LCCOMB_X31_Y18_N20
\osd1|v_osd_start[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_osd_start[7]~14_combout\ = (\osd1|Add12~0_combout\ & (!\osd1|v_osd_start[6]~13\)) # (!\osd1|Add12~0_combout\ & ((\osd1|v_osd_start[6]~13\) # (GND)))
-- \osd1|v_osd_start[7]~15\ = CARRY((!\osd1|v_osd_start[6]~13\) # (!\osd1|Add12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|Add12~0_combout\,
	datad => VCC,
	cin => \osd1|v_osd_start[6]~13\,
	combout => \osd1|v_osd_start[7]~14_combout\,
	cout => \osd1|v_osd_start[7]~15\);

-- Location: LCCOMB_X31_Y18_N22
\osd1|v_osd_start[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_osd_start[8]~16_combout\ = (\osd1|Add12~2_combout\ & (\osd1|v_osd_start[7]~15\ $ (GND))) # (!\osd1|Add12~2_combout\ & (!\osd1|v_osd_start[7]~15\ & VCC))
-- \osd1|v_osd_start[8]~17\ = CARRY((\osd1|Add12~2_combout\ & !\osd1|v_osd_start[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|Add12~2_combout\,
	datad => VCC,
	cin => \osd1|v_osd_start[7]~15\,
	combout => \osd1|v_osd_start[8]~16_combout\,
	cout => \osd1|v_osd_start[8]~17\);

-- Location: LCCOMB_X31_Y18_N24
\osd1|Add13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add13~0_combout\ = \osd1|v_osd_start[8]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \osd1|v_osd_start[8]~17\,
	combout => \osd1|Add13~0_combout\);

-- Location: LCCOMB_X31_Y19_N2
\osd1|v_osd_end[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_osd_end[8]~0_combout\ = \osd1|v_osd_start[8]~16_combout\ $ (VCC)
-- \osd1|v_osd_end[8]~1\ = CARRY(\osd1|v_osd_start[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_osd_start[8]~16_combout\,
	datad => VCC,
	combout => \osd1|v_osd_end[8]~0_combout\,
	cout => \osd1|v_osd_end[8]~1\);

-- Location: LCCOMB_X31_Y19_N4
\osd1|v_osd_end[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|v_osd_end[9]~2_combout\ = \osd1|Add13~0_combout\ $ (\osd1|v_osd_end[8]~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|Add13~0_combout\,
	cin => \osd1|v_osd_end[8]~1\,
	combout => \osd1|v_osd_end[9]~2_combout\);

-- Location: LCCOMB_X32_Y19_N6
\osd1|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan7~1_cout\ = CARRY((\osd1|v_osd_start[0]~0_combout\ & !\osd1|v_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_osd_start[0]~0_combout\,
	datab => \osd1|v_cnt\(0),
	datad => VCC,
	cout => \osd1|LessThan7~1_cout\);

-- Location: LCCOMB_X32_Y19_N8
\osd1|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan7~3_cout\ = CARRY((\osd1|v_cnt\(1) & ((!\osd1|LessThan7~1_cout\) # (!\osd1|v_osd_start[1]~2_combout\))) # (!\osd1|v_cnt\(1) & (!\osd1|v_osd_start[1]~2_combout\ & !\osd1|LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_cnt\(1),
	datab => \osd1|v_osd_start[1]~2_combout\,
	datad => VCC,
	cin => \osd1|LessThan7~1_cout\,
	cout => \osd1|LessThan7~3_cout\);

-- Location: LCCOMB_X32_Y19_N10
\osd1|LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan7~5_cout\ = CARRY((\osd1|v_cnt\(2) & (\osd1|v_osd_start[2]~4_combout\ & !\osd1|LessThan7~3_cout\)) # (!\osd1|v_cnt\(2) & ((\osd1|v_osd_start[2]~4_combout\) # (!\osd1|LessThan7~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_cnt\(2),
	datab => \osd1|v_osd_start[2]~4_combout\,
	datad => VCC,
	cin => \osd1|LessThan7~3_cout\,
	cout => \osd1|LessThan7~5_cout\);

-- Location: LCCOMB_X32_Y19_N12
\osd1|LessThan7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan7~7_cout\ = CARRY((\osd1|v_cnt\(3) & ((!\osd1|LessThan7~5_cout\) # (!\osd1|v_osd_start[3]~6_combout\))) # (!\osd1|v_cnt\(3) & (!\osd1|v_osd_start[3]~6_combout\ & !\osd1|LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_cnt\(3),
	datab => \osd1|v_osd_start[3]~6_combout\,
	datad => VCC,
	cin => \osd1|LessThan7~5_cout\,
	cout => \osd1|LessThan7~7_cout\);

-- Location: LCCOMB_X32_Y19_N14
\osd1|LessThan7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan7~9_cout\ = CARRY((\osd1|v_osd_start[4]~8_combout\ & ((!\osd1|LessThan7~7_cout\) # (!\osd1|v_cnt\(4)))) # (!\osd1|v_osd_start[4]~8_combout\ & (!\osd1|v_cnt\(4) & !\osd1|LessThan7~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_osd_start[4]~8_combout\,
	datab => \osd1|v_cnt\(4),
	datad => VCC,
	cin => \osd1|LessThan7~7_cout\,
	cout => \osd1|LessThan7~9_cout\);

-- Location: LCCOMB_X32_Y19_N16
\osd1|LessThan7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan7~11_cout\ = CARRY((\osd1|v_cnt\(5) & ((!\osd1|LessThan7~9_cout\) # (!\osd1|v_osd_start[5]~10_combout\))) # (!\osd1|v_cnt\(5) & (!\osd1|v_osd_start[5]~10_combout\ & !\osd1|LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_cnt\(5),
	datab => \osd1|v_osd_start[5]~10_combout\,
	datad => VCC,
	cin => \osd1|LessThan7~9_cout\,
	cout => \osd1|LessThan7~11_cout\);

-- Location: LCCOMB_X32_Y19_N18
\osd1|LessThan7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan7~13_cout\ = CARRY((\osd1|v_osd_start[6]~12_combout\ & ((!\osd1|LessThan7~11_cout\) # (!\osd1|v_cnt\(6)))) # (!\osd1|v_osd_start[6]~12_combout\ & (!\osd1|v_cnt\(6) & !\osd1|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_osd_start[6]~12_combout\,
	datab => \osd1|v_cnt\(6),
	datad => VCC,
	cin => \osd1|LessThan7~11_cout\,
	cout => \osd1|LessThan7~13_cout\);

-- Location: LCCOMB_X32_Y19_N20
\osd1|LessThan7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan7~15_cout\ = CARRY((\osd1|v_cnt\(7) & ((!\osd1|LessThan7~13_cout\) # (!\osd1|v_osd_start[7]~14_combout\))) # (!\osd1|v_cnt\(7) & (!\osd1|v_osd_start[7]~14_combout\ & !\osd1|LessThan7~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_cnt\(7),
	datab => \osd1|v_osd_start[7]~14_combout\,
	datad => VCC,
	cin => \osd1|LessThan7~13_cout\,
	cout => \osd1|LessThan7~15_cout\);

-- Location: LCCOMB_X32_Y19_N22
\osd1|LessThan7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan7~17_cout\ = CARRY((\osd1|v_osd_end[8]~0_combout\ & ((!\osd1|LessThan7~15_cout\) # (!\osd1|v_cnt\(8)))) # (!\osd1|v_osd_end[8]~0_combout\ & (!\osd1|v_cnt\(8) & !\osd1|LessThan7~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_osd_end[8]~0_combout\,
	datab => \osd1|v_cnt\(8),
	datad => VCC,
	cin => \osd1|LessThan7~15_cout\,
	cout => \osd1|LessThan7~17_cout\);

-- Location: LCCOMB_X32_Y19_N24
\osd1|LessThan7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan7~18_combout\ = (\osd1|v_cnt\(9) & (\osd1|v_osd_end[9]~2_combout\ & \osd1|LessThan7~17_cout\)) # (!\osd1|v_cnt\(9) & ((\osd1|v_osd_end[9]~2_combout\) # (\osd1|LessThan7~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_cnt\(9),
	datab => \osd1|v_osd_end[9]~2_combout\,
	cin => \osd1|LessThan7~17_cout\,
	combout => \osd1|LessThan7~18_combout\);

-- Location: LCCOMB_X31_Y19_N8
\osd1|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan6~1_cout\ = CARRY((!\osd1|v_cnt\(0) & \osd1|v_osd_start[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_cnt\(0),
	datab => \osd1|v_osd_start[0]~0_combout\,
	datad => VCC,
	cout => \osd1|LessThan6~1_cout\);

-- Location: LCCOMB_X31_Y19_N10
\osd1|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan6~3_cout\ = CARRY((\osd1|v_cnt\(1) & ((!\osd1|LessThan6~1_cout\) # (!\osd1|v_osd_start[1]~2_combout\))) # (!\osd1|v_cnt\(1) & (!\osd1|v_osd_start[1]~2_combout\ & !\osd1|LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_cnt\(1),
	datab => \osd1|v_osd_start[1]~2_combout\,
	datad => VCC,
	cin => \osd1|LessThan6~1_cout\,
	cout => \osd1|LessThan6~3_cout\);

-- Location: LCCOMB_X31_Y19_N12
\osd1|LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan6~5_cout\ = CARRY((\osd1|v_osd_start[2]~4_combout\ & ((!\osd1|LessThan6~3_cout\) # (!\osd1|v_cnt\(2)))) # (!\osd1|v_osd_start[2]~4_combout\ & (!\osd1|v_cnt\(2) & !\osd1|LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_osd_start[2]~4_combout\,
	datab => \osd1|v_cnt\(2),
	datad => VCC,
	cin => \osd1|LessThan6~3_cout\,
	cout => \osd1|LessThan6~5_cout\);

-- Location: LCCOMB_X31_Y19_N14
\osd1|LessThan6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan6~7_cout\ = CARRY((\osd1|v_cnt\(3) & ((!\osd1|LessThan6~5_cout\) # (!\osd1|v_osd_start[3]~6_combout\))) # (!\osd1|v_cnt\(3) & (!\osd1|v_osd_start[3]~6_combout\ & !\osd1|LessThan6~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_cnt\(3),
	datab => \osd1|v_osd_start[3]~6_combout\,
	datad => VCC,
	cin => \osd1|LessThan6~5_cout\,
	cout => \osd1|LessThan6~7_cout\);

-- Location: LCCOMB_X31_Y19_N16
\osd1|LessThan6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan6~9_cout\ = CARRY((\osd1|v_cnt\(4) & (\osd1|v_osd_start[4]~8_combout\ & !\osd1|LessThan6~7_cout\)) # (!\osd1|v_cnt\(4) & ((\osd1|v_osd_start[4]~8_combout\) # (!\osd1|LessThan6~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_cnt\(4),
	datab => \osd1|v_osd_start[4]~8_combout\,
	datad => VCC,
	cin => \osd1|LessThan6~7_cout\,
	cout => \osd1|LessThan6~9_cout\);

-- Location: LCCOMB_X31_Y19_N18
\osd1|LessThan6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan6~11_cout\ = CARRY((\osd1|v_cnt\(5) & ((!\osd1|LessThan6~9_cout\) # (!\osd1|v_osd_start[5]~10_combout\))) # (!\osd1|v_cnt\(5) & (!\osd1|v_osd_start[5]~10_combout\ & !\osd1|LessThan6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_cnt\(5),
	datab => \osd1|v_osd_start[5]~10_combout\,
	datad => VCC,
	cin => \osd1|LessThan6~9_cout\,
	cout => \osd1|LessThan6~11_cout\);

-- Location: LCCOMB_X31_Y19_N20
\osd1|LessThan6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan6~13_cout\ = CARRY((\osd1|v_cnt\(6) & (\osd1|v_osd_start[6]~12_combout\ & !\osd1|LessThan6~11_cout\)) # (!\osd1|v_cnt\(6) & ((\osd1|v_osd_start[6]~12_combout\) # (!\osd1|LessThan6~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_cnt\(6),
	datab => \osd1|v_osd_start[6]~12_combout\,
	datad => VCC,
	cin => \osd1|LessThan6~11_cout\,
	cout => \osd1|LessThan6~13_cout\);

-- Location: LCCOMB_X31_Y19_N22
\osd1|LessThan6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan6~15_cout\ = CARRY((\osd1|v_cnt\(7) & ((!\osd1|LessThan6~13_cout\) # (!\osd1|v_osd_start[7]~14_combout\))) # (!\osd1|v_cnt\(7) & (!\osd1|v_osd_start[7]~14_combout\ & !\osd1|LessThan6~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_cnt\(7),
	datab => \osd1|v_osd_start[7]~14_combout\,
	datad => VCC,
	cin => \osd1|LessThan6~13_cout\,
	cout => \osd1|LessThan6~15_cout\);

-- Location: LCCOMB_X31_Y19_N24
\osd1|LessThan6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan6~17_cout\ = CARRY((\osd1|v_osd_start[8]~16_combout\ & ((!\osd1|LessThan6~15_cout\) # (!\osd1|v_cnt\(8)))) # (!\osd1|v_osd_start[8]~16_combout\ & (!\osd1|v_cnt\(8) & !\osd1|LessThan6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_osd_start[8]~16_combout\,
	datab => \osd1|v_cnt\(8),
	datad => VCC,
	cin => \osd1|LessThan6~15_cout\,
	cout => \osd1|LessThan6~17_cout\);

-- Location: LCCOMB_X31_Y19_N26
\osd1|LessThan6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan6~18_combout\ = (\osd1|v_cnt\(9) & (\osd1|Add13~0_combout\ & \osd1|LessThan6~17_cout\)) # (!\osd1|v_cnt\(9) & ((\osd1|Add13~0_combout\) # (\osd1|LessThan6~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_cnt\(9),
	datab => \osd1|Add13~0_combout\,
	cin => \osd1|LessThan6~17_cout\,
	combout => \osd1|LessThan6~18_combout\);

-- Location: LCCOMB_X35_Y18_N0
\osd1|osd_enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|osd_enable~0_combout\ = (!\osd1|sbuf\(6) & (\osd1|sbuf\(5) & (!\osd1|sbuf\(3) & !\osd1|sbuf\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|sbuf\(6),
	datab => \osd1|sbuf\(5),
	datac => \osd1|sbuf\(3),
	datad => \osd1|sbuf\(4),
	combout => \osd1|osd_enable~0_combout\);

-- Location: LCCOMB_X35_Y18_N24
\osd1|osd_enable~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|osd_enable~1_combout\ = (\osd1|cmd[7]~0_combout\ & ((\osd1|osd_enable~0_combout\ & (!\stm_b15_io~input_o\)) # (!\osd1|osd_enable~0_combout\ & ((\osd1|osd_enable~q\))))) # (!\osd1|cmd[7]~0_combout\ & (((\osd1|osd_enable~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stm_b15_io~input_o\,
	datab => \osd1|cmd[7]~0_combout\,
	datac => \osd1|osd_enable~q\,
	datad => \osd1|osd_enable~0_combout\,
	combout => \osd1|osd_enable~1_combout\);

-- Location: FF_X35_Y18_N25
\osd1|osd_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|osd_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|osd_enable~q\);

-- Location: LCCOMB_X35_Y21_N24
\osd1|dsp_width[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|dsp_width[9]~1_combout\ = (\osd1|LessThan2~18_combout\ & ((\osd1|hs_low\(9)))) # (!\osd1|LessThan2~18_combout\ & (\osd1|hs_high\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|hs_high\(9),
	datac => \osd1|hs_low\(9),
	datad => \osd1|LessThan2~18_combout\,
	combout => \osd1|dsp_width[9]~1_combout\);

-- Location: LCCOMB_X35_Y21_N20
\osd1|dsp_width[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|dsp_width[8]~0_combout\ = (\osd1|LessThan2~18_combout\ & ((\osd1|hs_low\(8)))) # (!\osd1|LessThan2~18_combout\ & (\osd1|hs_high\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|hs_high\(8),
	datac => \osd1|hs_low\(8),
	datad => \osd1|LessThan2~18_combout\,
	combout => \osd1|dsp_width[8]~0_combout\);

-- Location: LCCOMB_X34_Y21_N0
\osd1|dsp_width[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|dsp_width[7]~2_combout\ = (\osd1|LessThan2~18_combout\ & (\osd1|hs_low\(7))) # (!\osd1|LessThan2~18_combout\ & ((\osd1|hs_high\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|hs_low\(7),
	datac => \osd1|hs_high\(7),
	datad => \osd1|LessThan2~18_combout\,
	combout => \osd1|dsp_width[7]~2_combout\);

-- Location: LCCOMB_X35_Y21_N30
\osd1|dsp_width[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|dsp_width[6]~3_combout\ = (\osd1|LessThan2~18_combout\ & ((\osd1|hs_low\(6)))) # (!\osd1|LessThan2~18_combout\ & (\osd1|hs_high\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|hs_high\(6),
	datac => \osd1|hs_low\(6),
	datad => \osd1|LessThan2~18_combout\,
	combout => \osd1|dsp_width[6]~3_combout\);

-- Location: LCCOMB_X34_Y21_N26
\osd1|dsp_width[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|dsp_width[5]~4_combout\ = (\osd1|LessThan2~18_combout\ & (\osd1|hs_low\(5))) # (!\osd1|LessThan2~18_combout\ & ((\osd1|hs_high\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|hs_low\(5),
	datac => \osd1|hs_high\(5),
	datad => \osd1|LessThan2~18_combout\,
	combout => \osd1|dsp_width[5]~4_combout\);

-- Location: LCCOMB_X35_Y21_N0
\osd1|dsp_width[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|dsp_width[4]~5_combout\ = (\osd1|LessThan2~18_combout\ & ((\osd1|hs_low\(4)))) # (!\osd1|LessThan2~18_combout\ & (\osd1|hs_high\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|hs_high\(4),
	datac => \osd1|hs_low\(4),
	datad => \osd1|LessThan2~18_combout\,
	combout => \osd1|dsp_width[4]~5_combout\);

-- Location: LCCOMB_X34_Y21_N28
\osd1|dsp_width[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|dsp_width[3]~6_combout\ = (\osd1|LessThan2~18_combout\ & (\osd1|hs_low\(3))) # (!\osd1|LessThan2~18_combout\ & ((\osd1|hs_high\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|hs_low\(3),
	datac => \osd1|hs_high\(3),
	datad => \osd1|LessThan2~18_combout\,
	combout => \osd1|dsp_width[3]~6_combout\);

-- Location: LCCOMB_X34_Y21_N30
\osd1|dsp_width[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|dsp_width[2]~7_combout\ = (\osd1|LessThan2~18_combout\ & ((\osd1|hs_low\(2)))) # (!\osd1|LessThan2~18_combout\ & (\osd1|hs_high\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|hs_high\(2),
	datab => \osd1|hs_low\(2),
	datad => \osd1|LessThan2~18_combout\,
	combout => \osd1|dsp_width[2]~7_combout\);

-- Location: LCCOMB_X35_Y21_N2
\osd1|h_osd_end[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|h_osd_end[1]~0_combout\ = \osd1|dsp_width[2]~7_combout\ $ (VCC)
-- \osd1|h_osd_end[1]~1\ = CARRY(\osd1|dsp_width[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|dsp_width[2]~7_combout\,
	datad => VCC,
	combout => \osd1|h_osd_end[1]~0_combout\,
	cout => \osd1|h_osd_end[1]~1\);

-- Location: LCCOMB_X35_Y21_N4
\osd1|h_osd_end[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|h_osd_end[2]~2_combout\ = (\osd1|dsp_width[3]~6_combout\ & (!\osd1|h_osd_end[1]~1\)) # (!\osd1|dsp_width[3]~6_combout\ & ((\osd1|h_osd_end[1]~1\) # (GND)))
-- \osd1|h_osd_end[2]~3\ = CARRY((!\osd1|h_osd_end[1]~1\) # (!\osd1|dsp_width[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|dsp_width[3]~6_combout\,
	datad => VCC,
	cin => \osd1|h_osd_end[1]~1\,
	combout => \osd1|h_osd_end[2]~2_combout\,
	cout => \osd1|h_osd_end[2]~3\);

-- Location: LCCOMB_X35_Y21_N6
\osd1|h_osd_end[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|h_osd_end[3]~4_combout\ = (\osd1|dsp_width[4]~5_combout\ & (\osd1|h_osd_end[2]~3\ $ (GND))) # (!\osd1|dsp_width[4]~5_combout\ & (!\osd1|h_osd_end[2]~3\ & VCC))
-- \osd1|h_osd_end[3]~5\ = CARRY((\osd1|dsp_width[4]~5_combout\ & !\osd1|h_osd_end[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|dsp_width[4]~5_combout\,
	datad => VCC,
	cin => \osd1|h_osd_end[2]~3\,
	combout => \osd1|h_osd_end[3]~4_combout\,
	cout => \osd1|h_osd_end[3]~5\);

-- Location: LCCOMB_X35_Y21_N8
\osd1|h_osd_end[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|h_osd_end[4]~6_combout\ = (\osd1|dsp_width[5]~4_combout\ & (\osd1|h_osd_end[3]~5\ & VCC)) # (!\osd1|dsp_width[5]~4_combout\ & (!\osd1|h_osd_end[3]~5\))
-- \osd1|h_osd_end[4]~7\ = CARRY((!\osd1|dsp_width[5]~4_combout\ & !\osd1|h_osd_end[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|dsp_width[5]~4_combout\,
	datad => VCC,
	cin => \osd1|h_osd_end[3]~5\,
	combout => \osd1|h_osd_end[4]~6_combout\,
	cout => \osd1|h_osd_end[4]~7\);

-- Location: LCCOMB_X35_Y21_N10
\osd1|h_osd_end[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|h_osd_end[5]~8_combout\ = (\osd1|dsp_width[6]~3_combout\ & (\osd1|h_osd_end[4]~7\ $ (GND))) # (!\osd1|dsp_width[6]~3_combout\ & (!\osd1|h_osd_end[4]~7\ & VCC))
-- \osd1|h_osd_end[5]~9\ = CARRY((\osd1|dsp_width[6]~3_combout\ & !\osd1|h_osd_end[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|dsp_width[6]~3_combout\,
	datad => VCC,
	cin => \osd1|h_osd_end[4]~7\,
	combout => \osd1|h_osd_end[5]~8_combout\,
	cout => \osd1|h_osd_end[5]~9\);

-- Location: LCCOMB_X35_Y21_N12
\osd1|h_osd_end[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|h_osd_end[6]~10_combout\ = (\osd1|dsp_width[7]~2_combout\ & (!\osd1|h_osd_end[5]~9\)) # (!\osd1|dsp_width[7]~2_combout\ & ((\osd1|h_osd_end[5]~9\) # (GND)))
-- \osd1|h_osd_end[6]~11\ = CARRY((!\osd1|h_osd_end[5]~9\) # (!\osd1|dsp_width[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|dsp_width[7]~2_combout\,
	datad => VCC,
	cin => \osd1|h_osd_end[5]~9\,
	combout => \osd1|h_osd_end[6]~10_combout\,
	cout => \osd1|h_osd_end[6]~11\);

-- Location: LCCOMB_X35_Y21_N14
\osd1|h_osd_end[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|h_osd_end[7]~12_combout\ = (\osd1|dsp_width[8]~0_combout\ & (!\osd1|h_osd_end[6]~11\ & VCC)) # (!\osd1|dsp_width[8]~0_combout\ & (\osd1|h_osd_end[6]~11\ $ (GND)))
-- \osd1|h_osd_end[7]~13\ = CARRY((!\osd1|dsp_width[8]~0_combout\ & !\osd1|h_osd_end[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|dsp_width[8]~0_combout\,
	datad => VCC,
	cin => \osd1|h_osd_end[6]~11\,
	combout => \osd1|h_osd_end[7]~12_combout\,
	cout => \osd1|h_osd_end[7]~13\);

-- Location: LCCOMB_X35_Y21_N16
\osd1|h_osd_start[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|h_osd_start[8]~0_combout\ = (\osd1|h_osd_end[7]~13\ & (\osd1|dsp_width[9]~1_combout\ $ ((\osd1|dsp_width[8]~0_combout\)))) # (!\osd1|h_osd_end[7]~13\ & ((\osd1|dsp_width[9]~1_combout\ $ (!\osd1|dsp_width[8]~0_combout\)) # (GND)))
-- \osd1|h_osd_start[8]~1\ = CARRY((\osd1|dsp_width[9]~1_combout\ $ (\osd1|dsp_width[8]~0_combout\)) # (!\osd1|h_osd_end[7]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|dsp_width[9]~1_combout\,
	datab => \osd1|dsp_width[8]~0_combout\,
	datad => VCC,
	cin => \osd1|h_osd_end[7]~13\,
	combout => \osd1|h_osd_start[8]~0_combout\,
	cout => \osd1|h_osd_start[8]~1\);

-- Location: LCCOMB_X35_Y21_N18
\osd1|Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add10~0_combout\ = !\osd1|h_osd_start[8]~1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \osd1|h_osd_start[8]~1\,
	combout => \osd1|Add10~0_combout\);

-- Location: LCCOMB_X34_Y21_N4
\osd1|h_osd_end[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|h_osd_end[0]~14_combout\ = (\osd1|LessThan2~18_combout\ & (\osd1|hs_low\(1))) # (!\osd1|LessThan2~18_combout\ & ((\osd1|hs_high\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|hs_low\(1),
	datac => \osd1|hs_high\(1),
	datad => \osd1|LessThan2~18_combout\,
	combout => \osd1|h_osd_end[0]~14_combout\);

-- Location: LCCOMB_X35_Y19_N6
\osd1|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan4~1_cout\ = CARRY((!\osd1|h_cnt\(0) & \osd1|h_osd_end[0]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_cnt\(0),
	datab => \osd1|h_osd_end[0]~14_combout\,
	datad => VCC,
	cout => \osd1|LessThan4~1_cout\);

-- Location: LCCOMB_X35_Y19_N8
\osd1|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan4~3_cout\ = CARRY((\osd1|h_cnt\(1) & ((!\osd1|LessThan4~1_cout\) # (!\osd1|h_osd_end[1]~0_combout\))) # (!\osd1|h_cnt\(1) & (!\osd1|h_osd_end[1]~0_combout\ & !\osd1|LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_cnt\(1),
	datab => \osd1|h_osd_end[1]~0_combout\,
	datad => VCC,
	cin => \osd1|LessThan4~1_cout\,
	cout => \osd1|LessThan4~3_cout\);

-- Location: LCCOMB_X35_Y19_N10
\osd1|LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan4~5_cout\ = CARRY((\osd1|h_osd_end[2]~2_combout\ & ((!\osd1|LessThan4~3_cout\) # (!\osd1|h_cnt\(2)))) # (!\osd1|h_osd_end[2]~2_combout\ & (!\osd1|h_cnt\(2) & !\osd1|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_osd_end[2]~2_combout\,
	datab => \osd1|h_cnt\(2),
	datad => VCC,
	cin => \osd1|LessThan4~3_cout\,
	cout => \osd1|LessThan4~5_cout\);

-- Location: LCCOMB_X35_Y19_N12
\osd1|LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan4~7_cout\ = CARRY((\osd1|h_osd_end[3]~4_combout\ & (\osd1|h_cnt\(3) & !\osd1|LessThan4~5_cout\)) # (!\osd1|h_osd_end[3]~4_combout\ & ((\osd1|h_cnt\(3)) # (!\osd1|LessThan4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_osd_end[3]~4_combout\,
	datab => \osd1|h_cnt\(3),
	datad => VCC,
	cin => \osd1|LessThan4~5_cout\,
	cout => \osd1|LessThan4~7_cout\);

-- Location: LCCOMB_X35_Y19_N14
\osd1|LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan4~9_cout\ = CARRY((\osd1|h_cnt\(4) & (\osd1|h_osd_end[4]~6_combout\ & !\osd1|LessThan4~7_cout\)) # (!\osd1|h_cnt\(4) & ((\osd1|h_osd_end[4]~6_combout\) # (!\osd1|LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_cnt\(4),
	datab => \osd1|h_osd_end[4]~6_combout\,
	datad => VCC,
	cin => \osd1|LessThan4~7_cout\,
	cout => \osd1|LessThan4~9_cout\);

-- Location: LCCOMB_X35_Y19_N16
\osd1|LessThan4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan4~11_cout\ = CARRY((\osd1|h_cnt\(5) & ((!\osd1|LessThan4~9_cout\) # (!\osd1|h_osd_end[5]~8_combout\))) # (!\osd1|h_cnt\(5) & (!\osd1|h_osd_end[5]~8_combout\ & !\osd1|LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_cnt\(5),
	datab => \osd1|h_osd_end[5]~8_combout\,
	datad => VCC,
	cin => \osd1|LessThan4~9_cout\,
	cout => \osd1|LessThan4~11_cout\);

-- Location: LCCOMB_X35_Y19_N18
\osd1|LessThan4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan4~13_cout\ = CARRY((\osd1|h_osd_end[6]~10_combout\ & ((!\osd1|LessThan4~11_cout\) # (!\osd1|h_cnt\(6)))) # (!\osd1|h_osd_end[6]~10_combout\ & (!\osd1|h_cnt\(6) & !\osd1|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_osd_end[6]~10_combout\,
	datab => \osd1|h_cnt\(6),
	datad => VCC,
	cin => \osd1|LessThan4~11_cout\,
	cout => \osd1|LessThan4~13_cout\);

-- Location: LCCOMB_X35_Y19_N20
\osd1|LessThan4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan4~15_cout\ = CARRY((\osd1|h_cnt\(7) & ((!\osd1|LessThan4~13_cout\) # (!\osd1|h_osd_end[7]~12_combout\))) # (!\osd1|h_cnt\(7) & (!\osd1|h_osd_end[7]~12_combout\ & !\osd1|LessThan4~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_cnt\(7),
	datab => \osd1|h_osd_end[7]~12_combout\,
	datad => VCC,
	cin => \osd1|LessThan4~13_cout\,
	cout => \osd1|LessThan4~15_cout\);

-- Location: LCCOMB_X35_Y19_N22
\osd1|LessThan4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan4~17_cout\ = CARRY((\osd1|h_cnt\(8) & (\osd1|h_osd_start[8]~0_combout\ & !\osd1|LessThan4~15_cout\)) # (!\osd1|h_cnt\(8) & ((\osd1|h_osd_start[8]~0_combout\) # (!\osd1|LessThan4~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_cnt\(8),
	datab => \osd1|h_osd_start[8]~0_combout\,
	datad => VCC,
	cin => \osd1|LessThan4~15_cout\,
	cout => \osd1|LessThan4~17_cout\);

-- Location: LCCOMB_X35_Y19_N24
\osd1|LessThan4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan4~18_combout\ = (\osd1|h_cnt\(9) & (\osd1|LessThan4~17_cout\ & \osd1|Add10~0_combout\)) # (!\osd1|h_cnt\(9) & ((\osd1|LessThan4~17_cout\) # (\osd1|Add10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_cnt\(9),
	datad => \osd1|Add10~0_combout\,
	cin => \osd1|LessThan4~17_cout\,
	combout => \osd1|LessThan4~18_combout\);

-- Location: LCCOMB_X35_Y20_N28
\osd1|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add11~0_combout\ = \osd1|Add10~0_combout\ $ (\osd1|h_osd_start[8]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \osd1|Add10~0_combout\,
	datad => \osd1|h_osd_start[8]~0_combout\,
	combout => \osd1|Add11~0_combout\);

-- Location: LCCOMB_X35_Y20_N0
\osd1|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan5~1_cout\ = CARRY((\osd1|h_osd_end[0]~14_combout\ & !\osd1|h_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_osd_end[0]~14_combout\,
	datab => \osd1|h_cnt\(0),
	datad => VCC,
	cout => \osd1|LessThan5~1_cout\);

-- Location: LCCOMB_X35_Y20_N2
\osd1|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan5~3_cout\ = CARRY((\osd1|h_cnt\(1) & ((!\osd1|LessThan5~1_cout\) # (!\osd1|h_osd_end[1]~0_combout\))) # (!\osd1|h_cnt\(1) & (!\osd1|h_osd_end[1]~0_combout\ & !\osd1|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_cnt\(1),
	datab => \osd1|h_osd_end[1]~0_combout\,
	datad => VCC,
	cin => \osd1|LessThan5~1_cout\,
	cout => \osd1|LessThan5~3_cout\);

-- Location: LCCOMB_X35_Y20_N4
\osd1|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan5~5_cout\ = CARRY((\osd1|h_osd_end[2]~2_combout\ & ((!\osd1|LessThan5~3_cout\) # (!\osd1|h_cnt\(2)))) # (!\osd1|h_osd_end[2]~2_combout\ & (!\osd1|h_cnt\(2) & !\osd1|LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_osd_end[2]~2_combout\,
	datab => \osd1|h_cnt\(2),
	datad => VCC,
	cin => \osd1|LessThan5~3_cout\,
	cout => \osd1|LessThan5~5_cout\);

-- Location: LCCOMB_X35_Y20_N6
\osd1|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan5~7_cout\ = CARRY((\osd1|h_cnt\(3) & ((!\osd1|LessThan5~5_cout\) # (!\osd1|h_osd_end[3]~4_combout\))) # (!\osd1|h_cnt\(3) & (!\osd1|h_osd_end[3]~4_combout\ & !\osd1|LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_cnt\(3),
	datab => \osd1|h_osd_end[3]~4_combout\,
	datad => VCC,
	cin => \osd1|LessThan5~5_cout\,
	cout => \osd1|LessThan5~7_cout\);

-- Location: LCCOMB_X35_Y20_N8
\osd1|LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan5~9_cout\ = CARRY((\osd1|h_osd_end[4]~6_combout\ & ((!\osd1|LessThan5~7_cout\) # (!\osd1|h_cnt\(4)))) # (!\osd1|h_osd_end[4]~6_combout\ & (!\osd1|h_cnt\(4) & !\osd1|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_osd_end[4]~6_combout\,
	datab => \osd1|h_cnt\(4),
	datad => VCC,
	cin => \osd1|LessThan5~7_cout\,
	cout => \osd1|LessThan5~9_cout\);

-- Location: LCCOMB_X35_Y20_N10
\osd1|LessThan5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan5~11_cout\ = CARRY((\osd1|h_osd_end[5]~8_combout\ & (\osd1|h_cnt\(5) & !\osd1|LessThan5~9_cout\)) # (!\osd1|h_osd_end[5]~8_combout\ & ((\osd1|h_cnt\(5)) # (!\osd1|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_osd_end[5]~8_combout\,
	datab => \osd1|h_cnt\(5),
	datad => VCC,
	cin => \osd1|LessThan5~9_cout\,
	cout => \osd1|LessThan5~11_cout\);

-- Location: LCCOMB_X35_Y20_N12
\osd1|LessThan5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan5~13_cout\ = CARRY((\osd1|h_cnt\(6) & (\osd1|h_osd_end[6]~10_combout\ & !\osd1|LessThan5~11_cout\)) # (!\osd1|h_cnt\(6) & ((\osd1|h_osd_end[6]~10_combout\) # (!\osd1|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_cnt\(6),
	datab => \osd1|h_osd_end[6]~10_combout\,
	datad => VCC,
	cin => \osd1|LessThan5~11_cout\,
	cout => \osd1|LessThan5~13_cout\);

-- Location: LCCOMB_X35_Y20_N14
\osd1|LessThan5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan5~15_cout\ = CARRY((\osd1|h_osd_end[7]~12_combout\ & (\osd1|h_cnt\(7) & !\osd1|LessThan5~13_cout\)) # (!\osd1|h_osd_end[7]~12_combout\ & ((\osd1|h_cnt\(7)) # (!\osd1|LessThan5~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_osd_end[7]~12_combout\,
	datab => \osd1|h_cnt\(7),
	datad => VCC,
	cin => \osd1|LessThan5~13_cout\,
	cout => \osd1|LessThan5~15_cout\);

-- Location: LCCOMB_X35_Y20_N16
\osd1|LessThan5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan5~17_cout\ = CARRY((\osd1|h_osd_start[8]~0_combout\ & (!\osd1|h_cnt\(8) & !\osd1|LessThan5~15_cout\)) # (!\osd1|h_osd_start[8]~0_combout\ & ((!\osd1|LessThan5~15_cout\) # (!\osd1|h_cnt\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_osd_start[8]~0_combout\,
	datab => \osd1|h_cnt\(8),
	datad => VCC,
	cin => \osd1|LessThan5~15_cout\,
	cout => \osd1|LessThan5~17_cout\);

-- Location: LCCOMB_X35_Y20_N18
\osd1|LessThan5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|LessThan5~18_combout\ = (\osd1|h_cnt\(9) & (\osd1|LessThan5~17_cout\ & \osd1|Add11~0_combout\)) # (!\osd1|h_cnt\(9) & ((\osd1|LessThan5~17_cout\) # (\osd1|Add11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_cnt\(9),
	datad => \osd1|Add11~0_combout\,
	cin => \osd1|LessThan5~17_cout\,
	combout => \osd1|LessThan5~18_combout\);

-- Location: LCCOMB_X35_Y18_N26
\osd1|osd_de~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|osd_de~1_combout\ = (!\osd1|LessThan6~18_combout\ & (!\osd1|osd_enable~q\ & (!\osd1|LessThan4~18_combout\ & \osd1|LessThan5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|LessThan6~18_combout\,
	datab => \osd1|osd_enable~q\,
	datac => \osd1|LessThan4~18_combout\,
	datad => \osd1|LessThan5~18_combout\,
	combout => \osd1|osd_de~1_combout\);

-- Location: LCCOMB_X29_Y14_N18
\osd1|osd_de~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|osd_de~2_combout\ = (\osd1|osd_de~0_combout\ & (\osd1|LessThan7~18_combout\ & \osd1|osd_de~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|osd_de~0_combout\,
	datac => \osd1|LessThan7~18_combout\,
	datad => \osd1|osd_de~1_combout\,
	combout => \osd1|osd_de~2_combout\);

-- Location: LCCOMB_X36_Y15_N2
\osd1|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|comb~0_combout\ = (!\osd1|cmd\(6) & (\osd1|osd_buffer~0_combout\ & (!\stm_b12_io~input_o\ & \osd1|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cmd\(6),
	datab => \osd1|osd_buffer~0_combout\,
	datac => \stm_b12_io~input_o\,
	datad => \osd1|Equal7~0_combout\,
	combout => \osd1|comb~0_combout\);

-- Location: LCCOMB_X34_Y17_N8
\osd1|bcnt[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|bcnt[0]~11_combout\ = \osd1|bcnt\(0) $ (VCC)
-- \osd1|bcnt[0]~12\ = CARRY(\osd1|bcnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|bcnt\(0),
	datad => VCC,
	combout => \osd1|bcnt[0]~11_combout\,
	cout => \osd1|bcnt[0]~12\);

-- Location: LCCOMB_X36_Y15_N12
\osd1|osd_buffer~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|osd_buffer~1_combout\ = ((\osd1|cmd\(6)) # (!\osd1|osd_buffer~0_combout\)) # (!\osd1|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|Equal7~0_combout\,
	datab => \osd1|osd_buffer~0_combout\,
	datac => \osd1|cmd\(6),
	combout => \osd1|osd_buffer~1_combout\);

-- Location: LCCOMB_X35_Y15_N10
\osd1|bcnt[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|bcnt[1]~13_combout\ = (\osd1|Equal3~0_combout\) # ((!\osd1|cmd\(6) & (\osd1|Equal7~0_combout\ & \osd1|osd_buffer~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|Equal3~0_combout\,
	datab => \osd1|cmd\(6),
	datac => \osd1|Equal7~0_combout\,
	datad => \osd1|osd_buffer~0_combout\,
	combout => \osd1|bcnt[1]~13_combout\);

-- Location: FF_X34_Y17_N9
\osd1|bcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|bcnt[0]~11_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_stm_b12_io~input_o\,
	sload => \osd1|osd_buffer~1_combout\,
	ena => \osd1|bcnt[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|bcnt\(0));

-- Location: LCCOMB_X34_Y17_N10
\osd1|bcnt[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|bcnt[1]~14_combout\ = (\osd1|bcnt\(1) & (!\osd1|bcnt[0]~12\)) # (!\osd1|bcnt\(1) & ((\osd1|bcnt[0]~12\) # (GND)))
-- \osd1|bcnt[1]~15\ = CARRY((!\osd1|bcnt[0]~12\) # (!\osd1|bcnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|bcnt\(1),
	datad => VCC,
	cin => \osd1|bcnt[0]~12\,
	combout => \osd1|bcnt[1]~14_combout\,
	cout => \osd1|bcnt[1]~15\);

-- Location: FF_X34_Y17_N11
\osd1|bcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|bcnt[1]~14_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_stm_b12_io~input_o\,
	sload => \osd1|osd_buffer~1_combout\,
	ena => \osd1|bcnt[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|bcnt\(1));

-- Location: LCCOMB_X34_Y17_N12
\osd1|bcnt[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|bcnt[2]~16_combout\ = (\osd1|bcnt\(2) & (\osd1|bcnt[1]~15\ $ (GND))) # (!\osd1|bcnt\(2) & (!\osd1|bcnt[1]~15\ & VCC))
-- \osd1|bcnt[2]~17\ = CARRY((\osd1|bcnt\(2) & !\osd1|bcnt[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|bcnt\(2),
	datad => VCC,
	cin => \osd1|bcnt[1]~15\,
	combout => \osd1|bcnt[2]~16_combout\,
	cout => \osd1|bcnt[2]~17\);

-- Location: FF_X34_Y17_N13
\osd1|bcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|bcnt[2]~16_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_stm_b12_io~input_o\,
	sload => \osd1|osd_buffer~1_combout\,
	ena => \osd1|bcnt[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|bcnt\(2));

-- Location: LCCOMB_X34_Y17_N14
\osd1|bcnt[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|bcnt[3]~18_combout\ = (\osd1|bcnt\(3) & (!\osd1|bcnt[2]~17\)) # (!\osd1|bcnt\(3) & ((\osd1|bcnt[2]~17\) # (GND)))
-- \osd1|bcnt[3]~19\ = CARRY((!\osd1|bcnt[2]~17\) # (!\osd1|bcnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|bcnt\(3),
	datad => VCC,
	cin => \osd1|bcnt[2]~17\,
	combout => \osd1|bcnt[3]~18_combout\,
	cout => \osd1|bcnt[3]~19\);

-- Location: FF_X34_Y17_N15
\osd1|bcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|bcnt[3]~18_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_stm_b12_io~input_o\,
	sload => \osd1|osd_buffer~1_combout\,
	ena => \osd1|bcnt[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|bcnt\(3));

-- Location: LCCOMB_X34_Y17_N16
\osd1|bcnt[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|bcnt[4]~20_combout\ = (\osd1|bcnt\(4) & (\osd1|bcnt[3]~19\ $ (GND))) # (!\osd1|bcnt\(4) & (!\osd1|bcnt[3]~19\ & VCC))
-- \osd1|bcnt[4]~21\ = CARRY((\osd1|bcnt\(4) & !\osd1|bcnt[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|bcnt\(4),
	datad => VCC,
	cin => \osd1|bcnt[3]~19\,
	combout => \osd1|bcnt[4]~20_combout\,
	cout => \osd1|bcnt[4]~21\);

-- Location: FF_X34_Y17_N17
\osd1|bcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|bcnt[4]~20_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_stm_b12_io~input_o\,
	sload => \osd1|osd_buffer~1_combout\,
	ena => \osd1|bcnt[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|bcnt\(4));

-- Location: LCCOMB_X34_Y17_N18
\osd1|bcnt[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|bcnt[5]~22_combout\ = (\osd1|bcnt\(5) & (!\osd1|bcnt[4]~21\)) # (!\osd1|bcnt\(5) & ((\osd1|bcnt[4]~21\) # (GND)))
-- \osd1|bcnt[5]~23\ = CARRY((!\osd1|bcnt[4]~21\) # (!\osd1|bcnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|bcnt\(5),
	datad => VCC,
	cin => \osd1|bcnt[4]~21\,
	combout => \osd1|bcnt[5]~22_combout\,
	cout => \osd1|bcnt[5]~23\);

-- Location: FF_X34_Y17_N19
\osd1|bcnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|bcnt[5]~22_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_stm_b12_io~input_o\,
	sload => \osd1|osd_buffer~1_combout\,
	ena => \osd1|bcnt[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|bcnt\(5));

-- Location: LCCOMB_X34_Y17_N20
\osd1|bcnt[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|bcnt[6]~24_combout\ = (\osd1|bcnt\(6) & (\osd1|bcnt[5]~23\ $ (GND))) # (!\osd1|bcnt\(6) & (!\osd1|bcnt[5]~23\ & VCC))
-- \osd1|bcnt[6]~25\ = CARRY((\osd1|bcnt\(6) & !\osd1|bcnt[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|bcnt\(6),
	datad => VCC,
	cin => \osd1|bcnt[5]~23\,
	combout => \osd1|bcnt[6]~24_combout\,
	cout => \osd1|bcnt[6]~25\);

-- Location: FF_X34_Y17_N21
\osd1|bcnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|bcnt[6]~24_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_stm_b12_io~input_o\,
	sload => \osd1|osd_buffer~1_combout\,
	ena => \osd1|bcnt[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|bcnt\(6));

-- Location: LCCOMB_X34_Y17_N22
\osd1|bcnt[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|bcnt[7]~26_combout\ = (\osd1|bcnt\(7) & (!\osd1|bcnt[6]~25\)) # (!\osd1|bcnt\(7) & ((\osd1|bcnt[6]~25\) # (GND)))
-- \osd1|bcnt[7]~27\ = CARRY((!\osd1|bcnt[6]~25\) # (!\osd1|bcnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|bcnt\(7),
	datad => VCC,
	cin => \osd1|bcnt[6]~25\,
	combout => \osd1|bcnt[7]~26_combout\,
	cout => \osd1|bcnt[7]~27\);

-- Location: FF_X34_Y17_N23
\osd1|bcnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|bcnt[7]~26_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_stm_b12_io~input_o\,
	sload => \osd1|osd_buffer~1_combout\,
	ena => \osd1|bcnt[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|bcnt\(7));

-- Location: LCCOMB_X34_Y17_N24
\osd1|bcnt[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|bcnt[8]~28_combout\ = (\osd1|bcnt\(8) & (\osd1|bcnt[7]~27\ $ (GND))) # (!\osd1|bcnt\(8) & (!\osd1|bcnt[7]~27\ & VCC))
-- \osd1|bcnt[8]~29\ = CARRY((\osd1|bcnt\(8) & !\osd1|bcnt[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|bcnt\(8),
	datad => VCC,
	cin => \osd1|bcnt[7]~27\,
	combout => \osd1|bcnt[8]~28_combout\,
	cout => \osd1|bcnt[8]~29\);

-- Location: FF_X34_Y17_N25
\osd1|bcnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|bcnt[8]~28_combout\,
	asdata => \stm_b15_io~input_o\,
	clrn => \ALT_INV_stm_b12_io~input_o\,
	sload => \osd1|osd_buffer~1_combout\,
	ena => \osd1|bcnt[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|bcnt\(8));

-- Location: LCCOMB_X34_Y17_N26
\osd1|bcnt[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|bcnt[9]~30_combout\ = (\osd1|bcnt\(9) & (!\osd1|bcnt[8]~29\)) # (!\osd1|bcnt\(9) & ((\osd1|bcnt[8]~29\) # (GND)))
-- \osd1|bcnt[9]~31\ = CARRY((!\osd1|bcnt[8]~29\) # (!\osd1|bcnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|bcnt\(9),
	datad => VCC,
	cin => \osd1|bcnt[8]~29\,
	combout => \osd1|bcnt[9]~30_combout\,
	cout => \osd1|bcnt[9]~31\);

-- Location: FF_X34_Y17_N27
\osd1|bcnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|bcnt[9]~30_combout\,
	asdata => \osd1|sbuf\(0),
	clrn => \ALT_INV_stm_b12_io~input_o\,
	sload => \osd1|osd_buffer~1_combout\,
	ena => \osd1|bcnt[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|bcnt\(9));

-- Location: LCCOMB_X34_Y17_N28
\osd1|bcnt[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|bcnt[10]~32_combout\ = \osd1|bcnt[9]~31\ $ (!\osd1|bcnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \osd1|bcnt\(10),
	cin => \osd1|bcnt[9]~31\,
	combout => \osd1|bcnt[10]~32_combout\);

-- Location: FF_X34_Y17_N29
\osd1|bcnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|bcnt[10]~32_combout\,
	asdata => \osd1|sbuf\(1),
	clrn => \ALT_INV_stm_b12_io~input_o\,
	sload => \osd1|osd_buffer~1_combout\,
	ena => \osd1|bcnt[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|bcnt\(10));

-- Location: LCCOMB_X34_Y20_N2
\osd1|Add15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add15~0_combout\ = (\osd1|h_cnt\(0) & (\osd1|h_osd_end[0]~14_combout\ $ (GND))) # (!\osd1|h_cnt\(0) & (!\osd1|h_osd_end[0]~14_combout\ & VCC))
-- \osd1|Add15~1\ = CARRY((\osd1|h_cnt\(0) & !\osd1|h_osd_end[0]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_cnt\(0),
	datab => \osd1|h_osd_end[0]~14_combout\,
	datad => VCC,
	combout => \osd1|Add15~0_combout\,
	cout => \osd1|Add15~1\);

-- Location: LCCOMB_X34_Y20_N4
\osd1|Add15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add15~2_combout\ = (\osd1|h_osd_end[1]~0_combout\ & ((\osd1|h_cnt\(1) & (!\osd1|Add15~1\)) # (!\osd1|h_cnt\(1) & ((\osd1|Add15~1\) # (GND))))) # (!\osd1|h_osd_end[1]~0_combout\ & ((\osd1|h_cnt\(1) & (\osd1|Add15~1\ & VCC)) # (!\osd1|h_cnt\(1) & 
-- (!\osd1|Add15~1\))))
-- \osd1|Add15~3\ = CARRY((\osd1|h_osd_end[1]~0_combout\ & ((!\osd1|Add15~1\) # (!\osd1|h_cnt\(1)))) # (!\osd1|h_osd_end[1]~0_combout\ & (!\osd1|h_cnt\(1) & !\osd1|Add15~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_osd_end[1]~0_combout\,
	datab => \osd1|h_cnt\(1),
	datad => VCC,
	cin => \osd1|Add15~1\,
	combout => \osd1|Add15~2_combout\,
	cout => \osd1|Add15~3\);

-- Location: LCCOMB_X34_Y20_N18
\osd1|Add16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add16~0_combout\ = \osd1|Add15~2_combout\ $ (VCC)
-- \osd1|Add16~1\ = CARRY(\osd1|Add15~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|Add15~2_combout\,
	datad => VCC,
	combout => \osd1|Add16~0_combout\,
	cout => \osd1|Add16~1\);

-- Location: LCCOMB_X34_Y20_N6
\osd1|Add15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add15~4_combout\ = ((\osd1|h_cnt\(2) $ (\osd1|h_osd_end[2]~2_combout\ $ (\osd1|Add15~3\)))) # (GND)
-- \osd1|Add15~5\ = CARRY((\osd1|h_cnt\(2) & ((!\osd1|Add15~3\) # (!\osd1|h_osd_end[2]~2_combout\))) # (!\osd1|h_cnt\(2) & (!\osd1|h_osd_end[2]~2_combout\ & !\osd1|Add15~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_cnt\(2),
	datab => \osd1|h_osd_end[2]~2_combout\,
	datad => VCC,
	cin => \osd1|Add15~3\,
	combout => \osd1|Add15~4_combout\,
	cout => \osd1|Add15~5\);

-- Location: LCCOMB_X34_Y20_N20
\osd1|Add16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add16~2_combout\ = (\osd1|Add15~4_combout\ & (!\osd1|Add16~1\)) # (!\osd1|Add15~4_combout\ & ((\osd1|Add16~1\) # (GND)))
-- \osd1|Add16~3\ = CARRY((!\osd1|Add16~1\) # (!\osd1|Add15~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|Add15~4_combout\,
	datad => VCC,
	cin => \osd1|Add16~1\,
	combout => \osd1|Add16~2_combout\,
	cout => \osd1|Add16~3\);

-- Location: LCCOMB_X34_Y20_N8
\osd1|Add15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add15~6_combout\ = (\osd1|h_cnt\(3) & ((\osd1|h_osd_end[3]~4_combout\ & (!\osd1|Add15~5\)) # (!\osd1|h_osd_end[3]~4_combout\ & (\osd1|Add15~5\ & VCC)))) # (!\osd1|h_cnt\(3) & ((\osd1|h_osd_end[3]~4_combout\ & ((\osd1|Add15~5\) # (GND))) # 
-- (!\osd1|h_osd_end[3]~4_combout\ & (!\osd1|Add15~5\))))
-- \osd1|Add15~7\ = CARRY((\osd1|h_cnt\(3) & (\osd1|h_osd_end[3]~4_combout\ & !\osd1|Add15~5\)) # (!\osd1|h_cnt\(3) & ((\osd1|h_osd_end[3]~4_combout\) # (!\osd1|Add15~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_cnt\(3),
	datab => \osd1|h_osd_end[3]~4_combout\,
	datad => VCC,
	cin => \osd1|Add15~5\,
	combout => \osd1|Add15~6_combout\,
	cout => \osd1|Add15~7\);

-- Location: LCCOMB_X34_Y20_N22
\osd1|Add16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add16~4_combout\ = (\osd1|Add15~6_combout\ & (\osd1|Add16~3\ $ (GND))) # (!\osd1|Add15~6_combout\ & (!\osd1|Add16~3\ & VCC))
-- \osd1|Add16~5\ = CARRY((\osd1|Add15~6_combout\ & !\osd1|Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|Add15~6_combout\,
	datad => VCC,
	cin => \osd1|Add16~3\,
	combout => \osd1|Add16~4_combout\,
	cout => \osd1|Add16~5\);

-- Location: LCCOMB_X34_Y20_N10
\osd1|Add15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add15~8_combout\ = ((\osd1|h_cnt\(4) $ (\osd1|h_osd_end[4]~6_combout\ $ (\osd1|Add15~7\)))) # (GND)
-- \osd1|Add15~9\ = CARRY((\osd1|h_cnt\(4) & ((!\osd1|Add15~7\) # (!\osd1|h_osd_end[4]~6_combout\))) # (!\osd1|h_cnt\(4) & (!\osd1|h_osd_end[4]~6_combout\ & !\osd1|Add15~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_cnt\(4),
	datab => \osd1|h_osd_end[4]~6_combout\,
	datad => VCC,
	cin => \osd1|Add15~7\,
	combout => \osd1|Add15~8_combout\,
	cout => \osd1|Add15~9\);

-- Location: LCCOMB_X34_Y20_N24
\osd1|Add16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add16~6_combout\ = (\osd1|Add15~8_combout\ & (!\osd1|Add16~5\)) # (!\osd1|Add15~8_combout\ & ((\osd1|Add16~5\) # (GND)))
-- \osd1|Add16~7\ = CARRY((!\osd1|Add16~5\) # (!\osd1|Add15~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|Add15~8_combout\,
	datad => VCC,
	cin => \osd1|Add16~5\,
	combout => \osd1|Add16~6_combout\,
	cout => \osd1|Add16~7\);

-- Location: LCCOMB_X34_Y20_N12
\osd1|Add15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add15~10_combout\ = (\osd1|h_osd_end[5]~8_combout\ & ((\osd1|h_cnt\(5) & (!\osd1|Add15~9\)) # (!\osd1|h_cnt\(5) & ((\osd1|Add15~9\) # (GND))))) # (!\osd1|h_osd_end[5]~8_combout\ & ((\osd1|h_cnt\(5) & (\osd1|Add15~9\ & VCC)) # (!\osd1|h_cnt\(5) & 
-- (!\osd1|Add15~9\))))
-- \osd1|Add15~11\ = CARRY((\osd1|h_osd_end[5]~8_combout\ & ((!\osd1|Add15~9\) # (!\osd1|h_cnt\(5)))) # (!\osd1|h_osd_end[5]~8_combout\ & (!\osd1|h_cnt\(5) & !\osd1|Add15~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_osd_end[5]~8_combout\,
	datab => \osd1|h_cnt\(5),
	datad => VCC,
	cin => \osd1|Add15~9\,
	combout => \osd1|Add15~10_combout\,
	cout => \osd1|Add15~11\);

-- Location: LCCOMB_X34_Y20_N26
\osd1|Add16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add16~8_combout\ = (\osd1|Add15~10_combout\ & (\osd1|Add16~7\ $ (GND))) # (!\osd1|Add15~10_combout\ & (!\osd1|Add16~7\ & VCC))
-- \osd1|Add16~9\ = CARRY((\osd1|Add15~10_combout\ & !\osd1|Add16~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|Add15~10_combout\,
	datad => VCC,
	cin => \osd1|Add16~7\,
	combout => \osd1|Add16~8_combout\,
	cout => \osd1|Add16~9\);

-- Location: LCCOMB_X34_Y20_N14
\osd1|Add15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add15~12_combout\ = ((\osd1|h_osd_end[6]~10_combout\ $ (\osd1|h_cnt\(6) $ (\osd1|Add15~11\)))) # (GND)
-- \osd1|Add15~13\ = CARRY((\osd1|h_osd_end[6]~10_combout\ & (\osd1|h_cnt\(6) & !\osd1|Add15~11\)) # (!\osd1|h_osd_end[6]~10_combout\ & ((\osd1|h_cnt\(6)) # (!\osd1|Add15~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|h_osd_end[6]~10_combout\,
	datab => \osd1|h_cnt\(6),
	datad => VCC,
	cin => \osd1|Add15~11\,
	combout => \osd1|Add15~12_combout\,
	cout => \osd1|Add15~13\);

-- Location: LCCOMB_X34_Y20_N28
\osd1|Add16~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add16~10_combout\ = (\osd1|Add15~12_combout\ & (!\osd1|Add16~9\)) # (!\osd1|Add15~12_combout\ & ((\osd1|Add16~9\) # (GND)))
-- \osd1|Add16~11\ = CARRY((!\osd1|Add16~9\) # (!\osd1|Add15~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|Add15~12_combout\,
	datad => VCC,
	cin => \osd1|Add16~9\,
	combout => \osd1|Add16~10_combout\,
	cout => \osd1|Add16~11\);

-- Location: LCCOMB_X34_Y20_N16
\osd1|Add15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add15~14_combout\ = \osd1|h_cnt\(7) $ (\osd1|Add15~13\ $ (!\osd1|h_osd_end[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|h_cnt\(7),
	datad => \osd1|h_osd_end[7]~12_combout\,
	cin => \osd1|Add15~13\,
	combout => \osd1|Add15~14_combout\);

-- Location: LCCOMB_X34_Y20_N30
\osd1|Add16~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add16~12_combout\ = \osd1|Add16~11\ $ (!\osd1|Add15~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \osd1|Add15~14_combout\,
	cin => \osd1|Add16~11\,
	combout => \osd1|Add16~12_combout\);

-- Location: LCCOMB_X32_Y18_N10
\osd1|Add17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add17~1_cout\ = CARRY((\osd1|v_cnt\(0)) # (!\osd1|v_osd_start[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_cnt\(0),
	datab => \osd1|v_osd_start[0]~0_combout\,
	datad => VCC,
	cout => \osd1|Add17~1_cout\);

-- Location: LCCOMB_X32_Y18_N12
\osd1|Add17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add17~3_cout\ = CARRY((\osd1|v_osd_start[1]~2_combout\ & ((!\osd1|Add17~1_cout\) # (!\osd1|v_cnt\(1)))) # (!\osd1|v_osd_start[1]~2_combout\ & (!\osd1|v_cnt\(1) & !\osd1|Add17~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_osd_start[1]~2_combout\,
	datab => \osd1|v_cnt\(1),
	datad => VCC,
	cin => \osd1|Add17~1_cout\,
	cout => \osd1|Add17~3_cout\);

-- Location: LCCOMB_X32_Y18_N14
\osd1|Add17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add17~4_combout\ = ((\osd1|v_osd_start[2]~4_combout\ $ (\osd1|v_cnt\(2) $ (\osd1|Add17~3_cout\)))) # (GND)
-- \osd1|Add17~5\ = CARRY((\osd1|v_osd_start[2]~4_combout\ & (\osd1|v_cnt\(2) & !\osd1|Add17~3_cout\)) # (!\osd1|v_osd_start[2]~4_combout\ & ((\osd1|v_cnt\(2)) # (!\osd1|Add17~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_osd_start[2]~4_combout\,
	datab => \osd1|v_cnt\(2),
	datad => VCC,
	cin => \osd1|Add17~3_cout\,
	combout => \osd1|Add17~4_combout\,
	cout => \osd1|Add17~5\);

-- Location: LCCOMB_X32_Y18_N16
\osd1|Add17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add17~6_combout\ = (\osd1|v_osd_start[3]~6_combout\ & ((\osd1|v_cnt\(3) & (!\osd1|Add17~5\)) # (!\osd1|v_cnt\(3) & ((\osd1|Add17~5\) # (GND))))) # (!\osd1|v_osd_start[3]~6_combout\ & ((\osd1|v_cnt\(3) & (\osd1|Add17~5\ & VCC)) # (!\osd1|v_cnt\(3) & 
-- (!\osd1|Add17~5\))))
-- \osd1|Add17~7\ = CARRY((\osd1|v_osd_start[3]~6_combout\ & ((!\osd1|Add17~5\) # (!\osd1|v_cnt\(3)))) # (!\osd1|v_osd_start[3]~6_combout\ & (!\osd1|v_cnt\(3) & !\osd1|Add17~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_osd_start[3]~6_combout\,
	datab => \osd1|v_cnt\(3),
	datad => VCC,
	cin => \osd1|Add17~5\,
	combout => \osd1|Add17~6_combout\,
	cout => \osd1|Add17~7\);

-- Location: LCCOMB_X32_Y18_N18
\osd1|Add17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add17~8_combout\ = ((\osd1|v_osd_start[4]~8_combout\ $ (\osd1|v_cnt\(4) $ (\osd1|Add17~7\)))) # (GND)
-- \osd1|Add17~9\ = CARRY((\osd1|v_osd_start[4]~8_combout\ & (\osd1|v_cnt\(4) & !\osd1|Add17~7\)) # (!\osd1|v_osd_start[4]~8_combout\ & ((\osd1|v_cnt\(4)) # (!\osd1|Add17~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_osd_start[4]~8_combout\,
	datab => \osd1|v_cnt\(4),
	datad => VCC,
	cin => \osd1|Add17~7\,
	combout => \osd1|Add17~8_combout\,
	cout => \osd1|Add17~9\);

-- Location: LCCOMB_X32_Y18_N20
\osd1|Add17~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add17~10_combout\ = (\osd1|v_osd_start[5]~10_combout\ & ((\osd1|v_cnt\(5) & (!\osd1|Add17~9\)) # (!\osd1|v_cnt\(5) & ((\osd1|Add17~9\) # (GND))))) # (!\osd1|v_osd_start[5]~10_combout\ & ((\osd1|v_cnt\(5) & (\osd1|Add17~9\ & VCC)) # (!\osd1|v_cnt\(5) 
-- & (!\osd1|Add17~9\))))
-- \osd1|Add17~11\ = CARRY((\osd1|v_osd_start[5]~10_combout\ & ((!\osd1|Add17~9\) # (!\osd1|v_cnt\(5)))) # (!\osd1|v_osd_start[5]~10_combout\ & (!\osd1|v_cnt\(5) & !\osd1|Add17~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_osd_start[5]~10_combout\,
	datab => \osd1|v_cnt\(5),
	datad => VCC,
	cin => \osd1|Add17~9\,
	combout => \osd1|Add17~10_combout\,
	cout => \osd1|Add17~11\);

-- Location: LCCOMB_X32_Y18_N22
\osd1|Add17~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add17~12_combout\ = ((\osd1|v_cnt\(6) $ (\osd1|v_osd_start[6]~12_combout\ $ (\osd1|Add17~11\)))) # (GND)
-- \osd1|Add17~13\ = CARRY((\osd1|v_cnt\(6) & ((!\osd1|Add17~11\) # (!\osd1|v_osd_start[6]~12_combout\))) # (!\osd1|v_cnt\(6) & (!\osd1|v_osd_start[6]~12_combout\ & !\osd1|Add17~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_cnt\(6),
	datab => \osd1|v_osd_start[6]~12_combout\,
	datad => VCC,
	cin => \osd1|Add17~11\,
	combout => \osd1|Add17~12_combout\,
	cout => \osd1|Add17~13\);

-- Location: LCCOMB_X32_Y18_N24
\osd1|Add17~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Add17~14_combout\ = \osd1|v_cnt\(7) $ (\osd1|Add17~13\ $ (!\osd1|v_osd_start[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|v_cnt\(7),
	datad => \osd1|v_osd_start[7]~14_combout\,
	cin => \osd1|Add17~13\,
	combout => \osd1|Add17~14_combout\);

-- Location: M9K_X33_Y17_N0
\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "osd:osd1|altsyncram:osd_buffer_rtl_0|altsyncram_dvd1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \osd1|comb~0_combout\,
	portbre => VCC,
	clk0 => \stm_b13_io~input_o\,
	clk1 => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \osd1|comb~0_combout\,
	ena1 => \osd1|ce_pix~q\,
	portadatain => \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X32_Y18_N4
\osd1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Mux3~2_combout\ = (\osd1|Add17~4_combout\ & ((\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a1\) # ((\osd1|Add17~6_combout\)))) # (!\osd1|Add17~4_combout\ & (((\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a0~portbdataout\ & 
-- !\osd1|Add17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a1\,
	datab => \osd1|Add17~4_combout\,
	datac => \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \osd1|Add17~6_combout\,
	combout => \osd1|Mux3~2_combout\);

-- Location: LCCOMB_X32_Y18_N6
\osd1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Mux3~3_combout\ = (\osd1|Add17~6_combout\ & ((\osd1|Mux3~2_combout\ & (\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a3\)) # (!\osd1|Mux3~2_combout\ & ((\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a2\))))) # (!\osd1|Add17~6_combout\ & 
-- (((\osd1|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a3\,
	datab => \osd1|Add17~6_combout\,
	datac => \osd1|Mux3~2_combout\,
	datad => \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a2\,
	combout => \osd1|Mux3~3_combout\);

-- Location: LCCOMB_X35_Y18_N2
\osd1|sbuf[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|sbuf[7]~feeder_combout\ = \osd1|sbuf\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \osd1|sbuf\(6),
	combout => \osd1|sbuf[7]~feeder_combout\);

-- Location: FF_X35_Y18_N3
\osd1|sbuf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|sbuf[7]~feeder_combout\,
	ena => \ALT_INV_stm_b12_io~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|sbuf\(7));

-- Location: M9K_X33_Y18_N0
\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "osd:osd1|altsyncram:osd_buffer_rtl_0|altsyncram_dvd1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \osd1|comb~0_combout\,
	portbre => VCC,
	clk0 => \stm_b13_io~input_o\,
	clk1 => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \osd1|comb~0_combout\,
	ena1 => \osd1|ce_pix~q\,
	portadatain => \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X32_Y18_N0
\osd1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Mux3~0_combout\ = (\osd1|Add17~6_combout\ & (((\osd1|Add17~4_combout\) # (\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a6\)))) # (!\osd1|Add17~6_combout\ & (\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a4~portbdataout\ & 
-- (!\osd1|Add17~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datab => \osd1|Add17~6_combout\,
	datac => \osd1|Add17~4_combout\,
	datad => \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a6\,
	combout => \osd1|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y18_N26
\osd1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Mux3~1_combout\ = (\osd1|Add17~4_combout\ & ((\osd1|Mux3~0_combout\ & (\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a7\)) # (!\osd1|Mux3~0_combout\ & ((\osd1|osd_buffer_rtl_0|auto_generated|ram_block1a5\))))) # (!\osd1|Add17~4_combout\ & 
-- (((\osd1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a7\,
	datab => \osd1|Add17~4_combout\,
	datac => \osd1|osd_buffer_rtl_0|auto_generated|ram_block1a5\,
	datad => \osd1|Mux3~0_combout\,
	combout => \osd1|Mux3~1_combout\);

-- Location: LCCOMB_X32_Y18_N8
\osd1|red_out[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|red_out[4]~0_combout\ = (\osd1|Add17~8_combout\ & ((\osd1|Mux3~1_combout\))) # (!\osd1|Add17~8_combout\ & (\osd1|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|Mux3~3_combout\,
	datab => \osd1|Add17~8_combout\,
	datac => \osd1|Mux3~1_combout\,
	combout => \osd1|red_out[4]~0_combout\);

-- Location: LCCOMB_X30_Y14_N30
\info1|r_o[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|r_o[2]~5_combout\ = (\info1|runY~q\ & (\osd1|osd_de~2_combout\ & (\osd1|red_out[4]~0_combout\ & \info1|runX~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|runY~q\,
	datab => \osd1|osd_de~2_combout\,
	datac => \osd1|red_out[4]~0_combout\,
	datad => \info1|runX~q\,
	combout => \info1|r_o[2]~5_combout\);

-- Location: LCCOMB_X32_Y13_N24
\info1|r_o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|r_o~2_combout\ = (\info1|runY~q\ & \info1|runX~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \info1|runY~q\,
	datad => \info1|runX~q\,
	combout => \info1|r_o~2_combout\);

-- Location: LCCOMB_X37_Y12_N10
\info1|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux0~5_combout\ = (\info1|localX\(4) & ((\info1|localX\(5) & ((\info1|localX\(3)))) # (!\info1|localX\(5) & (\info1|localX\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(6),
	datab => \info1|localX\(5),
	datac => \info1|localX\(4),
	datad => \info1|localX\(3),
	combout => \info1|Mux0~5_combout\);

-- Location: LCCOMB_X36_Y15_N8
\osd1|cnf_byte[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnf_byte[3]~4_combout\ = (\osd1|Equal9~0_combout\ & (\osd1|osd_buffer~0_combout\ & (!\osd1|cmd\(0) & \osd1|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|Equal9~0_combout\,
	datab => \osd1|osd_buffer~0_combout\,
	datac => \osd1|cmd\(0),
	datad => \osd1|Equal7~0_combout\,
	combout => \osd1|cnf_byte[3]~4_combout\);

-- Location: LCCOMB_X36_Y11_N18
\osd1|cnf_byte[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnf_byte[0]~15_combout\ = \osd1|cnf_byte\(0) $ (\osd1|cnf_byte[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \osd1|cnf_byte\(0),
	datad => \osd1|cnf_byte[3]~4_combout\,
	combout => \osd1|cnf_byte[0]~15_combout\);

-- Location: FF_X36_Y11_N19
\osd1|cnf_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|cnf_byte[0]~15_combout\,
	clrn => \ALT_INV_stm_b12_io~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnf_byte\(0));

-- Location: LCCOMB_X36_Y11_N8
\osd1|cnf_byte[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnf_byte[1]~6_cout\ = CARRY(!\osd1|cnf_byte\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnf_byte\(0),
	datad => VCC,
	cout => \osd1|cnf_byte[1]~6_cout\);

-- Location: LCCOMB_X36_Y11_N10
\osd1|cnf_byte[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnf_byte[1]~7_combout\ = (\osd1|cnf_byte\(1) & (\osd1|cnf_byte[1]~6_cout\ $ (GND))) # (!\osd1|cnf_byte\(1) & (!\osd1|cnf_byte[1]~6_cout\ & VCC))
-- \osd1|cnf_byte[1]~8\ = CARRY((\osd1|cnf_byte\(1) & !\osd1|cnf_byte[1]~6_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnf_byte\(1),
	datad => VCC,
	cin => \osd1|cnf_byte[1]~6_cout\,
	combout => \osd1|cnf_byte[1]~7_combout\,
	cout => \osd1|cnf_byte[1]~8\);

-- Location: FF_X36_Y11_N11
\osd1|cnf_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|cnf_byte[1]~7_combout\,
	clrn => \ALT_INV_stm_b12_io~input_o\,
	ena => \osd1|cnf_byte[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnf_byte\(1));

-- Location: LCCOMB_X36_Y11_N12
\osd1|cnf_byte[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnf_byte[2]~9_combout\ = (\osd1|cnf_byte\(2) & (!\osd1|cnf_byte[1]~8\)) # (!\osd1|cnf_byte\(2) & ((\osd1|cnf_byte[1]~8\) # (GND)))
-- \osd1|cnf_byte[2]~10\ = CARRY((!\osd1|cnf_byte[1]~8\) # (!\osd1|cnf_byte\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnf_byte\(2),
	datad => VCC,
	cin => \osd1|cnf_byte[1]~8\,
	combout => \osd1|cnf_byte[2]~9_combout\,
	cout => \osd1|cnf_byte[2]~10\);

-- Location: FF_X36_Y11_N13
\osd1|cnf_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|cnf_byte[2]~9_combout\,
	clrn => \ALT_INV_stm_b12_io~input_o\,
	ena => \osd1|cnf_byte[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnf_byte\(2));

-- Location: LCCOMB_X36_Y11_N14
\osd1|cnf_byte[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnf_byte[3]~11_combout\ = (\osd1|cnf_byte\(3) & (\osd1|cnf_byte[2]~10\ $ (GND))) # (!\osd1|cnf_byte\(3) & (!\osd1|cnf_byte[2]~10\ & VCC))
-- \osd1|cnf_byte[3]~12\ = CARRY((\osd1|cnf_byte\(3) & !\osd1|cnf_byte[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \osd1|cnf_byte\(3),
	datad => VCC,
	cin => \osd1|cnf_byte[2]~10\,
	combout => \osd1|cnf_byte[3]~11_combout\,
	cout => \osd1|cnf_byte[3]~12\);

-- Location: FF_X36_Y11_N15
\osd1|cnf_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|cnf_byte[3]~11_combout\,
	clrn => \ALT_INV_stm_b12_io~input_o\,
	ena => \osd1|cnf_byte[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnf_byte\(3));

-- Location: LCCOMB_X36_Y11_N16
\osd1|cnf_byte[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|cnf_byte[4]~13_combout\ = \osd1|cnf_byte[3]~12\ $ (\osd1|cnf_byte\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \osd1|cnf_byte\(4),
	cin => \osd1|cnf_byte[3]~12\,
	combout => \osd1|cnf_byte[4]~13_combout\);

-- Location: FF_X36_Y11_N17
\osd1|cnf_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|cnf_byte[4]~13_combout\,
	clrn => \ALT_INV_stm_b12_io~input_o\,
	ena => \osd1|cnf_byte[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|cnf_byte\(4));

-- Location: LCCOMB_X36_Y11_N24
\osd1|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Decoder0~0_combout\ = (\osd1|cnf_byte\(2) & (!\stm_b12_io~input_o\ & (\osd1|cnf_byte\(3) & !\osd1|cnf_byte\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnf_byte\(2),
	datab => \stm_b12_io~input_o\,
	datac => \osd1|cnf_byte\(3),
	datad => \osd1|cnf_byte\(4),
	combout => \osd1|Decoder0~0_combout\);

-- Location: LCCOMB_X36_Y11_N22
\osd1|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Decoder0~2_combout\ = (!\osd1|cnf_byte\(1) & (\osd1|Decoder0~0_combout\ & (\osd1|cnf_byte\(0) & \osd1|cnf_byte[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnf_byte\(1),
	datab => \osd1|Decoder0~0_combout\,
	datac => \osd1|cnf_byte\(0),
	datad => \osd1|cnf_byte[3]~4_combout\,
	combout => \osd1|Decoder0~2_combout\);

-- Location: FF_X37_Y12_N13
\osd1|config_buffer_o[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(4),
	sload => VCC,
	ena => \osd1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|config_buffer_o[2][5]~q\);

-- Location: LCCOMB_X37_Y12_N12
\info1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux0~3_combout\ = (!\info1|localX\(4) & ((\info1|localX\(3)) # ((\osd1|config_buffer_o[2][5]~q\) # (!\info1|localX\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(3),
	datab => \info1|localX\(4),
	datac => \osd1|config_buffer_o[2][5]~q\,
	datad => \info1|localX\(7),
	combout => \info1|Mux0~3_combout\);

-- Location: LCCOMB_X37_Y12_N26
\info1|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux0~4_combout\ = (!\info1|localX\(6) & (\info1|localX\(5) & \info1|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(6),
	datab => \info1|localX\(5),
	datad => \info1|Mux0~3_combout\,
	combout => \info1|Mux0~4_combout\);

-- Location: LCCOMB_X35_Y12_N28
\info1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux0~2_combout\ = (\info1|localX\(8) & ((\info1|localX\(4)) # ((\info1|localX\(6)) # (\info1|localX\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(8),
	datab => \info1|localX\(4),
	datac => \info1|localX\(6),
	datad => \info1|localX\(7),
	combout => \info1|Mux0~2_combout\);

-- Location: LCCOMB_X37_Y12_N24
\info1|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux0~6_combout\ = (\info1|Mux0~4_combout\) # ((\info1|Mux0~2_combout\) # ((\info1|Mux0~5_combout\ & !\info1|localX\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux0~5_combout\,
	datab => \info1|localX\(7),
	datac => \info1|Mux0~4_combout\,
	datad => \info1|Mux0~2_combout\,
	combout => \info1|Mux0~6_combout\);

-- Location: LCCOMB_X36_Y11_N28
\osd1|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Decoder0~1_combout\ = (\osd1|cnf_byte\(1) & (\osd1|Decoder0~0_combout\ & (!\osd1|cnf_byte\(0) & \osd1|cnf_byte[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnf_byte\(1),
	datab => \osd1|Decoder0~0_combout\,
	datac => \osd1|cnf_byte\(0),
	datad => \osd1|cnf_byte[3]~4_combout\,
	combout => \osd1|Decoder0~1_combout\);

-- Location: FF_X36_Y12_N7
\osd1|config_buffer_o[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(4),
	sload => VCC,
	ena => \osd1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|config_buffer_o[1][5]~q\);

-- Location: LCCOMB_X35_Y15_N28
\osd1|config_buffer_o[0][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|config_buffer_o[0][5]~feeder_combout\ = \osd1|sbuf\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \osd1|sbuf\(4),
	combout => \osd1|config_buffer_o[0][5]~feeder_combout\);

-- Location: LCCOMB_X36_Y11_N2
\osd1|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \osd1|Decoder0~3_combout\ = (\osd1|cnf_byte\(1) & (\osd1|Decoder0~0_combout\ & (\osd1|cnf_byte\(0) & \osd1|cnf_byte[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|cnf_byte\(1),
	datab => \osd1|Decoder0~0_combout\,
	datac => \osd1|cnf_byte\(0),
	datad => \osd1|cnf_byte[3]~4_combout\,
	combout => \osd1|Decoder0~3_combout\);

-- Location: FF_X35_Y15_N29
\osd1|config_buffer_o[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	d => \osd1|config_buffer_o[0][5]~feeder_combout\,
	ena => \osd1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|config_buffer_o[0][5]~q\);

-- Location: LCCOMB_X36_Y12_N6
\info1|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux0~7_combout\ = ((\info1|localX\(4) & (\osd1|config_buffer_o[1][5]~q\)) # (!\info1|localX\(4) & ((\osd1|config_buffer_o[0][5]~q\)))) # (!\info1|localX\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(3),
	datab => \info1|localX\(4),
	datac => \osd1|config_buffer_o[1][5]~q\,
	datad => \osd1|config_buffer_o[0][5]~q\,
	combout => \info1|Mux0~7_combout\);

-- Location: LCCOMB_X35_Y12_N6
\info1|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux0~8_combout\ = (\info1|localX\(6) & (!\info1|localX\(4) & (\info1|localX\(3)))) # (!\info1|localX\(6) & (((\info1|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(6),
	datab => \info1|localX\(4),
	datac => \info1|localX\(3),
	datad => \info1|Mux0~7_combout\,
	combout => \info1|Mux0~8_combout\);

-- Location: LCCOMB_X34_Y13_N16
\info1|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux0~9_combout\ = (\info1|Mux0~6_combout\) # ((\info1|localX\(7) & (!\info1|localX\(5) & \info1|Mux0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(7),
	datab => \info1|localX\(5),
	datac => \info1|Mux0~6_combout\,
	datad => \info1|Mux0~8_combout\,
	combout => \info1|Mux0~9_combout\);

-- Location: FF_X34_Y13_N17
\info1|cChar[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|cChar\(5));

-- Location: LCCOMB_X31_Y12_N28
\info1|pixels~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~35_combout\ = (\info1|runY~q\ & (!\info1|cChar\(5) & \info1|runX~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \info1|runY~q\,
	datac => \info1|cChar\(5),
	datad => \info1|runX~q\,
	combout => \info1|pixels~35_combout\);

-- Location: LCCOMB_X36_Y12_N20
\info1|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux2~4_combout\ = (\info1|localX\(4) & (((\info1|localX\(3)) # (!\info1|localX\(5))))) # (!\info1|localX\(4) & (((\info1|localX\(5))) # (!\info1|localX\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(6),
	datab => \info1|localX\(4),
	datac => \info1|localX\(5),
	datad => \info1|localX\(3),
	combout => \info1|Mux2~4_combout\);

-- Location: FF_X36_Y12_N31
\osd1|config_buffer_o[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(2),
	sload => VCC,
	ena => \osd1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|config_buffer_o[1][3]~q\);

-- Location: LCCOMB_X36_Y12_N30
\info1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux2~0_combout\ = (\info1|localX\(5)) # (((\osd1|config_buffer_o[1][3]~q\) # (\info1|localX\(6))) # (!\info1|localX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(5),
	datab => \info1|localX\(3),
	datac => \osd1|config_buffer_o[1][3]~q\,
	datad => \info1|localX\(6),
	combout => \info1|Mux2~0_combout\);

-- Location: FF_X37_Y12_N31
\osd1|config_buffer_o[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(2),
	sload => VCC,
	ena => \osd1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|config_buffer_o[2][3]~q\);

-- Location: LCCOMB_X37_Y12_N30
\info1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux2~2_combout\ = (!\info1|localX\(6) & ((\info1|localX\(3) & (\info1|localX\(5))) # (!\info1|localX\(3) & ((\osd1|config_buffer_o[2][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(6),
	datab => \info1|localX\(5),
	datac => \osd1|config_buffer_o[2][3]~q\,
	datad => \info1|localX\(3),
	combout => \info1|Mux2~2_combout\);

-- Location: FF_X36_Y12_N1
\osd1|config_buffer_o[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(2),
	sload => VCC,
	ena => \osd1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|config_buffer_o[0][3]~q\);

-- Location: LCCOMB_X36_Y12_N0
\info1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux2~1_combout\ = (!\info1|localX\(5) & (((\osd1|config_buffer_o[0][3]~q\) # (\info1|localX\(6))) # (!\info1|localX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(5),
	datab => \info1|localX\(3),
	datac => \osd1|config_buffer_o[0][3]~q\,
	datad => \info1|localX\(6),
	combout => \info1|Mux2~1_combout\);

-- Location: LCCOMB_X36_Y12_N18
\info1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux2~3_combout\ = (\info1|localX\(4) & (\info1|Mux2~0_combout\)) # (!\info1|localX\(4) & (((\info1|Mux2~2_combout\) # (\info1|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux2~0_combout\,
	datab => \info1|localX\(4),
	datac => \info1|Mux2~2_combout\,
	datad => \info1|Mux2~1_combout\,
	combout => \info1|Mux2~3_combout\);

-- Location: LCCOMB_X35_Y12_N8
\info1|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux2~5_combout\ = (\info1|localX\(8)) # ((\info1|localX\(7) & ((\info1|Mux2~3_combout\))) # (!\info1|localX\(7) & (\info1|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux2~4_combout\,
	datab => \info1|localX\(7),
	datac => \info1|localX\(8),
	datad => \info1|Mux2~3_combout\,
	combout => \info1|Mux2~5_combout\);

-- Location: FF_X35_Y12_N9
\info1|cChar[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|Mux2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|cChar\(3));

-- Location: FF_X36_Y12_N9
\osd1|config_buffer_o[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(3),
	sload => VCC,
	ena => \osd1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|config_buffer_o[1][4]~q\);

-- Location: LCCOMB_X36_Y12_N8
\info1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux1~1_combout\ = (\info1|localX\(5)) # ((!\info1|localX\(6) & ((\osd1|config_buffer_o[1][4]~q\) # (!\info1|localX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(5),
	datab => \info1|localX\(3),
	datac => \osd1|config_buffer_o[1][4]~q\,
	datad => \info1|localX\(6),
	combout => \info1|Mux1~1_combout\);

-- Location: FF_X36_Y12_N3
\osd1|config_buffer_o[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(3),
	sload => VCC,
	ena => \osd1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|config_buffer_o[0][4]~q\);

-- Location: FF_X37_Y12_N5
\osd1|config_buffer_o[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(3),
	sload => VCC,
	ena => \osd1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|config_buffer_o[2][4]~q\);

-- Location: LCCOMB_X36_Y12_N2
\info1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux1~2_combout\ = (\info1|localX\(5) & ((\info1|localX\(3)) # ((\osd1|config_buffer_o[2][4]~q\)))) # (!\info1|localX\(5) & (((\osd1|config_buffer_o[0][4]~q\)) # (!\info1|localX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(5),
	datab => \info1|localX\(3),
	datac => \osd1|config_buffer_o[0][4]~q\,
	datad => \osd1|config_buffer_o[2][4]~q\,
	combout => \info1|Mux1~2_combout\);

-- Location: LCCOMB_X36_Y12_N28
\info1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux1~3_combout\ = (\info1|localX\(4) & (((\info1|Mux1~1_combout\)))) # (!\info1|localX\(4) & ((\info1|localX\(6)) # ((\info1|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(6),
	datab => \info1|localX\(4),
	datac => \info1|Mux1~1_combout\,
	datad => \info1|Mux1~2_combout\,
	combout => \info1|Mux1~3_combout\);

-- Location: LCCOMB_X35_Y12_N2
\info1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux1~4_combout\ = (\info1|localX\(4) & ((\info1|localX\(6)) # (\info1|localX\(5) $ (!\info1|localX\(3))))) # (!\info1|localX\(4) & ((\info1|localX\(5)) # ((\info1|localX\(3) & !\info1|localX\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(4),
	datab => \info1|localX\(5),
	datac => \info1|localX\(3),
	datad => \info1|localX\(6),
	combout => \info1|Mux1~4_combout\);

-- Location: LCCOMB_X35_Y12_N14
\info1|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux1~5_combout\ = (\info1|localX\(8)) # ((\info1|localX\(7) & (\info1|Mux1~3_combout\)) # (!\info1|localX\(7) & ((\info1|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux1~3_combout\,
	datab => \info1|localX\(7),
	datac => \info1|localX\(8),
	datad => \info1|Mux1~4_combout\,
	combout => \info1|Mux1~5_combout\);

-- Location: FF_X35_Y12_N15
\info1|cChar[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|cChar\(4));

-- Location: LCCOMB_X35_Y12_N26
\info1|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux5~7_combout\ = (\info1|localX\(5) & ((\info1|localX\(4) & ((!\info1|localX\(6)))) # (!\info1|localX\(4) & (\info1|localX\(3))))) # (!\info1|localX\(5) & ((\info1|localX\(3) & ((\info1|localX\(6)))) # (!\info1|localX\(3) & (\info1|localX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(4),
	datab => \info1|localX\(5),
	datac => \info1|localX\(3),
	datad => \info1|localX\(6),
	combout => \info1|Mux5~7_combout\);

-- Location: LCCOMB_X35_Y12_N12
\info1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux0~0_combout\ = (\info1|localX\(6)) # (\info1|localX\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \info1|localX\(6),
	datad => \info1|localX\(5),
	combout => \info1|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y12_N30
\info1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux0~1_combout\ = (\info1|localX\(8) & ((\info1|Mux0~0_combout\) # ((\info1|localX\(4)) # (\info1|localX\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux0~0_combout\,
	datab => \info1|localX\(8),
	datac => \info1|localX\(4),
	datad => \info1|localX\(7),
	combout => \info1|Mux0~1_combout\);

-- Location: FF_X37_Y12_N3
\osd1|config_buffer_o[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \stm_b15_io~input_o\,
	sload => VCC,
	ena => \osd1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|config_buffer_o[2][0]~q\);

-- Location: LCCOMB_X37_Y12_N2
\info1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux5~3_combout\ = (!\info1|localX\(3) & ((\info1|localX\(6) & (\info1|localX\(5))) # (!\info1|localX\(6) & ((\osd1|config_buffer_o[2][0]~q\) # (!\info1|localX\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(6),
	datab => \info1|localX\(5),
	datac => \osd1|config_buffer_o[2][0]~q\,
	datad => \info1|localX\(3),
	combout => \info1|Mux5~3_combout\);

-- Location: FF_X36_Y12_N15
\osd1|config_buffer_o[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \stm_b15_io~input_o\,
	sload => VCC,
	ena => \osd1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|config_buffer_o[1][0]~q\);

-- Location: LCCOMB_X36_Y12_N14
\info1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux5~2_combout\ = (\info1|localX\(5) & (\info1|localX\(3) $ (((\info1|localX\(6)))))) # (!\info1|localX\(5) & (((\osd1|config_buffer_o[1][0]~q\ & !\info1|localX\(6))) # (!\info1|localX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(5),
	datab => \info1|localX\(3),
	datac => \osd1|config_buffer_o[1][0]~q\,
	datad => \info1|localX\(6),
	combout => \info1|Mux5~2_combout\);

-- Location: FF_X36_Y12_N17
\osd1|config_buffer_o[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \stm_b15_io~input_o\,
	sload => VCC,
	ena => \osd1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|config_buffer_o[0][0]~q\);

-- Location: LCCOMB_X36_Y12_N16
\info1|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux5~4_combout\ = (\info1|localX\(3) & ((\info1|localX\(5) & ((!\info1|localX\(6)))) # (!\info1|localX\(5) & ((\osd1|config_buffer_o[0][0]~q\) # (\info1|localX\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(5),
	datab => \info1|localX\(3),
	datac => \osd1|config_buffer_o[0][0]~q\,
	datad => \info1|localX\(6),
	combout => \info1|Mux5~4_combout\);

-- Location: LCCOMB_X36_Y12_N26
\info1|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux5~5_combout\ = (\info1|localX\(4) & (((\info1|Mux5~2_combout\)))) # (!\info1|localX\(4) & ((\info1|Mux5~3_combout\) # ((\info1|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux5~3_combout\,
	datab => \info1|localX\(4),
	datac => \info1|Mux5~2_combout\,
	datad => \info1|Mux5~4_combout\,
	combout => \info1|Mux5~5_combout\);

-- Location: LCCOMB_X35_Y12_N24
\info1|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux5~6_combout\ = (\info1|localX\(8) & (\info1|Mux0~1_combout\)) # (!\info1|localX\(8) & (\info1|localX\(7) & ((\info1|Mux0~1_combout\) # (\info1|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux0~1_combout\,
	datab => \info1|localX\(7),
	datac => \info1|localX\(8),
	datad => \info1|Mux5~5_combout\,
	combout => \info1|Mux5~6_combout\);

-- Location: LCCOMB_X35_Y12_N18
\info1|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux5~8_combout\ = (\info1|Mux5~6_combout\) # ((!\info1|localX\(8) & (!\info1|localX\(7) & \info1|Mux5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(8),
	datab => \info1|localX\(7),
	datac => \info1|Mux5~7_combout\,
	datad => \info1|Mux5~6_combout\,
	combout => \info1|Mux5~8_combout\);

-- Location: FF_X35_Y12_N19
\info1|cChar[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|Mux5~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|cChar\(0));

-- Location: LCCOMB_X35_Y12_N10
\info1|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux3~4_combout\ = (\info1|localX\(4) & (((\info1|localX\(3)) # (\info1|localX\(6))))) # (!\info1|localX\(4) & ((\info1|localX\(5)) # ((!\info1|localX\(3) & !\info1|localX\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(4),
	datab => \info1|localX\(5),
	datac => \info1|localX\(3),
	datad => \info1|localX\(6),
	combout => \info1|Mux3~4_combout\);

-- Location: FF_X36_Y12_N11
\osd1|config_buffer_o[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(1),
	sload => VCC,
	ena => \osd1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|config_buffer_o[0][2]~q\);

-- Location: LCCOMB_X36_Y12_N10
\info1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux3~2_combout\ = (\info1|localX\(3) & ((\info1|localX\(5) & ((!\info1|localX\(6)))) # (!\info1|localX\(5) & ((\osd1|config_buffer_o[0][2]~q\) # (\info1|localX\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(5),
	datab => \info1|localX\(3),
	datac => \osd1|config_buffer_o[0][2]~q\,
	datad => \info1|localX\(6),
	combout => \info1|Mux3~2_combout\);

-- Location: FF_X36_Y12_N25
\osd1|config_buffer_o[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(1),
	sload => VCC,
	ena => \osd1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|config_buffer_o[1][2]~q\);

-- Location: LCCOMB_X36_Y12_N24
\info1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux3~0_combout\ = (\info1|localX\(6) & (\info1|localX\(5) $ ((\info1|localX\(3))))) # (!\info1|localX\(6) & ((\info1|localX\(5)) # ((\osd1|config_buffer_o[1][2]~q\) # (!\info1|localX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(5),
	datab => \info1|localX\(3),
	datac => \osd1|config_buffer_o[1][2]~q\,
	datad => \info1|localX\(6),
	combout => \info1|Mux3~0_combout\);

-- Location: FF_X37_Y12_N19
\osd1|config_buffer_o[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(1),
	sload => VCC,
	ena => \osd1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|config_buffer_o[2][2]~q\);

-- Location: LCCOMB_X37_Y12_N18
\info1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux3~1_combout\ = (!\info1|localX\(3) & ((\info1|localX\(6) & (\info1|localX\(5))) # (!\info1|localX\(6) & ((\osd1|config_buffer_o[2][2]~q\) # (!\info1|localX\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(6),
	datab => \info1|localX\(5),
	datac => \osd1|config_buffer_o[2][2]~q\,
	datad => \info1|localX\(3),
	combout => \info1|Mux3~1_combout\);

-- Location: LCCOMB_X36_Y12_N12
\info1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux3~3_combout\ = (\info1|localX\(4) & (((\info1|Mux3~0_combout\)))) # (!\info1|localX\(4) & ((\info1|Mux3~2_combout\) # ((\info1|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux3~2_combout\,
	datab => \info1|Mux3~0_combout\,
	datac => \info1|localX\(4),
	datad => \info1|Mux3~1_combout\,
	combout => \info1|Mux3~3_combout\);

-- Location: LCCOMB_X35_Y12_N0
\info1|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux3~5_combout\ = (\info1|localX\(8)) # ((\info1|localX\(7) & ((\info1|Mux3~3_combout\))) # (!\info1|localX\(7) & (\info1|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux3~4_combout\,
	datab => \info1|localX\(8),
	datac => \info1|Mux3~3_combout\,
	datad => \info1|localX\(7),
	combout => \info1|Mux3~5_combout\);

-- Location: FF_X35_Y12_N1
\info1|cChar[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|cChar\(2));

-- Location: FF_X36_Y12_N5
\osd1|config_buffer_o[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(0),
	sload => VCC,
	ena => \osd1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|config_buffer_o[1][1]~q\);

-- Location: LCCOMB_X36_Y12_N4
\info1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux4~1_combout\ = (\info1|localX\(5) & (!\info1|localX\(3) & ((!\info1|localX\(6))))) # (!\info1|localX\(5) & ((\info1|localX\(6)) # ((\info1|localX\(3) & \osd1|config_buffer_o[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(5),
	datab => \info1|localX\(3),
	datac => \osd1|config_buffer_o[1][1]~q\,
	datad => \info1|localX\(6),
	combout => \info1|Mux4~1_combout\);

-- Location: FF_X37_Y12_N21
\osd1|config_buffer_o[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(0),
	sload => VCC,
	ena => \osd1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|config_buffer_o[2][1]~q\);

-- Location: LCCOMB_X37_Y12_N20
\info1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux4~2_combout\ = (!\info1|localX\(3) & ((\info1|localX\(6) & (\info1|localX\(5))) # (!\info1|localX\(6) & ((\osd1|config_buffer_o[2][1]~q\) # (!\info1|localX\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX\(6),
	datab => \info1|localX\(5),
	datac => \osd1|config_buffer_o[2][1]~q\,
	datad => \info1|localX\(3),
	combout => \info1|Mux4~2_combout\);

-- Location: FF_X36_Y12_N23
\osd1|config_buffer_o[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stm_b13_io~input_o\,
	asdata => \osd1|sbuf\(0),
	sload => VCC,
	ena => \osd1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \osd1|config_buffer_o[0][1]~q\);

-- Location: LCCOMB_X36_Y12_N22
\info1|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux4~3_combout\ = (\info1|Mux4~2_combout\) # ((\info1|localX\(3) & ((\osd1|config_buffer_o[0][1]~q\) # (\info1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux4~2_combout\,
	datab => \info1|localX\(3),
	datac => \osd1|config_buffer_o[0][1]~q\,
	datad => \info1|Mux0~0_combout\,
	combout => \info1|Mux4~3_combout\);

-- Location: LCCOMB_X35_Y12_N16
\info1|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux4~4_combout\ = (!\info1|localX\(8) & ((\info1|localX\(4) & (\info1|Mux4~1_combout\)) # (!\info1|localX\(4) & ((\info1|Mux4~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux4~1_combout\,
	datab => \info1|localX\(8),
	datac => \info1|localX\(4),
	datad => \info1|Mux4~3_combout\,
	combout => \info1|Mux4~4_combout\);

-- Location: LCCOMB_X35_Y12_N22
\info1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux4~0_combout\ = \info1|localX\(4) $ (((!\info1|localX\(6) & \info1|localX\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \info1|localX\(6),
	datac => \info1|localX\(4),
	datad => \info1|localX\(5),
	combout => \info1|Mux4~0_combout\);

-- Location: LCCOMB_X35_Y12_N20
\info1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux1~0_combout\ = (\info1|localX\(7)) # (\info1|localX\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \info1|localX\(7),
	datad => \info1|localX\(8),
	combout => \info1|Mux1~0_combout\);

-- Location: LCCOMB_X35_Y12_N4
\info1|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux4~5_combout\ = (\info1|Mux1~0_combout\ & ((\info1|Mux0~1_combout\) # ((\info1|Mux4~4_combout\)))) # (!\info1|Mux1~0_combout\ & (((\info1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux0~1_combout\,
	datab => \info1|Mux4~4_combout\,
	datac => \info1|Mux4~0_combout\,
	datad => \info1|Mux1~0_combout\,
	combout => \info1|Mux4~5_combout\);

-- Location: FF_X35_Y12_N5
\info1|cChar[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|Mux4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|cChar\(1));

-- Location: LCCOMB_X34_Y11_N4
\info1|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux14~1_combout\ = (\info1|cChar\(2) & (((!\info1|cChar\(0) & !\info1|cChar\(1))))) # (!\info1|cChar\(2) & ((\info1|cChar\(4) & ((\info1|cChar\(1)))) # (!\info1|cChar\(4) & (\info1|cChar\(0) & !\info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(4),
	datab => \info1|cChar\(0),
	datac => \info1|cChar\(2),
	datad => \info1|cChar\(1),
	combout => \info1|Mux14~1_combout\);

-- Location: LCCOMB_X34_Y11_N10
\info1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux14~0_combout\ = (\info1|cChar\(0) & (((\info1|cChar\(2) & !\info1|cChar\(1))))) # (!\info1|cChar\(0) & (!\info1|cChar\(4) & (!\info1|cChar\(2) & \info1|cChar\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(4),
	datab => \info1|cChar\(0),
	datac => \info1|cChar\(2),
	datad => \info1|cChar\(1),
	combout => \info1|Mux14~0_combout\);

-- Location: LCCOMB_X34_Y11_N18
\info1|pixels~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~36_combout\ = (\info1|pixels~35_combout\ & ((\info1|cChar\(3) & ((\info1|Mux14~0_combout\))) # (!\info1|cChar\(3) & (\info1|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels~35_combout\,
	datab => \info1|cChar\(3),
	datac => \info1|Mux14~1_combout\,
	datad => \info1|Mux14~0_combout\,
	combout => \info1|pixels~36_combout\);

-- Location: FF_X34_Y11_N19
\info1|pixels[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(12));

-- Location: LCCOMB_X34_Y12_N2
\info1|localX2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|localX2[0]~feeder_combout\ = \info1|localX\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info1|localX\(0),
	combout => \info1|localX2[0]~feeder_combout\);

-- Location: FF_X34_Y12_N3
\info1|localX2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|localX2[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|localX2\(0));

-- Location: FF_X31_Y12_N1
\info1|localX3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \info1|localX2\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|localX3\(0));

-- Location: LCCOMB_X30_Y11_N16
\info1|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux27~2_combout\ = (\info1|cChar\(3) & \info1|cChar\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(4),
	combout => \info1|Mux27~2_combout\);

-- Location: LCCOMB_X31_Y11_N18
\info1|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux27~1_combout\ = (\info1|cChar\(0)) # ((\info1|cChar\(3) & ((!\info1|cChar\(4)))) # (!\info1|cChar\(3) & ((\info1|cChar\(1)) # (\info1|cChar\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(3),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(4),
	combout => \info1|Mux27~1_combout\);

-- Location: LCCOMB_X30_Y11_N2
\info1|pixels~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~33_combout\ = (\info1|cChar\(2) & (\info1|cChar\(1) $ ((\info1|Mux27~2_combout\)))) # (!\info1|cChar\(2) & (((\info1|Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|Mux27~2_combout\,
	datac => \info1|cChar\(2),
	datad => \info1|Mux27~1_combout\,
	combout => \info1|pixels~33_combout\);

-- Location: LCCOMB_X30_Y13_N22
\info1|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux27~0_combout\ = (!\info1|cChar\(4) & (!\info1|cChar\(3) & (\info1|cChar\(5) & !\info1|cChar\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(4),
	datab => \info1|cChar\(3),
	datac => \info1|cChar\(5),
	datad => \info1|cChar\(2),
	combout => \info1|Mux27~0_combout\);

-- Location: LCCOMB_X30_Y13_N2
\info1|pixels~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~34_combout\ = (\info1|r_o~2_combout\ & ((\info1|Mux27~0_combout\) # ((\info1|pixels~33_combout\ & !\info1|cChar\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|r_o~2_combout\,
	datab => \info1|pixels~33_combout\,
	datac => \info1|cChar\(5),
	datad => \info1|Mux27~0_combout\,
	combout => \info1|pixels~34_combout\);

-- Location: FF_X30_Y13_N3
\info1|pixels[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(28));

-- Location: LCCOMB_X31_Y12_N6
\info1|Mux49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~2_combout\ = (\info1|localX3\(0) & (((\info1|localY\(1))))) # (!\info1|localX3\(0) & ((\info1|localY\(1) & ((\info1|pixels\(28)))) # (!\info1|localY\(1) & (\info1|pixels\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels\(12),
	datab => \info1|localX3\(0),
	datac => \info1|pixels\(28),
	datad => \info1|localY\(1),
	combout => \info1|Mux49~2_combout\);

-- Location: LCCOMB_X32_Y12_N26
\info1|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux38~0_combout\ = (!\info1|cChar\(3) & ((\info1|cChar\(1) & (!\info1|cChar\(0) & \info1|cChar\(4))) # (!\info1|cChar\(1) & (\info1|cChar\(0) & !\info1|cChar\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(0),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(4),
	combout => \info1|Mux38~0_combout\);

-- Location: LCCOMB_X32_Y11_N2
\info1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux9~0_combout\ = (!\info1|cChar\(3) & (!\info1|cChar\(4) & ((\info1|cChar\(0)) # (\info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(3),
	datab => \info1|cChar\(0),
	datac => \info1|cChar\(4),
	datad => \info1|cChar\(1),
	combout => \info1|Mux9~0_combout\);

-- Location: LCCOMB_X32_Y12_N28
\info1|pixels~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~31_combout\ = (\info1|cChar\(5) & (((\info1|cChar\(2)) # (!\info1|Mux9~0_combout\)))) # (!\info1|cChar\(5) & (\info1|Mux38~0_combout\ & (!\info1|cChar\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux38~0_combout\,
	datab => \info1|cChar\(5),
	datac => \info1|cChar\(2),
	datad => \info1|Mux9~0_combout\,
	combout => \info1|pixels~31_combout\);

-- Location: LCCOMB_X32_Y12_N0
\info1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux15~0_combout\ = (\info1|cChar\(1) & (((\info1|cChar\(3) & !\info1|cChar\(4))))) # (!\info1|cChar\(1) & (\info1|cChar\(0) & ((\info1|cChar\(4)) # (!\info1|cChar\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(0),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(4),
	combout => \info1|Mux15~0_combout\);

-- Location: LCCOMB_X32_Y12_N8
\info1|pixels~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~32_combout\ = (!\info1|pixels~31_combout\ & (\info1|r_o~2_combout\ & ((!\info1|cChar\(2)) # (!\info1|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels~31_combout\,
	datab => \info1|Mux15~0_combout\,
	datac => \info1|cChar\(2),
	datad => \info1|r_o~2_combout\,
	combout => \info1|pixels~32_combout\);

-- Location: FF_X32_Y12_N9
\info1|pixels[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(13));

-- Location: LCCOMB_X32_Y12_N6
\info1|pixels~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~37_combout\ = (\info1|cChar\(5) & !\info1|cChar\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \info1|cChar\(5),
	datad => \info1|cChar\(4),
	combout => \info1|pixels~37_combout\);

-- Location: LCCOMB_X32_Y12_N16
\info1|pixels~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~38_combout\ = (\info1|pixels~37_combout\ & (!\info1|cChar\(0) & (!\info1|cChar\(3) & \info1|cChar\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels~37_combout\,
	datab => \info1|cChar\(0),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(1),
	combout => \info1|pixels~38_combout\);

-- Location: LCCOMB_X32_Y12_N10
\info1|pixels~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~39_combout\ = (!\info1|cChar\(2) & ((\info1|pixels~38_combout\) # ((!\info1|Mux38~0_combout\ & !\info1|cChar\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux38~0_combout\,
	datab => \info1|cChar\(5),
	datac => \info1|cChar\(2),
	datad => \info1|pixels~38_combout\,
	combout => \info1|pixels~39_combout\);

-- Location: LCCOMB_X32_Y11_N0
\info1|pixels~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~29_combout\ = (!\info1|cChar\(5) & \info1|cChar\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \info1|cChar\(5),
	datad => \info1|cChar\(2),
	combout => \info1|pixels~29_combout\);

-- Location: LCCOMB_X30_Y13_N26
\info1|Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux34~1_combout\ = \info1|cChar\(4) $ (((\info1|cChar\(0) & (\info1|cChar\(1))) # (!\info1|cChar\(0) & ((\info1|cChar\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(4),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(0),
	combout => \info1|Mux34~1_combout\);

-- Location: LCCOMB_X32_Y12_N18
\info1|pixels~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~40_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~39_combout\) # ((\info1|pixels~29_combout\ & !\info1|Mux34~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels~39_combout\,
	datab => \info1|pixels~29_combout\,
	datac => \info1|Mux34~1_combout\,
	datad => \info1|r_o~2_combout\,
	combout => \info1|pixels~40_combout\);

-- Location: FF_X32_Y12_N19
\info1|pixels[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(29));

-- Location: LCCOMB_X31_Y12_N8
\info1|Mux49~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~3_combout\ = (\info1|Mux49~2_combout\ & (((\info1|pixels\(29))) # (!\info1|localX3\(0)))) # (!\info1|Mux49~2_combout\ & (\info1|localX3\(0) & (\info1|pixels\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux49~2_combout\,
	datab => \info1|localX3\(0),
	datac => \info1|pixels\(13),
	datad => \info1|pixels\(29),
	combout => \info1|Mux49~3_combout\);

-- Location: LCCOMB_X32_Y11_N26
\info1|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux21~0_combout\ = (!\info1|cChar\(3) & ((\info1|cChar\(0) & (!\info1|cChar\(4) & !\info1|cChar\(1))) # (!\info1|cChar\(0) & (\info1|cChar\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(3),
	datab => \info1|cChar\(0),
	datac => \info1|cChar\(4),
	datad => \info1|cChar\(1),
	combout => \info1|Mux21~0_combout\);

-- Location: LCCOMB_X32_Y11_N4
\info1|pixels~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~47_combout\ = (!\info1|cChar\(2) & ((\info1|cChar\(5) & ((\info1|Mux9~0_combout\))) # (!\info1|cChar\(5) & (!\info1|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux21~0_combout\,
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(5),
	datad => \info1|Mux9~0_combout\,
	combout => \info1|pixels~47_combout\);

-- Location: LCCOMB_X32_Y11_N30
\info1|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux21~1_combout\ = (\info1|cChar\(4) & (((!\info1|cChar\(1))))) # (!\info1|cChar\(4) & ((\info1|cChar\(3) & ((\info1|cChar\(1)) # (!\info1|cChar\(0)))) # (!\info1|cChar\(3) & (!\info1|cChar\(0) & \info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(3),
	datab => \info1|cChar\(0),
	datac => \info1|cChar\(4),
	datad => \info1|cChar\(1),
	combout => \info1|Mux21~1_combout\);

-- Location: LCCOMB_X32_Y11_N20
\info1|pixels~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~48_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~47_combout\) # ((!\info1|Mux21~1_combout\ & \info1|pixels~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|r_o~2_combout\,
	datab => \info1|pixels~47_combout\,
	datac => \info1|Mux21~1_combout\,
	datad => \info1|pixels~29_combout\,
	combout => \info1|pixels~48_combout\);

-- Location: FF_X32_Y11_N21
\info1|pixels[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(21));

-- Location: LCCOMB_X35_Y14_N28
\info1|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux20~0_combout\ = (\info1|cChar\(1) & (!\info1|cChar\(4) & ((!\info1|cChar\(0)) # (!\info1|cChar\(2))))) # (!\info1|cChar\(1) & (\info1|cChar\(4) & ((\info1|cChar\(0)) # (!\info1|cChar\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(4),
	combout => \info1|Mux20~0_combout\);

-- Location: LCCOMB_X35_Y14_N18
\info1|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux17~0_combout\ = (!\info1|cChar\(1) & (\info1|cChar\(2) & (\info1|cChar\(0) & \info1|cChar\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(4),
	combout => \info1|Mux17~0_combout\);

-- Location: LCCOMB_X35_Y14_N6
\info1|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux20~1_combout\ = (\info1|cChar\(5) & (((\info1|cChar\(3))))) # (!\info1|cChar\(5) & ((\info1|cChar\(3) & ((\info1|Mux17~0_combout\))) # (!\info1|cChar\(3) & (!\info1|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(5),
	datab => \info1|Mux20~0_combout\,
	datac => \info1|cChar\(3),
	datad => \info1|Mux17~0_combout\,
	combout => \info1|Mux20~1_combout\);

-- Location: LCCOMB_X35_Y14_N0
\info1|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux19~1_combout\ = (\info1|cChar\(1) & (\info1|cChar\(2) & (!\info1|cChar\(0) & \info1|cChar\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(4),
	combout => \info1|Mux19~1_combout\);

-- Location: LCCOMB_X35_Y14_N24
\info1|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux19~0_combout\ = (!\info1|cChar\(2) & (\info1|cChar\(0) & !\info1|cChar\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(4),
	combout => \info1|Mux19~0_combout\);

-- Location: LCCOMB_X35_Y14_N2
\info1|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux20~2_combout\ = (\info1|Mux20~1_combout\ & ((\info1|Mux19~1_combout\) # ((!\info1|cChar\(5))))) # (!\info1|Mux20~1_combout\ & (((\info1|cChar\(5) & \info1|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux20~1_combout\,
	datab => \info1|Mux19~1_combout\,
	datac => \info1|cChar\(5),
	datad => \info1|Mux19~0_combout\,
	combout => \info1|Mux20~2_combout\);

-- Location: LCCOMB_X31_Y12_N10
\info1|pixels~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~99_combout\ = (\info1|runX~q\ & (\info1|runY~q\ & \info1|Mux20~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \info1|runX~q\,
	datac => \info1|runY~q\,
	datad => \info1|Mux20~2_combout\,
	combout => \info1|pixels~99_combout\);

-- Location: FF_X31_Y12_N11
\info1|pixels[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(20));

-- Location: LCCOMB_X30_Y13_N0
\info1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux7~0_combout\ = (!\info1|cChar\(2) & (!\info1|cChar\(3) & \info1|cChar\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(1),
	combout => \info1|Mux7~0_combout\);

-- Location: LCCOMB_X31_Y11_N12
\info1|pixels~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~44_combout\ = (\info1|cChar\(1) & (((!\info1|cChar\(0) & !\info1|cChar\(4))))) # (!\info1|cChar\(1) & ((\info1|cChar\(0) & ((\info1|cChar\(4)))) # (!\info1|cChar\(0) & (\info1|cChar\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(3),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(4),
	combout => \info1|pixels~44_combout\);

-- Location: LCCOMB_X31_Y14_N12
\info1|pixels~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~43_combout\ = (\info1|cChar\(0) & (((!\info1|cChar\(3) & !\info1|cChar\(1))) # (!\info1|cChar\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(0),
	datab => \info1|cChar\(3),
	datac => \info1|cChar\(4),
	datad => \info1|cChar\(1),
	combout => \info1|pixels~43_combout\);

-- Location: LCCOMB_X31_Y12_N14
\info1|pixels~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~45_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~44_combout\ & (!\info1|pixels~43_combout\)) # (!\info1|pixels~44_combout\ & ((\info1|pixels~43_combout\) # (!\info1|cChar\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels~44_combout\,
	datab => \info1|pixels~43_combout\,
	datac => \info1|r_o~2_combout\,
	datad => \info1|cChar\(2),
	combout => \info1|pixels~45_combout\);

-- Location: LCCOMB_X31_Y12_N12
\info1|pixels~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~46_combout\ = (\info1|pixels~45_combout\ & (((\info1|Mux7~0_combout\ & \info1|pixels~43_combout\)) # (!\info1|cChar\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux7~0_combout\,
	datab => \info1|pixels~45_combout\,
	datac => \info1|cChar\(5),
	datad => \info1|pixels~43_combout\,
	combout => \info1|pixels~46_combout\);

-- Location: FF_X31_Y12_N13
\info1|pixels[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(4));

-- Location: LCCOMB_X31_Y12_N22
\info1|Mux49~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~4_combout\ = (\info1|localY\(1) & ((\info1|pixels\(20)) # ((\info1|localX3\(0))))) # (!\info1|localY\(1) & (((\info1|pixels\(4) & !\info1|localX3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels\(20),
	datab => \info1|localY\(1),
	datac => \info1|pixels\(4),
	datad => \info1|localX3\(0),
	combout => \info1|Mux49~4_combout\);

-- Location: LCCOMB_X32_Y11_N24
\info1|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux9~2_combout\ = (\info1|cChar\(3) & (\info1|cChar\(0) & (!\info1|cChar\(4) & !\info1|cChar\(1)))) # (!\info1|cChar\(3) & (\info1|cChar\(4) & (\info1|cChar\(0) $ (\info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(3),
	datab => \info1|cChar\(0),
	datac => \info1|cChar\(4),
	datad => \info1|cChar\(1),
	combout => \info1|Mux9~2_combout\);

-- Location: LCCOMB_X32_Y11_N12
\info1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux9~1_combout\ = (!\info1|cChar\(4) & ((\info1|cChar\(3) & (!\info1|cChar\(0) & \info1|cChar\(1))) # (!\info1|cChar\(3) & (\info1|cChar\(0) & !\info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(3),
	datab => \info1|cChar\(0),
	datac => \info1|cChar\(4),
	datad => \info1|cChar\(1),
	combout => \info1|Mux9~1_combout\);

-- Location: LCCOMB_X32_Y11_N6
\info1|pixels~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~41_combout\ = (!\info1|cChar\(2) & ((\info1|cChar\(5) & ((\info1|Mux9~0_combout\))) # (!\info1|cChar\(5) & (!\info1|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux9~1_combout\,
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(5),
	datad => \info1|Mux9~0_combout\,
	combout => \info1|pixels~41_combout\);

-- Location: LCCOMB_X32_Y11_N10
\info1|pixels~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~42_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~41_combout\) # ((!\info1|Mux9~2_combout\ & \info1|pixels~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|r_o~2_combout\,
	datab => \info1|Mux9~2_combout\,
	datac => \info1|pixels~41_combout\,
	datad => \info1|pixels~29_combout\,
	combout => \info1|pixels~42_combout\);

-- Location: FF_X32_Y11_N11
\info1|pixels[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(5));

-- Location: LCCOMB_X31_Y12_N16
\info1|Mux49~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~5_combout\ = (\info1|localX3\(0) & ((\info1|Mux49~4_combout\ & (\info1|pixels\(21))) # (!\info1|Mux49~4_combout\ & ((\info1|pixels\(5)))))) # (!\info1|localX3\(0) & (((\info1|Mux49~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels\(21),
	datab => \info1|localX3\(0),
	datac => \info1|Mux49~4_combout\,
	datad => \info1|pixels\(5),
	combout => \info1|Mux49~5_combout\);

-- Location: LCCOMB_X30_Y12_N2
\info1|Mux49~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~6_combout\ = (\info1|localY\(2) & (((\info1|localY\(0))))) # (!\info1|localY\(2) & ((\info1|localY\(0) & (\info1|Mux49~3_combout\)) # (!\info1|localY\(0) & ((\info1|Mux49~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localY\(2),
	datab => \info1|Mux49~3_combout\,
	datac => \info1|localY\(0),
	datad => \info1|Mux49~5_combout\,
	combout => \info1|Mux49~6_combout\);

-- Location: LCCOMB_X31_Y11_N22
\info1|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux41~0_combout\ = (\info1|cChar\(1) & (!\info1|cChar\(3) & (!\info1|cChar\(0)))) # (!\info1|cChar\(1) & (\info1|cChar\(0) & (\info1|cChar\(3) $ (!\info1|cChar\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(3),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(4),
	combout => \info1|Mux41~0_combout\);

-- Location: LCCOMB_X31_Y11_N24
\info1|Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux41~1_combout\ = (\info1|cChar\(1) & (\info1|cChar\(4) $ (((\info1|cChar\(3)) # (\info1|cChar\(0)))))) # (!\info1|cChar\(1) & (((\info1|cChar\(0) & \info1|cChar\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(3),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(4),
	combout => \info1|Mux41~1_combout\);

-- Location: LCCOMB_X31_Y11_N2
\info1|pixels~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~49_combout\ = (!\info1|cChar\(5) & ((\info1|cChar\(2) & ((!\info1|Mux41~1_combout\))) # (!\info1|cChar\(2) & (!\info1|Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux41~0_combout\,
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(5),
	datad => \info1|Mux41~1_combout\,
	combout => \info1|pixels~49_combout\);

-- Location: LCCOMB_X31_Y13_N24
\info1|pixels~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~50_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~49_combout\) # ((!\info1|cChar\(1) & \info1|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|pixels~49_combout\,
	datac => \info1|r_o~2_combout\,
	datad => \info1|Mux27~0_combout\,
	combout => \info1|pixels~50_combout\);

-- Location: FF_X31_Y13_N25
\info1|pixels[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(45));

-- Location: LCCOMB_X30_Y11_N30
\info1|pixels~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~52_combout\ = (\info1|cChar\(4) & ((\info1|cChar\(2) & (!\info1|cChar\(0))) # (!\info1|cChar\(2) & ((\info1|cChar\(1)))))) # (!\info1|cChar\(4) & (\info1|cChar\(0) & (\info1|cChar\(2) $ (!\info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(2),
	datab => \info1|cChar\(4),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(1),
	combout => \info1|pixels~52_combout\);

-- Location: LCCOMB_X30_Y11_N28
\info1|pixels~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~51_combout\ = (\info1|cChar\(1) & ((\info1|cChar\(4)) # ((!\info1|cChar\(2) & !\info1|cChar\(0))))) # (!\info1|cChar\(1) & (\info1|cChar\(2) & ((\info1|cChar\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(2),
	datab => \info1|cChar\(4),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(1),
	combout => \info1|pixels~51_combout\);

-- Location: LCCOMB_X30_Y11_N8
\info1|pixels~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~53_combout\ = (\info1|pixels~51_combout\ & ((\info1|cChar\(2) & (\info1|pixels~52_combout\ & \info1|cChar\(3))) # (!\info1|cChar\(2) & (!\info1|pixels~52_combout\ & !\info1|cChar\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(2),
	datab => \info1|pixels~52_combout\,
	datac => \info1|cChar\(3),
	datad => \info1|pixels~51_combout\,
	combout => \info1|pixels~53_combout\);

-- Location: LCCOMB_X30_Y11_N18
\info1|pixels~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~54_combout\ = (\info1|pixels~52_combout\ & ((\info1|pixels~51_combout\ & (!\info1|cChar\(2))) # (!\info1|pixels~51_combout\ & ((!\info1|cChar\(3)))))) # (!\info1|pixels~52_combout\ & (\info1|cChar\(2) & (\info1|cChar\(3) & 
-- \info1|pixels~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(2),
	datab => \info1|pixels~52_combout\,
	datac => \info1|cChar\(3),
	datad => \info1|pixels~51_combout\,
	combout => \info1|pixels~54_combout\);

-- Location: LCCOMB_X30_Y11_N0
\info1|pixels~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~55_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~53_combout\ & (\info1|cChar\(5) & !\info1|pixels~54_combout\)) # (!\info1|pixels~53_combout\ & (!\info1|cChar\(5) & \info1|pixels~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|r_o~2_combout\,
	datab => \info1|pixels~53_combout\,
	datac => \info1|cChar\(5),
	datad => \info1|pixels~54_combout\,
	combout => \info1|pixels~55_combout\);

-- Location: FF_X30_Y11_N1
\info1|pixels[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(44));

-- Location: LCCOMB_X30_Y12_N4
\info1|Mux49~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~7_combout\ = (!\info1|localY\(1) & ((\info1|localX3\(0) & (\info1|pixels\(45))) # (!\info1|localX3\(0) & ((\info1|pixels\(44))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels\(45),
	datab => \info1|pixels\(44),
	datac => \info1|localX3\(0),
	datad => \info1|localY\(1),
	combout => \info1|Mux49~7_combout\);

-- Location: LCCOMB_X30_Y13_N24
\info1|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux34~0_combout\ = (\info1|cChar\(3) & (((\info1|cChar\(4) & \info1|cChar\(0))))) # (!\info1|cChar\(3) & ((\info1|cChar\(1) & ((!\info1|cChar\(0)))) # (!\info1|cChar\(1) & (!\info1|cChar\(4) & \info1|cChar\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(4),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(0),
	combout => \info1|Mux34~0_combout\);

-- Location: LCCOMB_X30_Y13_N12
\info1|pixels~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~24_combout\ = (!\info1|cChar\(5) & ((\info1|cChar\(2) & (!\info1|Mux34~1_combout\)) # (!\info1|cChar\(2) & ((!\info1|Mux34~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux34~1_combout\,
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(5),
	datad => \info1|Mux34~0_combout\,
	combout => \info1|pixels~24_combout\);

-- Location: LCCOMB_X30_Y13_N8
\info1|pixels~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~25_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~24_combout\) # ((\info1|Mux27~0_combout\ & !\info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux27~0_combout\,
	datab => \info1|pixels~24_combout\,
	datac => \info1|r_o~2_combout\,
	datad => \info1|cChar\(1),
	combout => \info1|pixels~25_combout\);

-- Location: FF_X30_Y13_N9
\info1|pixels[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(37));

-- Location: LCCOMB_X31_Y14_N18
\info1|Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux45~1_combout\ = (\info1|cChar\(0) & (\info1|cChar\(2) & (\info1|cChar\(3) & !\info1|cChar\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(0),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(1),
	combout => \info1|Mux45~1_combout\);

-- Location: LCCOMB_X31_Y14_N14
\info1|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux45~0_combout\ = (\info1|cChar\(3) & (\info1|cChar\(1) & (\info1|cChar\(0) $ (!\info1|cChar\(2))))) # (!\info1|cChar\(3) & (!\info1|cChar\(0) & (\info1|cChar\(2) & !\info1|cChar\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(0),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(1),
	combout => \info1|Mux45~0_combout\);

-- Location: LCCOMB_X31_Y14_N28
\info1|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux46~0_combout\ = (\info1|cChar\(0) & (\info1|cChar\(2) $ (((\info1|cChar\(3)) # (!\info1|cChar\(1)))))) # (!\info1|cChar\(0) & (\info1|cChar\(2) & (!\info1|cChar\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(0),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(1),
	combout => \info1|Mux46~0_combout\);

-- Location: LCCOMB_X31_Y14_N24
\info1|Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux46~1_combout\ = (\info1|cChar\(5) & (((\info1|cChar\(4))))) # (!\info1|cChar\(5) & ((\info1|cChar\(4) & ((!\info1|Mux46~0_combout\))) # (!\info1|cChar\(4) & (!\info1|Mux45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(5),
	datab => \info1|Mux45~0_combout\,
	datac => \info1|cChar\(4),
	datad => \info1|Mux46~0_combout\,
	combout => \info1|Mux46~1_combout\);

-- Location: LCCOMB_X30_Y14_N12
\info1|Mux46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux46~2_combout\ = (\info1|cChar\(5) & ((\info1|Mux46~1_combout\ & (\info1|Mux45~1_combout\)) # (!\info1|Mux46~1_combout\ & ((\info1|Mux7~0_combout\))))) # (!\info1|cChar\(5) & (((\info1|Mux46~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux45~1_combout\,
	datab => \info1|Mux7~0_combout\,
	datac => \info1|cChar\(5),
	datad => \info1|Mux46~1_combout\,
	combout => \info1|Mux46~2_combout\);

-- Location: LCCOMB_X30_Y14_N26
\info1|pixels~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~98_combout\ = (\info1|Mux46~2_combout\ & (\info1|runX~q\ & \info1|runY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux46~2_combout\,
	datab => \info1|runX~q\,
	datad => \info1|runY~q\,
	combout => \info1|pixels~98_combout\);

-- Location: FF_X30_Y14_N27
\info1|pixels[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(52));

-- Location: LCCOMB_X34_Y11_N6
\info1|Mux33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux33~2_combout\ = (\info1|cChar\(4) & (\info1|cChar\(0) & (\info1|cChar\(2) $ (\info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(4),
	datab => \info1|cChar\(0),
	datac => \info1|cChar\(2),
	datad => \info1|cChar\(1),
	combout => \info1|Mux33~2_combout\);

-- Location: LCCOMB_X34_Y11_N16
\info1|pixels~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~27_combout\ = (!\info1|cChar\(5) & \info1|cChar\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \info1|cChar\(5),
	datad => \info1|cChar\(3),
	combout => \info1|pixels~27_combout\);

-- Location: LCCOMB_X34_Y11_N26
\info1|Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux33~1_combout\ = (\info1|cChar\(4)) # ((\info1|cChar\(2)) # ((\info1|cChar\(0) & \info1|cChar\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(4),
	datab => \info1|cChar\(0),
	datac => \info1|cChar\(2),
	datad => \info1|cChar\(1),
	combout => \info1|Mux33~1_combout\);

-- Location: LCCOMB_X34_Y11_N24
\info1|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux33~0_combout\ = (\info1|cChar\(2) & ((\info1|cChar\(0) $ (!\info1|cChar\(1))))) # (!\info1|cChar\(2) & ((\info1|cChar\(4) & ((\info1|cChar\(1)))) # (!\info1|cChar\(4) & (\info1|cChar\(0) & !\info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(4),
	datab => \info1|cChar\(0),
	datac => \info1|cChar\(2),
	datad => \info1|cChar\(1),
	combout => \info1|Mux33~0_combout\);

-- Location: LCCOMB_X34_Y11_N28
\info1|pixels~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~26_combout\ = (!\info1|cChar\(3) & ((\info1|cChar\(5) & (!\info1|Mux33~1_combout\)) # (!\info1|cChar\(5) & ((\info1|Mux33~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux33~1_combout\,
	datab => \info1|cChar\(3),
	datac => \info1|cChar\(5),
	datad => \info1|Mux33~0_combout\,
	combout => \info1|pixels~26_combout\);

-- Location: LCCOMB_X34_Y11_N0
\info1|pixels~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~28_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~26_combout\) # ((\info1|Mux33~2_combout\ & \info1|pixels~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux33~2_combout\,
	datab => \info1|pixels~27_combout\,
	datac => \info1|r_o~2_combout\,
	datad => \info1|pixels~26_combout\,
	combout => \info1|pixels~28_combout\);

-- Location: FF_X34_Y11_N1
\info1|pixels[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(36));

-- Location: LCCOMB_X31_Y12_N2
\info1|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~0_combout\ = (\info1|localX3\(0) & (((\info1|localY\(1))))) # (!\info1|localX3\(0) & ((\info1|localY\(1) & (\info1|pixels\(52))) # (!\info1|localY\(1) & ((\info1|pixels\(36))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels\(52),
	datab => \info1|localX3\(0),
	datac => \info1|pixels\(36),
	datad => \info1|localY\(1),
	combout => \info1|Mux49~0_combout\);

-- Location: LCCOMB_X31_Y11_N8
\info1|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux47~0_combout\ = (\info1|cChar\(3) & (((\info1|cChar\(0))))) # (!\info1|cChar\(3) & (\info1|cChar\(1) & (\info1|cChar\(0) $ (\info1|cChar\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(3),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(4),
	combout => \info1|Mux47~0_combout\);

-- Location: LCCOMB_X32_Y11_N28
\info1|pixels~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~116_combout\ = (\info1|cChar\(0) & (\info1|cChar\(3) $ (((!\info1|cChar\(1)) # (!\info1|cChar\(4)))))) # (!\info1|cChar\(0) & (((\info1|cChar\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(3),
	datab => \info1|cChar\(0),
	datac => \info1|cChar\(4),
	datad => \info1|cChar\(1),
	combout => \info1|pixels~116_combout\);

-- Location: LCCOMB_X32_Y11_N14
\info1|pixels~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~117_combout\ = (!\info1|cChar\(2) & ((\info1|cChar\(5) & (!\info1|cChar\(4) & \info1|pixels~116_combout\)) # (!\info1|cChar\(5) & ((\info1|pixels~116_combout\) # (!\info1|cChar\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(5),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(4),
	datad => \info1|pixels~116_combout\,
	combout => \info1|pixels~117_combout\);

-- Location: LCCOMB_X32_Y11_N8
\info1|pixels~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~30_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~117_combout\) # ((!\info1|Mux47~0_combout\ & \info1|pixels~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux47~0_combout\,
	datab => \info1|pixels~29_combout\,
	datac => \info1|pixels~117_combout\,
	datad => \info1|r_o~2_combout\,
	combout => \info1|pixels~30_combout\);

-- Location: FF_X32_Y11_N9
\info1|pixels[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(53));

-- Location: LCCOMB_X31_Y12_N4
\info1|Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~1_combout\ = (\info1|Mux49~0_combout\ & (((\info1|pixels\(53)) # (!\info1|localX3\(0))))) # (!\info1|Mux49~0_combout\ & (\info1|pixels\(37) & ((\info1|localX3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels\(37),
	datab => \info1|Mux49~0_combout\,
	datac => \info1|pixels\(53),
	datad => \info1|localX3\(0),
	combout => \info1|Mux49~1_combout\);

-- Location: LCCOMB_X30_Y12_N22
\info1|Mux49~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~8_combout\ = (\info1|Mux49~6_combout\ & ((\info1|Mux49~7_combout\) # ((!\info1|localY\(2))))) # (!\info1|Mux49~6_combout\ & (((\info1|Mux49~1_combout\ & \info1|localY\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux49~6_combout\,
	datab => \info1|Mux49~7_combout\,
	datac => \info1|Mux49~1_combout\,
	datad => \info1|localY\(2),
	combout => \info1|Mux49~8_combout\);

-- Location: LCCOMB_X30_Y11_N20
\info1|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux23~0_combout\ = (\info1|cChar\(2) & (\info1|cChar\(4) & (!\info1|cChar\(5) & \info1|cChar\(1)))) # (!\info1|cChar\(2) & (!\info1|cChar\(4) & (\info1|cChar\(5) & !\info1|cChar\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(2),
	datab => \info1|cChar\(4),
	datac => \info1|cChar\(5),
	datad => \info1|cChar\(1),
	combout => \info1|Mux23~0_combout\);

-- Location: LCCOMB_X30_Y11_N4
\info1|pixels~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~89_combout\ = (\info1|r_o~2_combout\ & (!\info1|cChar\(3) & (!\info1|cChar\(0) & \info1|Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|r_o~2_combout\,
	datab => \info1|cChar\(3),
	datac => \info1|cChar\(0),
	datad => \info1|Mux23~0_combout\,
	combout => \info1|pixels~89_combout\);

-- Location: FF_X30_Y11_N5
\info1|pixels[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(23));

-- Location: LCCOMB_X30_Y11_N6
\info1|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux36~0_combout\ = (\info1|cChar\(2) & (!\info1|cChar\(5) & (\info1|cChar\(4) $ (!\info1|cChar\(1))))) # (!\info1|cChar\(2) & (!\info1|cChar\(4) & (\info1|cChar\(5) & !\info1|cChar\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(2),
	datab => \info1|cChar\(4),
	datac => \info1|cChar\(5),
	datad => \info1|cChar\(1),
	combout => \info1|Mux36~0_combout\);

-- Location: LCCOMB_X30_Y11_N14
\info1|pixels~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~97_combout\ = (\info1|r_o~2_combout\ & (!\info1|cChar\(3) & (!\info1|cChar\(0) & \info1|Mux36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|r_o~2_combout\,
	datab => \info1|cChar\(3),
	datac => \info1|cChar\(0),
	datad => \info1|Mux36~0_combout\,
	combout => \info1|pixels~97_combout\);

-- Location: FF_X30_Y11_N15
\info1|pixels[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(39));

-- Location: LCCOMB_X30_Y12_N20
\info1|Mux49~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~29_combout\ = (\info1|localY\(1) & (\info1|pixels\(23) & (!\info1|localY\(0)))) # (!\info1|localY\(1) & ((\info1|localY\(0) & (\info1|pixels\(23))) # (!\info1|localY\(0) & ((\info1|pixels\(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels\(23),
	datab => \info1|localY\(1),
	datac => \info1|localY\(0),
	datad => \info1|pixels\(39),
	combout => \info1|Mux49~29_combout\);

-- Location: LCCOMB_X31_Y11_N10
\info1|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux22~0_combout\ = (\info1|cChar\(1) & (((!\info1|cChar\(4))))) # (!\info1|cChar\(1) & ((\info1|cChar\(4)) # (\info1|cChar\(3) $ (\info1|cChar\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(3),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(4),
	combout => \info1|Mux22~0_combout\);

-- Location: LCCOMB_X31_Y11_N26
\info1|pixels~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~110_combout\ = (\info1|cChar\(0) & (!\info1|cChar\(5) & (\info1|cChar\(1) $ (\info1|cChar\(4))))) # (!\info1|cChar\(0) & (((!\info1|cChar\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(0),
	datac => \info1|cChar\(5),
	datad => \info1|cChar\(4),
	combout => \info1|pixels~110_combout\);

-- Location: LCCOMB_X32_Y11_N18
\info1|pixels~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~111_combout\ = (!\info1|cChar\(2) & ((\info1|cChar\(3) & ((!\info1|cChar\(5)))) # (!\info1|cChar\(3) & (\info1|pixels~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels~110_combout\,
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(5),
	datad => \info1|cChar\(3),
	combout => \info1|pixels~111_combout\);

-- Location: LCCOMB_X32_Y11_N22
\info1|pixels~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~91_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~111_combout\) # ((!\info1|Mux22~0_combout\ & \info1|pixels~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux22~0_combout\,
	datab => \info1|pixels~29_combout\,
	datac => \info1|pixels~111_combout\,
	datad => \info1|r_o~2_combout\,
	combout => \info1|pixels~91_combout\);

-- Location: FF_X32_Y11_N23
\info1|pixels[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(22));

-- Location: LCCOMB_X31_Y11_N4
\info1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux10~0_combout\ = (\info1|cChar\(2) & ((\info1|cChar\(1)) # ((\info1|cChar\(0) & \info1|cChar\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(4),
	combout => \info1|Mux10~0_combout\);

-- Location: LCCOMB_X31_Y11_N14
\info1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux10~1_combout\ = (\info1|cChar\(2) & ((\info1|cChar\(1) & ((\info1|cChar\(0)) # (\info1|cChar\(4)))) # (!\info1|cChar\(1) & ((!\info1|cChar\(4)) # (!\info1|cChar\(0)))))) # (!\info1|cChar\(2) & (((\info1|cChar\(0) & \info1|cChar\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(4),
	combout => \info1|Mux10~1_combout\);

-- Location: LCCOMB_X31_Y11_N16
\info1|pixels~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~92_combout\ = (!\info1|cChar\(5) & ((\info1|cChar\(3) & (\info1|Mux10~0_combout\)) # (!\info1|cChar\(3) & ((\info1|Mux10~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(3),
	datab => \info1|Mux10~0_combout\,
	datac => \info1|cChar\(5),
	datad => \info1|Mux10~1_combout\,
	combout => \info1|pixels~92_combout\);

-- Location: LCCOMB_X32_Y13_N16
\info1|pixels~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~109_combout\ = (\info1|runY~q\ & (\info1|runX~q\ & ((\info1|pixels~92_combout\) # (\info1|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels~92_combout\,
	datab => \info1|Mux27~0_combout\,
	datac => \info1|runY~q\,
	datad => \info1|runX~q\,
	combout => \info1|pixels~109_combout\);

-- Location: FF_X32_Y13_N17
\info1|pixels[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(6));

-- Location: LCCOMB_X31_Y13_N10
\info1|Mux49~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~26_combout\ = (\info1|localY\(0) & (((\info1|localY\(1))))) # (!\info1|localY\(0) & ((\info1|localY\(1) & (\info1|pixels\(22))) # (!\info1|localY\(1) & ((\info1|pixels\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localY\(0),
	datab => \info1|pixels\(22),
	datac => \info1|localY\(1),
	datad => \info1|pixels\(6),
	combout => \info1|Mux49~26_combout\);

-- Location: LCCOMB_X32_Y14_N20
\info1|Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux18~5_combout\ = (!\info1|cChar\(4) & (!\info1|cChar\(2) & (!\info1|cChar\(3) & !\info1|cChar\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(4),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(0),
	combout => \info1|Mux18~5_combout\);

-- Location: LCCOMB_X32_Y13_N18
\info1|pixels~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~94_combout\ = (\info1|cChar\(0) & (!\info1|cChar\(2) & (\info1|cChar\(3) $ (!\info1|cChar\(4))))) # (!\info1|cChar\(0) & (\info1|cChar\(3) & (\info1|cChar\(2) $ (\info1|cChar\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(2),
	datab => \info1|cChar\(3),
	datac => \info1|cChar\(4),
	datad => \info1|cChar\(0),
	combout => \info1|pixels~94_combout\);

-- Location: LCCOMB_X32_Y13_N28
\info1|pixels~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~95_combout\ = (\info1|cChar\(5) & (\info1|Mux18~5_combout\ & ((!\info1|cChar\(1))))) # (!\info1|cChar\(5) & (((\info1|pixels~94_combout\) # (\info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux18~5_combout\,
	datab => \info1|pixels~94_combout\,
	datac => \info1|cChar\(5),
	datad => \info1|cChar\(1),
	combout => \info1|pixels~95_combout\);

-- Location: LCCOMB_X32_Y13_N0
\info1|pixels~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~93_combout\ = (\info1|cChar\(2) & (((\info1|cChar\(4))))) # (!\info1|cChar\(2) & (\info1|cChar\(3) & ((!\info1|cChar\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(2),
	datab => \info1|cChar\(3),
	datac => \info1|cChar\(4),
	datad => \info1|cChar\(0),
	combout => \info1|pixels~93_combout\);

-- Location: LCCOMB_X32_Y13_N26
\info1|pixels~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~96_combout\ = (\info1|r_o~2_combout\ & (\info1|pixels~95_combout\ $ (((!\info1|pixels~93_combout\ & !\info1|cChar\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels~95_combout\,
	datab => \info1|pixels~93_combout\,
	datac => \info1|cChar\(5),
	datad => \info1|r_o~2_combout\,
	combout => \info1|pixels~96_combout\);

-- Location: FF_X32_Y13_N27
\info1|pixels[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(30));

-- Location: LCCOMB_X31_Y11_N30
\info1|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux16~1_combout\ = (\info1|cChar\(1) & (\info1|cChar\(3) & ((!\info1|cChar\(4))))) # (!\info1|cChar\(1) & ((\info1|cChar\(0)) # ((!\info1|cChar\(3) & \info1|cChar\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(3),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(4),
	combout => \info1|Mux16~1_combout\);

-- Location: LCCOMB_X31_Y11_N20
\info1|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux16~0_combout\ = (\info1|cChar\(0) & (!\info1|cChar\(3) & (\info1|cChar\(1) $ (!\info1|cChar\(4))))) # (!\info1|cChar\(0) & (\info1|cChar\(1) & (\info1|cChar\(3) $ (\info1|cChar\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(3),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(4),
	combout => \info1|Mux16~0_combout\);

-- Location: LCCOMB_X31_Y11_N0
\info1|pixels~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~90_combout\ = (!\info1|cChar\(5) & ((\info1|cChar\(2) & (!\info1|Mux16~1_combout\)) # (!\info1|cChar\(2) & ((!\info1|Mux16~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux16~1_combout\,
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(5),
	datad => \info1|Mux16~0_combout\,
	combout => \info1|pixels~90_combout\);

-- Location: LCCOMB_X32_Y13_N6
\info1|pixels~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~108_combout\ = (\info1|runY~q\ & (\info1|runX~q\ & ((\info1|pixels~90_combout\) # (\info1|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels~90_combout\,
	datab => \info1|Mux27~0_combout\,
	datac => \info1|runY~q\,
	datad => \info1|runX~q\,
	combout => \info1|pixels~108_combout\);

-- Location: FF_X32_Y13_N7
\info1|pixels[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(14));

-- Location: LCCOMB_X32_Y13_N4
\info1|Mux49~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~27_combout\ = (\info1|Mux49~26_combout\ & (((\info1|pixels\(30))) # (!\info1|localY\(0)))) # (!\info1|Mux49~26_combout\ & (\info1|localY\(0) & ((\info1|pixels\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux49~26_combout\,
	datab => \info1|localY\(0),
	datac => \info1|pixels\(30),
	datad => \info1|pixels\(14),
	combout => \info1|Mux49~27_combout\);

-- Location: LCCOMB_X30_Y12_N26
\info1|Mux49~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~28_combout\ = (\info1|localX3\(0) & ((\info1|pixels\(23)) # ((\info1|localY\(2))))) # (!\info1|localX3\(0) & (((\info1|Mux49~27_combout\ & !\info1|localY\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels\(23),
	datab => \info1|Mux49~27_combout\,
	datac => \info1|localX3\(0),
	datad => \info1|localY\(2),
	combout => \info1|Mux49~28_combout\);

-- Location: LCCOMB_X32_Y13_N12
\info1|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux42~0_combout\ = (\info1|cChar\(1) & (\info1|cChar\(2) $ (((!\info1|cChar\(3) & !\info1|cChar\(0)))))) # (!\info1|cChar\(1) & (\info1|cChar\(0) & (\info1|cChar\(2) $ (!\info1|cChar\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(2),
	datab => \info1|cChar\(1),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(0),
	combout => \info1|Mux42~0_combout\);

-- Location: LCCOMB_X32_Y11_N16
\info1|Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux42~1_combout\ = (\info1|cChar\(3) & ((\info1|cChar\(0)) # ((!\info1|cChar\(2) & \info1|cChar\(1))))) # (!\info1|cChar\(3) & (\info1|cChar\(2) $ (((\info1|cChar\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(3),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(1),
	combout => \info1|Mux42~1_combout\);

-- Location: LCCOMB_X32_Y13_N30
\info1|pixels~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~87_combout\ = (!\info1|cChar\(5) & ((\info1|cChar\(4) & ((!\info1|Mux42~1_combout\))) # (!\info1|cChar\(4) & (!\info1|Mux42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux42~0_combout\,
	datab => \info1|cChar\(5),
	datac => \info1|cChar\(4),
	datad => \info1|Mux42~1_combout\,
	combout => \info1|pixels~87_combout\);

-- Location: LCCOMB_X31_Y13_N0
\info1|pixels~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~88_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~87_combout\) # ((\info1|Mux27~0_combout\ & !\info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|r_o~2_combout\,
	datab => \info1|Mux27~0_combout\,
	datac => \info1|pixels~87_combout\,
	datad => \info1|cChar\(1),
	combout => \info1|pixels~88_combout\);

-- Location: FF_X31_Y13_N1
\info1|pixels[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(46));

-- Location: LCCOMB_X34_Y11_N14
\info1|Mux48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux48~2_combout\ = (\info1|cChar\(1) & ((\info1|cChar\(4) & ((!\info1|cChar\(2)))) # (!\info1|cChar\(4) & (!\info1|cChar\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(4),
	datab => \info1|cChar\(0),
	datac => \info1|cChar\(2),
	datad => \info1|cChar\(1),
	combout => \info1|Mux48~2_combout\);

-- Location: LCCOMB_X35_Y14_N10
\info1|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux48~0_combout\ = (\info1|cChar\(0) & ((\info1|cChar\(2) & ((\info1|cChar\(4)))) # (!\info1|cChar\(2) & (!\info1|cChar\(1))))) # (!\info1|cChar\(0) & (\info1|cChar\(2) $ (((\info1|cChar\(1) & !\info1|cChar\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(4),
	combout => \info1|Mux48~0_combout\);

-- Location: LCCOMB_X35_Y14_N20
\info1|Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux48~1_combout\ = (\info1|cChar\(2)) # ((\info1|cChar\(4)) # ((\info1|cChar\(1) & !\info1|cChar\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(4),
	combout => \info1|Mux48~1_combout\);

-- Location: LCCOMB_X35_Y14_N30
\info1|pixels~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~83_combout\ = (!\info1|cChar\(3) & ((\info1|cChar\(5) & ((!\info1|Mux48~1_combout\))) # (!\info1|cChar\(5) & (\info1|Mux48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux48~0_combout\,
	datab => \info1|cChar\(3),
	datac => \info1|cChar\(5),
	datad => \info1|Mux48~1_combout\,
	combout => \info1|pixels~83_combout\);

-- Location: LCCOMB_X34_Y11_N22
\info1|pixels~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~84_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~83_combout\) # ((\info1|pixels~27_combout\ & \info1|Mux48~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|r_o~2_combout\,
	datab => \info1|pixels~27_combout\,
	datac => \info1|Mux48~2_combout\,
	datad => \info1|pixels~83_combout\,
	combout => \info1|pixels~84_combout\);

-- Location: FF_X34_Y11_N23
\info1|pixels[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(54));

-- Location: LCCOMB_X34_Y13_N22
\info1|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux35~0_combout\ = \info1|cChar\(4) $ (((\info1|cChar\(2) & ((!\info1|cChar\(1)))) # (!\info1|cChar\(2) & ((\info1|cChar\(3)) # (\info1|cChar\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(2),
	datab => \info1|cChar\(4),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(1),
	combout => \info1|Mux35~0_combout\);

-- Location: LCCOMB_X34_Y13_N12
\info1|pixels~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~107_combout\ = (\info1|Mux35~0_combout\ & (!\info1|cChar\(5) & \info1|cChar\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux35~0_combout\,
	datab => \info1|cChar\(5),
	datac => \info1|cChar\(0),
	combout => \info1|pixels~107_combout\);

-- Location: LCCOMB_X34_Y13_N10
\info1|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux18~0_combout\ = (!\info1|cChar\(2) & (!\info1|cChar\(4) & !\info1|cChar\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(2),
	datab => \info1|cChar\(4),
	datac => \info1|cChar\(3),
	combout => \info1|Mux18~0_combout\);

-- Location: LCCOMB_X34_Y13_N8
\info1|Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux35~1_combout\ = (\info1|cChar\(2) & ((\info1|cChar\(4) & (!\info1|cChar\(3) & !\info1|cChar\(1))) # (!\info1|cChar\(4) & (\info1|cChar\(3))))) # (!\info1|cChar\(2) & (((!\info1|cChar\(3) & \info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(2),
	datab => \info1|cChar\(4),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(1),
	combout => \info1|Mux35~1_combout\);

-- Location: LCCOMB_X34_Y13_N2
\info1|pixels~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~85_combout\ = (\info1|cChar\(5) & (\info1|Mux18~0_combout\ & ((!\info1|cChar\(1))))) # (!\info1|cChar\(5) & (((!\info1|Mux35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux18~0_combout\,
	datab => \info1|cChar\(5),
	datac => \info1|Mux35~1_combout\,
	datad => \info1|cChar\(1),
	combout => \info1|pixels~85_combout\);

-- Location: LCCOMB_X34_Y13_N30
\info1|pixels~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~86_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~107_combout\) # ((!\info1|cChar\(0) & \info1|pixels~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels~107_combout\,
	datab => \info1|r_o~2_combout\,
	datac => \info1|cChar\(0),
	datad => \info1|pixels~85_combout\,
	combout => \info1|pixels~86_combout\);

-- Location: FF_X34_Y13_N31
\info1|pixels[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(38));

-- Location: LCCOMB_X30_Y12_N30
\info1|Mux49~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~24_combout\ = (!\info1|localY\(0) & ((\info1|localY\(1) & (\info1|pixels\(54))) # (!\info1|localY\(1) & ((\info1|pixels\(38))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels\(54),
	datab => \info1|localY\(1),
	datac => \info1|localY\(0),
	datad => \info1|pixels\(38),
	combout => \info1|Mux49~24_combout\);

-- Location: LCCOMB_X30_Y12_N16
\info1|Mux49~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~25_combout\ = (\info1|Mux49~24_combout\) # ((\info1|localY\(0) & (\info1|pixels\(46) & !\info1|localY\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localY\(0),
	datab => \info1|pixels\(46),
	datac => \info1|Mux49~24_combout\,
	datad => \info1|localY\(1),
	combout => \info1|Mux49~25_combout\);

-- Location: LCCOMB_X30_Y12_N14
\info1|Mux49~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~30_combout\ = (\info1|localY\(2) & ((\info1|Mux49~28_combout\ & (\info1|Mux49~29_combout\)) # (!\info1|Mux49~28_combout\ & ((\info1|Mux49~25_combout\))))) # (!\info1|localY\(2) & (((\info1|Mux49~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localY\(2),
	datab => \info1|Mux49~29_combout\,
	datac => \info1|Mux49~28_combout\,
	datad => \info1|Mux49~25_combout\,
	combout => \info1|Mux49~30_combout\);

-- Location: LCCOMB_X34_Y12_N4
\info1|localX2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|localX2[2]~feeder_combout\ = \info1|localX\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info1|localX\(2),
	combout => \info1|localX2[2]~feeder_combout\);

-- Location: FF_X34_Y12_N5
\info1|localX2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|localX2[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|localX2\(2));

-- Location: FF_X30_Y12_N9
\info1|localX3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \info1|localX2\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|localX3\(2));

-- Location: LCCOMB_X32_Y13_N8
\info1|pixels~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~78_combout\ = (\info1|cChar\(1) & ((\info1|cChar\(3)) # ((\info1|cChar\(4) & !\info1|cChar\(0))))) # (!\info1|cChar\(1) & (\info1|cChar\(4) & ((\info1|cChar\(0)) # (!\info1|cChar\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(3),
	datac => \info1|cChar\(4),
	datad => \info1|cChar\(0),
	combout => \info1|pixels~78_combout\);

-- Location: LCCOMB_X32_Y13_N10
\info1|pixels~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~79_combout\ = (\info1|cChar\(2) & ((\info1|pixels~78_combout\) # (\info1|cChar\(0)))) # (!\info1|cChar\(2) & (\info1|pixels~78_combout\ & \info1|cChar\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(2),
	datac => \info1|pixels~78_combout\,
	datad => \info1|cChar\(0),
	combout => \info1|pixels~79_combout\);

-- Location: LCCOMB_X32_Y13_N20
\info1|pixels~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~80_combout\ = (\info1|r_o~2_combout\ & ((\info1|Mux27~0_combout\) # ((\info1|pixels~79_combout\ & !\info1|cChar\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels~79_combout\,
	datab => \info1|Mux27~0_combout\,
	datac => \info1|cChar\(5),
	datad => \info1|r_o~2_combout\,
	combout => \info1|pixels~80_combout\);

-- Location: FF_X32_Y13_N21
\info1|pixels[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(1));

-- Location: LCCOMB_X35_Y14_N4
\info1|pixels~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~75_combout\ = (!\info1|cChar\(4) & (\info1|cChar\(5) & (!\info1|cChar\(0) & !\info1|cChar\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(4),
	datab => \info1|cChar\(5),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(2),
	combout => \info1|pixels~75_combout\);

-- Location: LCCOMB_X35_Y14_N14
\info1|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux17~1_combout\ = (\info1|cChar\(1) & (((\info1|cChar\(0) & !\info1|cChar\(4))) # (!\info1|cChar\(2)))) # (!\info1|cChar\(1) & (!\info1|cChar\(4) & (\info1|cChar\(2) $ (\info1|cChar\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(4),
	combout => \info1|Mux17~1_combout\);

-- Location: LCCOMB_X35_Y14_N16
\info1|pixels~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~76_combout\ = (!\info1|cChar\(3) & ((\info1|pixels~75_combout\) # ((!\info1|cChar\(5) & !\info1|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels~75_combout\,
	datab => \info1|cChar\(3),
	datac => \info1|cChar\(5),
	datad => \info1|Mux17~1_combout\,
	combout => \info1|pixels~76_combout\);

-- Location: LCCOMB_X34_Y11_N12
\info1|pixels~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~77_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~76_combout\) # ((\info1|pixels~27_combout\ & !\info1|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|r_o~2_combout\,
	datab => \info1|pixels~27_combout\,
	datac => \info1|Mux17~0_combout\,
	datad => \info1|pixels~76_combout\,
	combout => \info1|pixels~77_combout\);

-- Location: FF_X34_Y11_N13
\info1|pixels[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(17));

-- Location: LCCOMB_X31_Y13_N18
\info1|Mux49~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~20_combout\ = (\info1|localY\(1) & (((\info1|pixels\(17)) # (\info1|localY\(0))))) # (!\info1|localY\(1) & (\info1|pixels\(1) & ((!\info1|localY\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels\(1),
	datab => \info1|pixels\(17),
	datac => \info1|localY\(1),
	datad => \info1|localY\(0),
	combout => \info1|Mux49~20_combout\);

-- Location: LCCOMB_X30_Y13_N16
\info1|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux11~1_combout\ = (\info1|cChar\(1) & (!\info1|cChar\(2) & (!\info1|cChar\(3)))) # (!\info1|cChar\(1) & (\info1|cChar\(2) & (\info1|cChar\(3) & \info1|cChar\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(0),
	combout => \info1|Mux11~1_combout\);

-- Location: LCCOMB_X30_Y13_N18
\info1|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux11~2_combout\ = (\info1|cChar\(1) & (!\info1|cChar\(2) & (\info1|cChar\(3) & !\info1|cChar\(0)))) # (!\info1|cChar\(1) & (!\info1|cChar\(3) & (\info1|cChar\(2) $ (\info1|cChar\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(0),
	combout => \info1|Mux11~2_combout\);

-- Location: LCCOMB_X30_Y13_N14
\info1|pixels~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~73_combout\ = (!\info1|cChar\(5) & ((\info1|cChar\(4) & (!\info1|Mux11~1_combout\)) # (!\info1|cChar\(4) & ((!\info1|Mux11~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(4),
	datab => \info1|Mux11~1_combout\,
	datac => \info1|cChar\(5),
	datad => \info1|Mux11~2_combout\,
	combout => \info1|pixels~73_combout\);

-- Location: LCCOMB_X32_Y13_N22
\info1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux11~0_combout\ = (\info1|cChar\(2)) # ((\info1|cChar\(3)) # ((\info1|cChar\(1) & \info1|cChar\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(2),
	datab => \info1|cChar\(1),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(0),
	combout => \info1|Mux11~0_combout\);

-- Location: LCCOMB_X31_Y13_N8
\info1|pixels~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~74_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~73_combout\) # ((\info1|pixels~37_combout\ & !\info1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels~73_combout\,
	datab => \info1|pixels~37_combout\,
	datac => \info1|r_o~2_combout\,
	datad => \info1|Mux11~0_combout\,
	combout => \info1|pixels~74_combout\);

-- Location: FF_X31_Y13_N9
\info1|pixels[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(9));

-- Location: LCCOMB_X32_Y14_N0
\info1|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux30~0_combout\ = (\info1|cChar\(3) & ((\info1|cChar\(1)) # (\info1|cChar\(4) $ (\info1|cChar\(2))))) # (!\info1|cChar\(3) & (\info1|cChar\(4) & ((\info1|cChar\(2)) # (!\info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(4),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(1),
	combout => \info1|Mux30~0_combout\);

-- Location: LCCOMB_X32_Y14_N6
\info1|pixels~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~106_combout\ = (!\info1|cChar\(5) & (\info1|Mux30~0_combout\ & \info1|cChar\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(5),
	datab => \info1|Mux30~0_combout\,
	datad => \info1|cChar\(0),
	combout => \info1|pixels~106_combout\);

-- Location: LCCOMB_X34_Y13_N26
\info1|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux24~0_combout\ = (\info1|cChar\(3) & (!\info1|cChar\(1) & (\info1|cChar\(2) $ (!\info1|cChar\(4))))) # (!\info1|cChar\(3) & (!\info1|cChar\(2) & ((\info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(2),
	datab => \info1|cChar\(4),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(1),
	combout => \info1|Mux24~0_combout\);

-- Location: LCCOMB_X34_Y13_N28
\info1|pixels~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~81_combout\ = (\info1|cChar\(5) & (\info1|Mux18~0_combout\ & ((!\info1|cChar\(1))))) # (!\info1|cChar\(5) & (((!\info1|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux18~0_combout\,
	datab => \info1|cChar\(5),
	datac => \info1|Mux24~0_combout\,
	datad => \info1|cChar\(1),
	combout => \info1|pixels~81_combout\);

-- Location: LCCOMB_X34_Y13_N4
\info1|pixels~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~82_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~106_combout\) # ((!\info1|cChar\(0) & \info1|pixels~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels~106_combout\,
	datab => \info1|r_o~2_combout\,
	datac => \info1|cChar\(0),
	datad => \info1|pixels~81_combout\,
	combout => \info1|pixels~82_combout\);

-- Location: FF_X34_Y13_N5
\info1|pixels[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(25));

-- Location: LCCOMB_X31_Y13_N4
\info1|Mux49~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~21_combout\ = (\info1|localY\(0) & ((\info1|Mux49~20_combout\ & ((\info1|pixels\(25)))) # (!\info1|Mux49~20_combout\ & (\info1|pixels\(9))))) # (!\info1|localY\(0) & (\info1|Mux49~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localY\(0),
	datab => \info1|Mux49~20_combout\,
	datac => \info1|pixels\(9),
	datad => \info1|pixels\(25),
	combout => \info1|Mux49~21_combout\);

-- Location: LCCOMB_X31_Y14_N30
\info1|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux37~0_combout\ = (\info1|cChar\(0) & (\info1|cChar\(2) & (\info1|cChar\(3)))) # (!\info1|cChar\(0) & (!\info1|cChar\(2) & ((\info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(0),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(1),
	combout => \info1|Mux37~0_combout\);

-- Location: LCCOMB_X30_Y13_N6
\info1|pixels~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~62_combout\ = (!\info1|cChar\(5) & \info1|cChar\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \info1|cChar\(5),
	datad => \info1|cChar\(4),
	combout => \info1|pixels~62_combout\);

-- Location: LCCOMB_X31_Y11_N28
\info1|pixels~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~112_combout\ = (\info1|cChar\(0) & (\info1|cChar\(2) $ (((\info1|cChar\(5)) # (\info1|cChar\(1)))))) # (!\info1|cChar\(0) & ((\info1|cChar\(1) & (!\info1|cChar\(5))) # (!\info1|cChar\(1) & ((!\info1|cChar\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(5),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(1),
	combout => \info1|pixels~112_combout\);

-- Location: LCCOMB_X31_Y11_N6
\info1|pixels~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~113_combout\ = (!\info1|cChar\(4) & ((\info1|cChar\(3) & ((!\info1|cChar\(5)))) # (!\info1|cChar\(3) & (\info1|pixels~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(3),
	datab => \info1|pixels~112_combout\,
	datac => \info1|cChar\(5),
	datad => \info1|cChar\(4),
	combout => \info1|pixels~113_combout\);

-- Location: LCCOMB_X31_Y13_N28
\info1|pixels~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~72_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~113_combout\) # ((!\info1|Mux37~0_combout\ & \info1|pixels~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux37~0_combout\,
	datab => \info1|pixels~62_combout\,
	datac => \info1|r_o~2_combout\,
	datad => \info1|pixels~113_combout\,
	combout => \info1|pixels~72_combout\);

-- Location: FF_X31_Y13_N29
\info1|pixels[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(41));

-- Location: LCCOMB_X32_Y14_N8
\info1|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux43~0_combout\ = (\info1|cChar\(2) & (\info1|cChar\(4) $ ((!\info1|cChar\(3))))) # (!\info1|cChar\(2) & ((\info1|cChar\(3) & (!\info1|cChar\(4) & !\info1|cChar\(1))) # (!\info1|cChar\(3) & ((\info1|cChar\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(4),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(1),
	combout => \info1|Mux43~0_combout\);

-- Location: LCCOMB_X32_Y14_N18
\info1|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux43~1_combout\ = (\info1|cChar\(4) & (\info1|cChar\(2) & (!\info1|cChar\(3)))) # (!\info1|cChar\(4) & (\info1|cChar\(1) & ((\info1|cChar\(3)) # (!\info1|cChar\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(4),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(1),
	combout => \info1|Mux43~1_combout\);

-- Location: LCCOMB_X32_Y14_N12
\info1|Mux43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux43~2_combout\ = (\info1|cChar\(5) & (((\info1|cChar\(0))))) # (!\info1|cChar\(5) & ((\info1|cChar\(0) & (!\info1|Mux43~0_combout\)) # (!\info1|cChar\(0) & ((\info1|Mux43~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(5),
	datab => \info1|Mux43~0_combout\,
	datac => \info1|Mux43~1_combout\,
	datad => \info1|cChar\(0),
	combout => \info1|Mux43~2_combout\);

-- Location: LCCOMB_X30_Y14_N28
\info1|Mux43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux43~3_combout\ = (\info1|cChar\(5) & (\info1|Mux18~0_combout\ & ((\info1|Mux43~2_combout\) # (!\info1|cChar\(1))))) # (!\info1|cChar\(5) & (((\info1|Mux43~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux18~0_combout\,
	datab => \info1|Mux43~2_combout\,
	datac => \info1|cChar\(5),
	datad => \info1|cChar\(1),
	combout => \info1|Mux43~3_combout\);

-- Location: LCCOMB_X30_Y14_N18
\info1|pixels~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~105_combout\ = (\info1|runY~q\ & (\info1|Mux43~3_combout\ & \info1|runX~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \info1|runY~q\,
	datac => \info1|Mux43~3_combout\,
	datad => \info1|runX~q\,
	combout => \info1|pixels~105_combout\);

-- Location: FF_X30_Y14_N19
\info1|pixels[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(49));

-- Location: LCCOMB_X34_Y13_N6
\info1|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux30~1_combout\ = (\info1|cChar\(2) & (\info1|cChar\(4) & (\info1|cChar\(3) & !\info1|cChar\(1)))) # (!\info1|cChar\(2) & (((!\info1|cChar\(3) & \info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(2),
	datab => \info1|cChar\(4),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(1),
	combout => \info1|Mux30~1_combout\);

-- Location: LCCOMB_X34_Y13_N24
\info1|pixels~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~70_combout\ = (\info1|cChar\(5) & (\info1|Mux18~0_combout\ & ((!\info1|cChar\(1))))) # (!\info1|cChar\(5) & (((!\info1|Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux18~0_combout\,
	datab => \info1|cChar\(5),
	datac => \info1|Mux30~1_combout\,
	datad => \info1|cChar\(1),
	combout => \info1|pixels~70_combout\);

-- Location: LCCOMB_X34_Y13_N18
\info1|pixels~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~71_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~106_combout\) # ((!\info1|cChar\(0) & \info1|pixels~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels~106_combout\,
	datab => \info1|r_o~2_combout\,
	datac => \info1|cChar\(0),
	datad => \info1|pixels~70_combout\,
	combout => \info1|pixels~71_combout\);

-- Location: FF_X34_Y13_N19
\info1|pixels[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(33));

-- Location: LCCOMB_X31_Y13_N2
\info1|Mux49~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~18_combout\ = (!\info1|localY\(0) & ((\info1|localY\(1) & (\info1|pixels\(49))) # (!\info1|localY\(1) & ((\info1|pixels\(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localY\(0),
	datab => \info1|pixels\(49),
	datac => \info1|localY\(1),
	datad => \info1|pixels\(33),
	combout => \info1|Mux49~18_combout\);

-- Location: LCCOMB_X31_Y13_N14
\info1|Mux49~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~19_combout\ = (\info1|Mux49~18_combout\) # ((\info1|localY\(0) & (\info1|pixels\(41) & !\info1|localY\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localY\(0),
	datab => \info1|pixels\(41),
	datac => \info1|localY\(1),
	datad => \info1|Mux49~18_combout\,
	combout => \info1|Mux49~19_combout\);

-- Location: LCCOMB_X31_Y13_N30
\info1|Mux49~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~22_combout\ = (\info1|localX3\(0) & ((\info1|localY\(2) & ((\info1|Mux49~19_combout\))) # (!\info1|localY\(2) & (\info1|Mux49~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localX3\(0),
	datab => \info1|Mux49~21_combout\,
	datac => \info1|Mux49~19_combout\,
	datad => \info1|localY\(2),
	combout => \info1|Mux49~22_combout\);

-- Location: LCCOMB_X34_Y12_N30
\info1|localX2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|localX2[1]~feeder_combout\ = \info1|localX\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \info1|localX\(1),
	combout => \info1|localX2[1]~feeder_combout\);

-- Location: FF_X34_Y12_N31
\info1|localX2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|localX2[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|localX2\(1));

-- Location: FF_X30_Y12_N13
\info1|localX3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \info1|localX2\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|localX3\(1));

-- Location: LCCOMB_X35_Y14_N12
\info1|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux19~2_combout\ = (!\info1|cChar\(1) & (!\info1|cChar\(2) & (\info1|cChar\(0) & !\info1|cChar\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(4),
	combout => \info1|Mux19~2_combout\);

-- Location: LCCOMB_X35_Y14_N22
\info1|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux19~3_combout\ = (\info1|cChar\(1) & (\info1|cChar\(4) & ((\info1|cChar\(2)) # (!\info1|cChar\(0))))) # (!\info1|cChar\(1) & ((\info1|cChar\(0) & ((!\info1|cChar\(4)))) # (!\info1|cChar\(0) & (\info1|cChar\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(4),
	combout => \info1|Mux19~3_combout\);

-- Location: LCCOMB_X35_Y14_N8
\info1|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux19~4_combout\ = (\info1|cChar\(3) & (((\info1|cChar\(5)) # (\info1|Mux17~0_combout\)))) # (!\info1|cChar\(3) & (\info1|Mux19~3_combout\ & (!\info1|cChar\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux19~3_combout\,
	datab => \info1|cChar\(3),
	datac => \info1|cChar\(5),
	datad => \info1|Mux17~0_combout\,
	combout => \info1|Mux19~4_combout\);

-- Location: LCCOMB_X35_Y14_N26
\info1|Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux19~5_combout\ = (\info1|cChar\(5) & ((\info1|Mux19~4_combout\ & ((\info1|Mux19~1_combout\))) # (!\info1|Mux19~4_combout\ & (\info1|Mux19~2_combout\)))) # (!\info1|cChar\(5) & (((\info1|Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux19~2_combout\,
	datab => \info1|cChar\(5),
	datac => \info1|Mux19~4_combout\,
	datad => \info1|Mux19~1_combout\,
	combout => \info1|Mux19~5_combout\);

-- Location: LCCOMB_X31_Y12_N24
\info1|pixels~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~103_combout\ = (\info1|Mux19~5_combout\ & (\info1|runX~q\ & \info1|runY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux19~5_combout\,
	datab => \info1|runX~q\,
	datac => \info1|runY~q\,
	combout => \info1|pixels~103_combout\);

-- Location: FF_X31_Y12_N25
\info1|pixels[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(19));

-- Location: LCCOMB_X30_Y13_N20
\info1|pixels~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~66_combout\ = (\info1|cChar\(4) & (((!\info1|cChar\(0)) # (!\info1|Mux7~0_combout\)))) # (!\info1|cChar\(4) & (!\info1|Mux11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(4),
	datab => \info1|Mux11~2_combout\,
	datac => \info1|Mux7~0_combout\,
	datad => \info1|cChar\(0),
	combout => \info1|pixels~66_combout\);

-- Location: LCCOMB_X30_Y13_N30
\info1|pixels~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~67_combout\ = (\info1|r_o~2_combout\ & ((\info1|Mux27~0_combout\) # ((\info1|pixels~66_combout\ & !\info1|cChar\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|r_o~2_combout\,
	datab => \info1|pixels~66_combout\,
	datac => \info1|cChar\(5),
	datad => \info1|Mux27~0_combout\,
	combout => \info1|pixels~67_combout\);

-- Location: FF_X30_Y13_N31
\info1|pixels[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(2));

-- Location: LCCOMB_X32_Y14_N16
\info1|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux18~2_combout\ = (\info1|cChar\(2) & ((\info1|cChar\(4) & (\info1|cChar\(3) & \info1|cChar\(0))) # (!\info1|cChar\(4) & (!\info1|cChar\(3) & !\info1|cChar\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(4),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(0),
	combout => \info1|Mux18~2_combout\);

-- Location: LCCOMB_X32_Y14_N30
\info1|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux18~1_combout\ = (\info1|cChar\(3)) # ((\info1|cChar\(2) & ((\info1|cChar\(4)) # (!\info1|cChar\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(4),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(0),
	combout => \info1|Mux18~1_combout\);

-- Location: LCCOMB_X32_Y14_N10
\info1|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux18~3_combout\ = (\info1|cChar\(5) & (((\info1|cChar\(1))))) # (!\info1|cChar\(5) & ((\info1|cChar\(1) & ((\info1|Mux18~1_combout\))) # (!\info1|cChar\(1) & (!\info1|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(5),
	datab => \info1|Mux18~2_combout\,
	datac => \info1|Mux18~1_combout\,
	datad => \info1|cChar\(1),
	combout => \info1|Mux18~3_combout\);

-- Location: LCCOMB_X30_Y14_N10
\info1|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux18~4_combout\ = (\info1|cChar\(5) & (\info1|Mux18~0_combout\ & ((!\info1|Mux18~3_combout\) # (!\info1|cChar\(0))))) # (!\info1|cChar\(5) & (((\info1|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(0),
	datab => \info1|Mux18~3_combout\,
	datac => \info1|cChar\(5),
	datad => \info1|Mux18~0_combout\,
	combout => \info1|Mux18~4_combout\);

-- Location: LCCOMB_X30_Y14_N8
\info1|pixels~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~102_combout\ = (\info1|Mux18~4_combout\ & (\info1|runX~q\ & \info1|runY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux18~4_combout\,
	datab => \info1|runX~q\,
	datad => \info1|runY~q\,
	combout => \info1|pixels~102_combout\);

-- Location: FF_X30_Y14_N9
\info1|pixels[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(18));

-- Location: LCCOMB_X31_Y12_N0
\info1|Mux49~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~13_combout\ = (\info1|localX3\(0) & (((\info1|localY\(1))))) # (!\info1|localX3\(0) & ((\info1|localY\(1) & ((\info1|pixels\(18)))) # (!\info1|localY\(1) & (\info1|pixels\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels\(2),
	datab => \info1|pixels\(18),
	datac => \info1|localX3\(0),
	datad => \info1|localY\(1),
	combout => \info1|Mux49~13_combout\);

-- Location: LCCOMB_X31_Y12_N18
\info1|Mux49~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~14_combout\ = (\info1|Mux49~13_combout\ & (((\info1|pixels\(19)) # (!\info1|localX3\(0))))) # (!\info1|Mux49~13_combout\ & (\info1|pixels\(4) & ((\info1|localX3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels\(4),
	datab => \info1|pixels\(19),
	datac => \info1|Mux49~13_combout\,
	datad => \info1|localX3\(0),
	combout => \info1|Mux49~14_combout\);

-- Location: LCCOMB_X31_Y14_N20
\info1|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux26~2_combout\ = (\info1|cChar\(2) & (\info1|cChar\(1) $ (((\info1|cChar\(3)) # (!\info1|cChar\(0)))))) # (!\info1|cChar\(2) & (\info1|cChar\(0) $ (((!\info1|cChar\(3) & \info1|cChar\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(0),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(1),
	combout => \info1|Mux26~2_combout\);

-- Location: LCCOMB_X31_Y14_N22
\info1|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux26~0_combout\ = (!\info1|cChar\(2) & (!\info1|cChar\(3) & ((\info1|cChar\(0)) # (\info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(0),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(1),
	combout => \info1|Mux26~0_combout\);

-- Location: LCCOMB_X31_Y14_N0
\info1|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux26~1_combout\ = (\info1|cChar\(2) & (((!\info1|cChar\(1))))) # (!\info1|cChar\(2) & (!\info1|cChar\(0) & (!\info1|cChar\(3) & \info1|cChar\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(0),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(1),
	combout => \info1|Mux26~1_combout\);

-- Location: LCCOMB_X31_Y14_N10
\info1|pixels~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~64_combout\ = (!\info1|cChar\(4) & ((\info1|cChar\(5) & (\info1|Mux26~0_combout\)) # (!\info1|cChar\(5) & ((!\info1|Mux26~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux26~0_combout\,
	datab => \info1|Mux26~1_combout\,
	datac => \info1|cChar\(4),
	datad => \info1|cChar\(5),
	combout => \info1|pixels~64_combout\);

-- Location: LCCOMB_X31_Y14_N16
\info1|pixels~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~65_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~64_combout\) # ((\info1|pixels~62_combout\ & \info1|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels~62_combout\,
	datab => \info1|Mux26~2_combout\,
	datac => \info1|r_o~2_combout\,
	datad => \info1|pixels~64_combout\,
	combout => \info1|pixels~65_combout\);

-- Location: FF_X31_Y14_N17
\info1|pixels[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(27));

-- Location: LCCOMB_X30_Y14_N2
\info1|pixels~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~114_combout\ = (\info1|cChar\(0) & (((!\info1|cChar\(5))))) # (!\info1|cChar\(0) & ((\info1|cChar\(5) & ((\info1|Mux18~0_combout\))) # (!\info1|cChar\(5) & (!\info1|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(0),
	datab => \info1|Mux7~0_combout\,
	datac => \info1|cChar\(5),
	datad => \info1|Mux18~0_combout\,
	combout => \info1|pixels~114_combout\);

-- Location: LCCOMB_X34_Y13_N20
\info1|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux25~0_combout\ = (\info1|cChar\(4) & ((\info1|cChar\(2) & ((\info1|cChar\(1)) # (!\info1|cChar\(3)))) # (!\info1|cChar\(2) & ((\info1|cChar\(3)) # (!\info1|cChar\(1)))))) # (!\info1|cChar\(4) & (((\info1|cChar\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(2),
	datab => \info1|cChar\(4),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(1),
	combout => \info1|Mux25~0_combout\);

-- Location: LCCOMB_X34_Y13_N0
\info1|pixels~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~115_combout\ = (\info1|pixels~114_combout\ & (\info1|r_o~2_combout\ & ((\info1|Mux25~0_combout\) # (!\info1|cChar\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels~114_combout\,
	datab => \info1|r_o~2_combout\,
	datac => \info1|cChar\(0),
	datad => \info1|Mux25~0_combout\,
	combout => \info1|pixels~115_combout\);

-- Location: FF_X34_Y13_N1
\info1|pixels[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(26));

-- Location: LCCOMB_X30_Y13_N10
\info1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux12~0_combout\ = (!\info1|cChar\(1) & (!\info1|cChar\(3) & (\info1|cChar\(2) $ (\info1|cChar\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(0),
	combout => \info1|Mux12~0_combout\);

-- Location: LCCOMB_X30_Y13_N28
\info1|pixels~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~61_combout\ = (!\info1|cChar\(4) & ((\info1|cChar\(5) & ((!\info1|Mux11~0_combout\))) # (!\info1|cChar\(5) & (!\info1|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux12~0_combout\,
	datab => \info1|Mux11~0_combout\,
	datac => \info1|cChar\(5),
	datad => \info1|cChar\(4),
	combout => \info1|pixels~61_combout\);

-- Location: LCCOMB_X30_Y13_N4
\info1|pixels~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~63_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~61_combout\) # ((\info1|pixels~62_combout\ & !\info1|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels~62_combout\,
	datab => \info1|pixels~61_combout\,
	datac => \info1|r_o~2_combout\,
	datad => \info1|Mux11~1_combout\,
	combout => \info1|pixels~63_combout\);

-- Location: FF_X30_Y13_N5
\info1|pixels[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(10));

-- Location: LCCOMB_X31_Y12_N20
\info1|Mux49~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~11_combout\ = (\info1|localY\(1) & ((\info1|pixels\(26)) # ((\info1|localX3\(0))))) # (!\info1|localY\(1) & (((\info1|pixels\(10) & !\info1|localX3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels\(26),
	datab => \info1|localY\(1),
	datac => \info1|pixels\(10),
	datad => \info1|localX3\(0),
	combout => \info1|Mux49~11_combout\);

-- Location: LCCOMB_X31_Y14_N4
\info1|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux13~1_combout\ = (!\info1|cChar\(2) & ((\info1|cChar\(0) & (!\info1|cChar\(3) & !\info1|cChar\(1))) # (!\info1|cChar\(0) & (\info1|cChar\(3) & \info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(0),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(1),
	combout => \info1|Mux13~1_combout\);

-- Location: LCCOMB_X31_Y14_N2
\info1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux13~0_combout\ = (\info1|cChar\(0) & (\info1|cChar\(2) & (\info1|cChar\(3) $ (\info1|cChar\(1))))) # (!\info1|cChar\(0) & (((!\info1|cChar\(3) & \info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(0),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(1),
	combout => \info1|Mux13~0_combout\);

-- Location: LCCOMB_X31_Y12_N26
\info1|pixels~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~60_combout\ = (\info1|pixels~35_combout\ & ((\info1|cChar\(4) & ((\info1|Mux13~0_combout\))) # (!\info1|cChar\(4) & (\info1|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(4),
	datab => \info1|pixels~35_combout\,
	datac => \info1|Mux13~1_combout\,
	datad => \info1|Mux13~0_combout\,
	combout => \info1|pixels~60_combout\);

-- Location: FF_X31_Y12_N27
\info1|pixels[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(11));

-- Location: LCCOMB_X31_Y12_N30
\info1|Mux49~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~12_combout\ = (\info1|Mux49~11_combout\ & ((\info1|pixels\(27)) # ((!\info1|localX3\(0))))) # (!\info1|Mux49~11_combout\ & (((\info1|pixels\(11) & \info1|localX3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels\(27),
	datab => \info1|Mux49~11_combout\,
	datac => \info1|pixels\(11),
	datad => \info1|localX3\(0),
	combout => \info1|Mux49~12_combout\);

-- Location: LCCOMB_X30_Y12_N6
\info1|Mux49~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~15_combout\ = (\info1|localY\(2) & (((\info1|localY\(0))))) # (!\info1|localY\(2) & ((\info1|localY\(0) & ((\info1|Mux49~12_combout\))) # (!\info1|localY\(0) & (\info1|Mux49~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|localY\(2),
	datab => \info1|Mux49~14_combout\,
	datac => \info1|localY\(0),
	datad => \info1|Mux49~12_combout\,
	combout => \info1|Mux49~15_combout\);

-- Location: LCCOMB_X32_Y14_N28
\info1|Mux39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux39~3_combout\ = (\info1|cChar\(0)) # ((\info1|cChar\(4) & ((!\info1|cChar\(3)) # (!\info1|cChar\(2)))) # (!\info1|cChar\(4) & ((\info1|cChar\(2)) # (\info1|cChar\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(4),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(0),
	combout => \info1|Mux39~3_combout\);

-- Location: LCCOMB_X32_Y14_N24
\info1|Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux39~1_combout\ = (\info1|cChar\(0) & ((\info1|cChar\(4) & (\info1|cChar\(2) & \info1|cChar\(3))) # (!\info1|cChar\(4) & (!\info1|cChar\(2) & !\info1|cChar\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(4),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(0),
	combout => \info1|Mux39~1_combout\);

-- Location: LCCOMB_X32_Y14_N14
\info1|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux39~0_combout\ = (\info1|cChar\(2) & (\info1|cChar\(0) & (\info1|cChar\(4) $ (!\info1|cChar\(3))))) # (!\info1|cChar\(2) & (\info1|cChar\(4) & ((!\info1|cChar\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(4),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(0),
	combout => \info1|Mux39~0_combout\);

-- Location: LCCOMB_X32_Y14_N26
\info1|Mux39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux39~2_combout\ = (\info1|cChar\(5) & (((\info1|cChar\(1))))) # (!\info1|cChar\(5) & ((\info1|cChar\(1) & ((\info1|Mux39~0_combout\))) # (!\info1|cChar\(1) & (\info1|Mux39~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(5),
	datab => \info1|Mux39~1_combout\,
	datac => \info1|Mux39~0_combout\,
	datad => \info1|cChar\(1),
	combout => \info1|Mux39~2_combout\);

-- Location: LCCOMB_X32_Y14_N22
\info1|Mux39~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux39~4_combout\ = (\info1|cChar\(5) & ((\info1|Mux39~2_combout\ & (!\info1|Mux39~3_combout\)) # (!\info1|Mux39~2_combout\ & ((\info1|Mux18~5_combout\))))) # (!\info1|cChar\(5) & (((\info1|Mux39~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(5),
	datab => \info1|Mux39~3_combout\,
	datac => \info1|Mux39~2_combout\,
	datad => \info1|Mux18~5_combout\,
	combout => \info1|Mux39~4_combout\);

-- Location: LCCOMB_X31_Y14_N26
\info1|pixels~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~104_combout\ = (\info1|Mux39~4_combout\ & (\info1|runX~q\ & \info1|runY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \info1|Mux39~4_combout\,
	datac => \info1|runX~q\,
	datad => \info1|runY~q\,
	combout => \info1|pixels~104_combout\);

-- Location: FF_X31_Y14_N27
\info1|pixels[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(43));

-- Location: LCCOMB_X32_Y12_N20
\info1|Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux38~1_combout\ = (\info1|cChar\(3) & ((\info1|cChar\(1)) # ((!\info1|cChar\(4)) # (!\info1|cChar\(0))))) # (!\info1|cChar\(3) & ((\info1|cChar\(4)) # (\info1|cChar\(1) $ (\info1|cChar\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(0),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(4),
	combout => \info1|Mux38~1_combout\);

-- Location: LCCOMB_X32_Y12_N30
\info1|pixels~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~68_combout\ = (\info1|cChar\(5) & (((\info1|cChar\(2))))) # (!\info1|cChar\(5) & ((\info1|cChar\(2) & ((!\info1|Mux38~1_combout\))) # (!\info1|cChar\(2) & (\info1|Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux38~0_combout\,
	datab => \info1|cChar\(5),
	datac => \info1|cChar\(2),
	datad => \info1|Mux38~1_combout\,
	combout => \info1|pixels~68_combout\);

-- Location: LCCOMB_X32_Y12_N14
\info1|Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux44~1_combout\ = (\info1|cChar\(3)) # ((\info1|cChar\(4)) # ((\info1|cChar\(1) & !\info1|cChar\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(0),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(4),
	combout => \info1|Mux44~1_combout\);

-- Location: LCCOMB_X32_Y12_N22
\info1|pixels~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~69_combout\ = (!\info1|pixels~68_combout\ & (\info1|r_o~2_combout\ & ((!\info1|Mux44~1_combout\) # (!\info1|cChar\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels~68_combout\,
	datab => \info1|cChar\(5),
	datac => \info1|Mux44~1_combout\,
	datad => \info1|r_o~2_combout\,
	combout => \info1|pixels~69_combout\);

-- Location: FF_X32_Y12_N23
\info1|pixels[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(42));

-- Location: LCCOMB_X30_Y12_N0
\info1|Mux49~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~16_combout\ = (!\info1|localY\(1) & ((\info1|localX3\(0) & (\info1|pixels\(43))) # (!\info1|localX3\(0) & ((\info1|pixels\(42))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels\(43),
	datab => \info1|localY\(1),
	datac => \info1|localX3\(0),
	datad => \info1|pixels\(42),
	combout => \info1|Mux49~16_combout\);

-- Location: LCCOMB_X31_Y14_N6
\info1|Mux45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux45~2_combout\ = (\info1|cChar\(2) & (!\info1|cChar\(3) & ((\info1|cChar\(1)) # (!\info1|cChar\(0))))) # (!\info1|cChar\(2) & ((\info1|cChar\(1) & ((\info1|cChar\(3)))) # (!\info1|cChar\(1) & (\info1|cChar\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(0),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(1),
	combout => \info1|Mux45~2_combout\);

-- Location: LCCOMB_X31_Y14_N8
\info1|Mux45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux45~3_combout\ = (\info1|cChar\(5) & (\info1|cChar\(4))) # (!\info1|cChar\(5) & ((\info1|cChar\(4) & ((!\info1|Mux45~2_combout\))) # (!\info1|cChar\(4) & (!\info1|Mux45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(5),
	datab => \info1|cChar\(4),
	datac => \info1|Mux45~0_combout\,
	datad => \info1|Mux45~2_combout\,
	combout => \info1|Mux45~3_combout\);

-- Location: LCCOMB_X30_Y14_N16
\info1|Mux45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux45~4_combout\ = (\info1|Mux45~3_combout\ & ((\info1|Mux45~1_combout\) # ((!\info1|cChar\(5))))) # (!\info1|Mux45~3_combout\ & (((\info1|cChar\(5) & \info1|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux45~1_combout\,
	datab => \info1|Mux45~3_combout\,
	datac => \info1|cChar\(5),
	datad => \info1|Mux7~0_combout\,
	combout => \info1|Mux45~4_combout\);

-- Location: LCCOMB_X30_Y14_N6
\info1|pixels~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~101_combout\ = (\info1|runY~q\ & (\info1|Mux45~4_combout\ & \info1|runX~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \info1|runY~q\,
	datac => \info1|Mux45~4_combout\,
	datad => \info1|runX~q\,
	combout => \info1|pixels~101_combout\);

-- Location: FF_X30_Y14_N7
\info1|pixels[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(51));

-- Location: LCCOMB_X30_Y11_N26
\info1|Mux32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux32~2_combout\ = (!\info1|cChar\(5) & (\info1|cChar\(0) & (\info1|cChar\(2) $ (\info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(2),
	datab => \info1|cChar\(5),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(1),
	combout => \info1|Mux32~2_combout\);

-- Location: LCCOMB_X30_Y11_N22
\info1|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux32~1_combout\ = \info1|cChar\(2) $ (((\info1|cChar\(5)) # (\info1|cChar\(0) $ (\info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(2),
	datab => \info1|cChar\(5),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(1),
	combout => \info1|Mux32~1_combout\);

-- Location: LCCOMB_X30_Y11_N12
\info1|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux32~0_combout\ = (!\info1|cChar\(5) & (!\info1|cChar\(0) & (\info1|cChar\(2) $ (\info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(2),
	datab => \info1|cChar\(5),
	datac => \info1|cChar\(0),
	datad => \info1|cChar\(1),
	combout => \info1|Mux32~0_combout\);

-- Location: LCCOMB_X30_Y11_N24
\info1|pixels~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~56_combout\ = (!\info1|cChar\(3) & ((\info1|cChar\(4) & ((\info1|Mux32~0_combout\))) # (!\info1|cChar\(4) & (\info1|Mux32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux32~1_combout\,
	datab => \info1|cChar\(4),
	datac => \info1|cChar\(3),
	datad => \info1|Mux32~0_combout\,
	combout => \info1|pixels~56_combout\);

-- Location: LCCOMB_X30_Y11_N10
\info1|pixels~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~57_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~56_combout\) # ((\info1|Mux27~2_combout\ & \info1|Mux32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|r_o~2_combout\,
	datab => \info1|Mux27~2_combout\,
	datac => \info1|Mux32~2_combout\,
	datad => \info1|pixels~56_combout\,
	combout => \info1|pixels~57_combout\);

-- Location: FF_X30_Y11_N11
\info1|pixels[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(35));

-- Location: LCCOMB_X32_Y12_N2
\info1|Mux44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux44~2_combout\ = (\info1|cChar\(3) & (((!\info1|cChar\(4)) # (!\info1|cChar\(0))))) # (!\info1|cChar\(3) & ((\info1|cChar\(4)) # (\info1|cChar\(1) $ (\info1|cChar\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(0),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(4),
	combout => \info1|Mux44~2_combout\);

-- Location: LCCOMB_X32_Y12_N12
\info1|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux44~0_combout\ = (\info1|cChar\(1) & (!\info1|cChar\(0) & (\info1|cChar\(3) & \info1|cChar\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(1),
	datab => \info1|cChar\(0),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(4),
	combout => \info1|Mux44~0_combout\);

-- Location: LCCOMB_X32_Y12_N24
\info1|pixels~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~58_combout\ = (!\info1|cChar\(2) & ((\info1|cChar\(5) & ((!\info1|Mux44~1_combout\))) # (!\info1|cChar\(5) & (!\info1|Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux44~0_combout\,
	datab => \info1|cChar\(5),
	datac => \info1|cChar\(2),
	datad => \info1|Mux44~1_combout\,
	combout => \info1|pixels~58_combout\);

-- Location: LCCOMB_X32_Y12_N4
\info1|pixels~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~59_combout\ = (\info1|r_o~2_combout\ & ((\info1|pixels~58_combout\) # ((\info1|Mux44~2_combout\ & \info1|pixels~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux44~2_combout\,
	datab => \info1|pixels~58_combout\,
	datac => \info1|pixels~29_combout\,
	datad => \info1|r_o~2_combout\,
	combout => \info1|pixels~59_combout\);

-- Location: FF_X32_Y12_N5
\info1|pixels[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(50));

-- Location: LCCOMB_X32_Y14_N2
\info1|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux31~0_combout\ = (\info1|cChar\(4) & ((\info1|cChar\(2) & (\info1|cChar\(3) & !\info1|cChar\(1))) # (!\info1|cChar\(2) & (!\info1|cChar\(3) & \info1|cChar\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(4),
	datab => \info1|cChar\(2),
	datac => \info1|cChar\(3),
	datad => \info1|cChar\(1),
	combout => \info1|Mux31~0_combout\);

-- Location: LCCOMB_X32_Y14_N4
\info1|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux31~1_combout\ = (\info1|cChar\(5) & (((\info1|cChar\(0))))) # (!\info1|cChar\(5) & ((\info1|cChar\(0) & (\info1|Mux30~0_combout\)) # (!\info1|cChar\(0) & ((!\info1|Mux31~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|cChar\(5),
	datab => \info1|Mux30~0_combout\,
	datac => \info1|Mux31~0_combout\,
	datad => \info1|cChar\(0),
	combout => \info1|Mux31~1_combout\);

-- Location: LCCOMB_X30_Y14_N22
\info1|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux31~2_combout\ = (\info1|cChar\(5) & (\info1|Mux18~0_combout\ & ((\info1|Mux31~1_combout\) # (!\info1|cChar\(1))))) # (!\info1|cChar\(5) & (((\info1|Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux18~0_combout\,
	datab => \info1|Mux31~1_combout\,
	datac => \info1|cChar\(5),
	datad => \info1|cChar\(1),
	combout => \info1|Mux31~2_combout\);

-- Location: LCCOMB_X30_Y14_N4
\info1|pixels~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|pixels~100_combout\ = (\info1|runY~q\ & (\info1|Mux31~2_combout\ & \info1|runX~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \info1|runY~q\,
	datac => \info1|Mux31~2_combout\,
	datad => \info1|runX~q\,
	combout => \info1|pixels~100_combout\);

-- Location: FF_X30_Y14_N5
\info1|pixels[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|pixels~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|pixels\(34));

-- Location: LCCOMB_X30_Y12_N18
\info1|Mux49~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~9_combout\ = (\info1|localX3\(0) & (((\info1|localY\(1))))) # (!\info1|localX3\(0) & ((\info1|localY\(1) & (\info1|pixels\(50))) # (!\info1|localY\(1) & ((\info1|pixels\(34))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels\(50),
	datab => \info1|localX3\(0),
	datac => \info1|pixels\(34),
	datad => \info1|localY\(1),
	combout => \info1|Mux49~9_combout\);

-- Location: LCCOMB_X30_Y12_N28
\info1|Mux49~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~10_combout\ = (\info1|localX3\(0) & ((\info1|Mux49~9_combout\ & (\info1|pixels\(51))) # (!\info1|Mux49~9_combout\ & ((\info1|pixels\(35)))))) # (!\info1|localX3\(0) & (((\info1|Mux49~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|pixels\(51),
	datab => \info1|pixels\(35),
	datac => \info1|localX3\(0),
	datad => \info1|Mux49~9_combout\,
	combout => \info1|Mux49~10_combout\);

-- Location: LCCOMB_X30_Y12_N10
\info1|Mux49~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~17_combout\ = (\info1|Mux49~15_combout\ & ((\info1|Mux49~16_combout\) # ((!\info1|localY\(2))))) # (!\info1|Mux49~15_combout\ & (((\info1|Mux49~10_combout\ & \info1|localY\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux49~15_combout\,
	datab => \info1|Mux49~16_combout\,
	datac => \info1|Mux49~10_combout\,
	datad => \info1|localY\(2),
	combout => \info1|Mux49~17_combout\);

-- Location: LCCOMB_X30_Y12_N12
\info1|Mux49~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~23_combout\ = (\info1|localX3\(2) & (((\info1|localX3\(1))))) # (!\info1|localX3\(2) & ((\info1|localX3\(1) & ((\info1|Mux49~17_combout\))) # (!\info1|localX3\(1) & (\info1|Mux49~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux49~22_combout\,
	datab => \info1|localX3\(2),
	datac => \info1|localX3\(1),
	datad => \info1|Mux49~17_combout\,
	combout => \info1|Mux49~23_combout\);

-- Location: LCCOMB_X30_Y12_N24
\info1|Mux49~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|Mux49~31_combout\ = (\info1|localX3\(2) & ((\info1|Mux49~23_combout\ & ((\info1|Mux49~30_combout\))) # (!\info1|Mux49~23_combout\ & (\info1|Mux49~8_combout\)))) # (!\info1|localX3\(2) & (((\info1|Mux49~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|Mux49~8_combout\,
	datab => \info1|Mux49~30_combout\,
	datac => \info1|localX3\(2),
	datad => \info1|Mux49~23_combout\,
	combout => \info1|Mux49~31_combout\);

-- Location: FF_X30_Y12_N25
\info1|video_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U00|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \info1|Mux49~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info1|video_s~q\);

-- Location: LCCOMB_X30_Y14_N0
\info1|r_o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|r_o[3]~3_combout\ = (\info1|r_o~2_combout\ & (\info1|video_s~q\)) # (!\info1|r_o~2_combout\ & (((\osd1|red_out[4]~0_combout\ & \osd1|osd_de~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|r_o~2_combout\,
	datab => \info1|video_s~q\,
	datac => \osd1|red_out[4]~0_combout\,
	datad => \osd1|osd_de~2_combout\,
	combout => \info1|r_o[3]~3_combout\);

-- Location: LCCOMB_X29_Y14_N28
\info1|r_o[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|r_o[2]~4_combout\ = (\osd1|LessThan7~18_combout\ & (\osd1|osd_de~0_combout\ & (\info1|r_o~2_combout\ & \osd1|osd_de~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \osd1|LessThan7~18_combout\,
	datab => \osd1|osd_de~0_combout\,
	datac => \info1|r_o~2_combout\,
	datad => \osd1|osd_de~1_combout\,
	combout => \info1|r_o[2]~4_combout\);

-- Location: LCCOMB_X30_Y14_N24
\info1|b_o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info1|b_o[2]~2_combout\ = (\osd1|osd_de~2_combout\ & (((\osd1|red_out[4]~0_combout\) # (!\info1|runX~q\)) # (!\info1|runY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info1|runY~q\,
	datab => \osd1|osd_de~2_combout\,
	datac => \osd1|red_out[4]~0_combout\,
	datad => \info1|runX~q\,
	combout => \info1|b_o[2]~2_combout\);

-- Location: IOIBUF_X0_Y16_N15
\btn_n_i[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_n_i(1),
	o => \btn_n_i[1]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\btn_n_i[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_n_i(2),
	o => \btn_n_i[2]~input_o\);

-- Location: IOIBUF_X53_Y6_N22
\btn_n_i[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_n_i(3),
	o => \btn_n_i[3]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\btn_n_i[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_n_i(4),
	o => \btn_n_i[4]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\joy2_up_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_joy2_up_i,
	o => \joy2_up_i~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\joy2_down_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_joy2_down_i,
	o => \joy2_down_i~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\joy2_left_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_joy2_left_i,
	o => \joy2_left_i~input_o\);

-- Location: IOIBUF_X43_Y0_N15
\joy2_right_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_joy2_right_i,
	o => \joy2_right_i~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\joy2_p6_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_joy2_p6_i,
	o => \joy2_p6_i~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\joy2_p9_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_joy2_p9_i,
	o => \joy2_p9_i~input_o\);

-- Location: IOIBUF_X53_Y8_N22
\stm_b14_io~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => stm_b14_io,
	o => \stm_b14_io~input_o\);
END structure;


