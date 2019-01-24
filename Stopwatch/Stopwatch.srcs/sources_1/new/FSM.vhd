----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 12/04/2018 09:01:18 PM
-- Design Name:
-- Module Name: Test - Behavioral
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

entity FSM is
  Port ( clk : in STD_LOGIC;
  sysReset : in STD_LOGIC;
  buttons : in STD_LOGIC_VECTOR (1 downto 0);
  watchRunning : out STD_LOGIC;
  watchReset : out STD_LOGIC );
end FSM;

architecture Behavioral of FSM is
  TYPE Watch_state IS (Running, Shold, Stopped, Rhold);
  SIGNAL State : Watch_state := Stopped;
  SIGNAL NextState : Watch_state := Stopped;
  begin

    process(clk)
    begin
      if rising_edge(clk) then
        State <= NextState;
      end if;
    end process;

    process(clk,sysReset)
    begin
      watchReset <= '0';

      --Reset
      If sysReset = '1' THEN
        NextState <= Stopped;
      END IF;


      --Synchronous
      If rising_edge(clk) THEN

        --FSM
        CASE State IS

          --Running
          WHEN Running =>

            watchRunning <= '1';
            IF buttons(0) = '1' THEN
              NextState <= Shold;
            END IF;

            --Start Hold
            WHEN Shold =>
            IF buttons(0) = '0' THEN
              NextState <= Stopped;
            END IF;

            --Stopped
            WHEN Stopped =>
              watchRunning <= '0';
              IF buttons(0) = '1' THEN
                NextState <= Rhold;
              END IF;
              If buttons(1) = '1' THEN
                NextState <= Stopped;
                watchReset <= '1';
              END IF;

          --Reset Hold
          WHEN Rhold =>
            IF buttons(0) = '0' THEN
              NextState <= Running;
            END IF;
        END CASE;
      END IF;
    end process;

  end Behavioral;
