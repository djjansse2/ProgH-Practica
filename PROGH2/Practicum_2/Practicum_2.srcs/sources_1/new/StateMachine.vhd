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

  TYPE State IS (Idle, set);
  SIGNAL curState : State := Idle;
  SIGNAL nextState : State := Idle;

  SIGNAL tempVal : STD_LOGIC_VECTOR(7 downto 0);

  SIGNAL holdVal : STD_LOGIC_VECTOR(7 downto 0);

  SIGNAL holdUni : STD_LOGIC_VECTOR(3 downto 0) := "1111";

  SIGNAL tempUni : STD_LOGIC_VECTOR(3 downto 0) := "1111";
  SIGNAL tempTen : STD_LOGIC_VECTOR(3 downto 0) := "1111";
  SIGNAL tempHun : STD_LOGIC_VECTOR(3 downto 0) := "1111";
  SIGNAL tempTho : STD_LOGIC_VECTOR(3 downto 0) := "1111";
  signal edgeDone : std_logic_vector(1 downto 0);
  Signal mongol : std_logic;

  begin
    process(clk)
    begin
      if rising_edge(clk) then
        curState <= nextState;
      end if;
    end process;

    process(clk, psdone)

    variable comp_vect : integer;


    begin
      tempVal <= dataIn;

      if rising_edge(clk) then
        edgeDone <= edgeDone(0) & psdone;


        case curState is


          when Idle =>

          if(tempVal /= "11110000") then
            if edgeDone = "01" then
            edgeDone <= "00";
              case tempVal is
                when "01000101" =>holdUni <= "0000";
                when "00010110" =>holdUni <= "0001";
                when "00011110" =>holdUni <= "0010";
                when "00100110" =>holdUni <= "0011";
                when "00100101" =>holdUni <= "0100";
                when "00101110" =>holdUni <= "0101";
                when "00110110" =>holdUni <= "0110";
                when "00111101" =>holdUni <= "0111";
                when "00111110" =>holdUni <= "1000";
                when "01000110" =>holdUni <= "1001";
                when others =>    holdUni <= "1111";
              end case;

              if (holdUni /= "1111") then
                tempUni <= holdUni;
                if mongol = '1' then
                  tempTho <= tempHun;
                  tempHun <= tempTen;
                  tempTen <= tempUni;
                end if;
              end if;
              mongol <= not mongol;


            else

              tempTho <= tempTho;
              tempHun <= tempHun;
              tempTen <= tempTen;
              tempUni <= tempUni;


            end if;
            nextState <= curState;
          else
            nextState <= set;
          end if;

          when set =>
          if(edgeDone = "01") then
            nextState <= idle;
          else
            nextState <= curState;
          end if;

         
        end case;
      end if;

      unitOut <= tempUni;
      tenOut <= tempTen;
      hundOut <= tempHun;
      thouOut <= tempTho;
    end process;
  end Behavioral;
