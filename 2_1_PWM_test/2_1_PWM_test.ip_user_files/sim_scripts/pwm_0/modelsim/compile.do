vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../2_1_PWM_test.srcs/sources_1/ip/pwm_0/pwm.v" \
"../../../../2_1_PWM_test.srcs/sources_1/ip/pwm_0/sim/pwm_0.v" \


vlog -work xil_defaultlib "glbl.v"

