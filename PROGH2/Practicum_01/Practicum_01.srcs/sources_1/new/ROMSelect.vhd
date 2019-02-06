----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 05.02.2019 18:58:37
-- Design Name:
-- Module Name: ROMSelect - Behavioral
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

entity ROMSelect is
    Port ( clk : in STD_LOGIC;
           add : out STD_LOGIC_VECTOR (12 downto 0));
end ROMSelect;

architecture Behavioral of ROMSelect is

SIGNAL addTemp : unsigned(12 downto 0) := (others => '0');
SIGNAL enable : STD_LOGIC := '0';
SIGNAL prescaler : integer := 0;

begin

  process(clk)

  begin

    if rising_edge(clk) then
        if(prescaler < 12850) then
            enable <= '0';
            prescaler <= prescaler + 1;
        else
            enable <= '1';
            prescaler <= 0;
        end if;
    end if;

    add <= STD_LOGIC_VECTOR(addTemp);

  end process;

  process(clk, enable)
  begin
      if rising_edge(clk) then
          if(enable = '1') then
              if (addTemp < 6709) then
                  addTemp <= addTemp + 1;
              else
                  addTemp <= (others => '0');
              end if;
          end if;
      end if;
    end process;
end Behavioral;
