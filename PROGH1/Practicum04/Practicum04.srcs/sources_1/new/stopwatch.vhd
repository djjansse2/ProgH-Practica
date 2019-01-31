----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04.12.2018 21:42:28
-- Design Name:
-- Module Name: stopwatch - Behavioral
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

entity stopwatch is
    Port (  clk : in STD_LOGIC;
            segmentSel : out STD_LOGIC_VECTOR (3 downto 0);
            segmentOut : out STD_LOGIC_VECTOR (6 downto 0));
end stopwatch;

architecture Behavioral of stopwatch is

  component Watch is
      Port ( clk : in STD_LOGIC;
             sysReset : in STD_LOGIC;
             watchRunning : in STD_LOGIC;
             watchReset : in STD_LOGIC;
             secUnits : out STD_LOGIC_VECTOR (3 downto 0);
             secTens : out STD_LOGIC_VECTOR (3 downto 0);
             minUnits : out STD_LOGIC_VECTOR (3 downto 0);
             minTens : out STD_LOGIC_VECTOR (3 downto 0));
  end component;

  component Segmentdriver is
    Port (  clk     : in STD_LOGIC;
            unitsin : in STD_LOGIC_VECTOR(3 downto 0);
            tensin : in STD_LOGIC_VECTOR(3 downto 0);
            hundredsin : in STD_LOGIC_VECTOR(3 downto 0);
            thousandsin : in STD_LOGIC_VECTOR(3 downto 0);
            segmentSel : out STD_LOGIC_VECTOR(3 downto 0);
            segmentOut : out STD_LOGIC_VECTOR(6 downto 0));
  end component;

  signal tempUni, tempTen, tempHun, tempTho : STD_LOGIC_VECTOR (3 downto 0);

begin

  compWatch : Watch port map ( clk => clk, sysReset => '0', watchRunning => '1', watchReset => '0', secUnits => tempUni, secTens => tempTen, minUnits => tempHun, minTens => tempTho );
  compSeg   : Segmentdriver port map ( clk => clk, unitsin => tempUni, tensin => tempTen, hundredsin => tempHun, thousandsin => tempTho, segmentSel => segmentSel, segmentOut => segmentOut );

end Behavioral;
