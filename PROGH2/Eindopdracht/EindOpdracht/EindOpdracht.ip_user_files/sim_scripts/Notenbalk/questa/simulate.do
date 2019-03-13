onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Notenbalk_opt

do {wave.do}

view wave
view structure
view signals

do {Notenbalk.udo}

run -all

quit -force
