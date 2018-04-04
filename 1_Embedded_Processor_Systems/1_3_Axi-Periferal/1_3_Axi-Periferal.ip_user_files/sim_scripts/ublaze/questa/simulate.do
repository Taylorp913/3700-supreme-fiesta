onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ublaze_opt

do {wave.do}

view wave
view structure
view signals

do {ublaze.udo}

run -all

quit -force
