transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xil_defaultlib -93  -incr \
"../../../../echessboar_vivado.gen/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_sim_netlist.vhdl" \


