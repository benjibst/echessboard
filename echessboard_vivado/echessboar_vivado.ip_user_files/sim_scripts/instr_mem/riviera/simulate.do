transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+instr_mem  -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.instr_mem xil_defaultlib.glbl

do {instr_mem.udo}

run 1000ns

endsim

quit -force
