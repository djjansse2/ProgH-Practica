set_property SRC_FILE_INFO {cfile:c:/Progh/VGA_HD_wekend_smly/VGA_HD.srcs/sources_1/ip/Clk_148/Clk_148.xdc rfile:../VGA_HD.srcs/sources_1/ip/Clk_148/Clk_148.xdc id:1 order:EARLY scoped_inst:Clock/inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk100]] 0.1
