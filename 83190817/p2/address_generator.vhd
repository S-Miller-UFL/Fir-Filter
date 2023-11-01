--steven miller
--Section number: 11710
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity address_generator is
port
(
	ingenerate : in std_logic;
	reset : in std_logic;
	clk: in std_logic;
	decodedaddress : out std_logic_vector(9 downto 0)
	
);

end address_generator;

architecture arch of address_generator is
signal address_unsigned : unsigned(9 downto 0);
begin

process(clk, reset)

variable address : unsigned(9 downto 0);

begin	
	if(reset = '1') then
	
		address := "0000000000";
		
	elsif(clk'event and clk = '1') then
	
			if(address = 1023) then
			
				address := "0000000000";
				
			else
			
				address := address + 1;
	
			end if;
			
		else
		
			address := address;
			
	end if;
	
address_unsigned <= address;

end process;

decodedaddress <= std_logic_vector(address_unsigned);

end arch;
