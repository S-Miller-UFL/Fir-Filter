--steven miller
--Section number: 11710
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity board_design is
port
(
	start: in std_logic;
	reset: in std_logic;
	clk: in std_logic;
	rdy: out std_logic
);
end board_design;

architecture arch of board_design is

signal startn : std_logic;
signal resetn: std_logic;

component fir_filter
port
(
	start: in std_logic;
	reset: in std_logic;
	clk: in std_logic;
	rdy: out std_logic
);
end component;

begin

--startn <= not(start);
--reset <= (reset);

fir: fir_filter port map(start => start, reset => reset, clk => clk, rdy => rdy);

end arch;