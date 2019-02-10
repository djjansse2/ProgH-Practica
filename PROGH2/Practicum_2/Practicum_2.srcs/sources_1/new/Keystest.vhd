----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 02/09/2019 02:24:36 PM
-- Design Name:
-- Module Name: Keystest - Behavioral
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

entity Keystest is
  --  Port ( );
end Keystest;

architecture Behavioral of Keystest is
  signal clk, tclkps, tpsbit: std_logic := '1';

  signal tpsdint : std_logic_vector(10 downto 0) := "10000000000";
  signal tpschar : std_logic_vector(7 downto 0) := "00000000";

  signal tpsdone : std_logic;

  begin

    ps2t: entity WORK.PS2Reader port map
    (
    clk => clk,
    psclk => tclkps,
    psdin => tpsbit,
    psdout => tpschar,
    psdone => tpsdone

    );

    clock_process :process
    begin
      clk <= '0';
      wait for 1 ns;
      clk <= '1';
      wait for 1 ns;
    end process;

    stim_proc: process
    begin
      tpsdint(8 downto 1) <= std_logic_vector(unsigned(tpsdint(8 downto 1)) + 1);
      for i in 0 to 10 loop
        tpsbit <= tpsdint(i);
        tclkps <= '0';
        wait for 40 ns;
        tclkps <= '1';
        wait for 40 ns;
      end loop;
      wait for 20 ns;
    end process;



  end Behavioral;
