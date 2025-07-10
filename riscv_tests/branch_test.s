.section .text
.globl _start
_start:
    addi x5,x0,-1 # x5 = -1
    addi x6,x0,1 # x6 = 1
    beq x5,x6,l1 #branch not taken
    addi x0,x0,0
l1:
    bne x5,x6,l2 #branch taken
    addi x0,x0,0
l2:
    blt x5,x6,l3 #branch taken
    addi x0,x0,0
    addi x0,x0,0
l3:
    bge x5,x6,l4 #branch not taken
    addi x0,x0,0
    addi x0,x0,0
l4:
    bltu x5,x6,l5 #branch not taken
    addi x0,x0,0
    addi x0,x0,0
l5:
    bgeu x5,x6,l6 #branch taken
    addi x0,x0,0
    addi x0,x0,0
l6:
    jal x7,_start # jump to start
