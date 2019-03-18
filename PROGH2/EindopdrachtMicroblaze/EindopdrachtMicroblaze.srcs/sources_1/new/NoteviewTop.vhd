----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/17/2019 03:58:20 PM
-- Design Name: 
-- Module Name: NoteviewTop - Behavioral
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

entity NoteviewTop is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    
    psclk : in STD_LOGIC;    
    psdin : in STD_LOGIC;
    
    UartRX : in std_logic;
    UartTX : out std_logic;
    
    PS2outLed : out std_logic_vector (8 downto 0)
    );
end NoteviewTop;

architecture Behavioral of NoteviewTop is
signal GPIbuff : std_logic_vector(8 downto 0);
signal GPobuff : std_logic_vector(7 downto 0);
signal Statebuff : std_logic_vector(3 downto 0);
begin

PS2outLed <= GPIbuff;

PS2R : entity work.PS2reader(Behavioral)
port map (
    clk => clk,
    psclk => psclk,
    psdin => psdin,
    psdout => GPibuff(7 downto 0),
    psdone => GPibuff(8)
);

NCMC : entity work.Notecontrol_wrapper(STRUCTURE)
port map (
    GPIOi => GPIbuff,
    usb_UART_rxd => UartRX,
    usb_UART_txd => UartTX,
    reset_rtl => reset,
    sys_clock => clk
);

end Behavioral;
