.section .text
.globl _start
_start:
    lui x5, 1048575
    addi x5, x5, 0x1 # x5 = 1048576
    auipc x6, 0x1
    addi x6, x6, 0x0 # x6 = 4096


    