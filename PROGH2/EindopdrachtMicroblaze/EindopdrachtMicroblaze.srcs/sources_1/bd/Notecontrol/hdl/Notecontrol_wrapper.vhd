--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Mon Mar 18 09:19:16 2019
--Host        : LAPTOP-HRAQ4RRP running 64-bit major release  (build 9200)
--Command     : generate_target Notecontrol_wrapper.bd
--Design      : Notecontrol_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Notecontrol_wrapper is
  port (
    GPIOi : in STD_LOGIC_VECTOR ( 8 downto 0 );
    GPIOo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_rtl : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
end Notecontrol_wrapper;

architecture STRUCTURE of Notecontrol_wrapper is
  component Notecontrol is
  port (
    sys_clock : in STD_LOGIC;
    reset_rtl : in STD_LOGIC;
    GPIOi : in STD_LOGIC_VECTOR ( 8 downto 0 );
    GPIOo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
  end component Notecontrol;
begin
Notecontrol_i: component Notecontrol
     port map (
      GPIOi(8 downto 0) => GPIOi(8 downto 0),
      GPIOo(7 downto 0) => GPIOo(7 downto 0),
      reset_rtl => reset_rtl,
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
end STRUCTURE;
