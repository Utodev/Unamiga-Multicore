--
-- TBBlue / ZX Spectrum Next project
--
-- PS2 keyboard - Fabio Belavenuto
--
-- All rights reserved
--
-- Redistribution and use in source and synthezised forms, with or without
-- modification, are permitted provided that the following conditions are met:
--
-- Redistributions of source code must retain the above copyright notice,
-- this list of conditions and the following disclaimer.
--
-- Redistributions in synthesized form must reproduce the above copyright
-- notice, this list of conditions and the following disclaimer in the
-- documentation and/or other materials provided with the distribution.
--
-- Neither the name of the author nor the names of other contributors may
-- be used to endorse or promote products derived from this software without
-- specific prior written permission.
--
-- THIS CODE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
-- AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
-- THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
-- PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE
-- LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
-- CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
-- SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
-- INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
-- CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
-- ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
-- POSSIBILITY OF SUCH DAMAGE.
--
-- You are responsible for any legal issues arising from your use of this code.
--




library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ps2keyb is
	port (
		enable_i		: in    std_logic;
		clock_i			: in    std_logic;
		clock_ps2_i		: in    std_logic;
		reset_i			: in    std_logic;
		-- PS/2 interface
		ps2_clk_io		: inout std_logic;
		ps2_data_io		: inout std_logic;

		-- OUTs
		keys_o	: out   std_logic_vector(7 downto 0);
		functionkeys_o	: out   std_logic_vector(12 downto 1)

	);
end entity;

