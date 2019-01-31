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
  signal State : Watch_state := Stopped;
  signal NextState : Watch_state := Stopped;
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
      if sysReset = '1' THEN
        NextState <= Stopped;
      end if;


      --Synchronous
      if rising_edge(clk) THEN

        --FSM
        case State IS

          --Running
          when Running =>

            watchRunning <= '1';
            if buttons(0) = '1' THEN
              NextState <= Shold;
            end if;

            --Start Hold
            when Shold =>
            if buttons(0) = '0' THEN
              NextState <= Stopped;
            end if;

            --Stopped
            when Stopped =>
              watchRunning <= '0';
              if buttons(0) = '1' THEN
                NextState <= Rhold;
              end if;
              if buttons(1) = '1' THEN
                NextState <= Stopped;
                watchReset <= '1';
              end if;

          --Reset Hold
          when Rhold =>
            if buttons(0) = '0' THEN
              NextState <= Running;
            end if;
        end case;
      end if;
    end process;

  end Behavioral;
