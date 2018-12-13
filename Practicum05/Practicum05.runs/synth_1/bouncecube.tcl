# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
set_param synth.incrementalSynthesisCache C:/Users/Kayne/AppData/Roaming/Xilinx/Vivado/.Xil/Vivado-18160-LAPTOP-HRAQ4RRP/incrSyn
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/Documents/ProgH-Practica/Practicum05/Practicum05.cache/wt [current_project]
set_property parent.project_path D:/Documents/ProgH-Practica/Practicum05/Practicum05.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo d:/Documents/ProgH-Practica/Practicum05/Practicum05.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  D:/Documents/ProgH-Practica/Practicum05/Practicum05.srcs/sources_1/new/squarecube.vhd
  D:/Documents/ProgH-Practica/Practicum05/Practicum05.srcs/sources_1/new/vga.vhd
  D:/Documents/ProgH-Practica/Practicum05/Practicum05.srcs/sources_1/new/bouncecube.vhd
}
read_ip -quiet D:/Documents/ProgH-Practica/Practicum05/Practicum05.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci
set_property used_in_implementation false [get_files -all d:/Documents/ProgH-Practica/Practicum05/Practicum05.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ProgH-Practica/Practicum05/Practicum05.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ProgH-Practica/Practicum05/Practicum05.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/Documents/ProgH-Practica/Practicum05/Practicum05.srcs/constrs_1/new/constraints.xdc
set_property used_in_implementation false [get_files D:/Documents/ProgH-Practica/Practicum05/Practicum05.srcs/constrs_1/new/constraints.xdc]


synth_design -top bouncecube -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef bouncecube.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file bouncecube_utilization_synth.rpt -pb bouncecube_utilization_synth.pb"
