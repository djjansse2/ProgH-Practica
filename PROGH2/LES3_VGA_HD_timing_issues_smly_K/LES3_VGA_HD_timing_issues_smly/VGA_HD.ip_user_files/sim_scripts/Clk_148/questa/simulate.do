onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Clk_148_opt

do {wave.do}

view wave
view structure
view signals

do {Clk_148.udo}

run -all

quit -force
