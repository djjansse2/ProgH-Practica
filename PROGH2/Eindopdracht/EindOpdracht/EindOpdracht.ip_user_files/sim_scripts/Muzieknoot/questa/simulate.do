onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Muzieknoot_opt

do {wave.do}

view wave
view structure
view signals

do {Muzieknoot.udo}

run -all

quit -force
