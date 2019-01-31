----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 12/04/2018 09:09:22 PM
-- Design Name:
-- Module Name: Stopwatch - Behavioral
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
use IEEE.Numeric_Std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Stopwatch is
  Port (
  clk : in STD_LOGIC;
  sysReset : in STD_LOGIC;
  watchRunning : in STD_LOGIC;
  watchReset : in STD_LOGIC;
  secunit : out STD_LOGIC_VECTOR(3 downto 0);
  sectens : out STD_LOGIC_VECTOR(3 downto 0);
  minunit : out STD_LOGIC_VECTOR(3 downto 0);
  mintens : out STD_LOGIC_VECTOR(3 downto 0));
end Stopwatch;

architecture Behavioral of Stopwatch is

  begin

    process(clk)
    variable prescaler : integer range 0 to 100000000 ;
    variable secu : UNSIGNED(3 downto 0);
    variable sect : UNSIGNED(3 downto 0);
    variable minu : UNSIGNED(3 downto 0);
    variable mint : UNSIGNED(3 downto 0);
   
    begin
    
        if sysReset = '1' then
        prescaler := 0;
              secu(3 downto 0) := (others => '0');
              sect(3 downto 0) := (others => '0');
              minu(3 downto 0) := (others => '0');
              mint(3 downto 0) := (others => '0');
            end if;
            
      if rising_edge(clk) then

        --Running
        if watchRunning = '1' then
          prescaler := prescaler + 1;
        end if;

        --Reset
        if watchReset = '1' then
        prescaler := 0;
          secu(3 downto 0) := (others => '0');
          sect(3 downto 0) := (others => '0');
          minu(3 downto 0) := (others => '0');
          mint(3 downto 0) := (others => '0');
        end if;

        --Timer
        if prescaler > 99999999 then
          prescaler := 0;
          
          secu(3 downto 0) := secu +1;
          if secu > 9 then
            secu(3 downto 0) := (others => '0');
            sect(3 downto 0) := sect + 1;
          end if;

          if sect > 5 then
            sect(3 downto 0) := (others => '0');
            minu(3 downto 0) := minu + 1;
          end if;

          if minu > 9 then
            minu(3 downto 0) := (others => '0');
            mint(3 downto 0) := mint + 1;
          end if;

          if mint > 6 then
            mint(3 downto 0) := (others => '0');
          end if;
          
        end if;
        secunit <= std_logic_vector(secu);
        sectens <= std_logic_vector(sect);
        minunit <= std_logic_vector(minu);
        mintens <= std_logic_vector(mint);
      end if;
    end process;

  end Behavioral;
