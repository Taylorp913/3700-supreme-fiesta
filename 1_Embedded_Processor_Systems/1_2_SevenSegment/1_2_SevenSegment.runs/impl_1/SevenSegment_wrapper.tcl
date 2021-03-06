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
  set_property webtalk.parent_dir C:/ECE_3700/Vivado/Lab2/1_2_SevenSegment/1_2_SevenSegment.cache/wt [current_project]
  set_property parent.project_path C:/ECE_3700/Vivado/Lab2/1_2_SevenSegment/1_2_SevenSegment.xpr [current_project]
  set_property ip_repo_paths {
  c:/ECE_3700/Vivado/Lab2/1_2_SevenSegment/1_2_SevenSegment.cache/ip
  C:/ECE_3700/Vivado/IP_REPO
} [current_project]
  set_property ip_output_repo c:/ECE_3700/Vivado/Lab2/1_2_SevenSegment/1_2_SevenSegment.cache/ip [current_project]
  add_files -quiet C:/ECE_3700/Vivado/Lab2/1_2_SevenSegment/1_2_SevenSegment.runs/synth_1/SevenSegment_wrapper.dcp
  read_xdc -prop_thru_buffers -ref SevenSegment_clk_wiz_0_1 -cells inst c:/ECE_3700/Vivado/Lab2/1_2_SevenSegment/1_2_SevenSegment.srcs/sources_1/bd/SevenSegment/ip/SevenSegment_clk_wiz_0_1/SevenSegment_clk_wiz_0_1_board.xdc
  set_property processing_order EARLY [get_files c:/ECE_3700/Vivado/Lab2/1_2_SevenSegment/1_2_SevenSegment.srcs/sources_1/bd/SevenSegment/ip/SevenSegment_clk_wiz_0_1/SevenSegment_clk_wiz_0_1_board.xdc]
  read_xdc -ref SevenSegment_clk_wiz_0_1 -cells inst c:/ECE_3700/Vivado/Lab2/1_2_SevenSegment/1_2_SevenSegment.srcs/sources_1/bd/SevenSegment/ip/SevenSegment_clk_wiz_0_1/SevenSegment_clk_wiz_0_1.xdc
  set_property processing_order EARLY [get_files c:/ECE_3700/Vivado/Lab2/1_2_SevenSegment/1_2_SevenSegment.srcs/sources_1/bd/SevenSegment/ip/SevenSegment_clk_wiz_0_1/SevenSegment_clk_wiz_0_1.xdc]
  read_xdc C:/ECE_3700/Vivado/Basys3_Master-1.xdc
  link_design -top SevenSegment_wrapper -part xc7a35tcpg236-1
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
  opt_design 
  write_checkpoint -force SevenSegment_wrapper_opt.dcp
  report_drc -file SevenSegment_wrapper_drc_opted.rpt
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
  catch {write_hwdef -file SevenSegment_wrapper.hwdef}
  place_design 
  write_checkpoint -force SevenSegment_wrapper_placed.dcp
  report_io -file SevenSegment_wrapper_io_placed.rpt
  report_utilization -file SevenSegment_wrapper_utilization_placed.rpt -pb SevenSegment_wrapper_utilization_placed.pb
  report_control_sets -verbose -file SevenSegment_wrapper_control_sets_placed.rpt
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
  route_design 
  write_checkpoint -force SevenSegment_wrapper_routed.dcp
  report_drc -file SevenSegment_wrapper_drc_routed.rpt -pb SevenSegment_wrapper_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file SevenSegment_wrapper_timing_summary_routed.rpt -rpx SevenSegment_wrapper_timing_summary_routed.rpx
  report_power -file SevenSegment_wrapper_power_routed.rpt -pb SevenSegment_wrapper_power_summary_routed.pb
  report_route_status -file SevenSegment_wrapper_route_status.rpt -pb SevenSegment_wrapper_route_status.pb
  report_clock_utilization -file SevenSegment_wrapper_clock_utilization_routed.rpt
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
  catch { write_mem_info -force SevenSegment_wrapper.mmi }
  write_bitstream -force SevenSegment_wrapper.bit 
  catch { write_sysdef -hwdef SevenSegment_wrapper.hwdef -bitfile SevenSegment_wrapper.bit -meminfo SevenSegment_wrapper.mmi -file SevenSegment_wrapper.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

