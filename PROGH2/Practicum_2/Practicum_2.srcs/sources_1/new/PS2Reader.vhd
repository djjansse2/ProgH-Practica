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
  Port (
  clk : in STD_LOGIC;
  psclk : in STD_LOGIC;
  psdin : in STD_LOGIC;
  psdout : out STD_LOGIC_VECTOR (7 downto 0);
  psdone : out STD_LOGIC);
end PS2Reader;

architecture Behavioral of PS2Reader is 
  signal shift_reg : STD_LOGIC_VECTOR(10 downto 0) := (others => '0');
  signal sync : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
  signal prevsync : STD_LOGIC := '1';
  signal dcount : integer;
  signal pserror : STD_LOGIC;
  begin

    pserror <= NOT (NOT shift_reg(0) AND shift_reg(10) AND (shift_reg(9) XOR shift_reg(8) XOR
    shift_reg(7) XOR shift_reg(6) XOR shift_reg(5) XOR shift_reg(4) XOR shift_reg(3) XOR
    shift_reg(2) XOR shift_reg(1)));

    process (psclk)
    begin
      if (falling_edge(psclk)) then
        shift_reg(10) <= psdin;
        shift_reg(9) <= shift_reg(10);
        shift_reg(8) <= shift_reg(9);
        shift_reg(7) <= shift_reg(8);
        shift_reg(6) <= shift_reg(7);
        shift_reg(5) <= shift_reg(6);
        shift_reg(4) <= shift_reg(5);
        shift_reg(3) <= shift_reg(4);
        shift_reg(2) <= shift_reg(3);
        shift_reg(1) <= shift_reg(2);
        shift_reg(0) <= shift_reg(1);
      end if;
  end process;

  process (clk)
  begin
    if (rising_edge(clk)) then
      if(psclk = '0') then
        dcount <= 0;
      elsif(dcount /= 100000000/18_000) then
        dcount <= dcount + 1;
      end if;

      if(dcount = 100000000/18_000 AND pserror = '0' AND psclk = '1') then
        psdone <= '1';
        psdout <= shift_reg (8 downto 1);
      else
        psdone <= '0';
      end if;
    end if;
  end process;
end Behavioral;
