transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+dist_mem_gen_0  -L xil_defaultlib -L secureip -O5 xil_defaultlib.dist_mem_gen_0

do {dist_mem_gen_0.udo}

run 1000ns

endsim

quit -force