architecture rtl of ps2keyb is

	signal keys_s			: std_logic_vector(7 downto 0) := (others=>'1');

	signal ps2_data_s			: std_logic_vector(7 downto 0);
	signal ps2_valid_s		: std_logic;

	signal release_s			: std_logic;
	signal extended_s			: std_logic;

	signal data_send_s		: std_logic_vector(7 downto 0);
	signal data_send_rdy_s	: std_logic								:= '0';
	signal ctrl_s				: std_logic								:= '1';
	signal alt_s				: std_logic								:= '1';

	-- Function keys
	signal fnkeys_s			: std_logic_vector(1 to 12)		:= (others => '0');
	
	--
	signal ps2_alt0_clk_io  : std_logic;
	signal ps2_alt0_data_io	: std_logic;
	signal ps2_alt0_valid_s	: std_logic;
	signal ps2_alt0_data_s 	: std_logic_vector(7 downto 0);
 	signal ps2_alt1_clk_io  : std_logic;
	signal ps2_alt1_data_io	: std_logic;
	signal ps2_alt1_valid_s	: std_logic;
	signal ps2_alt1_data_s 	: std_logic_vector(7 downto 0);
	signal ps2_sigsend_s	: std_logic;
	
 begin


	-- PS/2 interface


		ps2_alt0 : entity work.ps2_iobase
		generic map (
			clkfreq_g		=> 875 --28000
		)
		port map (
			clock_i			=> clock_ps2_i,
			reset_i			=> reset_i,
			enable_i			=> enable_i,
			ps2_clk_io		=> ps2_clk_io, --ps2_alt0_clk_io
			ps2_data_io		=> ps2_data_io, --ps2_alt0_data_io
			data_rdy_i		=> data_send_rdy_s,
			data_i			=> data_send_s,
			send_rdy_o		=> open,
			data_rdy_o		=> ps2_valid_s, --ps2_alt0_valid_s
			data_o			=> ps2_data_s, --ps2_alt0_data_s
			sigsending_o	=> ps2_sigsend_s
		);


	-- Function Keys
	functionkeys_o(1)		<= fnkeys_s(1);
	functionkeys_o(2)		<= fnkeys_s(2);
	functionkeys_o(3)		<= fnkeys_s(3);
	functionkeys_o(4)		<= fnkeys_s(4);
	functionkeys_o(5)		<= fnkeys_s(5);
	functionkeys_o(6)		<= fnkeys_s(6);
	functionkeys_o(7)		<= fnkeys_s(7);
	functionkeys_o(8)		<= fnkeys_s(8);
	functionkeys_o(9)		<= fnkeys_s(9);
	functionkeys_o(10)	<= fnkeys_s(10);
	functionkeys_o(11)	<= fnkeys_s(11);
	functionkeys_o(12)	<= fnkeys_s(12);

	keys_o <= keys_s;

	-- Key decode
	process(reset_i, clock_i)
		type keymap_seq_t is (KM_IDLE, KM_READ, KM_SEND, KM_END);
		variable keymap_seq_s		: keymap_seq_t;
		variable keyb_valid_edge_v	: std_logic_vector(1 downto 0)	:= "00";
		variable row_v : integer range 0 to 7;
		variable col_v : integer range 0 to 7;
		variable caps_v : std_logic;
		variable symb_v : std_logic;
	begin
		if reset_i = '1' then
			keymap_seq_s		:= KM_IDLE;
			keyb_valid_edge_v	:= "00";
			release_s 			<= '0';
			extended_s 			<= '0';

			keys_s <= (others => '1');

			fnkeys_s	<= (others => '0');
			alt_s		<= '1';
			ctrl_s	<= '1';

		elsif rising_edge(clock_i) then

			data_send_rdy_s	<= '0';

			keyb_valid_edge_v := keyb_valid_edge_v(0) & ps2_valid_s;
			
			case keymap_seq_s is
				--
				when KM_IDLE =>
					if keyb_valid_edge_v = "01" then
						if ps2_data_s = X"AA" then
							keymap_seq_s := KM_SEND;
						elsif ps2_data_s = X"E0" then			-- Extended key code follows
							extended_s <= '1';
						elsif ps2_data_s = X"F0" then			-- Release code follows
							release_s <= '1';
						else
							keymap_seq_s := KM_READ;
						end if;
					end if;
				--
				when KM_READ =>

				
						--- Truth Table for keyboard keys_s:
																
						-- 00000 (0)  - F1						-- 10000 (16) - Esc
						-- 00001 (1)  - F2						-- 10001 (17) - Del
						-- 00010 (2)  - F3						-- 10010 (18) - Bloq Desp
						-- 00011 (3)  - F4						-- 10011 (19) - BackSpace
						-- 00100 (4)  - F5						-- 10100 (20) - End
						-- 00101 (5)  - F6						-- 10101 (21) - not assigned
						-- 00110 (6)  - F7						-- 10110 (22) - not assigned
						-- 00111 (7)  - F8						-- 10111 (23) - Right
						-- 01000 (8)  - F9						-- 11000 (24) - not assigned
						-- 01001 (9)  - F10						-- 11001 (25) - Home
						-- 01010 (10) - F11						-- 11010 (26) - PgDown
						-- 01011 (11) - F12						-- 11011 (27) - Left
						-- 01100 (12) - Supr					-- 11100 (28) - PgUp
						-- 01101 (13) - Bloq Desp				-- 11101 (29) - Down
						-- 01110 (14) - Backspace				-- 11110 (30) - Up
						-- 01111 (15) - Intro					-- 11111 (31) - No key

						-- Note: this truth table replaces the previous way of providing keypresses, which was using 5 signals that would eventually be converted into 
						-- 5 bits when sent to SMT32, to determine if a given key was pressed (one signal/bit per key). That was limiting the number of keys the core
						-- could send the arduino to 5. The change made uses 5 signals/bits to encode 32 possible keys (although not all of them have been used). The
						-- reason why cursor keys and intro key seem to be placed so randomly is they were placed there to keep the same encoding they had before, so 
						-- this core is compatible with the preovious firmaware in the SMT32, avoiding that way the board to get bricked
						

					if release_s = '1' then 
						keys_s(4 downto 0) <= "11111"; -- NO KEY
					else
						if extended_s = '0' then
							case ps2_data_s is
								when X"05"  => keys_s(4 downto 0) <= "00000";  -- F1
								when X"06"  => keys_s(4 downto 0) <= "00001";  -- F2
								when X"04"  => keys_s(4 downto 0) <= "00010";  -- F3
								when X"0C"  => keys_s(4 downto 0) <= "00011";  -- F4
								when X"03"  => keys_s(4 downto 0) <= "00100";  -- F5
								when X"0B"  => keys_s(4 downto 0) <= "00101";  -- F6
								when X"83"  => keys_s(4 downto 0) <= "00110";  -- F7
								when X"0A"  => keys_s(4 downto 0) <= "00111";  -- F8
								when X"01"  => keys_s(4 downto 0) <= "01000";  -- F9
								when X"09"  => keys_s(4 downto 0) <= "01001";  -- F10
								when X"78"  => keys_s(4 downto 0) <= "01010";  -- F11
								when X"07"  => keys_s(4 downto 0) <= "01011";  -- F12
								when X"7E"  => keys_s(4 downto 0) <= "01101";  -- Bloq Desp
								when X"66"  => keys_s(4 downto 0) <= "01110";  -- Backspace
								when X"76"  => keys_s(4 downto 0) <= "10000";  -- Esc
								when x"5a" 	=>  keys_s(4 downto 0) <= "01111"; -- ENTER  (numeric keyboard one)
								when others => keys_s(4 downto 0) <= "11111";  -- NO KEY
							end case;
						else
							case ps2_data_s is --- Extended Scancodes
								when x"75" 	=>	keys_s(4 downto 0) <= "11110"; -- Up     
								when x"72" 	=>	keys_s(4 downto 0) <= "11101"; -- Down   
								when x"6b" 	=>	keys_s(4 downto 0) <= "11011"; -- Left   
								when x"74" 	=>	keys_s(4 downto 0) <= "10111"; -- Right  
								when x"5a" 	=>  keys_s(4 downto 0) <= "01111"; -- ENTER  (standard one)
								when x"71"  =>  keys_s(4 downto 0) <= "10001"; -- Supr
								when x"7D"  =>  keys_s(4 downto 0) <= "11100"; -- PgUp
								when x"7A"  =>  keys_s(4 downto 0) <= "11010"; -- PgDown
								when x"69"  =>  keys_s(4 downto 0) <= "10100"; -- End
								when x"6C"  =>  keys_s(4 downto 0) <= "11001"; -- Home
								when others =>  keys_s(4 downto 0) <= "11111"; -- NO KEY
							end case;
						end if;
					end if;
						
					keymap_seq_s := KM_END;
				--
				when KM_SEND =>
					data_send_s			<= X"55";
					data_send_rdy_s	<= '1';
					keymap_seq_s := KM_IDLE;
				--
				when KM_END =>
					-- Cancel extended/release flags for next time
					release_s  <= '0';
					extended_s <= '0';


					keymap_seq_s := KM_IDLE;
			end case;
		end if;
	end process;

end architecture;
