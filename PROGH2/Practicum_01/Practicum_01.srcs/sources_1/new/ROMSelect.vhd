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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROMSelect is
    Port ( clk : in STD_LOGIC;
           data : out STD_LOGIC_VECTOR (7 downto 0));
end ROMSelect;

architecture Behavioral of ROMSelect is

  type ROM is BertErnie8K;

begin



end Behavioral;
