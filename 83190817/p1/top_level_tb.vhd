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
signal ROMaddr:  std_logic_vector(9 downto 0);
signal output:  std_logic_vector(width-1 downto 0);
signal reset:  std_logic:='1';
signal rden:  std_logic:='1';
signal clk:  std_logic:='0';

signal done : std_logic := '0';
begin  -- TB

  UUT : entity work.top_level
    port map 
(
      --inputs => inputs,
      clk     => clk,
      reset     => reset,
      output  => output,
      ROMaddr => ROMaddr,
      rden=>rden
      
      
);

clk <= not(clk) after 50 ns when done = '0' else clk;

process

--wait for 10ns
--check output

begin
--wait for filter to start up

wait for 10ns;
reset<='0';

for i in 0 to 1023 loop
	ROMaddr <= std_logic_vector(to_unsigned(i,10));
	wait until rising_edge(clk);
	end loop;

REPORT "SIMULATION FINISHED!";
end process;
end TB;