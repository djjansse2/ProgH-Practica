----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 20.01.2019 13:33:20
-- Design Name:
-- Module Name: Snake - Behavioral
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

entity Snake is
    Port ( clk : in STD_LOGIC;
           SegOut : out STD_LOGIC_VECTOR (0 to 6)
           SegSel : out STD_LOGIC_VECTOR (0 to 3));
end Snake;

architecture Behavioral of Snake is

begin


end Behavioral;
