----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 02/09/2019 01:16:09 PM
-- Design Name:
-- Module Name: PS2Reader - Behavioral
-- Project Name:
-- Target Devices:
-- Tool Versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PS2Reader is
  GENERIC(
  clk_freq              : INTEGER := 10_000_000; --system clock frequency in Hz
  debounce_counter_size : INTEGER := 10);
  Port (
  clk : in STD_LOGIC;
  psclk : in STD_LOGIC;
  psdin : in STD_LOGIC;
  psdout : out STD_LOGIC_VECTOR (7 downto 0);
  psdone : out STD_LOGIC);
end PS2Reader;

architecture Behavioral of PS2Reader is

  component debounce is
    generic(
    counter_size : INTEGER);
    port(
    clk    : in  STD_LOGIC;
    din : in  STD_LOGIC;
    result : out STD_LOGIC);
  end component;

  signal shift_reg : STD_LOGIC_VECTOR(10 downto 0) := (others => '0');
  signal dcount : INTEGER RANGE 0 TO clk_freq/18_000;
  signal pserror : STD_LOGIC;

  signal rpsclk: std_logic; --raw ps clk
  signal rpsdin: std_logic; --raw ps din

  signal fpsclk: std_logic; --Flipflopped ps clk
  signal fpsdin: std_logic; --Flipflopped ps din
  begin

    --debouncers
    dbps2clk: debounce
    GENERIC MAP(counter_size => debounce_counter_size)
    PORT MAP(clk => clk, din => rpsclk, result => fpsclk);
    dbps2din: debounce
    GENERIC MAP(counter_size => debounce_counter_size)
    PORT MAP(clk => clk, din => rpsdin, result => fpsdin);


    --sanity check
    pserror <= NOT (NOT shift_reg(0) AND shift_reg(10) AND (shift_reg(9) XOR shift_reg(8) XOR
    shift_reg(7) XOR shift_reg(6) XOR shift_reg(5) XOR shift_reg(4) XOR shift_reg(3) XOR
    shift_reg(2) XOR shift_reg(1)));


    process (clk)
    begin
      if (rising_edge(clk)) THEN
        rpsclk <= psclk;
        rpsdin <= psdin;
    end if;
    end process;

    process (fpsclk)
    begin
      if (falling_edge(fpsclk)) then
        shift_reg <= fpsdin & shift_reg(10 downto 1);
      end if;
    end process;

    process (clk)
    begin
      if (rising_edge(clk)) then

        if(fpsclk = '0') then

dcount <= dcount + 1;
        elsif (dcount /= clk_freq/18_000) then
          dcount <= 0;
        end if;

        if(dcount >= clk_freq/18_000 AND pserror = '0') then
          psdone <= '1';
          psdout <= shift_reg (8 downto 1);
        else
          psdone <= '0';
        end if;
      end if;
    end process;
  end Behavioral;
