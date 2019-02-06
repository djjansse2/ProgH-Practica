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

begin

  process(clk)
  
  variable prescaler : integer := 0;
  
  begin
  
    if rising_edge(clk) then
        if(prescaler < 3840) then
            prescaler := prescaler + 1;
        else
            if (addTemp < 6710) then
                addTemp <= addTemp + 1;
            else
                addTemp <= (others => '0');
            end if;
            prescaler := 0;
        end if;    
    end if;
  
    add <= STD_LOGIC_VECTOR(addTemp);
  
  end process;

end Behavioral;
