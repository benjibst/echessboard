.section .text
.globl _start
_start:
    addi x5,x0,8 #x5 = 8
    addi x6,x0,-1
    sb x6,0(x5) # store byte
    sh x6,4(x5) # store halfword
    sw x6,8(x5) # store word

    lb x7,0(x5) # load byte
    addi x7,x7,0
    lh x7,0(x5) # load halfword
    addi x7,x7,0
    lw x7,0(x5) # load word
    addi x7,x7,0
    lbu x7,0(x5) # load byte unsigned
    addi x7,x7,0
    lhu x7,0(x5) # load halfword unsigned
    addi x7,x7,0

    lb x7,4(x5) # load byte
    addi x7,x7,0
    lh x7,4(x5) # load halfword
    addi x7,x7,0
    lw x7,4(x5) # load word
    addi x7,x7,0
    lbu x7,4(x5) # load byte unsigned
    addi x7,x7,0
    lhu x7,4(x5) # load halfword unsigned
    addi x7,x7,0

    lb x7,8(x5) # load byte
    addi x7,x7,0
    lh x7,8(x5) # load halfword
    addi x7,x7,0
    lw x7,8(x5) # load word
    addi x7,x7,0
    lbu x7,8(x5) # load byte unsigned
    addi x7,x7,0
    lhu x7,8(x5) # load halfword unsigned
    addi x7,x7,0

       

