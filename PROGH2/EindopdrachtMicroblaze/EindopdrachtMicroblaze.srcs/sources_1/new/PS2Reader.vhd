----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/17/2019 03:37:31 PM
-- Design Name: 
-- Module Name: PS2Reader - Behavioral
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

entity PS2Reader is
Port (
  clk : in STD_LOGIC;
  psclk : in STD_LOGIC;
  psdin : in STD_LOGIC;
  psdone : out STD_LOGIC;
  psdout : out STD_LOGIC_VECTOR (7 downto 0)
   );
end PS2Reader;

architecture Behavioral of PS2Reader is
    signal clkbuf : std_logic_vector(2 downto 0);
    signal dbuf : std_logic_vector(1 downto 0);
    signal edgePSClk : std_logic_vector(1 downto 0);
    signal shift_reg : STD_LOGIC_VECTOR(10 downto 0) := (others => '0');
    signal dcount : INTEGER RANGE -12 TO 12;
begin

process (clk)
    
    begin
        if(rising_edge(clk)) then
            clkbuf <= psclk & clkbuf(2 downto 1);
            dbuf <= psdin & dbuf(1); 
        end if;
    end process;

 process (clk)
  begin
    if (falling_edge(clk)) then
        if (clkbuf(1 downto 0) = "01") then
            shift_reg <= dbuf(0) & shift_reg(10 downto 1);
            dcount <= dcount + 1;

            if (dcount < 10) then
                psdone <= '0';
                psdout <= (others => '0');
            else
                psdone <= '1';
                dcount <= 0;
                psdout <= shift_reg (9 downto 2);
            end if;
            else
            
        end if;
    end if;
  end process;

end Behavioral;
