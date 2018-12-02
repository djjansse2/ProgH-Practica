----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 29.11.2018 23:08:10
-- Design Name:
-- Module Name: ALUOnBoard - Behavioral
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

entity ALUOnBoard is
  Port (  Ain         : in STD_LOGIC_VECTOR (7 downto 0);
  Bin         : in STD_LOGIC_VECTOR (7 downto 0);
  OpButtons   : in STD_LOGIC_VECTOR (4 downto 0);
  clk         : in STD_LOGIC;
  OpInd       : out STD_LOGIC_VECTOR (3 downto 0);
  segmentSel  : out STD_LOGIC_VECTOR(3 downto 0);
  segmentOut  : out STD_LOGIC_VECTOR(6 downto 0);
  EqualInd    : out STD_LOGIC);
end ALUOnBoard;

architecture Behavioral of ALUOnBoard is

  component ALU is
    port (  A, B    : in STD_LOGIC_VECTOR (7 downto 0);
    Op      : in STD_LOGIC_VECTOR (3 downto 0);
    Res     : out STD_LOGIC_VECTOR (7 downto 0);
    Cout    : out STD_LOGIC;
    Equal   : out STD_LOGIC);
  end component;

  component BinToBCD is
    Port (  signedEnable : in STD_LOGIC;
    binvec : in  STD_LOGIC_VECTOR(7 downto 0);
    unitsvec : out STD_LOGIC_VECTOR(3 downto 0);
    tensvec : out STD_LOGIC_VECTOR(3 downto 0);
    hundredsvec : out  STD_LOGIC_VECTOR (3 downto 0);
    thousandsvec : out  STD_LOGIC_VECTOR (3 downto 0));
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

  signal OpSig : STD_LOGIC_VECTOR (3 downto 0 );
  signal Result : STD_LOGIC_VECTOR (7 downto 0);
  signal CoutSig : STD_LOGIC;
  signal UinSig, TinSig, HinSig, ThinSig : STD_LOGIC_VECTOR(3 downto 0);

  begin

    process(OpButtons)

    begin

        OpSig(0) <= OpButtons(0);
        OpSig(1) <= OpButtons(1);
        OpSig(2) <= OpButtons(2);
        OpSig(3) <= OpButtons(3);

    end process;

    ALUComp   : ALU port map ( A => Ain, B => Bin, Op => OpSig, Res => Result, Cout => CoutSig, Equal => EqualInd );
    BTBComp   : BinToBCD port map ( signedEnable => CoutSig, binvec => Result, unitsvec => UinSig, tensvec => TinSig, hundredsvec => HinSig, thousandsvec => ThinSig );
    SDrvComp  : Segmentdriver port map ( clk => clk, unitsin => UinSig, tensin => TinSig, hundredsin => HinSig, thousandsin => ThinSig, segmentSel => segmentSel, segmentOut => segmentOut );
    OpInd <= OpSig;

  end Behavioral;
