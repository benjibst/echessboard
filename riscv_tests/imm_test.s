.section .text
.globl _start
_start:
    addi x5,x0,5 #x5 = 5
    addi x5,x5,10 #x5 = 15
    xori x5,x5,10 # x5 = 1111 ^ 1010 = 0101 = 5
    ori x5,x5,10 # x5 = 0101 | 1010 = 1111 = 15
    andi x5,x5,10 # x5 = 1111 & 1010 = 1010 = 10
    slli x5,x5,10 # x5 = 1010 << 10 = 10100000000000
    srli x5,x5,10 # x5 = 10100000000000 >> 10 = 1010 = 10
    addi x5,x0,-1024 # x5 = -1024
    srai x5,x5,10 # x5 = -1024 >> 10 = -1
    slti x5,x5,0 # x5 = 1
    slti x5,x5,-1 # x5 = 0
    sltiu x5,x5,1 # x5 = 1
    sltiu x5,x5,-1 # x5 = 1

    