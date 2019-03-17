----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.03.2019 12:08:07
-- Design Name: 
-- Module Name: TestNootSelect - Behavioral
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

entity TestNootSelect is
    Port ( nootBut : in STD_LOGIC_VECTOR (7 downto 0);
           nootOut : out STD_LOGIC_VECTOR (3 downto 0));
end TestNootSelect;

architecture Behavioral of TestNootSelect is

begin

process (nootBut)
begin
    case nootBut is
        when "00000001" => nootOut <= "0000";
        when "00000010" => nootOut <= "0001";
        when "00000100" => nootOut <= "0010";
        when "00001000" => nootOut <= "0011";
        when "00010000" => nootOut <= "0100";
        when "00100000" => nootOut <= "0101";
        when "01000000" => nootOut <= "0110";
        when "10000000" => nootOut <= "0111";
        when others => nootOut <= "1000";
    end case;
end process;
end Behavioral;
