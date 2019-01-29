	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
	li	gp, 7300	# initialize gp
#	main program starts
	li	a0, 0
	call	yloop_45
#	main program ends
end:
	b	end
iloop_61:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	bne	a0, zero, .iloop_else_1
	li	a0, 1
	call	min_caml_print_int
	b	iloop_ret
.iloop_else_1:
	fsub	fa2, fa2, fa3
	fadd	fa2, fa2, fa4
	fli	fa3, l_data_1
	fmul	fa0, fa3, fa0
	fmul	fa0, fa0, fa1
	fadd	fa1, fa0, fa5
	fmul	fa0, fa2, fa2
	fmul	fa3, fa1, fa1
	fadd	fa6, fa0, fa3
	fli	fa7, l_data_2
	fle	a1, fa6, fa7
	bne	a1, zero, .iloop_else_2
	li	a0, 0
	call	min_caml_print_int
	b	iloop_ret
.iloop_else_2:
	addi	a0, a0, -1
	fmv	ft8, fa2
	fmv	fa2, fa0
	fmv	fa0, ft8
	call	iloop_61
iloop_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
xloop_49:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	li	t6, 400
	blt	a0, t6, .xloop_else_1
	b	xloop_ret
.xloop_else_1:
	sw	a0, 0(sp)	# save
	call	min_caml_float_of_int
	fli	fa1, l_data_1
	fmul	fa0, fa0, fa1
	fli	fa2, l_data_3
	fdiv	fa0, fa0, fa2
	fli	fa3, l_data_4
	fsub	fa0, fa0, fa3
	fsw	fa0, 4(sp)	# save
	mv	a0, a1
	call	min_caml_float_of_int
	fmul	fa0, fa0, fa1
	fdiv	fa0, fa0, fa2
	fli	fa1, l_data_5
	fsub	fa5, fa0, fa1
	li	a0, 100
	fmv	fa0, fzero
	flw	fa4, 4(sp)	# restore
	sw	a1, 8(sp)	# save
	fmv	fa3, fa0
	fmv	fa2, fa0
	fmv	fa1, fa0
	call	iloop_61
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 8(sp)	# restore
	call	xloop_49
xloop_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
yloop_45:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	li	t6, 400
	blt	a0, t6, .yloop_else_1
	b	yloop_ret
.yloop_else_1:
	call	min_caml_print_newline
	li	a1, 0
	sw	a0, 0(sp)	# save
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	xloop_49
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	call	yloop_45
yloop_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
	.data
l_data_5:	# 1.000000
	.word	1065353216
l_data_4:	# 1.500000
	.word	1069547520
l_data_3:	# 400.000000
	.word	1137180672
l_data_2:	# 4.000000
	.word	1082130432
l_data_1:	# 2.000000
	.word	1073741824
