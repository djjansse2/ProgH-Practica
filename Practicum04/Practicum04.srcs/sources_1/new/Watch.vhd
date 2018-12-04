----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04.12.2018 20:32:23
-- Design Name:
-- Module Name: Watch - Behavioral
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

entity Watch is
    Port ( clk : in STD_LOGIC;
           sysReset : in STD_LOGIC;
           watchRunning : in STD_LOGIC;
           watchReset : in STD_LOGIC;
           secUnits : out STD_LOGIC_VECTOR (3 downto 0);
           secTens : out STD_LOGIC_VECTOR (3 downto 0);
           minUnits : out STD_LOGIC_VECTOR (3 downto 0);
           minTens : out STD_LOGIC_VECTOR (3 downto 0));
end Watch;

architecture Behavioral of Watch is

begin

process( clk, watchRunning )

  variable clkCnt : INTEGER := 0;
  variable secCnt : INTEGER := 0;
  variable minCnt : INTEGER := 0;

begin

  if( watchRunning = '1' ) then

    if( rising_edge(clk) ) then

      clkCnt := clkCnt + 1;

      if( clkCnt >= 100000000 ) then
        secCnt := secCnt + 1;

        if( secCnt > 60 ) then
          minCnt := minCnt + 1;
          secCnt := 0;

          if( minCnt > 60 ) then
            minCnt := 0;
            secCnt := 0;
          end if;
        end if;

        secUnits <= STD_LOGIC_VECTOR(to_unsigned(secCnt mod 10, 4));
        secTens <= STD_LOGIC_VECTOR(to_unsigned(secCnt / 10, 4));
        minUnits <= STD_LOGIC_VECTOR(to_unsigned(minCnt mod 10, 4));
        minTens <= STD_LOGIC_VECTOR(to_unsigned(minCnt / 10, 4));

      end if;
    end if;
  end if;

end process;

end Behavioral;
