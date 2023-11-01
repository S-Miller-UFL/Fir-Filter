--Steven Miller
--11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.NUMERIC_STD.UNSIGNED;

entity top_level_tb is
end top_level_tb;

architecture TB of top_level_tb is
 constant WIDTH   : positive := 32;
--signal inputs : std_logic_vector(width-1 downto 0);
signal start:  std_logic := '0';
signal reset:  std_logic:='1';
signal clk:  std_logic:='0';
signal rdy:  std_logic;

signal done : std_logic := '0';
begin  -- TB

  UUT : entity work.board_design
    port map 
(
      --inputs => inputs,
	start => start,
        reset     => reset,
	clk=>clk,
	rdy => rdy
      
      
);

clk <= not(clk) after 20 ns when done = '0' else clk;

process

--wait for 10ns
--check output
begin
--wait for filter to start up
reset<='0';
wait for 10ns;

for i in 0 to 1023 loop
	start <= '1';
	wait for 20ns;
	wait until rdy = '1';
	start <= '0';
	wait for 40ns;
end loop;
end process;
end TB;