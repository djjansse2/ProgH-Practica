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
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/Daniel/Documents/ProgH-Practica/PROGH2/Eindopdracht/EindOpdracht/EindOpdracht.cache/wt [current_project]
set_property parent.project_path C:/Users/Daniel/Documents/ProgH-Practica/PROGH2/Eindopdracht/EindOpdracht/EindOpdracht.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
set_property ip_output_repo c:/Users/Daniel/Documents/ProgH-Practica/PROGH2/Eindopdracht/EindOpdracht/EindOpdracht.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files {{C:/Users/Daniel/Documents/ProgH-Practica/PROGH2/Eindopdracht/Bijlage Eindopdracht/notenbalk.coe}}
add_files {{C:/Users/Daniel/Documents/ProgH-Practica/PROGH2/Eindopdracht/Bijlage Eindopdracht/muzieknoot.coe}}
read_vhdl -library xil_defaultlib {
  C:/Users/Daniel/Documents/ProgH-Practica/PROGH2/Eindopdracht/EindOpdracht/EindOpdracht.srcs/sources_1/new/spriterenderer.vhd
  C:/Users/Daniel/Documents/ProgH-Practica/PROGH2/Eindopdracht/EindOpdracht/EindOpdracht.srcs/sources_1/new/vga.vhd
  C:/Users/Daniel/Documents/ProgH-Practica/PROGH2/Eindopdracht/EindOpdracht/EindOpdracht.srcs/sources_1/new/MainGame.vhd
}
read_ip -quiet C:/Users/Daniel/Documents/ProgH-Practica/PROGH2/Eindopdracht/EindOpdracht/EindOpdracht.srcs/sources_1/ip/Notenbalk/Notenbalk.xci
set_property used_in_implementation false [get_files -all c:/Users/Daniel/Documents/ProgH-Practica/PROGH2/Eindopdracht/EindOpdracht/EindOpdracht.srcs/sources_1/ip/Notenbalk/Notenbalk_ooc.xdc]

read_ip -quiet C:/Users/Daniel/Documents/ProgH-Practica/PROGH2/Eindopdracht/EindOpdracht/EindOpdracht.srcs/sources_1/ip/Muzieknoot/Muzieknoot.xci
set_property used_in_implementation false [get_files -all c:/Users/Daniel/Documents/ProgH-Practica/PROGH2/Eindopdracht/EindOpdracht/EindOpdracht.srcs/sources_1/ip/Muzieknoot/Muzieknoot_ooc.xdc]

read_ip -quiet C:/Users/Daniel/Documents/ProgH-Practica/PROGH2/Eindopdracht/EindOpdracht/EindOpdracht.srcs/sources_1/ip/Pixel_Clock/Pixel_Clock.xci
set_property used_in_implementation false [get_files -all c:/Users/Daniel/Documents/ProgH-Practica/PROGH2/Eindopdracht/EindOpdracht/EindOpdracht.srcs/sources_1/ip/Pixel_Clock/Pixel_Clock_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Daniel/Documents/ProgH-Practica/PROGH2/Eindopdracht/EindOpdracht/EindOpdracht.srcs/sources_1/ip/Pixel_Clock/Pixel_Clock.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Daniel/Documents/ProgH-Practica/PROGH2/Eindopdracht/EindOpdracht/EindOpdracht.srcs/sources_1/ip/Pixel_Clock/Pixel_Clock_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Daniel/Documents/ProgH-Practica/PROGH2/Eindopdracht/EindOpdracht/EindOpdracht.srcs/constrs_1/new/constraints.xdc
set_property used_in_implementation false [get_files C:/Users/Daniel/Documents/ProgH-Practica/PROGH2/Eindopdracht/EindOpdracht/EindOpdracht.srcs/constrs_1/new/constraints.xdc]


synth_design -top MainGame -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef MainGame.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file MainGame_utilization_synth.rpt -pb MainGame_utilization_synth.pb"
