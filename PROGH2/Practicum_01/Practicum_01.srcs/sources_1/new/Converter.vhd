----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 05.02.2019 18:55:33
-- Design Name:
-- Module Name: Converter - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Converter is
    Port ( data : in STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC;
           q : out STD_LOGIC);
end Converter;

architecture Behavioral of Converter is

begin

  process(clk, data)

  variable preScaler : integer := 0;
  variable d : integer := to_integer(unsigned(data));

  begin

    if rising_edge(clk) then
      if(preScaler < 255) then
        preScaler := preScaler + 1;
      else
        preScaler := 0;
      end if;

      if(preScaler < d) then
        q <= '0';
      else
        q <= '1';
      end if;
    end if;

  end process;

end Behavioral;
