----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 02/09/2019 04:12:51 PM
-- Design Name:
-- Module Name: PS2Top - Behavioral
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

entity PS2Top is
 Port (  clk : in STD_LOGIC;
  psclk : in STD_LOGIC;
  psdin : in STD_LOGIC;
  psdout : out STD_LOGIC_VECTOR (7 downto 0);
  psdone : out STD_LOGIC);
end PS2Top;

architecture Behavioral of PS2Top is

begin
  ps2t: entity WORK.PS2Reader port map
  (
  clk => clk,
  psclk => psclk,
  psdin =>  psdin,
  psdout => psdout,
  psdone => psdone

  );

end Behavioral;
