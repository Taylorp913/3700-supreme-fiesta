@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xelab  -wto 622730616ef64e40b7ff2322a8dc4ed7 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L xbip_utils_v3_0_5 -L c_reg_fd_v12_0_1 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_1 -L xbip_dsp48_addsub_v3_0_1 -L xbip_addsub_v3_0_1 -L c_addsub_v12_0_8 -L c_gate_bit_v12_0_1 -L xbip_counter_v3_0_1 -L c_counter_binary_v12_0_8 -L c_mux_bit_v12_0_1 -L c_shift_ram_v12_0_8 -L unisims_ver -L unimacro_ver -L secureip --snapshot design_1_wrapper_behav xil_defaultlib.design_1_wrapper xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
