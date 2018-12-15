	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
	li	gp, 116	# initialize gp
#	main program starts
	addi	sp, sp, -4
	sw	ra, 0(sp)
	li	a0, 0
	call	yloop_45
	lw	ra, 0(sp)
	addi	sp, sp, 4
#	main program ends
end:
	b	end
iloop_61:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	bne	a0, zero, beq_else_128
	li	a0, 1
	call	min_caml_print_int
	b	iloop_61_ret
beq_else_128:
	fsub	fa2, fa2, fa3
	fadd	fa2, fa2, fa4
	fli	fa3, l_110
	fmul	fa0, fa3, fa0
	fmul	fa0, fa0, fa1
	fadd	fa1, fa0, fa5
	fmul	fa0, fa2, fa2
	fmul	fa3, fa1, fa1
	fadd	fa6, fa0, fa3
	fli	fa7, l_111
	fle	a1, fa6, fa7
	bne	a1, zero, beq_else_129
	li	a0, 0
	call	min_caml_print_int
	b	iloop_61_ret
beq_else_129:
	addi	a0, a0, -1
	fmv	ft11, fa2
	fmv	fa2, fa0
	fmv	fa0, ft11
	call	iloop_61
iloop_61_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
xloop_49:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	li	t6, 400
	blt	a0, t6, bge_else_130
	b	xloop_49_ret
bge_else_130:
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	min_caml_float_of_int
	fli	fa1, l_110
	fmul	fa0, fa0, fa1
	fli	fa2, l_112
	fdiv	fa0, fa0, fa2
	fli	fa3, l_113
	fsub	fa0, fa0, fa3
	lw	a0, 4(sp)
	fsw	fa0, 8(sp)
	fsw	fa2, 12(sp)
	fsw	fa1, 16(sp)
	call	min_caml_float_of_int
	flw	fa1, 16(sp)
	fmul	fa0, fa0, fa1
	flw	fa1, 12(sp)
	fdiv	fa0, fa0, fa1
	fli	fa1, l_114
	fsub	fa5, fa0, fa1
	li	a0, 100
	fli	fa0, l_115
	flw	fa4, 8(sp)
	fmv	fa3, fa0
	fmv	fa2, fa0
	fmv	fa1, fa0
	call	iloop_61
	lw	a0, 0(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	call	xloop_49
xloop_49_ret:
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
yloop_45:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	li	t6, 400
	blt	a0, t6, bge_else_132
	b	yloop_45_ret
bge_else_132:
	sw	a0, 0(sp)
	call	min_caml_print_newline
	li	a0, 0
	lw	a1, 0(sp)
	call	xloop_49
	lw	a0, 0(sp)
	addi	a0, a0, 1
	call	yloop_45
yloop_45_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
	.data
l_115:	# 0.000000
	.word	0
l_114:	# 1.000000
	.word	1065353216
l_113:	# 1.500000
	.word	1069547520
l_112:	# 400.000000
	.word	1137180672
l_111:	# 4.000000
	.word	1082130432
l_110:	# 2.000000
	.word	1073741824
