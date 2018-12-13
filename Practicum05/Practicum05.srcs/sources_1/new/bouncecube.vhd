----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 12.12.2018 19:28:08
-- Design Name:
-- Module Name: bouncecube - Behavioral
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

entity bouncecube is
    Port ( clk : in STD_LOGIC;
           red : out STD_LOGIC;
           green : out STD_LOGIC;
           blue : out STD_LOGIC;
           hsync : out STD_LOGIC;
           vsync : out STD_LOGIC);
end bouncecube;

architecture Behavioral of bouncecube is

  component vga is
      Port ( 	clk25 : in STD_LOGIC;
  			    red, green, blue : out  STD_LOGIC;
  			    hsync, vsync : out  STD_LOGIC);
  end component;
  
  component clk_wiz_0 is
     Port ( clk_in1 : in STD_LOGIC;
            clk_out1 : out STD_LOGIC);
  end component;

  SIGNAL clksig : STD_LOGIC;

begin

  compvga : vga port map( clk25 => CLKsig, red => red, green => green, blue => blue, hsync => hsync, vsync => vsync );
  clkdiv : clk_wiz_0 port map( clk_in1 => clk, clk_out1 => clksig );

end Behavioral;
