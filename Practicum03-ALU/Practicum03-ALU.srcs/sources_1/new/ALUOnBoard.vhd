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
          OpButtons   : in STD_LOGIC_VECTOR (3 downto 0);
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
    Port (  binvec      : in  STD_LOGIC_VECTOR(7 downto 0);
            unitsvec    : out STD_LOGIC_VECTOR(3 downto 0);
            tensvec     : out STD_LOGIC_VECTOR(3 downto 0);
            hundredsvec : out  STD_LOGIC_VECTOR (3 downto 0));
  end component;

  component Segmentdriver is
    Port (  clk         : in STD_LOGIC;
            unitsin     : in STD_LOGIC_VECTOR(3 downto 0);
            tensin      : in STD_LOGIC_VECTOR(3 downto 0);
            hundredsin  : in STD_LOGIC_VECTOR(3 downto 0);
            segmentSel  : out STD_LOGIC_VECTOR(3 downto 0);
            segmentOut  : out STD_LOGIC_VECTOR(6 downto 0));
  end component;

  signal OpSig : STD_LOGIC_VECTOR (3 downto 0 );
  signal Result : STD_LOGIC_VECTOR (7 downto 0);
  signal CoutSig : STD_LOGIC;
  signal UinSig, TinSig, HinSig : STD_LOGIC_VECTOR(3 downto 0);

begin

  process(OpButtons)

  begin

    if (rising_edge(OpButtons(0))) then
      OpSig(0) <= not OpSig(0);
    end if;
    if (rising_edge(OpButtons(1))) then
      OpSig(1) <= not OpSig(1);
    end if;
    if (rising_edge(OpButtons(2))) then
      OpSig(2) <= not OpSig(2);
    end if;
    if (rising_edge(OpButtons(3))) then
      OpSig(3) <= not OpSig(3);
    end if;

  end process;

  ALUComp   : ALU port map ( A => Ain, B => Bin, Op => OpSig, Res => Result, Cout => CoutSig, Equal => EqualInd );
  BTBComp   : BinToBCD port map ( binvec => Result, unitsvec => UinSig, tensvec => TinSig, hundredsvec => HinSig );
  SDrvComp  : Segmentdriver port map ( clk => clk, unitsin => UinSig, tensin => TinSig, hundredsin => HinSig, segmentSel => segmentSel, segmentOut => segmentOut );
  OpInd <= OpSig;

end Behavioral;
