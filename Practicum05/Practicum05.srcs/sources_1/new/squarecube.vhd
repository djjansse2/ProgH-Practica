----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 12/13/2018 01:28:41 PM
-- Design Name:
-- Module Name: squarecube - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity squarecube is
    Port ( vcount : in STD_LOGIC_VECTOR (9 downto 0);
           hcount : in STD_LOGIC_VECTOR (9 downto 0);
           clk : in STD_LOGIC;
           red : out STD_LOGIC;
           green : out STD_LOGIC;
           blue : out STD_LOGIC);
end squarecube;

architecture Behavioral of squarecube is

  SIGNAL dirH, dirV : STD_LOGIC := '1';
  SIGNAL posH : integer := 459;
  SIGNAL posV : integer := 266;
  SIGNAL size : integer := 10;

begin

  process(hcount, vcount)

  begin

    if (hcount > posH) and (hcount < posH + size) and (vcount > posV) and (vcount < posV + size) then
      red <= '1';
      green <= '0';
      blue <= '0';
    else
      red <= '0';
      green <= '0';
      blue <= '1';
    end if;

  end process;

  process( clk )

  begin

    if(rising_edge(clk)) then
      if(dirH = '1') then
        posH <= posH + 1;
      else
        posH <= posH - 1;
      end if;

      if(dirV = '1') then
        posV <= posV + 1;
      else
        posV <= posV - 1;
      end if;

      if(posV <= 32) then
        dirV <= '1';
        --posV <= posV + 1;
      elsif(posV + size >= 510) then
        dirV <= '0';
        --posV <= 509 - size;
      end if;

      if(posH <= 145) then
        dirH <= '1';
        --posH <= 156;
      elsif(posH + size >= 783) then
        dirH <= '0';
        --posH <= 782 - size;
      end if;
    end if;

  end process;

end Behavioral;
