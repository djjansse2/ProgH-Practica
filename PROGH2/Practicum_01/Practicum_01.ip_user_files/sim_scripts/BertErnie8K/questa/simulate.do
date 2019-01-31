onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib BertErnie8K_opt

do {wave.do}

view wave
view structure
view signals

do {BertErnie8K.udo}

run -all

quit -force
