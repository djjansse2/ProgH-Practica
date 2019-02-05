----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 05.02.2019 18:52:25
-- Design Name:
-- Module Name: AudioGen - Behavioral
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

entity AudioGen is
    Port ( clk : in STD_LOGIC;
           q : out STD_LOGIC);
end AudioGen;

architecture Behavioral of AudioGen is

  component clk_wiz_0 is
    Port ( clk_in1 : in STD_LOGIC;
           clk_out1 : out STD_LOGIC);
  end component;

  component ROMSelect is
      Port ( clk : in STD_LOGIC;
             data : out STD_LOGIC_VECTOR (7 downto 0));
  end component;

  component Converter is
      Port ( data : in STD_LOGIC_VECTOR (7 downto 0);
             clk : in STD_LOGIC;
             q : out STD_LOGIC);
  end component;

  SIGNAL dataS : STD_LOGIC_VECTOR(7 downto 0);
  SIGNAL clkS : STD_LOGIC;

begin

  clkWiz : clk_wiz_0 port map( clk_in1 => clk, clk_out1 => clkS );
  ROMSel : ROMSelect port map( clk => clkS, data => dataS );
  Convert : Converter port map( data => dataS, clk => clk, q => q );

end Behavioral;
