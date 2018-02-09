#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=C:/Xilinx/SDK/2015.4/bin;C:/Xilinx/Vivado/2015.4/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2015.4/ids_lite/ISE/lib/nt64:C:/Xilinx/Vivado/2015.4/bin
else
  PATH=C:/Xilinx/SDK/2015.4/bin;C:/Xilinx/Vivado/2015.4/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2015.4/ids_lite/ISE/lib/nt64:C:/Xilinx/Vivado/2015.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='C:/Users/Taylor/Documents/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_2_axi_logic_interface/1_2_ublaze_system.runs/synth_2_basysboard'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log ublaze_wrapper.vds -m64 -mode batch -messageDb vivado.pb -notrace -source ublaze_wrapper.tcl