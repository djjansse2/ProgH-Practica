-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../VGA_HD.srcs/sources_1/ip/Clk_148/Clk_148_clk_wiz.v" \
  "../../../../VGA_HD.srcs/sources_1/ip/Clk_148/Clk_148.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

