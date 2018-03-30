
################################################################
# This is a generated script based on design: SevenSegment
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source SevenSegment_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7a35tcpg236-1
#    set_property BOARD_PART digilentinc.com:basys3:part0:1.1 [current_project]

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name SevenSegment

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set an [ create_bd_port -dir O -from 3 -to 0 an ]
  set btnC [ create_bd_port -dir I btnC ]
  set btnD [ create_bd_port -dir I btnD ]
  set btnL [ create_bd_port -dir I btnL ]
  set btnU [ create_bd_port -dir I btnU ]
  set dp [ create_bd_port -dir O dp ]
  set led [ create_bd_port -dir O -from 2 -to 0 led ]
  set seg [ create_bd_port -dir O -from 6 -to 0 seg ]
  set sw [ create_bd_port -dir I -from 15 -to 0 sw ]
  set sys_clock [ create_bd_port -dir I -type clk sys_clock ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {100000000} \
 ] $sys_clock

  # Create instance: SevenSegmentDriver_0, and set properties
  set SevenSegmentDriver_0 [ create_bd_cell -type ip -vlnv usu.edu:ECE3700:SevenSegmentDriver:1.0 SevenSegmentDriver_0 ]

  # Create instance: c_addsub_0, and set properties
  set c_addsub_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_addsub:12.0 c_addsub_0 ]
  set_property -dict [ list \
CONFIG.A_Type {Signed} \
CONFIG.A_Width {16} \
CONFIG.B_Type {Signed} \
CONFIG.B_Value {0000000000000000} \
CONFIG.B_Width {16} \
CONFIG.CE {false} \
CONFIG.Latency {1} \
CONFIG.Out_Width {16} \
CONFIG.SCLR {true} \
 ] $c_addsub_0

  # Create instance: c_counter_binary_0, and set properties
  set c_counter_binary_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 c_counter_binary_0 ]
  set_property -dict [ list \
CONFIG.Output_Width {1} \
 ] $c_counter_binary_0

  # Create instance: c_counter_binary_1, and set properties
  set c_counter_binary_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 c_counter_binary_1 ]
  set_property -dict [ list \
CONFIG.Output_Width {2} \
 ] $c_counter_binary_1

  # Create instance: c_shift_ram_0, and set properties
  set c_shift_ram_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 c_shift_ram_0 ]
  set_property -dict [ list \
CONFIG.AsyncInitVal {0} \
CONFIG.DefaultData {0} \
CONFIG.Depth {1} \
CONFIG.SyncInitVal {0} \
CONFIG.Width {1} \
 ] $c_shift_ram_0

  # Create instance: c_shift_ram_1, and set properties
  set c_shift_ram_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 c_shift_ram_1 ]
  set_property -dict [ list \
CONFIG.AsyncInitVal {0} \
CONFIG.DefaultData {0} \
CONFIG.Depth {1} \
CONFIG.SyncInitVal {0} \
CONFIG.Width {1} \
 ] $c_shift_ram_1

  # Create instance: c_shift_ram_2, and set properties
  set c_shift_ram_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 c_shift_ram_2 ]
  set_property -dict [ list \
CONFIG.AsyncInitVal {0} \
CONFIG.DefaultData {0} \
CONFIG.Depth {1} \
CONFIG.SyncInitVal {0} \
CONFIG.Width {1} \
 ] $c_shift_ram_2

  # Create instance: c_shift_ram_3, and set properties
  set c_shift_ram_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 c_shift_ram_3 ]
  set_property -dict [ list \
CONFIG.AsyncInitVal {0} \
CONFIG.DefaultData {0} \
CONFIG.Depth {1} \
CONFIG.SyncInitVal {0} \
CONFIG.Width {1} \
 ] $c_shift_ram_3

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.2 clk_wiz_0 ]
  set_property -dict [ list \
CONFIG.CLKOUT1_JITTER {151.636} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {50} \
CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {20.000} \
CONFIG.MMCM_DIVCLK_DIVIDE {1} \
CONFIG.USE_LOCKED {false} \
CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
CONFIG.IN1_WIDTH {2} \
 ] $xlconcat_0

  # Create port connections
  connect_bd_net -net SevenSegmentDriver_0_an [get_bd_ports an] [get_bd_pins SevenSegmentDriver_0/an]
  connect_bd_net -net SevenSegmentDriver_0_dp [get_bd_ports dp] [get_bd_pins SevenSegmentDriver_0/dp]
  connect_bd_net -net SevenSegmentDriver_0_seg [get_bd_ports seg] [get_bd_pins SevenSegmentDriver_0/seg]
  connect_bd_net -net btnC_1 [get_bd_ports btnC] [get_bd_pins c_shift_ram_2/D]
  connect_bd_net -net btnD_1 [get_bd_ports btnD] [get_bd_pins c_shift_ram_1/D]
  connect_bd_net -net btnL_1 [get_bd_ports btnL] [get_bd_pins c_shift_ram_3/D]
  connect_bd_net -net btnU_1 [get_bd_ports btnU] [get_bd_pins c_shift_ram_0/D]
  connect_bd_net -net c_addsub_0_S [get_bd_pins SevenSegmentDriver_0/din] [get_bd_pins c_addsub_0/B] [get_bd_pins c_addsub_0/S]
  connect_bd_net -net c_counter_binary_0_Q [get_bd_pins SevenSegmentDriver_0/bcd] [get_bd_pins c_counter_binary_0/Q] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net c_counter_binary_1_Q [get_bd_pins SevenSegmentDriver_0/dec] [get_bd_pins c_counter_binary_1/Q] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net c_shift_ram_0_Q [get_bd_pins c_counter_binary_0/CLK] [get_bd_pins c_shift_ram_0/Q]
  connect_bd_net -net c_shift_ram_1_Q [get_bd_pins c_counter_binary_1/CLK] [get_bd_pins c_shift_ram_1/Q]
  connect_bd_net -net c_shift_ram_2_Q [get_bd_pins c_addsub_0/CLK] [get_bd_pins c_shift_ram_2/Q]
  connect_bd_net -net c_shift_ram_3_Q [get_bd_pins c_addsub_0/SCLR] [get_bd_pins c_shift_ram_3/Q]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins SevenSegmentDriver_0/clk] [get_bd_pins c_shift_ram_0/CLK] [get_bd_pins c_shift_ram_1/CLK] [get_bd_pins c_shift_ram_2/CLK] [get_bd_pins c_shift_ram_3/CLK] [get_bd_pins clk_wiz_0/clk_out1]
  connect_bd_net -net sw_1 [get_bd_ports sw] [get_bd_pins c_addsub_0/A]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net xlconcat_0_dout [get_bd_ports led] [get_bd_pins xlconcat_0/dout]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   commentid: "",
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port btnL -pg 1 -y 100 -defaultsOSRD
preplace port btnC -pg 1 -y 210 -defaultsOSRD
preplace port sys_clock -pg 1 -y 490 -defaultsOSRD
preplace port btnD -pg 1 -y 440 -defaultsOSRD
preplace port dp -pg 1 -y 340 -defaultsOSRD
preplace port btnU -pg 1 -y 330 -defaultsOSRD
preplace portBus sw -pg 1 -y 50 -defaultsOSRD
preplace portBus an -pg 1 -y 290 -defaultsOSRD
preplace portBus led -pg 1 -y 440 -defaultsOSRD
preplace portBus seg -pg 1 -y 310 -defaultsOSRD
preplace inst c_addsub_0 -pg 1 -lvl 3 -y 80 -defaultsOSRD
preplace inst xlconcat_0 -pg 1 -lvl 4 -y 440 -defaultsOSRD
preplace inst c_counter_binary_0 -pg 1 -lvl 3 -y 340 -defaultsOSRD
preplace inst c_counter_binary_1 -pg 1 -lvl 3 -y 450 -defaultsOSRD
preplace inst c_shift_ram_0 -pg 1 -lvl 2 -y 340 -defaultsOSRD
preplace inst c_shift_ram_1 -pg 1 -lvl 2 -y 450 -defaultsOSRD
preplace inst SevenSegmentDriver_0 -pg 1 -lvl 4 -y 310 -defaultsOSRD
preplace inst clk_wiz_0 -pg 1 -lvl 1 -y 490 -defaultsOSRD
preplace inst c_shift_ram_2 -pg 1 -lvl 2 -y 220 -defaultsOSRD
preplace inst c_shift_ram_3 -pg 1 -lvl 2 -y 110 -defaultsOSRD
preplace netloc c_shift_ram_1_Q 1 2 1 N
preplace netloc c_counter_binary_1_Q 1 3 1 580
preplace netloc btnC_1 1 0 2 NJ 210 NJ
preplace netloc btnD_1 1 0 2 NJ 440 NJ
preplace netloc SevenSegmentDriver_0_an 1 4 1 NJ
preplace netloc btnL_1 1 0 2 NJ 100 NJ
preplace netloc btnU_1 1 0 2 NJ 330 NJ
preplace netloc SevenSegmentDriver_0_seg 1 4 1 NJ
preplace netloc c_shift_ram_3_Q 1 2 1 N
preplace netloc c_shift_ram_2_Q 1 2 1 380
preplace netloc sys_clock_1 1 0 1 NJ
preplace netloc SevenSegmentDriver_0_dp 1 4 1 800
preplace netloc xlconcat_0_dout 1 4 1 NJ
preplace netloc c_counter_binary_0_Q 1 3 1 570
preplace netloc clk_wiz_0_clk_out1 1 1 3 180 280 NJ 280 N
preplace netloc sw_1 1 0 3 NJ 50 NJ 50 NJ
preplace netloc c_shift_ram_0_Q 1 2 1 N
preplace netloc c_addsub_0_S 1 2 2 390 160 570
levelinfo -pg 1 0 100 280 480 690 820 -top 0 -bot 540
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


