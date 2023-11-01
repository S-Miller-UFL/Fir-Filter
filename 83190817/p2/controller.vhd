--steven miller
--Section number: 11710
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity controller is
port
(
	start: in std_logic;
	reset : in std_logic; --active-low
	clk : in std_logic;
	
	rdy: out std_logic;
	romgenerate: out std_logic;
	ramgenerate: out std_logic;
	datapathenable: out std_logic;
	rden: out std_logic;
	wren : out std_logic
	
);

end controller;
architecture arch of controller is
type asmstatetype is (start_state,load_rom,latency_hold, load_ram,store_ram, done_state);
signal state, nextstate: asmstatetype;
signal romaddr : unsigned(9 downto 0) := "0000000000";
signal ramaddr : unsigned(9 downto 0) := "0000000000";
signal count : unsigned(9 downto 0) := "0000000000";
begin
--moore machine
process(clk,reset)

constant one : unsigned := "1";

begin

if(reset = '1') then

	state <= start_state;
	
elsif(clk'event and clk = '1') then


	case state is

		when start_state =>
				if(start  = '1') then
					state <= load_rom;
				else
					state <= start_state;
				end if;
				
		when load_rom =>
				if(count = 21) then
				state <= load_ram;
				else
				state <= latency_hold;
				end if;
				
		when latency_hold =>
				count <= count + 1;
				state <= load_rom;
		when load_ram =>
				state <= store_ram;
		when store_ram =>
				state <= done_state;
				
		when done_state =>
		
				if(start = '0') then
					state <= start_state;
				else
					state <= done_state;
				end if;
		when others=>
			state <= state;
	end case;
	
end if;
	
	
end process;

process(state)

begin

	case state is

		when start_state =>
			rdy <= '0';
			romgenerate <= '0';
			ramgenerate <= '0';
			rden <= '0';
			wren <= '0';
			datapathenable <= '0';
		when load_rom =>
			rdy <= '0';
			romgenerate <= '1';
			ramgenerate <= '0';
			rden <= '1';
			wren <= '0';
			datapathenable <= '0';
		when latency_hold =>
			rdy <= '0';
			romgenerate <= '0';
			ramgenerate <= '0';
			rden <= '0';
			wren <= '0';
			datapathenable <= '1';
		when load_ram =>
			rdy <= '0';
			romgenerate <= '0';
			ramgenerate <= '1';
			rden <= '0';
			wren <= '1';
			datapathenable <= '0';
		when store_ram =>
			rdy <= '0';
			romgenerate <= '0';
			ramgenerate <= '0';
			rden <= '0';
			wren <= '1';
			datapathenable <= '0';
		when done_state =>
			rdy <= '1';
			romgenerate <= '0';
			ramgenerate <= '0';
			rden <= '0';
			wren <= '0';
			datapathenable <= '0';
		when others =>
			--inferred latch
	end case;
	
end process;

end arch;