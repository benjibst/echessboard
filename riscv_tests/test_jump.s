.section .text
.globl _start
_start:
    addi x5,x0,0
    jal x1, l1 # jump to l1
    addi x0,x0,0
    addi x0,x0,0
    addi x0,x0,0
    addi x0,x0,0
    addi x0,x0,0
    addi x0,x0,0
    addi x0,x0,0
    addi x0,x0,0
    addi x0,x0,0
l1:
    jalr x1, 0(x5) # jump to address in x5


    