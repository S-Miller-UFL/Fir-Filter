--steven miller
--Section number: 11710
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fir_filter is
port
(
	start: in std_logic;
	reset: in std_logic;
	clk: in std_logic;
	rdy: out std_logic
);
end fir_filter;

architecture arch of fir_filter is

signal romout : std_logic_vector(31 downto 0);
signal romaddress : std_logic_vector(9 downto 0);
signal ramaddress : std_logic_vector(9 downto 0);
signal firout : std_logic_vector(31 downto 0);
signal romgeneratesignal : std_logic;
signal ramgeneratesignal : std_logic;
signal readen : std_logic;
signal writeen: std_logic;
signal firin : std_logic_vector(31 downto 0);
signal controllerfirenable : std_logic;

component controller 
port
(
	start: in std_logic;
	reset : in std_logic; --active-low
	clk : in std_logic;
	
	rdy: out std_logic;
	romgenerate: out std_logic;
	ramgenerate: out std_logic;
	datapathenable: out std_logic;
	rden : out std_logic;
	wren : out std_logic
);
end component;

component ROM
port
(
		address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		rden		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
);
end component;

component fir
generic(width : positive := 32);
port
(
	input : in std_logic_vector(width-1 downto 0);
	output: out std_logic_vector(width-1 downto 0);
	reset: in std_logic;
	firenable : in std_logic;
	clk: in std_logic
);
end component;

component address_generator 
port
(
	ingenerate : in std_logic;
	reset : in std_logic;
	clk : in std_logic;
	decodedaddress : out std_logic_vector(9 downto 0)
);
end component;

component RAM
port
(
	address	: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
	clock		: IN STD_LOGIC  := '1';
	data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
	wren		: IN STD_LOGIC ;
	q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
);
end component;

begin
--firenable <= clk and datapathenable;
controllercomponent: controller port map(start => start, reset => reset, clk => clk, rdy=> rdy,
													 romgenerate => romgeneratesignal, ramgenerate => ramgeneratesignal,
													 datapathenable => controllerfirenable,
													 rden => readen, wren => writeen);
fir1: fir generic map(width=>32) port map(input => firin,output=>firout,reset => reset, firenable =>controllerfirenable,clk=>clk);
rom1 : ROM port map(address => romaddress, clock=>clk,rden=>readen,q=>firin);
ramgenerator: address_generator port map(ingenerate => ramgeneratesignal, reset => reset, clk=>clk, decodedaddress => ramaddress);
romgenerator: address_generator port map(ingenerate => romgeneratesignal, reset => reset, clk=>clk, decodedaddress => romaddress);
outputram : RAM port map(address => ramaddress, clock=>clk,data=>firout,wren => writeen);

end arch;