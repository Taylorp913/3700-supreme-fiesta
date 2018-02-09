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

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  open_checkpoint ublaze_wrapper_routed.dcp
  set_property webtalk.parent_dir /home/tayspen72/Documents/Vivado/Lab1/1_2_axi_logic_interface/1_2_ublaze_system.cache/wt [current_project]
  add_files /home/tayspen72/Documents/Vivado/Lab1/1_2_axi_logic_interface/1_2_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_microblaze_0_0/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF ublaze [get_files -all /home/tayspen72/Documents/Vivado/Lab1/1_2_axi_logic_interface/1_2_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_microblaze_0_0/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS microblaze_0 [get_files -all /home/tayspen72/Documents/Vivado/Lab1/1_2_axi_logic_interface/1_2_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_microblaze_0_0/data/mb_bootloop_le.elf]
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

