----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 10.02.2019 11:31:04
-- Design Name:
-- Module Name: StateMachine - Behavioral
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

entity StateMachine is
    Port ( clk : in STD_LOGIC;
           psdone : in STD_LOGIC;
           dataIn : in STD_LOGIC_VECTOR (7 downto 0);
           unitOut : out STD_LOGIC_VECTOR (3 downto 0);
           tenOut : out STD_LOGIC_VECTOR (3 downto 0);
           hundOut : out STD_LOGIC_VECTOR (3 downto 0);
           ThouOut : out STD_LOGIC_VECTOR (3 downto 0));
end StateMachine;

architecture Behavioral of StateMachine is

  TYPE State IS (Idle, Hold);
  SIGNAL curState : State := Idle;
  SIGNAL nextState : State := Idle;

  SIGNAL tempVal : STD_LOGIC_VECTOR(7 downto 0);
  SIGNAL tempUni : STD_LOGIC_VECTOR(3 downto 0) := "1111";
  SIGNAL tempTen : STD_LOGIC_VECTOR(3 downto 0) := "1111";
  SIGNAL tempHun : STD_LOGIC_VECTOR(3 downto 0) := "1111";
  SIGNAL tempTho : STD_LOGIC_VECTOR(3 downto 0) := "1111";

begin
  process(clk)
  begin
    if rising_edge(clk) then
      curState <= nextState;
    end if;
  end process;

  process(clk, psdone)
  begin
    tempVal <= dataIn;

    if rising_edge(clk) then
      case curState is
        when Idle =>
          if(psdone = '1') then
            nextState <= Hold;
          else
            nextState <= curState;
          end if;

          tempTho <= tempTho;
          tempHun <= tempHun;
          tempTen <= tempTen;
          tempUni <= tempUni;

        when Hold =>
          if (psdone = '1') then
            if(tempVal /= "11110000") then
              tempTho <= tempHun;
              tempHun <= tempTen;
              tempTen <= tempUni;

              case tempVal is
                when "01000101" => tempUni <= "0000";
                when "00010110" => tempUni <= "0001";
                when "00011110" => tempUni <= "0010";
                when "00100110" => tempUni <= "0011";
                when "00100101" => tempUni <= "0100";
                when "00101110" => tempUni <= "0101";
                when "00110110" => tempUni <= "0110";
                when "00111101" => tempUni <= "0111";
                when "00111110" => tempUni <= "1000";
                when "01000110" => tempUni <= "1001";
                when others => tempUni <= "1111";
              end case;

              nextState <= curState;
            else
              tempTho <= tempTho;
              tempHun <= tempHun;
              tempTen <= tempTen;
              tempUni <= tempUni;
              nextState <= Idle;
            end if;
          end if;
          nextState <= curState;
      end case;
    end if;

    unitOut <= tempUni;
    tenOut <= tempTen;
    hundOut <= tempHun;
    thouOut <= tempTho;
  end process;
end Behavioral;
