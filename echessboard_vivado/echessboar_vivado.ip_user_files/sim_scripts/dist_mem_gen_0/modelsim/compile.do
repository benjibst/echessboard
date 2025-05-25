vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93  \
"../../../../echessboar_vivado.gen/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_sim_netlist.vhdl" \


