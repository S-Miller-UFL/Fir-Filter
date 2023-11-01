library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MultFP32_tb is
end MultFP32_tb;

architecture TB of MultFP32_tb is

  constant TIMEOUT : time     := 1 ms;

  signal clk    : std_logic := '0';
  signal rst    : std_logic := '1';
  signal x      : std_logic_vector(31 downto 0);
  signal y      : std_logic_vector(31 downto 0);
  signal output : std_logic_vector(31 downto 0);

begin

  UUT : entity work.MultFP32
      port map (
      clk    => clk,
      areset => rst,
      a      => x,
      b      => y,
      q      => output);

  clk <= not clk after 20 ns;

  process
    
  begin

    rst   <= '1';

    for i in 0 to 9 loop
      wait until clk'event and clk = '1';
    end loop;  -- i    rst <= '0';

    rst <= '0';
    x     <= x"40400000"; --dec. 3: 0 10000000 100...000
    y     <= x"40800000"; --dec. 4: 0 10000001 000...000

    -- output should become good after latency (7 clock cycles of MultFP32)
   for i in 0 to 9 loop
      wait until clk'event and clk = '1';
    end loop;  -- i    rst <= '0';

    report "DONE!!!!!!" severity note;

    wait;

  end process;

end TB;
