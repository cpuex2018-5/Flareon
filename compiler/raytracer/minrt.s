	.text
_min_caml_start:
	li	gp, 7404
	li	a0, 170
	w	a0
	li	a0, 128
	li	a1, 128
	call	rt_3070
end:
	b	end
read_screen_settings_2716:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	call	min_caml_read_float
	fswd	fa0, min_caml_screen(0)
	call	min_caml_read_float
	fswd	fa0, min_caml_screen(4)
	call	min_caml_read_float
	fswd	fa0, min_caml_screen(8)
	call	min_caml_read_float
	fli	fa1, l_data_1
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(sp)	# save
	call	min_caml_cos
	fsw	fa0, 4(sp)	# save
	flw	fa0, 0(sp)	# restore
	call	min_caml_sin
	fsw	fa0, 8(sp)	# save
	call	min_caml_read_float
	fmul	fa0, fa0, fa1
	fsw	fa0, 12(sp)	# save
	call	min_caml_cos
	fsw	fa0, 16(sp)	# save
	flw	fa0, 12(sp)	# restore
	call	min_caml_sin
	flw	fa1, 4(sp)	# restore
	fmul	fa2, fa1, fa0
	fli	fa3, l_data_2
	fmul	fa2, fa2, fa3
	fswd	fa2, min_caml_screenz_dir(0)
	fli	fa2, l_data_3
	flw	fa4, 8(sp)	# restore
	fmul	fa2, fa4, fa2
	fswd	fa2, min_caml_screenz_dir(4)
	flw	fa2, 16(sp)	# restore
	fmul	fa5, fa1, fa2
	fmul	fa3, fa5, fa3
	fswd	fa3, min_caml_screenz_dir(8)
	fswd	fa2, min_caml_screenx_dir(0)
	fswd	fzero, min_caml_screenx_dir(4)
	fneg	fa3, fa0
	fswd	fa3, min_caml_screenx_dir(8)
	fneg	fa3, fa4
	fmul	fa0, fa3, fa0
	fswd	fa0, min_caml_screeny_dir(0)
	fneg	fa0, fa1
	fswd	fa0, min_caml_screeny_dir(4)
	fmul	fa0, fa3, fa2
	fswd	fa0, min_caml_screeny_dir(8)
	flwd	fa0, min_caml_screen(0)
	flwd	fa1, min_caml_screenz_dir(0)
	fsub	fa0, fa0, fa1
	fswd	fa0, min_caml_viewpoint(0)
	flwd	fa0, min_caml_screen(4)
	flwd	fa1, min_caml_screenz_dir(4)
	fsub	fa0, fa0, fa1
	fswd	fa0, min_caml_viewpoint(4)
	flwd	fa0, min_caml_screen(8)
	flwd	fa1, min_caml_screenz_dir(8)
	fsub	fa0, fa0, fa1
	fswd	fa0, min_caml_viewpoint(8)
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
rotate_quadratic_matrix_2720:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	flw	fa0, 0(a1)
	call	min_caml_cos
	fsw	fa0, 0(sp)	# save
	flw	fa0, 0(a1)
	call	min_caml_sin
	fsw	fa0, 4(sp)	# save
	flw	fa0, 4(a1)
	call	min_caml_cos
	fsw	fa0, 8(sp)	# save
	flw	fa0, 4(a1)
	call	min_caml_sin
	fsw	fa0, 12(sp)	# save
	flw	fa0, 8(a1)
	call	min_caml_cos
	fsw	fa0, 16(sp)	# save
	flw	fa0, 8(a1)
	call	min_caml_sin
	flw	fa1, 16(sp)	# restore
	flw	fa2, 8(sp)	# restore
	fmul	fa3, fa2, fa1
	flw	fa4, 12(sp)	# restore
	flw	fa5, 4(sp)	# restore
	fmul	fa6, fa5, fa4
	fmul	fa7, fa6, fa1
	flw	fs1, 0(sp)	# restore
	fmul	fs2, fs1, fa0
	fsub	fa7, fa7, fs2
	fmul	fs2, fs1, fa4
	fmul	fs3, fs2, fa1
	fmul	fs4, fa5, fa0
	fadd	fs3, fs3, fs4
	fmul	fs4, fa2, fa0
	fmul	fa6, fa6, fa0
	fmul	fs5, fs1, fa1
	fadd	fa6, fa6, fs5
	fmul	fa0, fs2, fa0
	fmul	fa1, fa5, fa1
	fsub	fa0, fa0, fa1
	fneg	fa1, fa4
	fmul	fa4, fa5, fa2
	fmul	fa2, fs1, fa2
	flw	fa5, 0(a0)
	flw	fs1, 4(a0)
	flw	fs2, 8(a0)
	fmul	fs5, fa3, fa3
	fmul	fs5, fa5, fs5
	fmul	fs6, fs4, fs4
	fmul	fs6, fs1, fs6
	fadd	fs5, fs5, fs6
	fmul	fs6, fa1, fa1
	fmul	fs6, fs2, fs6
	fadd	fs5, fs5, fs6
	fsw	fs5, 0(a0)
	fmul	fs5, fa7, fa7
	fmul	fs5, fa5, fs5
	fmul	fs6, fa6, fa6
	fmul	fs6, fs1, fs6
	fadd	fs5, fs5, fs6
	fmul	fs6, fa4, fa4
	fmul	fs6, fs2, fs6
	fadd	fs5, fs5, fs6
	fsw	fs5, 4(a0)
	fmul	fs5, fs3, fs3
	fmul	fs5, fa5, fs5
	fmul	fs6, fa0, fa0
	fmul	fs6, fs1, fs6
	fadd	fs5, fs5, fs6
	fmul	fs6, fa2, fa2
	fmul	fs6, fs2, fs6
	fadd	fs5, fs5, fs6
	fsw	fs5, 8(a0)
	fli	fs5, l_data_4
	fmul	fs6, fa5, fa7
	fmul	fs6, fs6, fs3
	fmul	fs7, fs1, fa6
	fmul	fs7, fs7, fa0
	fadd	fs6, fs6, fs7
	fmul	fs7, fs2, fa4
	fmul	fs7, fs7, fa2
	fadd	fs6, fs6, fs7
	fmul	fs6, fs5, fs6
	fsw	fs6, 0(a1)
	fmul	fa3, fa5, fa3
	fmul	fa5, fa3, fs3
	fmul	fs1, fs1, fs4
	fmul	fa0, fs1, fa0
	fadd	fa0, fa5, fa0
	fmul	fa1, fs2, fa1
	fmul	fa2, fa1, fa2
	fadd	fa0, fa0, fa2
	fmul	fa0, fs5, fa0
	fsw	fa0, 4(a1)
	fmul	fa0, fa3, fa7
	fmul	fa2, fs1, fa6
	fadd	fa0, fa0, fa2
	fmul	fa1, fa1, fa4
	fadd	fa0, fa0, fa1
	fmul	fa0, fs5, fa0
	fsw	fa0, 8(a1)
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
read_nth_object_2723:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	a0, 0(sp)	# save
	call	min_caml_read_int
	bnei	a0, -1, .read_nth_object_else_1
	li	a0, 0
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
.read_nth_object_else_1:
	sw	a0, 4(sp)	# save
	call	min_caml_read_int
	sw	a0, 8(sp)	# save
	call	min_caml_read_int
	sw	a0, 12(sp)	# save
	call	min_caml_read_int
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	call	min_caml_read_float
	fsw	fa0, 0(a1)
	call	min_caml_read_float
	fsw	fa0, 4(a1)
	call	min_caml_read_float
	fsw	fa0, 8(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a2, gp
	addi	gp, gp, 12
	call	min_caml_read_float
	fsw	fa0, 0(a2)
	call	min_caml_read_float
	fsw	fa0, 4(a2)
	call	min_caml_read_float
	fsw	fa0, 8(a2)
	call	min_caml_read_float
	fle	a3, fzero, fa0
	xori	a3, a3, 1
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	mv	a4, gp
	addi	gp, gp, 8
	call	min_caml_read_float
	fsw	fa0, 0(a4)
	call	min_caml_read_float
	fsw	fa0, 4(a4)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a5, gp
	addi	gp, gp, 12
	call	min_caml_read_float
	fsw	fa0, 0(a5)
	call	min_caml_read_float
	fsw	fa0, 4(a5)
	call	min_caml_read_float
	fsw	fa0, 8(a5)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a6, gp
	addi	gp, gp, 12
	sw	a1, 16(sp)	# save
	mv	a1, a6
	beq	a0, zero, .read_nth_object_cont_2
	call	min_caml_read_float
	fli	fa1, l_data_1
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a1)
	call	min_caml_read_float
	fmul	fa0, fa0, fa1
	fsw	fa0, 4(a1)
	call	min_caml_read_float
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a1)
.read_nth_object_cont_2:
	lw	a6, 8(sp)	# restore
	bnei	a6, 2, .read_nth_object_else_3
	li	a7, 1
	b	.read_nth_object_cont_4
.read_nth_object_else_3:
	mv	a7, a3
.read_nth_object_cont_4:
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	fsw	fzero, 12(gp)
	mv	s1, gp
	addi	gp, gp, 16
	sw	s1, 40(gp)
	sw	a1, 36(gp)
	sw	a5, 32(gp)
	sw	a4, 28(gp)
	sw	a7, 24(gp)
	sw	a2, 20(gp)
	lw	a2, 16(sp)	# restore
	sw	a2, 16(gp)
	sw	a0, 12(gp)
	lw	a4, 12(sp)	# restore
	sw	a4, 8(gp)
	sw	a6, 4(gp)
	lw	a4, 4(sp)	# restore
	sw	a4, 0(gp)
	mv	a4, gp
	addi	gp, gp, 44
	lw	a5, 0(sp)	# restore
	slli	a5, a5, 2
	swl	a4, min_caml_objects(a5)
	bnei	a6, 3, .read_nth_object_else_5
	flw	fa0, 0(a2)
	feq	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_7
	fle	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_9
	fli	fa1, l_data_5
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	fsw	fa0, 0(a2)
	flw	fa0, 4(a2)
	feq	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_11
	fle	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_13
	fli	fa1, l_data_5
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	fsw	fa0, 4(a2)
	flw	fa0, 8(a2)
	feq	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_15
	fle	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_17
	fli	fa1, l_data_5
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	fsw	fa0, 8(a2)
	b	.read_nth_object_cont_6
.read_nth_object_else_9:
	fli	fa1, l_data_6
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	fsw	fa0, 0(a2)
	flw	fa0, 4(a2)
	feq	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_11
	fle	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_13
	fli	fa1, l_data_5
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	fsw	fa0, 4(a2)
	flw	fa0, 8(a2)
	feq	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_15
	fle	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_17
	fli	fa1, l_data_5
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	fsw	fa0, 8(a2)
	b	.read_nth_object_cont_6
.read_nth_object_else_7:
	fmv	fa0, fzero
	fsw	fa0, 0(a2)
	flw	fa0, 4(a2)
	feq	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_11
	fle	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_13
	fli	fa1, l_data_5
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	fsw	fa0, 4(a2)
	flw	fa0, 8(a2)
	feq	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_15
	fle	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_17
	fli	fa1, l_data_5
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	fsw	fa0, 8(a2)
	b	.read_nth_object_cont_6
.read_nth_object_else_13:
	fli	fa1, l_data_6
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	fsw	fa0, 4(a2)
	flw	fa0, 8(a2)
	feq	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_15
	fle	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_17
	fli	fa1, l_data_5
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	fsw	fa0, 8(a2)
	b	.read_nth_object_cont_6
.read_nth_object_else_11:
	fmv	fa0, fzero
	fsw	fa0, 4(a2)
	flw	fa0, 8(a2)
	feq	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_15
	fle	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_17
	fli	fa1, l_data_5
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	fsw	fa0, 8(a2)
	b	.read_nth_object_cont_6
.read_nth_object_else_17:
	fli	fa1, l_data_6
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	fsw	fa0, 8(a2)
	b	.read_nth_object_cont_6
.read_nth_object_else_15:
	fmv	fa0, fzero
	fsw	fa0, 8(a2)
	b	.read_nth_object_cont_6
.read_nth_object_else_5:
	bnei	a6, 2, .read_nth_object_cont_19
	xori	a3, a3, 1
	flw	fa0, 0(a2)
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a2)
	flw	fa2, 4(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a2)
	flw	fa2, 8(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	feq	a4, fa0, fzero
	bne	a4, zero, .read_nth_object_else_20
	bne	a3, zero, .read_nth_object_else_22
	fli	fa1, l_data_5
	fdiv	fa0, fa1, fa0
	b	.read_nth_object_cont_21
.read_nth_object_else_22:
	fli	fa1, l_data_6
	fdiv	fa0, fa1, fa0
	b	.read_nth_object_cont_21
.read_nth_object_else_20:
	fli	fa0, l_data_5
.read_nth_object_cont_21:
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a2)
	flw	fa1, 4(a2)
	fmul	fa1, fa1, fa0
	fsw	fa1, 4(a2)
	flw	fa1, 8(a2)
	fmul	fa0, fa1, fa0
	fsw	fa0, 8(a2)
.read_nth_object_cont_19:
.read_nth_object_cont_6:
	beq	a0, zero, .read_nth_object_cont_24
	mv	a0, a2
	call	rotate_quadratic_matrix_2720
.read_nth_object_cont_24:
	li	a0, 1
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
read_object_2725:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	li	a1, 60
	bgt	a1, a0, .read_object_else_1
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
.read_object_else_1:
	sw	a0, 0(sp)	# save
	call	read_nth_object_2723
	bne	a0, zero, .read_object_else_3
	lw	a0, 0(sp)	# restore
	swd	a0, min_caml_n_objects(0)
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
.read_object_else_3:
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	li	a1, 60
	bgt	a1, a0, .read_object_else_5
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
.read_object_else_5:
	sw	a0, 4(sp)	# save
	call	read_nth_object_2723
	bne	a0, zero, .read_object_else_7
	lw	a0, 4(sp)	# restore
	swd	a0, min_caml_n_objects(0)
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
.read_object_else_7:
	lw	a0, 4(sp)	# restore
	addi	a0, a0, 1
	li	a1, 60
	bgt	a1, a0, .read_object_else_9
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
.read_object_else_9:
	sw	a0, 8(sp)	# save
	call	read_nth_object_2723
	bne	a0, zero, .read_object_else_11
	lw	a0, 8(sp)	# restore
	swd	a0, min_caml_n_objects(0)
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
.read_object_else_11:
	lw	a0, 8(sp)	# restore
	addi	a0, a0, 1
	li	a1, 60
	bgt	a1, a0, .read_object_else_13
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
.read_object_else_13:
	sw	a0, 12(sp)	# save
	call	read_nth_object_2723
	bne	a0, zero, .read_object_else_15
	lw	a0, 12(sp)	# restore
	swd	a0, min_caml_n_objects(0)
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
.read_object_else_15:
	lw	a0, 12(sp)	# restore
	addi	a0, a0, 1
	li	a1, 60
	bgt	a1, a0, .read_object_else_17
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
.read_object_else_17:
	sw	a0, 16(sp)	# save
	call	read_nth_object_2723
	bne	a0, zero, .read_object_else_19
	lw	a0, 16(sp)	# restore
	swd	a0, min_caml_n_objects(0)
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
.read_object_else_19:
	lw	a0, 16(sp)	# restore
	addi	a0, a0, 1
	li	a1, 60
	bgt	a1, a0, .read_object_else_21
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
.read_object_else_21:
	sw	a0, 20(sp)	# save
	call	read_nth_object_2723
	bne	a0, zero, .read_object_else_23
	lw	a0, 20(sp)	# restore
	swd	a0, min_caml_n_objects(0)
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
.read_object_else_23:
	lw	a0, 20(sp)	# restore
	addi	a0, a0, 1
	li	a1, 60
	bgt	a1, a0, .read_object_else_25
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
.read_object_else_25:
	sw	a0, 24(sp)	# save
	call	read_nth_object_2723
	bne	a0, zero, .read_object_else_27
	lw	a0, 24(sp)	# restore
	swd	a0, min_caml_n_objects(0)
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
.read_object_else_27:
	lw	a0, 24(sp)	# restore
	addi	a0, a0, 1
	li	a1, 60
	bgt	a1, a0, .read_object_else_29
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
.read_object_else_29:
	sw	a0, 28(sp)	# save
	call	read_nth_object_2723
	bne	a0, zero, .read_object_else_31
	lw	a0, 28(sp)	# restore
	swd	a0, min_caml_n_objects(0)
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
.read_object_else_31:
	lw	a0, 28(sp)	# restore
	addi	a0, a0, 1
	call	read_object_2725
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
read_net_item_2729:
	addi	sp, sp, -68
	sw	ra, 64(sp)
	sw	a0, 0(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_net_item_else_1
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	lw	ra, 64(sp)
	addi	sp, sp, 68
	jr	ra
.read_net_item_else_1:
	lw	a1, 0(sp)	# restore
	addi	a2, a1, 1
	sw	a0, 4(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_net_item_else_2
	addi	a0, a2, 1
	call	min_caml_create_array
	b	.read_net_item_cont_3
.read_net_item_else_2:
	addi	a1, a2, 1
	sw	a0, 8(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	sw	a2, 12(sp)	# save
	bnei	a0, -1, .read_net_item_else_4
	addi	a0, a1, 1
	mv	a1, a3
	call	min_caml_create_array
	b	.read_net_item_cont_5
.read_net_item_else_4:
	addi	a3, a1, 1
	sw	a0, 16(sp)	# save
	call	min_caml_read_int
	sw	a1, 20(sp)	# save
	li	a1, -1
	bnei	a0, -1, .read_net_item_else_6
	addi	a0, a3, 1
	call	min_caml_create_array
	b	.read_net_item_cont_7
.read_net_item_else_6:
	addi	a1, a3, 1
	sw	a0, 24(sp)	# save
	call	min_caml_read_int
	li	a4, -1
	sw	a3, 28(sp)	# save
	bnei	a0, -1, .read_net_item_else_8
	addi	a0, a1, 1
	mv	a1, a4
	call	min_caml_create_array
	b	.read_net_item_cont_9
.read_net_item_else_8:
	addi	a4, a1, 1
	sw	a0, 32(sp)	# save
	call	min_caml_read_int
	sw	a1, 36(sp)	# save
	li	a1, -1
	bnei	a0, -1, .read_net_item_else_10
	addi	a0, a4, 1
	call	min_caml_create_array
	b	.read_net_item_cont_11
.read_net_item_else_10:
	addi	a1, a4, 1
	sw	a0, 40(sp)	# save
	call	min_caml_read_int
	li	a5, -1
	sw	a4, 44(sp)	# save
	bnei	a0, -1, .read_net_item_else_12
	addi	a0, a1, 1
	mv	a1, a5
	call	min_caml_create_array
	b	.read_net_item_cont_13
.read_net_item_else_12:
	addi	a5, a1, 1
	sw	a0, 48(sp)	# save
	call	min_caml_read_int
	sw	a1, 52(sp)	# save
	li	a1, -1
	bnei	a0, -1, .read_net_item_else_14
	addi	a0, a5, 1
	call	min_caml_create_array
	b	.read_net_item_cont_15
.read_net_item_else_14:
	sw	a0, 56(sp)	# save
	addi	a0, a5, 1
	sw	a5, 60(sp)	# save
	call	read_net_item_2729
	lw	a1, 60(sp)	# restore
	slli	a1, a1, 2
	lw	a2, 56(sp)	# restore
	add	t6, a0, a1
	sw	a2, 0(t6)
.read_net_item_cont_15:
	lw	a1, 52(sp)	# restore
	slli	a1, a1, 2
	lw	a2, 48(sp)	# restore
	add	t6, a0, a1
	sw	a2, 0(t6)
.read_net_item_cont_13:
	lw	a1, 44(sp)	# restore
	slli	a1, a1, 2
	lw	a2, 40(sp)	# restore
	add	t6, a0, a1
	sw	a2, 0(t6)
.read_net_item_cont_11:
	lw	a1, 36(sp)	# restore
	slli	a1, a1, 2
	lw	a2, 32(sp)	# restore
	add	t6, a0, a1
	sw	a2, 0(t6)
.read_net_item_cont_9:
	lw	a1, 28(sp)	# restore
	slli	a1, a1, 2
	lw	a2, 24(sp)	# restore
	add	t6, a0, a1
	sw	a2, 0(t6)
.read_net_item_cont_7:
	lw	a1, 20(sp)	# restore
	slli	a1, a1, 2
	lw	a2, 16(sp)	# restore
	add	t6, a0, a1
	sw	a2, 0(t6)
.read_net_item_cont_5:
	lw	a1, 12(sp)	# restore
	slli	a1, a1, 2
	lw	a2, 8(sp)	# restore
	add	t6, a0, a1
	sw	a2, 0(t6)
.read_net_item_cont_3:
	lw	a1, 0(sp)	# restore
	slli	a1, a1, 2
	lw	a2, 4(sp)	# restore
	add	t6, a0, a1
	sw	a2, 0(t6)
	lw	ra, 64(sp)
	addi	sp, sp, 68
	jr	ra
read_or_network_2731:
	addi	sp, sp, -124
	sw	ra, 120(sp)
	sw	a0, 0(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_or_network_else_1
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	mv	a1, a0
	b	.read_or_network_cont_2
.read_or_network_else_1:
	sw	a0, 4(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_or_network_else_3
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.read_or_network_cont_4
.read_or_network_else_3:
	sw	a0, 8(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_or_network_else_5
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	b	.read_or_network_cont_6
.read_or_network_else_5:
	sw	a0, 12(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_or_network_else_7
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	mv	a0, gp
	addi	gp, gp, 16
	b	.read_or_network_cont_8
.read_or_network_else_7:
	sw	a0, 16(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_or_network_else_9
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	sw	a1, 16(gp)
	mv	a0, gp
	addi	gp, gp, 20
	b	.read_or_network_cont_10
.read_or_network_else_9:
	sw	a0, 20(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_or_network_else_11
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	sw	a1, 16(gp)
	sw	a1, 20(gp)
	mv	a0, gp
	addi	gp, gp, 24
	b	.read_or_network_cont_12
.read_or_network_else_11:
	sw	a0, 24(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_or_network_else_13
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	sw	a1, 16(gp)
	sw	a1, 20(gp)
	sw	a1, 24(gp)
	mv	a0, gp
	addi	gp, gp, 28
	b	.read_or_network_cont_14
.read_or_network_else_13:
	sw	a0, 28(sp)	# save
	li	a0, 7
	call	read_net_item_2729
	lw	a1, 28(sp)	# restore
	sw	a1, 24(a0)
.read_or_network_cont_14:
	lw	a1, 24(sp)	# restore
	sw	a1, 20(a0)
.read_or_network_cont_12:
	lw	a1, 20(sp)	# restore
	sw	a1, 16(a0)
.read_or_network_cont_10:
	lw	a1, 16(sp)	# restore
	sw	a1, 12(a0)
.read_or_network_cont_8:
	lw	a1, 12(sp)	# restore
	sw	a1, 8(a0)
.read_or_network_cont_6:
	lw	a1, 8(sp)	# restore
	sw	a1, 4(a0)
.read_or_network_cont_4:
	lw	a1, 4(sp)	# restore
	sw	a1, 0(a0)
	mv	a1, a0
.read_or_network_cont_2:
	lw	a0, 0(a1)
	bnei	a0, -1, .read_or_network_else_15
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	lw	ra, 120(sp)
	addi	sp, sp, 124
	jr	ra
.read_or_network_else_15:
	lw	a0, 0(sp)	# restore
	addi	a2, a0, 1
	call	min_caml_read_int
	li	a3, -1
	sw	a1, 32(sp)	# save
	sw	a2, 36(sp)	# save
	bnei	a0, -1, .read_or_network_else_16
	sw	a3, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	mv	a1, a0
	lw	a0, 0(a1)
	bnei	a0, -1, .read_or_network_else_28
	lw	a0, 36(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	b	.read_or_network_cont_29
.read_or_network_else_16:
	sw	a0, 40(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bnei	a0, -1, .read_or_network_else_18
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 40(sp)	# restore
	sw	a1, 0(a0)
	mv	a1, a0
	lw	a0, 0(a1)
	bnei	a0, -1, .read_or_network_else_28
	lw	a0, 36(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	b	.read_or_network_cont_29
.read_or_network_else_18:
	sw	a0, 44(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bnei	a0, -1, .read_or_network_else_20
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	lw	a1, 44(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 40(sp)	# restore
	sw	a1, 0(a0)
	mv	a1, a0
	lw	a0, 0(a1)
	bnei	a0, -1, .read_or_network_else_28
	lw	a0, 36(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	b	.read_or_network_cont_29
.read_or_network_else_20:
	sw	a0, 48(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bnei	a0, -1, .read_or_network_else_22
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	sw	a3, 12(gp)
	mv	a0, gp
	addi	gp, gp, 16
	lw	a1, 48(sp)	# restore
	sw	a1, 8(a0)
	lw	a1, 44(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 40(sp)	# restore
	sw	a1, 0(a0)
	mv	a1, a0
	lw	a0, 0(a1)
	bnei	a0, -1, .read_or_network_else_28
	lw	a0, 36(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	b	.read_or_network_cont_29
.read_or_network_else_22:
	sw	a0, 52(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bnei	a0, -1, .read_or_network_else_24
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	sw	a3, 12(gp)
	sw	a3, 16(gp)
	mv	a0, gp
	addi	gp, gp, 20
	lw	a1, 52(sp)	# restore
	sw	a1, 12(a0)
	lw	a1, 48(sp)	# restore
	sw	a1, 8(a0)
	lw	a1, 44(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 40(sp)	# restore
	sw	a1, 0(a0)
	mv	a1, a0
	lw	a0, 0(a1)
	bnei	a0, -1, .read_or_network_else_28
	lw	a0, 36(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	b	.read_or_network_cont_29
.read_or_network_else_24:
	sw	a0, 56(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bnei	a0, -1, .read_or_network_else_26
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	sw	a3, 12(gp)
	sw	a3, 16(gp)
	sw	a3, 20(gp)
	mv	a0, gp
	addi	gp, gp, 24
	lw	a1, 56(sp)	# restore
	sw	a1, 16(a0)
	lw	a1, 52(sp)	# restore
	sw	a1, 12(a0)
	lw	a1, 48(sp)	# restore
	sw	a1, 8(a0)
	lw	a1, 44(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 40(sp)	# restore
	sw	a1, 0(a0)
	mv	a1, a0
	lw	a0, 0(a1)
	bnei	a0, -1, .read_or_network_else_28
	lw	a0, 36(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	b	.read_or_network_cont_29
.read_or_network_else_26:
	sw	a0, 60(sp)	# save
	li	a0, 6
	call	read_net_item_2729
	lw	a1, 60(sp)	# restore
	sw	a1, 20(a0)
	lw	a1, 56(sp)	# restore
	sw	a1, 16(a0)
	lw	a1, 52(sp)	# restore
	sw	a1, 12(a0)
	lw	a1, 48(sp)	# restore
	sw	a1, 8(a0)
	lw	a1, 44(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 40(sp)	# restore
	sw	a1, 0(a0)
	mv	a1, a0
	lw	a0, 0(a1)
	bnei	a0, -1, .read_or_network_else_28
	lw	a0, 36(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	b	.read_or_network_cont_29
.read_or_network_else_28:
	lw	a0, 36(sp)	# restore
	addi	a2, a0, 1
	call	min_caml_read_int
	li	a3, -1
	sw	a1, 64(sp)	# save
	sw	a2, 68(sp)	# save
	bnei	a0, -1, .read_or_network_else_30
	sw	a3, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	mv	a1, a0
	lw	a0, 0(a1)
	bnei	a0, -1, .read_or_network_else_40
	lw	a0, 68(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	b	.read_or_network_cont_41
.read_or_network_else_30:
	sw	a0, 72(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bnei	a0, -1, .read_or_network_else_32
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 72(sp)	# restore
	sw	a1, 0(a0)
	mv	a1, a0
	lw	a0, 0(a1)
	bnei	a0, -1, .read_or_network_else_40
	lw	a0, 68(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	b	.read_or_network_cont_41
.read_or_network_else_32:
	sw	a0, 76(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bnei	a0, -1, .read_or_network_else_34
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	lw	a1, 76(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 72(sp)	# restore
	sw	a1, 0(a0)
	mv	a1, a0
	lw	a0, 0(a1)
	bnei	a0, -1, .read_or_network_else_40
	lw	a0, 68(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	b	.read_or_network_cont_41
.read_or_network_else_34:
	sw	a0, 80(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bnei	a0, -1, .read_or_network_else_36
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	sw	a3, 12(gp)
	mv	a0, gp
	addi	gp, gp, 16
	lw	a1, 80(sp)	# restore
	sw	a1, 8(a0)
	lw	a1, 76(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 72(sp)	# restore
	sw	a1, 0(a0)
	mv	a1, a0
	lw	a0, 0(a1)
	bnei	a0, -1, .read_or_network_else_40
	lw	a0, 68(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	b	.read_or_network_cont_41
.read_or_network_else_36:
	sw	a0, 84(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bnei	a0, -1, .read_or_network_else_38
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	sw	a3, 12(gp)
	sw	a3, 16(gp)
	mv	a0, gp
	addi	gp, gp, 20
	lw	a1, 84(sp)	# restore
	sw	a1, 12(a0)
	lw	a1, 80(sp)	# restore
	sw	a1, 8(a0)
	lw	a1, 76(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 72(sp)	# restore
	sw	a1, 0(a0)
	mv	a1, a0
	lw	a0, 0(a1)
	bnei	a0, -1, .read_or_network_else_40
	lw	a0, 68(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	b	.read_or_network_cont_41
.read_or_network_else_38:
	sw	a0, 88(sp)	# save
	li	a0, 5
	call	read_net_item_2729
	lw	a1, 88(sp)	# restore
	sw	a1, 16(a0)
	lw	a1, 84(sp)	# restore
	sw	a1, 12(a0)
	lw	a1, 80(sp)	# restore
	sw	a1, 8(a0)
	lw	a1, 76(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 72(sp)	# restore
	sw	a1, 0(a0)
	mv	a1, a0
	lw	a0, 0(a1)
	bnei	a0, -1, .read_or_network_else_40
	lw	a0, 68(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	b	.read_or_network_cont_41
.read_or_network_else_40:
	lw	a0, 68(sp)	# restore
	addi	a2, a0, 1
	call	min_caml_read_int
	li	a3, -1
	sw	a1, 92(sp)	# save
	sw	a2, 96(sp)	# save
	bnei	a0, -1, .read_or_network_else_42
	sw	a3, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	mv	a1, a0
	lw	a0, 0(a1)
	bnei	a0, -1, .read_or_network_else_50
	lw	a0, 96(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	b	.read_or_network_cont_51
.read_or_network_else_42:
	sw	a0, 100(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bnei	a0, -1, .read_or_network_else_44
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 100(sp)	# restore
	sw	a1, 0(a0)
	mv	a1, a0
	lw	a0, 0(a1)
	bnei	a0, -1, .read_or_network_else_50
	lw	a0, 96(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	b	.read_or_network_cont_51
.read_or_network_else_44:
	sw	a0, 104(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bnei	a0, -1, .read_or_network_else_46
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	lw	a1, 104(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 100(sp)	# restore
	sw	a1, 0(a0)
	mv	a1, a0
	lw	a0, 0(a1)
	bnei	a0, -1, .read_or_network_else_50
	lw	a0, 96(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	b	.read_or_network_cont_51
.read_or_network_else_46:
	sw	a0, 108(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bnei	a0, -1, .read_or_network_else_48
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	sw	a3, 12(gp)
	mv	a0, gp
	addi	gp, gp, 16
	lw	a1, 108(sp)	# restore
	sw	a1, 8(a0)
	lw	a1, 104(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 100(sp)	# restore
	sw	a1, 0(a0)
	mv	a1, a0
	lw	a0, 0(a1)
	bnei	a0, -1, .read_or_network_else_50
	lw	a0, 96(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	b	.read_or_network_cont_51
.read_or_network_else_48:
	sw	a0, 112(sp)	# save
	li	a0, 4
	call	read_net_item_2729
	lw	a1, 112(sp)	# restore
	sw	a1, 12(a0)
	lw	a1, 108(sp)	# restore
	sw	a1, 8(a0)
	lw	a1, 104(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 100(sp)	# restore
	sw	a1, 0(a0)
	mv	a1, a0
	lw	a0, 0(a1)
	bnei	a0, -1, .read_or_network_else_50
	lw	a0, 96(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	b	.read_or_network_cont_51
.read_or_network_else_50:
	lw	a0, 96(sp)	# restore
	addi	a0, a0, 1
	sw	a1, 116(sp)	# save
	call	read_or_network_2731
	lw	a1, 96(sp)	# restore
	slli	a1, a1, 2
	lw	a2, 116(sp)	# restore
	add	t6, a0, a1
	sw	a2, 0(t6)
.read_or_network_cont_51:
	lw	a1, 68(sp)	# restore
	slli	a1, a1, 2
	lw	a2, 92(sp)	# restore
	add	t6, a0, a1
	sw	a2, 0(t6)
.read_or_network_cont_41:
	lw	a1, 36(sp)	# restore
	slli	a1, a1, 2
	lw	a2, 64(sp)	# restore
	add	t6, a0, a1
	sw	a2, 0(t6)
.read_or_network_cont_29:
	lw	a1, 0(sp)	# restore
	slli	a1, a1, 2
	lw	a2, 32(sp)	# restore
	add	t6, a0, a1
	sw	a2, 0(t6)
	lw	ra, 120(sp)
	addi	sp, sp, 124
	jr	ra
read_and_network_2733:
	addi	sp, sp, -108
	sw	ra, 104(sp)
	sw	a0, 0(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_1
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.read_and_network_cont_2
.read_and_network_else_1:
	sw	a0, 4(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_3
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.read_and_network_cont_4
.read_and_network_else_3:
	sw	a0, 8(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_5
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	b	.read_and_network_cont_6
.read_and_network_else_5:
	sw	a0, 12(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_7
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	mv	a0, gp
	addi	gp, gp, 16
	b	.read_and_network_cont_8
.read_and_network_else_7:
	sw	a0, 16(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_9
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	sw	a1, 16(gp)
	mv	a0, gp
	addi	gp, gp, 20
	b	.read_and_network_cont_10
.read_and_network_else_9:
	sw	a0, 20(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_11
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	sw	a1, 16(gp)
	sw	a1, 20(gp)
	mv	a0, gp
	addi	gp, gp, 24
	b	.read_and_network_cont_12
.read_and_network_else_11:
	sw	a0, 24(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_13
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	sw	a1, 16(gp)
	sw	a1, 20(gp)
	sw	a1, 24(gp)
	mv	a0, gp
	addi	gp, gp, 28
	b	.read_and_network_cont_14
.read_and_network_else_13:
	sw	a0, 28(sp)	# save
	li	a0, 7
	call	read_net_item_2729
	lw	a1, 28(sp)	# restore
	sw	a1, 24(a0)
.read_and_network_cont_14:
	lw	a1, 24(sp)	# restore
	sw	a1, 20(a0)
.read_and_network_cont_12:
	lw	a1, 20(sp)	# restore
	sw	a1, 16(a0)
.read_and_network_cont_10:
	lw	a1, 16(sp)	# restore
	sw	a1, 12(a0)
.read_and_network_cont_8:
	lw	a1, 12(sp)	# restore
	sw	a1, 8(a0)
.read_and_network_cont_6:
	lw	a1, 8(sp)	# restore
	sw	a1, 4(a0)
.read_and_network_cont_4:
	lw	a1, 4(sp)	# restore
	sw	a1, 0(a0)
.read_and_network_cont_2:
	lw	a1, 0(a0)
	bnei	a1, -1, .read_and_network_else_15
	lw	ra, 104(sp)
	addi	sp, sp, 108
	jr	ra
.read_and_network_else_15:
	lw	a1, 0(sp)	# restore
	slli	a2, a1, 2
	swl	a0, min_caml_and_net(a2)
	addi	a0, a1, 1
	sw	a0, 32(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_17
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.read_and_network_cont_18
.read_and_network_else_17:
	sw	a0, 36(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_19
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.read_and_network_cont_20
.read_and_network_else_19:
	sw	a0, 40(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_21
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	b	.read_and_network_cont_22
.read_and_network_else_21:
	sw	a0, 44(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_23
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	mv	a0, gp
	addi	gp, gp, 16
	b	.read_and_network_cont_24
.read_and_network_else_23:
	sw	a0, 48(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_25
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	sw	a1, 16(gp)
	mv	a0, gp
	addi	gp, gp, 20
	b	.read_and_network_cont_26
.read_and_network_else_25:
	sw	a0, 52(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_27
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	sw	a1, 16(gp)
	sw	a1, 20(gp)
	mv	a0, gp
	addi	gp, gp, 24
	b	.read_and_network_cont_28
.read_and_network_else_27:
	sw	a0, 56(sp)	# save
	li	a0, 6
	call	read_net_item_2729
	lw	a1, 56(sp)	# restore
	sw	a1, 20(a0)
.read_and_network_cont_28:
	lw	a1, 52(sp)	# restore
	sw	a1, 16(a0)
.read_and_network_cont_26:
	lw	a1, 48(sp)	# restore
	sw	a1, 12(a0)
.read_and_network_cont_24:
	lw	a1, 44(sp)	# restore
	sw	a1, 8(a0)
.read_and_network_cont_22:
	lw	a1, 40(sp)	# restore
	sw	a1, 4(a0)
.read_and_network_cont_20:
	lw	a1, 36(sp)	# restore
	sw	a1, 0(a0)
.read_and_network_cont_18:
	lw	a1, 0(a0)
	bnei	a1, -1, .read_and_network_else_29
	lw	ra, 104(sp)
	addi	sp, sp, 108
	jr	ra
.read_and_network_else_29:
	lw	a1, 32(sp)	# restore
	slli	a2, a1, 2
	swl	a0, min_caml_and_net(a2)
	addi	a0, a1, 1
	sw	a0, 60(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_31
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.read_and_network_cont_32
.read_and_network_else_31:
	sw	a0, 64(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_33
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.read_and_network_cont_34
.read_and_network_else_33:
	sw	a0, 68(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_35
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	b	.read_and_network_cont_36
.read_and_network_else_35:
	sw	a0, 72(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_37
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	mv	a0, gp
	addi	gp, gp, 16
	b	.read_and_network_cont_38
.read_and_network_else_37:
	sw	a0, 76(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_39
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	sw	a1, 16(gp)
	mv	a0, gp
	addi	gp, gp, 20
	b	.read_and_network_cont_40
.read_and_network_else_39:
	sw	a0, 80(sp)	# save
	li	a0, 5
	call	read_net_item_2729
	lw	a1, 80(sp)	# restore
	sw	a1, 16(a0)
.read_and_network_cont_40:
	lw	a1, 76(sp)	# restore
	sw	a1, 12(a0)
.read_and_network_cont_38:
	lw	a1, 72(sp)	# restore
	sw	a1, 8(a0)
.read_and_network_cont_36:
	lw	a1, 68(sp)	# restore
	sw	a1, 4(a0)
.read_and_network_cont_34:
	lw	a1, 64(sp)	# restore
	sw	a1, 0(a0)
.read_and_network_cont_32:
	lw	a1, 0(a0)
	bnei	a1, -1, .read_and_network_else_41
	lw	ra, 104(sp)
	addi	sp, sp, 108
	jr	ra
.read_and_network_else_41:
	lw	a1, 60(sp)	# restore
	slli	a2, a1, 2
	swl	a0, min_caml_and_net(a2)
	addi	a0, a1, 1
	sw	a0, 84(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_43
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.read_and_network_cont_44
.read_and_network_else_43:
	sw	a0, 88(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_45
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.read_and_network_cont_46
.read_and_network_else_45:
	sw	a0, 92(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_47
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	b	.read_and_network_cont_48
.read_and_network_else_47:
	sw	a0, 96(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .read_and_network_else_49
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	mv	a0, gp
	addi	gp, gp, 16
	b	.read_and_network_cont_50
.read_and_network_else_49:
	sw	a0, 100(sp)	# save
	li	a0, 4
	call	read_net_item_2729
	lw	a1, 100(sp)	# restore
	sw	a1, 12(a0)
.read_and_network_cont_50:
	lw	a1, 96(sp)	# restore
	sw	a1, 8(a0)
.read_and_network_cont_48:
	lw	a1, 92(sp)	# restore
	sw	a1, 4(a0)
.read_and_network_cont_46:
	lw	a1, 88(sp)	# restore
	sw	a1, 0(a0)
.read_and_network_cont_44:
	lw	a1, 0(a0)
	bnei	a1, -1, .read_and_network_else_51
	lw	ra, 104(sp)
	addi	sp, sp, 108
	jr	ra
.read_and_network_else_51:
	lw	a1, 84(sp)	# restore
	slli	a2, a1, 2
	swl	a0, min_caml_and_net(a2)
	addi	a0, a1, 1
	call	read_and_network_2733
	lw	ra, 104(sp)
	addi	sp, sp, 108
	jr	ra
solver_rect_2746:
	flw	fa3, 0(a1)
	feq	a2, fa3, fzero
	bne	a2, zero, .solver_rect_else_1
	lw	a2, 24(a0)
	lw	a3, 16(a0)
	flw	fa3, 0(a1)
	fle	a4, fzero, fa3
	xori	a4, a4, 1
	xor	a2, a2, a4
	flw	fa3, 0(a3)
	bne	a2, zero, .solver_rect_cont_3
	fneg	fa3, fa3
.solver_rect_cont_3:
	fsub	fa3, fa3, fa0
	flw	fa4, 0(a1)
	fdiv	fa3, fa3, fa4
	flw	fa4, 4(a3)
	flw	fa5, 4(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa1
	fabs	fa5, fa5
	fle	a2, fa4, fa5
	bne	a2, zero, .solver_rect_else_1
	flw	fa4, 8(a3)
	flw	fa5, 8(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa2
	fabs	fa5, fa5
	fle	a2, fa4, fa5
	bne	a2, zero, .solver_rect_else_1
	fswd	fa3, min_caml_solver_dist(0)
	li	a2, 1
	li	a0, 1
	jr	ra
.solver_rect_else_1:
	flw	fa3, 4(a1)
	feq	a2, fa3, fzero
	bne	a2, zero, .solver_rect_else_9
	lw	a2, 24(a0)
	lw	a3, 16(a0)
	flw	fa3, 4(a1)
	fle	a4, fzero, fa3
	xori	a4, a4, 1
	xor	a2, a2, a4
	flw	fa3, 4(a3)
	bne	a2, zero, .solver_rect_cont_11
	fneg	fa3, fa3
.solver_rect_cont_11:
	fsub	fa3, fa3, fa1
	flw	fa4, 4(a1)
	fdiv	fa3, fa3, fa4
	flw	fa4, 8(a3)
	flw	fa5, 8(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa2
	fabs	fa5, fa5
	fle	a2, fa4, fa5
	bne	a2, zero, .solver_rect_else_9
	flw	fa4, 0(a3)
	flw	fa5, 0(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa0
	fabs	fa5, fa5
	fle	a2, fa4, fa5
	bne	a2, zero, .solver_rect_else_9
	fswd	fa3, min_caml_solver_dist(0)
	li	a2, 1
	li	a0, 2
	jr	ra
.solver_rect_else_9:
	flw	fa3, 8(a1)
	feq	a2, fa3, fzero
	bne	a2, zero, .solver_rect_else_17
	lw	a2, 24(a0)
	lw	a0, 16(a0)
	flw	fa3, 8(a1)
	fle	a3, fzero, fa3
	xori	a3, a3, 1
	xor	a2, a2, a3
	flw	fa3, 8(a0)
	bne	a2, zero, .solver_rect_cont_19
	fneg	fa3, fa3
.solver_rect_cont_19:
	fsub	fa2, fa3, fa2
	flw	fa3, 8(a1)
	fdiv	fa2, fa2, fa3
	flw	fa3, 0(a0)
	flw	fa4, 0(a1)
	fmul	fa4, fa2, fa4
	fadd	fa0, fa4, fa0
	fabs	fa0, fa0
	fle	a2, fa3, fa0
	bne	a2, zero, .solver_rect_else_17
	flw	fa0, 4(a0)
	flw	fa3, 4(a1)
	fmul	fa3, fa2, fa3
	fadd	fa1, fa3, fa1
	fabs	fa1, fa1
	fle	a0, fa0, fa1
	bne	a0, zero, .solver_rect_else_17
	fswd	fa2, min_caml_solver_dist(0)
	li	a0, 3
	jr	ra
.solver_rect_else_17:
	li	a0, 0
	jr	ra
solver_second_2771:
	flw	fa3, 0(a1)
	flw	fa4, 4(a1)
	flw	fa5, 8(a1)
	fmul	fa6, fa3, fa3
	lw	a2, 36(a0)
	lw	a3, 24(a0)
	lw	a4, 16(a0)
	lw	a5, 12(a0)
	lw	a0, 4(a0)
	flw	fa7, 0(a4)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa4, fa4
	flw	fs1, 4(a4)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	fmul	fa7, fa5, fa5
	flw	fs1, 8(a4)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	bne	a5, zero, .solver_second_else_1
	fmv	fa3, fa6
	b	.solver_second_cont_2
.solver_second_else_1:
	fmul	fa7, fa4, fa5
	flw	fs1, 0(a2)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	fmul	fa5, fa5, fa3
	flw	fa7, 4(a2)
	fmul	fa5, fa5, fa7
	fadd	fa5, fa6, fa5
	fmul	fa3, fa3, fa4
	flw	fa4, 8(a2)
	fmul	fa3, fa3, fa4
	fadd	fa3, fa5, fa3
.solver_second_cont_2:
	feq	a6, fa3, fzero
	bne	a6, zero, .solver_second_else_3
	flw	fa4, 0(a1)
	flw	fa5, 4(a1)
	flw	fa6, 8(a1)
	fmul	fa7, fa4, fa0
	flw	fs1, 0(a4)
	fmul	fa7, fa7, fs1
	fmul	fs1, fa5, fa1
	flw	fs2, 4(a4)
	fmul	fs1, fs1, fs2
	fadd	fa7, fa7, fs1
	fmul	fs1, fa6, fa2
	flw	fs2, 8(a4)
	fmul	fs1, fs1, fs2
	fadd	fa7, fa7, fs1
	bne	a5, zero, .solver_second_else_4
	fmv	fa4, fa7
	fmul	fa5, fa0, fa0
	flw	fa6, 0(a4)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa1, fa1
	flw	fa7, 4(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	flw	fa7, 8(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmv	fa0, fa5
	b	.solver_second_cont_7
.solver_second_else_4:
	fmul	fs1, fa6, fa1
	fmul	fs2, fa5, fa2
	fadd	fs1, fs1, fs2
	flw	fs2, 0(a2)
	fmul	fs1, fs1, fs2
	fmul	fs2, fa4, fa2
	fmul	fa6, fa6, fa0
	fadd	fa6, fs2, fa6
	flw	fs2, 4(a2)
	fmul	fa6, fa6, fs2
	fadd	fa6, fs1, fa6
	fmul	fa4, fa4, fa1
	fmul	fa5, fa5, fa0
	fadd	fa4, fa4, fa5
	flw	fa5, 8(a2)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa6, fa4
	fli	fa5, l_data_4
	fdiv	fa4, fa4, fa5
	fadd	fa4, fa7, fa4
	fmul	fa5, fa0, fa0
	flw	fa6, 0(a4)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa1, fa1
	flw	fa7, 4(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	flw	fa7, 8(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	bne	a5, zero, .solver_second_else_6
	fmv	fa0, fa5
	b	.solver_second_cont_7
.solver_second_else_6:
	fmul	fa6, fa1, fa2
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa2, fa2, fa0
	flw	fa6, 4(a2)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa5, fa2
	fmul	fa0, fa0, fa1
	flw	fa1, 8(a2)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
.solver_second_cont_7:
	bnei	a0, 3, .solver_second_cont_8
	fli	fa1, l_data_5
	fsub	fa0, fa0, fa1
.solver_second_cont_8:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fle	a0, fa0, fzero
	bne	a0, zero, .solver_second_else_3
	fsqrt	fa0, fa0
	bne	a3, zero, .solver_second_cont_10
	fneg	fa0, fa0
.solver_second_cont_10:
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	fswd	fa0, min_caml_solver_dist(0)
	li	a0, 1
	jr	ra
.solver_second_else_3:
	li	a0, 0
	jr	ra
solver_2777:
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	flw	fa0, 0(a2)
	lw	a3, 36(a0)
	lw	a4, 24(a0)
	lw	a5, 20(a0)
	lw	a6, 16(a0)
	lw	a7, 12(a0)
	lw	a0, 4(a0)
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	flw	fa1, 4(a2)
	flw	fa2, 4(a5)
	fsub	fa1, fa1, fa2
	flw	fa2, 8(a2)
	flw	fa3, 8(a5)
	fsub	fa2, fa2, fa3
	bnei	a0, 1, .solver_else_1
	flw	fa3, 0(a1)
	feq	a0, fa3, fzero
	bne	a0, zero, .solver_else_2
	flw	fa3, 0(a1)
	fle	a0, fzero, fa3
	xori	a0, a0, 1
	xor	a0, a4, a0
	flw	fa3, 0(a6)
	bne	a0, zero, .solver_cont_4
	fneg	fa3, fa3
.solver_cont_4:
	fsub	fa3, fa3, fa0
	flw	fa4, 0(a1)
	fdiv	fa3, fa3, fa4
	flw	fa4, 4(a6)
	flw	fa5, 4(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa1
	fabs	fa5, fa5
	fle	a0, fa4, fa5
	bne	a0, zero, .solver_else_2
	flw	fa4, 8(a6)
	flw	fa5, 8(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa2
	fabs	fa5, fa5
	fle	a0, fa4, fa5
	bne	a0, zero, .solver_else_2
	fswd	fa3, min_caml_solver_dist(0)
	li	a0, 1
	jr	ra
.solver_else_2:
	flw	fa3, 4(a1)
	feq	a0, fa3, fzero
	bne	a0, zero, .solver_else_10
	flw	fa3, 4(a1)
	fle	a0, fzero, fa3
	xori	a0, a0, 1
	xor	a0, a4, a0
	flw	fa3, 4(a6)
	bne	a0, zero, .solver_cont_12
	fneg	fa3, fa3
.solver_cont_12:
	fsub	fa3, fa3, fa1
	flw	fa4, 4(a1)
	fdiv	fa3, fa3, fa4
	flw	fa4, 8(a6)
	flw	fa5, 8(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa2
	fabs	fa5, fa5
	fle	a0, fa4, fa5
	bne	a0, zero, .solver_else_10
	flw	fa4, 0(a6)
	flw	fa5, 0(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa0
	fabs	fa5, fa5
	fle	a0, fa4, fa5
	bne	a0, zero, .solver_else_10
	fswd	fa3, min_caml_solver_dist(0)
	li	a0, 2
	jr	ra
.solver_else_10:
	flw	fa3, 8(a1)
	feq	a0, fa3, fzero
	bne	a0, zero, .solver_else_18
	flw	fa3, 8(a1)
	fle	a0, fzero, fa3
	xori	a0, a0, 1
	xor	a0, a4, a0
	flw	fa3, 8(a6)
	bne	a0, zero, .solver_cont_20
	fneg	fa3, fa3
.solver_cont_20:
	fsub	fa2, fa3, fa2
	flw	fa3, 8(a1)
	fdiv	fa2, fa2, fa3
	flw	fa3, 0(a6)
	flw	fa4, 0(a1)
	fmul	fa4, fa2, fa4
	fadd	fa0, fa4, fa0
	fabs	fa0, fa0
	fle	a0, fa3, fa0
	bne	a0, zero, .solver_else_18
	flw	fa0, 4(a6)
	flw	fa3, 4(a1)
	fmul	fa3, fa2, fa3
	fadd	fa1, fa3, fa1
	fabs	fa1, fa1
	fle	a0, fa0, fa1
	bne	a0, zero, .solver_else_18
	fswd	fa2, min_caml_solver_dist(0)
	li	a0, 3
	jr	ra
.solver_else_18:
	li	a0, 0
	jr	ra
.solver_else_1:
	bnei	a0, 2, .solver_else_26
	flw	fa3, 0(a1)
	flw	fa4, 0(a6)
	fmul	fa3, fa3, fa4
	flw	fa4, 4(a1)
	flw	fa5, 4(a6)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	flw	fa4, 8(a1)
	flw	fa5, 8(a6)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fle	a0, fa3, fzero
	bne	a0, zero, .solver_else_27
	flw	fa4, 0(a6)
	fmul	fa0, fa4, fa0
	flw	fa4, 4(a6)
	fmul	fa1, fa4, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a6)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fneg	fa0, fa0
	fdiv	fa0, fa0, fa3
	fswd	fa0, min_caml_solver_dist(0)
	li	a0, 1
	jr	ra
.solver_else_27:
	li	a0, 0
	jr	ra
.solver_else_26:
	flw	fa3, 0(a1)
	flw	fa4, 4(a1)
	flw	fa5, 8(a1)
	fmul	fa6, fa3, fa3
	flw	fa7, 0(a6)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa4, fa4
	flw	fs1, 4(a6)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	fmul	fa7, fa5, fa5
	flw	fs1, 8(a6)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	bne	a7, zero, .solver_else_28
	fmv	fa3, fa6
	b	.solver_cont_29
.solver_else_28:
	fmul	fa7, fa4, fa5
	flw	fs1, 0(a3)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	fmul	fa5, fa5, fa3
	flw	fa7, 4(a3)
	fmul	fa5, fa5, fa7
	fadd	fa5, fa6, fa5
	fmul	fa3, fa3, fa4
	flw	fa4, 8(a3)
	fmul	fa3, fa3, fa4
	fadd	fa3, fa5, fa3
.solver_cont_29:
	feq	a2, fa3, fzero
	bne	a2, zero, .solver_else_30
	flw	fa4, 0(a1)
	flw	fa5, 4(a1)
	flw	fa6, 8(a1)
	fmul	fa7, fa4, fa0
	flw	fs1, 0(a6)
	fmul	fa7, fa7, fs1
	fmul	fs1, fa5, fa1
	flw	fs2, 4(a6)
	fmul	fs1, fs1, fs2
	fadd	fa7, fa7, fs1
	fmul	fs1, fa6, fa2
	flw	fs2, 8(a6)
	fmul	fs1, fs1, fs2
	fadd	fa7, fa7, fs1
	bne	a7, zero, .solver_else_31
	fmv	fa4, fa7
	fmul	fa5, fa0, fa0
	flw	fa6, 0(a6)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa1, fa1
	flw	fa7, 4(a6)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	flw	fa7, 8(a6)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmv	fa0, fa5
	b	.solver_cont_34
.solver_else_31:
	fmul	fs1, fa6, fa1
	fmul	fs2, fa5, fa2
	fadd	fs1, fs1, fs2
	flw	fs2, 0(a3)
	fmul	fs1, fs1, fs2
	fmul	fs2, fa4, fa2
	fmul	fa6, fa6, fa0
	fadd	fa6, fs2, fa6
	flw	fs2, 4(a3)
	fmul	fa6, fa6, fs2
	fadd	fa6, fs1, fa6
	fmul	fa4, fa4, fa1
	fmul	fa5, fa5, fa0
	fadd	fa4, fa4, fa5
	flw	fa5, 8(a3)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa6, fa4
	fli	fa5, l_data_4
	fdiv	fa4, fa4, fa5
	fadd	fa4, fa7, fa4
	fmul	fa5, fa0, fa0
	flw	fa6, 0(a6)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa1, fa1
	flw	fa7, 4(a6)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	flw	fa7, 8(a6)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	bne	a7, zero, .solver_else_33
	fmv	fa0, fa5
	b	.solver_cont_34
.solver_else_33:
	fmul	fa6, fa1, fa2
	flw	fa7, 0(a3)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa2, fa2, fa0
	flw	fa6, 4(a3)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa5, fa2
	fmul	fa0, fa0, fa1
	flw	fa1, 8(a3)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
.solver_cont_34:
	bnei	a0, 3, .solver_cont_35
	fli	fa1, l_data_5
	fsub	fa0, fa0, fa1
.solver_cont_35:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fle	a0, fa0, fzero
	bne	a0, zero, .solver_else_30
	fsqrt	fa0, fa0
	bne	a4, zero, .solver_cont_37
	fneg	fa0, fa0
.solver_cont_37:
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	fswd	fa0, min_caml_solver_dist(0)
	li	a0, 1
	jr	ra
.solver_else_30:
	li	a0, 0
	jr	ra
solver_rect_fast_2781:
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa0
	flw	fa4, 4(a2)
	fmul	fa3, fa3, fa4
	lw	a0, 16(a0)
	flw	fa4, 4(a0)
	flw	fa5, 4(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa1
	fabs	fa5, fa5
	fle	a3, fa4, fa5
	bne	a3, zero, .solver_rect_fast_else_1
	flw	fa4, 8(a0)
	flw	fa5, 8(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa2
	fabs	fa5, fa5
	fle	a3, fa4, fa5
	bne	a3, zero, .solver_rect_fast_else_1
	flw	fa4, 4(a2)
	feq	a3, fa4, fzero
	xori	a3, a3, 1
	bne	a3, zero, .solver_rect_fast_else_5
	flw	fa3, 8(a2)
	fsub	fa3, fa3, fa1
	flw	fa4, 12(a2)
	fmul	fa3, fa3, fa4
	flw	fa4, 0(a0)
	flw	fa5, 0(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa0
	fabs	fa5, fa5
	fle	a3, fa4, fa5
	bne	a3, zero, .solver_rect_fast_else_6
	flw	fa4, 8(a0)
	flw	fa5, 8(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa2
	fabs	fa5, fa5
	fle	a3, fa4, fa5
	bne	a3, zero, .solver_rect_fast_else_6
	flw	fa4, 12(a2)
	feq	a3, fa4, fzero
	xori	a3, a3, 1
	b	.solver_rect_fast_cont_7
.solver_rect_fast_else_1:
	flw	fa3, 8(a2)
	fsub	fa3, fa3, fa1
	flw	fa4, 12(a2)
	fmul	fa3, fa3, fa4
	flw	fa4, 0(a0)
	flw	fa5, 0(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa0
	fabs	fa5, fa5
	fle	a3, fa4, fa5
	bne	a3, zero, .solver_rect_fast_else_6
	flw	fa4, 8(a0)
	flw	fa5, 8(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa2
	fabs	fa5, fa5
	fle	a3, fa4, fa5
	bne	a3, zero, .solver_rect_fast_else_6
	flw	fa4, 12(a2)
	feq	a3, fa4, fzero
	xori	a3, a3, 1
	b	.solver_rect_fast_cont_7
.solver_rect_fast_else_6:
	li	a3, 0
.solver_rect_fast_cont_7:
	bne	a3, zero, .solver_rect_fast_else_10
	flw	fa3, 16(a2)
	fsub	fa2, fa3, fa2
	flw	fa3, 20(a2)
	fmul	fa2, fa2, fa3
	flw	fa3, 0(a0)
	flw	fa4, 0(a1)
	fmul	fa4, fa2, fa4
	fadd	fa0, fa4, fa0
	fabs	fa0, fa0
	fle	a3, fa3, fa0
	bne	a3, zero, .solver_rect_fast_else_11
	flw	fa0, 4(a0)
	flw	fa3, 4(a1)
	fmul	fa3, fa2, fa3
	fadd	fa1, fa3, fa1
	fabs	fa1, fa1
	fle	a0, fa0, fa1
	bne	a0, zero, .solver_rect_fast_else_11
	flw	fa0, 20(a2)
	feq	a0, fa0, fzero
	xori	a0, a0, 1
	bne	a0, zero, .solver_rect_fast_else_15
	jr	ra
.solver_rect_fast_else_11:
	li	a0, 0
	jr	ra
.solver_rect_fast_else_15:
	fswd	fa2, min_caml_solver_dist(0)
	li	a0, 3
	jr	ra
.solver_rect_fast_else_10:
	fswd	fa3, min_caml_solver_dist(0)
	li	a0, 2
	jr	ra
.solver_rect_fast_else_5:
	fswd	fa3, min_caml_solver_dist(0)
	li	a0, 1
	jr	ra
solver_second_fast_2794:
	flw	fa3, 0(a1)
	feq	a2, fa3, fzero
	bne	a2, zero, .solver_second_fast_else_1
	flw	fa4, 4(a1)
	fmul	fa4, fa4, fa0
	flw	fa5, 8(a1)
	fmul	fa5, fa5, fa1
	fadd	fa4, fa4, fa5
	flw	fa5, 12(a1)
	fmul	fa5, fa5, fa2
	fadd	fa4, fa4, fa5
	fmul	fa5, fa0, fa0
	lw	a2, 36(a0)
	lw	a3, 24(a0)
	lw	a4, 16(a0)
	lw	a5, 12(a0)
	lw	a0, 4(a0)
	flw	fa6, 0(a4)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa1, fa1
	flw	fa7, 4(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	flw	fa7, 8(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	bne	a5, zero, .solver_second_fast_else_2
	fmv	fa0, fa5
	b	.solver_second_fast_cont_3
.solver_second_fast_else_2:
	fmul	fa6, fa1, fa2
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa2, fa2, fa0
	flw	fa6, 4(a2)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa5, fa2
	fmul	fa0, fa0, fa1
	flw	fa1, 8(a2)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
.solver_second_fast_cont_3:
	bnei	a0, 3, .solver_second_fast_cont_4
	fli	fa1, l_data_5
	fsub	fa0, fa0, fa1
.solver_second_fast_cont_4:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fle	a0, fa0, fzero
	bne	a0, zero, .solver_second_fast_else_1
	bne	a3, zero, .solver_second_fast_else_6
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	flw	fa1, 16(a1)
	fmul	fa0, fa0, fa1
	fswd	fa0, min_caml_solver_dist(0)
	li	a0, 1
	jr	ra
.solver_second_fast_else_6:
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	flw	fa1, 16(a1)
	fmul	fa0, fa0, fa1
	fswd	fa0, min_caml_solver_dist(0)
	li	a0, 1
	jr	ra
.solver_second_fast_else_1:
	li	a0, 0
	jr	ra
solver_fast_2800:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	slli	a3, a0, 2
	lwl	a3, min_caml_objects(a3)
	flw	fa0, 0(a2)
	lw	a4, 36(a3)
	lw	a5, 24(a3)
	lw	a6, 20(a3)
	lw	a7, 16(a3)
	lw	s1, 12(a3)
	lw	s2, 4(a3)
	flw	fa1, 0(a6)
	fsub	fa0, fa0, fa1
	flw	fa1, 4(a2)
	flw	fa2, 4(a6)
	fsub	fa1, fa1, fa2
	flw	fa2, 8(a2)
	flw	fa3, 8(a6)
	fsub	fa2, fa2, fa3
	lw	a2, 4(a1)
	lw	a1, 0(a1)
	slli	a0, a0, 2
	add	t6, a2, a0
	lw	a2, 0(t6)
	bnei	s2, 1, .solver_fast_else_1
	mv	a0, a3
	call	solver_rect_fast_2781
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
.solver_fast_else_1:
	bnei	s2, 2, .solver_fast_else_2
	flw	fa3, 0(a2)
	fle	a0, fzero, fa3
	bne	a0, zero, .solver_fast_else_3
	flw	fa3, 4(a2)
	fmul	fa0, fa3, fa0
	flw	fa3, 8(a2)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 12(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_solver_dist(0)
	li	a0, 1
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
.solver_fast_else_3:
	li	a0, 0
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
.solver_fast_else_2:
	flw	fa3, 0(a2)
	feq	a0, fa3, fzero
	bne	a0, zero, .solver_fast_else_4
	flw	fa4, 4(a2)
	fmul	fa4, fa4, fa0
	flw	fa5, 8(a2)
	fmul	fa5, fa5, fa1
	fadd	fa4, fa4, fa5
	flw	fa5, 12(a2)
	fmul	fa5, fa5, fa2
	fadd	fa4, fa4, fa5
	fmul	fa5, fa0, fa0
	flw	fa6, 0(a7)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa1, fa1
	flw	fa7, 4(a7)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	flw	fa7, 8(a7)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	bne	s1, zero, .solver_fast_else_5
	fmv	fa0, fa5
	b	.solver_fast_cont_6
.solver_fast_else_5:
	fmul	fa6, fa1, fa2
	flw	fa7, 0(a4)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa2, fa2, fa0
	flw	fa6, 4(a4)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa5, fa2
	fmul	fa0, fa0, fa1
	flw	fa1, 8(a4)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
.solver_fast_cont_6:
	bnei	s2, 3, .solver_fast_cont_7
	fli	fa1, l_data_5
	fsub	fa0, fa0, fa1
.solver_fast_cont_7:
	fmul	fa1, fa4, fa4
	fmul	fa0, fa3, fa0
	fsub	fa0, fa1, fa0
	fle	a0, fa0, fzero
	bne	a0, zero, .solver_fast_else_4
	bne	a5, zero, .solver_fast_else_9
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	flw	fa1, 16(a2)
	fmul	fa0, fa0, fa1
	fswd	fa0, min_caml_solver_dist(0)
	b	.solver_fast_cont_10
.solver_fast_else_9:
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	flw	fa1, 16(a2)
	fmul	fa0, fa0, fa1
	fswd	fa0, min_caml_solver_dist(0)
.solver_fast_cont_10:
	li	a0, 1
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
.solver_fast_else_4:
	li	a0, 0
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_fast2_2818:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	slli	a2, a0, 2
	lwl	a2, min_caml_objects(a2)
	lw	a3, 40(a2)
	lw	a4, 24(a2)
	lw	a5, 4(a2)
	flw	fa0, 0(a3)
	flw	fa1, 4(a3)
	flw	fa2, 8(a3)
	lw	a6, 4(a1)
	lw	a1, 0(a1)
	slli	a0, a0, 2
	add	t6, a6, a0
	lw	a0, 0(t6)
	bnei	a5, 1, .solver_fast2_else_1
	mv	t4, a2
	mv	a2, a0
	mv	a0, t4
	call	solver_rect_fast_2781
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
.solver_fast2_else_1:
	bnei	a5, 2, .solver_fast2_else_2
	flw	fa0, 0(a0)
	fle	a1, fzero, fa0
	bne	a1, zero, .solver_fast2_else_3
	flw	fa0, 0(a0)
	flw	fa1, 12(a3)
	fmul	fa0, fa0, fa1
	fswd	fa0, min_caml_solver_dist(0)
	li	a0, 1
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
.solver_fast2_else_3:
	li	a0, 0
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
.solver_fast2_else_2:
	flw	fa3, 0(a0)
	feq	a1, fa3, fzero
	bne	a1, zero, .solver_fast2_else_4
	flw	fa4, 4(a0)
	fmul	fa0, fa4, fa0
	flw	fa4, 8(a0)
	fmul	fa1, fa4, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 12(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 12(a3)
	fmul	fa2, fa0, fa0
	fmul	fa1, fa3, fa1
	fsub	fa1, fa2, fa1
	fle	a1, fa1, fzero
	bne	a1, zero, .solver_fast2_else_4
	bne	a4, zero, .solver_fast2_else_6
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	flw	fa1, 16(a0)
	fmul	fa0, fa0, fa1
	fswd	fa0, min_caml_solver_dist(0)
	b	.solver_fast2_cont_7
.solver_fast2_else_6:
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 16(a0)
	fmul	fa0, fa0, fa1
	fswd	fa0, min_caml_solver_dist(0)
.solver_fast2_cont_7:
	li	a0, 1
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
.solver_fast2_else_4:
	li	a0, 0
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
setup_rect_table_2821:
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	fsw	fzero, 12(gp)
	fsw	fzero, 16(gp)
	fsw	fzero, 20(gp)
	mv	a2, gp
	addi	gp, gp, 24
	flw	fa0, 0(a0)
	feq	a3, fa0, fzero
	bne	a3, zero, .setup_rect_table_else_1
	lw	a3, 24(a1)
	lw	a4, 16(a1)
	flw	fa0, 0(a0)
	fle	a5, fzero, fa0
	xori	a5, a5, 1
	xor	a3, a3, a5
	flw	fa0, 0(a4)
	bne	a3, zero, .setup_rect_table_cont_3
	fneg	fa0, fa0
.setup_rect_table_cont_3:
	fsw	fa0, 0(a2)
	fli	fa0, l_data_5
	flw	fa1, 0(a0)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 4(a2)
	b	.setup_rect_table_cont_2
.setup_rect_table_else_1:
	fsw	fzero, 4(a2)
.setup_rect_table_cont_2:
	flw	fa0, 4(a0)
	feq	a3, fa0, fzero
	bne	a3, zero, .setup_rect_table_else_4
	lw	a3, 24(a1)
	lw	a4, 16(a1)
	flw	fa0, 4(a0)
	fle	a5, fzero, fa0
	xori	a5, a5, 1
	xor	a3, a3, a5
	flw	fa0, 4(a4)
	bne	a3, zero, .setup_rect_table_cont_6
	fneg	fa0, fa0
.setup_rect_table_cont_6:
	fsw	fa0, 8(a2)
	fli	fa0, l_data_5
	flw	fa1, 4(a0)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 12(a2)
	b	.setup_rect_table_cont_5
.setup_rect_table_else_4:
	fsw	fzero, 12(a2)
.setup_rect_table_cont_5:
	flw	fa0, 8(a0)
	feq	a3, fa0, fzero
	bne	a3, zero, .setup_rect_table_else_7
	lw	a3, 24(a1)
	lw	a1, 16(a1)
	flw	fa0, 8(a0)
	fle	a4, fzero, fa0
	xori	a4, a4, 1
	xor	a3, a3, a4
	flw	fa0, 8(a1)
	bne	a3, zero, .setup_rect_table_cont_9
	fneg	fa0, fa0
.setup_rect_table_cont_9:
	fsw	fa0, 16(a2)
	fli	fa0, l_data_5
	flw	fa1, 8(a0)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 20(a2)
	mv	a0, a2
	jr	ra
.setup_rect_table_else_7:
	fsw	fzero, 20(a2)
	mv	a0, a2
	jr	ra
setup_second_table_2827:
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	fsw	fzero, 12(gp)
	fsw	fzero, 16(gp)
	mv	a2, gp
	addi	gp, gp, 20
	flw	fa0, 0(a0)
	flw	fa1, 4(a0)
	flw	fa2, 8(a0)
	fmul	fa3, fa0, fa0
	lw	a3, 36(a1)
	lw	a4, 16(a1)
	lw	a1, 12(a1)
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	fmul	fa4, fa1, fa1
	flw	fa5, 4(a4)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa4, fa2, fa2
	flw	fa5, 8(a4)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	bne	a1, zero, .setup_second_table_else_1
	fmv	fa0, fa3
	flw	fa1, 0(a0)
	flw	fa2, 0(a4)
	fmul	fa1, fa1, fa2
	fneg	fa1, fa1
	flw	fa2, 4(a0)
	flw	fa3, 4(a4)
	fmul	fa2, fa2, fa3
	fneg	fa2, fa2
	flw	fa3, 8(a0)
	flw	fa4, 8(a4)
	fmul	fa3, fa3, fa4
	fneg	fa3, fa3
	fsw	fa0, 0(a2)
	fsw	fa1, 4(a2)
	fsw	fa2, 8(a2)
	fsw	fa3, 12(a2)
	b	.setup_second_table_cont_4
.setup_second_table_else_1:
	fmul	fa4, fa1, fa2
	flw	fa5, 0(a3)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa2, fa2, fa0
	flw	fa4, 4(a3)
	fmul	fa2, fa2, fa4
	fadd	fa2, fa3, fa2
	fmul	fa0, fa0, fa1
	flw	fa1, 8(a3)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
	flw	fa1, 0(a0)
	flw	fa2, 0(a4)
	fmul	fa1, fa1, fa2
	fneg	fa1, fa1
	flw	fa2, 4(a0)
	flw	fa3, 4(a4)
	fmul	fa2, fa2, fa3
	fneg	fa2, fa2
	flw	fa3, 8(a0)
	flw	fa4, 8(a4)
	fmul	fa3, fa3, fa4
	fneg	fa3, fa3
	fsw	fa0, 0(a2)
	bne	a1, zero, .setup_second_table_else_3
	fsw	fa1, 4(a2)
	fsw	fa2, 8(a2)
	fsw	fa3, 12(a2)
	b	.setup_second_table_cont_4
.setup_second_table_else_3:
	flw	fa4, 8(a0)
	flw	fa5, 4(a3)
	fmul	fa4, fa4, fa5
	flw	fa5, 4(a0)
	flw	fa6, 8(a3)
	fmul	fa5, fa5, fa6
	fadd	fa4, fa4, fa5
	fli	fa5, l_data_4
	fdiv	fa4, fa4, fa5
	fsub	fa1, fa1, fa4
	fsw	fa1, 4(a2)
	flw	fa1, 8(a0)
	flw	fa4, 0(a3)
	fmul	fa1, fa1, fa4
	flw	fa4, 0(a0)
	flw	fa6, 8(a3)
	fmul	fa4, fa4, fa6
	fadd	fa1, fa1, fa4
	fdiv	fa1, fa1, fa5
	fsub	fa1, fa2, fa1
	fsw	fa1, 8(a2)
	flw	fa1, 4(a0)
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	flw	fa2, 0(a0)
	flw	fa4, 4(a3)
	fmul	fa2, fa2, fa4
	fadd	fa1, fa1, fa2
	fdiv	fa1, fa1, fa5
	fsub	fa1, fa3, fa1
	fsw	fa1, 12(a2)
.setup_second_table_cont_4:
	feq	a0, fa0, fzero
	bne	a0, zero, .setup_second_table_cont_5
	fli	fa1, l_data_5
	fdiv	fa0, fa1, fa0
	fsw	fa0, 16(a2)
.setup_second_table_cont_5:
	mv	a0, a2
	jr	ra
iter_setup_dirvec_constants_2830:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	blt	a1, zero, iter_setup_dirvec_constants_ret
	slli	a2, a1, 2
	lwl	a2, min_caml_objects(a2)
	lw	a3, 4(a0)
	sw	a0, 0(sp)	# save
	lw	a0, 0(a0)
	lw	a4, 16(a2)
	lw	a5, 4(a2)
	sw	a0, 4(sp)	# save
	bnei	a5, 1, .iter_setup_dirvec_constants_else_1
	sw	a3, 8(sp)	# save
	sw	a1, 12(sp)	# save
	mv	a1, a2
	call	setup_rect_table_2821
	lw	a1, 12(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 8(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, iter_setup_dirvec_constants_ret
	slli	a1, a0, 2
	lwl	a1, min_caml_objects(a1)
	lw	a2, 16(a1)
	lw	a4, 4(a1)
	sw	a0, 16(sp)	# save
	bnei	a4, 1, .iter_setup_dirvec_constants_else_7
	lw	a0, 4(sp)	# restore
	sw	a3, 8(sp)	# save
	call	setup_rect_table_2821
	lw	a1, 16(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 8(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.iter_setup_dirvec_constants_cont_8
.iter_setup_dirvec_constants_else_1:
	bnei	a5, 2, .iter_setup_dirvec_constants_else_3
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	fsw	fzero, 12(gp)
	mv	a2, gp
	addi	gp, gp, 16
	flw	fa0, 0(a0)
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a0)
	flw	fa2, 4(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	flw	fa2, 8(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fle	a5, fa0, fzero
	bne	a5, zero, .iter_setup_dirvec_constants_else_5
	fli	fa1, l_data_6
	fdiv	fa1, fa1, fa0
	fsw	fa1, 0(a2)
	flw	fa1, 0(a4)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 4(a2)
	flw	fa1, 4(a4)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 8(a2)
	flw	fa1, 8(a4)
	fdiv	fa0, fa1, fa0
	fneg	fa0, fa0
	fsw	fa0, 12(a2)
	slli	a4, a1, 2
	add	t6, a3, a4
	sw	a2, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, iter_setup_dirvec_constants_ret
	slli	a1, a0, 2
	lwl	a1, min_caml_objects(a1)
	lw	a2, 16(a1)
	lw	a4, 4(a1)
	sw	a0, 16(sp)	# save
	bnei	a4, 1, .iter_setup_dirvec_constants_else_7
	lw	a0, 4(sp)	# restore
	sw	a3, 8(sp)	# save
	call	setup_rect_table_2821
	lw	a1, 16(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 8(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.iter_setup_dirvec_constants_cont_8
.iter_setup_dirvec_constants_else_5:
	fsw	fzero, 0(a2)
	slli	a4, a1, 2
	add	t6, a3, a4
	sw	a2, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, iter_setup_dirvec_constants_ret
	slli	a1, a0, 2
	lwl	a1, min_caml_objects(a1)
	lw	a2, 16(a1)
	lw	a4, 4(a1)
	sw	a0, 16(sp)	# save
	bnei	a4, 1, .iter_setup_dirvec_constants_else_7
	lw	a0, 4(sp)	# restore
	sw	a3, 8(sp)	# save
	call	setup_rect_table_2821
	lw	a1, 16(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 8(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.iter_setup_dirvec_constants_cont_8
.iter_setup_dirvec_constants_else_3:
	sw	a3, 8(sp)	# save
	sw	a1, 12(sp)	# save
	mv	a1, a2
	call	setup_second_table_2827
	lw	a1, 12(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 8(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, iter_setup_dirvec_constants_ret
	slli	a1, a0, 2
	lwl	a1, min_caml_objects(a1)
	lw	a2, 16(a1)
	lw	a4, 4(a1)
	sw	a0, 16(sp)	# save
	bnei	a4, 1, .iter_setup_dirvec_constants_else_7
	lw	a0, 4(sp)	# restore
	sw	a3, 8(sp)	# save
	call	setup_rect_table_2821
	lw	a1, 16(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 8(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.iter_setup_dirvec_constants_cont_8
.iter_setup_dirvec_constants_else_7:
	bnei	a4, 2, .iter_setup_dirvec_constants_else_9
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	fsw	fzero, 12(gp)
	mv	a1, gp
	addi	gp, gp, 16
	lw	a4, 4(sp)	# restore
	flw	fa0, 0(a4)
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a4)
	flw	fa2, 4(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a4)
	flw	fa2, 8(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fle	a4, fa0, fzero
	bne	a4, zero, .iter_setup_dirvec_constants_else_11
	fli	fa1, l_data_6
	fdiv	fa1, fa1, fa0
	fsw	fa1, 0(a1)
	flw	fa1, 0(a2)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 4(a1)
	flw	fa1, 4(a2)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 8(a1)
	flw	fa1, 8(a2)
	fdiv	fa0, fa1, fa0
	fneg	fa0, fa0
	fsw	fa0, 12(a1)
	slli	a2, a0, 2
	add	t6, a3, a2
	sw	a1, 0(t6)
	b	.iter_setup_dirvec_constants_cont_10
.iter_setup_dirvec_constants_else_11:
	fsw	fzero, 0(a1)
	slli	a2, a0, 2
	add	t6, a3, a2
	sw	a1, 0(t6)
	b	.iter_setup_dirvec_constants_cont_10
.iter_setup_dirvec_constants_else_9:
	lw	a0, 4(sp)	# restore
	sw	a3, 8(sp)	# save
	call	setup_second_table_2827
	lw	a1, 16(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 8(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
.iter_setup_dirvec_constants_cont_10:
.iter_setup_dirvec_constants_cont_8:
	lw	a0, 16(sp)	# restore
	addi	a1, a0, -1
	lw	a0, 0(sp)	# restore
	call	iter_setup_dirvec_constants_2830
iter_setup_dirvec_constants_ret:
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
setup_startp_constants_2835:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	blt	a1, zero, setup_startp_constants_ret
	slli	a2, a1, 2
	lwl	a2, min_caml_objects(a2)
	lw	a3, 40(a2)
	lw	a4, 36(a2)
	lw	a5, 20(a2)
	lw	a6, 16(a2)
	lw	a7, 12(a2)
	lw	a2, 4(a2)
	flw	fa0, 0(a0)
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	fsw	fa0, 0(a3)
	flw	fa0, 4(a0)
	flw	fa1, 4(a5)
	fsub	fa0, fa0, fa1
	fsw	fa0, 4(a3)
	flw	fa0, 8(a0)
	flw	fa1, 8(a5)
	fsub	fa0, fa0, fa1
	fsw	fa0, 8(a3)
	bnei	a2, 2, .setup_startp_constants_else_1
	flw	fa0, 0(a3)
	flw	fa1, 4(a3)
	flw	fa2, 8(a3)
	flw	fa3, 0(a6)
	fmul	fa0, fa3, fa0
	flw	fa3, 4(a6)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a6)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 12(a3)
	b	.setup_startp_constants_cont_2
.setup_startp_constants_else_1:
	bgti	a2, 2, .setup_startp_constants_else_3
	b	.setup_startp_constants_cont_4
.setup_startp_constants_else_3:
	flw	fa0, 0(a3)
	flw	fa1, 4(a3)
	flw	fa2, 8(a3)
	fmul	fa3, fa0, fa0
	flw	fa4, 0(a6)
	fmul	fa3, fa3, fa4
	fmul	fa4, fa1, fa1
	flw	fa5, 4(a6)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa4, fa2, fa2
	flw	fa5, 8(a6)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	bne	a7, zero, .setup_startp_constants_else_5
	fmv	fa0, fa3
	b	.setup_startp_constants_cont_6
.setup_startp_constants_else_5:
	fmul	fa4, fa1, fa2
	flw	fa5, 0(a4)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa2, fa2, fa0
	flw	fa4, 4(a4)
	fmul	fa2, fa2, fa4
	fadd	fa2, fa3, fa2
	fmul	fa0, fa0, fa1
	flw	fa1, 8(a4)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
.setup_startp_constants_cont_6:
	bnei	a2, 3, .setup_startp_constants_cont_7
	fli	fa1, l_data_5
	fsub	fa0, fa0, fa1
.setup_startp_constants_cont_7:
	fsw	fa0, 12(a3)
.setup_startp_constants_cont_4:
.setup_startp_constants_cont_2:
	addi	a1, a1, -1
	call	setup_startp_constants_2835
setup_startp_constants_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
is_outside_2855:
	lw	a1, 36(a0)
	lw	a2, 24(a0)
	lw	a3, 20(a0)
	lw	a4, 16(a0)
	lw	a5, 12(a0)
	lw	a0, 4(a0)
	flw	fa3, 0(a3)
	fsub	fa0, fa0, fa3
	flw	fa3, 4(a3)
	fsub	fa1, fa1, fa3
	flw	fa3, 8(a3)
	fsub	fa2, fa2, fa3
	bnei	a0, 1, .is_outside_else_1
	flw	fa3, 0(a4)
	fabs	fa0, fa0
	fle	a0, fa3, fa0
	bne	a0, zero, .is_outside_else_2
	flw	fa0, 4(a4)
	fabs	fa1, fa1
	fle	a0, fa0, fa1
	bne	a0, zero, .is_outside_else_2
	flw	fa0, 8(a4)
	fabs	fa1, fa2
	fle	a0, fa0, fa1
	xori	a0, a0, 1
	bne	a0, zero, .is_outside_else_6
	xori	a0, a2, 1
	jr	ra
.is_outside_else_2:
	xori	a0, a2, 1
	jr	ra
.is_outside_else_6:
	mv	a0, a2
	jr	ra
.is_outside_else_1:
	bnei	a0, 2, .is_outside_else_7
	flw	fa3, 0(a4)
	fmul	fa0, fa3, fa0
	flw	fa3, 4(a4)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fle	a0, fzero, fa0
	xor	a0, a2, a0
	jr	ra
.is_outside_else_7:
	fmul	fa3, fa0, fa0
	flw	fa4, 0(a4)
	fmul	fa3, fa3, fa4
	fmul	fa4, fa1, fa1
	flw	fa5, 4(a4)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa4, fa2, fa2
	flw	fa5, 8(a4)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	bne	a5, zero, .is_outside_else_8
	fmv	fa0, fa3
	b	.is_outside_cont_9
.is_outside_else_8:
	fmul	fa4, fa1, fa2
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa2, fa2, fa0
	flw	fa4, 4(a1)
	fmul	fa2, fa2, fa4
	fadd	fa2, fa3, fa2
	fmul	fa0, fa0, fa1
	flw	fa1, 8(a1)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
.is_outside_cont_9:
	bnei	a0, 3, .is_outside_cont_10
	fli	fa1, l_data_5
	fsub	fa0, fa0, fa1
.is_outside_cont_10:
	fle	a0, fzero, fa0
	xor	a0, a2, a0
	jr	ra
check_all_inside_2860:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	slli	a2, a0, 2
	add	t6, a1, a2
	lw	a2, 0(t6)
	bnei	a2, -1, .check_all_inside_else_1
	li	a0, 1
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
.check_all_inside_else_1:
	slli	a2, a2, 2
	lwl	a2, min_caml_objects(a2)
	lw	a3, 36(a2)
	lw	a4, 24(a2)
	lw	a5, 20(a2)
	lw	a6, 16(a2)
	lw	a7, 12(a2)
	lw	a2, 4(a2)
	flw	fa3, 0(a5)
	fsub	fa3, fa0, fa3
	flw	fa4, 4(a5)
	fsub	fa4, fa1, fa4
	flw	fa5, 8(a5)
	fsub	fa5, fa2, fa5
	bnei	a2, 1, .check_all_inside_else_2
	flw	fa6, 0(a6)
	fabs	fa3, fa3
	fle	a2, fa6, fa3
	bne	a2, zero, .check_all_inside_else_4
	flw	fa3, 4(a6)
	fabs	fa4, fa4
	fle	a2, fa3, fa4
	bne	a2, zero, .check_all_inside_else_4
	flw	fa3, 8(a6)
	fabs	fa4, fa5
	fle	a2, fa3, fa4
	xori	a2, a2, 1
	bne	a2, zero, .check_all_inside_else_8
	xori	a2, a4, 1
	b	.check_all_inside_cont_3
.check_all_inside_else_4:
	xori	a2, a4, 1
	b	.check_all_inside_cont_3
.check_all_inside_else_8:
	mv	a2, a4
	b	.check_all_inside_cont_3
.check_all_inside_else_2:
	bnei	a2, 2, .check_all_inside_else_10
	flw	fa6, 0(a6)
	fmul	fa3, fa6, fa3
	flw	fa6, 4(a6)
	fmul	fa4, fa6, fa4
	fadd	fa3, fa3, fa4
	flw	fa4, 8(a6)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fle	a2, fzero, fa3
	xor	a2, a4, a2
	b	.check_all_inside_cont_11
.check_all_inside_else_10:
	fmul	fa6, fa3, fa3
	flw	fa7, 0(a6)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa4, fa4
	flw	fs1, 4(a6)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	fmul	fa7, fa5, fa5
	flw	fs1, 8(a6)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	bne	a7, zero, .check_all_inside_else_12
	fmv	fa3, fa6
	b	.check_all_inside_cont_13
.check_all_inside_else_12:
	fmul	fa7, fa4, fa5
	flw	fs1, 0(a3)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	fmul	fa5, fa5, fa3
	flw	fa7, 4(a3)
	fmul	fa5, fa5, fa7
	fadd	fa5, fa6, fa5
	fmul	fa3, fa3, fa4
	flw	fa4, 8(a3)
	fmul	fa3, fa3, fa4
	fadd	fa3, fa5, fa3
.check_all_inside_cont_13:
	bnei	a2, 3, .check_all_inside_cont_14
	fli	fa4, l_data_5
	fsub	fa3, fa3, fa4
.check_all_inside_cont_14:
	fle	a2, fzero, fa3
	xor	a2, a4, a2
.check_all_inside_cont_11:
.check_all_inside_cont_3:
	bne	a2, zero, .check_all_inside_else_15
	addi	a0, a0, 1
	slli	a2, a0, 2
	add	t6, a1, a2
	lw	a2, 0(t6)
	bnei	a2, -1, .check_all_inside_else_16
	li	a0, 1
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
.check_all_inside_else_16:
	slli	a2, a2, 2
	lwl	a2, min_caml_objects(a2)
	lw	a3, 36(a2)
	lw	a4, 24(a2)
	lw	a5, 20(a2)
	lw	a6, 16(a2)
	lw	a7, 12(a2)
	lw	a2, 4(a2)
	flw	fa3, 0(a5)
	fsub	fa3, fa0, fa3
	flw	fa4, 4(a5)
	fsub	fa4, fa1, fa4
	flw	fa5, 8(a5)
	fsub	fa5, fa2, fa5
	bnei	a2, 1, .check_all_inside_else_17
	flw	fa6, 0(a6)
	fabs	fa3, fa3
	fle	a2, fa6, fa3
	bne	a2, zero, .check_all_inside_else_19
	flw	fa3, 4(a6)
	fabs	fa4, fa4
	fle	a2, fa3, fa4
	bne	a2, zero, .check_all_inside_else_19
	flw	fa3, 8(a6)
	fabs	fa4, fa5
	fle	a2, fa3, fa4
	xori	a2, a2, 1
	bne	a2, zero, .check_all_inside_else_23
	xori	a2, a4, 1
	b	.check_all_inside_cont_18
.check_all_inside_else_19:
	xori	a2, a4, 1
	b	.check_all_inside_cont_18
.check_all_inside_else_23:
	mv	a2, a4
	b	.check_all_inside_cont_18
.check_all_inside_else_17:
	bnei	a2, 2, .check_all_inside_else_25
	flw	fa6, 0(a6)
	fmul	fa3, fa6, fa3
	flw	fa6, 4(a6)
	fmul	fa4, fa6, fa4
	fadd	fa3, fa3, fa4
	flw	fa4, 8(a6)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fle	a2, fzero, fa3
	xor	a2, a4, a2
	b	.check_all_inside_cont_26
.check_all_inside_else_25:
	fmul	fa6, fa3, fa3
	flw	fa7, 0(a6)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa4, fa4
	flw	fs1, 4(a6)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	fmul	fa7, fa5, fa5
	flw	fs1, 8(a6)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	bne	a7, zero, .check_all_inside_else_27
	fmv	fa3, fa6
	b	.check_all_inside_cont_28
.check_all_inside_else_27:
	fmul	fa7, fa4, fa5
	flw	fs1, 0(a3)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	fmul	fa5, fa5, fa3
	flw	fa7, 4(a3)
	fmul	fa5, fa5, fa7
	fadd	fa5, fa6, fa5
	fmul	fa3, fa3, fa4
	flw	fa4, 8(a3)
	fmul	fa3, fa3, fa4
	fadd	fa3, fa5, fa3
.check_all_inside_cont_28:
	bnei	a2, 3, .check_all_inside_cont_29
	fli	fa4, l_data_5
	fsub	fa3, fa3, fa4
.check_all_inside_cont_29:
	fle	a2, fzero, fa3
	xor	a2, a4, a2
.check_all_inside_cont_26:
.check_all_inside_cont_18:
	bne	a2, zero, .check_all_inside_else_15
	addi	a0, a0, 1
	slli	a2, a0, 2
	add	t6, a1, a2
	lw	a2, 0(t6)
	bnei	a2, -1, .check_all_inside_else_31
	li	a0, 1
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
.check_all_inside_else_31:
	slli	a2, a2, 2
	lwl	a2, min_caml_objects(a2)
	lw	a3, 36(a2)
	lw	a4, 24(a2)
	lw	a5, 20(a2)
	lw	a6, 16(a2)
	lw	a7, 12(a2)
	lw	a2, 4(a2)
	flw	fa3, 0(a5)
	fsub	fa3, fa0, fa3
	flw	fa4, 4(a5)
	fsub	fa4, fa1, fa4
	flw	fa5, 8(a5)
	fsub	fa5, fa2, fa5
	bnei	a2, 1, .check_all_inside_else_32
	flw	fa6, 0(a6)
	fabs	fa3, fa3
	fle	a2, fa6, fa3
	bne	a2, zero, .check_all_inside_else_34
	flw	fa3, 4(a6)
	fabs	fa4, fa4
	fle	a2, fa3, fa4
	bne	a2, zero, .check_all_inside_else_34
	flw	fa3, 8(a6)
	fabs	fa4, fa5
	fle	a2, fa3, fa4
	xori	a2, a2, 1
	bne	a2, zero, .check_all_inside_else_38
	xori	a2, a4, 1
	b	.check_all_inside_cont_33
.check_all_inside_else_34:
	xori	a2, a4, 1
	b	.check_all_inside_cont_33
.check_all_inside_else_38:
	mv	a2, a4
	b	.check_all_inside_cont_33
.check_all_inside_else_32:
	bnei	a2, 2, .check_all_inside_else_40
	flw	fa6, 0(a6)
	fmul	fa3, fa6, fa3
	flw	fa6, 4(a6)
	fmul	fa4, fa6, fa4
	fadd	fa3, fa3, fa4
	flw	fa4, 8(a6)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fle	a2, fzero, fa3
	xor	a2, a4, a2
	b	.check_all_inside_cont_41
.check_all_inside_else_40:
	fmul	fa6, fa3, fa3
	flw	fa7, 0(a6)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa4, fa4
	flw	fs1, 4(a6)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	fmul	fa7, fa5, fa5
	flw	fs1, 8(a6)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	bne	a7, zero, .check_all_inside_else_42
	fmv	fa3, fa6
	b	.check_all_inside_cont_43
.check_all_inside_else_42:
	fmul	fa7, fa4, fa5
	flw	fs1, 0(a3)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	fmul	fa5, fa5, fa3
	flw	fa7, 4(a3)
	fmul	fa5, fa5, fa7
	fadd	fa5, fa6, fa5
	fmul	fa3, fa3, fa4
	flw	fa4, 8(a3)
	fmul	fa3, fa3, fa4
	fadd	fa3, fa5, fa3
.check_all_inside_cont_43:
	bnei	a2, 3, .check_all_inside_cont_44
	fli	fa4, l_data_5
	fsub	fa3, fa3, fa4
.check_all_inside_cont_44:
	fle	a2, fzero, fa3
	xor	a2, a4, a2
.check_all_inside_cont_41:
.check_all_inside_cont_33:
	bne	a2, zero, .check_all_inside_else_15
	addi	a0, a0, 1
	slli	a2, a0, 2
	add	t6, a1, a2
	lw	a2, 0(t6)
	bnei	a2, -1, .check_all_inside_else_46
	li	a0, 1
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
.check_all_inside_else_46:
	slli	a2, a2, 2
	sw	a0, 0(sp)	# save
	lwl	a0, min_caml_objects(a2)
	fsw	fa2, 4(sp)	# save
	fsw	fa1, 8(sp)	# save
	fsw	fa0, 12(sp)	# save
	sw	a1, 16(sp)	# save
	call	is_outside_2855
	bne	a0, zero, .check_all_inside_else_15
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	flw	fa0, 12(sp)	# restore
	flw	fa1, 8(sp)	# restore
	flw	fa2, 4(sp)	# restore
	lw	a1, 16(sp)	# restore
	call	check_all_inside_2860
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
.check_all_inside_else_15:
	li	a0, 0
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
shadow_check_and_group_2866:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	slli	a2, a0, 2
	add	t6, a1, a2
	lw	a2, 0(t6)
	bnei	a2, -1, .shadow_check_and_group_else_1
	li	a0, 0
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
.shadow_check_and_group_else_1:
	slli	a2, a0, 2
	add	t6, a1, a2
	lw	a2, 0(t6)
	slli	a3, a2, 2
	sw	a0, 0(sp)	# save
	lwl	a0, min_caml_objects(a3)
	flwd	fa0, min_caml_intersection_point(0)
	lw	a3, 20(a0)
	lw	a4, 4(a0)
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	flwd	fa1, min_caml_intersection_point(4)
	flw	fa2, 4(a3)
	fsub	fa1, fa1, fa2
	flwd	fa2, min_caml_intersection_point(8)
	flw	fa3, 8(a3)
	fsub	fa2, fa2, fa3
	lwd	a3, min_caml_light_dirvec(4)
	sw	a1, 4(sp)	# save
	lwd	a1, min_caml_light_dirvec(0)
	slli	a5, a2, 2
	sw	a2, 8(sp)	# save
	add	t6, a3, a5
	lw	a2, 0(t6)
	bnei	a4, 1, .shadow_check_and_group_else_2
	call	solver_rect_fast_2781
	flwd	fa0, min_caml_solver_dist(0)
	bne	a0, zero, .shadow_check_and_group_else_8
	b	.shadow_check_and_group_cont_9+4
.shadow_check_and_group_else_2:
	bnei	a4, 2, .shadow_check_and_group_else_4
	flw	fa3, 0(a2)
	fle	a0, fzero, fa3
	bne	a0, zero, .shadow_check_and_group_else_6
	flw	fa3, 4(a2)
	fmul	fa0, fa3, fa0
	flw	fa3, 8(a2)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 12(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_solver_dist(0)
	li	a0, 1
	flwd	fa0, min_caml_solver_dist(0)
	b	.shadow_check_and_group_else_8
.shadow_check_and_group_else_6:
	li	a0, 0
	flwd	fa0, min_caml_solver_dist(0)
	b	.shadow_check_and_group_cont_9+4
.shadow_check_and_group_else_4:
	mv	a1, a2
	call	solver_second_fast_2794
	flwd	fa0, min_caml_solver_dist(0)
	bne	a0, zero, .shadow_check_and_group_else_8
	b	.shadow_check_and_group_cont_9+4
.shadow_check_and_group_else_8:
	fli	fa1, l_data_7
	fle	a0, fa1, fa0
	xori	a0, a0, 1
	bne	a0, zero, .shadow_check_and_group_else_10
.shadow_check_and_group_cont_9+4:
	lw	a0, 8(sp)	# restore
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	lw	a0, 24(a0)
	bne	a0, zero, .shadow_check_and_group_else_11
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
.shadow_check_and_group_else_11:
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 4(sp)	# restore
	call	shadow_check_and_group_2866
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
.shadow_check_and_group_else_10:
	fli	fa1, l_data_8
	fadd	fa0, fa0, fa1
	flwd	fa1, min_caml_light(0)
	fmul	fa1, fa1, fa0
	flwd	fa2, min_caml_intersection_point(0)
	fadd	fa1, fa1, fa2
	flwd	fa2, min_caml_light(4)
	fmul	fa2, fa2, fa0
	flwd	fa3, min_caml_intersection_point(4)
	fadd	fa2, fa2, fa3
	flwd	fa3, min_caml_light(8)
	fmul	fa0, fa3, fa0
	flwd	fa3, min_caml_intersection_point(8)
	fadd	fa0, fa0, fa3
	lw	a1, 4(sp)	# restore
	lw	a0, 0(a1)
	bnei	a0, -1, .shadow_check_and_group_else_12
	li	a0, 1
	b	.shadow_check_and_group_else_50
.shadow_check_and_group_else_12:
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	lw	a2, 36(a0)
	lw	a3, 24(a0)
	lw	a4, 20(a0)
	lw	a5, 16(a0)
	lw	a6, 12(a0)
	lw	a0, 4(a0)
	flw	fa3, 0(a4)
	fsub	fa3, fa1, fa3
	flw	fa4, 4(a4)
	fsub	fa4, fa2, fa4
	flw	fa5, 8(a4)
	fsub	fa5, fa0, fa5
	bnei	a0, 1, .shadow_check_and_group_else_14
	flw	fa6, 0(a5)
	fabs	fa3, fa3
	fle	a0, fa6, fa3
	bne	a0, zero, .shadow_check_and_group_else_16
	flw	fa3, 4(a5)
	fabs	fa4, fa4
	fle	a0, fa3, fa4
	bne	a0, zero, .shadow_check_and_group_else_16
	flw	fa3, 8(a5)
	fabs	fa4, fa5
	fle	a0, fa3, fa4
	xori	a0, a0, 1
	bne	a0, zero, .shadow_check_and_group_else_20
	xori	a0, a3, 1
	bne	a0, zero, .shadow_check_and_group_else_27
	lw	a0, 4(a1)
	bnei	a0, -1, .shadow_check_and_group_else_29
	li	a0, 1
	b	.shadow_check_and_group_else_50
.shadow_check_and_group_else_16:
	xori	a0, a3, 1
	bne	a0, zero, .shadow_check_and_group_else_27
	lw	a0, 4(a1)
	bnei	a0, -1, .shadow_check_and_group_else_29
	li	a0, 1
	b	.shadow_check_and_group_else_50
.shadow_check_and_group_else_20:
	mv	a0, a3
	bne	a0, zero, .shadow_check_and_group_else_27
	lw	a0, 4(a1)
	bnei	a0, -1, .shadow_check_and_group_else_29
	li	a0, 1
	b	.shadow_check_and_group_else_50
.shadow_check_and_group_else_14:
	bnei	a0, 2, .shadow_check_and_group_else_22
	flw	fa6, 0(a5)
	fmul	fa3, fa6, fa3
	flw	fa6, 4(a5)
	fmul	fa4, fa6, fa4
	fadd	fa3, fa3, fa4
	flw	fa4, 8(a5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fle	a0, fzero, fa3
	xor	a0, a3, a0
	bne	a0, zero, .shadow_check_and_group_else_27
	lw	a0, 4(a1)
	bnei	a0, -1, .shadow_check_and_group_else_29
	li	a0, 1
	b	.shadow_check_and_group_else_50
.shadow_check_and_group_else_22:
	fmul	fa6, fa3, fa3
	flw	fa7, 0(a5)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa4, fa4
	flw	fs1, 4(a5)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	fmul	fa7, fa5, fa5
	flw	fs1, 8(a5)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	bne	a6, zero, .shadow_check_and_group_else_24
	fmv	fa3, fa6
	b	.shadow_check_and_group_cont_25
.shadow_check_and_group_else_24:
	fmul	fa7, fa4, fa5
	flw	fs1, 0(a2)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	fmul	fa5, fa5, fa3
	flw	fa7, 4(a2)
	fmul	fa5, fa5, fa7
	fadd	fa5, fa6, fa5
	fmul	fa3, fa3, fa4
	flw	fa4, 8(a2)
	fmul	fa3, fa3, fa4
	fadd	fa3, fa5, fa3
.shadow_check_and_group_cont_25:
	bnei	a0, 3, .shadow_check_and_group_cont_26
	fli	fa4, l_data_5
	fsub	fa3, fa3, fa4
.shadow_check_and_group_cont_26:
	fle	a0, fzero, fa3
	xor	a0, a3, a0
	bne	a0, zero, .shadow_check_and_group_else_27
	lw	a0, 4(a1)
	bnei	a0, -1, .shadow_check_and_group_else_29
	li	a0, 1
	b	.shadow_check_and_group_else_50
.shadow_check_and_group_else_29:
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	lw	a2, 36(a0)
	lw	a3, 24(a0)
	lw	a4, 20(a0)
	lw	a5, 16(a0)
	lw	a6, 12(a0)
	lw	a0, 4(a0)
	flw	fa3, 0(a4)
	fsub	fa3, fa1, fa3
	flw	fa4, 4(a4)
	fsub	fa4, fa2, fa4
	flw	fa5, 8(a4)
	fsub	fa5, fa0, fa5
	bnei	a0, 1, .shadow_check_and_group_else_31
	flw	fa6, 0(a5)
	fabs	fa3, fa3
	fle	a0, fa6, fa3
	bne	a0, zero, .shadow_check_and_group_else_33
	flw	fa3, 4(a5)
	fabs	fa4, fa4
	fle	a0, fa3, fa4
	bne	a0, zero, .shadow_check_and_group_else_33
	flw	fa3, 8(a5)
	fabs	fa4, fa5
	fle	a0, fa3, fa4
	xori	a0, a0, 1
	bne	a0, zero, .shadow_check_and_group_else_37
	xori	a0, a3, 1
	bne	a0, zero, .shadow_check_and_group_else_44
	lw	a0, 8(a1)
	bnei	a0, -1, .shadow_check_and_group_else_46
	li	a0, 1
	b	.shadow_check_and_group_else_50
.shadow_check_and_group_else_33:
	xori	a0, a3, 1
	bne	a0, zero, .shadow_check_and_group_else_44
	lw	a0, 8(a1)
	bnei	a0, -1, .shadow_check_and_group_else_46
	li	a0, 1
	b	.shadow_check_and_group_else_50
.shadow_check_and_group_else_37:
	mv	a0, a3
	bne	a0, zero, .shadow_check_and_group_else_44
	lw	a0, 8(a1)
	bnei	a0, -1, .shadow_check_and_group_else_46
	li	a0, 1
	b	.shadow_check_and_group_else_50
.shadow_check_and_group_else_31:
	bnei	a0, 2, .shadow_check_and_group_else_39
	flw	fa6, 0(a5)
	fmul	fa3, fa6, fa3
	flw	fa6, 4(a5)
	fmul	fa4, fa6, fa4
	fadd	fa3, fa3, fa4
	flw	fa4, 8(a5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fle	a0, fzero, fa3
	xor	a0, a3, a0
	bne	a0, zero, .shadow_check_and_group_else_44
	lw	a0, 8(a1)
	bnei	a0, -1, .shadow_check_and_group_else_46
	li	a0, 1
	b	.shadow_check_and_group_else_50
.shadow_check_and_group_else_39:
	fmul	fa6, fa3, fa3
	flw	fa7, 0(a5)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa4, fa4
	flw	fs1, 4(a5)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	fmul	fa7, fa5, fa5
	flw	fs1, 8(a5)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	bne	a6, zero, .shadow_check_and_group_else_41
	fmv	fa3, fa6
	b	.shadow_check_and_group_cont_42
.shadow_check_and_group_else_41:
	fmul	fa7, fa4, fa5
	flw	fs1, 0(a2)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	fmul	fa5, fa5, fa3
	flw	fa7, 4(a2)
	fmul	fa5, fa5, fa7
	fadd	fa5, fa6, fa5
	fmul	fa3, fa3, fa4
	flw	fa4, 8(a2)
	fmul	fa3, fa3, fa4
	fadd	fa3, fa5, fa3
.shadow_check_and_group_cont_42:
	bnei	a0, 3, .shadow_check_and_group_cont_43
	fli	fa4, l_data_5
	fsub	fa3, fa3, fa4
.shadow_check_and_group_cont_43:
	fle	a0, fzero, fa3
	xor	a0, a3, a0
	bne	a0, zero, .shadow_check_and_group_else_44
	lw	a0, 8(a1)
	bnei	a0, -1, .shadow_check_and_group_else_46
	li	a0, 1
	b	.shadow_check_and_group_else_50
.shadow_check_and_group_else_46:
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	fsw	fa0, 12(sp)	# save
	fsw	fa2, 16(sp)	# save
	fsw	fa1, 20(sp)	# save
	fmv	ft8, fa2
	fmv	fa2, fa0
	fmv	fa0, fa1
	fmv	fa1, ft8
	call	is_outside_2855
	bne	a0, zero, .shadow_check_and_group_else_44
	li	a0, 3
	flw	fa0, 20(sp)	# restore
	flw	fa1, 16(sp)	# restore
	flw	fa2, 12(sp)	# restore
	lw	a1, 4(sp)	# restore
	call	check_all_inside_2860
	b	.shadow_check_and_group_cont_28
.shadow_check_and_group_else_44:
	li	a0, 0
	b	.shadow_check_and_group_cont_28+4
.shadow_check_and_group_else_27:
	li	a0, 0
.shadow_check_and_group_cont_28:
	bne	a0, zero, .shadow_check_and_group_else_50
.shadow_check_and_group_cont_28+4:
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 4(sp)	# restore
	call	shadow_check_and_group_2866
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
.shadow_check_and_group_else_50:
	li	a0, 1
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
shadow_check_one_or_group_2869:
	addi	sp, sp, -40
	sw	ra, 36(sp)
	slli	a2, a0, 2
	add	t6, a1, a2
	lw	a2, 0(t6)
	bnei	a2, -1, .shadow_check_one_or_group_else_1
	li	a0, 0
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_1:
	slli	a2, a2, 2
	sw	a1, 0(sp)	# save
	lwl	a1, min_caml_and_net(a2)
	sw	a0, 4(sp)	# save
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_group_else_2
	lw	a0, 4(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	bnei	a1, -1, .shadow_check_one_or_group_else_3
	li	a0, 0
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_3:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 8(sp)	# save
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_group_else_2
	lw	a0, 8(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	bnei	a1, -1, .shadow_check_one_or_group_else_5
	li	a0, 0
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_5:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 12(sp)	# save
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_group_else_2
	lw	a0, 12(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	bnei	a1, -1, .shadow_check_one_or_group_else_7
	li	a0, 0
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_7:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 16(sp)	# save
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_group_else_2
	lw	a0, 16(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	bnei	a1, -1, .shadow_check_one_or_group_else_9
	li	a0, 0
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_9:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 20(sp)	# save
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_group_else_2
	lw	a0, 20(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	bnei	a1, -1, .shadow_check_one_or_group_else_11
	li	a0, 0
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_11:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 24(sp)	# save
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_group_else_2
	lw	a0, 24(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	bnei	a1, -1, .shadow_check_one_or_group_else_13
	li	a0, 0
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_13:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 28(sp)	# save
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_group_else_2
	lw	a0, 28(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	bnei	a1, -1, .shadow_check_one_or_group_else_15
	li	a0, 0
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_15:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 32(sp)	# save
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_group_else_2
	lw	a0, 32(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 0(sp)	# restore
	call	shadow_check_one_or_group_2869
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_2:
	li	a0, 1
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
shadow_check_one_or_matrix_2872:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	slli	a2, a0, 2
	add	t6, a1, a2
	lw	a2, 0(t6)
	lw	a3, 0(a2)
	bnei	a3, -1, .shadow_check_one_or_matrix_else_1
	li	a0, 0
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.shadow_check_one_or_matrix_else_1:
	li	a4, 99
	sw	a2, 0(sp)	# save
	sw	a1, 4(sp)	# save
	sw	a0, 8(sp)	# save
	bne	a3, a4, .shadow_check_one_or_matrix_else_2
	lw	a0, 0(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_104
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_105+4
.shadow_check_one_or_matrix_else_2:
	slli	a4, a3, 2
	lwl	a0, min_caml_objects(a4)
	flwd	fa0, min_caml_intersection_point(0)
	lw	a4, 20(a0)
	lw	a5, 4(a0)
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	flwd	fa1, min_caml_intersection_point(4)
	flw	fa2, 4(a4)
	fsub	fa1, fa1, fa2
	flwd	fa2, min_caml_intersection_point(8)
	flw	fa3, 8(a4)
	fsub	fa2, fa2, fa3
	lwd	a4, min_caml_light_dirvec(4)
	lwd	a1, min_caml_light_dirvec(0)
	slli	a3, a3, 2
	add	t6, a4, a3
	lw	a2, 0(t6)
	bnei	a5, 1, .shadow_check_one_or_matrix_else_4
	call	solver_rect_fast_2781
	bne	a0, zero, .shadow_check_one_or_matrix_else_10
	b	.shadow_check_one_or_matrix_cont_11+4
.shadow_check_one_or_matrix_else_4:
	bnei	a5, 2, .shadow_check_one_or_matrix_else_6
	flw	fa3, 0(a2)
	fle	a0, fzero, fa3
	bne	a0, zero, .shadow_check_one_or_matrix_else_8
	flw	fa3, 4(a2)
	fmul	fa0, fa3, fa0
	flw	fa3, 8(a2)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 12(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_solver_dist(0)
	fli	fa0, l_data_9
	flwd	fa1, min_caml_solver_dist(0)
	fle	a0, fa0, fa1
	bne	a0, zero, .shadow_check_one_or_matrix_else_12
	lw	a0, 0(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_14
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_13+4
.shadow_check_one_or_matrix_else_8:
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_11+4
.shadow_check_one_or_matrix_else_6:
	mv	a1, a2
	call	solver_second_fast_2794
	bne	a0, zero, .shadow_check_one_or_matrix_else_10
	b	.shadow_check_one_or_matrix_cont_11+4
.shadow_check_one_or_matrix_else_10:
	fli	fa0, l_data_9
	flwd	fa1, min_caml_solver_dist(0)
	fle	a0, fa0, fa1
	bne	a0, zero, .shadow_check_one_or_matrix_else_12
	lw	a0, 0(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_14
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_13+4
.shadow_check_one_or_matrix_else_14:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_42
	lw	a0, 0(sp)	# restore
	lw	a1, 8(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_18
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_13+4
.shadow_check_one_or_matrix_else_18:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_42
	lw	a0, 0(sp)	# restore
	lw	a1, 12(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_22
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_13+4
.shadow_check_one_or_matrix_else_22:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_42
	lw	a0, 0(sp)	# restore
	lw	a1, 16(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_26
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_13+4
.shadow_check_one_or_matrix_else_26:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_42
	lw	a0, 0(sp)	# restore
	lw	a1, 20(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_30
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_13+4
.shadow_check_one_or_matrix_else_30:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_42
	lw	a0, 0(sp)	# restore
	lw	a1, 24(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_34
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_13+4
.shadow_check_one_or_matrix_else_34:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_42
	lw	a0, 0(sp)	# restore
	lw	a1, 28(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_38
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_13+4
.shadow_check_one_or_matrix_else_38:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_42
	li	a0, 8
	lw	a1, 0(sp)	# restore
	call	shadow_check_one_or_group_2869
	bne	a0, zero, .shadow_check_one_or_matrix_else_42
	b	.shadow_check_one_or_matrix_cont_13+4
.shadow_check_one_or_matrix_else_42:
	lw	a0, 0(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_104
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_105+4
.shadow_check_one_or_matrix_else_12:
	li	a0, 0
.shadow_check_one_or_matrix_cont_11+4:
.shadow_check_one_or_matrix_cont_13+4:
	lw	a0, 8(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 4(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	sw	a0, 12(sp)	# save
	lw	a0, 0(a1)
	bnei	a0, -1, .shadow_check_one_or_matrix_else_45
	li	a0, 0
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.shadow_check_one_or_matrix_else_45:
	li	a3, 99
	sw	a1, 16(sp)	# save
	bne	a0, a3, .shadow_check_one_or_matrix_else_46
	lw	a0, 16(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_79
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_80+4
.shadow_check_one_or_matrix_else_46:
	lda	a1, min_caml_light_dirvec
	lda	a2, min_caml_intersection_point
	call	solver_fast_2800
	bne	a0, zero, .shadow_check_one_or_matrix_else_48
	b	.shadow_check_one_or_matrix_cont_49+4
.shadow_check_one_or_matrix_else_48:
	fli	fa0, l_data_9
	flwd	fa1, min_caml_solver_dist(0)
	fle	a0, fa0, fa1
	bne	a0, zero, .shadow_check_one_or_matrix_else_50
	lw	a0, 16(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_52
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_51+4
.shadow_check_one_or_matrix_else_52:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_76
	lw	a0, 16(sp)	# restore
	lw	a1, 8(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_56
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_51+4
.shadow_check_one_or_matrix_else_56:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_76
	lw	a0, 16(sp)	# restore
	lw	a1, 12(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_60
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_51+4
.shadow_check_one_or_matrix_else_60:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_76
	lw	a0, 16(sp)	# restore
	lw	a1, 16(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_64
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_51+4
.shadow_check_one_or_matrix_else_64:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_76
	lw	a0, 16(sp)	# restore
	lw	a1, 20(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_68
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_51+4
.shadow_check_one_or_matrix_else_68:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_76
	lw	a0, 16(sp)	# restore
	lw	a1, 24(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_72
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_51+4
.shadow_check_one_or_matrix_else_72:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_76
	li	a0, 7
	lw	a1, 16(sp)	# restore
	call	shadow_check_one_or_group_2869
	bne	a0, zero, .shadow_check_one_or_matrix_else_76
	b	.shadow_check_one_or_matrix_cont_51+4
.shadow_check_one_or_matrix_else_76:
	lw	a0, 16(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_79
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_80+4
.shadow_check_one_or_matrix_else_50:
	li	a0, 0
.shadow_check_one_or_matrix_cont_49+4:
.shadow_check_one_or_matrix_cont_51+4:
	lw	a0, 12(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 4(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.shadow_check_one_or_matrix_else_79:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_81
	lw	a0, 16(sp)	# restore
	lw	a1, 8(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_83
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_82+4
.shadow_check_one_or_matrix_else_83:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_85
	lw	a0, 16(sp)	# restore
	lw	a1, 12(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_87
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_82+4
.shadow_check_one_or_matrix_else_87:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_85
	lw	a0, 16(sp)	# restore
	lw	a1, 16(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_91
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_82+4
.shadow_check_one_or_matrix_else_91:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_85
	lw	a0, 16(sp)	# restore
	lw	a1, 20(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_95
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_82+4
.shadow_check_one_or_matrix_else_95:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_85
	lw	a0, 16(sp)	# restore
	lw	a1, 24(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_99
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_82+4
.shadow_check_one_or_matrix_else_99:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_85
	li	a0, 7
	lw	a1, 16(sp)	# restore
	call	shadow_check_one_or_group_2869
	b	.shadow_check_one_or_matrix_cont_82
.shadow_check_one_or_matrix_else_85:
	li	a0, 1
	b	.shadow_check_one_or_matrix_else_103
.shadow_check_one_or_matrix_else_81:
	li	a0, 1
.shadow_check_one_or_matrix_cont_82:
	bne	a0, zero, .shadow_check_one_or_matrix_else_103
.shadow_check_one_or_matrix_cont_80+4:
.shadow_check_one_or_matrix_cont_82+4:
	lw	a0, 12(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 4(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.shadow_check_one_or_matrix_else_103:
	li	a0, 1
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.shadow_check_one_or_matrix_else_104:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_106
	lw	a0, 0(sp)	# restore
	lw	a1, 8(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_108
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_107+4
.shadow_check_one_or_matrix_else_108:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_110
	lw	a0, 0(sp)	# restore
	lw	a1, 12(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_112
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_107+4
.shadow_check_one_or_matrix_else_112:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_110
	lw	a0, 0(sp)	# restore
	lw	a1, 16(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_116
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_107+4
.shadow_check_one_or_matrix_else_116:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_110
	lw	a0, 0(sp)	# restore
	lw	a1, 20(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_120
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_107+4
.shadow_check_one_or_matrix_else_120:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_110
	lw	a0, 0(sp)	# restore
	lw	a1, 24(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_124
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_107+4
.shadow_check_one_or_matrix_else_124:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_110
	lw	a0, 0(sp)	# restore
	lw	a1, 28(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_128
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_107+4
.shadow_check_one_or_matrix_else_128:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_110
	li	a0, 8
	lw	a1, 0(sp)	# restore
	call	shadow_check_one_or_group_2869
	b	.shadow_check_one_or_matrix_cont_107
.shadow_check_one_or_matrix_else_110:
	li	a0, 1
	b	.shadow_check_one_or_matrix_else_132
.shadow_check_one_or_matrix_else_106:
	li	a0, 1
.shadow_check_one_or_matrix_cont_107:
	bne	a0, zero, .shadow_check_one_or_matrix_else_132
.shadow_check_one_or_matrix_cont_105+4:
.shadow_check_one_or_matrix_cont_107+4:
	lw	a0, 8(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 4(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	sw	a0, 20(sp)	# save
	lw	a0, 0(a1)
	bnei	a0, -1, .shadow_check_one_or_matrix_else_133
	li	a0, 0
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.shadow_check_one_or_matrix_else_133:
	li	a3, 99
	sw	a1, 24(sp)	# save
	bne	a0, a3, .shadow_check_one_or_matrix_else_134
	lw	a0, 24(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_167
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_168+4
.shadow_check_one_or_matrix_else_134:
	lda	a1, min_caml_light_dirvec
	lda	a2, min_caml_intersection_point
	call	solver_fast_2800
	bne	a0, zero, .shadow_check_one_or_matrix_else_136
	b	.shadow_check_one_or_matrix_cont_137+4
.shadow_check_one_or_matrix_else_136:
	fli	fa0, l_data_9
	flwd	fa1, min_caml_solver_dist(0)
	fle	a0, fa0, fa1
	bne	a0, zero, .shadow_check_one_or_matrix_else_138
	lw	a0, 24(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_140
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_139+4
.shadow_check_one_or_matrix_else_140:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_164
	lw	a0, 24(sp)	# restore
	lw	a1, 8(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_144
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_139+4
.shadow_check_one_or_matrix_else_144:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_164
	lw	a0, 24(sp)	# restore
	lw	a1, 12(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_148
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_139+4
.shadow_check_one_or_matrix_else_148:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_164
	lw	a0, 24(sp)	# restore
	lw	a1, 16(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_152
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_139+4
.shadow_check_one_or_matrix_else_152:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_164
	lw	a0, 24(sp)	# restore
	lw	a1, 20(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_156
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_139+4
.shadow_check_one_or_matrix_else_156:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_164
	lw	a0, 24(sp)	# restore
	lw	a1, 24(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_160
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_139+4
.shadow_check_one_or_matrix_else_160:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_164
	li	a0, 7
	lw	a1, 24(sp)	# restore
	call	shadow_check_one_or_group_2869
	bne	a0, zero, .shadow_check_one_or_matrix_else_164
	b	.shadow_check_one_or_matrix_cont_139+4
.shadow_check_one_or_matrix_else_164:
	lw	a0, 24(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_167
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_168+4
.shadow_check_one_or_matrix_else_138:
	li	a0, 0
.shadow_check_one_or_matrix_cont_137+4:
.shadow_check_one_or_matrix_cont_139+4:
	lw	a0, 20(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 4(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.shadow_check_one_or_matrix_else_167:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_169
	lw	a0, 24(sp)	# restore
	lw	a1, 8(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_171
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_170+4
.shadow_check_one_or_matrix_else_171:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_173
	lw	a0, 24(sp)	# restore
	lw	a1, 12(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_175
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_170+4
.shadow_check_one_or_matrix_else_175:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_173
	lw	a0, 24(sp)	# restore
	lw	a1, 16(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_179
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_170+4
.shadow_check_one_or_matrix_else_179:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_173
	lw	a0, 24(sp)	# restore
	lw	a1, 20(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_183
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_170+4
.shadow_check_one_or_matrix_else_183:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_173
	lw	a0, 24(sp)	# restore
	lw	a1, 24(a0)
	bnei	a1, -1, .shadow_check_one_or_matrix_else_187
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_170+4
.shadow_check_one_or_matrix_else_187:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .shadow_check_one_or_matrix_else_173
	li	a0, 7
	lw	a1, 24(sp)	# restore
	call	shadow_check_one_or_group_2869
	b	.shadow_check_one_or_matrix_cont_170
.shadow_check_one_or_matrix_else_173:
	li	a0, 1
	b	.shadow_check_one_or_matrix_else_132
.shadow_check_one_or_matrix_else_169:
	li	a0, 1
.shadow_check_one_or_matrix_cont_170:
	bne	a0, zero, .shadow_check_one_or_matrix_else_132
.shadow_check_one_or_matrix_cont_168+4:
.shadow_check_one_or_matrix_cont_170+4:
	lw	a0, 20(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 4(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.shadow_check_one_or_matrix_else_132:
	li	a0, 1
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
solve_each_element_2875:
	addi	sp, sp, -40
	sw	ra, 36(sp)
	slli	a3, a0, 2
	add	t6, a1, a3
	lw	a3, 0(t6)
	bnei	a3, -1, .solve_each_element_else_1
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.solve_each_element_else_1:
	slli	a4, a3, 2
	sw	a0, 0(sp)	# save
	lwl	a0, min_caml_objects(a4)
	flwd	fa0, min_caml_startp(0)
	lw	a4, 20(a0)
	lw	a5, 16(a0)
	lw	a6, 4(a0)
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	flwd	fa1, min_caml_startp(4)
	flw	fa2, 4(a4)
	fsub	fa1, fa1, fa2
	flwd	fa2, min_caml_startp(8)
	flw	fa3, 8(a4)
	fsub	fa2, fa2, fa3
	sw	a2, 4(sp)	# save
	sw	a1, 8(sp)	# save
	sw	a3, 12(sp)	# save
	bnei	a6, 1, .solve_each_element_else_3
	mv	a1, a2
	call	solver_rect_2746
	b	.solve_each_element_cont_4
.solve_each_element_else_3:
	bnei	a6, 2, .solve_each_element_else_5
	flw	fa3, 0(a2)
	flw	fa4, 0(a5)
	fmul	fa3, fa3, fa4
	flw	fa4, 4(a2)
	flw	fa5, 4(a5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	flw	fa4, 8(a2)
	flw	fa5, 8(a5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fle	a0, fa3, fzero
	bne	a0, zero, .solve_each_element_else_7
	flw	fa4, 0(a5)
	fmul	fa0, fa4, fa0
	flw	fa4, 4(a5)
	fmul	fa1, fa4, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a5)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fneg	fa0, fa0
	fdiv	fa0, fa0, fa3
	fswd	fa0, min_caml_solver_dist(0)
	li	a0, 1
	b	.solve_each_element_else_9
.solve_each_element_else_7:
	li	a0, 0
	b	.solve_each_element_cont_6+4
.solve_each_element_else_5:
	mv	a1, a2
	call	solver_second_2771
.solve_each_element_cont_4:
	bne	a0, zero, .solve_each_element_else_9
.solve_each_element_cont_6+4:
	lw	a0, 12(sp)	# restore
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	lw	a0, 24(a0)
	bne	a0, zero, .solve_each_element_else_10
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.solve_each_element_else_10:
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 8(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	solve_each_element_2875
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.solve_each_element_else_9:
	flwd	fa0, min_caml_solver_dist(0)
	fle	a1, fa0, fzero
	bne	a1, zero, .solve_each_element_cont_12
	flwd	fa1, min_caml_tmin(0)
	fle	a1, fa1, fa0
	bne	a1, zero, .solve_each_element_cont_13
	fli	fa1, l_data_8
	fadd	fa0, fa0, fa1
	lw	a2, 4(sp)	# restore
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	flwd	fa2, min_caml_startp(0)
	fadd	fa1, fa1, fa2
	flw	fa2, 4(a2)
	fmul	fa2, fa2, fa0
	flwd	fa3, min_caml_startp(4)
	fadd	fa2, fa2, fa3
	flw	fa3, 8(a2)
	fmul	fa3, fa3, fa0
	flwd	fa4, min_caml_startp(8)
	fadd	fa3, fa3, fa4
	lw	a1, 8(sp)	# restore
	lw	a3, 0(a1)
	sw	a0, 16(sp)	# save
	fsw	fa3, 20(sp)	# save
	fsw	fa2, 24(sp)	# save
	fsw	fa1, 28(sp)	# save
	fsw	fa0, 32(sp)	# save
	bnei	a3, -1, .solve_each_element_else_14
	li	a0, 1
	b	.solve_each_element_cont_15+4
.solve_each_element_else_14:
	slli	a3, a3, 2
	lwl	a3, min_caml_objects(a3)
	lw	a4, 36(a3)
	lw	a5, 24(a3)
	lw	a6, 20(a3)
	lw	a7, 16(a3)
	lw	s1, 12(a3)
	lw	a3, 4(a3)
	flw	fa4, 0(a6)
	fsub	fa4, fa1, fa4
	flw	fa5, 4(a6)
	fsub	fa5, fa2, fa5
	flw	fa6, 8(a6)
	fsub	fa6, fa3, fa6
	bnei	a3, 1, .solve_each_element_else_16
	flw	fa7, 0(a7)
	fabs	fa4, fa4
	fle	a3, fa7, fa4
	bne	a3, zero, .solve_each_element_else_18
	flw	fa4, 4(a7)
	fabs	fa5, fa5
	fle	a3, fa4, fa5
	bne	a3, zero, .solve_each_element_else_18
	flw	fa4, 8(a7)
	fabs	fa5, fa6
	fle	a3, fa4, fa5
	xori	a3, a3, 1
	bne	a3, zero, .solve_each_element_else_22
	xori	a3, a5, 1
	bne	a3, zero, .solve_each_element_else_29
	lw	a3, 4(a1)
	bnei	a3, -1, .solve_each_element_else_31
	li	a0, 1
	b	.solve_each_element_cont_30+4
.solve_each_element_else_18:
	xori	a3, a5, 1
	bne	a3, zero, .solve_each_element_else_29
	lw	a3, 4(a1)
	bnei	a3, -1, .solve_each_element_else_31
	li	a0, 1
	b	.solve_each_element_cont_30+4
.solve_each_element_else_22:
	mv	a3, a5
	bne	a3, zero, .solve_each_element_else_29
	lw	a3, 4(a1)
	bnei	a3, -1, .solve_each_element_else_31
	li	a0, 1
	b	.solve_each_element_cont_30+4
.solve_each_element_else_16:
	bnei	a3, 2, .solve_each_element_else_24
	flw	fa7, 0(a7)
	fmul	fa4, fa7, fa4
	flw	fa7, 4(a7)
	fmul	fa5, fa7, fa5
	fadd	fa4, fa4, fa5
	flw	fa5, 8(a7)
	fmul	fa5, fa5, fa6
	fadd	fa4, fa4, fa5
	fle	a3, fzero, fa4
	xor	a3, a5, a3
	bne	a3, zero, .solve_each_element_else_29
	lw	a3, 4(a1)
	bnei	a3, -1, .solve_each_element_else_31
	li	a0, 1
	b	.solve_each_element_cont_30+4
.solve_each_element_else_24:
	fmul	fa7, fa4, fa4
	flw	fs1, 0(a7)
	fmul	fa7, fa7, fs1
	fmul	fs1, fa5, fa5
	flw	fs2, 4(a7)
	fmul	fs1, fs1, fs2
	fadd	fa7, fa7, fs1
	fmul	fs1, fa6, fa6
	flw	fs2, 8(a7)
	fmul	fs1, fs1, fs2
	fadd	fa7, fa7, fs1
	bne	s1, zero, .solve_each_element_else_26
	fmv	fa4, fa7
	b	.solve_each_element_cont_27
.solve_each_element_else_26:
	fmul	fs1, fa5, fa6
	flw	fs2, 0(a4)
	fmul	fs1, fs1, fs2
	fadd	fa7, fa7, fs1
	fmul	fa6, fa6, fa4
	flw	fs1, 4(a4)
	fmul	fa6, fa6, fs1
	fadd	fa6, fa7, fa6
	fmul	fa4, fa4, fa5
	flw	fa5, 8(a4)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa6, fa4
.solve_each_element_cont_27:
	bnei	a3, 3, .solve_each_element_cont_28
	fli	fa5, l_data_5
	fsub	fa4, fa4, fa5
.solve_each_element_cont_28:
	fle	a3, fzero, fa4
	xor	a3, a5, a3
	bne	a3, zero, .solve_each_element_else_29
	lw	a3, 4(a1)
	bnei	a3, -1, .solve_each_element_else_31
	li	a0, 1
	b	.solve_each_element_cont_30+4
.solve_each_element_else_31:
	slli	a3, a3, 2
	lwl	a3, min_caml_objects(a3)
	lw	a4, 36(a3)
	lw	a5, 24(a3)
	lw	a6, 20(a3)
	lw	a7, 16(a3)
	lw	s1, 12(a3)
	lw	a3, 4(a3)
	flw	fa4, 0(a6)
	fsub	fa4, fa1, fa4
	flw	fa5, 4(a6)
	fsub	fa5, fa2, fa5
	flw	fa6, 8(a6)
	fsub	fa6, fa3, fa6
	bnei	a3, 1, .solve_each_element_else_33
	flw	fa7, 0(a7)
	fabs	fa4, fa4
	fle	a3, fa7, fa4
	bne	a3, zero, .solve_each_element_else_35
	flw	fa4, 4(a7)
	fabs	fa5, fa5
	fle	a3, fa4, fa5
	bne	a3, zero, .solve_each_element_else_35
	flw	fa4, 8(a7)
	fabs	fa5, fa6
	fle	a3, fa4, fa5
	xori	a3, a3, 1
	bne	a3, zero, .solve_each_element_else_39
	xori	a3, a5, 1
	bne	a3, zero, .solve_each_element_else_46
	lw	a3, 8(a1)
	bnei	a3, -1, .solve_each_element_else_48
	li	a0, 1
	b	.solve_each_element_cont_30+4
.solve_each_element_else_35:
	xori	a3, a5, 1
	bne	a3, zero, .solve_each_element_else_46
	lw	a3, 8(a1)
	bnei	a3, -1, .solve_each_element_else_48
	li	a0, 1
	b	.solve_each_element_cont_30+4
.solve_each_element_else_39:
	mv	a3, a5
	bne	a3, zero, .solve_each_element_else_46
	lw	a3, 8(a1)
	bnei	a3, -1, .solve_each_element_else_48
	li	a0, 1
	b	.solve_each_element_cont_30+4
.solve_each_element_else_33:
	bnei	a3, 2, .solve_each_element_else_41
	flw	fa7, 0(a7)
	fmul	fa4, fa7, fa4
	flw	fa7, 4(a7)
	fmul	fa5, fa7, fa5
	fadd	fa4, fa4, fa5
	flw	fa5, 8(a7)
	fmul	fa5, fa5, fa6
	fadd	fa4, fa4, fa5
	fle	a3, fzero, fa4
	xor	a3, a5, a3
	bne	a3, zero, .solve_each_element_else_46
	lw	a3, 8(a1)
	bnei	a3, -1, .solve_each_element_else_48
	li	a0, 1
	b	.solve_each_element_cont_30+4
.solve_each_element_else_41:
	fmul	fa7, fa4, fa4
	flw	fs1, 0(a7)
	fmul	fa7, fa7, fs1
	fmul	fs1, fa5, fa5
	flw	fs2, 4(a7)
	fmul	fs1, fs1, fs2
	fadd	fa7, fa7, fs1
	fmul	fs1, fa6, fa6
	flw	fs2, 8(a7)
	fmul	fs1, fs1, fs2
	fadd	fa7, fa7, fs1
	bne	s1, zero, .solve_each_element_else_43
	fmv	fa4, fa7
	b	.solve_each_element_cont_44
.solve_each_element_else_43:
	fmul	fs1, fa5, fa6
	flw	fs2, 0(a4)
	fmul	fs1, fs1, fs2
	fadd	fa7, fa7, fs1
	fmul	fa6, fa6, fa4
	flw	fs1, 4(a4)
	fmul	fa6, fa6, fs1
	fadd	fa6, fa7, fa6
	fmul	fa4, fa4, fa5
	flw	fa5, 8(a4)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa6, fa4
.solve_each_element_cont_44:
	bnei	a3, 3, .solve_each_element_cont_45
	fli	fa5, l_data_5
	fsub	fa4, fa4, fa5
.solve_each_element_cont_45:
	fle	a3, fzero, fa4
	xor	a3, a5, a3
	bne	a3, zero, .solve_each_element_else_46
	lw	a3, 8(a1)
	bnei	a3, -1, .solve_each_element_else_48
	li	a0, 1
	b	.solve_each_element_cont_30+4
.solve_each_element_else_48:
	slli	a3, a3, 2
	lwl	a0, min_caml_objects(a3)
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	call	is_outside_2855
	bne	a0, zero, .solve_each_element_else_46
	li	a0, 3
	flw	fa0, 28(sp)	# restore
	flw	fa1, 24(sp)	# restore
	flw	fa2, 20(sp)	# restore
	lw	a1, 8(sp)	# restore
	call	check_all_inside_2860
	b	.solve_each_element_cont_30
.solve_each_element_else_46:
	li	a0, 0
	b	.solve_each_element_cont_52
.solve_each_element_else_29:
	li	a0, 0
.solve_each_element_cont_30:
	beq	a0, zero, .solve_each_element_cont_52
.solve_each_element_cont_15+4:
.solve_each_element_cont_30+4:
	flw	fa0, 32(sp)	# restore
	fswd	fa0, min_caml_tmin(0)
	flw	fa0, 28(sp)	# restore
	fswd	fa0, min_caml_intersection_point(0)
	flw	fa0, 24(sp)	# restore
	fswd	fa0, min_caml_intersection_point(4)
	flw	fa0, 20(sp)	# restore
	fswd	fa0, min_caml_intersection_point(8)
	lw	a0, 12(sp)	# restore
	swd	a0, min_caml_intersected_object_id(0)
	lw	a0, 16(sp)	# restore
	swd	a0, min_caml_intsec_rectside(0)
.solve_each_element_cont_52:
.solve_each_element_cont_13:
.solve_each_element_cont_12:
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 8(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	solve_each_element_2875
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
solve_one_or_network_2879:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	slli	a3, a0, 2
	add	t6, a1, a3
	lw	a3, 0(t6)
	bnei	a3, -1, .solve_one_or_network_else_1
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_else_1:
	slli	a3, a3, 2
	sw	a1, 0(sp)	# save
	lwl	a1, min_caml_and_net(a3)
	sw	a0, 4(sp)	# save
	li	a0, 0
	sw	a2, 8(sp)	# save
	call	solve_each_element_2875
	lw	a0, 4(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	bnei	a1, -1, .solve_one_or_network_else_3
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_else_3:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 12(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 12(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	bnei	a1, -1, .solve_one_or_network_else_5
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_else_5:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 16(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 16(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	bnei	a1, -1, .solve_one_or_network_else_7
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_else_7:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 20(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 20(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	bnei	a1, -1, .solve_one_or_network_else_9
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_else_9:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 24(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 24(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	bnei	a1, -1, .solve_one_or_network_else_11
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_else_11:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 28(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 28(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	bnei	a1, -1, .solve_one_or_network_else_13
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_else_13:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 32(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 32(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	bnei	a1, -1, .solve_one_or_network_else_15
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_else_15:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 36(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 36(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 0(sp)	# restore
	lw	a2, 8(sp)	# restore
	call	solve_one_or_network_2879
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
trace_or_matrix_2883:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	slli	a3, a0, 2
	add	t6, a1, a3
	lw	a3, 0(t6)
	lw	a4, 0(a3)
	bnei	a4, -1, .trace_or_matrix_else_1
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
.trace_or_matrix_else_1:
	li	a5, 99
	sw	a2, 0(sp)	# save
	sw	a1, 4(sp)	# save
	sw	a0, 8(sp)	# save
	bne	a4, a5, .trace_or_matrix_else_3
	lw	a4, 4(a3)
	beqi	a4, -1, .trace_or_matrix_cont_4
	slli	a4, a4, 2
	lwl	a1, min_caml_and_net(a4)
	li	a0, 0
	sw	a3, 12(sp)	# save
	call	solve_each_element_2875
	lw	a0, 12(sp)	# restore
	lw	a1, 8(a0)
	beqi	a1, -1, .trace_or_matrix_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 12(sp)	# restore
	lw	a1, 12(a0)
	beqi	a1, -1, .trace_or_matrix_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 12(sp)	# restore
	lw	a1, 16(a0)
	beqi	a1, -1, .trace_or_matrix_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 12(sp)	# restore
	lw	a1, 20(a0)
	beqi	a1, -1, .trace_or_matrix_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 12(sp)	# restore
	lw	a1, 24(a0)
	beqi	a1, -1, .trace_or_matrix_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 12(sp)	# restore
	lw	a1, 28(a0)
	beqi	a1, -1, .trace_or_matrix_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	li	a0, 8
	lw	a1, 12(sp)	# restore
	lw	a2, 0(sp)	# restore
	call	solve_one_or_network_2879
	b	.trace_or_matrix_cont_4
.trace_or_matrix_else_3:
	slli	a4, a4, 2
	lwl	a0, min_caml_objects(a4)
	flwd	fa0, min_caml_startp(0)
	lw	a4, 20(a0)
	lw	a5, 16(a0)
	lw	a6, 4(a0)
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	flwd	fa1, min_caml_startp(4)
	flw	fa2, 4(a4)
	fsub	fa1, fa1, fa2
	flwd	fa2, min_caml_startp(8)
	flw	fa3, 8(a4)
	fsub	fa2, fa2, fa3
	sw	a3, 12(sp)	# save
	bnei	a6, 1, .trace_or_matrix_else_12
	mv	a1, a2
	call	solver_rect_2746
	b	.trace_or_matrix_cont_13
.trace_or_matrix_else_12:
	bnei	a6, 2, .trace_or_matrix_else_14
	flw	fa3, 0(a2)
	flw	fa4, 0(a5)
	fmul	fa3, fa3, fa4
	flw	fa4, 4(a2)
	flw	fa5, 4(a5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	flw	fa4, 8(a2)
	flw	fa5, 8(a5)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fle	a0, fa3, fzero
	bne	a0, zero, .trace_or_matrix_else_16
	flw	fa4, 0(a5)
	fmul	fa0, fa4, fa0
	flw	fa4, 4(a5)
	fmul	fa1, fa4, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a5)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fneg	fa0, fa0
	fdiv	fa0, fa0, fa3
	fswd	fa0, min_caml_solver_dist(0)
	li	a0, 1
	b	.trace_or_matrix_cont_15+4
.trace_or_matrix_else_16:
	li	a0, 0
	b	.trace_or_matrix_cont_18
.trace_or_matrix_else_14:
	mv	a1, a2
	call	solver_second_2771
.trace_or_matrix_cont_13:
	beq	a0, zero, .trace_or_matrix_cont_18
.trace_or_matrix_cont_15+4:
	flwd	fa0, min_caml_solver_dist(0)
	flwd	fa1, min_caml_tmin(0)
	fle	a0, fa1, fa0
	bne	a0, zero, .trace_or_matrix_cont_19
	lw	a0, 12(sp)	# restore
	lw	a1, 4(a0)
	beqi	a1, -1, .trace_or_matrix_cont_20
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 12(sp)	# restore
	lw	a1, 8(a0)
	beqi	a1, -1, .trace_or_matrix_cont_21
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 12(sp)	# restore
	lw	a1, 12(a0)
	beqi	a1, -1, .trace_or_matrix_cont_22
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 12(sp)	# restore
	lw	a1, 16(a0)
	beqi	a1, -1, .trace_or_matrix_cont_23
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 12(sp)	# restore
	lw	a1, 20(a0)
	beqi	a1, -1, .trace_or_matrix_cont_24
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 12(sp)	# restore
	lw	a1, 24(a0)
	beqi	a1, -1, .trace_or_matrix_cont_25
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 12(sp)	# restore
	lw	a1, 28(a0)
	beqi	a1, -1, .trace_or_matrix_cont_26
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	li	a0, 8
	lw	a1, 12(sp)	# restore
	lw	a2, 0(sp)	# restore
	call	solve_one_or_network_2879
.trace_or_matrix_cont_26:
.trace_or_matrix_cont_25:
.trace_or_matrix_cont_24:
.trace_or_matrix_cont_23:
.trace_or_matrix_cont_22:
.trace_or_matrix_cont_21:
.trace_or_matrix_cont_20:
.trace_or_matrix_cont_19:
.trace_or_matrix_cont_18:
.trace_or_matrix_cont_4:
	lw	a0, 8(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 4(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	sw	a0, 16(sp)	# save
	lw	a0, 0(a1)
	bnei	a0, -1, .trace_or_matrix_else_27
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
.trace_or_matrix_else_27:
	li	a3, 99
	bne	a0, a3, .trace_or_matrix_else_29
	lw	a0, 4(a1)
	beqi	a0, -1, .trace_or_matrix_cont_30
	slli	a0, a0, 2
	sw	a1, 20(sp)	# save
	lwl	a1, min_caml_and_net(a0)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 20(sp)	# restore
	lw	a1, 8(a0)
	beqi	a1, -1, .trace_or_matrix_cont_30
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 20(sp)	# restore
	lw	a1, 12(a0)
	beqi	a1, -1, .trace_or_matrix_cont_30
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 20(sp)	# restore
	lw	a1, 16(a0)
	beqi	a1, -1, .trace_or_matrix_cont_30
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 20(sp)	# restore
	lw	a1, 20(a0)
	beqi	a1, -1, .trace_or_matrix_cont_30
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 20(sp)	# restore
	lw	a1, 24(a0)
	beqi	a1, -1, .trace_or_matrix_cont_30
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	li	a0, 7
	lw	a1, 20(sp)	# restore
	lw	a2, 0(sp)	# restore
	call	solve_one_or_network_2879
	b	.trace_or_matrix_cont_30
.trace_or_matrix_else_29:
	lda	a2, min_caml_startp
	sw	a1, 20(sp)	# save
	lw	a1, 0(sp)	# restore
	call	solver_2777
	beq	a0, zero, .trace_or_matrix_cont_37
	flwd	fa0, min_caml_solver_dist(0)
	flwd	fa1, min_caml_tmin(0)
	fle	a0, fa1, fa0
	bne	a0, zero, .trace_or_matrix_cont_38
	lw	a0, 20(sp)	# restore
	lw	a1, 4(a0)
	beqi	a1, -1, .trace_or_matrix_cont_39
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 20(sp)	# restore
	lw	a1, 8(a0)
	beqi	a1, -1, .trace_or_matrix_cont_40
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 20(sp)	# restore
	lw	a1, 12(a0)
	beqi	a1, -1, .trace_or_matrix_cont_41
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 20(sp)	# restore
	lw	a1, 16(a0)
	beqi	a1, -1, .trace_or_matrix_cont_42
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 20(sp)	# restore
	lw	a1, 20(a0)
	beqi	a1, -1, .trace_or_matrix_cont_43
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	lw	a0, 20(sp)	# restore
	lw	a1, 24(a0)
	beqi	a1, -1, .trace_or_matrix_cont_44
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2875
	li	a0, 7
	lw	a1, 20(sp)	# restore
	lw	a2, 0(sp)	# restore
	call	solve_one_or_network_2879
.trace_or_matrix_cont_44:
.trace_or_matrix_cont_43:
.trace_or_matrix_cont_42:
.trace_or_matrix_cont_41:
.trace_or_matrix_cont_40:
.trace_or_matrix_cont_39:
.trace_or_matrix_cont_38:
.trace_or_matrix_cont_37:
.trace_or_matrix_cont_30:
	lw	a0, 16(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 4(sp)	# restore
	lw	a2, 0(sp)	# restore
	call	trace_or_matrix_2883
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
solve_each_element_fast_2889:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	lw	a3, 4(a2)
	lw	a4, 0(a2)
	slli	a5, a0, 2
	add	t6, a1, a5
	lw	a5, 0(t6)
	bnei	a5, -1, .solve_each_element_fast_else_1
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_each_element_fast_else_1:
	slli	a6, a5, 2
	sw	a0, 0(sp)	# save
	lwl	a0, min_caml_objects(a6)
	lw	a6, 40(a0)
	lw	a7, 24(a0)
	lw	s1, 4(a0)
	flw	fa0, 0(a6)
	flw	fa1, 4(a6)
	flw	fa2, 8(a6)
	slli	s2, a5, 2
	sw	a2, 4(sp)	# save
	add	t6, a3, s2
	lw	a2, 0(t6)
	sw	a4, 8(sp)	# save
	sw	a1, 12(sp)	# save
	sw	a5, 16(sp)	# save
	bnei	s1, 1, .solve_each_element_fast_else_3
	mv	a1, a4
	call	solver_rect_fast_2781
	b	.solve_each_element_fast_cont_4
.solve_each_element_fast_else_3:
	bnei	s1, 2, .solve_each_element_fast_else_5
	flw	fa0, 0(a2)
	fle	a0, fzero, fa0
	bne	a0, zero, .solve_each_element_fast_else_7
	flw	fa0, 0(a2)
	flw	fa1, 12(a6)
	fmul	fa0, fa0, fa1
	fswd	fa0, min_caml_solver_dist(0)
	li	a0, 1
	b	.solve_each_element_fast_else_15
.solve_each_element_fast_else_7:
	li	a0, 0
	b	.solve_each_element_fast_cont_6+4
.solve_each_element_fast_else_5:
	flw	fa3, 0(a2)
	feq	a0, fa3, fzero
	bne	a0, zero, .solve_each_element_fast_else_9
	flw	fa4, 4(a2)
	fmul	fa0, fa4, fa0
	flw	fa4, 8(a2)
	fmul	fa1, fa4, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 12(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 12(a6)
	fmul	fa2, fa0, fa0
	fmul	fa1, fa3, fa1
	fsub	fa1, fa2, fa1
	fle	a0, fa1, fzero
	bne	a0, zero, .solve_each_element_fast_else_11
	bne	a7, zero, .solve_each_element_fast_else_13
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	flw	fa1, 16(a2)
	fmul	fa0, fa0, fa1
	fswd	fa0, min_caml_solver_dist(0)
	li	a0, 1
	b	.solve_each_element_fast_else_15
.solve_each_element_fast_else_13:
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 16(a2)
	fmul	fa0, fa0, fa1
	fswd	fa0, min_caml_solver_dist(0)
	li	a0, 1
	b	.solve_each_element_fast_else_15
.solve_each_element_fast_else_11:
	li	a0, 0
	b	.solve_each_element_fast_cont_10+4
.solve_each_element_fast_else_9:
	li	a0, 0
.solve_each_element_fast_cont_4:
	bne	a0, zero, .solve_each_element_fast_else_15
.solve_each_element_fast_cont_10+4:
.solve_each_element_fast_cont_6+4:
	lw	a0, 16(sp)	# restore
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	lw	a0, 24(a0)
	bne	a0, zero, .solve_each_element_fast_else_16
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_each_element_fast_else_16:
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 12(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	solve_each_element_fast_2889
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_each_element_fast_else_15:
	flwd	fa0, min_caml_solver_dist(0)
	fle	a1, fa0, fzero
	bne	a1, zero, .solve_each_element_fast_cont_18
	flwd	fa1, min_caml_tmin(0)
	fle	a1, fa1, fa0
	bne	a1, zero, .solve_each_element_fast_cont_19
	fli	fa1, l_data_8
	fadd	fa0, fa0, fa1
	lw	a1, 8(sp)	# restore
	flw	fa1, 0(a1)
	fmul	fa1, fa1, fa0
	flwd	fa2, min_caml_startp_fast(0)
	fadd	fa1, fa1, fa2
	flw	fa2, 4(a1)
	fmul	fa2, fa2, fa0
	flwd	fa3, min_caml_startp_fast(4)
	fadd	fa2, fa2, fa3
	flw	fa3, 8(a1)
	fmul	fa3, fa3, fa0
	flwd	fa4, min_caml_startp_fast(8)
	fadd	fa3, fa3, fa4
	lw	a1, 12(sp)	# restore
	lw	a2, 0(a1)
	sw	a0, 20(sp)	# save
	fsw	fa3, 24(sp)	# save
	fsw	fa2, 28(sp)	# save
	fsw	fa1, 32(sp)	# save
	fsw	fa0, 36(sp)	# save
	bnei	a2, -1, .solve_each_element_fast_else_20
	li	a0, 1
	b	.solve_each_element_fast_cont_21+4
.solve_each_element_fast_else_20:
	slli	a2, a2, 2
	lwl	a2, min_caml_objects(a2)
	lw	a3, 36(a2)
	lw	a4, 24(a2)
	lw	a5, 20(a2)
	lw	a6, 16(a2)
	lw	a7, 12(a2)
	lw	a2, 4(a2)
	flw	fa4, 0(a5)
	fsub	fa4, fa1, fa4
	flw	fa5, 4(a5)
	fsub	fa5, fa2, fa5
	flw	fa6, 8(a5)
	fsub	fa6, fa3, fa6
	bnei	a2, 1, .solve_each_element_fast_else_22
	flw	fa7, 0(a6)
	fabs	fa4, fa4
	fle	a2, fa7, fa4
	bne	a2, zero, .solve_each_element_fast_else_24
	flw	fa4, 4(a6)
	fabs	fa5, fa5
	fle	a2, fa4, fa5
	bne	a2, zero, .solve_each_element_fast_else_24
	flw	fa4, 8(a6)
	fabs	fa5, fa6
	fle	a2, fa4, fa5
	xori	a2, a2, 1
	bne	a2, zero, .solve_each_element_fast_else_28
	xori	a2, a4, 1
	bne	a2, zero, .solve_each_element_fast_else_35
	lw	a2, 4(a1)
	bnei	a2, -1, .solve_each_element_fast_else_37
	li	a0, 1
	b	.solve_each_element_fast_cont_36+4
.solve_each_element_fast_else_24:
	xori	a2, a4, 1
	bne	a2, zero, .solve_each_element_fast_else_35
	lw	a2, 4(a1)
	bnei	a2, -1, .solve_each_element_fast_else_37
	li	a0, 1
	b	.solve_each_element_fast_cont_36+4
.solve_each_element_fast_else_28:
	mv	a2, a4
	bne	a2, zero, .solve_each_element_fast_else_35
	lw	a2, 4(a1)
	bnei	a2, -1, .solve_each_element_fast_else_37
	li	a0, 1
	b	.solve_each_element_fast_cont_36+4
.solve_each_element_fast_else_22:
	bnei	a2, 2, .solve_each_element_fast_else_30
	flw	fa7, 0(a6)
	fmul	fa4, fa7, fa4
	flw	fa7, 4(a6)
	fmul	fa5, fa7, fa5
	fadd	fa4, fa4, fa5
	flw	fa5, 8(a6)
	fmul	fa5, fa5, fa6
	fadd	fa4, fa4, fa5
	fle	a2, fzero, fa4
	xor	a2, a4, a2
	bne	a2, zero, .solve_each_element_fast_else_35
	lw	a2, 4(a1)
	bnei	a2, -1, .solve_each_element_fast_else_37
	li	a0, 1
	b	.solve_each_element_fast_cont_36+4
.solve_each_element_fast_else_30:
	fmul	fa7, fa4, fa4
	flw	fs1, 0(a6)
	fmul	fa7, fa7, fs1
	fmul	fs1, fa5, fa5
	flw	fs2, 4(a6)
	fmul	fs1, fs1, fs2
	fadd	fa7, fa7, fs1
	fmul	fs1, fa6, fa6
	flw	fs2, 8(a6)
	fmul	fs1, fs1, fs2
	fadd	fa7, fa7, fs1
	bne	a7, zero, .solve_each_element_fast_else_32
	fmv	fa4, fa7
	b	.solve_each_element_fast_cont_33
.solve_each_element_fast_else_32:
	fmul	fs1, fa5, fa6
	flw	fs2, 0(a3)
	fmul	fs1, fs1, fs2
	fadd	fa7, fa7, fs1
	fmul	fa6, fa6, fa4
	flw	fs1, 4(a3)
	fmul	fa6, fa6, fs1
	fadd	fa6, fa7, fa6
	fmul	fa4, fa4, fa5
	flw	fa5, 8(a3)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa6, fa4
.solve_each_element_fast_cont_33:
	bnei	a2, 3, .solve_each_element_fast_cont_34
	fli	fa5, l_data_5
	fsub	fa4, fa4, fa5
.solve_each_element_fast_cont_34:
	fle	a2, fzero, fa4
	xor	a2, a4, a2
	bne	a2, zero, .solve_each_element_fast_else_35
	lw	a2, 4(a1)
	bnei	a2, -1, .solve_each_element_fast_else_37
	li	a0, 1
	b	.solve_each_element_fast_cont_36+4
.solve_each_element_fast_else_37:
	slli	a2, a2, 2
	lwl	a2, min_caml_objects(a2)
	lw	a3, 36(a2)
	lw	a4, 24(a2)
	lw	a5, 20(a2)
	lw	a6, 16(a2)
	lw	a7, 12(a2)
	lw	a2, 4(a2)
	flw	fa4, 0(a5)
	fsub	fa4, fa1, fa4
	flw	fa5, 4(a5)
	fsub	fa5, fa2, fa5
	flw	fa6, 8(a5)
	fsub	fa6, fa3, fa6
	bnei	a2, 1, .solve_each_element_fast_else_39
	flw	fa7, 0(a6)
	fabs	fa4, fa4
	fle	a2, fa7, fa4
	bne	a2, zero, .solve_each_element_fast_else_41
	flw	fa4, 4(a6)
	fabs	fa5, fa5
	fle	a2, fa4, fa5
	bne	a2, zero, .solve_each_element_fast_else_41
	flw	fa4, 8(a6)
	fabs	fa5, fa6
	fle	a2, fa4, fa5
	xori	a2, a2, 1
	bne	a2, zero, .solve_each_element_fast_else_45
	xori	a2, a4, 1
	bne	a2, zero, .solve_each_element_fast_else_52
	lw	a2, 8(a1)
	bnei	a2, -1, .solve_each_element_fast_else_54
	li	a0, 1
	b	.solve_each_element_fast_cont_36+4
.solve_each_element_fast_else_41:
	xori	a2, a4, 1
	bne	a2, zero, .solve_each_element_fast_else_52
	lw	a2, 8(a1)
	bnei	a2, -1, .solve_each_element_fast_else_54
	li	a0, 1
	b	.solve_each_element_fast_cont_36+4
.solve_each_element_fast_else_45:
	mv	a2, a4
	bne	a2, zero, .solve_each_element_fast_else_52
	lw	a2, 8(a1)
	bnei	a2, -1, .solve_each_element_fast_else_54
	li	a0, 1
	b	.solve_each_element_fast_cont_36+4
.solve_each_element_fast_else_39:
	bnei	a2, 2, .solve_each_element_fast_else_47
	flw	fa7, 0(a6)
	fmul	fa4, fa7, fa4
	flw	fa7, 4(a6)
	fmul	fa5, fa7, fa5
	fadd	fa4, fa4, fa5
	flw	fa5, 8(a6)
	fmul	fa5, fa5, fa6
	fadd	fa4, fa4, fa5
	fle	a2, fzero, fa4
	xor	a2, a4, a2
	bne	a2, zero, .solve_each_element_fast_else_52
	lw	a2, 8(a1)
	bnei	a2, -1, .solve_each_element_fast_else_54
	li	a0, 1
	b	.solve_each_element_fast_cont_36+4
.solve_each_element_fast_else_47:
	fmul	fa7, fa4, fa4
	flw	fs1, 0(a6)
	fmul	fa7, fa7, fs1
	fmul	fs1, fa5, fa5
	flw	fs2, 4(a6)
	fmul	fs1, fs1, fs2
	fadd	fa7, fa7, fs1
	fmul	fs1, fa6, fa6
	flw	fs2, 8(a6)
	fmul	fs1, fs1, fs2
	fadd	fa7, fa7, fs1
	bne	a7, zero, .solve_each_element_fast_else_49
	fmv	fa4, fa7
	b	.solve_each_element_fast_cont_50
.solve_each_element_fast_else_49:
	fmul	fs1, fa5, fa6
	flw	fs2, 0(a3)
	fmul	fs1, fs1, fs2
	fadd	fa7, fa7, fs1
	fmul	fa6, fa6, fa4
	flw	fs1, 4(a3)
	fmul	fa6, fa6, fs1
	fadd	fa6, fa7, fa6
	fmul	fa4, fa4, fa5
	flw	fa5, 8(a3)
	fmul	fa4, fa4, fa5
	fadd	fa4, fa6, fa4
.solve_each_element_fast_cont_50:
	bnei	a2, 3, .solve_each_element_fast_cont_51
	fli	fa5, l_data_5
	fsub	fa4, fa4, fa5
.solve_each_element_fast_cont_51:
	fle	a2, fzero, fa4
	xor	a2, a4, a2
	bne	a2, zero, .solve_each_element_fast_else_52
	lw	a2, 8(a1)
	bnei	a2, -1, .solve_each_element_fast_else_54
	li	a0, 1
	b	.solve_each_element_fast_cont_36+4
.solve_each_element_fast_else_54:
	slli	a2, a2, 2
	lwl	a0, min_caml_objects(a2)
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	call	is_outside_2855
	bne	a0, zero, .solve_each_element_fast_else_52
	li	a0, 3
	flw	fa0, 32(sp)	# restore
	flw	fa1, 28(sp)	# restore
	flw	fa2, 24(sp)	# restore
	lw	a1, 12(sp)	# restore
	call	check_all_inside_2860
	b	.solve_each_element_fast_cont_36
.solve_each_element_fast_else_52:
	li	a0, 0
	b	.solve_each_element_fast_cont_58
.solve_each_element_fast_else_35:
	li	a0, 0
.solve_each_element_fast_cont_36:
	beq	a0, zero, .solve_each_element_fast_cont_58
.solve_each_element_fast_cont_21+4:
.solve_each_element_fast_cont_36+4:
	flw	fa0, 36(sp)	# restore
	fswd	fa0, min_caml_tmin(0)
	flw	fa0, 32(sp)	# restore
	fswd	fa0, min_caml_intersection_point(0)
	flw	fa0, 28(sp)	# restore
	fswd	fa0, min_caml_intersection_point(4)
	flw	fa0, 24(sp)	# restore
	fswd	fa0, min_caml_intersection_point(8)
	lw	a0, 16(sp)	# restore
	swd	a0, min_caml_intersected_object_id(0)
	lw	a0, 20(sp)	# restore
	swd	a0, min_caml_intsec_rectside(0)
.solve_each_element_fast_cont_58:
.solve_each_element_fast_cont_19:
.solve_each_element_fast_cont_18:
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 12(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	solve_each_element_fast_2889
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
solve_one_or_network_fast_2893:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	slli	a3, a0, 2
	add	t6, a1, a3
	lw	a3, 0(t6)
	bnei	a3, -1, .solve_one_or_network_fast_else_1
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_fast_else_1:
	slli	a3, a3, 2
	sw	a1, 0(sp)	# save
	lwl	a1, min_caml_and_net(a3)
	sw	a0, 4(sp)	# save
	li	a0, 0
	sw	a2, 8(sp)	# save
	call	solve_each_element_fast_2889
	lw	a0, 4(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	bnei	a1, -1, .solve_one_or_network_fast_else_3
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_fast_else_3:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 12(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 12(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	bnei	a1, -1, .solve_one_or_network_fast_else_5
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_fast_else_5:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 16(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 16(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	bnei	a1, -1, .solve_one_or_network_fast_else_7
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_fast_else_7:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 20(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 20(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	bnei	a1, -1, .solve_one_or_network_fast_else_9
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_fast_else_9:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 24(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 24(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	bnei	a1, -1, .solve_one_or_network_fast_else_11
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_fast_else_11:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 28(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 28(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	bnei	a1, -1, .solve_one_or_network_fast_else_13
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_fast_else_13:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 32(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 32(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	bnei	a1, -1, .solve_one_or_network_fast_else_15
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_fast_else_15:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 36(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 36(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 0(sp)	# restore
	lw	a2, 8(sp)	# restore
	call	solve_one_or_network_fast_2893
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
trace_or_matrix_fast_2897:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	slli	a3, a0, 2
	add	t6, a1, a3
	lw	a3, 0(t6)
	lw	a4, 0(a3)
	bnei	a4, -1, .trace_or_matrix_fast_else_1
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
.trace_or_matrix_fast_else_1:
	li	a5, 99
	sw	a2, 0(sp)	# save
	sw	a1, 4(sp)	# save
	sw	a0, 8(sp)	# save
	bne	a4, a5, .trace_or_matrix_fast_else_3
	lw	a4, 4(a3)
	beqi	a4, -1, .trace_or_matrix_fast_cont_4
	slli	a4, a4, 2
	lwl	a1, min_caml_and_net(a4)
	li	a0, 0
	sw	a3, 12(sp)	# save
	call	solve_each_element_fast_2889
	lw	a0, 12(sp)	# restore
	lw	a1, 8(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 12(sp)	# restore
	lw	a1, 12(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 12(sp)	# restore
	lw	a1, 16(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 12(sp)	# restore
	lw	a1, 20(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 12(sp)	# restore
	lw	a1, 24(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 12(sp)	# restore
	lw	a1, 28(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	li	a0, 8
	lw	a1, 12(sp)	# restore
	lw	a2, 0(sp)	# restore
	call	solve_one_or_network_fast_2893
	b	.trace_or_matrix_fast_cont_4
.trace_or_matrix_fast_else_3:
	slli	a5, a4, 2
	lwl	a0, min_caml_objects(a5)
	lw	a5, 40(a0)
	lw	a6, 24(a0)
	lw	a7, 4(a0)
	flw	fa0, 0(a5)
	flw	fa1, 4(a5)
	flw	fa2, 8(a5)
	lw	s1, 4(a2)
	lw	a1, 0(a2)
	slli	a4, a4, 2
	add	t6, s1, a4
	lw	a2, 0(t6)
	sw	a3, 12(sp)	# save
	bnei	a7, 1, .trace_or_matrix_fast_else_12
	call	solver_rect_fast_2781
	b	.trace_or_matrix_fast_cont_13
.trace_or_matrix_fast_else_12:
	bnei	a7, 2, .trace_or_matrix_fast_else_14
	flw	fa0, 0(a2)
	fle	a0, fzero, fa0
	bne	a0, zero, .trace_or_matrix_fast_else_16
	flw	fa0, 0(a2)
	flw	fa1, 12(a5)
	fmul	fa0, fa0, fa1
	fswd	fa0, min_caml_solver_dist(0)
	li	a0, 1
	b	.trace_or_matrix_fast_cont_15+4
.trace_or_matrix_fast_else_16:
	li	a0, 0
	b	.trace_or_matrix_fast_cont_24
.trace_or_matrix_fast_else_14:
	flw	fa3, 0(a2)
	feq	a0, fa3, fzero
	bne	a0, zero, .trace_or_matrix_fast_else_18
	flw	fa4, 4(a2)
	fmul	fa0, fa4, fa0
	flw	fa4, 8(a2)
	fmul	fa1, fa4, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 12(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 12(a5)
	fmul	fa2, fa0, fa0
	fmul	fa1, fa3, fa1
	fsub	fa1, fa2, fa1
	fle	a0, fa1, fzero
	bne	a0, zero, .trace_or_matrix_fast_else_20
	bne	a6, zero, .trace_or_matrix_fast_else_22
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	flw	fa1, 16(a2)
	fmul	fa0, fa0, fa1
	fswd	fa0, min_caml_solver_dist(0)
	li	a0, 1
	b	.trace_or_matrix_fast_cont_19+4
.trace_or_matrix_fast_else_22:
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 16(a2)
	fmul	fa0, fa0, fa1
	fswd	fa0, min_caml_solver_dist(0)
	li	a0, 1
	b	.trace_or_matrix_fast_cont_19+4
.trace_or_matrix_fast_else_20:
	li	a0, 0
	b	.trace_or_matrix_fast_cont_24
.trace_or_matrix_fast_else_18:
	li	a0, 0
.trace_or_matrix_fast_cont_13:
	beq	a0, zero, .trace_or_matrix_fast_cont_24
.trace_or_matrix_fast_cont_15+4:
.trace_or_matrix_fast_cont_19+4:
	flwd	fa0, min_caml_solver_dist(0)
	flwd	fa1, min_caml_tmin(0)
	fle	a0, fa1, fa0
	bne	a0, zero, .trace_or_matrix_fast_cont_25
	lw	a0, 12(sp)	# restore
	lw	a1, 4(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_26
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 12(sp)	# restore
	lw	a1, 8(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_27
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 12(sp)	# restore
	lw	a1, 12(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_28
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 12(sp)	# restore
	lw	a1, 16(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_29
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 12(sp)	# restore
	lw	a1, 20(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_30
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 12(sp)	# restore
	lw	a1, 24(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_31
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 12(sp)	# restore
	lw	a1, 28(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_32
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	li	a0, 8
	lw	a1, 12(sp)	# restore
	lw	a2, 0(sp)	# restore
	call	solve_one_or_network_fast_2893
.trace_or_matrix_fast_cont_32:
.trace_or_matrix_fast_cont_31:
.trace_or_matrix_fast_cont_30:
.trace_or_matrix_fast_cont_29:
.trace_or_matrix_fast_cont_28:
.trace_or_matrix_fast_cont_27:
.trace_or_matrix_fast_cont_26:
.trace_or_matrix_fast_cont_25:
.trace_or_matrix_fast_cont_24:
.trace_or_matrix_fast_cont_4:
	lw	a0, 8(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 4(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	sw	a0, 16(sp)	# save
	lw	a0, 0(a1)
	bnei	a0, -1, .trace_or_matrix_fast_else_33
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
.trace_or_matrix_fast_else_33:
	li	a3, 99
	bne	a0, a3, .trace_or_matrix_fast_else_35
	lw	a0, 4(a1)
	beqi	a0, -1, .trace_or_matrix_fast_cont_36
	slli	a0, a0, 2
	sw	a1, 20(sp)	# save
	lwl	a1, min_caml_and_net(a0)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 20(sp)	# restore
	lw	a1, 8(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_36
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 20(sp)	# restore
	lw	a1, 12(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_36
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 20(sp)	# restore
	lw	a1, 16(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_36
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 20(sp)	# restore
	lw	a1, 20(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_36
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 20(sp)	# restore
	lw	a1, 24(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_36
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	li	a0, 7
	lw	a1, 20(sp)	# restore
	lw	a2, 0(sp)	# restore
	call	solve_one_or_network_fast_2893
	b	.trace_or_matrix_fast_cont_36
.trace_or_matrix_fast_else_35:
	sw	a1, 20(sp)	# save
	lw	a1, 0(sp)	# restore
	call	solver_fast2_2818
	beq	a0, zero, .trace_or_matrix_fast_cont_43
	flwd	fa0, min_caml_solver_dist(0)
	flwd	fa1, min_caml_tmin(0)
	fle	a0, fa1, fa0
	bne	a0, zero, .trace_or_matrix_fast_cont_44
	lw	a0, 20(sp)	# restore
	lw	a1, 4(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_45
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 20(sp)	# restore
	lw	a1, 8(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_46
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 20(sp)	# restore
	lw	a1, 12(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_47
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 20(sp)	# restore
	lw	a1, 16(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_48
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 20(sp)	# restore
	lw	a1, 20(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_49
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 20(sp)	# restore
	lw	a1, 24(a0)
	beqi	a1, -1, .trace_or_matrix_fast_cont_50
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2889
	li	a0, 7
	lw	a1, 20(sp)	# restore
	lw	a2, 0(sp)	# restore
	call	solve_one_or_network_fast_2893
.trace_or_matrix_fast_cont_50:
.trace_or_matrix_fast_cont_49:
.trace_or_matrix_fast_cont_48:
.trace_or_matrix_fast_cont_47:
.trace_or_matrix_fast_cont_46:
.trace_or_matrix_fast_cont_45:
.trace_or_matrix_fast_cont_44:
.trace_or_matrix_fast_cont_43:
.trace_or_matrix_fast_cont_36:
	lw	a0, 16(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 4(sp)	# restore
	lw	a2, 0(sp)	# restore
	call	trace_or_matrix_fast_2897
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
get_nvector_second_2907:
	flwd	fa0, min_caml_intersection_point(0)
	lw	a1, 36(a0)
	lw	a2, 24(a0)
	lw	a3, 20(a0)
	lw	a4, 16(a0)
	lw	a0, 12(a0)
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	flwd	fa1, min_caml_intersection_point(4)
	flw	fa2, 4(a3)
	fsub	fa1, fa1, fa2
	flwd	fa2, min_caml_intersection_point(8)
	flw	fa3, 8(a3)
	fsub	fa2, fa2, fa3
	flw	fa3, 0(a4)
	fmul	fa3, fa0, fa3
	flw	fa4, 4(a4)
	fmul	fa4, fa1, fa4
	flw	fa5, 8(a4)
	fmul	fa5, fa2, fa5
	bne	a0, zero, .get_nvector_second_else_1
	fswd	fa3, min_caml_nvector(0)
	fswd	fa4, min_caml_nvector(4)
	fswd	fa5, min_caml_nvector(8)
	flwd	fa0, min_caml_nvector(0)
	flwd	fa1, min_caml_nvector(0)
	fmul	fa0, fa0, fa1
	flwd	fa1, min_caml_nvector(4)
	flwd	fa2, min_caml_nvector(4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flwd	fa1, min_caml_nvector(8)
	flwd	fa2, min_caml_nvector(8)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	feq	a0, fa0, fzero
	bne	a0, zero, .get_nvector_second_else_3
	bne	a2, zero, .get_nvector_second_else_5
	fli	fa1, l_data_5
	fdiv	fa0, fa1, fa0
	b	.get_nvector_second_cont_4
.get_nvector_second_else_1:
	flw	fa6, 8(a1)
	fmul	fa6, fa1, fa6
	flw	fa7, 4(a1)
	fmul	fa7, fa2, fa7
	fadd	fa6, fa6, fa7
	fli	fa7, l_data_4
	fdiv	fa6, fa6, fa7
	fadd	fa3, fa3, fa6
	fswd	fa3, min_caml_nvector(0)
	flw	fa3, 8(a1)
	fmul	fa3, fa0, fa3
	flw	fa6, 0(a1)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa3, fa2
	fdiv	fa2, fa2, fa7
	fadd	fa2, fa4, fa2
	fswd	fa2, min_caml_nvector(4)
	flw	fa2, 4(a1)
	fmul	fa0, fa0, fa2
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fdiv	fa0, fa0, fa7
	fadd	fa0, fa5, fa0
	fswd	fa0, min_caml_nvector(8)
	flwd	fa0, min_caml_nvector(0)
	flwd	fa1, min_caml_nvector(0)
	fmul	fa0, fa0, fa1
	flwd	fa1, min_caml_nvector(4)
	flwd	fa2, min_caml_nvector(4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flwd	fa1, min_caml_nvector(8)
	flwd	fa2, min_caml_nvector(8)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	feq	a0, fa0, fzero
	bne	a0, zero, .get_nvector_second_else_3
	bne	a2, zero, .get_nvector_second_else_5
	fli	fa1, l_data_5
	fdiv	fa0, fa1, fa0
	b	.get_nvector_second_cont_4
.get_nvector_second_else_5:
	fli	fa1, l_data_6
	fdiv	fa0, fa1, fa0
	b	.get_nvector_second_cont_4
.get_nvector_second_else_3:
	fli	fa0, l_data_5
.get_nvector_second_cont_4:
	flwd	fa1, min_caml_nvector(0)
	fmul	fa1, fa1, fa0
	fswd	fa1, min_caml_nvector(0)
	flwd	fa1, min_caml_nvector(4)
	fmul	fa1, fa1, fa0
	fswd	fa1, min_caml_nvector(4)
	flwd	fa1, min_caml_nvector(8)
	fmul	fa0, fa1, fa0
	fswd	fa0, min_caml_nvector(8)
	jr	ra
utexture_2912:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	lw	a2, 32(a0)
	lw	a3, 20(a0)
	lw	a4, 16(a0)
	lw	a0, 0(a0)
	flw	fa0, 0(a2)
	fswd	fa0, min_caml_texture_color(0)
	flw	fa0, 4(a2)
	fswd	fa0, min_caml_texture_color(4)
	flw	fa0, 8(a2)
	fswd	fa0, min_caml_texture_color(8)
	bnei	a0, 1, .utexture_else_1
	flw	fa0, 0(a1)
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	fli	fa1, l_data_20
	fsw	fa0, 0(sp)	# save
	fmul	fa0, fa0, fa1
	call	min_caml_floor
	fli	fa2, l_data_21
	fmul	fa0, fa0, fa2
	fli	fa3, l_data_18
	flw	fa4, 0(sp)	# restore
	fsub	fa0, fa4, fa0
	fle	a0, fa3, fa0
	xori	a0, a0, 1
	flw	fa0, 8(a1)
	flw	fa4, 8(a3)
	fsub	fa0, fa0, fa4
	fsw	fa0, 4(sp)	# save
	fmul	fa0, fa0, fa1
	call	min_caml_floor
	fmul	fa0, fa0, fa2
	flw	fa1, 4(sp)	# restore
	fsub	fa0, fa1, fa0
	fle	a1, fa3, fa0
	xori	a1, a1, 1
	bne	a0, zero, .utexture_else_2
	bne	a1, zero, .utexture_else_4
	fli	fa0, l_data_16
	b	.utexture_cont_3
.utexture_else_4:
	fmv	fa0, fzero
	b	.utexture_cont_3
.utexture_else_2:
	bne	a1, zero, .utexture_else_6
	fmv	fa0, fzero
	b	.utexture_cont_7
.utexture_else_6:
	fli	fa0, l_data_16
.utexture_cont_7:
.utexture_cont_3:
	fswd	fa0, min_caml_texture_color(4)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.utexture_else_1:
	bnei	a0, 2, .utexture_else_9
	flw	fa0, 4(a1)
	fli	fa1, l_data_19
	fmul	fa0, fa0, fa1
	call	min_caml_sin
	flw	fa2, 4(a1)
	fsw	fa0, 8(sp)	# save
	fmul	fa0, fa2, fa1
	call	min_caml_sin
	flw	fa1, 8(sp)	# restore
	fmul	fa0, fa1, fa0
	fli	fa1, l_data_16
	fmul	fa2, fa1, fa0
	fswd	fa2, min_caml_texture_color(0)
	fli	fa2, l_data_5
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fswd	fa0, min_caml_texture_color(4)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.utexture_else_9:
	bnei	a0, 3, .utexture_else_11
	flw	fa0, 0(a1)
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a3)
	fsub	fa1, fa1, fa2
	fmul	fa0, fa0, fa0
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	fli	fa1, l_data_18
	fdiv	fa0, fa0, fa1
	fsw	fa0, 12(sp)	# save
	call	min_caml_floor
	flw	fa1, 12(sp)	# restore
	fsub	fa0, fa1, fa0
	fli	fa1, l_data_12
	fmul	fa0, fa0, fa1
	call	min_caml_cos
	fmul	fa0, fa0, fa0
	fli	fa1, l_data_16
	fmul	fa2, fa0, fa1
	fswd	fa2, min_caml_texture_color(4)
	fli	fa2, l_data_5
	fsub	fa0, fa2, fa0
	fmul	fa0, fa0, fa1
	fswd	fa0, min_caml_texture_color(8)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.utexture_else_11:
	bnei	a0, 4, utexture_ret
	flw	fa0, 0(a1)
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	flw	fa1, 0(a4)
	fsqrt	fa1, fa1
	fmul	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a3)
	fsub	fa1, fa1, fa2
	flw	fa2, 8(a4)
	fsqrt	fa2, fa2
	fmul	fa1, fa1, fa2
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	fli	fa3, l_data_10
	fabs	fa4, fa0
	fle	a0, fa3, fa4
	bne	a0, zero, .utexture_else_13
	fli	fa0, l_data_13
	fsw	fa0, 16(sp)	# save
	call	min_caml_floor
	flw	fa1, 16(sp)	# restore
	fsub	fa0, fa1, fa0
	flw	fa1, 4(a1)
	flw	fa4, 4(a3)
	fsub	fa1, fa1, fa4
	flw	fa4, 4(a4)
	fsqrt	fa4, fa4
	fmul	fa1, fa1, fa4
	fabs	fa4, fa2
	fle	a0, fa3, fa4
	fsw	fa0, 20(sp)	# save
	bne	a0, zero, .utexture_else_15
	fli	fa0, l_data_13
	b	.utexture_cont_16
.utexture_else_13:
	fdiv	fa0, fa1, fa0
	fabs	fa0, fa0
	call	min_caml_atan
	fli	fa1, l_data_11
	fmul	fa0, fa0, fa1
	fli	fa1, l_data_12
	fdiv	fa0, fa0, fa1
	fsw	fa0, 16(sp)	# save
	call	min_caml_floor
	flw	fa1, 16(sp)	# restore
	fsub	fa0, fa1, fa0
	flw	fa1, 4(a1)
	flw	fa4, 4(a3)
	fsub	fa1, fa1, fa4
	flw	fa4, 4(a4)
	fsqrt	fa4, fa4
	fmul	fa1, fa1, fa4
	fabs	fa4, fa2
	fle	a0, fa3, fa4
	fsw	fa0, 20(sp)	# save
	bne	a0, zero, .utexture_else_15
	fli	fa0, l_data_13
	b	.utexture_cont_16
.utexture_else_15:
	fdiv	fa1, fa1, fa2
	fabs	fa0, fa1
	call	min_caml_atan
	fli	fa1, l_data_11
	fmul	fa0, fa0, fa1
	fli	fa1, l_data_12
	fdiv	fa0, fa0, fa1
.utexture_cont_16:
	fsw	fa0, 24(sp)	# save
	call	min_caml_floor
	flw	fa1, 24(sp)	# restore
	fsub	fa0, fa1, fa0
	fli	fa1, l_data_14
	fli	fa2, l_data_15
	flw	fa3, 20(sp)	# restore
	fsub	fa3, fa2, fa3
	fmul	fa3, fa3, fa3
	fsub	fa1, fa1, fa3
	fsub	fa0, fa2, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa1, fa0
	fle	a0, fzero, fa0
	bne	a0, zero, .utexture_cont_17
	fmv	fa0, fzero
.utexture_cont_17:
	fli	fa1, l_data_16
	fmul	fa0, fa1, fa0
	fli	fa1, l_data_17
	fdiv	fa0, fa0, fa1
	fswd	fa0, min_caml_texture_color(8)
utexture_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
add_light_2915:
	fle	a0, fa0, fzero
	bne	a0, zero, .add_light_cont_1
	flwd	fa3, min_caml_rgb(0)
	flwd	fa4, min_caml_texture_color(0)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	fswd	fa3, min_caml_rgb(0)
	flwd	fa3, min_caml_rgb(4)
	flwd	fa4, min_caml_texture_color(4)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	fswd	fa3, min_caml_rgb(4)
	flwd	fa3, min_caml_rgb(8)
	flwd	fa4, min_caml_texture_color(8)
	fmul	fa0, fa0, fa4
	fadd	fa0, fa3, fa0
	fswd	fa0, min_caml_rgb(8)
.add_light_cont_1:
	fle	a0, fa1, fzero
	bne	a0, zero, add_light_ret
	fmul	fa0, fa1, fa1
	fmul	fa0, fa0, fa0
	fmul	fa0, fa0, fa2
	flwd	fa1, min_caml_rgb(0)
	fadd	fa1, fa1, fa0
	fswd	fa1, min_caml_rgb(0)
	flwd	fa1, min_caml_rgb(4)
	fadd	fa1, fa1, fa0
	fswd	fa1, min_caml_rgb(4)
	flwd	fa1, min_caml_rgb(8)
	fadd	fa0, fa1, fa0
	fswd	fa0, min_caml_rgb(8)
add_light_ret:
	jr	ra
trace_reflections_2919:
	addi	sp, sp, -72
	sw	ra, 68(sp)
	blt	a0, zero, trace_reflections_ret
	slli	a2, a0, 2
	lwl	a2, min_caml_reflections(a2)
	flw	fa2, 8(a2)
	lw	a3, 4(a2)
	lw	a2, 0(a2)
	fli	fa3, l_data_22
	fswd	fa3, min_caml_tmin(0)
	sw	a0, 0(sp)	# save
	li	a0, 0
	sw	a1, 4(sp)	# save
	lwd	a1, min_caml_or_net(0)
	fsw	fa3, 8(sp)	# save
	fsw	fa1, 12(sp)	# save
	fsw	fa0, 16(sp)	# save
	fsw	fa2, 20(sp)	# save
	sw	a3, 24(sp)	# save
	sw	a2, 28(sp)	# save
	mv	a2, a3
	call	trace_or_matrix_fast_2897
	flwd	fa0, min_caml_tmin(0)
	fli	fa1, l_data_9
	fle	a0, fa0, fa1
	bne	a0, zero, .trace_reflections_else_1
	fli	fa2, l_data_23
	fle	a0, fa2, fa0
	xori	a0, a0, 1
	fsw	fa1, 32(sp)	# save
	beq	a0, zero, .trace_reflections_cont_3
	lwd	a0, min_caml_intersected_object_id(0)
	slli	a0, a0, 2
	lwd	a1, min_caml_intsec_rectside(0)
	add	a0, a0, a1
	lw	a1, 28(sp)	# restore
	bne	a0, a1, .trace_reflections_cont_4
	lwd	a1, min_caml_or_net(0)
	lw	a0, 0(a1)
	sw	a0, 36(sp)	# save
	lw	a0, 0(a0)
	bnei	a0, -1, .trace_reflections_else_5
	li	a0, 0
	b	.trace_reflections_cont_6+4
.trace_reflections_else_1:
	li	a0, 0
	fsw	fa1, 32(sp)	# save
	b	.trace_reflections_cont_3
.trace_reflections_else_5:
	li	a2, 99
	sw	a1, 40(sp)	# save
	bne	a0, a2, .trace_reflections_else_7
	lw	a0, 36(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .trace_reflections_else_41
	li	a0, 1
	lw	a1, 40(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_reflections_cont_66
.trace_reflections_else_7:
	lda	a1, min_caml_light_dirvec
	lda	a2, min_caml_intersection_point
	call	solver_fast_2800
	bne	a0, zero, .trace_reflections_else_9
	li	a0, 1
	lw	a1, 40(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_reflections_cont_40
.trace_reflections_else_9:
	flwd	fa0, min_caml_solver_dist(0)
	flw	fa1, 32(sp)	# restore
	fle	a0, fa1, fa0
	bne	a0, zero, .trace_reflections_else_11
	lw	a0, 36(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .trace_reflections_else_13
	li	a0, 1
	lw	a1, 40(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_reflections_cont_40
.trace_reflections_else_13:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_reflections_else_37
	lw	a0, 36(sp)	# restore
	lw	a1, 8(a0)
	bnei	a1, -1, .trace_reflections_else_17
	li	a0, 1
	lw	a1, 40(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_reflections_cont_40
.trace_reflections_else_17:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_reflections_else_37
	lw	a0, 36(sp)	# restore
	lw	a1, 12(a0)
	bnei	a1, -1, .trace_reflections_else_21
	li	a0, 1
	lw	a1, 40(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_reflections_cont_40
.trace_reflections_else_21:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_reflections_else_37
	lw	a0, 36(sp)	# restore
	lw	a1, 16(a0)
	bnei	a1, -1, .trace_reflections_else_25
	li	a0, 1
	lw	a1, 40(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_reflections_cont_40
.trace_reflections_else_25:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_reflections_else_37
	lw	a0, 36(sp)	# restore
	lw	a1, 20(a0)
	bnei	a1, -1, .trace_reflections_else_29
	li	a0, 1
	lw	a1, 40(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_reflections_cont_40
.trace_reflections_else_29:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_reflections_else_37
	lw	a0, 36(sp)	# restore
	lw	a1, 24(a0)
	bnei	a1, -1, .trace_reflections_else_33
	li	a0, 1
	lw	a1, 40(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_reflections_cont_40
.trace_reflections_else_33:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_reflections_else_37
	li	a0, 7
	lw	a1, 36(sp)	# restore
	call	shadow_check_one_or_group_2869
	bne	a0, zero, .trace_reflections_else_37
	li	a0, 1
	lw	a1, 40(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_reflections_cont_40
.trace_reflections_else_37:
	lw	a0, 36(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .trace_reflections_else_41
	li	a0, 1
	lw	a1, 40(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_reflections_cont_66
.trace_reflections_else_11:
	li	a0, 1
	lw	a1, 40(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_reflections_cont_40
	lw	a0, 36(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .trace_reflections_else_41
	li	a0, 1
	lw	a1, 40(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_reflections_cont_66
.trace_reflections_else_41:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_reflections_else_43
	lw	a0, 36(sp)	# restore
	lw	a1, 8(a0)
	bnei	a1, -1, .trace_reflections_else_45
	li	a0, 1
	lw	a1, 40(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_reflections_cont_66
.trace_reflections_else_45:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_reflections_else_43
	lw	a0, 36(sp)	# restore
	lw	a1, 12(a0)
	bnei	a1, -1, .trace_reflections_else_49
	li	a0, 1
	lw	a1, 40(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_reflections_cont_66
.trace_reflections_else_49:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_reflections_else_43
	lw	a0, 36(sp)	# restore
	lw	a1, 16(a0)
	bnei	a1, -1, .trace_reflections_else_53
	li	a0, 1
	lw	a1, 40(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_reflections_cont_66
.trace_reflections_else_53:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_reflections_else_43
	lw	a0, 36(sp)	# restore
	lw	a1, 20(a0)
	bnei	a1, -1, .trace_reflections_else_57
	li	a0, 1
	lw	a1, 40(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_reflections_cont_66
.trace_reflections_else_57:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_reflections_else_43
	lw	a0, 36(sp)	# restore
	lw	a1, 24(a0)
	bnei	a1, -1, .trace_reflections_else_61
	li	a0, 1
	lw	a1, 40(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_reflections_cont_66
.trace_reflections_else_61:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_reflections_else_43
	li	a0, 7
	lw	a1, 36(sp)	# restore
	call	shadow_check_one_or_group_2869
	bne	a0, zero, .trace_reflections_else_65
	li	a0, 1
	lw	a1, 40(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_reflections_cont_66
.trace_reflections_else_43:
	li	a0, 1
	b	.trace_reflections_else_65
.trace_reflections_else_65:
	li	a0, 1
.trace_reflections_cont_66:
.trace_reflections_cont_40:
	bne	a0, zero, .trace_reflections_cont_67
.trace_reflections_cont_6+4:
	lw	a0, 24(sp)	# restore
	lw	a0, 0(a0)
	flwd	fa0, min_caml_nvector(0)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flwd	fa1, min_caml_nvector(4)
	flw	fa2, 4(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flwd	fa1, min_caml_nvector(8)
	flw	fa2, 8(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 16(sp)	# restore
	flw	fa2, 20(sp)	# restore
	fmul	fa3, fa2, fa1
	fmul	fa0, fa3, fa0
	lw	a1, 4(sp)	# restore
	flw	fa3, 0(a1)
	flw	fa4, 0(a0)
	fmul	fa3, fa3, fa4
	flw	fa4, 4(a1)
	flw	fa5, 4(a0)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	flw	fa4, 8(a1)
	flw	fa5, 8(a0)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa2, fa2, fa3
	fle	a0, fa0, fzero
	bne	a0, zero, .trace_reflections_cont_68
	flwd	fa3, min_caml_rgb(0)
	flwd	fa4, min_caml_texture_color(0)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	fswd	fa3, min_caml_rgb(0)
	flwd	fa3, min_caml_rgb(4)
	flwd	fa4, min_caml_texture_color(4)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	fswd	fa3, min_caml_rgb(4)
	flwd	fa3, min_caml_rgb(8)
	flwd	fa4, min_caml_texture_color(8)
	fmul	fa0, fa0, fa4
	fadd	fa0, fa3, fa0
	fswd	fa0, min_caml_rgb(8)
.trace_reflections_cont_68:
	fle	a0, fa2, fzero
	bne	a0, zero, .trace_reflections_cont_69
	fmul	fa0, fa2, fa2
	fmul	fa0, fa0, fa0
	flw	fa1, 12(sp)	# restore
	fmul	fa0, fa0, fa1
	flwd	fa2, min_caml_rgb(0)
	fadd	fa2, fa2, fa0
	fswd	fa2, min_caml_rgb(0)
	flwd	fa2, min_caml_rgb(4)
	fadd	fa2, fa2, fa0
	fswd	fa2, min_caml_rgb(4)
	flwd	fa2, min_caml_rgb(8)
	fadd	fa0, fa2, fa0
	fswd	fa0, min_caml_rgb(8)
.trace_reflections_cont_69:
.trace_reflections_cont_67:
.trace_reflections_cont_4:
.trace_reflections_cont_3:
	lw	a0, 0(sp)	# restore
	addi	a0, a0, -1
	blt	a0, zero, trace_reflections_ret
	slli	a1, a0, 2
	lwl	a1, min_caml_reflections(a1)
	flw	fa0, 8(a1)
	lw	a2, 4(a1)
	lw	a1, 0(a1)
	flw	fa1, 8(sp)	# restore
	fswd	fa1, min_caml_tmin(0)
	sw	a1, 44(sp)	# save
	lwd	a1, min_caml_or_net(0)
	lw	a3, 0(a1)
	sw	a0, 48(sp)	# save
	lw	a0, 0(a3)
	fsw	fa0, 52(sp)	# save
	sw	a2, 56(sp)	# save
	beqi	a0, -1, .trace_reflections_cont_70
	li	a4, 99
	sw	a1, 60(sp)	# save
	bne	a0, a4, .trace_reflections_else_71
	lw	a0, 4(a3)
	beqi	a0, -1, .trace_reflections_cont_72
	slli	a0, a0, 2
	lwl	a1, min_caml_and_net(a0)
	li	a0, 0
	sw	a3, 64(sp)	# save
	call	solve_each_element_fast_2889
	lw	a0, 64(sp)	# restore
	lw	a1, 8(a0)
	beqi	a1, -1, .trace_reflections_cont_72
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 56(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 64(sp)	# restore
	lw	a1, 12(a0)
	beqi	a1, -1, .trace_reflections_cont_72
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 56(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 64(sp)	# restore
	lw	a1, 16(a0)
	beqi	a1, -1, .trace_reflections_cont_72
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 56(sp)	# restore
	call	solve_each_element_fast_2889
	li	a0, 5
	lw	a1, 64(sp)	# restore
	lw	a2, 56(sp)	# restore
	call	solve_one_or_network_fast_2893
	b	.trace_reflections_cont_72
.trace_reflections_else_71:
	sw	a3, 64(sp)	# save
	mv	a1, a2
	call	solver_fast2_2818
	beq	a0, zero, .trace_reflections_cont_77
	flwd	fa0, min_caml_solver_dist(0)
	flwd	fa1, min_caml_tmin(0)
	fle	a0, fa1, fa0
	bne	a0, zero, .trace_reflections_cont_78
	lw	a0, 64(sp)	# restore
	lw	a1, 4(a0)
	beqi	a1, -1, .trace_reflections_cont_79
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 56(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 64(sp)	# restore
	lw	a1, 8(a0)
	beqi	a1, -1, .trace_reflections_cont_80
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 56(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 64(sp)	# restore
	lw	a1, 12(a0)
	beqi	a1, -1, .trace_reflections_cont_81
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 56(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 64(sp)	# restore
	lw	a1, 16(a0)
	beqi	a1, -1, .trace_reflections_cont_82
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 56(sp)	# restore
	call	solve_each_element_fast_2889
	li	a0, 5
	lw	a1, 64(sp)	# restore
	lw	a2, 56(sp)	# restore
	call	solve_one_or_network_fast_2893
.trace_reflections_cont_82:
.trace_reflections_cont_81:
.trace_reflections_cont_80:
.trace_reflections_cont_79:
.trace_reflections_cont_78:
.trace_reflections_cont_77:
.trace_reflections_cont_72:
	li	a0, 1
	lw	a1, 60(sp)	# restore
	lw	a2, 56(sp)	# restore
	call	trace_or_matrix_fast_2897
.trace_reflections_cont_70:
	flwd	fa0, min_caml_tmin(0)
	flw	fa1, 32(sp)	# restore
	fle	a0, fa0, fa1
	bne	a0, zero, .trace_reflections_else_83
	fli	fa1, l_data_23
	fle	a0, fa1, fa0
	xori	a0, a0, 1
	b	.trace_reflections_cont_84
.trace_reflections_else_83:
	li	a0, 0
.trace_reflections_cont_84:
	beq	a0, zero, .trace_reflections_cont_85
	lwd	a0, min_caml_intersected_object_id(0)
	slli	a0, a0, 2
	lwd	a1, min_caml_intsec_rectside(0)
	add	a0, a0, a1
	lw	a1, 44(sp)	# restore
	bne	a0, a1, .trace_reflections_cont_86
	li	a0, 0
	lwd	a1, min_caml_or_net(0)
	call	shadow_check_one_or_matrix_2872
	bne	a0, zero, .trace_reflections_cont_87
	lw	a0, 56(sp)	# restore
	lw	a0, 0(a0)
	flwd	fa0, min_caml_nvector(0)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flwd	fa1, min_caml_nvector(4)
	flw	fa2, 4(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flwd	fa1, min_caml_nvector(8)
	flw	fa2, 8(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 16(sp)	# restore
	flw	fa2, 52(sp)	# restore
	fmul	fa3, fa2, fa1
	fmul	fa0, fa3, fa0
	lw	a1, 4(sp)	# restore
	flw	fa3, 0(a1)
	flw	fa4, 0(a0)
	fmul	fa3, fa3, fa4
	flw	fa4, 4(a1)
	flw	fa5, 4(a0)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	flw	fa4, 8(a1)
	flw	fa5, 8(a0)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa1, fa2, fa3
	flw	fa2, 12(sp)	# restore
	call	add_light_2915
.trace_reflections_cont_87:
.trace_reflections_cont_86:
.trace_reflections_cont_85:
	lw	a0, 48(sp)	# restore
	addi	a0, a0, -1
	flw	fa0, 16(sp)	# restore
	flw	fa1, 12(sp)	# restore
	lw	a1, 4(sp)	# restore
	call	trace_reflections_2919
trace_reflections_ret:
	lw	ra, 68(sp)
	addi	sp, sp, 72
	jr	ra
trace_ray_2924:
	addi	sp, sp, -112
	sw	ra, 108(sp)
	bgti	a0, 4, trace_ray_ret
	lw	a3, 28(a2)
	lw	a4, 16(a2)
	lw	a5, 12(a2)
	lw	a6, 8(a2)
	lw	a7, 4(a2)
	fli	fa2, l_data_22
	fswd	fa2, min_caml_tmin(0)
	sw	a0, 0(sp)	# save
	li	a0, 0
	lwd	s1, min_caml_or_net(0)
	sw	a2, 4(sp)	# save
	fsw	fa1, 8(sp)	# save
	fsw	fa2, 12(sp)	# save
	sw	a3, 16(sp)	# save
	sw	a4, 20(sp)	# save
	sw	a5, 24(sp)	# save
	sw	a7, 28(sp)	# save
	fsw	fa0, 32(sp)	# save
	sw	a1, 36(sp)	# save
	sw	a6, 40(sp)	# save
	mv	a2, a1
	mv	a1, s1
	call	trace_or_matrix_2883
	flwd	fa0, min_caml_tmin(0)
	fli	fa1, l_data_9
	fle	a0, fa0, fa1
	bne	a0, zero, .trace_ray_else_1
	fli	fa2, l_data_23
	fle	a0, fa2, fa0
	xori	a0, a0, 1
	b	.trace_ray_cont_2
.trace_ray_else_1:
	li	a0, 0
.trace_ray_cont_2:
	bne	a0, zero, .trace_ray_else_3
	li	a0, -1
	lw	a1, 0(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 40(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	bne	a1, zero, .trace_ray_else_4
	lw	ra, 108(sp)
	addi	sp, sp, 112
	jr	ra
.trace_ray_else_4:
	lw	a0, 36(sp)	# restore
	flw	fa0, 0(a0)
	flwd	fa1, min_caml_light(0)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a0)
	flwd	fa2, min_caml_light(4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	flwd	fa2, min_caml_light(8)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fneg	fa0, fa0
	fle	a0, fa0, fzero
	bne	a0, zero, trace_ray_ret
	fmul	fa1, fa0, fa0
	fmul	fa0, fa1, fa0
	flw	fa1, 32(sp)	# restore
	fmul	fa0, fa0, fa1
	flwd	fa1, min_caml_beam(0)
	fmul	fa0, fa0, fa1
	flwd	fa1, min_caml_rgb(0)
	fadd	fa1, fa1, fa0
	fswd	fa1, min_caml_rgb(0)
	flwd	fa1, min_caml_rgb(4)
	fadd	fa1, fa1, fa0
	fswd	fa1, min_caml_rgb(4)
	flwd	fa1, min_caml_rgb(8)
	fadd	fa0, fa1, fa0
	fswd	fa0, min_caml_rgb(8)
	lw	ra, 108(sp)
	addi	sp, sp, 112
	jr	ra
.trace_ray_else_3:
	lwd	a0, min_caml_intersected_object_id(0)
	slli	a1, a0, 2
	sw	a0, 44(sp)	# save
	lwl	a0, min_caml_objects(a1)
	lw	a1, 28(a0)
	lw	a2, 16(a0)
	lw	a3, 8(a0)
	lw	a4, 4(a0)
	flw	fa0, 0(a1)
	flw	fa2, 32(sp)	# restore
	fmul	fa0, fa0, fa2
	sw	a3, 48(sp)	# save
	fsw	fa1, 52(sp)	# save
	fsw	fa0, 56(sp)	# save
	sw	a1, 60(sp)	# save
	sw	a0, 64(sp)	# save
	bnei	a4, 1, .trace_ray_else_7
	lwd	a2, min_caml_intsec_rectside(0)
	fswd	fzero, min_caml_nvector(0)
	fswd	fzero, min_caml_nvector(4)
	fswd	fzero, min_caml_nvector(8)
	addi	a2, a2, -1
	slli	a4, a2, 2
	lw	a5, 36(sp)	# restore
	add	t6, a5, a4
	flw	fa3, 0(t6)
	feq	a4, fa3, fzero
	bne	a4, zero, .trace_ray_else_9
	fle	a4, fa3, fzero
	bne	a4, zero, .trace_ray_else_11
	fli	fa3, l_data_5
	fneg	fa3, fa3
	slli	a2, a2, 2
	fswl	fa3, min_caml_nvector(a2)
	b	.trace_ray_cont_8
.trace_ray_else_11:
	fli	fa3, l_data_6
	fneg	fa3, fa3
	slli	a2, a2, 2
	fswl	fa3, min_caml_nvector(a2)
	b	.trace_ray_cont_8
.trace_ray_else_9:
	fmv	fa3, fzero
	fneg	fa3, fa3
	slli	a2, a2, 2
	fswl	fa3, min_caml_nvector(a2)
	b	.trace_ray_cont_8
.trace_ray_else_7:
	bnei	a4, 2, .trace_ray_else_13
	flw	fa3, 0(a2)
	fneg	fa3, fa3
	fswd	fa3, min_caml_nvector(0)
	flw	fa3, 4(a2)
	fneg	fa3, fa3
	fswd	fa3, min_caml_nvector(4)
	flw	fa3, 8(a2)
	fneg	fa3, fa3
	fswd	fa3, min_caml_nvector(8)
	b	.trace_ray_cont_14
.trace_ray_else_13:
	call	get_nvector_second_2907
.trace_ray_cont_14:
.trace_ray_cont_8:
	lda	a1, min_caml_intersection_point
	flwd	fa0, min_caml_intersection_point(0)
	fswd	fa0, min_caml_startp(0)
	flwd	fa0, min_caml_intersection_point(4)
	fswd	fa0, min_caml_startp(4)
	flwd	fa0, min_caml_intersection_point(8)
	fswd	fa0, min_caml_startp(8)
	lw	a0, 64(sp)	# restore
	sw	a1, 68(sp)	# save
	call	utexture_2912
	lw	a0, 44(sp)	# restore
	slli	a0, a0, 2
	lwd	a1, min_caml_intsec_rectside(0)
	add	a0, a0, a1
	lw	a1, 0(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 40(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	slli	a0, a1, 2
	lw	a2, 28(sp)	# restore
	add	t6, a2, a0
	lw	a0, 0(t6)
	flwd	fa0, min_caml_intersection_point(0)
	fsw	fa0, 0(a0)
	flwd	fa0, min_caml_intersection_point(4)
	fsw	fa0, 4(a0)
	flwd	fa0, min_caml_intersection_point(8)
	fsw	fa0, 8(a0)
	fli	fa0, l_data_15
	lw	a0, 60(sp)	# restore
	flw	fa1, 0(a0)
	fle	a2, fa0, fa1
	bne	a2, zero, .trace_ray_else_15
	slli	a2, a1, 2
	lw	a4, 24(sp)	# restore
	add	t6, a4, a2
	sw	zero, 0(t6)
	b	.trace_ray_cont_16
.trace_ray_else_15:
	li	a2, 1
	slli	a4, a1, 2
	lw	a5, 24(sp)	# restore
	add	t6, a5, a4
	sw	a2, 0(t6)
	slli	a2, a1, 2
	lw	a4, 20(sp)	# restore
	add	t6, a4, a2
	lw	a2, 0(t6)
	flwd	fa0, min_caml_texture_color(0)
	fsw	fa0, 0(a2)
	flwd	fa0, min_caml_texture_color(4)
	fsw	fa0, 4(a2)
	flwd	fa0, min_caml_texture_color(8)
	fsw	fa0, 8(a2)
	slli	a2, a1, 2
	add	t6, a4, a2
	lw	a2, 0(t6)
	fli	fa0, l_data_24
	flw	fa1, 56(sp)	# restore
	fmul	fa0, fa0, fa1
	flw	fa2, 0(a2)
	fmul	fa2, fa2, fa0
	fsw	fa2, 0(a2)
	flw	fa2, 4(a2)
	fmul	fa2, fa2, fa0
	fsw	fa2, 4(a2)
	flw	fa2, 8(a2)
	fmul	fa0, fa2, fa0
	fsw	fa0, 8(a2)
	slli	a2, a1, 2
	lw	a4, 16(sp)	# restore
	add	t6, a4, a2
	lw	a2, 0(t6)
	flwd	fa0, min_caml_nvector(0)
	fsw	fa0, 0(a2)
	flwd	fa0, min_caml_nvector(4)
	fsw	fa0, 4(a2)
	flwd	fa0, min_caml_nvector(8)
	fsw	fa0, 8(a2)
.trace_ray_cont_16:
	fli	fa0, l_data_25
	lw	a2, 36(sp)	# restore
	flw	fa1, 0(a2)
	flwd	fa2, min_caml_nvector(0)
	fmul	fa1, fa1, fa2
	flw	fa2, 4(a2)
	flwd	fa3, min_caml_nvector(4)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	flw	fa2, 8(a2)
	flwd	fa3, min_caml_nvector(8)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	fmul	fa0, fa0, fa1
	flw	fa1, 0(a2)
	flwd	fa2, min_caml_nvector(0)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	fsw	fa1, 0(a2)
	flw	fa1, 4(a2)
	flwd	fa2, min_caml_nvector(4)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	fsw	fa1, 4(a2)
	flw	fa1, 8(a2)
	flwd	fa2, min_caml_nvector(8)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	fsw	fa0, 8(a2)
	flw	fa0, 4(a0)
	flw	fa1, 32(sp)	# restore
	fmul	fa0, fa1, fa0
	lwd	a1, min_caml_or_net(0)
	lw	a4, 0(a1)
	lw	a0, 0(a4)
	fsw	fa0, 72(sp)	# save
	bnei	a0, -1, .trace_ray_else_17
	li	a0, 0
	b	.trace_ray_cont_18+4
.trace_ray_else_17:
	li	a5, 99
	sw	a4, 76(sp)	# save
	sw	a1, 80(sp)	# save
	bne	a0, a5, .trace_ray_else_19
	lw	a0, 76(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .trace_ray_else_53
	li	a0, 1
	lw	a1, 80(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_ray_cont_78
.trace_ray_else_19:
	lda	a1, min_caml_light_dirvec
	lw	a2, 68(sp)	# restore
	call	solver_fast_2800
	bne	a0, zero, .trace_ray_else_21
	li	a0, 1
	lw	a1, 80(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_ray_cont_52
.trace_ray_else_21:
	flwd	fa0, min_caml_solver_dist(0)
	flw	fa1, 52(sp)	# restore
	fle	a0, fa1, fa0
	bne	a0, zero, .trace_ray_else_23
	lw	a0, 76(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .trace_ray_else_25
	li	a0, 1
	lw	a1, 80(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_ray_cont_52
.trace_ray_else_25:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_ray_else_49
	lw	a0, 76(sp)	# restore
	lw	a1, 8(a0)
	bnei	a1, -1, .trace_ray_else_29
	li	a0, 1
	lw	a1, 80(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_ray_cont_52
.trace_ray_else_29:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_ray_else_49
	lw	a0, 76(sp)	# restore
	lw	a1, 12(a0)
	bnei	a1, -1, .trace_ray_else_33
	li	a0, 1
	lw	a1, 80(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_ray_cont_52
.trace_ray_else_33:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_ray_else_49
	lw	a0, 76(sp)	# restore
	lw	a1, 16(a0)
	bnei	a1, -1, .trace_ray_else_37
	li	a0, 1
	lw	a1, 80(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_ray_cont_52
.trace_ray_else_37:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_ray_else_49
	lw	a0, 76(sp)	# restore
	lw	a1, 20(a0)
	bnei	a1, -1, .trace_ray_else_41
	li	a0, 1
	lw	a1, 80(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_ray_cont_52
.trace_ray_else_41:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_ray_else_49
	lw	a0, 76(sp)	# restore
	lw	a1, 24(a0)
	bnei	a1, -1, .trace_ray_else_45
	li	a0, 1
	lw	a1, 80(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_ray_cont_52
.trace_ray_else_45:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_ray_else_49
	li	a0, 7
	lw	a1, 76(sp)	# restore
	call	shadow_check_one_or_group_2869
	bne	a0, zero, .trace_ray_else_49
	li	a0, 1
	lw	a1, 80(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_ray_cont_52
.trace_ray_else_49:
	lw	a0, 76(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .trace_ray_else_53
	li	a0, 1
	lw	a1, 80(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_ray_cont_78
.trace_ray_else_23:
	li	a0, 1
	lw	a1, 80(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_ray_cont_52
	lw	a0, 76(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .trace_ray_else_53
	li	a0, 1
	lw	a1, 80(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_ray_cont_78
.trace_ray_else_53:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_ray_else_55
	lw	a0, 76(sp)	# restore
	lw	a1, 8(a0)
	bnei	a1, -1, .trace_ray_else_57
	li	a0, 1
	lw	a1, 80(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_ray_cont_78
.trace_ray_else_57:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_ray_else_55
	lw	a0, 76(sp)	# restore
	lw	a1, 12(a0)
	bnei	a1, -1, .trace_ray_else_61
	li	a0, 1
	lw	a1, 80(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_ray_cont_78
.trace_ray_else_61:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_ray_else_55
	lw	a0, 76(sp)	# restore
	lw	a1, 16(a0)
	bnei	a1, -1, .trace_ray_else_65
	li	a0, 1
	lw	a1, 80(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_ray_cont_78
.trace_ray_else_65:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_ray_else_55
	lw	a0, 76(sp)	# restore
	lw	a1, 20(a0)
	bnei	a1, -1, .trace_ray_else_69
	li	a0, 1
	lw	a1, 80(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_ray_cont_78
.trace_ray_else_69:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_ray_else_55
	lw	a0, 76(sp)	# restore
	lw	a1, 24(a0)
	bnei	a1, -1, .trace_ray_else_73
	li	a0, 1
	lw	a1, 80(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_ray_cont_78
.trace_ray_else_73:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_ray_else_55
	li	a0, 7
	lw	a1, 76(sp)	# restore
	call	shadow_check_one_or_group_2869
	bne	a0, zero, .trace_ray_else_77
	li	a0, 1
	lw	a1, 80(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_ray_cont_78
.trace_ray_else_55:
	li	a0, 1
	b	.trace_ray_else_77
.trace_ray_else_77:
	li	a0, 1
.trace_ray_cont_78:
.trace_ray_cont_52:
	bne	a0, zero, .trace_ray_cont_79
.trace_ray_cont_18+4:
	flwd	fa0, min_caml_nvector(0)
	flwd	fa1, min_caml_light(0)
	fmul	fa0, fa0, fa1
	flwd	fa1, min_caml_nvector(4)
	flwd	fa2, min_caml_light(4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flwd	fa1, min_caml_nvector(8)
	flwd	fa2, min_caml_light(8)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fneg	fa0, fa0
	flw	fa1, 56(sp)	# restore
	fmul	fa0, fa0, fa1
	lw	a0, 36(sp)	# restore
	flw	fa2, 0(a0)
	flwd	fa3, min_caml_light(0)
	fmul	fa2, fa2, fa3
	flw	fa3, 4(a0)
	flwd	fa4, min_caml_light(4)
	fmul	fa3, fa3, fa4
	fadd	fa2, fa2, fa3
	flw	fa3, 8(a0)
	flwd	fa4, min_caml_light(8)
	fmul	fa3, fa3, fa4
	fadd	fa2, fa2, fa3
	fneg	fa2, fa2
	fle	a1, fa0, fzero
	bne	a1, zero, .trace_ray_cont_80
	flwd	fa3, min_caml_rgb(0)
	flwd	fa4, min_caml_texture_color(0)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	fswd	fa3, min_caml_rgb(0)
	flwd	fa3, min_caml_rgb(4)
	flwd	fa4, min_caml_texture_color(4)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	fswd	fa3, min_caml_rgb(4)
	flwd	fa3, min_caml_rgb(8)
	flwd	fa4, min_caml_texture_color(8)
	fmul	fa0, fa0, fa4
	fadd	fa0, fa3, fa0
	fswd	fa0, min_caml_rgb(8)
.trace_ray_cont_80:
	fle	a1, fa2, fzero
	bne	a1, zero, .trace_ray_cont_81
	fmul	fa0, fa2, fa2
	fmul	fa0, fa0, fa0
	flw	fa2, 72(sp)	# restore
	fmul	fa0, fa0, fa2
	flwd	fa3, min_caml_rgb(0)
	fadd	fa3, fa3, fa0
	fswd	fa3, min_caml_rgb(0)
	flwd	fa3, min_caml_rgb(4)
	fadd	fa3, fa3, fa0
	fswd	fa3, min_caml_rgb(4)
	flwd	fa3, min_caml_rgb(8)
	fadd	fa0, fa3, fa0
	fswd	fa0, min_caml_rgb(8)
.trace_ray_cont_81:
.trace_ray_cont_79:
	flwd	fa0, min_caml_intersection_point(0)
	fswd	fa0, min_caml_startp_fast(0)
	flwd	fa0, min_caml_intersection_point(4)
	fswd	fa0, min_caml_startp_fast(4)
	flwd	fa0, min_caml_intersection_point(8)
	fswd	fa0, min_caml_startp_fast(8)
	lwd	a0, min_caml_n_objects(0)
	addi	a1, a0, -1
	lw	a0, 68(sp)	# restore
	call	setup_startp_constants_2835
	lwd	a0, min_caml_n_reflections(0)
	addi	a0, a0, -1
	blt	a0, zero, .trace_ray_cont_82
	slli	a1, a0, 2
	lwl	a1, min_caml_reflections(a1)
	flw	fa0, 8(a1)
	lw	a2, 4(a1)
	lw	a1, 0(a1)
	flw	fa1, 12(sp)	# restore
	fswd	fa1, min_caml_tmin(0)
	sw	a1, 84(sp)	# save
	lwd	a1, min_caml_or_net(0)
	lw	a3, 0(a1)
	sw	a0, 88(sp)	# save
	lw	a0, 0(a3)
	fsw	fa0, 92(sp)	# save
	sw	a2, 96(sp)	# save
	beqi	a0, -1, .trace_ray_cont_83
	li	a4, 99
	sw	a1, 100(sp)	# save
	bne	a0, a4, .trace_ray_else_84
	lw	a0, 4(a3)
	beqi	a0, -1, .trace_ray_cont_85
	slli	a0, a0, 2
	lwl	a1, min_caml_and_net(a0)
	li	a0, 0
	sw	a3, 104(sp)	# save
	call	solve_each_element_fast_2889
	lw	a0, 104(sp)	# restore
	lw	a1, 8(a0)
	beqi	a1, -1, .trace_ray_cont_85
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 96(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 104(sp)	# restore
	lw	a1, 12(a0)
	beqi	a1, -1, .trace_ray_cont_85
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 96(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 104(sp)	# restore
	lw	a1, 16(a0)
	beqi	a1, -1, .trace_ray_cont_85
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 96(sp)	# restore
	call	solve_each_element_fast_2889
	li	a0, 5
	lw	a1, 104(sp)	# restore
	lw	a2, 96(sp)	# restore
	call	solve_one_or_network_fast_2893
	b	.trace_ray_cont_85
.trace_ray_else_84:
	sw	a3, 104(sp)	# save
	mv	a1, a2
	call	solver_fast2_2818
	beq	a0, zero, .trace_ray_cont_90
	flwd	fa0, min_caml_solver_dist(0)
	flwd	fa1, min_caml_tmin(0)
	fle	a0, fa1, fa0
	bne	a0, zero, .trace_ray_cont_91
	lw	a0, 104(sp)	# restore
	lw	a1, 4(a0)
	beqi	a1, -1, .trace_ray_cont_92
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 96(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 104(sp)	# restore
	lw	a1, 8(a0)
	beqi	a1, -1, .trace_ray_cont_93
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 96(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 104(sp)	# restore
	lw	a1, 12(a0)
	beqi	a1, -1, .trace_ray_cont_94
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 96(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 104(sp)	# restore
	lw	a1, 16(a0)
	beqi	a1, -1, .trace_ray_cont_95
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 96(sp)	# restore
	call	solve_each_element_fast_2889
	li	a0, 5
	lw	a1, 104(sp)	# restore
	lw	a2, 96(sp)	# restore
	call	solve_one_or_network_fast_2893
.trace_ray_cont_95:
.trace_ray_cont_94:
.trace_ray_cont_93:
.trace_ray_cont_92:
.trace_ray_cont_91:
.trace_ray_cont_90:
.trace_ray_cont_85:
	li	a0, 1
	lw	a1, 100(sp)	# restore
	lw	a2, 96(sp)	# restore
	call	trace_or_matrix_fast_2897
.trace_ray_cont_83:
	flwd	fa0, min_caml_tmin(0)
	flw	fa1, 52(sp)	# restore
	fle	a0, fa0, fa1
	bne	a0, zero, .trace_ray_else_96
	fli	fa1, l_data_23
	fle	a0, fa1, fa0
	xori	a0, a0, 1
	b	.trace_ray_cont_97
.trace_ray_else_96:
	li	a0, 0
.trace_ray_cont_97:
	beq	a0, zero, .trace_ray_cont_98
	lwd	a0, min_caml_intersected_object_id(0)
	slli	a0, a0, 2
	lwd	a1, min_caml_intsec_rectside(0)
	add	a0, a0, a1
	lw	a1, 84(sp)	# restore
	bne	a0, a1, .trace_ray_cont_99
	li	a0, 0
	lwd	a1, min_caml_or_net(0)
	call	shadow_check_one_or_matrix_2872
	bne	a0, zero, .trace_ray_cont_100
	lw	a0, 96(sp)	# restore
	lw	a0, 0(a0)
	flwd	fa0, min_caml_nvector(0)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flwd	fa1, min_caml_nvector(4)
	flw	fa2, 4(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flwd	fa1, min_caml_nvector(8)
	flw	fa2, 8(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 56(sp)	# restore
	flw	fa2, 92(sp)	# restore
	fmul	fa3, fa2, fa1
	fmul	fa0, fa3, fa0
	lw	a1, 36(sp)	# restore
	flw	fa3, 0(a1)
	flw	fa4, 0(a0)
	fmul	fa3, fa3, fa4
	flw	fa4, 4(a1)
	flw	fa5, 4(a0)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	flw	fa4, 8(a1)
	flw	fa5, 8(a0)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa1, fa2, fa3
	flw	fa2, 72(sp)	# restore
	call	add_light_2915
.trace_ray_cont_100:
.trace_ray_cont_99:
.trace_ray_cont_98:
	lw	a0, 88(sp)	# restore
	addi	a0, a0, -1
	flw	fa0, 56(sp)	# restore
	flw	fa1, 72(sp)	# restore
	lw	a1, 36(sp)	# restore
	call	trace_reflections_2919
.trace_ray_cont_82:
	fli	fa0, l_data_26
	flw	fa1, 32(sp)	# restore
	fle	a0, fa1, fa0
	bne	a0, zero, trace_ray_ret
	lw	a0, 0(sp)	# restore
	blti	a0, 4, .trace_ray_else_101
	b	.trace_ray_cont_102
.trace_ray_else_101:
	addi	a1, a0, 1
	li	a2, -1
	slli	a1, a1, 2
	lw	a3, 40(sp)	# restore
	add	t6, a3, a1
	sw	a2, 0(t6)
.trace_ray_cont_102:
	lw	a1, 48(sp)	# restore
	bnei	a1, 2, .trace_ray_cont_103
	fli	fa0, l_data_5
	lw	a1, 60(sp)	# restore
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	fmul	fa0, fa1, fa0
	addi	a0, a0, 1
	flwd	fa1, min_caml_tmin(0)
	flw	fa2, 8(sp)	# restore
	fadd	fa1, fa2, fa1
	lw	a1, 36(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	trace_ray_2924
.trace_ray_cont_103:
trace_ray_ret:
	lw	ra, 108(sp)
	addi	sp, sp, 112
	jr	ra
trace_diffuse_ray_2930:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	fli	fa1, l_data_22
	fswd	fa1, min_caml_tmin(0)
	li	a1, 0
	lwd	a2, min_caml_or_net(0)
	fsw	fa0, 0(sp)	# save
	sw	a0, 4(sp)	# save
	mv	t4, a2
	mv	a2, a0
	mv	a0, a1
	mv	a1, t4
	call	trace_or_matrix_fast_2897
	flwd	fa0, min_caml_tmin(0)
	fli	fa1, l_data_9
	fle	a0, fa0, fa1
	bne	a0, zero, .trace_diffuse_ray_else_1
	fli	fa2, l_data_23
	fle	a0, fa2, fa0
	xori	a0, a0, 1
	b	.trace_diffuse_ray_cont_2
.trace_diffuse_ray_else_1:
	li	a0, 0
.trace_diffuse_ray_cont_2:
	bne	a0, zero, .trace_diffuse_ray_else_3
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
.trace_diffuse_ray_else_3:
	lwd	a0, min_caml_intersected_object_id(0)
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	lw	a1, 4(sp)	# restore
	lw	a1, 0(a1)
	lw	a2, 28(a0)
	lw	a3, 16(a0)
	lw	a4, 4(a0)
	sw	a2, 8(sp)	# save
	fsw	fa1, 12(sp)	# save
	sw	a0, 16(sp)	# save
	bnei	a4, 1, .trace_diffuse_ray_else_5
	lwd	a3, min_caml_intsec_rectside(0)
	fswd	fzero, min_caml_nvector(0)
	fswd	fzero, min_caml_nvector(4)
	fswd	fzero, min_caml_nvector(8)
	addi	a3, a3, -1
	slli	a4, a3, 2
	add	t6, a1, a4
	flw	fa0, 0(t6)
	feq	a1, fa0, fzero
	bne	a1, zero, .trace_diffuse_ray_else_7
	fle	a1, fa0, fzero
	bne	a1, zero, .trace_diffuse_ray_else_9
	fli	fa0, l_data_5
	fneg	fa0, fa0
	slli	a1, a3, 2
	fswl	fa0, min_caml_nvector(a1)
	lda	a1, min_caml_intersection_point
	lw	a0, 16(sp)	# restore
	sw	a1, 20(sp)	# save
	call	utexture_2912
	lwd	a1, min_caml_or_net(0)
	lw	a0, 0(a1)
	sw	a0, 24(sp)	# save
	lw	a0, 0(a0)
	bnei	a0, -1, .trace_diffuse_ray_else_13
	li	a0, 0
	b	.trace_diffuse_ray_cont_14+4
.trace_diffuse_ray_else_9:
	fli	fa0, l_data_6
	fneg	fa0, fa0
	slli	a1, a3, 2
	fswl	fa0, min_caml_nvector(a1)
	lda	a1, min_caml_intersection_point
	lw	a0, 16(sp)	# restore
	sw	a1, 20(sp)	# save
	call	utexture_2912
	lwd	a1, min_caml_or_net(0)
	lw	a0, 0(a1)
	sw	a0, 24(sp)	# save
	lw	a0, 0(a0)
	bnei	a0, -1, .trace_diffuse_ray_else_13
	li	a0, 0
	b	.trace_diffuse_ray_cont_14+4
.trace_diffuse_ray_else_7:
	fmv	fa0, fzero
	fneg	fa0, fa0
	slli	a1, a3, 2
	fswl	fa0, min_caml_nvector(a1)
	lda	a1, min_caml_intersection_point
	lw	a0, 16(sp)	# restore
	sw	a1, 20(sp)	# save
	call	utexture_2912
	lwd	a1, min_caml_or_net(0)
	lw	a0, 0(a1)
	sw	a0, 24(sp)	# save
	lw	a0, 0(a0)
	bnei	a0, -1, .trace_diffuse_ray_else_13
	li	a0, 0
	b	.trace_diffuse_ray_cont_14+4
.trace_diffuse_ray_else_5:
	bnei	a4, 2, .trace_diffuse_ray_else_11
	flw	fa0, 0(a3)
	fneg	fa0, fa0
	fswd	fa0, min_caml_nvector(0)
	flw	fa0, 4(a3)
	fneg	fa0, fa0
	fswd	fa0, min_caml_nvector(4)
	flw	fa0, 8(a3)
	fneg	fa0, fa0
	fswd	fa0, min_caml_nvector(8)
	lda	a1, min_caml_intersection_point
	lw	a0, 16(sp)	# restore
	sw	a1, 20(sp)	# save
	call	utexture_2912
	lwd	a1, min_caml_or_net(0)
	lw	a0, 0(a1)
	sw	a0, 24(sp)	# save
	lw	a0, 0(a0)
	bnei	a0, -1, .trace_diffuse_ray_else_13
	li	a0, 0
	b	.trace_diffuse_ray_cont_14+4
.trace_diffuse_ray_else_11:
	call	get_nvector_second_2907
	lda	a1, min_caml_intersection_point
	lw	a0, 16(sp)	# restore
	sw	a1, 20(sp)	# save
	call	utexture_2912
	lwd	a1, min_caml_or_net(0)
	lw	a0, 0(a1)
	sw	a0, 24(sp)	# save
	lw	a0, 0(a0)
	bnei	a0, -1, .trace_diffuse_ray_else_13
	li	a0, 0
	b	.trace_diffuse_ray_cont_14+4
.trace_diffuse_ray_else_13:
	li	a2, 99
	sw	a1, 28(sp)	# save
	bne	a0, a2, .trace_diffuse_ray_else_15
	lw	a0, 24(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .trace_diffuse_ray_else_49
	li	a0, 1
	lw	a1, 28(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_diffuse_ray_cont_74
.trace_diffuse_ray_else_15:
	lda	a1, min_caml_light_dirvec
	lw	a2, 20(sp)	# restore
	call	solver_fast_2800
	bne	a0, zero, .trace_diffuse_ray_else_17
	li	a0, 1
	lw	a1, 28(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_diffuse_ray_cont_48
.trace_diffuse_ray_else_17:
	flwd	fa0, min_caml_solver_dist(0)
	flw	fa1, 12(sp)	# restore
	fle	a0, fa1, fa0
	bne	a0, zero, .trace_diffuse_ray_else_19
	lw	a0, 24(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .trace_diffuse_ray_else_21
	li	a0, 1
	lw	a1, 28(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_diffuse_ray_cont_48
.trace_diffuse_ray_else_21:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_diffuse_ray_else_45
	lw	a0, 24(sp)	# restore
	lw	a1, 8(a0)
	bnei	a1, -1, .trace_diffuse_ray_else_25
	li	a0, 1
	lw	a1, 28(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_diffuse_ray_cont_48
.trace_diffuse_ray_else_25:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_diffuse_ray_else_45
	lw	a0, 24(sp)	# restore
	lw	a1, 12(a0)
	bnei	a1, -1, .trace_diffuse_ray_else_29
	li	a0, 1
	lw	a1, 28(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_diffuse_ray_cont_48
.trace_diffuse_ray_else_29:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_diffuse_ray_else_45
	lw	a0, 24(sp)	# restore
	lw	a1, 16(a0)
	bnei	a1, -1, .trace_diffuse_ray_else_33
	li	a0, 1
	lw	a1, 28(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_diffuse_ray_cont_48
.trace_diffuse_ray_else_33:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_diffuse_ray_else_45
	lw	a0, 24(sp)	# restore
	lw	a1, 20(a0)
	bnei	a1, -1, .trace_diffuse_ray_else_37
	li	a0, 1
	lw	a1, 28(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_diffuse_ray_cont_48
.trace_diffuse_ray_else_37:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_diffuse_ray_else_45
	lw	a0, 24(sp)	# restore
	lw	a1, 24(a0)
	bnei	a1, -1, .trace_diffuse_ray_else_41
	li	a0, 1
	lw	a1, 28(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_diffuse_ray_cont_48
.trace_diffuse_ray_else_41:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_diffuse_ray_else_45
	li	a0, 7
	lw	a1, 24(sp)	# restore
	call	shadow_check_one_or_group_2869
	bne	a0, zero, .trace_diffuse_ray_else_45
	li	a0, 1
	lw	a1, 28(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_diffuse_ray_cont_48
.trace_diffuse_ray_else_45:
	lw	a0, 24(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .trace_diffuse_ray_else_49
	li	a0, 1
	lw	a1, 28(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_diffuse_ray_cont_74
.trace_diffuse_ray_else_19:
	li	a0, 1
	lw	a1, 28(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_diffuse_ray_cont_48
	lw	a0, 24(sp)	# restore
	lw	a1, 4(a0)
	bnei	a1, -1, .trace_diffuse_ray_else_49
	li	a0, 1
	lw	a1, 28(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_diffuse_ray_cont_74
.trace_diffuse_ray_else_49:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_diffuse_ray_else_51
	lw	a0, 24(sp)	# restore
	lw	a1, 8(a0)
	bnei	a1, -1, .trace_diffuse_ray_else_53
	li	a0, 1
	lw	a1, 28(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_diffuse_ray_cont_74
.trace_diffuse_ray_else_53:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_diffuse_ray_else_51
	lw	a0, 24(sp)	# restore
	lw	a1, 12(a0)
	bnei	a1, -1, .trace_diffuse_ray_else_57
	li	a0, 1
	lw	a1, 28(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_diffuse_ray_cont_74
.trace_diffuse_ray_else_57:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_diffuse_ray_else_51
	lw	a0, 24(sp)	# restore
	lw	a1, 16(a0)
	bnei	a1, -1, .trace_diffuse_ray_else_61
	li	a0, 1
	lw	a1, 28(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_diffuse_ray_cont_74
.trace_diffuse_ray_else_61:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_diffuse_ray_else_51
	lw	a0, 24(sp)	# restore
	lw	a1, 20(a0)
	bnei	a1, -1, .trace_diffuse_ray_else_65
	li	a0, 1
	lw	a1, 28(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_diffuse_ray_cont_74
.trace_diffuse_ray_else_65:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_diffuse_ray_else_51
	lw	a0, 24(sp)	# restore
	lw	a1, 24(a0)
	bnei	a1, -1, .trace_diffuse_ray_else_69
	li	a0, 1
	lw	a1, 28(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_diffuse_ray_cont_74
.trace_diffuse_ray_else_69:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2866
	bne	a0, zero, .trace_diffuse_ray_else_51
	li	a0, 7
	lw	a1, 24(sp)	# restore
	call	shadow_check_one_or_group_2869
	bne	a0, zero, .trace_diffuse_ray_else_73
	li	a0, 1
	lw	a1, 28(sp)	# restore
	call	shadow_check_one_or_matrix_2872
	b	.trace_diffuse_ray_cont_74
.trace_diffuse_ray_else_51:
	li	a0, 1
	b	.trace_diffuse_ray_else_73
.trace_diffuse_ray_else_73:
	li	a0, 1
.trace_diffuse_ray_cont_74:
.trace_diffuse_ray_cont_48:
	bne	a0, zero, trace_diffuse_ray_ret
.trace_diffuse_ray_cont_14+4:
	flwd	fa0, min_caml_nvector(0)
	flwd	fa1, min_caml_light(0)
	fmul	fa0, fa0, fa1
	flwd	fa1, min_caml_nvector(4)
	flwd	fa2, min_caml_light(4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flwd	fa1, min_caml_nvector(8)
	flwd	fa2, min_caml_light(8)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fneg	fa0, fa0
	fle	a0, fa0, fzero
	beq	a0, zero, .trace_diffuse_ray_cont_75
	fmv	fa0, fzero
.trace_diffuse_ray_cont_75:
	flw	fa1, 0(sp)	# restore
	fmul	fa0, fa1, fa0
	lw	a0, 8(sp)	# restore
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flwd	fa1, min_caml_diffuse_ray(0)
	flwd	fa2, min_caml_texture_color(0)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	fswd	fa1, min_caml_diffuse_ray(0)
	flwd	fa1, min_caml_diffuse_ray(4)
	flwd	fa2, min_caml_texture_color(4)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	fswd	fa1, min_caml_diffuse_ray(4)
	flwd	fa1, min_caml_diffuse_ray(8)
	flwd	fa2, min_caml_texture_color(8)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	fswd	fa0, min_caml_diffuse_ray(8)
trace_diffuse_ray_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
iter_trace_diffuse_rays_2933:
	addi	sp, sp, -72
	sw	ra, 68(sp)
	blt	a3, zero, iter_trace_diffuse_rays_ret
	slli	a4, a3, 2
	add	t6, a0, a4
	lw	a4, 0(t6)
	lw	a4, 0(a4)
	flw	fa0, 0(a4)
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a4)
	flw	fa2, 4(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a4)
	flw	fa2, 8(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fle	a4, fzero, fa0
	sw	a2, 0(sp)	# save
	sw	a1, 4(sp)	# save
	sw	a0, 8(sp)	# save
	sw	a3, 12(sp)	# save
	bne	a4, zero, .iter_trace_diffuse_rays_else_1
	addi	a4, a3, 1
	slli	a4, a4, 2
	add	t6, a0, a4
	lw	a2, 0(t6)
	fli	fa1, l_data_28
	fdiv	fa0, fa0, fa1
	fli	fa1, l_data_22
	fswd	fa1, min_caml_tmin(0)
	lwd	a1, min_caml_or_net(0)
	lw	a4, 0(a1)
	lw	a0, 0(a4)
	fsw	fa0, 16(sp)	# save
	sw	a2, 20(sp)	# save
	beqi	a0, -1, .iter_trace_diffuse_rays_cont_3
	li	a5, 99
	sw	a1, 24(sp)	# save
	bne	a0, a5, .iter_trace_diffuse_rays_else_4
	lw	a0, 4(a4)
	beqi	a0, -1, .iter_trace_diffuse_rays_cont_5
	slli	a0, a0, 2
	lwl	a1, min_caml_and_net(a0)
	li	a0, 0
	sw	a4, 28(sp)	# save
	call	solve_each_element_fast_2889
	lw	a0, 28(sp)	# restore
	lw	a1, 8(a0)
	beqi	a1, -1, .iter_trace_diffuse_rays_cont_5
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 20(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 28(sp)	# restore
	lw	a1, 12(a0)
	beqi	a1, -1, .iter_trace_diffuse_rays_cont_5
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 20(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 28(sp)	# restore
	lw	a1, 16(a0)
	beqi	a1, -1, .iter_trace_diffuse_rays_cont_5
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 20(sp)	# restore
	call	solve_each_element_fast_2889
	li	a0, 5
	lw	a1, 28(sp)	# restore
	lw	a2, 20(sp)	# restore
	call	solve_one_or_network_fast_2893
	b	.iter_trace_diffuse_rays_cont_5
.iter_trace_diffuse_rays_else_4:
	sw	a4, 28(sp)	# save
	mv	a1, a2
	call	solver_fast2_2818
	beq	a0, zero, .iter_trace_diffuse_rays_cont_10
	flwd	fa0, min_caml_solver_dist(0)
	flwd	fa1, min_caml_tmin(0)
	fle	a0, fa1, fa0
	bne	a0, zero, .iter_trace_diffuse_rays_cont_11
	lw	a0, 28(sp)	# restore
	lw	a1, 4(a0)
	beqi	a1, -1, .iter_trace_diffuse_rays_cont_12
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 20(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 28(sp)	# restore
	lw	a1, 8(a0)
	beqi	a1, -1, .iter_trace_diffuse_rays_cont_13
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 20(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 28(sp)	# restore
	lw	a1, 12(a0)
	beqi	a1, -1, .iter_trace_diffuse_rays_cont_14
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 20(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 28(sp)	# restore
	lw	a1, 16(a0)
	beqi	a1, -1, .iter_trace_diffuse_rays_cont_15
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 20(sp)	# restore
	call	solve_each_element_fast_2889
	li	a0, 5
	lw	a1, 28(sp)	# restore
	lw	a2, 20(sp)	# restore
	call	solve_one_or_network_fast_2893
.iter_trace_diffuse_rays_cont_15:
.iter_trace_diffuse_rays_cont_14:
.iter_trace_diffuse_rays_cont_13:
.iter_trace_diffuse_rays_cont_12:
.iter_trace_diffuse_rays_cont_11:
.iter_trace_diffuse_rays_cont_10:
.iter_trace_diffuse_rays_cont_5:
	li	a0, 1
	lw	a1, 24(sp)	# restore
	lw	a2, 20(sp)	# restore
	call	trace_or_matrix_fast_2897
.iter_trace_diffuse_rays_cont_3:
	flwd	fa0, min_caml_tmin(0)
	fli	fa1, l_data_9
	fle	a0, fa0, fa1
	bne	a0, zero, .iter_trace_diffuse_rays_else_16
	fli	fa1, l_data_23
	fle	a0, fa1, fa0
	xori	a0, a0, 1
	beq	a0, zero, .iter_trace_diffuse_rays_cont_2
	lwd	a0, min_caml_intersected_object_id(0)
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	lw	a1, 20(sp)	# restore
	lw	a1, 0(a1)
	lw	a2, 28(a0)
	lw	a3, 16(a0)
	lw	a4, 4(a0)
	sw	a2, 32(sp)	# save
	sw	a0, 36(sp)	# save
	bnei	a4, 1, .iter_trace_diffuse_rays_else_19
	lwd	a3, min_caml_intsec_rectside(0)
	fswd	fzero, min_caml_nvector(0)
	fswd	fzero, min_caml_nvector(4)
	fswd	fzero, min_caml_nvector(8)
	addi	a3, a3, -1
	slli	a4, a3, 2
	add	t6, a1, a4
	flw	fa0, 0(t6)
	feq	a1, fa0, fzero
	bne	a1, zero, .iter_trace_diffuse_rays_else_21
	fle	a1, fa0, fzero
	bne	a1, zero, .iter_trace_diffuse_rays_else_23
	fli	fa0, l_data_5
	fneg	fa0, fa0
	slli	a1, a3, 2
	fswl	fa0, min_caml_nvector(a1)
	b	.iter_trace_diffuse_rays_cont_20
.iter_trace_diffuse_rays_else_16:
	li	a0, 0
	b	.iter_trace_diffuse_rays_cont_2
.iter_trace_diffuse_rays_else_23:
	fli	fa0, l_data_6
	fneg	fa0, fa0
	slli	a1, a3, 2
	fswl	fa0, min_caml_nvector(a1)
	b	.iter_trace_diffuse_rays_cont_20
.iter_trace_diffuse_rays_else_21:
	fmv	fa0, fzero
	fneg	fa0, fa0
	slli	a1, a3, 2
	fswl	fa0, min_caml_nvector(a1)
	b	.iter_trace_diffuse_rays_cont_20
.iter_trace_diffuse_rays_else_19:
	bnei	a4, 2, .iter_trace_diffuse_rays_else_25
	flw	fa0, 0(a3)
	fneg	fa0, fa0
	fswd	fa0, min_caml_nvector(0)
	flw	fa0, 4(a3)
	fneg	fa0, fa0
	fswd	fa0, min_caml_nvector(4)
	flw	fa0, 8(a3)
	fneg	fa0, fa0
	fswd	fa0, min_caml_nvector(8)
	b	.iter_trace_diffuse_rays_cont_26
.iter_trace_diffuse_rays_else_25:
	call	get_nvector_second_2907
.iter_trace_diffuse_rays_cont_26:
.iter_trace_diffuse_rays_cont_20:
	lda	a1, min_caml_intersection_point
	lw	a0, 36(sp)	# restore
	call	utexture_2912
	li	a0, 0
	lwd	a1, min_caml_or_net(0)
	call	shadow_check_one_or_matrix_2872
	bne	a0, zero, .iter_trace_diffuse_rays_cont_2
	flwd	fa0, min_caml_nvector(0)
	flwd	fa1, min_caml_light(0)
	fmul	fa0, fa0, fa1
	flwd	fa1, min_caml_nvector(4)
	flwd	fa2, min_caml_light(4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flwd	fa1, min_caml_nvector(8)
	flwd	fa2, min_caml_light(8)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fneg	fa0, fa0
	fle	a0, fa0, fzero
	beq	a0, zero, .iter_trace_diffuse_rays_cont_28
	fmv	fa0, fzero
.iter_trace_diffuse_rays_cont_28:
	flw	fa1, 16(sp)	# restore
	fmul	fa0, fa1, fa0
	lw	a0, 32(sp)	# restore
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flwd	fa1, min_caml_diffuse_ray(0)
	flwd	fa2, min_caml_texture_color(0)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	fswd	fa1, min_caml_diffuse_ray(0)
	flwd	fa1, min_caml_diffuse_ray(4)
	flwd	fa2, min_caml_texture_color(4)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	fswd	fa1, min_caml_diffuse_ray(4)
	flwd	fa1, min_caml_diffuse_ray(8)
	flwd	fa2, min_caml_texture_color(8)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	fswd	fa0, min_caml_diffuse_ray(8)
	b	.iter_trace_diffuse_rays_cont_2
.iter_trace_diffuse_rays_else_1:
	slli	a4, a3, 2
	add	t6, a0, a4
	lw	a2, 0(t6)
	fli	fa1, l_data_27
	fdiv	fa0, fa0, fa1
	fli	fa1, l_data_22
	fswd	fa1, min_caml_tmin(0)
	lwd	a1, min_caml_or_net(0)
	lw	a4, 0(a1)
	lw	a0, 0(a4)
	fsw	fa0, 40(sp)	# save
	sw	a2, 44(sp)	# save
	beqi	a0, -1, .iter_trace_diffuse_rays_cont_29
	li	a5, 99
	sw	a1, 48(sp)	# save
	bne	a0, a5, .iter_trace_diffuse_rays_else_30
	lw	a0, 4(a4)
	beqi	a0, -1, .iter_trace_diffuse_rays_cont_31
	slli	a0, a0, 2
	lwl	a1, min_caml_and_net(a0)
	li	a0, 0
	sw	a4, 52(sp)	# save
	call	solve_each_element_fast_2889
	lw	a0, 52(sp)	# restore
	lw	a1, 8(a0)
	beqi	a1, -1, .iter_trace_diffuse_rays_cont_31
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 44(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 52(sp)	# restore
	lw	a1, 12(a0)
	beqi	a1, -1, .iter_trace_diffuse_rays_cont_31
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 44(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 52(sp)	# restore
	lw	a1, 16(a0)
	beqi	a1, -1, .iter_trace_diffuse_rays_cont_31
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 44(sp)	# restore
	call	solve_each_element_fast_2889
	li	a0, 5
	lw	a1, 52(sp)	# restore
	lw	a2, 44(sp)	# restore
	call	solve_one_or_network_fast_2893
	b	.iter_trace_diffuse_rays_cont_31
.iter_trace_diffuse_rays_else_30:
	sw	a4, 52(sp)	# save
	mv	a1, a2
	call	solver_fast2_2818
	beq	a0, zero, .iter_trace_diffuse_rays_cont_36
	flwd	fa0, min_caml_solver_dist(0)
	flwd	fa1, min_caml_tmin(0)
	fle	a0, fa1, fa0
	bne	a0, zero, .iter_trace_diffuse_rays_cont_37
	lw	a0, 52(sp)	# restore
	lw	a1, 4(a0)
	beqi	a1, -1, .iter_trace_diffuse_rays_cont_38
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 44(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 52(sp)	# restore
	lw	a1, 8(a0)
	beqi	a1, -1, .iter_trace_diffuse_rays_cont_39
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 44(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 52(sp)	# restore
	lw	a1, 12(a0)
	beqi	a1, -1, .iter_trace_diffuse_rays_cont_40
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 44(sp)	# restore
	call	solve_each_element_fast_2889
	lw	a0, 52(sp)	# restore
	lw	a1, 16(a0)
	beqi	a1, -1, .iter_trace_diffuse_rays_cont_41
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 44(sp)	# restore
	call	solve_each_element_fast_2889
	li	a0, 5
	lw	a1, 52(sp)	# restore
	lw	a2, 44(sp)	# restore
	call	solve_one_or_network_fast_2893
.iter_trace_diffuse_rays_cont_41:
.iter_trace_diffuse_rays_cont_40:
.iter_trace_diffuse_rays_cont_39:
.iter_trace_diffuse_rays_cont_38:
.iter_trace_diffuse_rays_cont_37:
.iter_trace_diffuse_rays_cont_36:
.iter_trace_diffuse_rays_cont_31:
	li	a0, 1
	lw	a1, 48(sp)	# restore
	lw	a2, 44(sp)	# restore
	call	trace_or_matrix_fast_2897
.iter_trace_diffuse_rays_cont_29:
	flwd	fa0, min_caml_tmin(0)
	fli	fa1, l_data_9
	fle	a0, fa0, fa1
	bne	a0, zero, .iter_trace_diffuse_rays_else_42
	fli	fa1, l_data_23
	fle	a0, fa1, fa0
	xori	a0, a0, 1
	beq	a0, zero, .iter_trace_diffuse_rays_cont_44
	lwd	a0, min_caml_intersected_object_id(0)
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	lw	a1, 44(sp)	# restore
	lw	a1, 0(a1)
	lw	a2, 28(a0)
	lw	a3, 16(a0)
	lw	a4, 4(a0)
	sw	a2, 56(sp)	# save
	sw	a0, 60(sp)	# save
	bnei	a4, 1, .iter_trace_diffuse_rays_else_45
	lwd	a3, min_caml_intsec_rectside(0)
	fswd	fzero, min_caml_nvector(0)
	fswd	fzero, min_caml_nvector(4)
	fswd	fzero, min_caml_nvector(8)
	addi	a3, a3, -1
	slli	a4, a3, 2
	add	t6, a1, a4
	flw	fa0, 0(t6)
	feq	a1, fa0, fzero
	bne	a1, zero, .iter_trace_diffuse_rays_else_47
	fle	a1, fa0, fzero
	bne	a1, zero, .iter_trace_diffuse_rays_else_49
	fli	fa0, l_data_5
	fneg	fa0, fa0
	slli	a1, a3, 2
	fswl	fa0, min_caml_nvector(a1)
	b	.iter_trace_diffuse_rays_cont_46
.iter_trace_diffuse_rays_else_42:
	li	a0, 0
	b	.iter_trace_diffuse_rays_cont_44
.iter_trace_diffuse_rays_else_49:
	fli	fa0, l_data_6
	fneg	fa0, fa0
	slli	a1, a3, 2
	fswl	fa0, min_caml_nvector(a1)
	b	.iter_trace_diffuse_rays_cont_46
.iter_trace_diffuse_rays_else_47:
	fmv	fa0, fzero
	fneg	fa0, fa0
	slli	a1, a3, 2
	fswl	fa0, min_caml_nvector(a1)
	b	.iter_trace_diffuse_rays_cont_46
.iter_trace_diffuse_rays_else_45:
	bnei	a4, 2, .iter_trace_diffuse_rays_else_51
	flw	fa0, 0(a3)
	fneg	fa0, fa0
	fswd	fa0, min_caml_nvector(0)
	flw	fa0, 4(a3)
	fneg	fa0, fa0
	fswd	fa0, min_caml_nvector(4)
	flw	fa0, 8(a3)
	fneg	fa0, fa0
	fswd	fa0, min_caml_nvector(8)
	b	.iter_trace_diffuse_rays_cont_52
.iter_trace_diffuse_rays_else_51:
	call	get_nvector_second_2907
.iter_trace_diffuse_rays_cont_52:
.iter_trace_diffuse_rays_cont_46:
	lda	a1, min_caml_intersection_point
	lw	a0, 60(sp)	# restore
	call	utexture_2912
	li	a0, 0
	lwd	a1, min_caml_or_net(0)
	call	shadow_check_one_or_matrix_2872
	bne	a0, zero, .iter_trace_diffuse_rays_cont_53
	flwd	fa0, min_caml_nvector(0)
	flwd	fa1, min_caml_light(0)
	fmul	fa0, fa0, fa1
	flwd	fa1, min_caml_nvector(4)
	flwd	fa2, min_caml_light(4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flwd	fa1, min_caml_nvector(8)
	flwd	fa2, min_caml_light(8)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fneg	fa0, fa0
	fle	a0, fa0, fzero
	beq	a0, zero, .iter_trace_diffuse_rays_cont_54
	fmv	fa0, fzero
.iter_trace_diffuse_rays_cont_54:
	flw	fa1, 40(sp)	# restore
	fmul	fa0, fa1, fa0
	lw	a0, 56(sp)	# restore
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flwd	fa1, min_caml_diffuse_ray(0)
	flwd	fa2, min_caml_texture_color(0)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	fswd	fa1, min_caml_diffuse_ray(0)
	flwd	fa1, min_caml_diffuse_ray(4)
	flwd	fa2, min_caml_texture_color(4)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	fswd	fa1, min_caml_diffuse_ray(4)
	flwd	fa1, min_caml_diffuse_ray(8)
	flwd	fa2, min_caml_texture_color(8)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	fswd	fa0, min_caml_diffuse_ray(8)
.iter_trace_diffuse_rays_cont_53:
.iter_trace_diffuse_rays_cont_44:
.iter_trace_diffuse_rays_cont_2:
	lw	a0, 12(sp)	# restore
	addi	a0, a0, -2
	blt	a0, zero, iter_trace_diffuse_rays_ret
	slli	a1, a0, 2
	lw	a2, 8(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	flw	fa0, 0(a1)
	lw	a3, 4(sp)	# restore
	flw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a1)
	flw	fa2, 4(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fle	a1, fzero, fa0
	sw	a0, 64(sp)	# save
	bne	a1, zero, .iter_trace_diffuse_rays_else_55
	addi	a1, a0, 1
	slli	a1, a1, 2
	add	t6, a2, a1
	lw	a0, 0(t6)
	fli	fa1, l_data_28
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2930
	b	.iter_trace_diffuse_rays_cont_56
.iter_trace_diffuse_rays_else_55:
	slli	a1, a0, 2
	add	t6, a2, a1
	lw	a0, 0(t6)
	fli	fa1, l_data_27
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2930
.iter_trace_diffuse_rays_cont_56:
	lw	a0, 64(sp)	# restore
	addi	a3, a0, -2
	lw	a0, 8(sp)	# restore
	lw	a1, 4(sp)	# restore
	lw	a2, 0(sp)	# restore
	call	iter_trace_diffuse_rays_2933
iter_trace_diffuse_rays_ret:
	lw	ra, 68(sp)
	addi	sp, sp, 72
	jr	ra
trace_diffuse_ray_80percent_2942:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	a1, 0(sp)	# save
	sw	a2, 4(sp)	# save
	sw	a0, 8(sp)	# save
	beq	a0, zero, .trace_diffuse_ray_80percent_cont_1
	lwd	a3, min_caml_dirvecs(0)
	flw	fa0, 0(a2)
	fswd	fa0, min_caml_startp_fast(0)
	flw	fa0, 4(a2)
	fswd	fa0, min_caml_startp_fast(4)
	flw	fa0, 8(a2)
	fswd	fa0, min_caml_startp_fast(8)
	lwd	a4, min_caml_n_objects(0)
	addi	a1, a4, -1
	sw	a3, 12(sp)	# save
	mv	a0, a2
	call	setup_startp_constants_2835
	li	a3, 118
	lw	a0, 12(sp)	# restore
	lw	a1, 0(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	iter_trace_diffuse_rays_2933
.trace_diffuse_ray_80percent_cont_1:
	lw	a0, 8(sp)	# restore
	beqi	a0, 1, .trace_diffuse_ray_80percent_cont_2
	lwd	a1, min_caml_dirvecs(4)
	lw	a0, 4(sp)	# restore
	flw	fa0, 0(a0)
	fswd	fa0, min_caml_startp_fast(0)
	flw	fa0, 4(a0)
	fswd	fa0, min_caml_startp_fast(4)
	flw	fa0, 8(a0)
	fswd	fa0, min_caml_startp_fast(8)
	lwd	a2, min_caml_n_objects(0)
	sw	a1, 16(sp)	# save
	addi	a1, a2, -1
	call	setup_startp_constants_2835
	li	a3, 118
	lw	a0, 16(sp)	# restore
	lw	a1, 0(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	iter_trace_diffuse_rays_2933
.trace_diffuse_ray_80percent_cont_2:
	lw	a0, 8(sp)	# restore
	beqi	a0, 2, .trace_diffuse_ray_80percent_cont_3
	lwd	a1, min_caml_dirvecs(8)
	lw	a0, 4(sp)	# restore
	flw	fa0, 0(a0)
	fswd	fa0, min_caml_startp_fast(0)
	flw	fa0, 4(a0)
	fswd	fa0, min_caml_startp_fast(4)
	flw	fa0, 8(a0)
	fswd	fa0, min_caml_startp_fast(8)
	lwd	a2, min_caml_n_objects(0)
	sw	a1, 20(sp)	# save
	addi	a1, a2, -1
	call	setup_startp_constants_2835
	li	a3, 118
	lw	a0, 20(sp)	# restore
	lw	a1, 0(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	iter_trace_diffuse_rays_2933
.trace_diffuse_ray_80percent_cont_3:
	lw	a0, 8(sp)	# restore
	beqi	a0, 3, .trace_diffuse_ray_80percent_cont_4
	lwd	a1, min_caml_dirvecs(12)
	lw	a0, 4(sp)	# restore
	flw	fa0, 0(a0)
	fswd	fa0, min_caml_startp_fast(0)
	flw	fa0, 4(a0)
	fswd	fa0, min_caml_startp_fast(4)
	flw	fa0, 8(a0)
	fswd	fa0, min_caml_startp_fast(8)
	lwd	a2, min_caml_n_objects(0)
	sw	a1, 24(sp)	# save
	addi	a1, a2, -1
	call	setup_startp_constants_2835
	li	a3, 118
	lw	a0, 24(sp)	# restore
	lw	a1, 0(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	iter_trace_diffuse_rays_2933
.trace_diffuse_ray_80percent_cont_4:
	lw	a0, 8(sp)	# restore
	bnei	a0, 4, .trace_diffuse_ray_80percent_else_5
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
.trace_diffuse_ray_80percent_else_5:
	lwd	a0, min_caml_dirvecs(16)
	sw	a0, 28(sp)	# save
	lw	a0, 4(sp)	# restore
	flw	fa0, 0(a0)
	fswd	fa0, min_caml_startp_fast(0)
	flw	fa0, 4(a0)
	fswd	fa0, min_caml_startp_fast(4)
	flw	fa0, 8(a0)
	fswd	fa0, min_caml_startp_fast(8)
	lwd	a1, min_caml_n_objects(0)
	addi	a1, a1, -1
	call	setup_startp_constants_2835
	li	a3, 118
	lw	a0, 28(sp)	# restore
	lw	a1, 0(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	iter_trace_diffuse_rays_2933
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
calc_diffuse_using_1point_2946:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	lw	a2, 28(a0)
	lw	a3, 24(a0)
	lw	a4, 20(a0)
	lw	a5, 16(a0)
	lw	a0, 4(a0)
	slli	a6, a1, 2
	add	t6, a4, a6
	lw	a4, 0(t6)
	flw	fa0, 0(a4)
	fswd	fa0, min_caml_diffuse_ray(0)
	flw	fa0, 4(a4)
	fswd	fa0, min_caml_diffuse_ray(4)
	flw	fa0, 8(a4)
	fswd	fa0, min_caml_diffuse_ray(8)
	lw	a3, 0(a3)
	slli	a4, a1, 2
	add	t6, a2, a4
	lw	a2, 0(t6)
	slli	a4, a1, 2
	add	t6, a0, a4
	lw	a0, 0(t6)
	sw	a5, 0(sp)	# save
	sw	a1, 4(sp)	# save
	sw	a2, 8(sp)	# save
	sw	a0, 12(sp)	# save
	sw	a3, 16(sp)	# save
	beq	a3, zero, .calc_diffuse_using_1point_cont_1
	lwd	a4, min_caml_dirvecs(0)
	flw	fa0, 0(a0)
	fswd	fa0, min_caml_startp_fast(0)
	flw	fa0, 4(a0)
	fswd	fa0, min_caml_startp_fast(4)
	flw	fa0, 8(a0)
	fswd	fa0, min_caml_startp_fast(8)
	lwd	a6, min_caml_n_objects(0)
	addi	a1, a6, -1
	sw	a4, 20(sp)	# save
	call	setup_startp_constants_2835
	lw	a0, 20(sp)	# restore
	lw	a1, 472(a0)
	lw	a1, 0(a1)
	flw	fa0, 0(a1)
	lw	a2, 8(sp)	# restore
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a1)
	flw	fa2, 4(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fle	a1, fzero, fa0
	bne	a1, zero, .calc_diffuse_using_1point_else_2
	lw	a0, 476(a0)
	fli	fa1, l_data_28
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2930
	b	.calc_diffuse_using_1point_cont_3
.calc_diffuse_using_1point_else_2:
	lw	a0, 472(a0)
	fli	fa1, l_data_27
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2930
.calc_diffuse_using_1point_cont_3:
	li	a3, 116
	lw	a0, 20(sp)	# restore
	lw	a1, 8(sp)	# restore
	lw	a2, 12(sp)	# restore
	call	iter_trace_diffuse_rays_2933
.calc_diffuse_using_1point_cont_1:
	lw	a0, 16(sp)	# restore
	beqi	a0, 1, .calc_diffuse_using_1point_cont_4
	lwd	a1, min_caml_dirvecs(4)
	lw	a0, 12(sp)	# restore
	flw	fa0, 0(a0)
	fswd	fa0, min_caml_startp_fast(0)
	flw	fa0, 4(a0)
	fswd	fa0, min_caml_startp_fast(4)
	flw	fa0, 8(a0)
	fswd	fa0, min_caml_startp_fast(8)
	lwd	a2, min_caml_n_objects(0)
	sw	a1, 24(sp)	# save
	addi	a1, a2, -1
	call	setup_startp_constants_2835
	lw	a0, 24(sp)	# restore
	lw	a1, 472(a0)
	lw	a1, 0(a1)
	flw	fa0, 0(a1)
	lw	a2, 8(sp)	# restore
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a1)
	flw	fa2, 4(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fle	a1, fzero, fa0
	bne	a1, zero, .calc_diffuse_using_1point_else_5
	lw	a0, 476(a0)
	fli	fa1, l_data_28
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2930
	b	.calc_diffuse_using_1point_cont_6
.calc_diffuse_using_1point_else_5:
	lw	a0, 472(a0)
	fli	fa1, l_data_27
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2930
.calc_diffuse_using_1point_cont_6:
	li	a3, 116
	lw	a0, 24(sp)	# restore
	lw	a1, 8(sp)	# restore
	lw	a2, 12(sp)	# restore
	call	iter_trace_diffuse_rays_2933
.calc_diffuse_using_1point_cont_4:
	lw	a0, 16(sp)	# restore
	beqi	a0, 2, .calc_diffuse_using_1point_cont_7
	lwd	a1, min_caml_dirvecs(8)
	lw	a0, 12(sp)	# restore
	flw	fa0, 0(a0)
	fswd	fa0, min_caml_startp_fast(0)
	flw	fa0, 4(a0)
	fswd	fa0, min_caml_startp_fast(4)
	flw	fa0, 8(a0)
	fswd	fa0, min_caml_startp_fast(8)
	lwd	a2, min_caml_n_objects(0)
	sw	a1, 28(sp)	# save
	addi	a1, a2, -1
	call	setup_startp_constants_2835
	lw	a0, 28(sp)	# restore
	lw	a1, 472(a0)
	lw	a1, 0(a1)
	flw	fa0, 0(a1)
	lw	a2, 8(sp)	# restore
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a1)
	flw	fa2, 4(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fle	a1, fzero, fa0
	bne	a1, zero, .calc_diffuse_using_1point_else_8
	lw	a0, 476(a0)
	fli	fa1, l_data_28
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2930
	b	.calc_diffuse_using_1point_cont_9
.calc_diffuse_using_1point_else_8:
	lw	a0, 472(a0)
	fli	fa1, l_data_27
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2930
.calc_diffuse_using_1point_cont_9:
	li	a3, 116
	lw	a0, 28(sp)	# restore
	lw	a1, 8(sp)	# restore
	lw	a2, 12(sp)	# restore
	call	iter_trace_diffuse_rays_2933
.calc_diffuse_using_1point_cont_7:
	lw	a0, 16(sp)	# restore
	beqi	a0, 3, .calc_diffuse_using_1point_cont_10
	lwd	a1, min_caml_dirvecs(12)
	lw	a0, 12(sp)	# restore
	flw	fa0, 0(a0)
	fswd	fa0, min_caml_startp_fast(0)
	flw	fa0, 4(a0)
	fswd	fa0, min_caml_startp_fast(4)
	flw	fa0, 8(a0)
	fswd	fa0, min_caml_startp_fast(8)
	lwd	a2, min_caml_n_objects(0)
	sw	a1, 32(sp)	# save
	addi	a1, a2, -1
	call	setup_startp_constants_2835
	lw	a0, 32(sp)	# restore
	lw	a1, 472(a0)
	lw	a1, 0(a1)
	flw	fa0, 0(a1)
	lw	a2, 8(sp)	# restore
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a1)
	flw	fa2, 4(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fle	a1, fzero, fa0
	bne	a1, zero, .calc_diffuse_using_1point_else_11
	lw	a0, 476(a0)
	fli	fa1, l_data_28
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2930
	b	.calc_diffuse_using_1point_cont_12
.calc_diffuse_using_1point_else_11:
	lw	a0, 472(a0)
	fli	fa1, l_data_27
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2930
.calc_diffuse_using_1point_cont_12:
	li	a3, 116
	lw	a0, 32(sp)	# restore
	lw	a1, 8(sp)	# restore
	lw	a2, 12(sp)	# restore
	call	iter_trace_diffuse_rays_2933
.calc_diffuse_using_1point_cont_10:
	lw	a0, 16(sp)	# restore
	beqi	a0, 4, .calc_diffuse_using_1point_cont_13
	lwd	a0, min_caml_dirvecs(16)
	sw	a0, 36(sp)	# save
	lw	a0, 12(sp)	# restore
	flw	fa0, 0(a0)
	fswd	fa0, min_caml_startp_fast(0)
	flw	fa0, 4(a0)
	fswd	fa0, min_caml_startp_fast(4)
	flw	fa0, 8(a0)
	fswd	fa0, min_caml_startp_fast(8)
	lwd	a1, min_caml_n_objects(0)
	addi	a1, a1, -1
	call	setup_startp_constants_2835
	lw	a0, 36(sp)	# restore
	lw	a1, 472(a0)
	lw	a1, 0(a1)
	flw	fa0, 0(a1)
	lw	a2, 8(sp)	# restore
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a1)
	flw	fa2, 4(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fle	a1, fzero, fa0
	bne	a1, zero, .calc_diffuse_using_1point_else_14
	lw	a0, 476(a0)
	fli	fa1, l_data_28
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2930
	b	.calc_diffuse_using_1point_cont_15
.calc_diffuse_using_1point_else_14:
	lw	a0, 472(a0)
	fli	fa1, l_data_27
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2930
.calc_diffuse_using_1point_cont_15:
	li	a3, 116
	lw	a0, 36(sp)	# restore
	lw	a1, 8(sp)	# restore
	lw	a2, 12(sp)	# restore
	call	iter_trace_diffuse_rays_2933
.calc_diffuse_using_1point_cont_13:
	lw	a0, 4(sp)	# restore
	slli	a0, a0, 2
	lw	a1, 0(sp)	# restore
	add	t6, a1, a0
	lw	a0, 0(t6)
	flwd	fa0, min_caml_rgb(0)
	flw	fa1, 0(a0)
	flwd	fa2, min_caml_diffuse_ray(0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(0)
	flwd	fa0, min_caml_rgb(4)
	flw	fa1, 4(a0)
	flwd	fa2, min_caml_diffuse_ray(4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(4)
	flwd	fa0, min_caml_rgb(8)
	flw	fa1, 8(a0)
	flwd	fa2, min_caml_diffuse_ray(8)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(8)
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
calc_diffuse_using_5points_2949:
	slli	a5, a0, 2
	add	t6, a1, a5
	lw	a1, 0(t6)
	lw	a1, 20(a1)
	addi	a5, a0, -1
	slli	a5, a5, 2
	add	t6, a2, a5
	lw	a5, 0(t6)
	lw	a5, 20(a5)
	slli	a6, a0, 2
	add	t6, a2, a6
	lw	a6, 0(t6)
	lw	a6, 20(a6)
	addi	a7, a0, 1
	slli	a7, a7, 2
	add	t6, a2, a7
	lw	a7, 0(t6)
	lw	a7, 20(a7)
	slli	s1, a0, 2
	add	t6, a3, s1
	lw	a3, 0(t6)
	lw	a3, 20(a3)
	slli	s1, a4, 2
	add	t6, a1, s1
	lw	a1, 0(t6)
	flw	fa0, 0(a1)
	fswd	fa0, min_caml_diffuse_ray(0)
	flw	fa0, 4(a1)
	fswd	fa0, min_caml_diffuse_ray(4)
	flw	fa0, 8(a1)
	fswd	fa0, min_caml_diffuse_ray(8)
	slli	a1, a4, 2
	add	t6, a5, a1
	lw	a1, 0(t6)
	flwd	fa0, min_caml_diffuse_ray(0)
	flw	fa1, 0(a1)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(0)
	flwd	fa0, min_caml_diffuse_ray(4)
	flw	fa1, 4(a1)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(4)
	flwd	fa0, min_caml_diffuse_ray(8)
	flw	fa1, 8(a1)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(8)
	slli	a1, a4, 2
	add	t6, a6, a1
	lw	a1, 0(t6)
	flwd	fa0, min_caml_diffuse_ray(0)
	flw	fa1, 0(a1)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(0)
	flwd	fa0, min_caml_diffuse_ray(4)
	flw	fa1, 4(a1)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(4)
	flwd	fa0, min_caml_diffuse_ray(8)
	flw	fa1, 8(a1)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(8)
	slli	a1, a4, 2
	add	t6, a7, a1
	lw	a1, 0(t6)
	flwd	fa0, min_caml_diffuse_ray(0)
	flw	fa1, 0(a1)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(0)
	flwd	fa0, min_caml_diffuse_ray(4)
	flw	fa1, 4(a1)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(4)
	flwd	fa0, min_caml_diffuse_ray(8)
	flw	fa1, 8(a1)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(8)
	slli	a1, a4, 2
	add	t6, a3, a1
	lw	a1, 0(t6)
	flwd	fa0, min_caml_diffuse_ray(0)
	flw	fa1, 0(a1)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(0)
	flwd	fa0, min_caml_diffuse_ray(4)
	flw	fa1, 4(a1)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(4)
	flwd	fa0, min_caml_diffuse_ray(8)
	flw	fa1, 8(a1)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(8)
	slli	a0, a0, 2
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a0, 16(a0)
	slli	a1, a4, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	flwd	fa0, min_caml_rgb(0)
	flw	fa1, 0(a0)
	flwd	fa2, min_caml_diffuse_ray(0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(0)
	flwd	fa0, min_caml_rgb(4)
	flw	fa1, 4(a0)
	flwd	fa2, min_caml_diffuse_ray(4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(4)
	flwd	fa0, min_caml_rgb(8)
	flw	fa1, 8(a0)
	flwd	fa2, min_caml_diffuse_ray(8)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(8)
	jr	ra
do_without_neighbors_2955:
	addi	sp, sp, -84
	sw	ra, 80(sp)
	bgti	a1, 4, do_without_neighbors_ret
	lw	a2, 28(a0)
	lw	a3, 24(a0)
	lw	a4, 20(a0)
	lw	a5, 16(a0)
	lw	a6, 12(a0)
	lw	a7, 8(a0)
	lw	s1, 4(a0)
	slli	s2, a1, 2
	add	t6, a7, s2
	lw	s2, 0(t6)
	blt	s2, zero, do_without_neighbors_ret
	slli	s2, a1, 2
	add	t6, a6, s2
	lw	s2, 0(t6)
	sw	a5, 0(sp)	# save
	sw	s1, 4(sp)	# save
	sw	a2, 8(sp)	# save
	sw	a3, 12(sp)	# save
	sw	a4, 16(sp)	# save
	sw	a0, 20(sp)	# save
	sw	a6, 24(sp)	# save
	sw	a7, 28(sp)	# save
	sw	a1, 32(sp)	# save
	beq	s2, zero, .do_without_neighbors_cont_1
	slli	s2, a1, 2
	add	t6, a4, s2
	lw	s2, 0(t6)
	flw	fa0, 0(s2)
	fswd	fa0, min_caml_diffuse_ray(0)
	flw	fa0, 4(s2)
	fswd	fa0, min_caml_diffuse_ray(4)
	flw	fa0, 8(s2)
	fswd	fa0, min_caml_diffuse_ray(8)
	lw	s2, 0(a3)
	slli	s3, a1, 2
	add	t6, a2, s3
	lw	s3, 0(t6)
	slli	s4, a1, 2
	add	t6, s1, s4
	lw	a0, 0(t6)
	sw	s3, 36(sp)	# save
	sw	a0, 40(sp)	# save
	sw	s2, 44(sp)	# save
	beq	s2, zero, .do_without_neighbors_cont_2
	lwd	s4, min_caml_dirvecs(0)
	flw	fa0, 0(a0)
	fswd	fa0, min_caml_startp_fast(0)
	flw	fa0, 4(a0)
	fswd	fa0, min_caml_startp_fast(4)
	flw	fa0, 8(a0)
	fswd	fa0, min_caml_startp_fast(8)
	lwd	s5, min_caml_n_objects(0)
	addi	a1, s5, -1
	sw	s4, 48(sp)	# save
	call	setup_startp_constants_2835
	li	a3, 118
	lw	a0, 48(sp)	# restore
	lw	a1, 36(sp)	# restore
	lw	a2, 40(sp)	# restore
	call	iter_trace_diffuse_rays_2933
.do_without_neighbors_cont_2:
	lw	a0, 44(sp)	# restore
	beqi	a0, 1, .do_without_neighbors_cont_3
	lwd	a1, min_caml_dirvecs(4)
	lw	a0, 40(sp)	# restore
	flw	fa0, 0(a0)
	fswd	fa0, min_caml_startp_fast(0)
	flw	fa0, 4(a0)
	fswd	fa0, min_caml_startp_fast(4)
	flw	fa0, 8(a0)
	fswd	fa0, min_caml_startp_fast(8)
	lwd	a2, min_caml_n_objects(0)
	sw	a1, 52(sp)	# save
	addi	a1, a2, -1
	call	setup_startp_constants_2835
	li	a3, 118
	lw	a0, 52(sp)	# restore
	lw	a1, 36(sp)	# restore
	lw	a2, 40(sp)	# restore
	call	iter_trace_diffuse_rays_2933
.do_without_neighbors_cont_3:
	lw	a0, 44(sp)	# restore
	beqi	a0, 2, .do_without_neighbors_cont_4
	lwd	a1, min_caml_dirvecs(8)
	lw	a0, 40(sp)	# restore
	flw	fa0, 0(a0)
	fswd	fa0, min_caml_startp_fast(0)
	flw	fa0, 4(a0)
	fswd	fa0, min_caml_startp_fast(4)
	flw	fa0, 8(a0)
	fswd	fa0, min_caml_startp_fast(8)
	lwd	a2, min_caml_n_objects(0)
	sw	a1, 56(sp)	# save
	addi	a1, a2, -1
	call	setup_startp_constants_2835
	li	a3, 118
	lw	a0, 56(sp)	# restore
	lw	a1, 36(sp)	# restore
	lw	a2, 40(sp)	# restore
	call	iter_trace_diffuse_rays_2933
.do_without_neighbors_cont_4:
	lw	a0, 44(sp)	# restore
	beqi	a0, 3, .do_without_neighbors_cont_5
	lwd	a1, min_caml_dirvecs(12)
	lw	a0, 40(sp)	# restore
	flw	fa0, 0(a0)
	fswd	fa0, min_caml_startp_fast(0)
	flw	fa0, 4(a0)
	fswd	fa0, min_caml_startp_fast(4)
	flw	fa0, 8(a0)
	fswd	fa0, min_caml_startp_fast(8)
	lwd	a2, min_caml_n_objects(0)
	sw	a1, 60(sp)	# save
	addi	a1, a2, -1
	call	setup_startp_constants_2835
	li	a3, 118
	lw	a0, 60(sp)	# restore
	lw	a1, 36(sp)	# restore
	lw	a2, 40(sp)	# restore
	call	iter_trace_diffuse_rays_2933
.do_without_neighbors_cont_5:
	lw	a0, 44(sp)	# restore
	beqi	a0, 4, .do_without_neighbors_cont_6
	lwd	a0, min_caml_dirvecs(16)
	sw	a0, 64(sp)	# save
	lw	a0, 40(sp)	# restore
	flw	fa0, 0(a0)
	fswd	fa0, min_caml_startp_fast(0)
	flw	fa0, 4(a0)
	fswd	fa0, min_caml_startp_fast(4)
	flw	fa0, 8(a0)
	fswd	fa0, min_caml_startp_fast(8)
	lwd	a1, min_caml_n_objects(0)
	addi	a1, a1, -1
	call	setup_startp_constants_2835
	li	a3, 118
	lw	a0, 64(sp)	# restore
	lw	a1, 36(sp)	# restore
	lw	a2, 40(sp)	# restore
	call	iter_trace_diffuse_rays_2933
.do_without_neighbors_cont_6:
	lw	a0, 32(sp)	# restore
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	flwd	fa0, min_caml_rgb(0)
	flw	fa1, 0(a1)
	flwd	fa2, min_caml_diffuse_ray(0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(0)
	flwd	fa0, min_caml_rgb(4)
	flw	fa1, 4(a1)
	flwd	fa2, min_caml_diffuse_ray(4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(4)
	flwd	fa0, min_caml_rgb(8)
	flw	fa1, 8(a1)
	flwd	fa2, min_caml_diffuse_ray(8)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(8)
.do_without_neighbors_cont_1:
	lw	a0, 32(sp)	# restore
	addi	a1, a0, 1
	bgti	a1, 4, do_without_neighbors_ret
	slli	a0, a1, 2
	lw	a2, 28(sp)	# restore
	add	t6, a2, a0
	lw	a0, 0(t6)
	blt	a0, zero, do_without_neighbors_ret
	slli	a0, a1, 2
	lw	a3, 24(sp)	# restore
	add	t6, a3, a0
	lw	a0, 0(t6)
	sw	a1, 68(sp)	# save
	beq	a0, zero, .do_without_neighbors_cont_7
	lw	a0, 20(sp)	# restore
	call	calc_diffuse_using_1point_2946
.do_without_neighbors_cont_7:
	lw	a0, 68(sp)	# restore
	addi	a0, a0, 1
	bgti	a0, 4, do_without_neighbors_ret
	slli	a1, a0, 2
	lw	a2, 28(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	blt	a1, zero, do_without_neighbors_ret
	slli	a1, a0, 2
	lw	a3, 24(sp)	# restore
	add	t6, a3, a1
	lw	a1, 0(t6)
	beq	a1, zero, .do_without_neighbors_cont_8
	slli	a1, a0, 2
	lw	a4, 16(sp)	# restore
	add	t6, a4, a1
	lw	a1, 0(t6)
	flw	fa0, 0(a1)
	fswd	fa0, min_caml_diffuse_ray(0)
	flw	fa0, 4(a1)
	fswd	fa0, min_caml_diffuse_ray(4)
	flw	fa0, 8(a1)
	fswd	fa0, min_caml_diffuse_ray(8)
	lw	a1, 12(sp)	# restore
	lw	a1, 0(a1)
	slli	a4, a0, 2
	lw	a5, 8(sp)	# restore
	add	t6, a5, a4
	lw	a4, 0(t6)
	slli	a5, a0, 2
	lw	a6, 4(sp)	# restore
	add	t6, a6, a5
	lw	a2, 0(t6)
	sw	a0, 72(sp)	# save
	mv	a0, a1
	mv	a1, a4
	call	trace_diffuse_ray_80percent_2942
	lw	a0, 72(sp)	# restore
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	flwd	fa0, min_caml_rgb(0)
	flw	fa1, 0(a1)
	flwd	fa2, min_caml_diffuse_ray(0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(0)
	flwd	fa0, min_caml_rgb(4)
	flw	fa1, 4(a1)
	flwd	fa2, min_caml_diffuse_ray(4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(4)
	flwd	fa0, min_caml_rgb(8)
	flw	fa1, 8(a1)
	flwd	fa2, min_caml_diffuse_ray(8)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(8)
.do_without_neighbors_cont_8:
	addi	a1, a0, 1
	bgti	a1, 4, do_without_neighbors_ret
	slli	a0, a1, 2
	lw	a2, 28(sp)	# restore
	add	t6, a2, a0
	lw	a0, 0(t6)
	blt	a0, zero, do_without_neighbors_ret
	slli	a0, a1, 2
	lw	a2, 24(sp)	# restore
	add	t6, a2, a0
	lw	a0, 0(t6)
	sw	a1, 76(sp)	# save
	beq	a0, zero, .do_without_neighbors_cont_9
	lw	a0, 20(sp)	# restore
	call	calc_diffuse_using_1point_2946
.do_without_neighbors_cont_9:
	lw	a0, 76(sp)	# restore
	addi	a1, a0, 1
	lw	a0, 20(sp)	# restore
	call	do_without_neighbors_2955
do_without_neighbors_ret:
	lw	ra, 80(sp)
	addi	sp, sp, 84
	jr	ra
try_exploit_neighbors_2971:
	addi	sp, sp, -92
	sw	ra, 88(sp)
	slli	a6, a0, 2
	add	t6, a3, a6
	lw	a6, 0(t6)
	bgti	a5, 4, try_exploit_neighbors_ret
	lw	a7, 12(a6)
	lw	a6, 8(a6)
	slli	s1, a5, 2
	add	t6, a6, s1
	lw	a6, 0(t6)
	blt	a6, zero, try_exploit_neighbors_ret
	slli	a6, a0, 2
	add	t6, a3, a6
	lw	a6, 0(t6)
	lw	a6, 8(a6)
	slli	s1, a5, 2
	add	t6, a6, s1
	lw	a6, 0(t6)
	slli	s1, a0, 2
	add	t6, a2, s1
	lw	s1, 0(t6)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	t6, s1, s2
	lw	s1, 0(t6)
	bne	s1, a6, .try_exploit_neighbors_else_1
	slli	s1, a0, 2
	add	t6, a4, s1
	lw	s1, 0(t6)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	t6, s1, s2
	lw	s1, 0(t6)
	bne	s1, a6, .try_exploit_neighbors_else_1
	addi	s1, a0, -1
	slli	s1, s1, 2
	add	t6, a3, s1
	lw	s1, 0(t6)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	t6, s1, s2
	lw	s1, 0(t6)
	bne	s1, a6, .try_exploit_neighbors_else_1
	addi	s1, a0, 1
	slli	s1, s1, 2
	add	t6, a3, s1
	lw	s1, 0(t6)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	t6, s1, s2
	lw	s1, 0(t6)
	bne	s1, a6, .try_exploit_neighbors_else_1
	li	a6, 1
	b	.try_exploit_neighbors_else_9
.try_exploit_neighbors_else_1:
	slli	a0, a0, 2
	add	t6, a3, a0
	lw	a0, 0(t6)
	lw	a1, 28(a0)
	lw	a2, 24(a0)
	lw	a3, 20(a0)
	lw	a4, 16(a0)
	lw	a6, 12(a0)
	lw	a7, 8(a0)
	lw	s1, 4(a0)
	slli	s2, a5, 2
	add	t6, a7, s2
	lw	s2, 0(t6)
	blt	s2, zero, try_exploit_neighbors_ret
	slli	s2, a5, 2
	add	t6, a6, s2
	lw	s2, 0(t6)
	sw	a0, 0(sp)	# save
	sw	a4, 4(sp)	# save
	sw	s1, 8(sp)	# save
	sw	a1, 12(sp)	# save
	sw	a2, 16(sp)	# save
	sw	a3, 20(sp)	# save
	sw	a6, 24(sp)	# save
	sw	a7, 28(sp)	# save
	sw	a5, 32(sp)	# save
	beq	s2, zero, .try_exploit_neighbors_cont_10
	mv	a1, a5
	call	calc_diffuse_using_1point_2946
.try_exploit_neighbors_cont_10:
	lw	a0, 32(sp)	# restore
	addi	a0, a0, 1
	bgti	a0, 4, try_exploit_neighbors_ret
	slli	a1, a0, 2
	lw	a2, 28(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	blt	a1, zero, try_exploit_neighbors_ret
	slli	a1, a0, 2
	lw	a3, 24(sp)	# restore
	add	t6, a3, a1
	lw	a1, 0(t6)
	beq	a1, zero, .try_exploit_neighbors_cont_11
	slli	a1, a0, 2
	lw	a4, 20(sp)	# restore
	add	t6, a4, a1
	lw	a1, 0(t6)
	flw	fa0, 0(a1)
	fswd	fa0, min_caml_diffuse_ray(0)
	flw	fa0, 4(a1)
	fswd	fa0, min_caml_diffuse_ray(4)
	flw	fa0, 8(a1)
	fswd	fa0, min_caml_diffuse_ray(8)
	lw	a1, 16(sp)	# restore
	lw	a1, 0(a1)
	slli	a4, a0, 2
	lw	a5, 12(sp)	# restore
	add	t6, a5, a4
	lw	a4, 0(t6)
	slli	a5, a0, 2
	lw	a6, 8(sp)	# restore
	add	t6, a6, a5
	lw	a2, 0(t6)
	sw	a0, 36(sp)	# save
	mv	a0, a1
	mv	a1, a4
	call	trace_diffuse_ray_80percent_2942
	lw	a0, 36(sp)	# restore
	slli	a1, a0, 2
	lw	a2, 4(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	flwd	fa0, min_caml_rgb(0)
	flw	fa1, 0(a1)
	flwd	fa2, min_caml_diffuse_ray(0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(0)
	flwd	fa0, min_caml_rgb(4)
	flw	fa1, 4(a1)
	flwd	fa2, min_caml_diffuse_ray(4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(4)
	flwd	fa0, min_caml_rgb(8)
	flw	fa1, 8(a1)
	flwd	fa2, min_caml_diffuse_ray(8)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(8)
.try_exploit_neighbors_cont_11:
	addi	a1, a0, 1
	bgti	a1, 4, try_exploit_neighbors_ret
	slli	a0, a1, 2
	lw	a2, 28(sp)	# restore
	add	t6, a2, a0
	lw	a0, 0(t6)
	blt	a0, zero, try_exploit_neighbors_ret
	slli	a0, a1, 2
	lw	a2, 24(sp)	# restore
	add	t6, a2, a0
	lw	a0, 0(t6)
	sw	a1, 40(sp)	# save
	beq	a0, zero, .try_exploit_neighbors_cont_12
	lw	a0, 0(sp)	# restore
	call	calc_diffuse_using_1point_2946
.try_exploit_neighbors_cont_12:
	lw	a0, 40(sp)	# restore
	addi	a1, a0, 1
	lw	a0, 0(sp)	# restore
	call	do_without_neighbors_2955
	lw	ra, 88(sp)
	addi	sp, sp, 92
	jr	ra
.try_exploit_neighbors_else_9:
	slli	a6, a5, 2
	add	t6, a7, a6
	lw	a6, 0(t6)
	beq	a6, zero, .try_exploit_neighbors_cont_13
	slli	a6, a0, 2
	add	t6, a2, a6
	lw	a6, 0(t6)
	lw	a6, 20(a6)
	addi	a7, a0, -1
	slli	a7, a7, 2
	add	t6, a3, a7
	lw	a7, 0(t6)
	lw	a7, 20(a7)
	slli	s1, a0, 2
	add	t6, a3, s1
	lw	s1, 0(t6)
	lw	s1, 20(s1)
	addi	s2, a0, 1
	slli	s2, s2, 2
	add	t6, a3, s2
	lw	s2, 0(t6)
	lw	s2, 20(s2)
	slli	s3, a0, 2
	add	t6, a4, s3
	lw	s3, 0(t6)
	lw	s3, 20(s3)
	slli	s4, a5, 2
	add	t6, a6, s4
	lw	a6, 0(t6)
	flw	fa0, 0(a6)
	fswd	fa0, min_caml_diffuse_ray(0)
	flw	fa0, 4(a6)
	fswd	fa0, min_caml_diffuse_ray(4)
	flw	fa0, 8(a6)
	fswd	fa0, min_caml_diffuse_ray(8)
	slli	a6, a5, 2
	add	t6, a7, a6
	lw	a6, 0(t6)
	flwd	fa0, min_caml_diffuse_ray(0)
	flw	fa1, 0(a6)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(0)
	flwd	fa0, min_caml_diffuse_ray(4)
	flw	fa1, 4(a6)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(4)
	flwd	fa0, min_caml_diffuse_ray(8)
	flw	fa1, 8(a6)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(8)
	slli	a6, a5, 2
	add	t6, s1, a6
	lw	a6, 0(t6)
	flwd	fa0, min_caml_diffuse_ray(0)
	flw	fa1, 0(a6)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(0)
	flwd	fa0, min_caml_diffuse_ray(4)
	flw	fa1, 4(a6)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(4)
	flwd	fa0, min_caml_diffuse_ray(8)
	flw	fa1, 8(a6)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(8)
	slli	a6, a5, 2
	add	t6, s2, a6
	lw	a6, 0(t6)
	flwd	fa0, min_caml_diffuse_ray(0)
	flw	fa1, 0(a6)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(0)
	flwd	fa0, min_caml_diffuse_ray(4)
	flw	fa1, 4(a6)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(4)
	flwd	fa0, min_caml_diffuse_ray(8)
	flw	fa1, 8(a6)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(8)
	slli	a6, a5, 2
	add	t6, s3, a6
	lw	a6, 0(t6)
	flwd	fa0, min_caml_diffuse_ray(0)
	flw	fa1, 0(a6)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(0)
	flwd	fa0, min_caml_diffuse_ray(4)
	flw	fa1, 4(a6)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(4)
	flwd	fa0, min_caml_diffuse_ray(8)
	flw	fa1, 8(a6)
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_diffuse_ray(8)
	slli	a6, a0, 2
	add	t6, a3, a6
	lw	a6, 0(t6)
	lw	a6, 16(a6)
	slli	a7, a5, 2
	add	t6, a6, a7
	lw	a6, 0(t6)
	flwd	fa0, min_caml_rgb(0)
	flw	fa1, 0(a6)
	flwd	fa2, min_caml_diffuse_ray(0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(0)
	flwd	fa0, min_caml_rgb(4)
	flw	fa1, 4(a6)
	flwd	fa2, min_caml_diffuse_ray(4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(4)
	flwd	fa0, min_caml_rgb(8)
	flw	fa1, 8(a6)
	flwd	fa2, min_caml_diffuse_ray(8)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(8)
.try_exploit_neighbors_cont_13:
	addi	a5, a5, 1
	slli	a6, a0, 2
	add	t6, a3, a6
	lw	a6, 0(t6)
	bgti	a5, 4, try_exploit_neighbors_ret
	lw	a7, 12(a6)
	lw	a6, 8(a6)
	slli	s1, a5, 2
	add	t6, a6, s1
	lw	a6, 0(t6)
	blt	a6, zero, try_exploit_neighbors_ret
	slli	a6, a0, 2
	add	t6, a3, a6
	lw	a6, 0(t6)
	lw	a6, 8(a6)
	slli	s1, a5, 2
	add	t6, a6, s1
	lw	a6, 0(t6)
	slli	s1, a0, 2
	add	t6, a2, s1
	lw	s1, 0(t6)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	t6, s1, s2
	lw	s1, 0(t6)
	bne	s1, a6, .try_exploit_neighbors_else_14
	slli	s1, a0, 2
	add	t6, a4, s1
	lw	s1, 0(t6)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	t6, s1, s2
	lw	s1, 0(t6)
	bne	s1, a6, .try_exploit_neighbors_else_14
	addi	s1, a0, -1
	slli	s1, s1, 2
	add	t6, a3, s1
	lw	s1, 0(t6)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	t6, s1, s2
	lw	s1, 0(t6)
	bne	s1, a6, .try_exploit_neighbors_else_14
	addi	s1, a0, 1
	slli	s1, s1, 2
	add	t6, a3, s1
	lw	s1, 0(t6)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	t6, s1, s2
	lw	s1, 0(t6)
	bne	s1, a6, .try_exploit_neighbors_else_14
	li	a6, 1
	b	.try_exploit_neighbors_else_22
.try_exploit_neighbors_else_14:
	slli	a0, a0, 2
	add	t6, a3, a0
	lw	a0, 0(t6)
	lw	a1, 28(a0)
	lw	a2, 24(a0)
	lw	a3, 20(a0)
	lw	a4, 16(a0)
	lw	a6, 12(a0)
	lw	a7, 8(a0)
	lw	s1, 4(a0)
	slli	s2, a5, 2
	add	t6, a7, s2
	lw	s2, 0(t6)
	blt	s2, zero, try_exploit_neighbors_ret
	slli	s2, a5, 2
	add	t6, a6, s2
	lw	s2, 0(t6)
	sw	a0, 44(sp)	# save
	sw	a6, 48(sp)	# save
	sw	a7, 52(sp)	# save
	sw	a5, 56(sp)	# save
	beq	s2, zero, .try_exploit_neighbors_cont_23
	slli	s2, a5, 2
	add	t6, a3, s2
	lw	a3, 0(t6)
	flw	fa0, 0(a3)
	fswd	fa0, min_caml_diffuse_ray(0)
	flw	fa0, 4(a3)
	fswd	fa0, min_caml_diffuse_ray(4)
	flw	fa0, 8(a3)
	fswd	fa0, min_caml_diffuse_ray(8)
	lw	a0, 0(a2)
	slli	a2, a5, 2
	add	t6, a1, a2
	lw	a1, 0(t6)
	slli	a2, a5, 2
	add	t6, s1, a2
	lw	a2, 0(t6)
	sw	a4, 60(sp)	# save
	call	trace_diffuse_ray_80percent_2942
	lw	a0, 56(sp)	# restore
	slli	a1, a0, 2
	lw	a2, 60(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	flwd	fa0, min_caml_rgb(0)
	flw	fa1, 0(a1)
	flwd	fa2, min_caml_diffuse_ray(0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(0)
	flwd	fa0, min_caml_rgb(4)
	flw	fa1, 4(a1)
	flwd	fa2, min_caml_diffuse_ray(4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(4)
	flwd	fa0, min_caml_rgb(8)
	flw	fa1, 8(a1)
	flwd	fa2, min_caml_diffuse_ray(8)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(8)
.try_exploit_neighbors_cont_23:
	lw	a0, 56(sp)	# restore
	addi	a1, a0, 1
	bgti	a1, 4, try_exploit_neighbors_ret
	slli	a0, a1, 2
	lw	a2, 52(sp)	# restore
	add	t6, a2, a0
	lw	a0, 0(t6)
	blt	a0, zero, try_exploit_neighbors_ret
	slli	a0, a1, 2
	lw	a2, 48(sp)	# restore
	add	t6, a2, a0
	lw	a0, 0(t6)
	sw	a1, 64(sp)	# save
	beq	a0, zero, .try_exploit_neighbors_cont_24
	lw	a0, 44(sp)	# restore
	call	calc_diffuse_using_1point_2946
.try_exploit_neighbors_cont_24:
	lw	a0, 64(sp)	# restore
	addi	a1, a0, 1
	lw	a0, 44(sp)	# restore
	call	do_without_neighbors_2955
	lw	ra, 88(sp)
	addi	sp, sp, 92
	jr	ra
.try_exploit_neighbors_else_22:
	slli	a6, a5, 2
	add	t6, a7, a6
	lw	a6, 0(t6)
	sw	a4, 68(sp)	# save
	sw	a3, 72(sp)	# save
	sw	a2, 76(sp)	# save
	sw	a1, 80(sp)	# save
	sw	a0, 84(sp)	# save
	sw	a5, 56(sp)	# save
	beq	a6, zero, .try_exploit_neighbors_cont_25
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	call	calc_diffuse_using_5points_2949
.try_exploit_neighbors_cont_25:
	lw	a0, 56(sp)	# restore
	addi	a5, a0, 1
	lw	a0, 84(sp)	# restore
	lw	a1, 80(sp)	# restore
	lw	a2, 76(sp)	# restore
	lw	a3, 72(sp)	# restore
	lw	a4, 68(sp)	# restore
	call	try_exploit_neighbors_2971
try_exploit_neighbors_ret:
	lw	ra, 88(sp)
	addi	sp, sp, 92
	jr	ra
pretrace_diffuse_rays_2984:
	addi	sp, sp, -64
	sw	ra, 60(sp)
	bgti	a1, 4, pretrace_diffuse_rays_ret
	lw	a2, 28(a0)
	lw	a3, 24(a0)
	lw	a4, 20(a0)
	lw	a5, 12(a0)
	lw	a6, 8(a0)
	lw	a7, 4(a0)
	slli	s1, a1, 2
	add	t6, a6, s1
	lw	s1, 0(t6)
	blt	s1, zero, pretrace_diffuse_rays_ret
	slli	s1, a1, 2
	add	t6, a5, s1
	lw	s1, 0(t6)
	sw	a0, 0(sp)	# save
	sw	a4, 4(sp)	# save
	sw	a7, 8(sp)	# save
	sw	a2, 12(sp)	# save
	sw	a3, 16(sp)	# save
	sw	a5, 20(sp)	# save
	sw	a6, 24(sp)	# save
	sw	a1, 28(sp)	# save
	beq	s1, zero, .pretrace_diffuse_rays_cont_1
	lw	s1, 0(a3)
	fswd	fzero, min_caml_diffuse_ray(0)
	fswd	fzero, min_caml_diffuse_ray(4)
	fswd	fzero, min_caml_diffuse_ray(8)
	slli	s1, s1, 2
	lwl	s1, min_caml_dirvecs(s1)
	slli	s2, a1, 2
	add	t6, a2, s2
	lw	s2, 0(t6)
	slli	s3, a1, 2
	add	t6, a7, s3
	lw	a0, 0(t6)
	flw	fa0, 0(a0)
	fswd	fa0, min_caml_startp_fast(0)
	flw	fa0, 4(a0)
	fswd	fa0, min_caml_startp_fast(4)
	flw	fa0, 8(a0)
	fswd	fa0, min_caml_startp_fast(8)
	lwd	s3, min_caml_n_objects(0)
	addi	a1, s3, -1
	sw	a0, 32(sp)	# save
	sw	s2, 36(sp)	# save
	sw	s1, 40(sp)	# save
	call	setup_startp_constants_2835
	li	a3, 118
	lw	a0, 40(sp)	# restore
	lw	a1, 36(sp)	# restore
	lw	a2, 32(sp)	# restore
	call	iter_trace_diffuse_rays_2933
	lw	a0, 28(sp)	# restore
	slli	a1, a0, 2
	lw	a2, 4(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	flwd	fa0, min_caml_diffuse_ray(0)
	fsw	fa0, 0(a1)
	flwd	fa0, min_caml_diffuse_ray(4)
	fsw	fa0, 4(a1)
	flwd	fa0, min_caml_diffuse_ray(8)
	fsw	fa0, 8(a1)
.pretrace_diffuse_rays_cont_1:
	lw	a0, 28(sp)	# restore
	addi	a0, a0, 1
	bgti	a0, 4, pretrace_diffuse_rays_ret
	slli	a1, a0, 2
	lw	a2, 24(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	blt	a1, zero, pretrace_diffuse_rays_ret
	slli	a1, a0, 2
	lw	a2, 20(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	beq	a1, zero, .pretrace_diffuse_rays_cont_2
	lw	a1, 16(sp)	# restore
	lw	a1, 0(a1)
	fswd	fzero, min_caml_diffuse_ray(0)
	fswd	fzero, min_caml_diffuse_ray(4)
	fswd	fzero, min_caml_diffuse_ray(8)
	slli	a1, a1, 2
	lwl	a1, min_caml_dirvecs(a1)
	slli	a2, a0, 2
	lw	a3, 12(sp)	# restore
	add	t6, a3, a2
	lw	a2, 0(t6)
	slli	a3, a0, 2
	sw	a0, 44(sp)	# save
	lw	a4, 8(sp)	# restore
	add	t6, a4, a3
	lw	a0, 0(t6)
	flw	fa0, 0(a0)
	fswd	fa0, min_caml_startp_fast(0)
	flw	fa0, 4(a0)
	fswd	fa0, min_caml_startp_fast(4)
	flw	fa0, 8(a0)
	fswd	fa0, min_caml_startp_fast(8)
	lwd	a3, min_caml_n_objects(0)
	sw	a1, 48(sp)	# save
	addi	a1, a3, -1
	sw	a0, 52(sp)	# save
	sw	a2, 56(sp)	# save
	call	setup_startp_constants_2835
	lw	a0, 48(sp)	# restore
	lw	a1, 472(a0)
	lw	a1, 0(a1)
	flw	fa0, 0(a1)
	lw	a2, 56(sp)	# restore
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a1)
	flw	fa2, 4(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fle	a1, fzero, fa0
	bne	a1, zero, .pretrace_diffuse_rays_else_3
	lw	a0, 476(a0)
	fli	fa1, l_data_28
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2930
	b	.pretrace_diffuse_rays_cont_4
.pretrace_diffuse_rays_else_3:
	lw	a0, 472(a0)
	fli	fa1, l_data_27
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2930
.pretrace_diffuse_rays_cont_4:
	li	a3, 116
	lw	a0, 48(sp)	# restore
	lw	a1, 56(sp)	# restore
	lw	a2, 52(sp)	# restore
	call	iter_trace_diffuse_rays_2933
	lw	a0, 44(sp)	# restore
	slli	a1, a0, 2
	lw	a2, 4(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	flwd	fa0, min_caml_diffuse_ray(0)
	fsw	fa0, 0(a1)
	flwd	fa0, min_caml_diffuse_ray(4)
	fsw	fa0, 4(a1)
	flwd	fa0, min_caml_diffuse_ray(8)
	fsw	fa0, 8(a1)
.pretrace_diffuse_rays_cont_2:
	addi	a1, a0, 1
	lw	a0, 0(sp)	# restore
	call	pretrace_diffuse_rays_2984
pretrace_diffuse_rays_ret:
	lw	ra, 60(sp)
	addi	sp, sp, 64
	jr	ra
pretrace_pixels_2987:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	blt	a1, zero, pretrace_pixels_ret
	flwd	fa3, min_caml_scan_pitch(0)
	lwd	a3, min_caml_image_center(0)
	sw	a0, 0(sp)	# save
	sub	a0, a1, a3
	fsw	fa0, 4(sp)	# save
	call	min_caml_float_of_int
	fmul	fa0, fa3, fa0
	sw	a1, 8(sp)	# save
	lda	a1, min_caml_ptrace_dirvec
	flwd	fa3, min_caml_screenx_dir(0)
	fmul	fa3, fa0, fa3
	flw	fa4, 4(sp)	# restore
	fadd	fa3, fa3, fa4
	fswd	fa3, min_caml_ptrace_dirvec(0)
	flwd	fa3, min_caml_screenx_dir(4)
	fmul	fa3, fa0, fa3
	fadd	fa3, fa3, fa1
	fswd	fa3, min_caml_ptrace_dirvec(4)
	flwd	fa3, min_caml_screenx_dir(8)
	fmul	fa0, fa0, fa3
	fadd	fa0, fa0, fa2
	fswd	fa0, min_caml_ptrace_dirvec(8)
	flwd	fa0, min_caml_ptrace_dirvec(0)
	flwd	fa3, min_caml_ptrace_dirvec(0)
	fmul	fa0, fa0, fa3
	flwd	fa3, min_caml_ptrace_dirvec(4)
	flwd	fa5, min_caml_ptrace_dirvec(4)
	fmul	fa3, fa3, fa5
	fadd	fa0, fa0, fa3
	flwd	fa3, min_caml_ptrace_dirvec(8)
	flwd	fa5, min_caml_ptrace_dirvec(8)
	fmul	fa3, fa3, fa5
	fadd	fa0, fa0, fa3
	fsqrt	fa0, fa0
	feq	a0, fa0, fzero
	bne	a0, zero, .pretrace_pixels_else_1
	fli	fa3, l_data_5
	fdiv	fa0, fa3, fa0
	b	.pretrace_pixels_cont_2
.pretrace_pixels_else_1:
	fli	fa0, l_data_5
.pretrace_pixels_cont_2:
	flwd	fa3, min_caml_ptrace_dirvec(0)
	fmul	fa3, fa3, fa0
	fswd	fa3, min_caml_ptrace_dirvec(0)
	flwd	fa3, min_caml_ptrace_dirvec(4)
	fmul	fa3, fa3, fa0
	fswd	fa3, min_caml_ptrace_dirvec(4)
	flwd	fa3, min_caml_ptrace_dirvec(8)
	fmul	fa0, fa3, fa0
	fswd	fa0, min_caml_ptrace_dirvec(8)
	fswd	fzero, min_caml_rgb(0)
	fswd	fzero, min_caml_rgb(4)
	fswd	fzero, min_caml_rgb(8)
	flwd	fa0, min_caml_viewpoint(0)
	fswd	fa0, min_caml_startp(0)
	flwd	fa0, min_caml_viewpoint(4)
	fswd	fa0, min_caml_startp(4)
	flwd	fa0, min_caml_viewpoint(8)
	fswd	fa0, min_caml_startp(8)
	li	a0, 0
	fli	fa0, l_data_5
	lw	a3, 8(sp)	# restore
	slli	a4, a3, 2
	sw	a2, 12(sp)	# save
	lw	a5, 0(sp)	# restore
	add	t6, a5, a4
	lw	a2, 0(t6)
	fsw	fa1, 16(sp)	# save
	fmv	fa1, fzero
	fsw	fa2, 20(sp)	# save
	call	trace_ray_2924
	lw	a0, 8(sp)	# restore
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	flwd	fa0, min_caml_rgb(0)
	fsw	fa0, 0(a1)
	flwd	fa0, min_caml_rgb(4)
	fsw	fa0, 4(a1)
	flwd	fa0, min_caml_rgb(8)
	fsw	fa0, 8(a1)
	slli	a1, a0, 2
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 24(a1)
	lw	a3, 12(sp)	# restore
	sw	a3, 0(a1)
	slli	a1, a0, 2
	add	t6, a2, a1
	lw	a0, 0(t6)
	lw	a1, 28(a0)
	lw	a4, 24(a0)
	lw	a5, 20(a0)
	lw	a6, 12(a0)
	lw	a7, 8(a0)
	lw	s1, 4(a0)
	lw	a7, 0(a7)
	blt	a7, zero, .pretrace_pixels_cont_3
	lw	a6, 0(a6)
	sw	a0, 24(sp)	# save
	beq	a6, zero, .pretrace_pixels_cont_4
	lw	a4, 0(a4)
	fswd	fzero, min_caml_diffuse_ray(0)
	fswd	fzero, min_caml_diffuse_ray(4)
	fswd	fzero, min_caml_diffuse_ray(8)
	slli	a4, a4, 2
	lwl	a4, min_caml_dirvecs(a4)
	lw	a1, 0(a1)
	lw	a0, 0(s1)
	flw	fa0, 0(a0)
	fswd	fa0, min_caml_startp_fast(0)
	flw	fa0, 4(a0)
	fswd	fa0, min_caml_startp_fast(4)
	flw	fa0, 8(a0)
	fswd	fa0, min_caml_startp_fast(8)
	lwd	a6, min_caml_n_objects(0)
	sw	a1, 28(sp)	# save
	addi	a1, a6, -1
	sw	a5, 32(sp)	# save
	sw	a0, 36(sp)	# save
	sw	a4, 40(sp)	# save
	call	setup_startp_constants_2835
	lw	a0, 40(sp)	# restore
	lw	a1, 472(a0)
	lw	a1, 0(a1)
	flw	fa0, 0(a1)
	lw	a2, 28(sp)	# restore
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a1)
	flw	fa2, 4(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fle	a1, fzero, fa0
	bne	a1, zero, .pretrace_pixels_else_5
	lw	a0, 476(a0)
	fli	fa1, l_data_28
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2930
	b	.pretrace_pixels_cont_6
.pretrace_pixels_else_5:
	lw	a0, 472(a0)
	fli	fa1, l_data_27
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2930
.pretrace_pixels_cont_6:
	li	a3, 116
	lw	a0, 40(sp)	# restore
	lw	a1, 28(sp)	# restore
	lw	a2, 36(sp)	# restore
	call	iter_trace_diffuse_rays_2933
	lw	a0, 32(sp)	# restore
	lw	a0, 0(a0)
	flwd	fa0, min_caml_diffuse_ray(0)
	fsw	fa0, 0(a0)
	flwd	fa0, min_caml_diffuse_ray(4)
	fsw	fa0, 4(a0)
	flwd	fa0, min_caml_diffuse_ray(8)
	fsw	fa0, 8(a0)
.pretrace_pixels_cont_4:
	li	a1, 1
	lw	a0, 24(sp)	# restore
	call	pretrace_diffuse_rays_2984
.pretrace_pixels_cont_3:
	lw	a0, 8(sp)	# restore
	addi	a1, a0, -1
	lw	a0, 12(sp)	# restore
	addi	a0, a0, 1
	blti	a0, 5, .pretrace_pixels_else_7
	addi	a2, a0, -5
	b	.pretrace_pixels_cont_8
.pretrace_pixels_else_7:
	mv	a2, a0
.pretrace_pixels_cont_8:
	flw	fa0, 4(sp)	# restore
	flw	fa1, 16(sp)	# restore
	flw	fa2, 20(sp)	# restore
	lw	a0, 0(sp)	# restore
	call	pretrace_pixels_2987
pretrace_pixels_ret:
	lw	ra, 44(sp)
	addi	sp, sp, 48
	jr	ra
scan_pixel_2998:
	addi	sp, sp, -96
	sw	ra, 92(sp)
	lwd	a5, min_caml_image_size(0)
	bgt	a5, a0, .scan_pixel_else_1
	lw	ra, 92(sp)
	addi	sp, sp, 96
	jr	ra
.scan_pixel_else_1:
	slli	a5, a0, 2
	add	t6, a3, a5
	lw	a5, 0(t6)
	lw	a5, 0(a5)
	flw	fa0, 0(a5)
	fswd	fa0, min_caml_rgb(0)
	flw	fa0, 4(a5)
	fswd	fa0, min_caml_rgb(4)
	flw	fa0, 8(a5)
	fswd	fa0, min_caml_rgb(8)
	lwd	a5, min_caml_image_size(4)
	addi	a6, a1, 1
	bgt	a5, a6, .scan_pixel_else_3
	li	a5, 0
	b	.scan_pixel_cont_4
.scan_pixel_else_3:
	bgt	a1, zero, .scan_pixel_else_5
	li	a5, 0
	b	.scan_pixel_cont_6
.scan_pixel_else_5:
	lwd	a5, min_caml_image_size(0)
	addi	a7, a0, 1
	bgt	a5, a7, .scan_pixel_else_7
	li	a5, 0
	b	.scan_pixel_cont_8
.scan_pixel_else_7:
	bgt	a0, zero, .scan_pixel_else_9
	li	a5, 0
	b	.scan_pixel_cont_10
.scan_pixel_else_9:
	li	a5, 1
.scan_pixel_cont_10:
.scan_pixel_cont_8:
.scan_pixel_cont_6:
.scan_pixel_cont_4:
	sw	a4, 0(sp)	# save
	sw	a2, 4(sp)	# save
	sw	a1, 8(sp)	# save
	sw	a6, 12(sp)	# save
	sw	a3, 16(sp)	# save
	sw	a0, 20(sp)	# save
	bne	a5, zero, .scan_pixel_else_11
	slli	a5, a0, 2
	add	t6, a3, a5
	lw	a0, 0(t6)
	li	a1, 0
	lw	a5, 28(a0)
	lw	a7, 24(a0)
	lw	s1, 20(a0)
	lw	s2, 16(a0)
	lw	s3, 12(a0)
	lw	s4, 8(a0)
	lw	s5, 4(a0)
	lw	s6, 0(s4)
	blt	s6, zero, .scan_pixel_cont_12
	lw	s6, 0(s3)
	sw	a0, 24(sp)	# save
	sw	s2, 28(sp)	# save
	sw	s5, 32(sp)	# save
	sw	a5, 36(sp)	# save
	sw	a7, 40(sp)	# save
	sw	s1, 44(sp)	# save
	sw	s3, 48(sp)	# save
	sw	s4, 52(sp)	# save
	beq	s6, zero, .scan_pixel_cont_14
	call	calc_diffuse_using_1point_2946
.scan_pixel_cont_14:
	lw	a0, 52(sp)	# restore
	lw	a1, 4(a0)
	blt	a1, zero, .scan_pixel_cont_12
	lw	a1, 48(sp)	# restore
	lw	a2, 4(a1)
	beq	a2, zero, .scan_pixel_cont_16
	lw	a2, 44(sp)	# restore
	lw	a2, 4(a2)
	flw	fa0, 0(a2)
	fswd	fa0, min_caml_diffuse_ray(0)
	flw	fa0, 4(a2)
	fswd	fa0, min_caml_diffuse_ray(4)
	flw	fa0, 8(a2)
	fswd	fa0, min_caml_diffuse_ray(8)
	lw	a2, 40(sp)	# restore
	lw	a0, 0(a2)
	lw	a2, 36(sp)	# restore
	lw	a1, 4(a2)
	lw	a2, 32(sp)	# restore
	lw	a2, 4(a2)
	call	trace_diffuse_ray_80percent_2942
	lw	a0, 28(sp)	# restore
	lw	a0, 4(a0)
	flwd	fa0, min_caml_rgb(0)
	flw	fa1, 0(a0)
	flwd	fa2, min_caml_diffuse_ray(0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(0)
	flwd	fa0, min_caml_rgb(4)
	flw	fa1, 4(a0)
	flwd	fa2, min_caml_diffuse_ray(4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(4)
	flwd	fa0, min_caml_rgb(8)
	flw	fa1, 8(a0)
	flwd	fa2, min_caml_diffuse_ray(8)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(8)
.scan_pixel_cont_16:
	li	a1, 2
	lw	a0, 52(sp)	# restore
	lw	a0, 8(a0)
	blt	a0, zero, .scan_pixel_cont_12
	lw	a0, 48(sp)	# restore
	lw	a0, 8(a0)
	beq	a0, zero, .scan_pixel_cont_18
	lw	a0, 24(sp)	# restore
	call	calc_diffuse_using_1point_2946
.scan_pixel_cont_18:
	li	a1, 3
	lw	a0, 24(sp)	# restore
	call	do_without_neighbors_2955
	flwd	fa0, min_caml_rgb(0)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_35
	bge	a0, zero, .scan_pixel_cont_36
	li	a0, 0
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(4)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_38
	bge	a0, zero, .scan_pixel_cont_39
	li	a0, 0
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(8)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_41
	bge	a0, zero, .scan_pixel_cont_42
	li	a0, 0
	b	.scan_pixel_cont_42
.scan_pixel_else_11:
	li	a5, 0
	slli	a7, a0, 2
	add	t6, a3, a7
	lw	a7, 0(t6)
	lw	s1, 12(a7)
	lw	a7, 8(a7)
	lw	a7, 0(a7)
	blt	a7, zero, .scan_pixel_cont_19
	slli	a7, a0, 2
	add	t6, a3, a7
	lw	a7, 0(t6)
	lw	a7, 8(a7)
	lw	a7, 0(a7)
	slli	s2, a0, 2
	add	t6, a2, s2
	lw	s2, 0(t6)
	lw	s2, 8(s2)
	lw	s2, 0(s2)
	bne	s2, a7, .scan_pixel_else_20
	slli	s2, a0, 2
	add	t6, a4, s2
	lw	s2, 0(t6)
	lw	s2, 8(s2)
	lw	s2, 0(s2)
	bne	s2, a7, .scan_pixel_else_20
	addi	s2, a0, -1
	slli	s2, s2, 2
	add	t6, a3, s2
	lw	s2, 0(t6)
	lw	s2, 8(s2)
	lw	s2, 0(s2)
	bne	s2, a7, .scan_pixel_else_20
	addi	s2, a0, 1
	slli	s2, s2, 2
	add	t6, a3, s2
	lw	s2, 0(t6)
	lw	s2, 8(s2)
	lw	s2, 0(s2)
	bne	s2, a7, .scan_pixel_else_20
	li	a7, 1
	b	.scan_pixel_else_28
.scan_pixel_else_20:
	slli	a5, a0, 2
	add	t6, a3, a5
	lw	a0, 0(t6)
	lw	a5, 28(a0)
	lw	a7, 24(a0)
	lw	s1, 20(a0)
	lw	s2, 16(a0)
	lw	s3, 12(a0)
	lw	s4, 8(a0)
	lw	s5, 4(a0)
	lw	s6, 0(s4)
	blt	s6, zero, .scan_pixel_cont_29
	lw	s6, 0(s3)
	sw	a0, 56(sp)	# save
	sw	s3, 60(sp)	# save
	sw	s4, 64(sp)	# save
	beq	s6, zero, .scan_pixel_cont_31
	lw	s1, 0(s1)
	flw	fa0, 0(s1)
	fswd	fa0, min_caml_diffuse_ray(0)
	flw	fa0, 4(s1)
	fswd	fa0, min_caml_diffuse_ray(4)
	flw	fa0, 8(s1)
	fswd	fa0, min_caml_diffuse_ray(8)
	lw	a0, 0(a7)
	lw	a1, 0(a5)
	lw	a2, 0(s5)
	sw	s2, 68(sp)	# save
	call	trace_diffuse_ray_80percent_2942
	lw	a0, 68(sp)	# restore
	lw	a0, 0(a0)
	flwd	fa0, min_caml_rgb(0)
	flw	fa1, 0(a0)
	flwd	fa2, min_caml_diffuse_ray(0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(0)
	flwd	fa0, min_caml_rgb(4)
	flw	fa1, 4(a0)
	flwd	fa2, min_caml_diffuse_ray(4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(4)
	flwd	fa0, min_caml_rgb(8)
	flw	fa1, 8(a0)
	flwd	fa2, min_caml_diffuse_ray(8)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(8)
.scan_pixel_cont_31:
	li	a1, 1
	lw	a0, 64(sp)	# restore
	lw	a0, 4(a0)
	blt	a0, zero, .scan_pixel_cont_29
	lw	a0, 60(sp)	# restore
	lw	a0, 4(a0)
	beq	a0, zero, .scan_pixel_cont_33
	lw	a0, 56(sp)	# restore
	call	calc_diffuse_using_1point_2946
.scan_pixel_cont_33:
	li	a1, 2
	lw	a0, 56(sp)	# restore
	call	do_without_neighbors_2955
	flwd	fa0, min_caml_rgb(0)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_35
	bge	a0, zero, .scan_pixel_cont_36
	li	a0, 0
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(4)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_38
	bge	a0, zero, .scan_pixel_cont_39
	li	a0, 0
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(8)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_41
	bge	a0, zero, .scan_pixel_cont_42
	li	a0, 0
	b	.scan_pixel_cont_42
.scan_pixel_else_28:
	lw	a7, 0(s1)
	beq	a7, zero, .scan_pixel_cont_34
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	call	calc_diffuse_using_5points_2949
.scan_pixel_cont_34:
	li	a5, 1
	lw	a0, 20(sp)	# restore
	lw	a1, 8(sp)	# restore
	lw	a2, 4(sp)	# restore
	lw	a3, 16(sp)	# restore
	lw	a4, 0(sp)	# restore
	call	try_exploit_neighbors_2971
.scan_pixel_cont_29:
.scan_pixel_cont_19:
.scan_pixel_cont_12:
	flwd	fa0, min_caml_rgb(0)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_35
	bge	a0, zero, .scan_pixel_cont_36
	li	a0, 0
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(4)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_38
	bge	a0, zero, .scan_pixel_cont_39
	li	a0, 0
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(8)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_41
	bge	a0, zero, .scan_pixel_cont_42
	li	a0, 0
	b	.scan_pixel_cont_42
.scan_pixel_else_35:
	li	a0, 255
.scan_pixel_cont_36:
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(4)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_38
	bge	a0, zero, .scan_pixel_cont_39
	li	a0, 0
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(8)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_41
	bge	a0, zero, .scan_pixel_cont_42
	li	a0, 0
	b	.scan_pixel_cont_42
.scan_pixel_else_38:
	li	a0, 255
.scan_pixel_cont_39:
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(8)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_41
	bge	a0, zero, .scan_pixel_cont_42
	li	a0, 0
	b	.scan_pixel_cont_42
.scan_pixel_else_41:
	li	a0, 255
.scan_pixel_cont_42:
	call	min_caml_print_int
	li	a0, 10
	w	a0
	lw	a0, 20(sp)	# restore
	addi	a0, a0, 1
	lwd	a1, min_caml_image_size(0)
	bgt	a1, a0, .scan_pixel_else_44
	lw	ra, 92(sp)
	addi	sp, sp, 96
	jr	ra
.scan_pixel_else_44:
	slli	a1, a0, 2
	lw	a3, 16(sp)	# restore
	add	t6, a3, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	flw	fa0, 0(a1)
	fswd	fa0, min_caml_rgb(0)
	flw	fa0, 4(a1)
	fswd	fa0, min_caml_rgb(4)
	flw	fa0, 8(a1)
	fswd	fa0, min_caml_rgb(8)
	lwd	a1, min_caml_image_size(4)
	lw	a2, 12(sp)	# restore
	bgt	a1, a2, .scan_pixel_else_46
	li	a1, 0
	b	.scan_pixel_cont_47
.scan_pixel_else_46:
	lw	a1, 8(sp)	# restore
	bgt	a1, zero, .scan_pixel_else_48
	li	a1, 0
	b	.scan_pixel_cont_49
.scan_pixel_else_48:
	lwd	a2, min_caml_image_size(0)
	addi	a4, a0, 1
	bgt	a2, a4, .scan_pixel_else_50
	li	a1, 0
	b	.scan_pixel_cont_51
.scan_pixel_else_50:
	bgt	a0, zero, .scan_pixel_else_52
	li	a1, 0
	b	.scan_pixel_cont_53
.scan_pixel_else_52:
	li	a1, 1
.scan_pixel_cont_53:
.scan_pixel_cont_51:
.scan_pixel_cont_49:
.scan_pixel_cont_47:
	sw	a0, 72(sp)	# save
	bne	a1, zero, .scan_pixel_else_54
	slli	a1, a0, 2
	add	t6, a3, a1
	lw	a0, 0(t6)
	lw	a1, 28(a0)
	lw	a2, 24(a0)
	lw	a4, 20(a0)
	lw	a5, 16(a0)
	lw	a6, 12(a0)
	lw	a7, 8(a0)
	lw	s1, 4(a0)
	lw	s2, 0(a7)
	blt	s2, zero, .scan_pixel_cont_55
	lw	s2, 0(a6)
	sw	a0, 76(sp)	# save
	sw	a6, 80(sp)	# save
	sw	a7, 84(sp)	# save
	beq	s2, zero, .scan_pixel_cont_57
	lw	a4, 0(a4)
	flw	fa0, 0(a4)
	fswd	fa0, min_caml_diffuse_ray(0)
	flw	fa0, 4(a4)
	fswd	fa0, min_caml_diffuse_ray(4)
	flw	fa0, 8(a4)
	fswd	fa0, min_caml_diffuse_ray(8)
	lw	a0, 0(a2)
	lw	a1, 0(a1)
	lw	a2, 0(s1)
	sw	a5, 88(sp)	# save
	call	trace_diffuse_ray_80percent_2942
	lw	a0, 88(sp)	# restore
	lw	a0, 0(a0)
	flwd	fa0, min_caml_rgb(0)
	flw	fa1, 0(a0)
	flwd	fa2, min_caml_diffuse_ray(0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(0)
	flwd	fa0, min_caml_rgb(4)
	flw	fa1, 4(a0)
	flwd	fa2, min_caml_diffuse_ray(4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(4)
	flwd	fa0, min_caml_rgb(8)
	flw	fa1, 8(a0)
	flwd	fa2, min_caml_diffuse_ray(8)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(8)
.scan_pixel_cont_57:
	li	a1, 1
	lw	a0, 84(sp)	# restore
	lw	a0, 4(a0)
	blt	a0, zero, .scan_pixel_cont_55
	lw	a0, 80(sp)	# restore
	lw	a0, 4(a0)
	beq	a0, zero, .scan_pixel_cont_59
	lw	a0, 76(sp)	# restore
	call	calc_diffuse_using_1point_2946
.scan_pixel_cont_59:
	li	a1, 2
	lw	a0, 76(sp)	# restore
	call	do_without_neighbors_2955
	flwd	fa0, min_caml_rgb(0)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_60
	bge	a0, zero, .scan_pixel_cont_61
	li	a0, 0
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(4)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_63
	bge	a0, zero, .scan_pixel_cont_64
	li	a0, 0
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(8)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_66
	bge	a0, zero, .scan_pixel_cont_67
	li	a0, 0
	b	.scan_pixel_cont_67
.scan_pixel_else_54:
	li	a5, 0
	lw	a1, 8(sp)	# restore
	lw	a2, 4(sp)	# restore
	lw	a4, 0(sp)	# restore
	call	try_exploit_neighbors_2971
.scan_pixel_cont_55:
	flwd	fa0, min_caml_rgb(0)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_60
	bge	a0, zero, .scan_pixel_cont_61
	li	a0, 0
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(4)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_63
	bge	a0, zero, .scan_pixel_cont_64
	li	a0, 0
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(8)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_66
	bge	a0, zero, .scan_pixel_cont_67
	li	a0, 0
	b	.scan_pixel_cont_67
.scan_pixel_else_60:
	li	a0, 255
.scan_pixel_cont_61:
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(4)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_63
	bge	a0, zero, .scan_pixel_cont_64
	li	a0, 0
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(8)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_66
	bge	a0, zero, .scan_pixel_cont_67
	li	a0, 0
	b	.scan_pixel_cont_67
.scan_pixel_else_63:
	li	a0, 255
.scan_pixel_cont_64:
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(8)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_66
	bge	a0, zero, .scan_pixel_cont_67
	li	a0, 0
	b	.scan_pixel_cont_67
.scan_pixel_else_66:
	li	a0, 255
.scan_pixel_cont_67:
	call	min_caml_print_int
	li	a0, 10
	w	a0
	lw	a0, 72(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 8(sp)	# restore
	lw	a2, 4(sp)	# restore
	lw	a3, 16(sp)	# restore
	lw	a4, 0(sp)	# restore
	call	scan_pixel_2998
	lw	ra, 92(sp)
	addi	sp, sp, 96
	jr	ra
scan_line_3004:
	addi	sp, sp, -56
	sw	ra, 52(sp)
	lwd	a5, min_caml_image_size(4)
	bgt	a5, a0, .scan_line_else_1
	lw	ra, 52(sp)
	addi	sp, sp, 56
	jr	ra
.scan_line_else_1:
	lwd	a5, min_caml_image_size(4)
	addi	a5, a5, -1
	sw	a4, 0(sp)	# save
	sw	a3, 4(sp)	# save
	sw	a1, 8(sp)	# save
	sw	a0, 12(sp)	# save
	sw	a2, 16(sp)	# save
	ble	a5, a0, .scan_line_cont_3
	addi	a5, a0, 1
	flwd	fa0, min_caml_scan_pitch(0)
	lwd	a6, min_caml_image_center(4)
	sub	a0, a5, a6
	fsw	fa0, 20(sp)	# save
	call	min_caml_float_of_int
	flw	fa1, 20(sp)	# restore
	fmul	fa0, fa1, fa0
	flwd	fa1, min_caml_screeny_dir(0)
	fmul	fa1, fa0, fa1
	flwd	fa2, min_caml_screenz_dir(0)
	fadd	fa1, fa1, fa2
	flwd	fa2, min_caml_screeny_dir(4)
	fmul	fa2, fa0, fa2
	flwd	fa3, min_caml_screenz_dir(4)
	fadd	fa2, fa2, fa3
	flwd	fa3, min_caml_screeny_dir(8)
	fmul	fa0, fa0, fa3
	flwd	fa3, min_caml_screenz_dir(8)
	fadd	fa0, fa0, fa3
	lwd	a0, min_caml_image_size(0)
	addi	a1, a0, -1
	mv	a2, a4
	mv	a0, a3
	fmv	ft8, fa2
	fmv	fa2, fa0
	fmv	fa0, fa1
	fmv	fa1, ft8
	call	pretrace_pixels_2987
.scan_line_cont_3:
	li	a0, 0
	lwd	a1, min_caml_image_size(0)
	ble	a1, zero, .scan_line_cont_4
	lw	a3, 16(sp)	# restore
	lw	a1, 0(a3)
	lw	a1, 0(a1)
	flw	fa0, 0(a1)
	fswd	fa0, min_caml_rgb(0)
	flw	fa0, 4(a1)
	fswd	fa0, min_caml_rgb(4)
	flw	fa0, 8(a1)
	fswd	fa0, min_caml_rgb(8)
	lwd	a1, min_caml_image_size(4)
	lw	a2, 12(sp)	# restore
	addi	a4, a2, 1
	bgt	a1, a4, .scan_line_else_5
	li	a1, 0
	b	.scan_line_cont_6+4
.scan_line_else_5:
	bgt	a2, zero, .scan_line_else_7
	li	a1, 0
	b	.scan_line_cont_8+4
.scan_line_else_7:
	lwd	a1, min_caml_image_size(0)
	bgti	a1, 1, .scan_line_else_9
	li	a1, 0
	b	.scan_line_cont_10+4
.scan_line_else_9:
	li	a1, 0
.scan_line_cont_10+4:
.scan_line_cont_6+4:
.scan_line_cont_8+4:
	lw	a0, 0(a3)
	lw	a1, 28(a0)
	lw	a4, 24(a0)
	lw	a5, 20(a0)
	lw	a6, 16(a0)
	lw	a7, 12(a0)
	lw	s1, 8(a0)
	lw	s2, 4(a0)
	lw	s3, 0(s1)
	blt	s3, zero, .scan_line_cont_12
	lw	s3, 0(a7)
	sw	a0, 24(sp)	# save
	sw	a7, 28(sp)	# save
	sw	s1, 32(sp)	# save
	beq	s3, zero, .scan_line_cont_14
	lw	a5, 0(a5)
	flw	fa0, 0(a5)
	fswd	fa0, min_caml_diffuse_ray(0)
	flw	fa0, 4(a5)
	fswd	fa0, min_caml_diffuse_ray(4)
	flw	fa0, 8(a5)
	fswd	fa0, min_caml_diffuse_ray(8)
	lw	a0, 0(a4)
	lw	a1, 0(a1)
	lw	a2, 0(s2)
	sw	a6, 36(sp)	# save
	call	trace_diffuse_ray_80percent_2942
	lw	a0, 36(sp)	# restore
	lw	a0, 0(a0)
	flwd	fa0, min_caml_rgb(0)
	flw	fa1, 0(a0)
	flwd	fa2, min_caml_diffuse_ray(0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(0)
	flwd	fa0, min_caml_rgb(4)
	flw	fa1, 4(a0)
	flwd	fa2, min_caml_diffuse_ray(4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(4)
	flwd	fa0, min_caml_rgb(8)
	flw	fa1, 8(a0)
	flwd	fa2, min_caml_diffuse_ray(8)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fswd	fa0, min_caml_rgb(8)
.scan_line_cont_14:
	li	a1, 1
	lw	a0, 32(sp)	# restore
	lw	a0, 4(a0)
	blt	a0, zero, .scan_line_cont_12
	lw	a0, 28(sp)	# restore
	lw	a0, 4(a0)
	beq	a0, zero, .scan_line_cont_16
	lw	a0, 24(sp)	# restore
	call	calc_diffuse_using_1point_2946
.scan_line_cont_16:
	li	a1, 2
	lw	a0, 24(sp)	# restore
	call	do_without_neighbors_2955
	flwd	fa0, min_caml_rgb(0)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_line_else_17
	bge	a0, zero, .scan_line_cont_18
	li	a0, 0
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(4)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_line_else_20
	bge	a0, zero, .scan_line_cont_21
	li	a0, 0
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(8)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_line_else_23
	bge	a0, zero, .scan_line_cont_24
	li	a0, 0
	b	.scan_line_cont_24
	li	a5, 0
	lw	a1, 8(sp)	# restore
	lw	a4, 4(sp)	# restore
	mv	t4, a2
	mv	a2, a1
	mv	a1, t4
	call	try_exploit_neighbors_2971
.scan_line_cont_12:
	flwd	fa0, min_caml_rgb(0)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_line_else_17
	bge	a0, zero, .scan_line_cont_18
	li	a0, 0
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(4)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_line_else_20
	bge	a0, zero, .scan_line_cont_21
	li	a0, 0
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(8)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_line_else_23
	bge	a0, zero, .scan_line_cont_24
	li	a0, 0
	b	.scan_line_cont_24
.scan_line_else_17:
	li	a0, 255
.scan_line_cont_18:
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(4)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_line_else_20
	bge	a0, zero, .scan_line_cont_21
	li	a0, 0
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(8)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_line_else_23
	bge	a0, zero, .scan_line_cont_24
	li	a0, 0
	b	.scan_line_cont_24
.scan_line_else_20:
	li	a0, 255
.scan_line_cont_21:
	call	min_caml_print_int
	li	a0, 32
	w	a0
	flwd	fa0, min_caml_rgb(8)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_line_else_23
	bge	a0, zero, .scan_line_cont_24
	li	a0, 0
	b	.scan_line_cont_24
.scan_line_else_23:
	li	a0, 255
.scan_line_cont_24:
	call	min_caml_print_int
	li	a0, 10
	w	a0
	li	a0, 1
	lw	a1, 12(sp)	# restore
	lw	a2, 8(sp)	# restore
	lw	a3, 16(sp)	# restore
	lw	a4, 4(sp)	# restore
	call	scan_pixel_2998
.scan_line_cont_4:
	lw	a0, 12(sp)	# restore
	addi	a1, a0, 1
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 2
	blti	a0, 5, .scan_line_cont_26
	addi	a0, a0, -5
.scan_line_cont_26:
	lwd	a2, min_caml_image_size(4)
	ble	a2, a1, .scan_line_cont_27
	lwd	a2, min_caml_image_size(4)
	addi	a2, a2, -1
	sw	a0, 40(sp)	# save
	sw	a1, 44(sp)	# save
	ble	a2, a1, .scan_line_cont_28
	addi	a2, a1, 1
	flwd	fa0, min_caml_scan_pitch(0)
	lwd	a3, min_caml_image_center(4)
	sub	a0, a2, a3
	fsw	fa0, 48(sp)	# save
	call	min_caml_float_of_int
	flw	fa1, 48(sp)	# restore
	fmul	fa0, fa1, fa0
	flwd	fa1, min_caml_screeny_dir(0)
	fmul	fa1, fa0, fa1
	flwd	fa2, min_caml_screenz_dir(0)
	fadd	fa1, fa1, fa2
	flwd	fa2, min_caml_screeny_dir(4)
	fmul	fa2, fa0, fa2
	flwd	fa3, min_caml_screenz_dir(4)
	fadd	fa2, fa2, fa3
	flwd	fa3, min_caml_screeny_dir(8)
	fmul	fa0, fa0, fa3
	flwd	fa3, min_caml_screenz_dir(8)
	fadd	fa0, fa0, fa3
	lwd	a0, min_caml_image_size(0)
	addi	a1, a0, -1
	lw	a0, 8(sp)	# restore
	lw	a2, 40(sp)	# restore
	fmv	ft8, fa2
	fmv	fa2, fa0
	fmv	fa0, fa1
	fmv	fa1, ft8
	call	pretrace_pixels_2987
.scan_line_cont_28:
	li	a0, 0
	lw	a1, 44(sp)	# restore
	lw	a2, 16(sp)	# restore
	lw	a3, 4(sp)	# restore
	lw	a4, 8(sp)	# restore
	call	scan_pixel_2998
	lw	a0, 44(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 40(sp)	# restore
	addi	a1, a1, 2
	blti	a1, 5, .scan_line_else_29
	addi	a4, a1, -5
	b	.scan_line_cont_30
.scan_line_else_29:
	mv	a4, a1
.scan_line_cont_30:
	lw	a1, 4(sp)	# restore
	lw	a2, 8(sp)	# restore
	lw	a3, 16(sp)	# restore
	call	scan_line_3004
.scan_line_cont_27:
	lw	ra, 52(sp)
	addi	sp, sp, 56
	jr	ra
create_pixel_3012:
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	sw	a1, 16(gp)
	mv	a1, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a2, gp
	addi	gp, gp, 12
	sw	a2, 4(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a2, gp
	addi	gp, gp, 12
	sw	a2, 8(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a2, gp
	addi	gp, gp, 12
	sw	a2, 12(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a2, gp
	addi	gp, gp, 12
	sw	a2, 16(a1)
	sw	zero, 0(gp)
	sw	zero, 4(gp)
	sw	zero, 8(gp)
	sw	zero, 12(gp)
	sw	zero, 16(gp)
	mv	a2, gp
	addi	gp, gp, 20
	sw	zero, 0(gp)
	sw	zero, 4(gp)
	sw	zero, 8(gp)
	sw	zero, 12(gp)
	sw	zero, 16(gp)
	mv	a3, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	sw	a4, 0(gp)
	sw	a4, 4(gp)
	sw	a4, 8(gp)
	sw	a4, 12(gp)
	sw	a4, 16(gp)
	mv	a4, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a5, gp
	addi	gp, gp, 12
	sw	a5, 4(a4)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a5, gp
	addi	gp, gp, 12
	sw	a5, 8(a4)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a5, gp
	addi	gp, gp, 12
	sw	a5, 12(a4)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a5, gp
	addi	gp, gp, 12
	sw	a5, 16(a4)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a5, gp
	addi	gp, gp, 12
	sw	a5, 0(gp)
	sw	a5, 4(gp)
	sw	a5, 8(gp)
	sw	a5, 12(gp)
	sw	a5, 16(gp)
	mv	a5, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a6, gp
	addi	gp, gp, 12
	sw	a6, 4(a5)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a6, gp
	addi	gp, gp, 12
	sw	a6, 8(a5)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a6, gp
	addi	gp, gp, 12
	sw	a6, 12(a5)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a6, gp
	addi	gp, gp, 12
	sw	a6, 16(a5)
	sw	zero, 0(gp)
	mv	a6, gp
	addi	gp, gp, 4
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 0(gp)
	sw	a7, 4(gp)
	sw	a7, 8(gp)
	sw	a7, 12(gp)
	sw	a7, 16(gp)
	mv	a7, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 4(a7)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 8(a7)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 12(a7)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 16(a7)
	sw	a7, 28(gp)
	sw	a6, 24(gp)
	sw	a5, 20(gp)
	sw	a4, 16(gp)
	sw	a3, 12(gp)
	sw	a2, 8(gp)
	sw	a1, 4(gp)
	sw	a0, 0(gp)
	mv	a0, gp
	addi	gp, gp, 32
	jr	ra
init_line_elements_3014:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	blt	a1, zero, .init_line_elements_else_1
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a2, gp
	addi	gp, gp, 12
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a3, gp
	addi	gp, gp, 12
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	sw	a3, 12(gp)
	sw	a3, 16(gp)
	mv	a3, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	sw	a4, 4(a3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	sw	a4, 8(a3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	sw	a4, 12(a3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	sw	a4, 16(a3)
	sw	zero, 0(gp)
	sw	zero, 4(gp)
	sw	zero, 8(gp)
	sw	zero, 12(gp)
	sw	zero, 16(gp)
	mv	a4, gp
	addi	gp, gp, 20
	sw	zero, 0(gp)
	sw	zero, 4(gp)
	sw	zero, 8(gp)
	sw	zero, 12(gp)
	sw	zero, 16(gp)
	mv	a5, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a6, gp
	addi	gp, gp, 12
	sw	a6, 0(gp)
	sw	a6, 4(gp)
	sw	a6, 8(gp)
	sw	a6, 12(gp)
	sw	a6, 16(gp)
	mv	a6, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 4(a6)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 8(a6)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 12(a6)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 16(a6)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 0(gp)
	sw	a7, 4(gp)
	sw	a7, 8(gp)
	sw	a7, 12(gp)
	sw	a7, 16(gp)
	mv	a7, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 4(a7)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 8(a7)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 12(a7)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 16(a7)
	sw	zero, 0(gp)
	mv	s1, gp
	addi	gp, gp, 4
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s2, gp
	addi	gp, gp, 12
	sw	s2, 0(gp)
	sw	s2, 4(gp)
	sw	s2, 8(gp)
	sw	s2, 12(gp)
	sw	s2, 16(gp)
	mv	s2, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 4(s2)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 8(s2)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 12(s2)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 16(s2)
	sw	s2, 28(gp)
	sw	s1, 24(gp)
	sw	a7, 20(gp)
	sw	a6, 16(gp)
	sw	a5, 12(gp)
	sw	a4, 8(gp)
	sw	a3, 4(gp)
	sw	a2, 0(gp)
	mv	a2, gp
	addi	gp, gp, 32
	slli	a3, a1, 2
	add	t6, a0, a3
	sw	a2, 0(t6)
	addi	a1, a1, -1
	blt	a1, zero, .init_line_elements_else_1
	sw	a0, 0(sp)	# save
	sw	a1, 4(sp)	# save
	call	create_pixel_3012
	lw	a1, 4(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 0(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, .init_line_elements_else_3
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a2, gp
	addi	gp, gp, 12
	sw	a2, 0(gp)
	sw	a2, 4(gp)
	sw	a2, 8(gp)
	sw	a2, 12(gp)
	sw	a2, 16(gp)
	mv	a2, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	sw	a4, 4(a2)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	sw	a4, 8(a2)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	sw	a4, 12(a2)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	sw	a4, 16(a2)
	sw	zero, 0(gp)
	sw	zero, 4(gp)
	sw	zero, 8(gp)
	sw	zero, 12(gp)
	sw	zero, 16(gp)
	mv	a4, gp
	addi	gp, gp, 20
	sw	zero, 0(gp)
	sw	zero, 4(gp)
	sw	zero, 8(gp)
	sw	zero, 12(gp)
	sw	zero, 16(gp)
	mv	a5, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a6, gp
	addi	gp, gp, 12
	sw	a6, 0(gp)
	sw	a6, 4(gp)
	sw	a6, 8(gp)
	sw	a6, 12(gp)
	sw	a6, 16(gp)
	mv	a6, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 4(a6)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 8(a6)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 12(a6)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 16(a6)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 0(gp)
	sw	a7, 4(gp)
	sw	a7, 8(gp)
	sw	a7, 12(gp)
	sw	a7, 16(gp)
	mv	a7, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 4(a7)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 8(a7)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 12(a7)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 16(a7)
	sw	zero, 0(gp)
	mv	s1, gp
	addi	gp, gp, 4
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s2, gp
	addi	gp, gp, 12
	sw	s2, 0(gp)
	sw	s2, 4(gp)
	sw	s2, 8(gp)
	sw	s2, 12(gp)
	sw	s2, 16(gp)
	mv	s2, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 4(s2)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 8(s2)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 12(s2)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 16(s2)
	sw	s2, 28(gp)
	sw	s1, 24(gp)
	sw	a7, 20(gp)
	sw	a6, 16(gp)
	sw	a5, 12(gp)
	sw	a4, 8(gp)
	sw	a2, 4(gp)
	sw	a1, 0(gp)
	mv	a1, gp
	addi	gp, gp, 32
	slli	a2, a0, 2
	add	t6, a3, a2
	sw	a1, 0(t6)
	addi	a0, a0, -1
	blt	a0, zero, .init_line_elements_else_3
	sw	a0, 8(sp)	# save
	call	create_pixel_3012
	lw	a1, 8(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 0(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	init_line_elements_3014
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
.init_line_elements_else_3:
	mv	a0, a3
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
.init_line_elements_else_1:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
calc_dirvec_3024:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	blti	a0, 5, .calc_dirvec_else_1
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	fli	fa3, l_data_5
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	fdiv	fa0, fa0, fa2
	fdiv	fa1, fa1, fa2
	fdiv	fa2, fa3, fa2
	slli	a0, a1, 2
	lwl	a0, min_caml_dirvecs(a0)
	slli	a1, a2, 2
	add	t6, a0, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	fsw	fa0, 0(a1)
	fsw	fa1, 4(a1)
	fsw	fa2, 8(a1)
	addi	a1, a2, 40
	slli	a1, a1, 2
	add	t6, a0, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	fneg	fa3, fa1
	fsw	fa0, 0(a1)
	fsw	fa2, 4(a1)
	fsw	fa3, 8(a1)
	addi	a1, a2, 80
	slli	a1, a1, 2
	add	t6, a0, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	fneg	fa4, fa0
	fsw	fa2, 0(a1)
	fsw	fa4, 4(a1)
	fsw	fa3, 8(a1)
	addi	a1, a2, 1
	slli	a1, a1, 2
	add	t6, a0, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	fneg	fa2, fa2
	fsw	fa4, 0(a1)
	fsw	fa3, 4(a1)
	fsw	fa2, 8(a1)
	addi	a1, a2, 41
	slli	a1, a1, 2
	add	t6, a0, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	fsw	fa4, 0(a1)
	fsw	fa2, 4(a1)
	fsw	fa1, 8(a1)
	addi	a1, a2, 81
	slli	a1, a1, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	lw	a0, 0(a0)
	fsw	fa2, 0(a0)
	fsw	fa0, 4(a0)
	fsw	fa1, 8(a0)
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
.calc_dirvec_else_1:
	fmul	fa0, fa1, fa1
	fli	fa1, l_data_26
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	fli	fa4, l_data_5
	fsw	fa0, 0(sp)	# save
	fdiv	fa0, fa4, fa0
	call	min_caml_atan
	fmul	fa0, fa0, fa2
	fsw	fa0, 4(sp)	# save
	call	min_caml_sin
	fsw	fa0, 8(sp)	# save
	flw	fa0, 4(sp)	# restore
	call	min_caml_cos
	flw	fa5, 8(sp)	# restore
	fdiv	fa0, fa5, fa0
	flw	fa5, 0(sp)	# restore
	fmul	fa0, fa0, fa5
	addi	a0, a0, 1
	fmul	fa5, fa0, fa0
	fadd	fa1, fa5, fa1
	fsqrt	fa1, fa1
	fsw	fa0, 12(sp)	# save
	fdiv	fa0, fa4, fa1
	call	min_caml_atan
	fmul	fa0, fa0, fa3
	fsw	fa0, 16(sp)	# save
	call	min_caml_sin
	fsw	fa0, 20(sp)	# save
	flw	fa0, 16(sp)	# restore
	call	min_caml_cos
	flw	fa4, 20(sp)	# restore
	fdiv	fa0, fa4, fa0
	fmul	fa1, fa0, fa1
	flw	fa0, 12(sp)	# restore
	call	calc_dirvec_3024
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
calc_dirvecs_3032:
	addi	sp, sp, -76
	sw	ra, 72(sp)
	blt	a0, zero, calc_dirvecs_ret
	fsw	fa0, 0(sp)	# save
	sw	a0, 4(sp)	# save
	call	min_caml_float_of_int
	fli	fa1, l_data_29
	fmul	fa0, fa0, fa1
	fli	fa2, l_data_30
	fsw	fa2, 8(sp)	# save
	fsub	fa2, fa0, fa2
	li	a0, 0
	fsw	fa0, 12(sp)	# save
	fmv	fa0, fzero
	fsw	fa1, 16(sp)	# save
	fmv	fa1, fzero
	flw	fa3, 0(sp)	# restore
	sw	a1, 20(sp)	# save
	sw	a2, 24(sp)	# save
	call	calc_dirvec_3024
	fli	fa0, l_data_26
	flw	fa1, 12(sp)	# restore
	fadd	fa2, fa1, fa0
	li	a0, 0
	fsw	fa0, 28(sp)	# save
	fmv	fa0, fzero
	fmv	fa1, fzero
	lw	a1, 24(sp)	# restore
	addi	a2, a1, 2
	flw	fa3, 0(sp)	# restore
	lw	a1, 20(sp)	# restore
	sw	a2, 32(sp)	# save
	call	calc_dirvec_3024
	lw	a0, 4(sp)	# restore
	addi	a0, a0, -1
	lw	a1, 20(sp)	# restore
	addi	a1, a1, 1
	blti	a1, 5, .calc_dirvecs_cont_1
	addi	a1, a1, -5
.calc_dirvecs_cont_1:
	blt	a0, zero, calc_dirvecs_ret
	sw	a0, 36(sp)	# save
	call	min_caml_float_of_int
	flw	fa1, 16(sp)	# restore
	fmul	fa0, fa0, fa1
	flw	fa2, 8(sp)	# restore
	fsub	fa2, fa0, fa2
	li	a0, 0
	fsw	fa0, 40(sp)	# save
	fmv	fa0, fzero
	fmv	fa1, fzero
	flw	fa3, 0(sp)	# restore
	lw	a2, 24(sp)	# restore
	sw	a1, 44(sp)	# save
	call	calc_dirvec_3024
	flw	fa0, 28(sp)	# restore
	flw	fa1, 40(sp)	# restore
	fadd	fa2, fa1, fa0
	li	a0, 0
	fmv	fa0, fzero
	fmv	fa1, fzero
	flw	fa3, 0(sp)	# restore
	lw	a1, 44(sp)	# restore
	lw	a2, 32(sp)	# restore
	call	calc_dirvec_3024
	lw	a0, 36(sp)	# restore
	addi	a0, a0, -1
	lw	a1, 44(sp)	# restore
	addi	a1, a1, 1
	blti	a1, 5, .calc_dirvecs_cont_2
	addi	a1, a1, -5
.calc_dirvecs_cont_2:
	blt	a0, zero, calc_dirvecs_ret
	sw	a0, 48(sp)	# save
	call	min_caml_float_of_int
	flw	fa1, 16(sp)	# restore
	fmul	fa0, fa0, fa1
	flw	fa2, 8(sp)	# restore
	fsub	fa2, fa0, fa2
	li	a0, 0
	fsw	fa0, 52(sp)	# save
	fmv	fa0, fzero
	fmv	fa1, fzero
	flw	fa3, 0(sp)	# restore
	lw	a2, 24(sp)	# restore
	sw	a1, 56(sp)	# save
	call	calc_dirvec_3024
	flw	fa0, 28(sp)	# restore
	flw	fa1, 52(sp)	# restore
	fadd	fa2, fa1, fa0
	li	a0, 0
	fmv	fa0, fzero
	fmv	fa1, fzero
	flw	fa3, 0(sp)	# restore
	lw	a1, 56(sp)	# restore
	lw	a2, 32(sp)	# restore
	call	calc_dirvec_3024
	lw	a0, 48(sp)	# restore
	addi	a0, a0, -1
	lw	a1, 56(sp)	# restore
	addi	a1, a1, 1
	blti	a1, 5, .calc_dirvecs_cont_3
	addi	a1, a1, -5
.calc_dirvecs_cont_3:
	blt	a0, zero, calc_dirvecs_ret
	sw	a0, 60(sp)	# save
	call	min_caml_float_of_int
	flw	fa1, 16(sp)	# restore
	fmul	fa0, fa0, fa1
	flw	fa1, 8(sp)	# restore
	fsub	fa2, fa0, fa1
	li	a0, 0
	fsw	fa0, 64(sp)	# save
	fmv	fa0, fzero
	fmv	fa1, fzero
	flw	fa3, 0(sp)	# restore
	lw	a2, 24(sp)	# restore
	sw	a1, 68(sp)	# save
	call	calc_dirvec_3024
	flw	fa0, 28(sp)	# restore
	flw	fa1, 64(sp)	# restore
	fadd	fa2, fa1, fa0
	li	a0, 0
	fmv	fa0, fzero
	fmv	fa1, fzero
	flw	fa3, 0(sp)	# restore
	lw	a1, 68(sp)	# restore
	lw	a2, 32(sp)	# restore
	call	calc_dirvec_3024
	lw	a0, 60(sp)	# restore
	addi	a0, a0, -1
	lw	a1, 68(sp)	# restore
	addi	a1, a1, 1
	blti	a1, 5, .calc_dirvecs_cont_4
	addi	a1, a1, -5
.calc_dirvecs_cont_4:
	flw	fa0, 0(sp)	# restore
	lw	a2, 24(sp)	# restore
	call	calc_dirvecs_3032
calc_dirvecs_ret:
	lw	ra, 72(sp)
	addi	sp, sp, 76
	jr	ra
calc_dirvec_rows_3037:
	addi	sp, sp, -88
	sw	ra, 84(sp)
	blt	a0, zero, calc_dirvec_rows_ret
	sw	a0, 0(sp)	# save
	call	min_caml_float_of_int
	fli	fa1, l_data_29
	fmul	fa0, fa0, fa1
	fli	fa2, l_data_30
	fsub	fa0, fa0, fa2
	li	a0, 4
	fsw	fa0, 4(sp)	# save
	call	min_caml_float_of_int
	fmul	fa0, fa0, fa1
	fsw	fa2, 8(sp)	# save
	fsub	fa2, fa0, fa2
	li	a0, 0
	fsw	fa0, 12(sp)	# save
	fmv	fa0, fzero
	fsw	fa1, 16(sp)	# save
	fmv	fa1, fzero
	flw	fa3, 4(sp)	# restore
	sw	a1, 20(sp)	# save
	sw	a2, 24(sp)	# save
	call	calc_dirvec_3024
	fli	fa0, l_data_26
	flw	fa1, 12(sp)	# restore
	fadd	fa2, fa1, fa0
	li	a0, 0
	fsw	fa0, 28(sp)	# save
	fmv	fa0, fzero
	fmv	fa1, fzero
	lw	a1, 24(sp)	# restore
	addi	a2, a1, 2
	flw	fa3, 4(sp)	# restore
	lw	a1, 20(sp)	# restore
	sw	a2, 32(sp)	# save
	call	calc_dirvec_3024
	li	a0, 3
	lw	a1, 20(sp)	# restore
	addi	a2, a1, 1
	blti	a2, 5, .calc_dirvec_rows_cont_1
	addi	a2, a2, -5
.calc_dirvec_rows_cont_1:
	call	min_caml_float_of_int
	flw	fa1, 16(sp)	# restore
	fmul	fa0, fa0, fa1
	flw	fa2, 8(sp)	# restore
	fsub	fa2, fa0, fa2
	li	a0, 0
	fsw	fa0, 36(sp)	# save
	fmv	fa0, fzero
	fmv	fa1, fzero
	flw	fa3, 4(sp)	# restore
	lw	a3, 24(sp)	# restore
	sw	a2, 40(sp)	# save
	mv	a1, a2
	mv	a2, a3
	call	calc_dirvec_3024
	flw	fa0, 28(sp)	# restore
	flw	fa1, 36(sp)	# restore
	fadd	fa2, fa1, fa0
	li	a0, 0
	fmv	fa0, fzero
	fmv	fa1, fzero
	flw	fa3, 4(sp)	# restore
	lw	a1, 40(sp)	# restore
	lw	a2, 32(sp)	# restore
	call	calc_dirvec_3024
	li	a0, 2
	lw	a1, 40(sp)	# restore
	addi	a1, a1, 1
	blti	a1, 5, .calc_dirvec_rows_cont_2
	addi	a1, a1, -5
.calc_dirvec_rows_cont_2:
	call	min_caml_float_of_int
	flw	fa1, 16(sp)	# restore
	fmul	fa0, fa0, fa1
	flw	fa2, 8(sp)	# restore
	fsub	fa2, fa0, fa2
	li	a0, 0
	fsw	fa0, 44(sp)	# save
	fmv	fa0, fzero
	fmv	fa1, fzero
	flw	fa3, 4(sp)	# restore
	lw	a2, 24(sp)	# restore
	sw	a1, 48(sp)	# save
	call	calc_dirvec_3024
	flw	fa0, 28(sp)	# restore
	flw	fa1, 44(sp)	# restore
	fadd	fa2, fa1, fa0
	li	a0, 0
	fmv	fa0, fzero
	fmv	fa1, fzero
	flw	fa3, 4(sp)	# restore
	lw	a1, 48(sp)	# restore
	lw	a2, 32(sp)	# restore
	call	calc_dirvec_3024
	li	a0, 1
	lw	a1, 48(sp)	# restore
	addi	a1, a1, 1
	blti	a1, 5, .calc_dirvec_rows_cont_3
	addi	a1, a1, -5
.calc_dirvec_rows_cont_3:
	flw	fa0, 4(sp)	# restore
	lw	a2, 24(sp)	# restore
	call	calc_dirvecs_3032
	lw	a0, 0(sp)	# restore
	addi	a0, a0, -1
	lw	a1, 20(sp)	# restore
	addi	a1, a1, 2
	blti	a1, 5, .calc_dirvec_rows_cont_4
	addi	a1, a1, -5
.calc_dirvec_rows_cont_4:
	lw	a2, 24(sp)	# restore
	addi	a2, a2, 4
	blt	a0, zero, calc_dirvec_rows_ret
	sw	a0, 52(sp)	# save
	call	min_caml_float_of_int
	flw	fa1, 16(sp)	# restore
	fmul	fa0, fa0, fa1
	flw	fa2, 8(sp)	# restore
	fsub	fa0, fa0, fa2
	li	a0, 4
	fsw	fa0, 56(sp)	# save
	call	min_caml_float_of_int
	fmul	fa0, fa0, fa1
	fsub	fa2, fa0, fa2
	li	a0, 0
	fsw	fa0, 60(sp)	# save
	fmv	fa0, fzero
	fmv	fa1, fzero
	flw	fa3, 56(sp)	# restore
	sw	a1, 64(sp)	# save
	sw	a2, 68(sp)	# save
	call	calc_dirvec_3024
	flw	fa0, 28(sp)	# restore
	flw	fa1, 60(sp)	# restore
	fadd	fa2, fa1, fa0
	li	a0, 0
	fmv	fa0, fzero
	fmv	fa1, fzero
	lw	a1, 68(sp)	# restore
	addi	a2, a1, 2
	flw	fa3, 56(sp)	# restore
	lw	a1, 64(sp)	# restore
	sw	a2, 72(sp)	# save
	call	calc_dirvec_3024
	li	a0, 3
	lw	a1, 64(sp)	# restore
	addi	a2, a1, 1
	blti	a2, 5, .calc_dirvec_rows_cont_5
	addi	a2, a2, -5
.calc_dirvec_rows_cont_5:
	call	min_caml_float_of_int
	flw	fa1, 16(sp)	# restore
	fmul	fa0, fa0, fa1
	flw	fa1, 8(sp)	# restore
	fsub	fa2, fa0, fa1
	li	a0, 0
	fsw	fa0, 76(sp)	# save
	fmv	fa0, fzero
	fmv	fa1, fzero
	flw	fa3, 56(sp)	# restore
	lw	a3, 68(sp)	# restore
	sw	a2, 80(sp)	# save
	mv	a1, a2
	mv	a2, a3
	call	calc_dirvec_3024
	flw	fa0, 28(sp)	# restore
	flw	fa1, 76(sp)	# restore
	fadd	fa2, fa1, fa0
	li	a0, 0
	fmv	fa0, fzero
	fmv	fa1, fzero
	flw	fa3, 56(sp)	# restore
	lw	a1, 80(sp)	# restore
	lw	a2, 72(sp)	# restore
	call	calc_dirvec_3024
	li	a0, 2
	lw	a1, 80(sp)	# restore
	addi	a1, a1, 1
	blti	a1, 5, .calc_dirvec_rows_cont_6
	addi	a1, a1, -5
.calc_dirvec_rows_cont_6:
	flw	fa0, 56(sp)	# restore
	lw	a2, 68(sp)	# restore
	call	calc_dirvecs_3032
	lw	a0, 52(sp)	# restore
	addi	a0, a0, -1
	lw	a1, 64(sp)	# restore
	addi	a1, a1, 2
	blti	a1, 5, .calc_dirvec_rows_cont_7
	addi	a1, a1, -5
.calc_dirvec_rows_cont_7:
	lw	a2, 68(sp)	# restore
	addi	a2, a2, 4
	call	calc_dirvec_rows_3037
calc_dirvec_rows_ret:
	lw	ra, 84(sp)
	addi	sp, sp, 88
	jr	ra
create_dirvec_elements_3043:
	addi	sp, sp, -40
	sw	ra, 36(sp)
	blt	a1, zero, create_dirvec_elements_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a2, gp
	addi	gp, gp, 12
	sw	a1, 0(sp)	# save
	mv	a1, a2
	sw	a0, 4(sp)	# save
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 0(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 4(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, create_dirvec_elements_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 8(sp)	# save
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 8(sp)	# restore
	slli	a2, a1, 2
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, create_dirvec_elements_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 12(sp)	# save
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 12(sp)	# restore
	slli	a2, a1, 2
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, create_dirvec_elements_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 16(sp)	# save
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 16(sp)	# restore
	slli	a2, a1, 2
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, create_dirvec_elements_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 20(sp)	# save
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 20(sp)	# restore
	slli	a2, a1, 2
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, create_dirvec_elements_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 24(sp)	# save
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 24(sp)	# restore
	slli	a2, a1, 2
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, create_dirvec_elements_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 28(sp)	# save
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 28(sp)	# restore
	slli	a2, a1, 2
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, create_dirvec_elements_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 32(sp)	# save
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 32(sp)	# restore
	slli	a2, a1, 2
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	create_dirvec_elements_3043
create_dirvec_elements_ret:
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
create_dirvecs_3046:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	blt	a0, zero, create_dirvecs_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 0(sp)	# save
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	sw	a0, 0(gp)
	sw	a0, 4(gp)
	sw	a0, 8(gp)
	sw	a0, 12(gp)
	sw	a0, 16(gp)
	sw	a0, 20(gp)
	sw	a0, 24(gp)
	sw	a0, 28(gp)
	sw	a0, 32(gp)
	sw	a0, 36(gp)
	sw	a0, 40(gp)
	sw	a0, 44(gp)
	sw	a0, 48(gp)
	sw	a0, 52(gp)
	sw	a0, 56(gp)
	sw	a0, 60(gp)
	sw	a0, 64(gp)
	sw	a0, 68(gp)
	sw	a0, 72(gp)
	sw	a0, 76(gp)
	sw	a0, 80(gp)
	sw	a0, 84(gp)
	sw	a0, 88(gp)
	sw	a0, 92(gp)
	sw	a0, 96(gp)
	sw	a0, 100(gp)
	sw	a0, 104(gp)
	sw	a0, 108(gp)
	sw	a0, 112(gp)
	sw	a0, 116(gp)
	sw	a0, 120(gp)
	sw	a0, 124(gp)
	sw	a0, 128(gp)
	sw	a0, 132(gp)
	sw	a0, 136(gp)
	sw	a0, 140(gp)
	sw	a0, 144(gp)
	sw	a0, 148(gp)
	sw	a0, 152(gp)
	sw	a0, 156(gp)
	sw	a0, 160(gp)
	sw	a0, 164(gp)
	sw	a0, 168(gp)
	sw	a0, 172(gp)
	sw	a0, 176(gp)
	sw	a0, 180(gp)
	sw	a0, 184(gp)
	sw	a0, 188(gp)
	sw	a0, 192(gp)
	sw	a0, 196(gp)
	sw	a0, 200(gp)
	sw	a0, 204(gp)
	sw	a0, 208(gp)
	sw	a0, 212(gp)
	sw	a0, 216(gp)
	sw	a0, 220(gp)
	sw	a0, 224(gp)
	sw	a0, 228(gp)
	sw	a0, 232(gp)
	sw	a0, 236(gp)
	sw	a0, 240(gp)
	sw	a0, 244(gp)
	sw	a0, 248(gp)
	sw	a0, 252(gp)
	sw	a0, 256(gp)
	sw	a0, 260(gp)
	sw	a0, 264(gp)
	sw	a0, 268(gp)
	sw	a0, 272(gp)
	sw	a0, 276(gp)
	sw	a0, 280(gp)
	sw	a0, 284(gp)
	sw	a0, 288(gp)
	sw	a0, 292(gp)
	sw	a0, 296(gp)
	sw	a0, 300(gp)
	sw	a0, 304(gp)
	sw	a0, 308(gp)
	sw	a0, 312(gp)
	sw	a0, 316(gp)
	sw	a0, 320(gp)
	sw	a0, 324(gp)
	sw	a0, 328(gp)
	sw	a0, 332(gp)
	sw	a0, 336(gp)
	sw	a0, 340(gp)
	sw	a0, 344(gp)
	sw	a0, 348(gp)
	sw	a0, 352(gp)
	sw	a0, 356(gp)
	sw	a0, 360(gp)
	sw	a0, 364(gp)
	sw	a0, 368(gp)
	sw	a0, 372(gp)
	sw	a0, 376(gp)
	sw	a0, 380(gp)
	sw	a0, 384(gp)
	sw	a0, 388(gp)
	sw	a0, 392(gp)
	sw	a0, 396(gp)
	sw	a0, 400(gp)
	sw	a0, 404(gp)
	sw	a0, 408(gp)
	sw	a0, 412(gp)
	sw	a0, 416(gp)
	sw	a0, 420(gp)
	sw	a0, 424(gp)
	sw	a0, 428(gp)
	sw	a0, 432(gp)
	sw	a0, 436(gp)
	sw	a0, 440(gp)
	sw	a0, 444(gp)
	sw	a0, 448(gp)
	sw	a0, 452(gp)
	sw	a0, 456(gp)
	sw	a0, 460(gp)
	sw	a0, 464(gp)
	sw	a0, 468(gp)
	sw	a0, 472(gp)
	sw	a0, 476(gp)
	mv	a0, gp
	addi	gp, gp, 480
	lw	a1, 0(sp)	# restore
	slli	a2, a1, 2
	swl	a0, min_caml_dirvecs(a2)
	slli	a0, a1, 2
	lwl	a0, min_caml_dirvecs(a0)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a2, gp
	addi	gp, gp, 12
	mv	a1, a2
	sw	a0, 4(sp)	# save
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 4(sp)	# restore
	sw	a0, 472(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 4(sp)	# restore
	sw	a0, 468(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 4(sp)	# restore
	sw	a0, 464(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 4(sp)	# restore
	sw	a0, 460(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 4(sp)	# restore
	sw	a0, 456(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 4(sp)	# restore
	sw	a0, 452(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 4(sp)	# restore
	sw	a0, 448(a1)
	li	a0, 111
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	create_dirvec_elements_3043
	lw	a0, 0(sp)	# restore
	addi	a0, a0, -1
	blt	a0, zero, create_dirvecs_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 8(sp)	# save
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	sw	a0, 0(gp)
	sw	a0, 4(gp)
	sw	a0, 8(gp)
	sw	a0, 12(gp)
	sw	a0, 16(gp)
	sw	a0, 20(gp)
	sw	a0, 24(gp)
	sw	a0, 28(gp)
	sw	a0, 32(gp)
	sw	a0, 36(gp)
	sw	a0, 40(gp)
	sw	a0, 44(gp)
	sw	a0, 48(gp)
	sw	a0, 52(gp)
	sw	a0, 56(gp)
	sw	a0, 60(gp)
	sw	a0, 64(gp)
	sw	a0, 68(gp)
	sw	a0, 72(gp)
	sw	a0, 76(gp)
	sw	a0, 80(gp)
	sw	a0, 84(gp)
	sw	a0, 88(gp)
	sw	a0, 92(gp)
	sw	a0, 96(gp)
	sw	a0, 100(gp)
	sw	a0, 104(gp)
	sw	a0, 108(gp)
	sw	a0, 112(gp)
	sw	a0, 116(gp)
	sw	a0, 120(gp)
	sw	a0, 124(gp)
	sw	a0, 128(gp)
	sw	a0, 132(gp)
	sw	a0, 136(gp)
	sw	a0, 140(gp)
	sw	a0, 144(gp)
	sw	a0, 148(gp)
	sw	a0, 152(gp)
	sw	a0, 156(gp)
	sw	a0, 160(gp)
	sw	a0, 164(gp)
	sw	a0, 168(gp)
	sw	a0, 172(gp)
	sw	a0, 176(gp)
	sw	a0, 180(gp)
	sw	a0, 184(gp)
	sw	a0, 188(gp)
	sw	a0, 192(gp)
	sw	a0, 196(gp)
	sw	a0, 200(gp)
	sw	a0, 204(gp)
	sw	a0, 208(gp)
	sw	a0, 212(gp)
	sw	a0, 216(gp)
	sw	a0, 220(gp)
	sw	a0, 224(gp)
	sw	a0, 228(gp)
	sw	a0, 232(gp)
	sw	a0, 236(gp)
	sw	a0, 240(gp)
	sw	a0, 244(gp)
	sw	a0, 248(gp)
	sw	a0, 252(gp)
	sw	a0, 256(gp)
	sw	a0, 260(gp)
	sw	a0, 264(gp)
	sw	a0, 268(gp)
	sw	a0, 272(gp)
	sw	a0, 276(gp)
	sw	a0, 280(gp)
	sw	a0, 284(gp)
	sw	a0, 288(gp)
	sw	a0, 292(gp)
	sw	a0, 296(gp)
	sw	a0, 300(gp)
	sw	a0, 304(gp)
	sw	a0, 308(gp)
	sw	a0, 312(gp)
	sw	a0, 316(gp)
	sw	a0, 320(gp)
	sw	a0, 324(gp)
	sw	a0, 328(gp)
	sw	a0, 332(gp)
	sw	a0, 336(gp)
	sw	a0, 340(gp)
	sw	a0, 344(gp)
	sw	a0, 348(gp)
	sw	a0, 352(gp)
	sw	a0, 356(gp)
	sw	a0, 360(gp)
	sw	a0, 364(gp)
	sw	a0, 368(gp)
	sw	a0, 372(gp)
	sw	a0, 376(gp)
	sw	a0, 380(gp)
	sw	a0, 384(gp)
	sw	a0, 388(gp)
	sw	a0, 392(gp)
	sw	a0, 396(gp)
	sw	a0, 400(gp)
	sw	a0, 404(gp)
	sw	a0, 408(gp)
	sw	a0, 412(gp)
	sw	a0, 416(gp)
	sw	a0, 420(gp)
	sw	a0, 424(gp)
	sw	a0, 428(gp)
	sw	a0, 432(gp)
	sw	a0, 436(gp)
	sw	a0, 440(gp)
	sw	a0, 444(gp)
	sw	a0, 448(gp)
	sw	a0, 452(gp)
	sw	a0, 456(gp)
	sw	a0, 460(gp)
	sw	a0, 464(gp)
	sw	a0, 468(gp)
	sw	a0, 472(gp)
	sw	a0, 476(gp)
	mv	a0, gp
	addi	gp, gp, 480
	lw	a1, 8(sp)	# restore
	slli	a2, a1, 2
	swl	a0, min_caml_dirvecs(a2)
	slli	a0, a1, 2
	lwl	a0, min_caml_dirvecs(a0)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a2, gp
	addi	gp, gp, 12
	mv	a1, a2
	sw	a0, 12(sp)	# save
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 12(sp)	# restore
	sw	a0, 472(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 12(sp)	# restore
	sw	a0, 468(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 12(sp)	# restore
	sw	a0, 464(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 12(sp)	# restore
	sw	a0, 460(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 12(sp)	# restore
	sw	a0, 456(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 12(sp)	# restore
	sw	a0, 452(a1)
	li	a0, 112
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	create_dirvec_elements_3043
	lw	a0, 8(sp)	# restore
	addi	a0, a0, -1
	blt	a0, zero, create_dirvecs_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 16(sp)	# save
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	sw	a0, 0(gp)
	sw	a0, 4(gp)
	sw	a0, 8(gp)
	sw	a0, 12(gp)
	sw	a0, 16(gp)
	sw	a0, 20(gp)
	sw	a0, 24(gp)
	sw	a0, 28(gp)
	sw	a0, 32(gp)
	sw	a0, 36(gp)
	sw	a0, 40(gp)
	sw	a0, 44(gp)
	sw	a0, 48(gp)
	sw	a0, 52(gp)
	sw	a0, 56(gp)
	sw	a0, 60(gp)
	sw	a0, 64(gp)
	sw	a0, 68(gp)
	sw	a0, 72(gp)
	sw	a0, 76(gp)
	sw	a0, 80(gp)
	sw	a0, 84(gp)
	sw	a0, 88(gp)
	sw	a0, 92(gp)
	sw	a0, 96(gp)
	sw	a0, 100(gp)
	sw	a0, 104(gp)
	sw	a0, 108(gp)
	sw	a0, 112(gp)
	sw	a0, 116(gp)
	sw	a0, 120(gp)
	sw	a0, 124(gp)
	sw	a0, 128(gp)
	sw	a0, 132(gp)
	sw	a0, 136(gp)
	sw	a0, 140(gp)
	sw	a0, 144(gp)
	sw	a0, 148(gp)
	sw	a0, 152(gp)
	sw	a0, 156(gp)
	sw	a0, 160(gp)
	sw	a0, 164(gp)
	sw	a0, 168(gp)
	sw	a0, 172(gp)
	sw	a0, 176(gp)
	sw	a0, 180(gp)
	sw	a0, 184(gp)
	sw	a0, 188(gp)
	sw	a0, 192(gp)
	sw	a0, 196(gp)
	sw	a0, 200(gp)
	sw	a0, 204(gp)
	sw	a0, 208(gp)
	sw	a0, 212(gp)
	sw	a0, 216(gp)
	sw	a0, 220(gp)
	sw	a0, 224(gp)
	sw	a0, 228(gp)
	sw	a0, 232(gp)
	sw	a0, 236(gp)
	sw	a0, 240(gp)
	sw	a0, 244(gp)
	sw	a0, 248(gp)
	sw	a0, 252(gp)
	sw	a0, 256(gp)
	sw	a0, 260(gp)
	sw	a0, 264(gp)
	sw	a0, 268(gp)
	sw	a0, 272(gp)
	sw	a0, 276(gp)
	sw	a0, 280(gp)
	sw	a0, 284(gp)
	sw	a0, 288(gp)
	sw	a0, 292(gp)
	sw	a0, 296(gp)
	sw	a0, 300(gp)
	sw	a0, 304(gp)
	sw	a0, 308(gp)
	sw	a0, 312(gp)
	sw	a0, 316(gp)
	sw	a0, 320(gp)
	sw	a0, 324(gp)
	sw	a0, 328(gp)
	sw	a0, 332(gp)
	sw	a0, 336(gp)
	sw	a0, 340(gp)
	sw	a0, 344(gp)
	sw	a0, 348(gp)
	sw	a0, 352(gp)
	sw	a0, 356(gp)
	sw	a0, 360(gp)
	sw	a0, 364(gp)
	sw	a0, 368(gp)
	sw	a0, 372(gp)
	sw	a0, 376(gp)
	sw	a0, 380(gp)
	sw	a0, 384(gp)
	sw	a0, 388(gp)
	sw	a0, 392(gp)
	sw	a0, 396(gp)
	sw	a0, 400(gp)
	sw	a0, 404(gp)
	sw	a0, 408(gp)
	sw	a0, 412(gp)
	sw	a0, 416(gp)
	sw	a0, 420(gp)
	sw	a0, 424(gp)
	sw	a0, 428(gp)
	sw	a0, 432(gp)
	sw	a0, 436(gp)
	sw	a0, 440(gp)
	sw	a0, 444(gp)
	sw	a0, 448(gp)
	sw	a0, 452(gp)
	sw	a0, 456(gp)
	sw	a0, 460(gp)
	sw	a0, 464(gp)
	sw	a0, 468(gp)
	sw	a0, 472(gp)
	sw	a0, 476(gp)
	mv	a0, gp
	addi	gp, gp, 480
	lw	a1, 16(sp)	# restore
	slli	a2, a1, 2
	swl	a0, min_caml_dirvecs(a2)
	slli	a0, a1, 2
	lwl	a0, min_caml_dirvecs(a0)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a2, gp
	addi	gp, gp, 12
	mv	a1, a2
	sw	a0, 20(sp)	# save
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 20(sp)	# restore
	sw	a0, 472(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 20(sp)	# restore
	sw	a0, 468(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 20(sp)	# restore
	sw	a0, 464(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 20(sp)	# restore
	sw	a0, 460(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 20(sp)	# restore
	sw	a0, 456(a1)
	li	a0, 113
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	create_dirvec_elements_3043
	lw	a0, 16(sp)	# restore
	addi	a0, a0, -1
	blt	a0, zero, create_dirvecs_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 24(sp)	# save
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	sw	a0, 0(gp)
	sw	a0, 4(gp)
	sw	a0, 8(gp)
	sw	a0, 12(gp)
	sw	a0, 16(gp)
	sw	a0, 20(gp)
	sw	a0, 24(gp)
	sw	a0, 28(gp)
	sw	a0, 32(gp)
	sw	a0, 36(gp)
	sw	a0, 40(gp)
	sw	a0, 44(gp)
	sw	a0, 48(gp)
	sw	a0, 52(gp)
	sw	a0, 56(gp)
	sw	a0, 60(gp)
	sw	a0, 64(gp)
	sw	a0, 68(gp)
	sw	a0, 72(gp)
	sw	a0, 76(gp)
	sw	a0, 80(gp)
	sw	a0, 84(gp)
	sw	a0, 88(gp)
	sw	a0, 92(gp)
	sw	a0, 96(gp)
	sw	a0, 100(gp)
	sw	a0, 104(gp)
	sw	a0, 108(gp)
	sw	a0, 112(gp)
	sw	a0, 116(gp)
	sw	a0, 120(gp)
	sw	a0, 124(gp)
	sw	a0, 128(gp)
	sw	a0, 132(gp)
	sw	a0, 136(gp)
	sw	a0, 140(gp)
	sw	a0, 144(gp)
	sw	a0, 148(gp)
	sw	a0, 152(gp)
	sw	a0, 156(gp)
	sw	a0, 160(gp)
	sw	a0, 164(gp)
	sw	a0, 168(gp)
	sw	a0, 172(gp)
	sw	a0, 176(gp)
	sw	a0, 180(gp)
	sw	a0, 184(gp)
	sw	a0, 188(gp)
	sw	a0, 192(gp)
	sw	a0, 196(gp)
	sw	a0, 200(gp)
	sw	a0, 204(gp)
	sw	a0, 208(gp)
	sw	a0, 212(gp)
	sw	a0, 216(gp)
	sw	a0, 220(gp)
	sw	a0, 224(gp)
	sw	a0, 228(gp)
	sw	a0, 232(gp)
	sw	a0, 236(gp)
	sw	a0, 240(gp)
	sw	a0, 244(gp)
	sw	a0, 248(gp)
	sw	a0, 252(gp)
	sw	a0, 256(gp)
	sw	a0, 260(gp)
	sw	a0, 264(gp)
	sw	a0, 268(gp)
	sw	a0, 272(gp)
	sw	a0, 276(gp)
	sw	a0, 280(gp)
	sw	a0, 284(gp)
	sw	a0, 288(gp)
	sw	a0, 292(gp)
	sw	a0, 296(gp)
	sw	a0, 300(gp)
	sw	a0, 304(gp)
	sw	a0, 308(gp)
	sw	a0, 312(gp)
	sw	a0, 316(gp)
	sw	a0, 320(gp)
	sw	a0, 324(gp)
	sw	a0, 328(gp)
	sw	a0, 332(gp)
	sw	a0, 336(gp)
	sw	a0, 340(gp)
	sw	a0, 344(gp)
	sw	a0, 348(gp)
	sw	a0, 352(gp)
	sw	a0, 356(gp)
	sw	a0, 360(gp)
	sw	a0, 364(gp)
	sw	a0, 368(gp)
	sw	a0, 372(gp)
	sw	a0, 376(gp)
	sw	a0, 380(gp)
	sw	a0, 384(gp)
	sw	a0, 388(gp)
	sw	a0, 392(gp)
	sw	a0, 396(gp)
	sw	a0, 400(gp)
	sw	a0, 404(gp)
	sw	a0, 408(gp)
	sw	a0, 412(gp)
	sw	a0, 416(gp)
	sw	a0, 420(gp)
	sw	a0, 424(gp)
	sw	a0, 428(gp)
	sw	a0, 432(gp)
	sw	a0, 436(gp)
	sw	a0, 440(gp)
	sw	a0, 444(gp)
	sw	a0, 448(gp)
	sw	a0, 452(gp)
	sw	a0, 456(gp)
	sw	a0, 460(gp)
	sw	a0, 464(gp)
	sw	a0, 468(gp)
	sw	a0, 472(gp)
	sw	a0, 476(gp)
	mv	a0, gp
	addi	gp, gp, 480
	lw	a1, 24(sp)	# restore
	slli	a2, a1, 2
	swl	a0, min_caml_dirvecs(a2)
	slli	a0, a1, 2
	lwl	a0, min_caml_dirvecs(a0)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a2, gp
	addi	gp, gp, 12
	mv	a1, a2
	sw	a0, 28(sp)	# save
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 28(sp)	# restore
	sw	a0, 472(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 28(sp)	# restore
	sw	a0, 468(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 28(sp)	# restore
	sw	a0, 464(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 28(sp)	# restore
	sw	a0, 460(a1)
	li	a0, 114
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	create_dirvec_elements_3043
	lw	a0, 24(sp)	# restore
	addi	a0, a0, -1
	call	create_dirvecs_3046
create_dirvecs_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
init_dirvec_constants_3048:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	blt	a1, zero, init_dirvec_constants_ret
	slli	a2, a1, 2
	sw	a0, 0(sp)	# save
	add	t6, a0, a2
	lw	a0, 0(t6)
	lwd	a2, min_caml_n_objects(0)
	sw	a1, 4(sp)	# save
	addi	a1, a2, -1
	call	iter_setup_dirvec_constants_2830
	lw	a0, 4(sp)	# restore
	addi	a0, a0, -1
	blt	a0, zero, init_dirvec_constants_ret
	slli	a1, a0, 2
	sw	a0, 8(sp)	# save
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a0, 0(t6)
	lwd	a1, min_caml_n_objects(0)
	addi	a1, a1, -1
	blt	a1, zero, .init_dirvec_constants_cont_1
	slli	a3, a1, 2
	lwl	a3, min_caml_objects(a3)
	lw	a4, 4(a0)
	sw	a0, 12(sp)	# save
	lw	a0, 0(a0)
	lw	a5, 16(a3)
	lw	a6, 4(a3)
	bnei	a6, 1, .init_dirvec_constants_else_2
	sw	a4, 16(sp)	# save
	sw	a1, 20(sp)	# save
	mv	a1, a3
	call	setup_rect_table_2821
	lw	a1, 20(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 16(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.init_dirvec_constants_cont_3
.init_dirvec_constants_else_2:
	bnei	a6, 2, .init_dirvec_constants_else_4
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	fsw	fzero, 12(gp)
	mv	a3, gp
	addi	gp, gp, 16
	flw	fa0, 0(a0)
	flw	fa1, 0(a5)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a0)
	flw	fa2, 4(a5)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	flw	fa2, 8(a5)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fle	a0, fa0, fzero
	bne	a0, zero, .init_dirvec_constants_else_6
	fli	fa1, l_data_6
	fdiv	fa1, fa1, fa0
	fsw	fa1, 0(a3)
	flw	fa1, 0(a5)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 4(a3)
	flw	fa1, 4(a5)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 8(a3)
	flw	fa1, 8(a5)
	fdiv	fa0, fa1, fa0
	fneg	fa0, fa0
	fsw	fa0, 12(a3)
	slli	a0, a1, 2
	add	t6, a4, a0
	sw	a3, 0(t6)
	b	.init_dirvec_constants_cont_5
.init_dirvec_constants_else_6:
	fsw	fzero, 0(a3)
	slli	a0, a1, 2
	add	t6, a4, a0
	sw	a3, 0(t6)
	b	.init_dirvec_constants_cont_5
.init_dirvec_constants_else_4:
	sw	a4, 16(sp)	# save
	sw	a1, 20(sp)	# save
	mv	a1, a3
	call	setup_second_table_2827
	lw	a1, 20(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 16(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
.init_dirvec_constants_cont_5:
.init_dirvec_constants_cont_3:
	addi	a1, a1, -1
	lw	a0, 12(sp)	# restore
	call	iter_setup_dirvec_constants_2830
.init_dirvec_constants_cont_1:
	lw	a0, 8(sp)	# restore
	addi	a0, a0, -1
	blt	a0, zero, init_dirvec_constants_ret
	slli	a1, a0, 2
	sw	a0, 24(sp)	# save
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a0, 0(t6)
	lwd	a1, min_caml_n_objects(0)
	addi	a1, a1, -1
	call	iter_setup_dirvec_constants_2830
	lw	a0, 24(sp)	# restore
	addi	a0, a0, -1
	blt	a0, zero, init_dirvec_constants_ret
	slli	a1, a0, 2
	sw	a0, 28(sp)	# save
	lw	a0, 0(sp)	# restore
	add	t6, a0, a1
	lw	a0, 0(t6)
	lwd	a1, min_caml_n_objects(0)
	addi	a1, a1, -1
	blt	a1, zero, .init_dirvec_constants_cont_8
	slli	a2, a1, 2
	lwl	a2, min_caml_objects(a2)
	lw	a3, 4(a0)
	sw	a0, 32(sp)	# save
	lw	a0, 0(a0)
	lw	a4, 16(a2)
	lw	a5, 4(a2)
	bnei	a5, 1, .init_dirvec_constants_else_9
	sw	a3, 36(sp)	# save
	sw	a1, 40(sp)	# save
	mv	a1, a2
	call	setup_rect_table_2821
	lw	a1, 40(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 36(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.init_dirvec_constants_cont_10
.init_dirvec_constants_else_9:
	bnei	a5, 2, .init_dirvec_constants_else_11
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	fsw	fzero, 12(gp)
	mv	a2, gp
	addi	gp, gp, 16
	flw	fa0, 0(a0)
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a0)
	flw	fa2, 4(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	flw	fa2, 8(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fle	a0, fa0, fzero
	bne	a0, zero, .init_dirvec_constants_else_13
	fli	fa1, l_data_6
	fdiv	fa1, fa1, fa0
	fsw	fa1, 0(a2)
	flw	fa1, 0(a4)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 4(a2)
	flw	fa1, 4(a4)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 8(a2)
	flw	fa1, 8(a4)
	fdiv	fa0, fa1, fa0
	fneg	fa0, fa0
	fsw	fa0, 12(a2)
	slli	a0, a1, 2
	add	t6, a3, a0
	sw	a2, 0(t6)
	b	.init_dirvec_constants_cont_12
.init_dirvec_constants_else_13:
	fsw	fzero, 0(a2)
	slli	a0, a1, 2
	add	t6, a3, a0
	sw	a2, 0(t6)
	b	.init_dirvec_constants_cont_12
.init_dirvec_constants_else_11:
	sw	a3, 36(sp)	# save
	sw	a1, 40(sp)	# save
	mv	a1, a2
	call	setup_second_table_2827
	lw	a1, 40(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 36(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
.init_dirvec_constants_cont_12:
.init_dirvec_constants_cont_10:
	addi	a1, a1, -1
	lw	a0, 32(sp)	# restore
	call	iter_setup_dirvec_constants_2830
.init_dirvec_constants_cont_8:
	lw	a0, 28(sp)	# restore
	addi	a1, a0, -1
	lw	a0, 0(sp)	# restore
	call	init_dirvec_constants_3048
init_dirvec_constants_ret:
	lw	ra, 44(sp)
	addi	sp, sp, 48
	jr	ra
init_vecset_constants_3051:
	addi	sp, sp, -80
	sw	ra, 76(sp)
	blt	a0, zero, init_vecset_constants_ret
	slli	a1, a0, 2
	lwl	a1, min_caml_dirvecs(a1)
	sw	a0, 0(sp)	# save
	lw	a0, 476(a1)
	lwd	a2, min_caml_n_objects(0)
	addi	a2, a2, -1
	sw	a1, 4(sp)	# save
	blt	a2, zero, .init_vecset_constants_cont_1
	slli	a3, a2, 2
	lwl	a1, min_caml_objects(a3)
	lw	a3, 4(a0)
	sw	a0, 8(sp)	# save
	lw	a0, 0(a0)
	lw	a4, 16(a1)
	lw	a5, 4(a1)
	sw	a2, 12(sp)	# save
	bnei	a5, 1, .init_vecset_constants_else_2
	sw	a3, 16(sp)	# save
	call	setup_rect_table_2821
	lw	a1, 12(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 16(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.init_vecset_constants_cont_3
.init_vecset_constants_else_2:
	bnei	a5, 2, .init_vecset_constants_else_4
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	fsw	fzero, 12(gp)
	mv	a1, gp
	addi	gp, gp, 16
	flw	fa0, 0(a0)
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a0)
	flw	fa2, 4(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	flw	fa2, 8(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fle	a0, fa0, fzero
	bne	a0, zero, .init_vecset_constants_else_6
	fli	fa1, l_data_6
	fdiv	fa1, fa1, fa0
	fsw	fa1, 0(a1)
	flw	fa1, 0(a4)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 4(a1)
	flw	fa1, 4(a4)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 8(a1)
	flw	fa1, 8(a4)
	fdiv	fa0, fa1, fa0
	fneg	fa0, fa0
	fsw	fa0, 12(a1)
	slli	a0, a2, 2
	add	t6, a3, a0
	sw	a1, 0(t6)
	b	.init_vecset_constants_cont_5
.init_vecset_constants_else_6:
	fsw	fzero, 0(a1)
	slli	a0, a2, 2
	add	t6, a3, a0
	sw	a1, 0(t6)
	b	.init_vecset_constants_cont_5
.init_vecset_constants_else_4:
	sw	a3, 16(sp)	# save
	call	setup_second_table_2827
	lw	a1, 12(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 16(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
.init_vecset_constants_cont_5:
.init_vecset_constants_cont_3:
	lw	a0, 12(sp)	# restore
	addi	a1, a0, -1
	lw	a0, 8(sp)	# restore
	call	iter_setup_dirvec_constants_2830
.init_vecset_constants_cont_1:
	lw	a0, 4(sp)	# restore
	lw	a0, 472(a0)
	lwd	a1, min_caml_n_objects(0)
	addi	a1, a1, -1
	call	iter_setup_dirvec_constants_2830
	lw	a0, 4(sp)	# restore
	lw	a0, 468(a0)
	lwd	a1, min_caml_n_objects(0)
	addi	a1, a1, -1
	blt	a1, zero, .init_vecset_constants_cont_8
	slli	a2, a1, 2
	lwl	a2, min_caml_objects(a2)
	lw	a3, 4(a0)
	sw	a0, 20(sp)	# save
	lw	a0, 0(a0)
	lw	a4, 16(a2)
	lw	a5, 4(a2)
	bnei	a5, 1, .init_vecset_constants_else_9
	sw	a3, 24(sp)	# save
	sw	a1, 28(sp)	# save
	mv	a1, a2
	call	setup_rect_table_2821
	lw	a1, 28(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 24(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.init_vecset_constants_cont_10
.init_vecset_constants_else_9:
	bnei	a5, 2, .init_vecset_constants_else_11
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	fsw	fzero, 12(gp)
	mv	a2, gp
	addi	gp, gp, 16
	flw	fa0, 0(a0)
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a0)
	flw	fa2, 4(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	flw	fa2, 8(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fle	a0, fa0, fzero
	bne	a0, zero, .init_vecset_constants_else_13
	fli	fa1, l_data_6
	fdiv	fa1, fa1, fa0
	fsw	fa1, 0(a2)
	flw	fa1, 0(a4)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 4(a2)
	flw	fa1, 4(a4)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 8(a2)
	flw	fa1, 8(a4)
	fdiv	fa0, fa1, fa0
	fneg	fa0, fa0
	fsw	fa0, 12(a2)
	slli	a0, a1, 2
	add	t6, a3, a0
	sw	a2, 0(t6)
	b	.init_vecset_constants_cont_12
.init_vecset_constants_else_13:
	fsw	fzero, 0(a2)
	slli	a0, a1, 2
	add	t6, a3, a0
	sw	a2, 0(t6)
	b	.init_vecset_constants_cont_12
.init_vecset_constants_else_11:
	sw	a3, 24(sp)	# save
	sw	a1, 28(sp)	# save
	mv	a1, a2
	call	setup_second_table_2827
	lw	a1, 28(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 24(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
.init_vecset_constants_cont_12:
.init_vecset_constants_cont_10:
	addi	a1, a1, -1
	lw	a0, 20(sp)	# restore
	call	iter_setup_dirvec_constants_2830
.init_vecset_constants_cont_8:
	li	a1, 116
	lw	a0, 4(sp)	# restore
	call	init_dirvec_constants_3048
	lw	a0, 0(sp)	# restore
	addi	a0, a0, -1
	blt	a0, zero, init_vecset_constants_ret
	slli	a1, a0, 2
	lwl	a1, min_caml_dirvecs(a1)
	sw	a0, 32(sp)	# save
	lw	a0, 476(a1)
	lwd	a2, min_caml_n_objects(0)
	sw	a1, 36(sp)	# save
	addi	a1, a2, -1
	call	iter_setup_dirvec_constants_2830
	lw	a0, 36(sp)	# restore
	lw	a0, 472(a0)
	lwd	a1, min_caml_n_objects(0)
	addi	a1, a1, -1
	blt	a1, zero, .init_vecset_constants_cont_15
	slli	a2, a1, 2
	lwl	a2, min_caml_objects(a2)
	lw	a3, 4(a0)
	sw	a0, 40(sp)	# save
	lw	a0, 0(a0)
	lw	a4, 16(a2)
	lw	a5, 4(a2)
	bnei	a5, 1, .init_vecset_constants_else_16
	sw	a3, 44(sp)	# save
	sw	a1, 48(sp)	# save
	mv	a1, a2
	call	setup_rect_table_2821
	lw	a1, 48(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 44(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.init_vecset_constants_cont_17
.init_vecset_constants_else_16:
	bnei	a5, 2, .init_vecset_constants_else_18
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	fsw	fzero, 12(gp)
	mv	a2, gp
	addi	gp, gp, 16
	flw	fa0, 0(a0)
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a0)
	flw	fa2, 4(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	flw	fa2, 8(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fle	a0, fa0, fzero
	bne	a0, zero, .init_vecset_constants_else_20
	fli	fa1, l_data_6
	fdiv	fa1, fa1, fa0
	fsw	fa1, 0(a2)
	flw	fa1, 0(a4)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 4(a2)
	flw	fa1, 4(a4)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 8(a2)
	flw	fa1, 8(a4)
	fdiv	fa0, fa1, fa0
	fneg	fa0, fa0
	fsw	fa0, 12(a2)
	slli	a0, a1, 2
	add	t6, a3, a0
	sw	a2, 0(t6)
	b	.init_vecset_constants_cont_19
.init_vecset_constants_else_20:
	fsw	fzero, 0(a2)
	slli	a0, a1, 2
	add	t6, a3, a0
	sw	a2, 0(t6)
	b	.init_vecset_constants_cont_19
.init_vecset_constants_else_18:
	sw	a3, 44(sp)	# save
	sw	a1, 48(sp)	# save
	mv	a1, a2
	call	setup_second_table_2827
	lw	a1, 48(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 44(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
.init_vecset_constants_cont_19:
.init_vecset_constants_cont_17:
	addi	a1, a1, -1
	lw	a0, 40(sp)	# restore
	call	iter_setup_dirvec_constants_2830
.init_vecset_constants_cont_15:
	li	a1, 117
	lw	a0, 36(sp)	# restore
	call	init_dirvec_constants_3048
	lw	a0, 32(sp)	# restore
	addi	a0, a0, -1
	blt	a0, zero, init_vecset_constants_ret
	slli	a1, a0, 2
	sw	a0, 52(sp)	# save
	lwl	a0, min_caml_dirvecs(a1)
	sw	a0, 56(sp)	# save
	lw	a0, 476(a0)
	lwd	a1, min_caml_n_objects(0)
	addi	a1, a1, -1
	blt	a1, zero, .init_vecset_constants_cont_22
	slli	a2, a1, 2
	lwl	a2, min_caml_objects(a2)
	lw	a3, 4(a0)
	sw	a0, 60(sp)	# save
	lw	a0, 0(a0)
	lw	a4, 16(a2)
	lw	a5, 4(a2)
	bnei	a5, 1, .init_vecset_constants_else_23
	sw	a3, 64(sp)	# save
	sw	a1, 68(sp)	# save
	mv	a1, a2
	call	setup_rect_table_2821
	lw	a1, 68(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 64(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.init_vecset_constants_cont_24
.init_vecset_constants_else_23:
	bnei	a5, 2, .init_vecset_constants_else_25
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	fsw	fzero, 12(gp)
	mv	a2, gp
	addi	gp, gp, 16
	flw	fa0, 0(a0)
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a0)
	flw	fa2, 4(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	flw	fa2, 8(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fle	a0, fa0, fzero
	bne	a0, zero, .init_vecset_constants_else_27
	fli	fa1, l_data_6
	fdiv	fa1, fa1, fa0
	fsw	fa1, 0(a2)
	flw	fa1, 0(a4)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 4(a2)
	flw	fa1, 4(a4)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 8(a2)
	flw	fa1, 8(a4)
	fdiv	fa0, fa1, fa0
	fneg	fa0, fa0
	fsw	fa0, 12(a2)
	slli	a0, a1, 2
	add	t6, a3, a0
	sw	a2, 0(t6)
	b	.init_vecset_constants_cont_26
.init_vecset_constants_else_27:
	fsw	fzero, 0(a2)
	slli	a0, a1, 2
	add	t6, a3, a0
	sw	a2, 0(t6)
	b	.init_vecset_constants_cont_26
.init_vecset_constants_else_25:
	sw	a3, 64(sp)	# save
	sw	a1, 68(sp)	# save
	mv	a1, a2
	call	setup_second_table_2827
	lw	a1, 68(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 64(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
.init_vecset_constants_cont_26:
.init_vecset_constants_cont_24:
	addi	a1, a1, -1
	lw	a0, 60(sp)	# restore
	call	iter_setup_dirvec_constants_2830
.init_vecset_constants_cont_22:
	li	a1, 118
	lw	a0, 56(sp)	# restore
	call	init_dirvec_constants_3048
	lw	a0, 52(sp)	# restore
	addi	a0, a0, -1
	blt	a0, zero, init_vecset_constants_ret
	slli	a1, a0, 2
	sw	a0, 72(sp)	# save
	lwl	a0, min_caml_dirvecs(a1)
	li	a1, 119
	call	init_dirvec_constants_3048
	lw	a0, 72(sp)	# restore
	addi	a0, a0, -1
	call	init_vecset_constants_3051
init_vecset_constants_ret:
	lw	ra, 76(sp)
	addi	sp, sp, 80
	jr	ra
setup_rect_reflection_3062:
	addi	sp, sp, -84
	sw	ra, 80(sp)
	slli	a0, a0, 2
	lwd	a2, min_caml_n_reflections(0)
	fli	fa0, l_data_5
	lw	a1, 28(a1)
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	flwd	fa1, min_caml_light(0)
	fneg	fa1, fa1
	flwd	fa2, min_caml_light(4)
	fneg	fa2, fa2
	flwd	fa3, min_caml_light(8)
	fneg	fa3, fa3
	addi	a1, a0, 1
	flwd	fa4, min_caml_light(0)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a3, gp
	addi	gp, gp, 12
	sw	a1, 0(sp)	# save
	mv	a1, a3
	sw	a0, 4(sp)	# save
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a3, gp
	addi	gp, gp, 8
	fsw	fa4, 0(a1)
	fsw	fa2, 4(a1)
	fsw	fa3, 8(a1)
	lwd	a4, min_caml_n_objects(0)
	addi	a4, a4, -1
	fsw	fa2, 8(sp)	# save
	fsw	fa3, 12(sp)	# save
	fsw	fa1, 16(sp)	# save
	sw	a2, 20(sp)	# save
	sw	a3, 24(sp)	# save
	fsw	fa0, 28(sp)	# save
	blt	a4, zero, .setup_rect_reflection_cont_1
	slli	a5, a4, 2
	lwl	a5, min_caml_objects(a5)
	lw	a6, 16(a5)
	lw	a7, 4(a5)
	sw	a4, 32(sp)	# save
	bnei	a7, 1, .setup_rect_reflection_else_2
	sw	a0, 36(sp)	# save
	mv	a0, a1
	mv	a1, a5
	call	setup_rect_table_2821
	lw	a1, 32(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 36(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.setup_rect_reflection_cont_3
.setup_rect_reflection_else_2:
	bnei	a7, 2, .setup_rect_reflection_else_4
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	fsw	fzero, 12(gp)
	mv	a5, gp
	addi	gp, gp, 16
	flw	fa4, 0(a1)
	flw	fa5, 0(a6)
	fmul	fa4, fa4, fa5
	flw	fa5, 4(a1)
	flw	fa6, 4(a6)
	fmul	fa5, fa5, fa6
	fadd	fa4, fa4, fa5
	flw	fa5, 8(a1)
	flw	fa6, 8(a6)
	fmul	fa5, fa5, fa6
	fadd	fa4, fa4, fa5
	fle	a1, fa4, fzero
	bne	a1, zero, .setup_rect_reflection_else_6
	fli	fa5, l_data_6
	fdiv	fa5, fa5, fa4
	fsw	fa5, 0(a5)
	flw	fa5, 0(a6)
	fdiv	fa5, fa5, fa4
	fneg	fa5, fa5
	fsw	fa5, 4(a5)
	flw	fa5, 4(a6)
	fdiv	fa5, fa5, fa4
	fneg	fa5, fa5
	fsw	fa5, 8(a5)
	flw	fa5, 8(a6)
	fdiv	fa4, fa5, fa4
	fneg	fa4, fa4
	fsw	fa4, 12(a5)
	slli	a1, a4, 2
	add	t6, a0, a1
	sw	a5, 0(t6)
	b	.setup_rect_reflection_cont_5
.setup_rect_reflection_else_6:
	fsw	fzero, 0(a5)
	slli	a1, a4, 2
	add	t6, a0, a1
	sw	a5, 0(t6)
	b	.setup_rect_reflection_cont_5
.setup_rect_reflection_else_4:
	sw	a0, 36(sp)	# save
	mv	a0, a1
	mv	a1, a5
	call	setup_second_table_2827
	lw	a1, 32(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 36(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
.setup_rect_reflection_cont_5:
.setup_rect_reflection_cont_3:
	lw	a0, 32(sp)	# restore
	addi	a1, a0, -1
	lw	a0, 24(sp)	# restore
	call	iter_setup_dirvec_constants_2830
.setup_rect_reflection_cont_1:
	flw	fa0, 28(sp)	# restore
	fsw	fa0, 8(gp)
	lw	a0, 24(sp)	# restore
	sw	a0, 4(gp)
	lw	a0, 0(sp)	# restore
	sw	a0, 0(gp)
	mv	a0, gp
	addi	gp, gp, 12
	lw	a1, 20(sp)	# restore
	slli	a2, a1, 2
	swl	a0, min_caml_reflections(a2)
	addi	a0, a1, 1
	lw	a2, 4(sp)	# restore
	addi	a3, a2, 2
	flwd	fa1, min_caml_light(4)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	mv	a1, a4
	sw	a0, 40(sp)	# save
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a4, gp
	addi	gp, gp, 8
	flw	fa2, 16(sp)	# restore
	fsw	fa2, 0(a1)
	fsw	fa1, 4(a1)
	flw	fa1, 12(sp)	# restore
	fsw	fa1, 8(a1)
	lwd	a5, min_caml_n_objects(0)
	addi	a5, a5, -1
	sw	a3, 44(sp)	# save
	sw	a4, 48(sp)	# save
	blt	a5, zero, .setup_rect_reflection_cont_8
	slli	a6, a5, 2
	lwl	a6, min_caml_objects(a6)
	lw	a7, 16(a6)
	lw	s1, 4(a6)
	sw	a5, 52(sp)	# save
	bnei	s1, 1, .setup_rect_reflection_else_9
	sw	a0, 56(sp)	# save
	mv	a0, a1
	mv	a1, a6
	call	setup_rect_table_2821
	lw	a1, 52(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 56(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.setup_rect_reflection_cont_10
.setup_rect_reflection_else_9:
	bnei	s1, 2, .setup_rect_reflection_else_11
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	fsw	fzero, 12(gp)
	mv	a6, gp
	addi	gp, gp, 16
	flw	fa1, 0(a1)
	flw	fa3, 0(a7)
	fmul	fa1, fa1, fa3
	flw	fa3, 4(a1)
	flw	fa4, 4(a7)
	fmul	fa3, fa3, fa4
	fadd	fa1, fa1, fa3
	flw	fa3, 8(a1)
	flw	fa4, 8(a7)
	fmul	fa3, fa3, fa4
	fadd	fa1, fa1, fa3
	fle	a1, fa1, fzero
	bne	a1, zero, .setup_rect_reflection_else_13
	fli	fa3, l_data_6
	fdiv	fa3, fa3, fa1
	fsw	fa3, 0(a6)
	flw	fa3, 0(a7)
	fdiv	fa3, fa3, fa1
	fneg	fa3, fa3
	fsw	fa3, 4(a6)
	flw	fa3, 4(a7)
	fdiv	fa3, fa3, fa1
	fneg	fa3, fa3
	fsw	fa3, 8(a6)
	flw	fa3, 8(a7)
	fdiv	fa1, fa3, fa1
	fneg	fa1, fa1
	fsw	fa1, 12(a6)
	slli	a1, a5, 2
	add	t6, a0, a1
	sw	a6, 0(t6)
	b	.setup_rect_reflection_cont_12
.setup_rect_reflection_else_13:
	fsw	fzero, 0(a6)
	slli	a1, a5, 2
	add	t6, a0, a1
	sw	a6, 0(t6)
	b	.setup_rect_reflection_cont_12
.setup_rect_reflection_else_11:
	sw	a0, 56(sp)	# save
	mv	a0, a1
	mv	a1, a6
	call	setup_second_table_2827
	lw	a1, 52(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 56(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
.setup_rect_reflection_cont_12:
.setup_rect_reflection_cont_10:
	lw	a0, 52(sp)	# restore
	addi	a1, a0, -1
	lw	a0, 48(sp)	# restore
	call	iter_setup_dirvec_constants_2830
.setup_rect_reflection_cont_8:
	flw	fa0, 28(sp)	# restore
	fsw	fa0, 8(gp)
	lw	a0, 48(sp)	# restore
	sw	a0, 4(gp)
	lw	a0, 44(sp)	# restore
	sw	a0, 0(gp)
	mv	a0, gp
	addi	gp, gp, 12
	lw	a1, 40(sp)	# restore
	slli	a1, a1, 2
	swl	a0, min_caml_reflections(a1)
	lw	a0, 20(sp)	# restore
	addi	a1, a0, 2
	lw	a2, 4(sp)	# restore
	addi	a2, a2, 3
	flwd	fa1, min_caml_light(8)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a3, gp
	addi	gp, gp, 12
	sw	a1, 60(sp)	# save
	mv	a1, a3
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a3, gp
	addi	gp, gp, 8
	flw	fa2, 16(sp)	# restore
	fsw	fa2, 0(a1)
	flw	fa2, 8(sp)	# restore
	fsw	fa2, 4(a1)
	fsw	fa1, 8(a1)
	lwd	a4, min_caml_n_objects(0)
	addi	a4, a4, -1
	sw	a2, 64(sp)	# save
	sw	a3, 68(sp)	# save
	blt	a4, zero, .setup_rect_reflection_cont_15
	slli	a5, a4, 2
	lwl	a5, min_caml_objects(a5)
	lw	a6, 16(a5)
	lw	a7, 4(a5)
	sw	a4, 72(sp)	# save
	bnei	a7, 1, .setup_rect_reflection_else_16
	sw	a0, 76(sp)	# save
	mv	a0, a1
	mv	a1, a5
	call	setup_rect_table_2821
	lw	a1, 72(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 76(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.setup_rect_reflection_cont_17
.setup_rect_reflection_else_16:
	bnei	a7, 2, .setup_rect_reflection_else_18
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	fsw	fzero, 12(gp)
	mv	a5, gp
	addi	gp, gp, 16
	flw	fa1, 0(a1)
	flw	fa2, 0(a6)
	fmul	fa1, fa1, fa2
	flw	fa2, 4(a1)
	flw	fa3, 4(a6)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	flw	fa2, 8(a1)
	flw	fa3, 8(a6)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	fle	a1, fa1, fzero
	bne	a1, zero, .setup_rect_reflection_else_20
	fli	fa2, l_data_6
	fdiv	fa2, fa2, fa1
	fsw	fa2, 0(a5)
	flw	fa2, 0(a6)
	fdiv	fa2, fa2, fa1
	fneg	fa2, fa2
	fsw	fa2, 4(a5)
	flw	fa2, 4(a6)
	fdiv	fa2, fa2, fa1
	fneg	fa2, fa2
	fsw	fa2, 8(a5)
	flw	fa2, 8(a6)
	fdiv	fa1, fa2, fa1
	fneg	fa1, fa1
	fsw	fa1, 12(a5)
	slli	a1, a4, 2
	add	t6, a0, a1
	sw	a5, 0(t6)
	b	.setup_rect_reflection_cont_19
.setup_rect_reflection_else_20:
	fsw	fzero, 0(a5)
	slli	a1, a4, 2
	add	t6, a0, a1
	sw	a5, 0(t6)
	b	.setup_rect_reflection_cont_19
.setup_rect_reflection_else_18:
	sw	a0, 76(sp)	# save
	mv	a0, a1
	mv	a1, a5
	call	setup_second_table_2827
	lw	a1, 72(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 76(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
.setup_rect_reflection_cont_19:
.setup_rect_reflection_cont_17:
	lw	a0, 72(sp)	# restore
	addi	a1, a0, -1
	lw	a0, 68(sp)	# restore
	call	iter_setup_dirvec_constants_2830
.setup_rect_reflection_cont_15:
	flw	fa0, 28(sp)	# restore
	fsw	fa0, 8(gp)
	lw	a0, 68(sp)	# restore
	sw	a0, 4(gp)
	lw	a0, 64(sp)	# restore
	sw	a0, 0(gp)
	mv	a0, gp
	addi	gp, gp, 12
	lw	a1, 60(sp)	# restore
	slli	a1, a1, 2
	swl	a0, min_caml_reflections(a1)
	lw	a0, 20(sp)	# restore
	addi	a0, a0, 3
	swd	a0, min_caml_n_reflections(0)
	lw	ra, 80(sp)
	addi	sp, sp, 84
	jr	ra
setup_surface_reflection_3065:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	slli	a0, a0, 2
	addi	a0, a0, 1
	lwd	a2, min_caml_n_reflections(0)
	fli	fa0, l_data_5
	lw	a3, 28(a1)
	lw	a1, 16(a1)
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	flwd	fa1, min_caml_light(0)
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	flwd	fa2, min_caml_light(4)
	flw	fa3, 4(a1)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	flwd	fa2, min_caml_light(8)
	flw	fa3, 8(a1)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	fli	fa2, l_data_4
	flw	fa3, 0(a1)
	fmul	fa3, fa2, fa3
	fmul	fa3, fa3, fa1
	flwd	fa4, min_caml_light(0)
	fsub	fa3, fa3, fa4
	flw	fa4, 4(a1)
	fmul	fa4, fa2, fa4
	fmul	fa4, fa4, fa1
	flwd	fa5, min_caml_light(4)
	fsub	fa4, fa4, fa5
	flw	fa5, 8(a1)
	fmul	fa2, fa2, fa5
	fmul	fa1, fa2, fa1
	flwd	fa2, min_caml_light(8)
	fsub	fa1, fa1, fa2
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 0(sp)	# save
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a3, gp
	addi	gp, gp, 8
	fsw	fa3, 0(a1)
	fsw	fa4, 4(a1)
	fsw	fa1, 8(a1)
	lwd	a4, min_caml_n_objects(0)
	addi	a4, a4, -1
	sw	a2, 4(sp)	# save
	sw	a3, 8(sp)	# save
	fsw	fa0, 12(sp)	# save
	blt	a4, zero, .setup_surface_reflection_cont_1
	slli	a5, a4, 2
	lwl	a5, min_caml_objects(a5)
	lw	a6, 16(a5)
	lw	a7, 4(a5)
	sw	a4, 16(sp)	# save
	bnei	a7, 1, .setup_surface_reflection_else_2
	sw	a0, 20(sp)	# save
	mv	a0, a1
	mv	a1, a5
	call	setup_rect_table_2821
	lw	a1, 16(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 20(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.setup_surface_reflection_cont_3
.setup_surface_reflection_else_2:
	bnei	a7, 2, .setup_surface_reflection_else_4
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	fsw	fzero, 12(gp)
	mv	a5, gp
	addi	gp, gp, 16
	flw	fa1, 0(a1)
	flw	fa2, 0(a6)
	fmul	fa1, fa1, fa2
	flw	fa2, 4(a1)
	flw	fa3, 4(a6)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	flw	fa2, 8(a1)
	flw	fa3, 8(a6)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	fle	a1, fa1, fzero
	bne	a1, zero, .setup_surface_reflection_else_6
	fli	fa2, l_data_6
	fdiv	fa2, fa2, fa1
	fsw	fa2, 0(a5)
	flw	fa2, 0(a6)
	fdiv	fa2, fa2, fa1
	fneg	fa2, fa2
	fsw	fa2, 4(a5)
	flw	fa2, 4(a6)
	fdiv	fa2, fa2, fa1
	fneg	fa2, fa2
	fsw	fa2, 8(a5)
	flw	fa2, 8(a6)
	fdiv	fa1, fa2, fa1
	fneg	fa1, fa1
	fsw	fa1, 12(a5)
	slli	a1, a4, 2
	add	t6, a0, a1
	sw	a5, 0(t6)
	b	.setup_surface_reflection_cont_5
.setup_surface_reflection_else_6:
	fsw	fzero, 0(a5)
	slli	a1, a4, 2
	add	t6, a0, a1
	sw	a5, 0(t6)
	b	.setup_surface_reflection_cont_5
.setup_surface_reflection_else_4:
	sw	a0, 20(sp)	# save
	mv	a0, a1
	mv	a1, a5
	call	setup_second_table_2827
	lw	a1, 16(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 20(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
.setup_surface_reflection_cont_5:
.setup_surface_reflection_cont_3:
	lw	a0, 16(sp)	# restore
	addi	a1, a0, -1
	lw	a0, 8(sp)	# restore
	call	iter_setup_dirvec_constants_2830
.setup_surface_reflection_cont_1:
	flw	fa0, 12(sp)	# restore
	fsw	fa0, 8(gp)
	lw	a0, 8(sp)	# restore
	sw	a0, 4(gp)
	lw	a0, 0(sp)	# restore
	sw	a0, 0(gp)
	mv	a0, gp
	addi	gp, gp, 12
	lw	a1, 4(sp)	# restore
	slli	a2, a1, 2
	swl	a0, min_caml_reflections(a2)
	addi	a0, a1, 1
	swd	a0, min_caml_n_reflections(0)
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
rt_3070:
	addi	sp, sp, -204
	sw	ra, 200(sp)
	swd	a0, min_caml_image_size(0)
	swd	a1, min_caml_image_size(4)
	srai	a2, a0, 1
	swd	a2, min_caml_image_center(0)
	srai	a1, a1, 1
	swd	a1, min_caml_image_center(4)
	fli	fa0, l_data_31
	fsw	fa0, 0(sp)	# save
	call	min_caml_float_of_int
	flw	fa1, 0(sp)	# restore
	fdiv	fa0, fa1, fa0
	fswd	fa0, min_caml_scan_pitch(0)
	lwd	a0, min_caml_image_size(0)
	sw	a0, 4(sp)	# save
	call	create_pixel_3012
	mv	a1, a0
	lw	a0, 4(sp)	# restore
	call	min_caml_create_array
	lwd	a1, min_caml_image_size(0)
	addi	a1, a1, -2
	blt	a1, zero, .rt_cont_1
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a2, gp
	addi	gp, gp, 12
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a3, gp
	addi	gp, gp, 12
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	sw	a3, 12(gp)
	sw	a3, 16(gp)
	mv	a3, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	sw	a4, 4(a3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	sw	a4, 8(a3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	sw	a4, 12(a3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	sw	a4, 16(a3)
	sw	zero, 0(gp)
	sw	zero, 4(gp)
	sw	zero, 8(gp)
	sw	zero, 12(gp)
	sw	zero, 16(gp)
	mv	a4, gp
	addi	gp, gp, 20
	sw	zero, 0(gp)
	sw	zero, 4(gp)
	sw	zero, 8(gp)
	sw	zero, 12(gp)
	sw	zero, 16(gp)
	mv	a5, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a6, gp
	addi	gp, gp, 12
	sw	a6, 0(gp)
	sw	a6, 4(gp)
	sw	a6, 8(gp)
	sw	a6, 12(gp)
	sw	a6, 16(gp)
	mv	a6, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 4(a6)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 8(a6)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 12(a6)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 16(a6)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 0(gp)
	sw	a7, 4(gp)
	sw	a7, 8(gp)
	sw	a7, 12(gp)
	sw	a7, 16(gp)
	mv	a7, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 4(a7)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 8(a7)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 12(a7)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 16(a7)
	sw	zero, 0(gp)
	mv	s1, gp
	addi	gp, gp, 4
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s2, gp
	addi	gp, gp, 12
	sw	s2, 0(gp)
	sw	s2, 4(gp)
	sw	s2, 8(gp)
	sw	s2, 12(gp)
	sw	s2, 16(gp)
	mv	s2, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 4(s2)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 8(s2)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 12(s2)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 16(s2)
	sw	s2, 28(gp)
	sw	s1, 24(gp)
	sw	a7, 20(gp)
	sw	a6, 16(gp)
	sw	a5, 12(gp)
	sw	a4, 8(gp)
	sw	a3, 4(gp)
	sw	a2, 0(gp)
	mv	a2, gp
	addi	gp, gp, 32
	slli	a3, a1, 2
	add	t6, a0, a3
	sw	a2, 0(t6)
	addi	a1, a1, -1
	blt	a1, zero, .rt_cont_2
	sw	a0, 8(sp)	# save
	sw	a1, 12(sp)	# save
	call	create_pixel_3012
	lw	a1, 12(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 8(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	init_line_elements_3014
.rt_cont_2:
.rt_cont_1:
	lwd	a1, min_caml_image_size(0)
	sw	a0, 16(sp)	# save
	sw	a1, 20(sp)	# save
	call	create_pixel_3012
	mv	a1, a0
	lw	a0, 20(sp)	# restore
	call	min_caml_create_array
	lwd	a1, min_caml_image_size(0)
	addi	a1, a1, -2
	blt	a1, zero, .rt_cont_3
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a2, gp
	addi	gp, gp, 12
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a3, gp
	addi	gp, gp, 12
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	sw	a3, 12(gp)
	sw	a3, 16(gp)
	mv	a3, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	sw	a4, 4(a3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	sw	a4, 8(a3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	sw	a4, 12(a3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	sw	a4, 16(a3)
	sw	zero, 0(gp)
	sw	zero, 4(gp)
	sw	zero, 8(gp)
	sw	zero, 12(gp)
	sw	zero, 16(gp)
	mv	a4, gp
	addi	gp, gp, 20
	sw	zero, 0(gp)
	sw	zero, 4(gp)
	sw	zero, 8(gp)
	sw	zero, 12(gp)
	sw	zero, 16(gp)
	mv	a5, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a6, gp
	addi	gp, gp, 12
	sw	a6, 0(gp)
	sw	a6, 4(gp)
	sw	a6, 8(gp)
	sw	a6, 12(gp)
	sw	a6, 16(gp)
	mv	a6, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 4(a6)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 8(a6)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 12(a6)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 16(a6)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 0(gp)
	sw	a7, 4(gp)
	sw	a7, 8(gp)
	sw	a7, 12(gp)
	sw	a7, 16(gp)
	mv	a7, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 4(a7)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 8(a7)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 12(a7)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 16(a7)
	sw	zero, 0(gp)
	mv	s1, gp
	addi	gp, gp, 4
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s2, gp
	addi	gp, gp, 12
	sw	s2, 0(gp)
	sw	s2, 4(gp)
	sw	s2, 8(gp)
	sw	s2, 12(gp)
	sw	s2, 16(gp)
	mv	s2, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 4(s2)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 8(s2)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 12(s2)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 16(s2)
	sw	s2, 28(gp)
	sw	s1, 24(gp)
	sw	a7, 20(gp)
	sw	a6, 16(gp)
	sw	a5, 12(gp)
	sw	a4, 8(gp)
	sw	a3, 4(gp)
	sw	a2, 0(gp)
	mv	a2, gp
	addi	gp, gp, 32
	slli	a3, a1, 2
	add	t6, a0, a3
	sw	a2, 0(t6)
	addi	a1, a1, -1
	blt	a1, zero, .rt_cont_4
	sw	a0, 24(sp)	# save
	sw	a1, 28(sp)	# save
	call	create_pixel_3012
	lw	a1, 28(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 24(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	init_line_elements_3014
.rt_cont_4:
.rt_cont_3:
	lwd	a1, min_caml_image_size(0)
	sw	a0, 32(sp)	# save
	sw	a1, 36(sp)	# save
	call	create_pixel_3012
	mv	a1, a0
	lw	a0, 36(sp)	# restore
	call	min_caml_create_array
	lwd	a1, min_caml_image_size(0)
	addi	a1, a1, -2
	blt	a1, zero, .rt_cont_5
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a2, gp
	addi	gp, gp, 12
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a3, gp
	addi	gp, gp, 12
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	sw	a3, 12(gp)
	sw	a3, 16(gp)
	mv	a3, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	sw	a4, 4(a3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	sw	a4, 8(a3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	sw	a4, 12(a3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a4, gp
	addi	gp, gp, 12
	sw	a4, 16(a3)
	sw	zero, 0(gp)
	sw	zero, 4(gp)
	sw	zero, 8(gp)
	sw	zero, 12(gp)
	sw	zero, 16(gp)
	mv	a4, gp
	addi	gp, gp, 20
	sw	zero, 0(gp)
	sw	zero, 4(gp)
	sw	zero, 8(gp)
	sw	zero, 12(gp)
	sw	zero, 16(gp)
	mv	a5, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a6, gp
	addi	gp, gp, 12
	sw	a6, 0(gp)
	sw	a6, 4(gp)
	sw	a6, 8(gp)
	sw	a6, 12(gp)
	sw	a6, 16(gp)
	mv	a6, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 4(a6)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 8(a6)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 12(a6)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 16(a6)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a7, gp
	addi	gp, gp, 12
	sw	a7, 0(gp)
	sw	a7, 4(gp)
	sw	a7, 8(gp)
	sw	a7, 12(gp)
	sw	a7, 16(gp)
	mv	a7, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 4(a7)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 8(a7)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 12(a7)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 16(a7)
	sw	zero, 0(gp)
	mv	s1, gp
	addi	gp, gp, 4
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s2, gp
	addi	gp, gp, 12
	sw	s2, 0(gp)
	sw	s2, 4(gp)
	sw	s2, 8(gp)
	sw	s2, 12(gp)
	sw	s2, 16(gp)
	mv	s2, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 4(s2)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 8(s2)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 12(s2)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 16(s2)
	sw	s2, 28(gp)
	sw	s1, 24(gp)
	sw	a7, 20(gp)
	sw	a6, 16(gp)
	sw	a5, 12(gp)
	sw	a4, 8(gp)
	sw	a3, 4(gp)
	sw	a2, 0(gp)
	mv	a2, gp
	addi	gp, gp, 32
	slli	a3, a1, 2
	add	t6, a0, a3
	sw	a2, 0(t6)
	addi	a1, a1, -1
	blt	a1, zero, .rt_cont_6
	sw	a0, 40(sp)	# save
	sw	a1, 44(sp)	# save
	call	create_pixel_3012
	lw	a1, 44(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 40(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	init_line_elements_3014
.rt_cont_6:
.rt_cont_5:
	sw	a0, 48(sp)	# save
	call	read_screen_settings_2716
	call	min_caml_read_int
	call	min_caml_read_float
	fli	fa1, l_data_1
	fmul	fa0, fa0, fa1
	fsw	fa0, 52(sp)	# save
	call	min_caml_sin
	fneg	fa0, fa0
	fswd	fa0, min_caml_light(4)
	call	min_caml_read_float
	fmul	fa0, fa0, fa1
	fsw	fa0, 56(sp)	# save
	flw	fa0, 52(sp)	# restore
	call	min_caml_cos
	fsw	fa0, 60(sp)	# save
	flw	fa0, 56(sp)	# restore
	call	min_caml_sin
	flw	fa1, 60(sp)	# restore
	fmul	fa0, fa1, fa0
	fswd	fa0, min_caml_light(0)
	flw	fa0, 56(sp)	# restore
	call	min_caml_cos
	fmul	fa0, fa1, fa0
	fswd	fa0, min_caml_light(8)
	call	min_caml_read_float
	fswd	fa0, min_caml_beam(0)
	li	a0, 0
	call	read_nth_object_2723
	bne	a0, zero, .rt_else_7
	swd	zero, min_caml_n_objects(0)
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_17
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	lw	a1, 0(a0)
	beqi	a1, -1, .rt_cont_27
	swd	a0, min_caml_and_net(0)
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_28
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_29
.rt_else_7:
	li	a0, 1
	sw	a0, 64(sp)	# save
	call	read_nth_object_2723
	bne	a0, zero, .rt_else_9
	lw	a0, 64(sp)	# restore
	swd	a0, min_caml_n_objects(0)
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_17
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	lw	a1, 0(a0)
	beqi	a1, -1, .rt_cont_27
	swd	a0, min_caml_and_net(0)
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_28
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_29
.rt_else_9:
	li	a0, 2
	sw	a0, 68(sp)	# save
	call	read_nth_object_2723
	bne	a0, zero, .rt_else_11
	lw	a0, 68(sp)	# restore
	swd	a0, min_caml_n_objects(0)
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_17
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	lw	a1, 0(a0)
	beqi	a1, -1, .rt_cont_27
	swd	a0, min_caml_and_net(0)
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_28
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_29
.rt_else_11:
	li	a0, 3
	sw	a0, 72(sp)	# save
	call	read_nth_object_2723
	bne	a0, zero, .rt_else_13
	lw	a0, 72(sp)	# restore
	swd	a0, min_caml_n_objects(0)
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_17
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	lw	a1, 0(a0)
	beqi	a1, -1, .rt_cont_27
	swd	a0, min_caml_and_net(0)
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_28
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_29
.rt_else_13:
	li	a0, 4
	sw	a0, 76(sp)	# save
	call	read_nth_object_2723
	bne	a0, zero, .rt_else_15
	lw	a0, 76(sp)	# restore
	swd	a0, min_caml_n_objects(0)
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_17
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	lw	a1, 0(a0)
	beqi	a1, -1, .rt_cont_27
	swd	a0, min_caml_and_net(0)
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_28
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_29
.rt_else_15:
	li	a0, 5
	call	read_object_2725
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_17
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	lw	a1, 0(a0)
	beqi	a1, -1, .rt_cont_27
	swd	a0, min_caml_and_net(0)
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_28
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_29
.rt_else_17:
	sw	a0, 80(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_19
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 80(sp)	# restore
	sw	a1, 0(a0)
	lw	a1, 0(a0)
	beqi	a1, -1, .rt_cont_27
	swd	a0, min_caml_and_net(0)
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_28
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_29
.rt_else_19:
	sw	a0, 84(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_21
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	lw	a1, 84(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 80(sp)	# restore
	sw	a1, 0(a0)
	lw	a1, 0(a0)
	beqi	a1, -1, .rt_cont_27
	swd	a0, min_caml_and_net(0)
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_28
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_29
.rt_else_21:
	sw	a0, 88(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_23
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	mv	a0, gp
	addi	gp, gp, 16
	lw	a1, 88(sp)	# restore
	sw	a1, 8(a0)
	lw	a1, 84(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 80(sp)	# restore
	sw	a1, 0(a0)
	lw	a1, 0(a0)
	beqi	a1, -1, .rt_cont_27
	swd	a0, min_caml_and_net(0)
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_28
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_29
.rt_else_23:
	sw	a0, 92(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_25
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	sw	a1, 16(gp)
	mv	a0, gp
	addi	gp, gp, 20
	lw	a1, 92(sp)	# restore
	sw	a1, 12(a0)
	lw	a1, 88(sp)	# restore
	sw	a1, 8(a0)
	lw	a1, 84(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 80(sp)	# restore
	sw	a1, 0(a0)
	lw	a1, 0(a0)
	beqi	a1, -1, .rt_cont_27
	swd	a0, min_caml_and_net(0)
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_28
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_29
.rt_else_25:
	sw	a0, 96(sp)	# save
	li	a0, 5
	call	read_net_item_2729
	lw	a1, 96(sp)	# restore
	sw	a1, 16(a0)
	lw	a1, 92(sp)	# restore
	sw	a1, 12(a0)
	lw	a1, 88(sp)	# restore
	sw	a1, 8(a0)
	lw	a1, 84(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 80(sp)	# restore
	sw	a1, 0(a0)
	lw	a1, 0(a0)
	beqi	a1, -1, .rt_cont_27
	swd	a0, min_caml_and_net(0)
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_28
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_29
.rt_else_28:
	sw	a0, 100(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_30
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.rt_cont_31
.rt_else_30:
	sw	a0, 104(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_32
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	b	.rt_cont_33
.rt_else_32:
	sw	a0, 108(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_34
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	mv	a0, gp
	addi	gp, gp, 16
	b	.rt_cont_35
.rt_else_34:
	sw	a0, 112(sp)	# save
	li	a0, 4
	call	read_net_item_2729
	lw	a1, 112(sp)	# restore
	sw	a1, 12(a0)
.rt_cont_35:
	lw	a1, 108(sp)	# restore
	sw	a1, 8(a0)
.rt_cont_33:
	lw	a1, 104(sp)	# restore
	sw	a1, 4(a0)
.rt_cont_31:
	lw	a1, 100(sp)	# restore
	sw	a1, 0(a0)
.rt_cont_29:
	lw	a1, 0(a0)
	beqi	a1, -1, .rt_cont_36
	swd	a0, min_caml_and_net(4)
	li	a0, 2
	call	read_and_network_2733
.rt_cont_36:
.rt_cont_27:
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_37
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	lw	a1, 0(a0)
	bnei	a1, -1, .rt_else_47
	sw	a0, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_48
.rt_else_37:
	sw	a0, 116(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_39
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 116(sp)	# restore
	sw	a1, 0(a0)
	lw	a1, 0(a0)
	bnei	a1, -1, .rt_else_47
	sw	a0, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_48
.rt_else_39:
	sw	a0, 120(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_41
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	lw	a1, 120(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 116(sp)	# restore
	sw	a1, 0(a0)
	lw	a1, 0(a0)
	bnei	a1, -1, .rt_else_47
	sw	a0, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_48
.rt_else_41:
	sw	a0, 124(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_43
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	mv	a0, gp
	addi	gp, gp, 16
	lw	a1, 124(sp)	# restore
	sw	a1, 8(a0)
	lw	a1, 120(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 116(sp)	# restore
	sw	a1, 0(a0)
	lw	a1, 0(a0)
	bnei	a1, -1, .rt_else_47
	sw	a0, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_48
.rt_else_43:
	sw	a0, 128(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_45
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	sw	a1, 16(gp)
	mv	a0, gp
	addi	gp, gp, 20
	lw	a1, 128(sp)	# restore
	sw	a1, 12(a0)
	lw	a1, 124(sp)	# restore
	sw	a1, 8(a0)
	lw	a1, 120(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 116(sp)	# restore
	sw	a1, 0(a0)
	lw	a1, 0(a0)
	bnei	a1, -1, .rt_else_47
	sw	a0, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_48
.rt_else_45:
	sw	a0, 132(sp)	# save
	li	a0, 5
	call	read_net_item_2729
	lw	a1, 132(sp)	# restore
	sw	a1, 16(a0)
	lw	a1, 128(sp)	# restore
	sw	a1, 12(a0)
	lw	a1, 124(sp)	# restore
	sw	a1, 8(a0)
	lw	a1, 120(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 116(sp)	# restore
	sw	a1, 0(a0)
	lw	a1, 0(a0)
	bnei	a1, -1, .rt_else_47
	sw	a0, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_48
.rt_else_47:
	sw	a0, 136(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_49
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	lw	a1, 0(a0)
	bnei	a1, -1, .rt_else_57
	sw	a0, 0(gp)
	sw	a0, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.rt_cont_58
.rt_else_49:
	sw	a0, 140(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_51
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 140(sp)	# restore
	sw	a1, 0(a0)
	lw	a1, 0(a0)
	bnei	a1, -1, .rt_else_57
	sw	a0, 0(gp)
	sw	a0, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.rt_cont_58
.rt_else_51:
	sw	a0, 144(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_53
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	lw	a1, 144(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 140(sp)	# restore
	sw	a1, 0(a0)
	lw	a1, 0(a0)
	bnei	a1, -1, .rt_else_57
	sw	a0, 0(gp)
	sw	a0, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.rt_cont_58
.rt_else_53:
	sw	a0, 148(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bnei	a0, -1, .rt_else_55
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	mv	a0, gp
	addi	gp, gp, 16
	lw	a1, 148(sp)	# restore
	sw	a1, 8(a0)
	lw	a1, 144(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 140(sp)	# restore
	sw	a1, 0(a0)
	lw	a1, 0(a0)
	bnei	a1, -1, .rt_else_57
	sw	a0, 0(gp)
	sw	a0, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.rt_cont_58
.rt_else_55:
	sw	a0, 152(sp)	# save
	li	a0, 4
	call	read_net_item_2729
	lw	a1, 152(sp)	# restore
	sw	a1, 12(a0)
	lw	a1, 148(sp)	# restore
	sw	a1, 8(a0)
	lw	a1, 144(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 140(sp)	# restore
	sw	a1, 0(a0)
	lw	a1, 0(a0)
	bnei	a1, -1, .rt_else_57
	sw	a0, 0(gp)
	sw	a0, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.rt_cont_58
.rt_else_57:
	sw	a0, 156(sp)	# save
	li	a0, 2
	call	read_or_network_2731
	lw	a1, 156(sp)	# restore
	sw	a1, 4(a0)
.rt_cont_58:
	lw	a1, 136(sp)	# restore
	sw	a1, 0(a0)
.rt_cont_48:
	swd	a0, min_caml_or_net(0)
	li	a0, 80
	w	a0
	li	a0, 51
	w	a0
	li	a0, 10
	w	a0
	lwd	a0, min_caml_image_size(0)
	call	min_caml_print_int
	li	a0, 32
	w	a0
	lwd	a0, min_caml_image_size(4)
	call	min_caml_print_int
	li	a0, 32
	w	a0
	li	a0, 255
	call	min_caml_print_int
	li	a0, 10
	w	a0
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	sw	a0, 0(gp)
	sw	a0, 4(gp)
	sw	a0, 8(gp)
	sw	a0, 12(gp)
	sw	a0, 16(gp)
	sw	a0, 20(gp)
	sw	a0, 24(gp)
	sw	a0, 28(gp)
	sw	a0, 32(gp)
	sw	a0, 36(gp)
	sw	a0, 40(gp)
	sw	a0, 44(gp)
	sw	a0, 48(gp)
	sw	a0, 52(gp)
	sw	a0, 56(gp)
	sw	a0, 60(gp)
	sw	a0, 64(gp)
	sw	a0, 68(gp)
	sw	a0, 72(gp)
	sw	a0, 76(gp)
	sw	a0, 80(gp)
	sw	a0, 84(gp)
	sw	a0, 88(gp)
	sw	a0, 92(gp)
	sw	a0, 96(gp)
	sw	a0, 100(gp)
	sw	a0, 104(gp)
	sw	a0, 108(gp)
	sw	a0, 112(gp)
	sw	a0, 116(gp)
	sw	a0, 120(gp)
	sw	a0, 124(gp)
	sw	a0, 128(gp)
	sw	a0, 132(gp)
	sw	a0, 136(gp)
	sw	a0, 140(gp)
	sw	a0, 144(gp)
	sw	a0, 148(gp)
	sw	a0, 152(gp)
	sw	a0, 156(gp)
	sw	a0, 160(gp)
	sw	a0, 164(gp)
	sw	a0, 168(gp)
	sw	a0, 172(gp)
	sw	a0, 176(gp)
	sw	a0, 180(gp)
	sw	a0, 184(gp)
	sw	a0, 188(gp)
	sw	a0, 192(gp)
	sw	a0, 196(gp)
	sw	a0, 200(gp)
	sw	a0, 204(gp)
	sw	a0, 208(gp)
	sw	a0, 212(gp)
	sw	a0, 216(gp)
	sw	a0, 220(gp)
	sw	a0, 224(gp)
	sw	a0, 228(gp)
	sw	a0, 232(gp)
	sw	a0, 236(gp)
	sw	a0, 240(gp)
	sw	a0, 244(gp)
	sw	a0, 248(gp)
	sw	a0, 252(gp)
	sw	a0, 256(gp)
	sw	a0, 260(gp)
	sw	a0, 264(gp)
	sw	a0, 268(gp)
	sw	a0, 272(gp)
	sw	a0, 276(gp)
	sw	a0, 280(gp)
	sw	a0, 284(gp)
	sw	a0, 288(gp)
	sw	a0, 292(gp)
	sw	a0, 296(gp)
	sw	a0, 300(gp)
	sw	a0, 304(gp)
	sw	a0, 308(gp)
	sw	a0, 312(gp)
	sw	a0, 316(gp)
	sw	a0, 320(gp)
	sw	a0, 324(gp)
	sw	a0, 328(gp)
	sw	a0, 332(gp)
	sw	a0, 336(gp)
	sw	a0, 340(gp)
	sw	a0, 344(gp)
	sw	a0, 348(gp)
	sw	a0, 352(gp)
	sw	a0, 356(gp)
	sw	a0, 360(gp)
	sw	a0, 364(gp)
	sw	a0, 368(gp)
	sw	a0, 372(gp)
	sw	a0, 376(gp)
	sw	a0, 380(gp)
	sw	a0, 384(gp)
	sw	a0, 388(gp)
	sw	a0, 392(gp)
	sw	a0, 396(gp)
	sw	a0, 400(gp)
	sw	a0, 404(gp)
	sw	a0, 408(gp)
	sw	a0, 412(gp)
	sw	a0, 416(gp)
	sw	a0, 420(gp)
	sw	a0, 424(gp)
	sw	a0, 428(gp)
	sw	a0, 432(gp)
	sw	a0, 436(gp)
	sw	a0, 440(gp)
	sw	a0, 444(gp)
	sw	a0, 448(gp)
	sw	a0, 452(gp)
	sw	a0, 456(gp)
	sw	a0, 460(gp)
	sw	a0, 464(gp)
	sw	a0, 468(gp)
	sw	a0, 472(gp)
	sw	a0, 476(gp)
	mv	a0, gp
	addi	gp, gp, 480
	swd	a0, min_caml_dirvecs(16)
	lwd	a0, min_caml_dirvecs(16)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 160(sp)	# save
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 160(sp)	# restore
	sw	a0, 472(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 160(sp)	# restore
	sw	a0, 468(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 160(sp)	# restore
	sw	a0, 464(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 160(sp)	# restore
	sw	a0, 460(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 160(sp)	# restore
	sw	a0, 456(a1)
	li	a0, 113
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	create_dirvec_elements_3043
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	sw	a0, 0(gp)
	sw	a0, 4(gp)
	sw	a0, 8(gp)
	sw	a0, 12(gp)
	sw	a0, 16(gp)
	sw	a0, 20(gp)
	sw	a0, 24(gp)
	sw	a0, 28(gp)
	sw	a0, 32(gp)
	sw	a0, 36(gp)
	sw	a0, 40(gp)
	sw	a0, 44(gp)
	sw	a0, 48(gp)
	sw	a0, 52(gp)
	sw	a0, 56(gp)
	sw	a0, 60(gp)
	sw	a0, 64(gp)
	sw	a0, 68(gp)
	sw	a0, 72(gp)
	sw	a0, 76(gp)
	sw	a0, 80(gp)
	sw	a0, 84(gp)
	sw	a0, 88(gp)
	sw	a0, 92(gp)
	sw	a0, 96(gp)
	sw	a0, 100(gp)
	sw	a0, 104(gp)
	sw	a0, 108(gp)
	sw	a0, 112(gp)
	sw	a0, 116(gp)
	sw	a0, 120(gp)
	sw	a0, 124(gp)
	sw	a0, 128(gp)
	sw	a0, 132(gp)
	sw	a0, 136(gp)
	sw	a0, 140(gp)
	sw	a0, 144(gp)
	sw	a0, 148(gp)
	sw	a0, 152(gp)
	sw	a0, 156(gp)
	sw	a0, 160(gp)
	sw	a0, 164(gp)
	sw	a0, 168(gp)
	sw	a0, 172(gp)
	sw	a0, 176(gp)
	sw	a0, 180(gp)
	sw	a0, 184(gp)
	sw	a0, 188(gp)
	sw	a0, 192(gp)
	sw	a0, 196(gp)
	sw	a0, 200(gp)
	sw	a0, 204(gp)
	sw	a0, 208(gp)
	sw	a0, 212(gp)
	sw	a0, 216(gp)
	sw	a0, 220(gp)
	sw	a0, 224(gp)
	sw	a0, 228(gp)
	sw	a0, 232(gp)
	sw	a0, 236(gp)
	sw	a0, 240(gp)
	sw	a0, 244(gp)
	sw	a0, 248(gp)
	sw	a0, 252(gp)
	sw	a0, 256(gp)
	sw	a0, 260(gp)
	sw	a0, 264(gp)
	sw	a0, 268(gp)
	sw	a0, 272(gp)
	sw	a0, 276(gp)
	sw	a0, 280(gp)
	sw	a0, 284(gp)
	sw	a0, 288(gp)
	sw	a0, 292(gp)
	sw	a0, 296(gp)
	sw	a0, 300(gp)
	sw	a0, 304(gp)
	sw	a0, 308(gp)
	sw	a0, 312(gp)
	sw	a0, 316(gp)
	sw	a0, 320(gp)
	sw	a0, 324(gp)
	sw	a0, 328(gp)
	sw	a0, 332(gp)
	sw	a0, 336(gp)
	sw	a0, 340(gp)
	sw	a0, 344(gp)
	sw	a0, 348(gp)
	sw	a0, 352(gp)
	sw	a0, 356(gp)
	sw	a0, 360(gp)
	sw	a0, 364(gp)
	sw	a0, 368(gp)
	sw	a0, 372(gp)
	sw	a0, 376(gp)
	sw	a0, 380(gp)
	sw	a0, 384(gp)
	sw	a0, 388(gp)
	sw	a0, 392(gp)
	sw	a0, 396(gp)
	sw	a0, 400(gp)
	sw	a0, 404(gp)
	sw	a0, 408(gp)
	sw	a0, 412(gp)
	sw	a0, 416(gp)
	sw	a0, 420(gp)
	sw	a0, 424(gp)
	sw	a0, 428(gp)
	sw	a0, 432(gp)
	sw	a0, 436(gp)
	sw	a0, 440(gp)
	sw	a0, 444(gp)
	sw	a0, 448(gp)
	sw	a0, 452(gp)
	sw	a0, 456(gp)
	sw	a0, 460(gp)
	sw	a0, 464(gp)
	sw	a0, 468(gp)
	sw	a0, 472(gp)
	sw	a0, 476(gp)
	mv	a0, gp
	addi	gp, gp, 480
	swd	a0, min_caml_dirvecs(12)
	lwd	a0, min_caml_dirvecs(12)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 164(sp)	# save
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 164(sp)	# restore
	sw	a0, 472(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 164(sp)	# restore
	sw	a0, 468(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 164(sp)	# restore
	sw	a0, 464(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lwd	a0, min_caml_n_objects(0)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 164(sp)	# restore
	sw	a0, 460(a1)
	li	a0, 114
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	create_dirvec_elements_3043
	li	a0, 2
	call	create_dirvecs_3046
	li	a0, 9
	li	a1, 0
	li	a2, 0
	call	calc_dirvec_rows_3037
	lwd	a0, min_caml_dirvecs(16)
	sw	a0, 168(sp)	# save
	lw	a0, 476(a0)
	lwd	a1, min_caml_n_objects(0)
	addi	a1, a1, -1
	blt	a1, zero, .rt_cont_59
	slli	a2, a1, 2
	lwl	a2, min_caml_objects(a2)
	lw	a3, 4(a0)
	sw	a0, 172(sp)	# save
	lw	a0, 0(a0)
	lw	a4, 16(a2)
	lw	a5, 4(a2)
	bnei	a5, 1, .rt_else_60
	sw	a3, 176(sp)	# save
	sw	a1, 180(sp)	# save
	mv	a1, a2
	call	setup_rect_table_2821
	lw	a1, 180(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 176(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.rt_cont_61
.rt_else_60:
	bnei	a5, 2, .rt_else_62
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	fsw	fzero, 12(gp)
	mv	a2, gp
	addi	gp, gp, 16
	flw	fa0, 0(a0)
	flw	fa1, 0(a4)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a0)
	flw	fa2, 4(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	flw	fa2, 8(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fle	a0, fa0, fzero
	bne	a0, zero, .rt_else_64
	fli	fa1, l_data_6
	fdiv	fa1, fa1, fa0
	fsw	fa1, 0(a2)
	flw	fa1, 0(a4)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 4(a2)
	flw	fa1, 4(a4)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 8(a2)
	flw	fa1, 8(a4)
	fdiv	fa0, fa1, fa0
	fneg	fa0, fa0
	fsw	fa0, 12(a2)
	slli	a0, a1, 2
	add	t6, a3, a0
	sw	a2, 0(t6)
	b	.rt_cont_63
.rt_else_64:
	fsw	fzero, 0(a2)
	slli	a0, a1, 2
	add	t6, a3, a0
	sw	a2, 0(t6)
	b	.rt_cont_63
.rt_else_62:
	sw	a3, 176(sp)	# save
	sw	a1, 180(sp)	# save
	mv	a1, a2
	call	setup_second_table_2827
	lw	a1, 180(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 176(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
.rt_cont_63:
.rt_cont_61:
	addi	a1, a1, -1
	lw	a0, 172(sp)	# restore
	call	iter_setup_dirvec_constants_2830
.rt_cont_59:
	li	a1, 118
	lw	a0, 168(sp)	# restore
	call	init_dirvec_constants_3048
	lwd	a0, min_caml_dirvecs(12)
	li	a1, 119
	call	init_dirvec_constants_3048
	li	a0, 2
	call	init_vecset_constants_3051
	lda	a0, min_caml_light_dirvec
	lwd	a1, min_caml_light_dirvec(0)
	flwd	fa0, min_caml_light(0)
	fsw	fa0, 0(a1)
	flwd	fa0, min_caml_light(4)
	fsw	fa0, 4(a1)
	flwd	fa0, min_caml_light(8)
	fsw	fa0, 8(a1)
	lwd	a1, min_caml_n_objects(0)
	addi	a1, a1, -1
	call	iter_setup_dirvec_constants_2830
	lwd	a0, min_caml_n_objects(0)
	addi	a0, a0, -1
	blt	a0, zero, .rt_cont_66
	slli	a1, a0, 2
	lwl	a1, min_caml_objects(a1)
	lw	a2, 28(a1)
	lw	a3, 8(a1)
	lw	a4, 4(a1)
	bnei	a3, 2, .rt_cont_67
	fli	fa0, l_data_5
	flw	fa1, 0(a2)
	fle	a2, fa0, fa1
	bne	a2, zero, .rt_cont_68
	bnei	a4, 1, .rt_else_69
	call	setup_rect_reflection_3062
	b	.rt_cont_70
.rt_else_69:
	bnei	a4, 2, .rt_cont_71
	call	setup_surface_reflection_3065
.rt_cont_71:
.rt_cont_70:
.rt_cont_68:
.rt_cont_67:
.rt_cont_66:
	li	a0, 0
	li	a1, 0
	flwd	fa0, min_caml_scan_pitch(0)
	lwd	a2, min_caml_image_center(4)
	sub	a0, a0, a2
	fsw	fa0, 184(sp)	# save
	call	min_caml_float_of_int
	flw	fa1, 184(sp)	# restore
	fmul	fa0, fa1, fa0
	flwd	fa1, min_caml_screeny_dir(0)
	fmul	fa1, fa0, fa1
	flwd	fa2, min_caml_screenz_dir(0)
	fadd	fa1, fa1, fa2
	flwd	fa2, min_caml_screeny_dir(4)
	fmul	fa2, fa0, fa2
	flwd	fa3, min_caml_screenz_dir(4)
	fadd	fa2, fa2, fa3
	flwd	fa3, min_caml_screeny_dir(8)
	fmul	fa0, fa0, fa3
	flwd	fa3, min_caml_screenz_dir(8)
	fadd	fa0, fa0, fa3
	lwd	a0, min_caml_image_size(0)
	addi	a0, a0, -1
	lw	a2, 32(sp)	# restore
	mv	t4, a2
	mv	a2, a1
	mv	a1, a0
	mv	a0, t4
	fmv	ft8, fa2
	fmv	fa2, fa0
	fmv	fa0, fa1
	fmv	fa1, ft8
	call	pretrace_pixels_2987
	li	a1, 0
	li	a0, 2
	lwd	a2, min_caml_image_size(4)
	bgt	a2, zero, .rt_else_72
	lw	ra, 200(sp)
	addi	sp, sp, 204
	jr	ra
.rt_else_72:
	lwd	a2, min_caml_image_size(4)
	addi	a2, a2, -1
	sw	a1, 188(sp)	# save
	ble	a2, zero, .rt_cont_74
	li	a2, 1
	flwd	fa0, min_caml_scan_pitch(0)
	lwd	a3, min_caml_image_center(4)
	sw	a0, 192(sp)	# save
	sub	a0, a2, a3
	fsw	fa0, 196(sp)	# save
	call	min_caml_float_of_int
	flw	fa1, 196(sp)	# restore
	fmul	fa0, fa1, fa0
	flwd	fa1, min_caml_screeny_dir(0)
	fmul	fa1, fa0, fa1
	flwd	fa2, min_caml_screenz_dir(0)
	fadd	fa1, fa1, fa2
	flwd	fa2, min_caml_screeny_dir(4)
	fmul	fa2, fa0, fa2
	flwd	fa3, min_caml_screenz_dir(4)
	fadd	fa2, fa2, fa3
	flwd	fa3, min_caml_screeny_dir(8)
	fmul	fa0, fa0, fa3
	flwd	fa3, min_caml_screenz_dir(8)
	fadd	fa0, fa0, fa3
	lwd	a0, min_caml_image_size(0)
	addi	a1, a0, -1
	lw	a0, 48(sp)	# restore
	lw	a2, 192(sp)	# restore
	fmv	ft8, fa2
	fmv	fa2, fa0
	fmv	fa0, fa1
	fmv	fa1, ft8
	call	pretrace_pixels_2987
.rt_cont_74:
	li	a0, 0
	lw	a1, 188(sp)	# restore
	lw	a2, 16(sp)	# restore
	lw	a3, 32(sp)	# restore
	lw	a4, 48(sp)	# restore
	call	scan_pixel_2998
	li	a0, 1
	li	a4, 4
	lw	a1, 32(sp)	# restore
	lw	a2, 48(sp)	# restore
	lw	a3, 16(sp)	# restore
	call	scan_line_3004
	lw	ra, 200(sp)
	addi	sp, sp, 204
	jr	ra
	.data
l_data_31:	# 128.000000
	.word	1124073472
l_data_30:	# 0.900000
	.word	1063675494
l_data_29:	# 0.200000
	.word	1045220557
l_data_28:	# -150.000000
	.word	-1021968384
l_data_27:	# 150.000000
	.word	1125515264
l_data_26:	# 0.100000
	.word	1036831949
l_data_25:	# -2.000000
	.word	-1073741824
l_data_24:	# 0.003906
	.word	998244352
l_data_23:	# 100000000.000000
	.word	1287568416
l_data_22:	# 1000000000.000000
	.word	1315859240
l_data_21:	# 20.000000
	.word	1101004800
l_data_20:	# 0.050000
	.word	1028443341
l_data_19:	# 0.250000
	.word	1048576000
l_data_18:	# 10.000000
	.word	1092616192
l_data_17:	# 0.300000
	.word	1050253722
l_data_16:	# 255.000000
	.word	1132396544
l_data_15:	# 0.500000
	.word	1056964608
l_data_14:	# 0.150000
	.word	1041865114
l_data_13:	# 15.000000
	.word	1097859072
l_data_12:	# 3.141593
	.word	1078530011
l_data_11:	# 30.000000
	.word	1106247680
l_data_10:	# 0.000100
	.word	953267991
l_data_9:	# -0.100000
	.word	-1110651699
l_data_8:	# 0.010000
	.word	1008981770
l_data_7:	# -0.200000
	.word	-1102263091
l_data_6:	# -1.000000
	.word	-1082130432
l_data_5:	# 1.000000
	.word	1065353216
l_data_4:	# 2.000000
	.word	1073741824
l_data_3:	# -200.000000
	.word	-1018691584
l_data_2:	# 200.000000
	.word	1128792064
l_data_1:	# 0.017453
	.word	1016003125
