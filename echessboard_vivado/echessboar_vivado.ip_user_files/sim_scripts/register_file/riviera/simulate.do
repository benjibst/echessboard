transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+register_file  -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.register_file xil_defaultlib.glbl

do {register_file.udo}

run 1000ns

endsim

quit -force
