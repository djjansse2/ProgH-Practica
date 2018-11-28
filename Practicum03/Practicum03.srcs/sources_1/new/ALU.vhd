----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 26.11.2018 18:40:32
-- Design Name:
-- Module Name: ALU - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    port (  A, B    : in STD_LOGIC_VECTOR (7 downto 0);
            Op      : in STD_LOGIC_VECTOR (3 downto 0);
            Res     : out STD_LOGIC_VECTOR (7 downto 0);
            Cout    : out STD_LOGIC;
            Equal   : out STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

begin

process(Op)

variable SignedA,SignedB,SignedRes : signed(8 downto 0);

begin
    if (A = B) then
        Equal = '1';
    else
        Equal = '0';
    end if;

    SignedA := resize(signed(A), 9);
    SignedB := resize(signed(B), 9);

    case Op is
    when "0000" =>
        SignedRes := SignedA + SignedB;
    when "0001" =>
        SignedRes := SignedA - SignedB;
    when "0010" =>
        SignedRes := SignedB - SignedA;
    when "0100" =>
        SignedRes := SignedA;
    when "0101" =>
        SignedRes := SignedB;
    when "0110" =>
        SignedRes := -SignedA;
    when "0111" =>
        SignedRes := -SignedB;
    when "1000" =>
        SignedRes := SignedA sll 1;
    when "1001" =>
        SignedRes := '0' & (SignedA(7 downto 0) srl 1);
    when "1010" =>
        SignedRes := SignedA rol 1;
    when "1011" =>
        SignedRes := '0' (SignedA(7 downto 0) ror 1);
    when "1110" =>
        SignedRes := "000000000";
    when "1111" =>
        SignedRes := "111111111";
    end case;

    Res <= STD_LOGIC_VECTOR(SignedRes(7 downto 0));
    Cout <= SignedRes(8);
end process;


end Behavioral;
