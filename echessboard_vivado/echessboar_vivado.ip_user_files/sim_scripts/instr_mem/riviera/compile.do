transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../../../../../../Xillinx/2025.1/data/rsb/busdef" -l xpm -l xil_defaultlib \
"/home/benni/Xillinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/home/benni/Xillinx/2025.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../echessboar_vivado.gen/sources_1/ip/instr_mem/instr_mem_sim_netlist.vhdl" \


vlog -work xil_defaultlib \
"glbl.v"

