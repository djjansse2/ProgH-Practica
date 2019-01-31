----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 20.01.2019 13:33:20
-- Design Name:
-- Module Name: SnakeController - Behavioral
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

entity SnakeController is
    Port (  clk : in std_logic;
            DisSel : out std_logic_vector(3 downto 0);
            SegSel : out std_logic_vector(7 downto 0));
end SnakeController;

architecture Behavioral of SnakeController is

signal Enable : STD_LOGIC;
Signal data : STD_LOGIC_VECTOR(11 downto 0);
Signal count : integer := 0;

Type RomType is array (19 downto 0)
    of std_logic_vector(11 downto 0);


Constant Rom : RomType :=
(
    "101111110111", "101111111011", "101111111101", "101111111110", "111111011110",
    "111111101110", "111111101101", "111111101011", "111111100111", "110111110111",
    "101111110111", "101111111011", "101111111101", "101111111110", "111110111110",
    "111101111110", "111101111101", "111101111011", "111101110111", "111011110111"
);

begin
    process (clk)
    
    variable clkCnt : integer := 0;
    
    begin
        if rising_edge(clk) then
            clkCnt := clkCnt + 1;
            if clkCnt = 25000000 then
                Enable <= '1';
                clkCnt := 0;
            else
                Enable <= '0';
            end if;
        end if;
    
        if rising_edge(clk) then
            if(Enable = '1') then
                if(count >= 19) then
                    count <= 0;
                else
                    count <= count + 1;
                end if;
                
                data <= Rom(count);
                
                DisSel(0) <= Data(0);
                DisSel(1) <= Data(1);
                DisSel(2) <= Data(2);
                DisSel(3) <= Data(3);
                
                SegSel(0) <= Data(4);
                SegSel(1) <= Data(5);
                SegSel(2) <= Data(6);
                SegSel(3) <= Data(7);
                SegSel(4) <= Data(8);
                SegSel(5) <= Data(9);
                SegSel(6) <= Data(10);
                SegSel(7) <= Data(11);
            end if;
        end if;
    end process;
end Behavioral;
