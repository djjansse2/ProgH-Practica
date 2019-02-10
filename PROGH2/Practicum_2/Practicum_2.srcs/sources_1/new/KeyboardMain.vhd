----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 10.02.2019 11:47:10
-- Design Name:
-- Module Name: KeyboardMain - Behavioral
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

entity KeyboardMain is
    Port ( clk : in STD_LOGIC;
           psdin : in STD_LOGIC;
           psclk : in STD_LOGIC;
           psdone : out STD_LOGIC;
           psdout : out STD_LOGIC_VECTOR (7 downto 0);
           segmentSel : out STD_LOGIC_VECTOR (3 downto 0);
           segmentOut : out STD_LOGIC_VECTOR (6 downto 0));
end KeyboardMain;

architecture Behavioral of KeyboardMain is

  component PS2Reader is
    Port (
    clk : in STD_LOGIC;
    psclk : in STD_LOGIC;
    psdin : in STD_LOGIC;
    psdout : out STD_LOGIC_VECTOR (7 downto 0);
    psdone : out STD_LOGIC);
  end component;

  component Segmentdriver is
    Port (
    clk     : in STD_LOGIC;
    unitsin : in STD_LOGIC_VECTOR(3 downto 0);
    tensin : in STD_LOGIC_VECTOR(3 downto 0);
    hundredsin : in STD_LOGIC_VECTOR(3 downto 0);
    thousandsin : in STD_LOGIC_VECTOR(3 downto 0);
    segmentSel : out STD_LOGIC_VECTOR(3 downto 0);
    segmentOut : out STD_LOGIC_VECTOR(6 downto 0));
  end component;

  component StateMachine is
      Port ( clk : in STD_LOGIC;
             psdone : in STD_LOGIC;
             dataIn : in STD_LOGIC_VECTOR (7 downto 0);
             unitOut : out STD_LOGIC_VECTOR (3 downto 0);
             tenOut : out STD_LOGIC_VECTOR (3 downto 0);
             hundOut : out STD_LOGIC_VECTOR (3 downto 0);
             ThouOut : out STD_LOGIC_VECTOR (3 downto 0));
  end component;

  SIGNAL tempVal : STD_LOGIC_VECTOR (7 downto 0);
  SIGNAL sigDone : STD_LOGIC;
  SIGNAL tempUni : STD_LOGIC_VECTOR (3 downto 0) := "1111";
  SIGNAL tempTen : STD_LOGIC_VECTOR (3 downto 0) := "1111";
  SIGNAL tempHun : STD_LOGIC_VECTOR (3 downto 0) := "1111";
  SIGNAL tempTho : STD_LOGIC_VECTOR (3 downto 0) := "1111";

begin

  Reader : PS2Reader port map(clk => clk, psclk => psclk, psdin => psdin, psdout => tempVal, psdone => sigDone);
  SegDriv : Segmentdriver port map(clk => clk, unitsin => tempUni, tensin => tempTen, hundredsin => tempHun, thousandsin => tempTho, segmentSel => segmentSel, segmentOut => segmentOut);
  SFM : StateMachine port map(clk => clk, psdone => sigDone, dataIn => tempVal, unitOut => tempUni, tenOut => tempTen, hundOut => tempHun, ThouOut => tempTho);

  psdout <= tempVal;
  psdone <= sigDone;

end Behavioral;
