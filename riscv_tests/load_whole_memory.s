.section .text
.globl _start
_start:
    addi x5,zero,0
l2:
    lw x6,0(x5) # Load word from memory address in x5
    addi x6,x6,0
    addi x5,x5,4 # Increment address in x5
    jal x7,l2 # Jump to label l2
    