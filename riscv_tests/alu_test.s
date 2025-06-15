.section .text
.globl _start
_start:
    addi x5,x0,5 #x5 = 5
    addi x6,x0,10 #x6 = 10
    add x5, x5, x6  #x5 = x5 + x6 = 5 + 10 = 15
    xor x5,x5,x6 # 1111 ^ 1010 = 0101 = 5
    or x5, x5,x6 # 0101 | 1010 = 1111 = 15
    and x5, x5,x6 # 1111 & 1010 = 1010 = 10
    sll x5,x5,x6 # 1010 << 10 = 10100000000000 = 10240 dec
    srl x5,x5,x6 # 10100000000000 >> 10 = 1010 = 10 dec
    addi x5,x0,-1024 # x5 = -1024
    sra x5,x5,x6 # -1 >> 10 = -1
    slt x7, x5,x6 # x7 = 1
    slt x7,x6,x5 # x7 = 0
    sltu x7,x5,x6 # x7 = 0
    sltu x7,x6,x5 # x7 = 1