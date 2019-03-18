connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Basys3 210183A37A9AA"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Basys3 210183A37A9AA"} -index 0
dow D:/FPGA/ProgH-Practicum/PROGH2/EindopdrachtMicroblaze/EindopdrachtMicroblaze.sdk/NoteControl/Debug/NoteControl.elf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Basys3 210183A37A9AA"} -index 0
con
