set_property SRC_FILE_INFO {cfile:c:/Users/Daniel/Documents/ProgH-Practica/PROGH2/Eindopdracht/EindOpdracht/EindOpdracht.srcs/sources_1/ip/Pixel_Clock/Pixel_Clock.xdc rfile:../../../EindOpdracht.srcs/sources_1/ip/Pixel_Clock/Pixel_Clock.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
