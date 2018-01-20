proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7a35tcpg236-1
  set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir C:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.cache/wt [current_project]
  set_property parent.project_path C:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.xpr [current_project]
  set_property ip_repo_paths c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.cache/ip [current_project]
  set_property ip_output_repo c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.cache/ip [current_project]
  add_files -quiet C:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.runs/synth_1/ublaze_wrapper.dcp
  add_files C:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ublaze.bmm
  set_property SCOPED_TO_REF ublaze [get_files -all C:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ublaze.bmm]
  set_property SCOPED_TO_CELLS {} [get_files -all C:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ublaze.bmm]
  add_files c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_microblaze_0_0/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF ublaze [get_files -all c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_microblaze_0_0/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS microblaze_0 [get_files -all c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_microblaze_0_0/data/mb_bootloop_le.elf]
  read_xdc -ref ublaze_microblaze_0_0 -cells U0 c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_microblaze_0_0/ublaze_microblaze_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_microblaze_0_0/ublaze_microblaze_0_0.xdc]
  read_xdc -ref ublaze_dlmb_v10_0 -cells U0 c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_dlmb_v10_0/ublaze_dlmb_v10_0.xdc
  set_property processing_order EARLY [get_files c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_dlmb_v10_0/ublaze_dlmb_v10_0.xdc]
  read_xdc -ref ublaze_ilmb_v10_0 -cells U0 c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_ilmb_v10_0/ublaze_ilmb_v10_0.xdc
  set_property processing_order EARLY [get_files c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_ilmb_v10_0/ublaze_ilmb_v10_0.xdc]
  read_xdc -ref ublaze_mdm_1_0 -cells U0 c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_mdm_1_0/ublaze_mdm_1_0.xdc
  set_property processing_order EARLY [get_files c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_mdm_1_0/ublaze_mdm_1_0.xdc]
  read_xdc -prop_thru_buffers -ref ublaze_clk_wiz_1_0 -cells inst c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_clk_wiz_1_0/ublaze_clk_wiz_1_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_clk_wiz_1_0/ublaze_clk_wiz_1_0_board.xdc]
  read_xdc -ref ublaze_clk_wiz_1_0 -cells inst c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_clk_wiz_1_0/ublaze_clk_wiz_1_0.xdc
  set_property processing_order EARLY [get_files c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_clk_wiz_1_0/ublaze_clk_wiz_1_0.xdc]
  read_xdc -prop_thru_buffers -ref ublaze_rst_clk_wiz_1_100M_0 c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_rst_clk_wiz_1_100M_0/ublaze_rst_clk_wiz_1_100M_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_rst_clk_wiz_1_100M_0/ublaze_rst_clk_wiz_1_100M_0_board.xdc]
  read_xdc -ref ublaze_rst_clk_wiz_1_100M_0 c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_rst_clk_wiz_1_100M_0/ublaze_rst_clk_wiz_1_100M_0.xdc
  set_property processing_order EARLY [get_files c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_rst_clk_wiz_1_100M_0/ublaze_rst_clk_wiz_1_100M_0.xdc]
  read_xdc -prop_thru_buffers -ref ublaze_axi_uartlite_0_0 -cells U0 c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_axi_uartlite_0_0/ublaze_axi_uartlite_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_axi_uartlite_0_0/ublaze_axi_uartlite_0_0_board.xdc]
  read_xdc -ref ublaze_axi_uartlite_0_0 -cells U0 c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_axi_uartlite_0_0/ublaze_axi_uartlite_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_axi_uartlite_0_0/ublaze_axi_uartlite_0_0.xdc]
  read_xdc -ref ublaze_axi_timer_0_0 c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_axi_timer_0_0/ublaze_axi_timer_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_axi_timer_0_0/ublaze_axi_timer_0_0.xdc]
  read_xdc C:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/constrs_1/imports/ECE_3700/Basys3_Master-1.xdc
  link_design -top ublaze_wrapper -part xc7a35tcpg236-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design -directive RuntimeOptimized
  write_checkpoint -force ublaze_wrapper_opt.dcp
  report_drc -file ublaze_wrapper_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file ublaze_wrapper.hwdef}
  place_design -directive RuntimeOptimized
  write_checkpoint -force ublaze_wrapper_placed.dcp
  report_io -file ublaze_wrapper_io_placed.rpt
  report_utilization -file ublaze_wrapper_utilization_placed.rpt -pb ublaze_wrapper_utilization_placed.pb
  report_control_sets -verbose -file ublaze_wrapper_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design -directive RuntimeOptimized
  write_checkpoint -force ublaze_wrapper_routed.dcp
  report_drc -file ublaze_wrapper_drc_routed.rpt -pb ublaze_wrapper_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file ublaze_wrapper_timing_summary_routed.rpt -rpx ublaze_wrapper_timing_summary_routed.rpx
  report_power -file ublaze_wrapper_power_routed.rpt -pb ublaze_wrapper_power_summary_routed.pb
  report_route_status -file ublaze_wrapper_route_status.rpt -pb ublaze_wrapper_route_status.pb
  report_clock_utilization -file ublaze_wrapper_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force ublaze_wrapper.mmi }
  catch { write_bmm -force ublaze_wrapper_bd.bmm }
  write_bitstream -force ublaze_wrapper.bit 
  catch { write_sysdef -hwdef ublaze_wrapper.hwdef -bitfile ublaze_wrapper.bit -meminfo ublaze_wrapper.mmi -file ublaze_wrapper.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

