--steven miller
--Section number: 11710
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fir is

generic(width : positive := 32);

port
(
	input : in std_logic_vector(width-1 downto 0);
	--ROMaddr: in std_logic_vector(9 downto 0);
	output: out std_logic_vector(width-1 downto 0);
	reset: in std_logic;
	rden: in std_logic;
	clk: in std_logic
	
);
end fir;

architecture arch of fir is

component Datapath is
generic(width:positive :=32);
port
(
	input: in std_logic_vector(width-1 downto 0);
	output: out std_logic_vector(width-1 downto 0);
	reset: in std_logic;
	clk: in std_logic
);
end component;


begin
FIR: Datapath generic map (width=>width) port map(input =>input, output =>output, reset=>reset,clk=>clk);

end arch;
