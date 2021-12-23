	.file	"selection.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	selection
	.type	selection, @function
selection:
	ble	a1,zero,.L1
	mv	a7,a0
	li	a2,0
	j	.L6
.L3:
	addi	a4,a4,1
	addi	a3,a3,4
	beq	a1,a4,.L8
.L4:
	slli	a5,a2,2
	add	a5,a0,a5
	lw	a6,4(a3)
	lw	a5,0(a5)
	bge	a6,a5,.L3
	mv	a2,a4
	j	.L3
.L8:
	lw	a5,0(a7)
	slli	a2,a2,2
	add	a2,a0,a2
	lw	a4,0(a2)
	sw	a4,0(a7)
	sw	a5,0(a2)
	addi	a7,a7,4
	mv	a2,t1
.L6:
	addi	t1,a2,1
	beq	a1,t1,.L1
	mv	a3,a7
	mv	a4,t1
	j	.L4
.L1:
	ret
	.size	selection, .-selection
	.ident	"GCC: (SiFive GCC 8.3.0-2020.04.1) 8.3.0"
