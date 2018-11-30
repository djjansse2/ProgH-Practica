----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 11/21/2018 09:23:25 PM
-- Design Name:
-- Module Name: Segmentdriver - Behavioral
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

use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Segmentdriver is
  Port (
  clk     : in STD_LOGIC;
  unitsin : in STD_LOGIC_VECTOR(3 downto 0);
  tensin : in STD_LOGIC_VECTOR(3 downto 0);
  hundredsin : in STD_LOGIC_VECTOR(3 downto 0);
  thousandsin : in STD_LOGIC_VECTOR(3 downto 0);
  segmentSel : out STD_LOGIC_VECTOR(3 downto 0);
  segmentOut : out STD_LOGIC_VECTOR(6 downto 0)
  );

end Segmentdriver;

architecture Behavioral of Segmentdriver is

  begin

    process(clk)
    variable selcnt            : INTEGER range 0 to 4 := 0;
    variable divCnt        : INTEGER := 0;
    variable tempBCD        : std_logic_vector(3 downto 0) := "0000";
    variable tempSegm       : std_logic_vector(6 downto 0) := "0000000";

    begin
      if (rising_edge(clk)) then
        divCnt := divCnt + 1;
        if (divCnt >= 16000) then
          divCnt := 0;

          case selcnt is
            when 0 => tempBCD := unitsin;
            when 1 => tempBCD := tensin;
            when 2 => tempBCD := hundredsin;
            when 3 => tempBCD := thousandsin;
            when others => tempBCD := not("0101");
          end case;

          case tempBCD is
            when "0000" => tempSegm := not("1111110"); --0
            when "0001" => tempSegm := not("0110000"); --1
            when "0010" => tempSegm := not("1101101"); --2
            when "0011" => tempSegm := not("1111001"); --3
            when "0100" => tempSegm := not("0110011"); --4
            when "0101" => tempSegm := not("1011011"); --5
            when "0110" => tempSegm := not("1011111"); --6
            when "0111" => tempSegm := not("1110000"); --7
            when "1000" => tempSegm := not("1111111"); --8
            when "1001" => tempSegm := not("1111011"); --9
            when "1111" => tempSegm := not("0000001");--MINUS
            when others => tempSegm := not("0101010"); --?
          end case;

          segmentOut <= tempSegm;
          case selcnt is
            when 0 => segmentSel <= "1110";
            when 1 => segmentSel <= "1101";
            when 2 => segmentSel <= "1011";
            when 3 => segmentSel <= "0111";
            when others => segmentSel <= "1111";
          end case;
          selcnt  := selcnt  + 1;
          if (selcnt > 3) then
            selcnt  := 0;
          end if;

        end if;
      end if;
    end process;


  end Behavioral;
