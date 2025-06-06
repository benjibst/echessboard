	.file	"riscv_alu_ops_test.c"
	.option pic
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	test_alu_arithmetic_ops
	.type	test_alu_arithmetic_ops, @function
test_alu_arithmetic_ops:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	test_alu_arithmetic_ops, .-test_alu_arithmetic_ops
	.align	2
	.globl	test_alu_logic_ops
	.type	test_alu_logic_ops, @function
test_alu_logic_ops:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	xor	a5,a4,a5
	sw	a5,-20(s0)
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	and	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	test_alu_logic_ops, .-test_alu_logic_ops
	.align	2
	.globl	test_alu_shifts
	.type	test_alu_shifts, @function
test_alu_shifts:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	srl	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	sll	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	sra	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	test_alu_shifts, .-test_alu_shifts
	.align	2
	.globl	test_alu_slt
	.type	test_alu_slt, @function
test_alu_slt:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	slt	a5,a4,a5
	andi	a5,a5,0xff
	sw	a5,-20(s0)
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	test_alu_slt, .-test_alu_slt
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	li	a1,3
	li	a0,1
	call	test_alu_logic_ops
	li	a1,2
	li	a0,1
	call	test_alu_arithmetic_ops
	li	a1,1
	li	a0,-2
	call	test_alu_arithmetic_ops
	li	a1,2
	li	a0,-1
	call	test_alu_arithmetic_ops
	li	a1,2
	li	a0,1
	call	test_alu_shifts
	li	a1,2
	li	a0,4
	call	test_alu_shifts
	li	a1,1
	li	a0,-1
	call	test_alu_shifts
	li	a5,0
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (GNU) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
