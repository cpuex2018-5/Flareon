	.text
_min_caml_start:
	li	gp, 7404
	li	a0, 128
	li	a1, 128
	call	rt_3074
end:
	b	end
read_screen_settings_2720:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	lda	a0, min_caml_screen
	call	min_caml_read_float
	fsw	fa0, 0(a0)
	call	min_caml_read_float
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	fsw	fa0, 8(a0)
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
	lda	a1, min_caml_screenz_dir
	flw	fa1, 4(sp)	# restore
	fmul	fa2, fa1, fa0
	fli	fa3, l_data_2
	fmul	fa2, fa2, fa3
	fsw	fa2, 0(a1)
	fli	fa2, l_data_3
	flw	fa4, 8(sp)	# restore
	fmul	fa2, fa4, fa2
	fsw	fa2, 4(a1)
	flw	fa2, 16(sp)	# restore
	fmul	fa5, fa1, fa2
	fmul	fa3, fa5, fa3
	fsw	fa3, 8(a1)
	lda	a2, min_caml_screenx_dir
	fsw	fa2, 0(a2)
	fsw	fzero, 4(a2)
	fneg	fa3, fa0
	fsw	fa3, 8(a2)
	lda	a2, min_caml_screeny_dir
	fneg	fa3, fa4
	fmul	fa0, fa3, fa0
	fsw	fa0, 0(a2)
	fneg	fa0, fa1
	fsw	fa0, 4(a2)
	fmul	fa0, fa3, fa2
	fsw	fa0, 8(a2)
	lda	a2, min_caml_viewpoint
	flw	fa0, 0(a0)
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	fsw	fa0, 0(a2)
	flw	fa0, 4(a0)
	flw	fa1, 4(a1)
	fsub	fa0, fa0, fa1
	fsw	fa0, 4(a2)
	flw	fa0, 8(a0)
	flw	fa1, 8(a1)
	fsub	fa0, fa0, fa1
	fsw	fa0, 8(a2)
read_screen_settings_ret:
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
rotate_quadratic_matrix_2724:
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
rotate_quadratic_matrix_ret:
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
read_nth_object_2727:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	a0, 0(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .read_nth_object_else_1
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
	b	.read_nth_object_cont_10
.read_nth_object_else_9:
	fli	fa1, l_data_6
.read_nth_object_cont_10:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	b	.read_nth_object_cont_8
.read_nth_object_else_7:
	fmv	fa0, fzero
.read_nth_object_cont_8:
	fsw	fa0, 0(a2)
	flw	fa0, 4(a2)
	feq	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_11
	fle	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_13
	fli	fa1, l_data_5
	b	.read_nth_object_cont_14
.read_nth_object_else_13:
	fli	fa1, l_data_6
.read_nth_object_cont_14:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	b	.read_nth_object_cont_12
.read_nth_object_else_11:
	fmv	fa0, fzero
.read_nth_object_cont_12:
	fsw	fa0, 4(a2)
	flw	fa0, 8(a2)
	feq	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_15
	fle	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_17
	fli	fa1, l_data_5
	b	.read_nth_object_cont_18
.read_nth_object_else_17:
	fli	fa1, l_data_6
.read_nth_object_cont_18:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	b	.read_nth_object_cont_16
.read_nth_object_else_15:
	fmv	fa0, fzero
.read_nth_object_cont_16:
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
	call	rotate_quadratic_matrix_2724
.read_nth_object_cont_24:
	li	a0, 1
read_nth_object_ret:
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
read_object_2729:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	li	a1, 60
	bgt	a1, a0, .read_object_else_1
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
.read_object_else_1:
	sw	a0, 0(sp)	# save
	call	read_nth_object_2727
	bne	a0, zero, .read_object_else_3
	lda	a0, min_caml_n_objects
	lw	a1, 0(sp)	# restore
	sw	a1, 0(a0)
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
	call	read_nth_object_2727
	bne	a0, zero, .read_object_else_7
	lda	a0, min_caml_n_objects
	lw	a1, 4(sp)	# restore
	sw	a1, 0(a0)
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
	call	read_nth_object_2727
	bne	a0, zero, .read_object_else_11
	lda	a0, min_caml_n_objects
	lw	a1, 8(sp)	# restore
	sw	a1, 0(a0)
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
	call	read_nth_object_2727
	bne	a0, zero, .read_object_else_15
	lda	a0, min_caml_n_objects
	lw	a1, 12(sp)	# restore
	sw	a1, 0(a0)
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
	call	read_nth_object_2727
	bne	a0, zero, .read_object_else_19
	lda	a0, min_caml_n_objects
	lw	a1, 16(sp)	# restore
	sw	a1, 0(a0)
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
	call	read_nth_object_2727
	bne	a0, zero, .read_object_else_23
	lda	a0, min_caml_n_objects
	lw	a1, 20(sp)	# restore
	sw	a1, 0(a0)
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
	call	read_nth_object_2727
	bne	a0, zero, .read_object_else_27
	lda	a0, min_caml_n_objects
	lw	a1, 24(sp)	# restore
	sw	a1, 0(a0)
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
	call	read_nth_object_2727
	bne	a0, zero, .read_object_else_31
	lda	a0, min_caml_n_objects
	lw	a1, 28(sp)	# restore
	sw	a1, 0(a0)
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
.read_object_else_31:
	lw	a0, 28(sp)	# restore
	addi	a0, a0, 1
	call	read_object_2729
read_object_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
read_net_item_2733:
	addi	sp, sp, -68
	sw	ra, 64(sp)
	sw	a0, 0(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .read_net_item_else_1
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
	bne	a0, a1, .read_net_item_else_2
	addi	a0, a2, 1
	call	min_caml_create_array
	b	.read_net_item_cont_3
.read_net_item_else_2:
	addi	a1, a2, 1
	sw	a0, 8(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	sw	a2, 12(sp)	# save
	bne	a0, a3, .read_net_item_else_4
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
	bne	a0, a1, .read_net_item_else_6
	addi	a0, a3, 1
	call	min_caml_create_array
	b	.read_net_item_cont_7
.read_net_item_else_6:
	addi	a1, a3, 1
	sw	a0, 24(sp)	# save
	call	min_caml_read_int
	li	a4, -1
	sw	a3, 28(sp)	# save
	bne	a0, a4, .read_net_item_else_8
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
	bne	a0, a1, .read_net_item_else_10
	addi	a0, a4, 1
	call	min_caml_create_array
	b	.read_net_item_cont_11
.read_net_item_else_10:
	addi	a1, a4, 1
	sw	a0, 40(sp)	# save
	call	min_caml_read_int
	li	a5, -1
	sw	a4, 44(sp)	# save
	bne	a0, a5, .read_net_item_else_12
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
	bne	a0, a1, .read_net_item_else_14
	addi	a0, a5, 1
	call	min_caml_create_array
	b	.read_net_item_cont_15
.read_net_item_else_14:
	sw	a0, 56(sp)	# save
	addi	a0, a5, 1
	sw	a5, 60(sp)	# save
	call	read_net_item_2733
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
read_net_item_ret:
	lw	ra, 64(sp)
	addi	sp, sp, 68
	jr	ra
read_or_network_2735:
	addi	sp, sp, -124
	sw	ra, 120(sp)
	sw	a0, 0(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .read_or_network_else_1
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	mv	a1, a0
	b	.read_or_network_cont_2
.read_or_network_else_1:
	sw	a0, 4(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .read_or_network_else_3
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.read_or_network_cont_4
.read_or_network_else_3:
	sw	a0, 8(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .read_or_network_else_5
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
	bne	a0, a1, .read_or_network_else_7
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
	bne	a0, a1, .read_or_network_else_9
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
	bne	a0, a1, .read_or_network_else_11
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
	bne	a0, a1, .read_or_network_else_13
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
	call	read_net_item_2733
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
	li	a2, -1
	bne	a0, a2, .read_or_network_else_15
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
	bne	a0, a3, .read_or_network_else_16
	sw	a3, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	mv	a1, a0
	b	.read_or_network_cont_17
.read_or_network_else_16:
	sw	a0, 40(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bne	a0, a3, .read_or_network_else_18
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.read_or_network_cont_19
.read_or_network_else_18:
	sw	a0, 44(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bne	a0, a3, .read_or_network_else_20
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	b	.read_or_network_cont_21
.read_or_network_else_20:
	sw	a0, 48(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bne	a0, a3, .read_or_network_else_22
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	sw	a3, 12(gp)
	mv	a0, gp
	addi	gp, gp, 16
	b	.read_or_network_cont_23
.read_or_network_else_22:
	sw	a0, 52(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bne	a0, a3, .read_or_network_else_24
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	sw	a3, 12(gp)
	sw	a3, 16(gp)
	mv	a0, gp
	addi	gp, gp, 20
	b	.read_or_network_cont_25
.read_or_network_else_24:
	sw	a0, 56(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bne	a0, a3, .read_or_network_else_26
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	sw	a3, 12(gp)
	sw	a3, 16(gp)
	sw	a3, 20(gp)
	mv	a0, gp
	addi	gp, gp, 24
	b	.read_or_network_cont_27
.read_or_network_else_26:
	sw	a0, 60(sp)	# save
	li	a0, 6
	call	read_net_item_2733
	lw	a1, 60(sp)	# restore
	sw	a1, 20(a0)
.read_or_network_cont_27:
	lw	a1, 56(sp)	# restore
	sw	a1, 16(a0)
.read_or_network_cont_25:
	lw	a1, 52(sp)	# restore
	sw	a1, 12(a0)
.read_or_network_cont_23:
	lw	a1, 48(sp)	# restore
	sw	a1, 8(a0)
.read_or_network_cont_21:
	lw	a1, 44(sp)	# restore
	sw	a1, 4(a0)
.read_or_network_cont_19:
	lw	a1, 40(sp)	# restore
	sw	a1, 0(a0)
	mv	a1, a0
.read_or_network_cont_17:
	lw	a0, 0(a1)
	li	a2, -1
	bne	a0, a2, .read_or_network_else_28
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
	bne	a0, a3, .read_or_network_else_30
	sw	a3, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	mv	a1, a0
	b	.read_or_network_cont_31
.read_or_network_else_30:
	sw	a0, 72(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bne	a0, a3, .read_or_network_else_32
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.read_or_network_cont_33
.read_or_network_else_32:
	sw	a0, 76(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bne	a0, a3, .read_or_network_else_34
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	b	.read_or_network_cont_35
.read_or_network_else_34:
	sw	a0, 80(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bne	a0, a3, .read_or_network_else_36
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	sw	a3, 12(gp)
	mv	a0, gp
	addi	gp, gp, 16
	b	.read_or_network_cont_37
.read_or_network_else_36:
	sw	a0, 84(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bne	a0, a3, .read_or_network_else_38
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	sw	a3, 12(gp)
	sw	a3, 16(gp)
	mv	a0, gp
	addi	gp, gp, 20
	b	.read_or_network_cont_39
.read_or_network_else_38:
	sw	a0, 88(sp)	# save
	li	a0, 5
	call	read_net_item_2733
	lw	a1, 88(sp)	# restore
	sw	a1, 16(a0)
.read_or_network_cont_39:
	lw	a1, 84(sp)	# restore
	sw	a1, 12(a0)
.read_or_network_cont_37:
	lw	a1, 80(sp)	# restore
	sw	a1, 8(a0)
.read_or_network_cont_35:
	lw	a1, 76(sp)	# restore
	sw	a1, 4(a0)
.read_or_network_cont_33:
	lw	a1, 72(sp)	# restore
	sw	a1, 0(a0)
	mv	a1, a0
.read_or_network_cont_31:
	lw	a0, 0(a1)
	li	a2, -1
	bne	a0, a2, .read_or_network_else_40
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
	bne	a0, a3, .read_or_network_else_42
	sw	a3, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	mv	a1, a0
	b	.read_or_network_cont_43
.read_or_network_else_42:
	sw	a0, 100(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bne	a0, a3, .read_or_network_else_44
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.read_or_network_cont_45
.read_or_network_else_44:
	sw	a0, 104(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bne	a0, a3, .read_or_network_else_46
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	b	.read_or_network_cont_47
.read_or_network_else_46:
	sw	a0, 108(sp)	# save
	call	min_caml_read_int
	li	a3, -1
	bne	a0, a3, .read_or_network_else_48
	sw	a3, 0(gp)
	sw	a3, 4(gp)
	sw	a3, 8(gp)
	sw	a3, 12(gp)
	mv	a0, gp
	addi	gp, gp, 16
	b	.read_or_network_cont_49
.read_or_network_else_48:
	sw	a0, 112(sp)	# save
	li	a0, 4
	call	read_net_item_2733
	lw	a1, 112(sp)	# restore
	sw	a1, 12(a0)
.read_or_network_cont_49:
	lw	a1, 108(sp)	# restore
	sw	a1, 8(a0)
.read_or_network_cont_47:
	lw	a1, 104(sp)	# restore
	sw	a1, 4(a0)
.read_or_network_cont_45:
	lw	a1, 100(sp)	# restore
	sw	a1, 0(a0)
	mv	a1, a0
.read_or_network_cont_43:
	lw	a0, 0(a1)
	li	a2, -1
	bne	a0, a2, .read_or_network_else_50
	lw	a0, 96(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	b	.read_or_network_cont_51
.read_or_network_else_50:
	lw	a0, 96(sp)	# restore
	addi	a0, a0, 1
	sw	a1, 116(sp)	# save
	call	read_or_network_2735
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
read_or_network_ret:
	lw	ra, 120(sp)
	addi	sp, sp, 124
	jr	ra
read_and_network_2737:
	addi	sp, sp, -108
	sw	ra, 104(sp)
	sw	a0, 0(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .read_and_network_else_1
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.read_and_network_cont_2
.read_and_network_else_1:
	sw	a0, 4(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .read_and_network_else_3
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.read_and_network_cont_4
.read_and_network_else_3:
	sw	a0, 8(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .read_and_network_else_5
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
	bne	a0, a1, .read_and_network_else_7
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
	bne	a0, a1, .read_and_network_else_9
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
	bne	a0, a1, .read_and_network_else_11
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
	bne	a0, a1, .read_and_network_else_13
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
	call	read_net_item_2733
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
	li	a2, -1
	bne	a1, a2, .read_and_network_else_15
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
	bne	a0, a1, .read_and_network_else_17
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.read_and_network_cont_18
.read_and_network_else_17:
	sw	a0, 36(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .read_and_network_else_19
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.read_and_network_cont_20
.read_and_network_else_19:
	sw	a0, 40(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .read_and_network_else_21
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
	bne	a0, a1, .read_and_network_else_23
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
	bne	a0, a1, .read_and_network_else_25
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
	bne	a0, a1, .read_and_network_else_27
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
	call	read_net_item_2733
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
	li	a2, -1
	bne	a1, a2, .read_and_network_else_29
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
	bne	a0, a1, .read_and_network_else_31
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.read_and_network_cont_32
.read_and_network_else_31:
	sw	a0, 64(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .read_and_network_else_33
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.read_and_network_cont_34
.read_and_network_else_33:
	sw	a0, 68(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .read_and_network_else_35
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
	bne	a0, a1, .read_and_network_else_37
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
	bne	a0, a1, .read_and_network_else_39
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
	call	read_net_item_2733
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
	li	a2, -1
	bne	a1, a2, .read_and_network_else_41
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
	bne	a0, a1, .read_and_network_else_43
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.read_and_network_cont_44
.read_and_network_else_43:
	sw	a0, 88(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .read_and_network_else_45
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.read_and_network_cont_46
.read_and_network_else_45:
	sw	a0, 92(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .read_and_network_else_47
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
	bne	a0, a1, .read_and_network_else_49
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
	call	read_net_item_2733
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
	li	a2, -1
	bne	a1, a2, .read_and_network_else_51
	lw	ra, 104(sp)
	addi	sp, sp, 108
	jr	ra
.read_and_network_else_51:
	lw	a1, 84(sp)	# restore
	slli	a2, a1, 2
	swl	a0, min_caml_and_net(a2)
	addi	a0, a1, 1
	call	read_and_network_2737
read_and_network_ret:
	lw	ra, 104(sp)
	addi	sp, sp, 108
	jr	ra
solver_rect_2750:
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
	bne	a2, zero, .solver_rect_else_4
	flw	fa4, 8(a3)
	flw	fa5, 8(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa2
	fabs	fa5, fa5
	fle	a2, fa4, fa5
	bne	a2, zero, .solver_rect_else_6
	lda	a2, min_caml_solver_dist
	fsw	fa3, 0(a2)
	li	a2, 1
	b	.solver_rect_cont_2
.solver_rect_else_6:
	li	a2, 0
	b	.solver_rect_cont_2
.solver_rect_else_4:
	li	a2, 0
	b	.solver_rect_cont_2
.solver_rect_else_1:
	li	a2, 0
.solver_rect_cont_2:
	bne	a2, zero, .solver_rect_else_8
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
	bne	a2, zero, .solver_rect_else_12
	flw	fa4, 0(a3)
	flw	fa5, 0(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa0
	fabs	fa5, fa5
	fle	a2, fa4, fa5
	bne	a2, zero, .solver_rect_else_14
	lda	a2, min_caml_solver_dist
	fsw	fa3, 0(a2)
	li	a2, 1
	b	.solver_rect_cont_10
.solver_rect_else_14:
	li	a2, 0
	b	.solver_rect_cont_10
.solver_rect_else_12:
	li	a2, 0
	b	.solver_rect_cont_10
.solver_rect_else_9:
	li	a2, 0
.solver_rect_cont_10:
	bne	a2, zero, .solver_rect_else_16
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
	bne	a2, zero, .solver_rect_else_20
	flw	fa0, 4(a0)
	flw	fa3, 4(a1)
	fmul	fa3, fa2, fa3
	fadd	fa1, fa3, fa1
	fabs	fa1, fa1
	fle	a0, fa0, fa1
	bne	a0, zero, .solver_rect_else_22
	lda	a0, min_caml_solver_dist
	fsw	fa2, 0(a0)
	li	a0, 1
	bne	a0, zero, .solver_rect_else_24
	li	a0, 0
	jr	ra
.solver_rect_else_22:
	li	a0, 0
.solver_rect_cont_23:
	bne	a0, zero, .solver_rect_else_24
	li	a0, 0
	jr	ra
.solver_rect_else_20:
	li	a0, 0
.solver_rect_cont_21:
	bne	a0, zero, .solver_rect_else_24
	li	a0, 0
	jr	ra
.solver_rect_else_17:
	li	a0, 0
.solver_rect_cont_18:
	bne	a0, zero, .solver_rect_else_24
	li	a0, 0
	jr	ra
.solver_rect_else_24:
	li	a0, 3
	jr	ra
.solver_rect_else_16:
	li	a0, 2
	jr	ra
.solver_rect_else_8:
	li	a0, 1
solver_rect_ret:
	jr	ra
solver_second_2775:
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
	b	.solver_second_cont_5
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
.solver_second_cont_5:
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
	bne	a0, zero, .solver_second_else_9
	fsqrt	fa0, fa0
	bne	a3, zero, .solver_second_cont_10
	fneg	fa0, fa0
.solver_second_cont_10:
	lda	a0, min_caml_solver_dist
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	fsw	fa0, 0(a0)
	li	a0, 1
	jr	ra
.solver_second_else_9:
	li	a0, 0
	jr	ra
.solver_second_else_3:
	li	a0, 0
solver_second_ret:
	jr	ra
solver_2781:
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
	bne	a0, zero, .solver_else_5
	flw	fa4, 8(a6)
	flw	fa5, 8(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa2
	fabs	fa5, fa5
	fle	a0, fa4, fa5
	bne	a0, zero, .solver_else_7
	lda	a0, min_caml_solver_dist
	fsw	fa3, 0(a0)
	li	a0, 1
	b	.solver_cont_3
.solver_else_7:
	li	a0, 0
	b	.solver_cont_3
.solver_else_5:
	li	a0, 0
	b	.solver_cont_3
.solver_else_2:
	li	a0, 0
.solver_cont_3:
	bne	a0, zero, .solver_else_9
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
	bne	a0, zero, .solver_else_13
	flw	fa4, 0(a6)
	flw	fa5, 0(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa0
	fabs	fa5, fa5
	fle	a0, fa4, fa5
	bne	a0, zero, .solver_else_15
	lda	a0, min_caml_solver_dist
	fsw	fa3, 0(a0)
	li	a0, 1
	b	.solver_cont_11
.solver_else_15:
	li	a0, 0
	b	.solver_cont_11
.solver_else_13:
	li	a0, 0
	b	.solver_cont_11
.solver_else_10:
	li	a0, 0
.solver_cont_11:
	bne	a0, zero, .solver_else_17
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
	bne	a0, zero, .solver_else_21
	flw	fa0, 4(a6)
	flw	fa3, 4(a1)
	fmul	fa3, fa2, fa3
	fadd	fa1, fa3, fa1
	fabs	fa1, fa1
	fle	a0, fa0, fa1
	bne	a0, zero, .solver_else_23
	lda	a0, min_caml_solver_dist
	fsw	fa2, 0(a0)
	li	a0, 1
	bne	a0, zero, .solver_else_25
	li	a0, 0
	jr	ra
.solver_else_23:
	li	a0, 0
.solver_cont_24:
	bne	a0, zero, .solver_else_25
	li	a0, 0
	jr	ra
.solver_else_21:
	li	a0, 0
.solver_cont_22:
	bne	a0, zero, .solver_else_25
	li	a0, 0
	jr	ra
.solver_else_18:
	li	a0, 0
.solver_cont_19:
	bne	a0, zero, .solver_else_25
	li	a0, 0
	jr	ra
.solver_else_25:
	li	a0, 3
	jr	ra
.solver_else_17:
	li	a0, 2
	jr	ra
.solver_else_9:
	li	a0, 1
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
	lda	a0, min_caml_solver_dist
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
	fsw	fa0, 0(a0)
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
	b	.solver_cont_32
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
.solver_cont_32:
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
	bne	a0, zero, .solver_else_36
	fsqrt	fa0, fa0
	bne	a4, zero, .solver_cont_37
	fneg	fa0, fa0
.solver_cont_37:
	lda	a0, min_caml_solver_dist
	fsub	fa0, fa0, fa4
	fdiv	fa0, fa0, fa3
	fsw	fa0, 0(a0)
	li	a0, 1
	jr	ra
.solver_else_36:
	li	a0, 0
	jr	ra
.solver_else_30:
	li	a0, 0
solver_ret:
	jr	ra
solver_rect_fast_2785:
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
	bne	a3, zero, .solver_rect_fast_else_3
	flw	fa4, 4(a2)
	feq	a3, fa4, fzero
	xori	a3, a3, 1
	b	.solver_rect_fast_cont_2
.solver_rect_fast_else_3:
	li	a3, 0
	b	.solver_rect_fast_cont_2
.solver_rect_fast_else_1:
	li	a3, 0
.solver_rect_fast_cont_2:
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
	bne	a3, zero, .solver_rect_fast_else_8
	flw	fa4, 12(a2)
	feq	a3, fa4, fzero
	xori	a3, a3, 1
	b	.solver_rect_fast_cont_7
.solver_rect_fast_else_8:
	li	a3, 0
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
	bne	a0, zero, .solver_rect_fast_else_13
	flw	fa0, 20(a2)
	feq	a0, fa0, fzero
	xori	a0, a0, 1
	bne	a0, zero, .solver_rect_fast_else_15
	li	a0, 0
	jr	ra
.solver_rect_fast_else_13:
	li	a0, 0
.solver_rect_fast_cont_14:
	bne	a0, zero, .solver_rect_fast_else_15
	li	a0, 0
	jr	ra
.solver_rect_fast_else_11:
	li	a0, 0
.solver_rect_fast_cont_12:
	bne	a0, zero, .solver_rect_fast_else_15
	li	a0, 0
	jr	ra
.solver_rect_fast_else_15:
	lda	a0, min_caml_solver_dist
	fsw	fa2, 0(a0)
	li	a0, 3
	jr	ra
.solver_rect_fast_else_10:
	lda	a0, min_caml_solver_dist
	fsw	fa3, 0(a0)
	li	a0, 2
	jr	ra
.solver_rect_fast_else_5:
	lda	a0, min_caml_solver_dist
	fsw	fa3, 0(a0)
	li	a0, 1
solver_rect_fast_ret:
	jr	ra
solver_second_fast_2798:
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
	bne	a0, zero, .solver_second_fast_else_5
	bne	a3, zero, .solver_second_fast_else_6
	lda	a0, min_caml_solver_dist
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	flw	fa1, 16(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	li	a0, 1
	jr	ra
.solver_second_fast_else_6:
	lda	a0, min_caml_solver_dist
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	flw	fa1, 16(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
.solver_second_fast_cont_7:
	li	a0, 1
	jr	ra
.solver_second_fast_else_5:
	li	a0, 0
	jr	ra
.solver_second_fast_else_1:
	li	a0, 0
solver_second_fast_ret:
	jr	ra
solver_fast_2804:
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
	call	solver_rect_fast_2785
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
.solver_fast_else_1:
	bnei	s2, 2, .solver_fast_else_2
	flw	fa3, 0(a2)
	fle	a0, fzero, fa3
	bne	a0, zero, .solver_fast_else_3
	lda	a0, min_caml_solver_dist
	flw	fa3, 4(a2)
	fmul	fa0, fa3, fa0
	flw	fa3, 8(a2)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 12(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a0)
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
	bne	a0, zero, .solver_fast_else_8
	bne	a5, zero, .solver_fast_else_9
	lda	a0, min_caml_solver_dist
	fsqrt	fa0, fa0
	fsub	fa0, fa4, fa0
	flw	fa1, 16(a2)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	b	.solver_fast_cont_10
.solver_fast_else_9:
	lda	a0, min_caml_solver_dist
	fsqrt	fa0, fa0
	fadd	fa0, fa4, fa0
	flw	fa1, 16(a2)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
.solver_fast_cont_10:
	li	a0, 1
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
.solver_fast_else_8:
	li	a0, 0
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
.solver_fast_else_4:
	li	a0, 0
solver_fast_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_fast2_2822:
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
	call	solver_rect_fast_2785
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
.solver_fast2_else_1:
	bnei	a5, 2, .solver_fast2_else_2
	flw	fa0, 0(a0)
	fle	a1, fzero, fa0
	bne	a1, zero, .solver_fast2_else_3
	lda	a1, min_caml_solver_dist
	flw	fa0, 0(a0)
	flw	fa1, 12(a3)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a1)
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
	bne	a1, zero, .solver_fast2_else_5
	bne	a4, zero, .solver_fast2_else_6
	lda	a1, min_caml_solver_dist
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	flw	fa1, 16(a0)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a1)
	b	.solver_fast2_cont_7
.solver_fast2_else_6:
	lda	a1, min_caml_solver_dist
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 16(a0)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a1)
.solver_fast2_cont_7:
	li	a0, 1
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
.solver_fast2_else_5:
	li	a0, 0
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
.solver_fast2_else_4:
	li	a0, 0
solver_fast2_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
setup_rect_table_2825:
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
	b	.setup_rect_table_cont_8
.setup_rect_table_else_7:
	fsw	fzero, 20(a2)
.setup_rect_table_cont_8:
	mv	a0, a2
setup_rect_table_ret:
	jr	ra
setup_second_table_2831:
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
	b	.setup_second_table_cont_2
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
.setup_second_table_cont_2:
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
setup_second_table_ret:
	jr	ra
iter_setup_dirvec_constants_2834:
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
	call	setup_rect_table_2825
	lw	a1, 12(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 8(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.iter_setup_dirvec_constants_cont_2
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
	b	.iter_setup_dirvec_constants_cont_6
.iter_setup_dirvec_constants_else_5:
	fsw	fzero, 0(a2)
.iter_setup_dirvec_constants_cont_6:
	slli	a4, a1, 2
	add	t6, a3, a4
	sw	a2, 0(t6)
	b	.iter_setup_dirvec_constants_cont_4
.iter_setup_dirvec_constants_else_3:
	sw	a3, 8(sp)	# save
	sw	a1, 12(sp)	# save
	mv	a1, a2
	call	setup_second_table_2831
	lw	a1, 12(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 8(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
.iter_setup_dirvec_constants_cont_4:
.iter_setup_dirvec_constants_cont_2:
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
	call	setup_rect_table_2825
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
	b	.iter_setup_dirvec_constants_cont_12
.iter_setup_dirvec_constants_else_11:
	fsw	fzero, 0(a1)
.iter_setup_dirvec_constants_cont_12:
	slli	a2, a0, 2
	add	t6, a3, a2
	sw	a1, 0(t6)
	b	.iter_setup_dirvec_constants_cont_10
.iter_setup_dirvec_constants_else_9:
	lw	a0, 4(sp)	# restore
	sw	a3, 8(sp)	# save
	call	setup_second_table_2831
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
	call	iter_setup_dirvec_constants_2834
iter_setup_dirvec_constants_ret:
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
setup_dirvec_constants_2837:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	lda	a1, min_caml_n_objects
	lw	a1, 0(a1)
	addi	a1, a1, -1
	blt	a1, zero, setup_dirvec_constants_ret
	slli	a2, a1, 2
	lwl	a2, min_caml_objects(a2)
	lw	a3, 4(a0)
	sw	a0, 0(sp)	# save
	lw	a0, 0(a0)
	lw	a4, 16(a2)
	lw	a5, 4(a2)
	bnei	a5, 1, .setup_dirvec_constants_else_1
	sw	a3, 4(sp)	# save
	sw	a1, 8(sp)	# save
	mv	a1, a2
	call	setup_rect_table_2825
	lw	a1, 8(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 4(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.setup_dirvec_constants_cont_2
.setup_dirvec_constants_else_1:
	bnei	a5, 2, .setup_dirvec_constants_else_3
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
	bne	a0, zero, .setup_dirvec_constants_else_5
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
	b	.setup_dirvec_constants_cont_6
.setup_dirvec_constants_else_5:
	fsw	fzero, 0(a2)
.setup_dirvec_constants_cont_6:
	slli	a0, a1, 2
	add	t6, a3, a0
	sw	a2, 0(t6)
	b	.setup_dirvec_constants_cont_4
.setup_dirvec_constants_else_3:
	sw	a3, 4(sp)	# save
	sw	a1, 8(sp)	# save
	mv	a1, a2
	call	setup_second_table_2831
	lw	a1, 8(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 4(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
.setup_dirvec_constants_cont_4:
.setup_dirvec_constants_cont_2:
	addi	a1, a1, -1
	lw	a0, 0(sp)	# restore
	call	iter_setup_dirvec_constants_2834
setup_dirvec_constants_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
setup_startp_constants_2839:
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
	call	setup_startp_constants_2839
setup_startp_constants_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
is_outside_2859:
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
	bne	a0, zero, .is_outside_else_4
	flw	fa0, 8(a4)
	fabs	fa1, fa2
	fle	a0, fa0, fa1
	xori	a0, a0, 1
	bne	a0, zero, .is_outside_else_6
	xori	a0, a2, 1
	jr	ra
.is_outside_else_4:
	li	a0, 0
.is_outside_cont_5:
	bne	a0, zero, .is_outside_else_6
	xori	a0, a2, 1
	jr	ra
.is_outside_else_2:
	li	a0, 0
.is_outside_cont_3:
	bne	a0, zero, .is_outside_else_6
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
	xori	a0, a0, 1
	xor	a0, a2, a0
	xori	a0, a0, 1
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
	xori	a0, a0, 1
	xor	a0, a2, a0
	xori	a0, a0, 1
is_outside_ret:
	jr	ra
check_all_inside_2864:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	slli	a2, a0, 2
	add	t6, a1, a2
	lw	a2, 0(t6)
	li	a3, -1
	bne	a2, a3, .check_all_inside_else_1
	li	a0, 1
	lw	ra, 24(sp)
	addi	sp, sp, 28
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
	bne	a2, zero, .check_all_inside_else_6
	flw	fa3, 8(a6)
	fabs	fa4, fa5
	fle	a2, fa3, fa4
	xori	a2, a2, 1
	b	.check_all_inside_cont_5
.check_all_inside_else_6:
	li	a2, 0
	b	.check_all_inside_cont_5
.check_all_inside_else_4:
	li	a2, 0
.check_all_inside_cont_5:
	bne	a2, zero, .check_all_inside_else_8
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
	xori	a2, a2, 1
	xor	a2, a4, a2
	xori	a2, a2, 1
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
	xori	a2, a2, 1
	xor	a2, a4, a2
	xori	a2, a2, 1
.check_all_inside_cont_11:
.check_all_inside_cont_3:
	bne	a2, zero, .check_all_inside_else_15
	addi	a0, a0, 1
	slli	a2, a0, 2
	add	t6, a1, a2
	lw	a2, 0(t6)
	li	a3, -1
	bne	a2, a3, .check_all_inside_else_16
	li	a0, 1
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
.check_all_inside_else_16:
	slli	a2, a2, 2
	sw	a0, 0(sp)	# save
	lwl	a0, min_caml_objects(a2)
	fsw	fa2, 4(sp)	# save
	fsw	fa1, 8(sp)	# save
	fsw	fa0, 12(sp)	# save
	sw	a1, 16(sp)	# save
	call	is_outside_2859
	bne	a0, zero, .check_all_inside_else_17
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 16(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .check_all_inside_else_18
	li	a0, 1
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
.check_all_inside_else_18:
	slli	a1, a1, 2
	lwl	a1, min_caml_objects(a1)
	lw	a3, 36(a1)
	lw	a4, 24(a1)
	lw	a5, 20(a1)
	lw	a6, 16(a1)
	lw	a7, 12(a1)
	lw	a1, 4(a1)
	flw	fa0, 0(a5)
	flw	fa1, 12(sp)	# restore
	fsub	fa0, fa1, fa0
	flw	fa2, 4(a5)
	flw	fa1, 8(sp)	# restore
	fsub	fa2, fa1, fa2
	flw	fa3, 8(a5)
	flw	fa4, 4(sp)	# restore
	fsub	fa3, fa4, fa3
	bnei	a1, 1, .check_all_inside_else_19
	flw	fa5, 0(a6)
	fabs	fa0, fa0
	fle	a1, fa5, fa0
	bne	a1, zero, .check_all_inside_else_21
	flw	fa0, 4(a6)
	fabs	fa2, fa2
	fle	a1, fa0, fa2
	bne	a1, zero, .check_all_inside_else_23
	flw	fa0, 8(a6)
	fabs	fa2, fa3
	fle	a1, fa0, fa2
	xori	a1, a1, 1
	b	.check_all_inside_cont_22
.check_all_inside_else_23:
	li	a1, 0
	b	.check_all_inside_cont_22
.check_all_inside_else_21:
	li	a1, 0
.check_all_inside_cont_22:
	bne	a1, zero, .check_all_inside_else_25
	xori	a1, a4, 1
	b	.check_all_inside_cont_20
.check_all_inside_else_25:
	mv	a1, a4
	b	.check_all_inside_cont_20
.check_all_inside_else_19:
	bnei	a1, 2, .check_all_inside_else_27
	flw	fa5, 0(a6)
	fmul	fa0, fa5, fa0
	flw	fa5, 4(a6)
	fmul	fa2, fa5, fa2
	fadd	fa0, fa0, fa2
	flw	fa2, 8(a6)
	fmul	fa2, fa2, fa3
	fadd	fa0, fa0, fa2
	fle	a1, fzero, fa0
	xori	a1, a1, 1
	xor	a1, a4, a1
	xori	a1, a1, 1
	b	.check_all_inside_cont_28
.check_all_inside_else_27:
	fmul	fa5, fa0, fa0
	flw	fa6, 0(a6)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	flw	fa7, 4(a6)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa3, fa3
	flw	fa7, 8(a6)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	bne	a7, zero, .check_all_inside_else_29
	fmv	fa0, fa5
	b	.check_all_inside_cont_30
.check_all_inside_else_29:
	fmul	fa6, fa2, fa3
	flw	fa7, 0(a3)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa3, fa3, fa0
	flw	fa6, 4(a3)
	fmul	fa3, fa3, fa6
	fadd	fa3, fa5, fa3
	fmul	fa0, fa0, fa2
	flw	fa2, 8(a3)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa3, fa0
.check_all_inside_cont_30:
	bnei	a1, 3, .check_all_inside_cont_31
	fli	fa2, l_data_5
	fsub	fa0, fa0, fa2
.check_all_inside_cont_31:
	fle	a1, fzero, fa0
	xori	a1, a1, 1
	xor	a1, a4, a1
	xori	a1, a1, 1
.check_all_inside_cont_28:
.check_all_inside_cont_20:
	bne	a1, zero, .check_all_inside_else_32
	addi	a0, a0, 1
	slli	a1, a0, 2
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .check_all_inside_else_33
	li	a0, 1
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
.check_all_inside_else_33:
	slli	a1, a1, 2
	sw	a0, 20(sp)	# save
	lwl	a0, min_caml_objects(a1)
	flw	fa0, 12(sp)	# restore
	fmv	fa2, fa4
	call	is_outside_2859
	bne	a0, zero, .check_all_inside_else_34
	lw	a0, 20(sp)	# restore
	addi	a0, a0, 1
	flw	fa0, 12(sp)	# restore
	flw	fa1, 8(sp)	# restore
	flw	fa2, 4(sp)	# restore
	lw	a1, 16(sp)	# restore
	call	check_all_inside_2864
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
.check_all_inside_else_34:
	li	a0, 0
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
.check_all_inside_else_32:
	li	a0, 0
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
.check_all_inside_else_17:
	li	a0, 0
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
.check_all_inside_else_15:
	li	a0, 0
check_all_inside_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
shadow_check_and_group_2870:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	slli	a2, a0, 2
	add	t6, a1, a2
	lw	a2, 0(t6)
	li	a3, -1
	bne	a2, a3, .shadow_check_and_group_else_1
	li	a0, 0
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.shadow_check_and_group_else_1:
	slli	a2, a0, 2
	add	t6, a1, a2
	lw	a2, 0(t6)
	lda	a3, min_caml_light_dirvec
	lda	a4, min_caml_intersection_point
	slli	a5, a2, 2
	sw	a0, 0(sp)	# save
	lwl	a0, min_caml_objects(a5)
	flw	fa0, 0(a4)
	lw	a5, 20(a0)
	lw	a6, 4(a0)
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	flw	fa1, 4(a4)
	flw	fa2, 4(a5)
	fsub	fa1, fa1, fa2
	flw	fa2, 8(a4)
	flw	fa3, 8(a5)
	fsub	fa2, fa2, fa3
	lw	a5, 4(a3)
	sw	a1, 4(sp)	# save
	lw	a1, 0(a3)
	slli	a3, a2, 2
	sw	a2, 8(sp)	# save
	add	t6, a5, a3
	lw	a2, 0(t6)
	sw	a4, 12(sp)	# save
	bnei	a6, 1, .shadow_check_and_group_else_2
	call	solver_rect_fast_2785
	b	.shadow_check_and_group_cont_3
.shadow_check_and_group_else_2:
	bnei	a6, 2, .shadow_check_and_group_else_4
	flw	fa3, 0(a2)
	fle	a0, fzero, fa3
	bne	a0, zero, .shadow_check_and_group_else_6
	lda	a0, min_caml_solver_dist
	flw	fa3, 4(a2)
	fmul	fa0, fa3, fa0
	flw	fa3, 8(a2)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 12(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	li	a0, 1
	b	.shadow_check_and_group_cont_5
.shadow_check_and_group_else_6:
	li	a0, 0
	b	.shadow_check_and_group_cont_5
.shadow_check_and_group_else_4:
	mv	a1, a2
	call	solver_second_fast_2798
.shadow_check_and_group_cont_5:
.shadow_check_and_group_cont_3:
	lda	a1, min_caml_solver_dist
	flw	fa0, 0(a1)
	bne	a0, zero, .shadow_check_and_group_else_8
	li	a0, 0
	b	.shadow_check_and_group_cont_9
.shadow_check_and_group_else_8:
	fli	fa1, l_data_7
	fle	a0, fa1, fa0
	xori	a0, a0, 1
.shadow_check_and_group_cont_9:
	bne	a0, zero, .shadow_check_and_group_else_10
	lw	a0, 8(sp)	# restore
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	lw	a0, 24(a0)
	bne	a0, zero, .shadow_check_and_group_else_11
	li	a0, 0
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.shadow_check_and_group_else_11:
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 4(sp)	# restore
	call	shadow_check_and_group_2870
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.shadow_check_and_group_else_10:
	fli	fa1, l_data_8
	fadd	fa0, fa0, fa1
	lda	a0, min_caml_light
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	lw	a1, 12(sp)	# restore
	flw	fa2, 0(a1)
	fadd	fa1, fa1, fa2
	flw	fa2, 4(a0)
	fmul	fa2, fa2, fa0
	flw	fa3, 4(a1)
	fadd	fa2, fa2, fa3
	flw	fa3, 8(a0)
	fmul	fa0, fa3, fa0
	flw	fa3, 8(a1)
	fadd	fa0, fa0, fa3
	lw	a1, 4(sp)	# restore
	lw	a0, 0(a1)
	li	a2, -1
	bne	a0, a2, .shadow_check_and_group_else_12
	li	a0, 1
	b	.shadow_check_and_group_cont_13
.shadow_check_and_group_else_12:
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	fsw	fa0, 16(sp)	# save
	fsw	fa2, 20(sp)	# save
	fsw	fa1, 24(sp)	# save
	fmv	ft8, fa2
	fmv	fa2, fa0
	fmv	fa0, fa1
	fmv	fa1, ft8
	call	is_outside_2859
	bne	a0, zero, .shadow_check_and_group_else_14
	lw	a1, 4(sp)	# restore
	lw	a0, 4(a1)
	li	a2, -1
	bne	a0, a2, .shadow_check_and_group_else_16
	li	a0, 1
	b	.shadow_check_and_group_cont_15
.shadow_check_and_group_else_16:
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	lw	a2, 36(a0)
	lw	a3, 24(a0)
	lw	a4, 20(a0)
	lw	a5, 16(a0)
	lw	a6, 12(a0)
	lw	a0, 4(a0)
	flw	fa0, 0(a4)
	flw	fa1, 24(sp)	# restore
	fsub	fa0, fa1, fa0
	flw	fa2, 4(a4)
	flw	fa1, 20(sp)	# restore
	fsub	fa2, fa1, fa2
	flw	fa3, 8(a4)
	flw	fa4, 16(sp)	# restore
	fsub	fa3, fa4, fa3
	bnei	a0, 1, .shadow_check_and_group_else_18
	flw	fa5, 0(a5)
	fabs	fa0, fa0
	fle	a0, fa5, fa0
	bne	a0, zero, .shadow_check_and_group_else_20
	flw	fa0, 4(a5)
	fabs	fa2, fa2
	fle	a0, fa0, fa2
	bne	a0, zero, .shadow_check_and_group_else_22
	flw	fa0, 8(a5)
	fabs	fa2, fa3
	fle	a0, fa0, fa2
	xori	a0, a0, 1
	b	.shadow_check_and_group_cont_21
.shadow_check_and_group_else_22:
	li	a0, 0
	b	.shadow_check_and_group_cont_21
.shadow_check_and_group_else_20:
	li	a0, 0
.shadow_check_and_group_cont_21:
	bne	a0, zero, .shadow_check_and_group_else_24
	xori	a0, a3, 1
	b	.shadow_check_and_group_cont_19
.shadow_check_and_group_else_24:
	mv	a0, a3
	b	.shadow_check_and_group_cont_19
.shadow_check_and_group_else_18:
	bnei	a0, 2, .shadow_check_and_group_else_26
	flw	fa5, 0(a5)
	fmul	fa0, fa5, fa0
	flw	fa5, 4(a5)
	fmul	fa2, fa5, fa2
	fadd	fa0, fa0, fa2
	flw	fa2, 8(a5)
	fmul	fa2, fa2, fa3
	fadd	fa0, fa0, fa2
	fle	a0, fzero, fa0
	xori	a0, a0, 1
	xor	a0, a3, a0
	xori	a0, a0, 1
	b	.shadow_check_and_group_cont_27
.shadow_check_and_group_else_26:
	fmul	fa5, fa0, fa0
	flw	fa6, 0(a5)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	flw	fa7, 4(a5)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa3, fa3
	flw	fa7, 8(a5)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	bne	a6, zero, .shadow_check_and_group_else_28
	fmv	fa0, fa5
	b	.shadow_check_and_group_cont_29
.shadow_check_and_group_else_28:
	fmul	fa6, fa2, fa3
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa3, fa3, fa0
	flw	fa6, 4(a2)
	fmul	fa3, fa3, fa6
	fadd	fa3, fa5, fa3
	fmul	fa0, fa0, fa2
	flw	fa2, 8(a2)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa3, fa0
.shadow_check_and_group_cont_29:
	bnei	a0, 3, .shadow_check_and_group_cont_30
	fli	fa2, l_data_5
	fsub	fa0, fa0, fa2
.shadow_check_and_group_cont_30:
	fle	a0, fzero, fa0
	xori	a0, a0, 1
	xor	a0, a3, a0
	xori	a0, a0, 1
.shadow_check_and_group_cont_27:
.shadow_check_and_group_cont_19:
	bne	a0, zero, .shadow_check_and_group_else_31
	lw	a0, 8(a1)
	li	a2, -1
	bne	a0, a2, .shadow_check_and_group_else_33
	li	a0, 1
	b	.shadow_check_and_group_cont_15
.shadow_check_and_group_else_33:
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	flw	fa0, 24(sp)	# restore
	fmv	fa2, fa4
	call	is_outside_2859
	bne	a0, zero, .shadow_check_and_group_else_35
	li	a0, 3
	flw	fa0, 24(sp)	# restore
	flw	fa1, 20(sp)	# restore
	flw	fa2, 16(sp)	# restore
	lw	a1, 4(sp)	# restore
	call	check_all_inside_2864
	b	.shadow_check_and_group_cont_15
.shadow_check_and_group_else_35:
	li	a0, 0
	b	.shadow_check_and_group_cont_15
.shadow_check_and_group_else_31:
	li	a0, 0
	b	.shadow_check_and_group_cont_15
.shadow_check_and_group_else_14:
	li	a0, 0
.shadow_check_and_group_cont_15:
.shadow_check_and_group_cont_13:
	bne	a0, zero, .shadow_check_and_group_else_37
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 4(sp)	# restore
	call	shadow_check_and_group_2870
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.shadow_check_and_group_else_37:
	li	a0, 1
shadow_check_and_group_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
shadow_check_one_or_group_2873:
	addi	sp, sp, -40
	sw	ra, 36(sp)
	slli	a2, a0, 2
	add	t6, a1, a2
	lw	a2, 0(t6)
	li	a3, -1
	bne	a2, a3, .shadow_check_one_or_group_else_1
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
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_group_else_2
	lw	a0, 4(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .shadow_check_one_or_group_else_3
	li	a0, 0
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_3:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 8(sp)	# save
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_group_else_4
	lw	a0, 8(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .shadow_check_one_or_group_else_5
	li	a0, 0
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_5:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 12(sp)	# save
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_group_else_6
	lw	a0, 12(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .shadow_check_one_or_group_else_7
	li	a0, 0
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_7:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 16(sp)	# save
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_group_else_8
	lw	a0, 16(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .shadow_check_one_or_group_else_9
	li	a0, 0
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_9:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 20(sp)	# save
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_group_else_10
	lw	a0, 20(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .shadow_check_one_or_group_else_11
	li	a0, 0
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_11:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 24(sp)	# save
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_group_else_12
	lw	a0, 24(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .shadow_check_one_or_group_else_13
	li	a0, 0
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_13:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 28(sp)	# save
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_group_else_14
	lw	a0, 28(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .shadow_check_one_or_group_else_15
	li	a0, 0
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_15:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 32(sp)	# save
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_group_else_16
	lw	a0, 32(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 0(sp)	# restore
	call	shadow_check_one_or_group_2873
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_16:
	li	a0, 1
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_14:
	li	a0, 1
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_12:
	li	a0, 1
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_10:
	li	a0, 1
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_8:
	li	a0, 1
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_6:
	li	a0, 1
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_4:
	li	a0, 1
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
.shadow_check_one_or_group_else_2:
	li	a0, 1
shadow_check_one_or_group_ret:
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
shadow_check_one_or_matrix_2876:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	slli	a2, a0, 2
	add	t6, a1, a2
	lw	a2, 0(t6)
	lw	a3, 0(a2)
	li	a4, -1
	bne	a3, a4, .shadow_check_one_or_matrix_else_1
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
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_3
.shadow_check_one_or_matrix_else_2:
	lda	a4, min_caml_light_dirvec
	lda	a5, min_caml_intersection_point
	slli	a6, a3, 2
	lwl	a0, min_caml_objects(a6)
	flw	fa0, 0(a5)
	lw	a6, 20(a0)
	lw	a7, 4(a0)
	flw	fa1, 0(a6)
	fsub	fa0, fa0, fa1
	flw	fa1, 4(a5)
	flw	fa2, 4(a6)
	fsub	fa1, fa1, fa2
	flw	fa2, 8(a5)
	flw	fa3, 8(a6)
	fsub	fa2, fa2, fa3
	lw	a5, 4(a4)
	lw	a1, 0(a4)
	slli	a3, a3, 2
	add	t6, a5, a3
	lw	a2, 0(t6)
	bnei	a7, 1, .shadow_check_one_or_matrix_else_4
	call	solver_rect_fast_2785
	b	.shadow_check_one_or_matrix_cont_5
.shadow_check_one_or_matrix_else_4:
	bnei	a7, 2, .shadow_check_one_or_matrix_else_6
	flw	fa3, 0(a2)
	fle	a0, fzero, fa3
	bne	a0, zero, .shadow_check_one_or_matrix_else_8
	lda	a0, min_caml_solver_dist
	flw	fa3, 4(a2)
	fmul	fa0, fa3, fa0
	flw	fa3, 8(a2)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 12(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_7
.shadow_check_one_or_matrix_else_8:
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_7
.shadow_check_one_or_matrix_else_6:
	mv	a1, a2
	call	solver_second_fast_2798
.shadow_check_one_or_matrix_cont_7:
.shadow_check_one_or_matrix_cont_5:
	bne	a0, zero, .shadow_check_one_or_matrix_else_10
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_11
.shadow_check_one_or_matrix_else_10:
	fli	fa0, l_data_9
	lda	a0, min_caml_solver_dist
	flw	fa1, 0(a0)
	fle	a0, fa0, fa1
	bne	a0, zero, .shadow_check_one_or_matrix_else_12
	lw	a0, 0(sp)	# restore
	lw	a1, 4(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_14
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_15
.shadow_check_one_or_matrix_else_14:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_16
	lw	a0, 0(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_18
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_17
.shadow_check_one_or_matrix_else_18:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_20
	lw	a0, 0(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_22
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_17
.shadow_check_one_or_matrix_else_22:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_24
	lw	a0, 0(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_26
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_17
.shadow_check_one_or_matrix_else_26:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_28
	lw	a0, 0(sp)	# restore
	lw	a1, 20(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_30
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_17
.shadow_check_one_or_matrix_else_30:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_32
	lw	a0, 0(sp)	# restore
	lw	a1, 24(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_34
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_17
.shadow_check_one_or_matrix_else_34:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_36
	lw	a0, 0(sp)	# restore
	lw	a1, 28(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_38
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_17
.shadow_check_one_or_matrix_else_38:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_40
	li	a0, 8
	lw	a1, 0(sp)	# restore
	call	shadow_check_one_or_group_2873
	b	.shadow_check_one_or_matrix_cont_17
.shadow_check_one_or_matrix_else_40:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_17
.shadow_check_one_or_matrix_else_36:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_17
.shadow_check_one_or_matrix_else_32:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_17
.shadow_check_one_or_matrix_else_28:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_17
.shadow_check_one_or_matrix_else_24:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_17
.shadow_check_one_or_matrix_else_20:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_17
.shadow_check_one_or_matrix_else_16:
	li	a0, 1
.shadow_check_one_or_matrix_cont_17:
.shadow_check_one_or_matrix_cont_15:
	bne	a0, zero, .shadow_check_one_or_matrix_else_42
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_13
.shadow_check_one_or_matrix_else_42:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_13
.shadow_check_one_or_matrix_else_12:
	li	a0, 0
.shadow_check_one_or_matrix_cont_13:
.shadow_check_one_or_matrix_cont_11:
.shadow_check_one_or_matrix_cont_3:
	bne	a0, zero, .shadow_check_one_or_matrix_else_44
	lw	a0, 8(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 4(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	sw	a0, 12(sp)	# save
	lw	a0, 0(a1)
	li	a3, -1
	bne	a0, a3, .shadow_check_one_or_matrix_else_45
	li	a0, 0
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.shadow_check_one_or_matrix_else_45:
	li	a3, 99
	sw	a1, 16(sp)	# save
	bne	a0, a3, .shadow_check_one_or_matrix_else_46
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_47
.shadow_check_one_or_matrix_else_46:
	lda	a1, min_caml_light_dirvec
	lda	a2, min_caml_intersection_point
	call	solver_fast_2804
	bne	a0, zero, .shadow_check_one_or_matrix_else_48
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_49
.shadow_check_one_or_matrix_else_48:
	fli	fa0, l_data_9
	lda	a0, min_caml_solver_dist
	flw	fa1, 0(a0)
	fle	a0, fa0, fa1
	bne	a0, zero, .shadow_check_one_or_matrix_else_50
	lw	a0, 16(sp)	# restore
	lw	a1, 4(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_52
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_53
.shadow_check_one_or_matrix_else_52:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_54
	lw	a0, 16(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_56
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_55
.shadow_check_one_or_matrix_else_56:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_58
	lw	a0, 16(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_60
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_55
.shadow_check_one_or_matrix_else_60:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_62
	lw	a0, 16(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_64
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_55
.shadow_check_one_or_matrix_else_64:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_66
	lw	a0, 16(sp)	# restore
	lw	a1, 20(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_68
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_55
.shadow_check_one_or_matrix_else_68:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_70
	lw	a0, 16(sp)	# restore
	lw	a1, 24(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_72
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_55
.shadow_check_one_or_matrix_else_72:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_74
	li	a0, 7
	lw	a1, 16(sp)	# restore
	call	shadow_check_one_or_group_2873
	b	.shadow_check_one_or_matrix_cont_55
.shadow_check_one_or_matrix_else_74:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_55
.shadow_check_one_or_matrix_else_70:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_55
.shadow_check_one_or_matrix_else_66:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_55
.shadow_check_one_or_matrix_else_62:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_55
.shadow_check_one_or_matrix_else_58:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_55
.shadow_check_one_or_matrix_else_54:
	li	a0, 1
.shadow_check_one_or_matrix_cont_55:
.shadow_check_one_or_matrix_cont_53:
	bne	a0, zero, .shadow_check_one_or_matrix_else_76
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_51
.shadow_check_one_or_matrix_else_76:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_51
.shadow_check_one_or_matrix_else_50:
	li	a0, 0
.shadow_check_one_or_matrix_cont_51:
.shadow_check_one_or_matrix_cont_49:
.shadow_check_one_or_matrix_cont_47:
	bne	a0, zero, .shadow_check_one_or_matrix_else_78
	lw	a0, 12(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 4(sp)	# restore
	call	shadow_check_one_or_matrix_2876
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.shadow_check_one_or_matrix_else_78:
	lw	a0, 16(sp)	# restore
	lw	a1, 4(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_79
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_80
.shadow_check_one_or_matrix_else_79:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_81
	lw	a0, 16(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_83
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_82
.shadow_check_one_or_matrix_else_83:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_85
	lw	a0, 16(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_87
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_82
.shadow_check_one_or_matrix_else_87:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_89
	lw	a0, 16(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_91
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_82
.shadow_check_one_or_matrix_else_91:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_93
	lw	a0, 16(sp)	# restore
	lw	a1, 20(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_95
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_82
.shadow_check_one_or_matrix_else_95:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_97
	lw	a0, 16(sp)	# restore
	lw	a1, 24(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_99
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_82
.shadow_check_one_or_matrix_else_99:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_101
	li	a0, 7
	lw	a1, 16(sp)	# restore
	call	shadow_check_one_or_group_2873
	b	.shadow_check_one_or_matrix_cont_82
.shadow_check_one_or_matrix_else_101:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_82
.shadow_check_one_or_matrix_else_97:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_82
.shadow_check_one_or_matrix_else_93:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_82
.shadow_check_one_or_matrix_else_89:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_82
.shadow_check_one_or_matrix_else_85:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_82
.shadow_check_one_or_matrix_else_81:
	li	a0, 1
.shadow_check_one_or_matrix_cont_82:
.shadow_check_one_or_matrix_cont_80:
	bne	a0, zero, .shadow_check_one_or_matrix_else_103
	lw	a0, 12(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 4(sp)	# restore
	call	shadow_check_one_or_matrix_2876
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.shadow_check_one_or_matrix_else_103:
	li	a0, 1
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.shadow_check_one_or_matrix_else_44:
	lw	a0, 0(sp)	# restore
	lw	a1, 4(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_104
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_105
.shadow_check_one_or_matrix_else_104:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_106
	lw	a0, 0(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_108
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_107
.shadow_check_one_or_matrix_else_108:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_110
	lw	a0, 0(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_112
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_107
.shadow_check_one_or_matrix_else_112:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_114
	lw	a0, 0(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_116
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_107
.shadow_check_one_or_matrix_else_116:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_118
	lw	a0, 0(sp)	# restore
	lw	a1, 20(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_120
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_107
.shadow_check_one_or_matrix_else_120:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_122
	lw	a0, 0(sp)	# restore
	lw	a1, 24(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_124
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_107
.shadow_check_one_or_matrix_else_124:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_126
	lw	a0, 0(sp)	# restore
	lw	a1, 28(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_128
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_107
.shadow_check_one_or_matrix_else_128:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_130
	li	a0, 8
	lw	a1, 0(sp)	# restore
	call	shadow_check_one_or_group_2873
	b	.shadow_check_one_or_matrix_cont_107
.shadow_check_one_or_matrix_else_130:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_107
.shadow_check_one_or_matrix_else_126:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_107
.shadow_check_one_or_matrix_else_122:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_107
.shadow_check_one_or_matrix_else_118:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_107
.shadow_check_one_or_matrix_else_114:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_107
.shadow_check_one_or_matrix_else_110:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_107
.shadow_check_one_or_matrix_else_106:
	li	a0, 1
.shadow_check_one_or_matrix_cont_107:
.shadow_check_one_or_matrix_cont_105:
	bne	a0, zero, .shadow_check_one_or_matrix_else_132
	lw	a0, 8(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 4(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	sw	a0, 20(sp)	# save
	lw	a0, 0(a1)
	li	a3, -1
	bne	a0, a3, .shadow_check_one_or_matrix_else_133
	li	a0, 0
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.shadow_check_one_or_matrix_else_133:
	li	a3, 99
	sw	a1, 24(sp)	# save
	bne	a0, a3, .shadow_check_one_or_matrix_else_134
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_135
.shadow_check_one_or_matrix_else_134:
	lda	a1, min_caml_light_dirvec
	lda	a2, min_caml_intersection_point
	call	solver_fast_2804
	bne	a0, zero, .shadow_check_one_or_matrix_else_136
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_137
.shadow_check_one_or_matrix_else_136:
	fli	fa0, l_data_9
	lda	a0, min_caml_solver_dist
	flw	fa1, 0(a0)
	fle	a0, fa0, fa1
	bne	a0, zero, .shadow_check_one_or_matrix_else_138
	lw	a0, 24(sp)	# restore
	lw	a1, 4(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_140
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_141
.shadow_check_one_or_matrix_else_140:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_142
	lw	a0, 24(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_144
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_143
.shadow_check_one_or_matrix_else_144:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_146
	lw	a0, 24(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_148
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_143
.shadow_check_one_or_matrix_else_148:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_150
	lw	a0, 24(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_152
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_143
.shadow_check_one_or_matrix_else_152:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_154
	lw	a0, 24(sp)	# restore
	lw	a1, 20(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_156
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_143
.shadow_check_one_or_matrix_else_156:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_158
	lw	a0, 24(sp)	# restore
	lw	a1, 24(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_160
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_143
.shadow_check_one_or_matrix_else_160:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_162
	li	a0, 7
	lw	a1, 24(sp)	# restore
	call	shadow_check_one_or_group_2873
	b	.shadow_check_one_or_matrix_cont_143
.shadow_check_one_or_matrix_else_162:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_143
.shadow_check_one_or_matrix_else_158:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_143
.shadow_check_one_or_matrix_else_154:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_143
.shadow_check_one_or_matrix_else_150:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_143
.shadow_check_one_or_matrix_else_146:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_143
.shadow_check_one_or_matrix_else_142:
	li	a0, 1
.shadow_check_one_or_matrix_cont_143:
.shadow_check_one_or_matrix_cont_141:
	bne	a0, zero, .shadow_check_one_or_matrix_else_164
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_139
.shadow_check_one_or_matrix_else_164:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_139
.shadow_check_one_or_matrix_else_138:
	li	a0, 0
.shadow_check_one_or_matrix_cont_139:
.shadow_check_one_or_matrix_cont_137:
.shadow_check_one_or_matrix_cont_135:
	bne	a0, zero, .shadow_check_one_or_matrix_else_166
	lw	a0, 20(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 4(sp)	# restore
	call	shadow_check_one_or_matrix_2876
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.shadow_check_one_or_matrix_else_166:
	lw	a0, 24(sp)	# restore
	lw	a1, 4(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_167
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_168
.shadow_check_one_or_matrix_else_167:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_169
	lw	a0, 24(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_171
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_170
.shadow_check_one_or_matrix_else_171:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_173
	lw	a0, 24(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_175
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_170
.shadow_check_one_or_matrix_else_175:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_177
	lw	a0, 24(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_179
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_170
.shadow_check_one_or_matrix_else_179:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_181
	lw	a0, 24(sp)	# restore
	lw	a1, 20(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_183
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_170
.shadow_check_one_or_matrix_else_183:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_185
	lw	a0, 24(sp)	# restore
	lw	a1, 24(a0)
	li	a2, -1
	bne	a1, a2, .shadow_check_one_or_matrix_else_187
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_170
.shadow_check_one_or_matrix_else_187:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .shadow_check_one_or_matrix_else_189
	li	a0, 7
	lw	a1, 24(sp)	# restore
	call	shadow_check_one_or_group_2873
	b	.shadow_check_one_or_matrix_cont_170
.shadow_check_one_or_matrix_else_189:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_170
.shadow_check_one_or_matrix_else_185:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_170
.shadow_check_one_or_matrix_else_181:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_170
.shadow_check_one_or_matrix_else_177:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_170
.shadow_check_one_or_matrix_else_173:
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_170
.shadow_check_one_or_matrix_else_169:
	li	a0, 1
.shadow_check_one_or_matrix_cont_170:
.shadow_check_one_or_matrix_cont_168:
	bne	a0, zero, .shadow_check_one_or_matrix_else_191
	lw	a0, 20(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 4(sp)	# restore
	call	shadow_check_one_or_matrix_2876
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.shadow_check_one_or_matrix_else_191:
	li	a0, 1
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
.shadow_check_one_or_matrix_else_132:
	li	a0, 1
shadow_check_one_or_matrix_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
solve_each_element_2879:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	slli	a3, a0, 2
	add	t6, a1, a3
	lw	a3, 0(t6)
	li	a4, -1
	bne	a3, a4, .solve_each_element_else_1
	lw	ra, 44(sp)
	addi	sp, sp, 48
	jr	ra
.solve_each_element_else_1:
	lda	a4, min_caml_startp
	slli	a5, a3, 2
	sw	a0, 0(sp)	# save
	lwl	a0, min_caml_objects(a5)
	flw	fa0, 0(a4)
	lw	a5, 20(a0)
	lw	a6, 16(a0)
	lw	a7, 4(a0)
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	flw	fa1, 4(a4)
	flw	fa2, 4(a5)
	fsub	fa1, fa1, fa2
	flw	fa2, 8(a4)
	flw	fa3, 8(a5)
	fsub	fa2, fa2, fa3
	sw	a4, 4(sp)	# save
	sw	a2, 8(sp)	# save
	sw	a1, 12(sp)	# save
	sw	a3, 16(sp)	# save
	bnei	a7, 1, .solve_each_element_else_3
	mv	a1, a2
	call	solver_rect_2750
	b	.solve_each_element_cont_4
.solve_each_element_else_3:
	bnei	a7, 2, .solve_each_element_else_5
	flw	fa3, 0(a2)
	flw	fa4, 0(a6)
	fmul	fa3, fa3, fa4
	flw	fa4, 4(a2)
	flw	fa5, 4(a6)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	flw	fa4, 8(a2)
	flw	fa5, 8(a6)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fle	a0, fa3, fzero
	bne	a0, zero, .solve_each_element_else_7
	lda	a0, min_caml_solver_dist
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
	fsw	fa0, 0(a0)
	li	a0, 1
	b	.solve_each_element_cont_6
.solve_each_element_else_7:
	li	a0, 0
	b	.solve_each_element_cont_6
.solve_each_element_else_5:
	mv	a1, a2
	call	solver_second_2775
.solve_each_element_cont_6:
.solve_each_element_cont_4:
	bne	a0, zero, .solve_each_element_else_9
	lw	a0, 16(sp)	# restore
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	lw	a0, 24(a0)
	bne	a0, zero, .solve_each_element_else_10
	lw	ra, 44(sp)
	addi	sp, sp, 48
	jr	ra
.solve_each_element_else_10:
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 12(sp)	# restore
	lw	a2, 8(sp)	# restore
	call	solve_each_element_2879
	lw	ra, 44(sp)
	addi	sp, sp, 48
	jr	ra
.solve_each_element_else_9:
	lda	a1, min_caml_solver_dist
	flw	fa0, 0(a1)
	fle	a1, fa0, fzero
	bne	a1, zero, .solve_each_element_cont_12
	lda	a1, min_caml_tmin
	flw	fa1, 0(a1)
	fle	a2, fa1, fa0
	bne	a2, zero, .solve_each_element_cont_13
	fli	fa1, l_data_8
	fadd	fa0, fa0, fa1
	lw	a2, 8(sp)	# restore
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	lw	a3, 4(sp)	# restore
	flw	fa2, 0(a3)
	fadd	fa1, fa1, fa2
	flw	fa2, 4(a2)
	fmul	fa2, fa2, fa0
	flw	fa3, 4(a3)
	fadd	fa2, fa2, fa3
	flw	fa3, 8(a2)
	fmul	fa3, fa3, fa0
	flw	fa4, 8(a3)
	fadd	fa3, fa3, fa4
	sw	a1, 20(sp)	# save
	lw	a1, 12(sp)	# restore
	lw	a3, 0(a1)
	li	a4, -1
	sw	a0, 24(sp)	# save
	fsw	fa3, 28(sp)	# save
	fsw	fa2, 32(sp)	# save
	fsw	fa1, 36(sp)	# save
	fsw	fa0, 40(sp)	# save
	bne	a3, a4, .solve_each_element_else_14
	li	a0, 1
	b	.solve_each_element_cont_15
.solve_each_element_else_14:
	slli	a3, a3, 2
	lwl	a0, min_caml_objects(a3)
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	call	is_outside_2859
	bne	a0, zero, .solve_each_element_else_16
	lw	a1, 12(sp)	# restore
	lw	a0, 4(a1)
	li	a2, -1
	bne	a0, a2, .solve_each_element_else_18
	li	a0, 1
	b	.solve_each_element_cont_17
.solve_each_element_else_18:
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	lw	a2, 36(a0)
	lw	a3, 24(a0)
	lw	a4, 20(a0)
	lw	a5, 16(a0)
	lw	a6, 12(a0)
	lw	a0, 4(a0)
	flw	fa0, 0(a4)
	flw	fa1, 36(sp)	# restore
	fsub	fa0, fa1, fa0
	flw	fa2, 4(a4)
	flw	fa1, 32(sp)	# restore
	fsub	fa2, fa1, fa2
	flw	fa3, 8(a4)
	flw	fa4, 28(sp)	# restore
	fsub	fa3, fa4, fa3
	bnei	a0, 1, .solve_each_element_else_20
	flw	fa5, 0(a5)
	fabs	fa0, fa0
	fle	a0, fa5, fa0
	bne	a0, zero, .solve_each_element_else_22
	flw	fa0, 4(a5)
	fabs	fa2, fa2
	fle	a0, fa0, fa2
	bne	a0, zero, .solve_each_element_else_24
	flw	fa0, 8(a5)
	fabs	fa2, fa3
	fle	a0, fa0, fa2
	xori	a0, a0, 1
	b	.solve_each_element_cont_23
.solve_each_element_else_24:
	li	a0, 0
	b	.solve_each_element_cont_23
.solve_each_element_else_22:
	li	a0, 0
.solve_each_element_cont_23:
	bne	a0, zero, .solve_each_element_else_26
	xori	a0, a3, 1
	b	.solve_each_element_cont_21
.solve_each_element_else_26:
	mv	a0, a3
	b	.solve_each_element_cont_21
.solve_each_element_else_20:
	bnei	a0, 2, .solve_each_element_else_28
	flw	fa5, 0(a5)
	fmul	fa0, fa5, fa0
	flw	fa5, 4(a5)
	fmul	fa2, fa5, fa2
	fadd	fa0, fa0, fa2
	flw	fa2, 8(a5)
	fmul	fa2, fa2, fa3
	fadd	fa0, fa0, fa2
	fle	a0, fzero, fa0
	xori	a0, a0, 1
	xor	a0, a3, a0
	xori	a0, a0, 1
	b	.solve_each_element_cont_29
.solve_each_element_else_28:
	fmul	fa5, fa0, fa0
	flw	fa6, 0(a5)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	flw	fa7, 4(a5)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa3, fa3
	flw	fa7, 8(a5)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	bne	a6, zero, .solve_each_element_else_30
	fmv	fa0, fa5
	b	.solve_each_element_cont_31
.solve_each_element_else_30:
	fmul	fa6, fa2, fa3
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa3, fa3, fa0
	flw	fa6, 4(a2)
	fmul	fa3, fa3, fa6
	fadd	fa3, fa5, fa3
	fmul	fa0, fa0, fa2
	flw	fa2, 8(a2)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa3, fa0
.solve_each_element_cont_31:
	bnei	a0, 3, .solve_each_element_cont_32
	fli	fa2, l_data_5
	fsub	fa0, fa0, fa2
.solve_each_element_cont_32:
	fle	a0, fzero, fa0
	xori	a0, a0, 1
	xor	a0, a3, a0
	xori	a0, a0, 1
.solve_each_element_cont_29:
.solve_each_element_cont_21:
	bne	a0, zero, .solve_each_element_else_33
	lw	a0, 8(a1)
	li	a2, -1
	bne	a0, a2, .solve_each_element_else_35
	li	a0, 1
	b	.solve_each_element_cont_17
.solve_each_element_else_35:
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	flw	fa0, 36(sp)	# restore
	fmv	fa2, fa4
	call	is_outside_2859
	bne	a0, zero, .solve_each_element_else_37
	li	a0, 3
	flw	fa0, 36(sp)	# restore
	flw	fa1, 32(sp)	# restore
	flw	fa2, 28(sp)	# restore
	lw	a1, 12(sp)	# restore
	call	check_all_inside_2864
	b	.solve_each_element_cont_17
.solve_each_element_else_37:
	li	a0, 0
	b	.solve_each_element_cont_17
.solve_each_element_else_33:
	li	a0, 0
	b	.solve_each_element_cont_17
.solve_each_element_else_16:
	li	a0, 0
.solve_each_element_cont_17:
.solve_each_element_cont_15:
	beq	a0, zero, .solve_each_element_cont_39
	lw	a0, 20(sp)	# restore
	flw	fa0, 40(sp)	# restore
	fsw	fa0, 0(a0)
	lda	a0, min_caml_intersection_point
	flw	fa0, 36(sp)	# restore
	fsw	fa0, 0(a0)
	flw	fa0, 32(sp)	# restore
	fsw	fa0, 4(a0)
	flw	fa0, 28(sp)	# restore
	fsw	fa0, 8(a0)
	lda	a0, min_caml_intersected_object_id
	lw	a1, 16(sp)	# restore
	sw	a1, 0(a0)
	lda	a0, min_caml_intsec_rectside
	lw	a1, 24(sp)	# restore
	sw	a1, 0(a0)
.solve_each_element_cont_39:
.solve_each_element_cont_13:
.solve_each_element_cont_12:
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 12(sp)	# restore
	lw	a2, 8(sp)	# restore
	call	solve_each_element_2879
solve_each_element_ret:
	lw	ra, 44(sp)
	addi	sp, sp, 48
	jr	ra
solve_one_or_network_2883:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	slli	a3, a0, 2
	add	t6, a1, a3
	lw	a3, 0(t6)
	li	a4, -1
	bne	a3, a4, .solve_one_or_network_else_1
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
	call	solve_each_element_2879
	lw	a0, 4(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .solve_one_or_network_else_3
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_else_3:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 12(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 12(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .solve_one_or_network_else_5
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_else_5:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 16(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 16(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .solve_one_or_network_else_7
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_else_7:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 20(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 20(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .solve_one_or_network_else_9
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_else_9:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 24(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 24(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .solve_one_or_network_else_11
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_else_11:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 28(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 28(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .solve_one_or_network_else_13
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_else_13:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 32(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 32(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .solve_one_or_network_else_15
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_else_15:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 36(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 36(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 0(sp)	# restore
	lw	a2, 8(sp)	# restore
	call	solve_one_or_network_2883
solve_one_or_network_ret:
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
trace_or_matrix_2887:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	slli	a3, a0, 2
	add	t6, a1, a3
	lw	a3, 0(t6)
	lw	a4, 0(a3)
	li	a5, -1
	bne	a4, a5, .trace_or_matrix_else_1
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
	li	a5, -1
	beq	a4, a5, .trace_or_matrix_cont_4
	slli	a4, a4, 2
	lwl	a1, min_caml_and_net(a4)
	li	a0, 0
	sw	a3, 12(sp)	# save
	call	solve_each_element_2879
	lw	a0, 12(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 12(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 12(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 12(sp)	# restore
	lw	a1, 20(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 12(sp)	# restore
	lw	a1, 24(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 12(sp)	# restore
	lw	a1, 28(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	li	a0, 8
	lw	a1, 12(sp)	# restore
	lw	a2, 0(sp)	# restore
	call	solve_one_or_network_2883
	b	.trace_or_matrix_cont_4
.trace_or_matrix_else_3:
	lda	a5, min_caml_startp
	slli	a4, a4, 2
	lwl	a0, min_caml_objects(a4)
	flw	fa0, 0(a5)
	lw	a4, 20(a0)
	lw	a6, 16(a0)
	lw	a7, 4(a0)
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	flw	fa1, 4(a5)
	flw	fa2, 4(a4)
	fsub	fa1, fa1, fa2
	flw	fa2, 8(a5)
	flw	fa3, 8(a4)
	fsub	fa2, fa2, fa3
	sw	a3, 12(sp)	# save
	bnei	a7, 1, .trace_or_matrix_else_12
	mv	a1, a2
	call	solver_rect_2750
	b	.trace_or_matrix_cont_13
.trace_or_matrix_else_12:
	bnei	a7, 2, .trace_or_matrix_else_14
	flw	fa3, 0(a2)
	flw	fa4, 0(a6)
	fmul	fa3, fa3, fa4
	flw	fa4, 4(a2)
	flw	fa5, 4(a6)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	flw	fa4, 8(a2)
	flw	fa5, 8(a6)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fle	a0, fa3, fzero
	bne	a0, zero, .trace_or_matrix_else_16
	lda	a0, min_caml_solver_dist
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
	fsw	fa0, 0(a0)
	li	a0, 1
	b	.trace_or_matrix_cont_15
.trace_or_matrix_else_16:
	li	a0, 0
	b	.trace_or_matrix_cont_15
.trace_or_matrix_else_14:
	mv	a1, a2
	call	solver_second_2775
.trace_or_matrix_cont_15:
.trace_or_matrix_cont_13:
	beq	a0, zero, .trace_or_matrix_cont_18
	lda	a0, min_caml_solver_dist
	flw	fa0, 0(a0)
	lda	a0, min_caml_tmin
	flw	fa1, 0(a0)
	fle	a0, fa1, fa0
	bne	a0, zero, .trace_or_matrix_cont_19
	lw	a0, 12(sp)	# restore
	lw	a1, 4(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_20
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 12(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_21
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 12(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_22
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 12(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_23
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 12(sp)	# restore
	lw	a1, 20(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_24
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 12(sp)	# restore
	lw	a1, 24(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_25
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 12(sp)	# restore
	lw	a1, 28(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_26
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	li	a0, 8
	lw	a1, 12(sp)	# restore
	lw	a2, 0(sp)	# restore
	call	solve_one_or_network_2883
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
	li	a3, -1
	bne	a0, a3, .trace_or_matrix_else_27
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
.trace_or_matrix_else_27:
	li	a3, 99
	bne	a0, a3, .trace_or_matrix_else_29
	lw	a0, 4(a1)
	li	a3, -1
	beq	a0, a3, .trace_or_matrix_cont_30
	slli	a0, a0, 2
	sw	a1, 20(sp)	# save
	lwl	a1, min_caml_and_net(a0)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 20(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_30
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 20(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_30
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 20(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_30
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 20(sp)	# restore
	lw	a1, 20(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_30
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 20(sp)	# restore
	lw	a1, 24(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_30
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	li	a0, 7
	lw	a1, 20(sp)	# restore
	lw	a2, 0(sp)	# restore
	call	solve_one_or_network_2883
	b	.trace_or_matrix_cont_30
.trace_or_matrix_else_29:
	lda	a2, min_caml_startp
	sw	a1, 20(sp)	# save
	lw	a1, 0(sp)	# restore
	call	solver_2781
	beq	a0, zero, .trace_or_matrix_cont_37
	lda	a0, min_caml_solver_dist
	flw	fa0, 0(a0)
	lda	a0, min_caml_tmin
	flw	fa1, 0(a0)
	fle	a0, fa1, fa0
	bne	a0, zero, .trace_or_matrix_cont_38
	lw	a0, 20(sp)	# restore
	lw	a1, 4(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_39
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 20(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_40
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 20(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_41
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 20(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_42
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 20(sp)	# restore
	lw	a1, 20(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_43
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	lw	a0, 20(sp)	# restore
	lw	a1, 24(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_cont_44
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_2879
	li	a0, 7
	lw	a1, 20(sp)	# restore
	lw	a2, 0(sp)	# restore
	call	solve_one_or_network_2883
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
	call	trace_or_matrix_2887
trace_or_matrix_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
solve_each_element_fast_2893:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	lw	a3, 4(a2)
	lw	a4, 0(a2)
	slli	a5, a0, 2
	add	t6, a1, a5
	lw	a5, 0(t6)
	li	a6, -1
	bne	a5, a6, .solve_each_element_fast_else_1
	lw	ra, 44(sp)
	addi	sp, sp, 48
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
	call	solver_rect_fast_2785
	b	.solve_each_element_fast_cont_4
.solve_each_element_fast_else_3:
	bnei	s1, 2, .solve_each_element_fast_else_5
	flw	fa0, 0(a2)
	fle	a0, fzero, fa0
	bne	a0, zero, .solve_each_element_fast_else_7
	lda	a0, min_caml_solver_dist
	flw	fa0, 0(a2)
	flw	fa1, 12(a6)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	li	a0, 1
	b	.solve_each_element_fast_cont_6
.solve_each_element_fast_else_7:
	li	a0, 0
	b	.solve_each_element_fast_cont_6
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
	lda	a0, min_caml_solver_dist
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	flw	fa1, 16(a2)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	b	.solve_each_element_fast_cont_14
.solve_each_element_fast_else_13:
	lda	a0, min_caml_solver_dist
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 16(a2)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
.solve_each_element_fast_cont_14:
	li	a0, 1
	b	.solve_each_element_fast_cont_10
.solve_each_element_fast_else_11:
	li	a0, 0
	b	.solve_each_element_fast_cont_10
.solve_each_element_fast_else_9:
	li	a0, 0
.solve_each_element_fast_cont_10:
.solve_each_element_fast_cont_6:
.solve_each_element_fast_cont_4:
	bne	a0, zero, .solve_each_element_fast_else_15
	lw	a0, 16(sp)	# restore
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	lw	a0, 24(a0)
	bne	a0, zero, .solve_each_element_fast_else_16
	lw	ra, 44(sp)
	addi	sp, sp, 48
	jr	ra
.solve_each_element_fast_else_16:
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 12(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	solve_each_element_fast_2893
	lw	ra, 44(sp)
	addi	sp, sp, 48
	jr	ra
.solve_each_element_fast_else_15:
	lda	a1, min_caml_solver_dist
	flw	fa0, 0(a1)
	fle	a1, fa0, fzero
	bne	a1, zero, .solve_each_element_fast_cont_18
	lda	a1, min_caml_tmin
	flw	fa1, 0(a1)
	fle	a2, fa1, fa0
	bne	a2, zero, .solve_each_element_fast_cont_19
	fli	fa1, l_data_8
	fadd	fa0, fa0, fa1
	lw	a2, 8(sp)	# restore
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	lda	a3, min_caml_startp_fast
	flw	fa2, 0(a3)
	fadd	fa1, fa1, fa2
	flw	fa2, 4(a2)
	fmul	fa2, fa2, fa0
	flw	fa3, 4(a3)
	fadd	fa2, fa2, fa3
	flw	fa3, 8(a2)
	fmul	fa3, fa3, fa0
	flw	fa4, 8(a3)
	fadd	fa3, fa3, fa4
	sw	a1, 20(sp)	# save
	lw	a1, 12(sp)	# restore
	lw	a2, 0(a1)
	li	a3, -1
	sw	a0, 24(sp)	# save
	fsw	fa3, 28(sp)	# save
	fsw	fa2, 32(sp)	# save
	fsw	fa1, 36(sp)	# save
	fsw	fa0, 40(sp)	# save
	bne	a2, a3, .solve_each_element_fast_else_20
	li	a0, 1
	b	.solve_each_element_fast_cont_21
.solve_each_element_fast_else_20:
	slli	a2, a2, 2
	lwl	a0, min_caml_objects(a2)
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	call	is_outside_2859
	bne	a0, zero, .solve_each_element_fast_else_22
	lw	a1, 12(sp)	# restore
	lw	a0, 4(a1)
	li	a2, -1
	bne	a0, a2, .solve_each_element_fast_else_24
	li	a0, 1
	b	.solve_each_element_fast_cont_23
.solve_each_element_fast_else_24:
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	lw	a2, 36(a0)
	lw	a3, 24(a0)
	lw	a4, 20(a0)
	lw	a5, 16(a0)
	lw	a6, 12(a0)
	lw	a0, 4(a0)
	flw	fa0, 0(a4)
	flw	fa1, 36(sp)	# restore
	fsub	fa0, fa1, fa0
	flw	fa2, 4(a4)
	flw	fa1, 32(sp)	# restore
	fsub	fa2, fa1, fa2
	flw	fa3, 8(a4)
	flw	fa4, 28(sp)	# restore
	fsub	fa3, fa4, fa3
	bnei	a0, 1, .solve_each_element_fast_else_26
	flw	fa5, 0(a5)
	fabs	fa0, fa0
	fle	a0, fa5, fa0
	bne	a0, zero, .solve_each_element_fast_else_28
	flw	fa0, 4(a5)
	fabs	fa2, fa2
	fle	a0, fa0, fa2
	bne	a0, zero, .solve_each_element_fast_else_30
	flw	fa0, 8(a5)
	fabs	fa2, fa3
	fle	a0, fa0, fa2
	xori	a0, a0, 1
	b	.solve_each_element_fast_cont_29
.solve_each_element_fast_else_30:
	li	a0, 0
	b	.solve_each_element_fast_cont_29
.solve_each_element_fast_else_28:
	li	a0, 0
.solve_each_element_fast_cont_29:
	bne	a0, zero, .solve_each_element_fast_else_32
	xori	a0, a3, 1
	b	.solve_each_element_fast_cont_27
.solve_each_element_fast_else_32:
	mv	a0, a3
	b	.solve_each_element_fast_cont_27
.solve_each_element_fast_else_26:
	bnei	a0, 2, .solve_each_element_fast_else_34
	flw	fa5, 0(a5)
	fmul	fa0, fa5, fa0
	flw	fa5, 4(a5)
	fmul	fa2, fa5, fa2
	fadd	fa0, fa0, fa2
	flw	fa2, 8(a5)
	fmul	fa2, fa2, fa3
	fadd	fa0, fa0, fa2
	fle	a0, fzero, fa0
	xori	a0, a0, 1
	xor	a0, a3, a0
	xori	a0, a0, 1
	b	.solve_each_element_fast_cont_35
.solve_each_element_fast_else_34:
	fmul	fa5, fa0, fa0
	flw	fa6, 0(a5)
	fmul	fa5, fa5, fa6
	fmul	fa6, fa2, fa2
	flw	fa7, 4(a5)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa6, fa3, fa3
	flw	fa7, 8(a5)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	bne	a6, zero, .solve_each_element_fast_else_36
	fmv	fa0, fa5
	b	.solve_each_element_fast_cont_37
.solve_each_element_fast_else_36:
	fmul	fa6, fa2, fa3
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	fmul	fa3, fa3, fa0
	flw	fa6, 4(a2)
	fmul	fa3, fa3, fa6
	fadd	fa3, fa5, fa3
	fmul	fa0, fa0, fa2
	flw	fa2, 8(a2)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa3, fa0
.solve_each_element_fast_cont_37:
	bnei	a0, 3, .solve_each_element_fast_cont_38
	fli	fa2, l_data_5
	fsub	fa0, fa0, fa2
.solve_each_element_fast_cont_38:
	fle	a0, fzero, fa0
	xori	a0, a0, 1
	xor	a0, a3, a0
	xori	a0, a0, 1
.solve_each_element_fast_cont_35:
.solve_each_element_fast_cont_27:
	bne	a0, zero, .solve_each_element_fast_else_39
	lw	a0, 8(a1)
	li	a2, -1
	bne	a0, a2, .solve_each_element_fast_else_41
	li	a0, 1
	b	.solve_each_element_fast_cont_23
.solve_each_element_fast_else_41:
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	flw	fa0, 36(sp)	# restore
	fmv	fa2, fa4
	call	is_outside_2859
	bne	a0, zero, .solve_each_element_fast_else_43
	li	a0, 3
	flw	fa0, 36(sp)	# restore
	flw	fa1, 32(sp)	# restore
	flw	fa2, 28(sp)	# restore
	lw	a1, 12(sp)	# restore
	call	check_all_inside_2864
	b	.solve_each_element_fast_cont_23
.solve_each_element_fast_else_43:
	li	a0, 0
	b	.solve_each_element_fast_cont_23
.solve_each_element_fast_else_39:
	li	a0, 0
	b	.solve_each_element_fast_cont_23
.solve_each_element_fast_else_22:
	li	a0, 0
.solve_each_element_fast_cont_23:
.solve_each_element_fast_cont_21:
	beq	a0, zero, .solve_each_element_fast_cont_45
	lw	a0, 20(sp)	# restore
	flw	fa0, 40(sp)	# restore
	fsw	fa0, 0(a0)
	lda	a0, min_caml_intersection_point
	flw	fa0, 36(sp)	# restore
	fsw	fa0, 0(a0)
	flw	fa0, 32(sp)	# restore
	fsw	fa0, 4(a0)
	flw	fa0, 28(sp)	# restore
	fsw	fa0, 8(a0)
	lda	a0, min_caml_intersected_object_id
	lw	a1, 16(sp)	# restore
	sw	a1, 0(a0)
	lda	a0, min_caml_intsec_rectside
	lw	a1, 24(sp)	# restore
	sw	a1, 0(a0)
.solve_each_element_fast_cont_45:
.solve_each_element_fast_cont_19:
.solve_each_element_fast_cont_18:
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 12(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	solve_each_element_fast_2893
solve_each_element_fast_ret:
	lw	ra, 44(sp)
	addi	sp, sp, 48
	jr	ra
solve_one_or_network_fast_2897:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	slli	a3, a0, 2
	add	t6, a1, a3
	lw	a3, 0(t6)
	li	a4, -1
	bne	a3, a4, .solve_one_or_network_fast_else_1
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
	call	solve_each_element_fast_2893
	lw	a0, 4(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .solve_one_or_network_fast_else_3
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_fast_else_3:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 12(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 12(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .solve_one_or_network_fast_else_5
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_fast_else_5:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 16(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 16(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .solve_one_or_network_fast_else_7
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_fast_else_7:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 20(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 20(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .solve_one_or_network_fast_else_9
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_fast_else_9:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 24(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 24(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .solve_one_or_network_fast_else_11
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_fast_else_11:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 28(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 28(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .solve_one_or_network_fast_else_13
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_fast_else_13:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 32(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 32(sp)	# restore
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, -1
	bne	a1, a3, .solve_one_or_network_fast_else_15
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.solve_one_or_network_fast_else_15:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	sw	a0, 36(sp)	# save
	li	a0, 0
	lw	a2, 8(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 36(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 0(sp)	# restore
	lw	a2, 8(sp)	# restore
	call	solve_one_or_network_fast_2897
solve_one_or_network_fast_ret:
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
trace_or_matrix_fast_2901:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	slli	a3, a0, 2
	add	t6, a1, a3
	lw	a3, 0(t6)
	lw	a4, 0(a3)
	li	a5, -1
	bne	a4, a5, .trace_or_matrix_fast_else_1
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
	li	a5, -1
	beq	a4, a5, .trace_or_matrix_fast_cont_4
	slli	a4, a4, 2
	lwl	a1, min_caml_and_net(a4)
	li	a0, 0
	sw	a3, 12(sp)	# save
	call	solve_each_element_fast_2893
	lw	a0, 12(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 12(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 12(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 12(sp)	# restore
	lw	a1, 20(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 12(sp)	# restore
	lw	a1, 24(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 12(sp)	# restore
	lw	a1, 28(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_4
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	li	a0, 8
	lw	a1, 12(sp)	# restore
	lw	a2, 0(sp)	# restore
	call	solve_one_or_network_fast_2897
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
	call	solver_rect_fast_2785
	b	.trace_or_matrix_fast_cont_13
.trace_or_matrix_fast_else_12:
	bnei	a7, 2, .trace_or_matrix_fast_else_14
	flw	fa0, 0(a2)
	fle	a0, fzero, fa0
	bne	a0, zero, .trace_or_matrix_fast_else_16
	lda	a0, min_caml_solver_dist
	flw	fa0, 0(a2)
	flw	fa1, 12(a5)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	li	a0, 1
	b	.trace_or_matrix_fast_cont_15
.trace_or_matrix_fast_else_16:
	li	a0, 0
	b	.trace_or_matrix_fast_cont_15
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
	lda	a0, min_caml_solver_dist
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	flw	fa1, 16(a2)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	b	.trace_or_matrix_fast_cont_23
.trace_or_matrix_fast_else_22:
	lda	a0, min_caml_solver_dist
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 16(a2)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
.trace_or_matrix_fast_cont_23:
	li	a0, 1
	b	.trace_or_matrix_fast_cont_19
.trace_or_matrix_fast_else_20:
	li	a0, 0
	b	.trace_or_matrix_fast_cont_19
.trace_or_matrix_fast_else_18:
	li	a0, 0
.trace_or_matrix_fast_cont_19:
.trace_or_matrix_fast_cont_15:
.trace_or_matrix_fast_cont_13:
	beq	a0, zero, .trace_or_matrix_fast_cont_24
	lda	a0, min_caml_solver_dist
	flw	fa0, 0(a0)
	lda	a0, min_caml_tmin
	flw	fa1, 0(a0)
	fle	a0, fa1, fa0
	bne	a0, zero, .trace_or_matrix_fast_cont_25
	lw	a0, 12(sp)	# restore
	lw	a1, 4(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_26
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 12(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_27
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 12(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_28
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 12(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_29
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 12(sp)	# restore
	lw	a1, 20(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_30
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 12(sp)	# restore
	lw	a1, 24(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_31
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 12(sp)	# restore
	lw	a1, 28(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_32
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	li	a0, 8
	lw	a1, 12(sp)	# restore
	lw	a2, 0(sp)	# restore
	call	solve_one_or_network_fast_2897
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
	li	a3, -1
	bne	a0, a3, .trace_or_matrix_fast_else_33
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
.trace_or_matrix_fast_else_33:
	li	a3, 99
	bne	a0, a3, .trace_or_matrix_fast_else_35
	lw	a0, 4(a1)
	li	a3, -1
	beq	a0, a3, .trace_or_matrix_fast_cont_36
	slli	a0, a0, 2
	sw	a1, 20(sp)	# save
	lwl	a1, min_caml_and_net(a0)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 20(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_36
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 20(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_36
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 20(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_36
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 20(sp)	# restore
	lw	a1, 20(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_36
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 20(sp)	# restore
	lw	a1, 24(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_36
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	li	a0, 7
	lw	a1, 20(sp)	# restore
	lw	a2, 0(sp)	# restore
	call	solve_one_or_network_fast_2897
	b	.trace_or_matrix_fast_cont_36
.trace_or_matrix_fast_else_35:
	sw	a1, 20(sp)	# save
	lw	a1, 0(sp)	# restore
	call	solver_fast2_2822
	beq	a0, zero, .trace_or_matrix_fast_cont_43
	lda	a0, min_caml_solver_dist
	flw	fa0, 0(a0)
	lda	a0, min_caml_tmin
	flw	fa1, 0(a0)
	fle	a0, fa1, fa0
	bne	a0, zero, .trace_or_matrix_fast_cont_44
	lw	a0, 20(sp)	# restore
	lw	a1, 4(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_45
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 20(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_46
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 20(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_47
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 20(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_48
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 20(sp)	# restore
	lw	a1, 20(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_49
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 20(sp)	# restore
	lw	a1, 24(a0)
	li	a2, -1
	beq	a1, a2, .trace_or_matrix_fast_cont_50
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 0(sp)	# restore
	call	solve_each_element_fast_2893
	li	a0, 7
	lw	a1, 20(sp)	# restore
	lw	a2, 0(sp)	# restore
	call	solve_one_or_network_fast_2897
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
	call	trace_or_matrix_fast_2901
trace_or_matrix_fast_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
get_nvector_second_2911:
	lda	a1, min_caml_intersection_point
	flw	fa0, 0(a1)
	lw	a2, 36(a0)
	lw	a3, 24(a0)
	lw	a4, 20(a0)
	lw	a5, 16(a0)
	lw	a0, 12(a0)
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	flw	fa1, 4(a1)
	flw	fa2, 4(a4)
	fsub	fa1, fa1, fa2
	flw	fa2, 8(a1)
	flw	fa3, 8(a4)
	fsub	fa2, fa2, fa3
	flw	fa3, 0(a5)
	fmul	fa3, fa0, fa3
	flw	fa4, 4(a5)
	fmul	fa4, fa1, fa4
	flw	fa5, 8(a5)
	fmul	fa5, fa2, fa5
	bne	a0, zero, .get_nvector_second_else_1
	lda	a0, min_caml_nvector
	fsw	fa3, 0(a0)
	fsw	fa4, 4(a0)
	fsw	fa5, 8(a0)
	b	.get_nvector_second_cont_2
.get_nvector_second_else_1:
	lda	a0, min_caml_nvector
	flw	fa6, 8(a2)
	fmul	fa6, fa1, fa6
	flw	fa7, 4(a2)
	fmul	fa7, fa2, fa7
	fadd	fa6, fa6, fa7
	fli	fa7, l_data_4
	fdiv	fa6, fa6, fa7
	fadd	fa3, fa3, fa6
	fsw	fa3, 0(a0)
	flw	fa3, 8(a2)
	fmul	fa3, fa0, fa3
	flw	fa6, 0(a2)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa3, fa2
	fdiv	fa2, fa2, fa7
	fadd	fa2, fa4, fa2
	fsw	fa2, 4(a0)
	flw	fa2, 4(a2)
	fmul	fa0, fa0, fa2
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fdiv	fa0, fa0, fa7
	fadd	fa0, fa5, fa0
	fsw	fa0, 8(a0)
.get_nvector_second_cont_2:
	lda	a0, min_caml_nvector
	flw	fa0, 0(a0)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a0)
	flw	fa2, 4(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	flw	fa2, 8(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	feq	a1, fa0, fzero
	bne	a1, zero, .get_nvector_second_else_3
	bne	a3, zero, .get_nvector_second_else_5
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
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fmul	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fmul	fa0, fa1, fa0
	fsw	fa0, 8(a0)
get_nvector_second_ret:
	jr	ra
utexture_2916:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	lw	a2, 32(a0)
	lw	a3, 20(a0)
	lw	a4, 16(a0)
	lw	a0, 0(a0)
	lda	a5, min_caml_texture_color
	flw	fa0, 0(a2)
	fsw	fa0, 0(a5)
	flw	fa0, 4(a2)
	fsw	fa0, 4(a5)
	flw	fa0, 8(a2)
	fsw	fa0, 8(a5)
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
	fsw	fa0, 4(a5)
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
	fsw	fa2, 0(a5)
	fli	fa2, l_data_5
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a5)
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
	fsw	fa2, 4(a5)
	fli	fa2, l_data_5
	fsub	fa0, fa2, fa0
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a5)
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
	b	.utexture_cont_14
.utexture_else_13:
	fdiv	fa0, fa1, fa0
	fabs	fa0, fa0
	call	min_caml_atan
	fli	fa1, l_data_11
	fmul	fa0, fa0, fa1
	fli	fa1, l_data_12
	fdiv	fa0, fa0, fa1
.utexture_cont_14:
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
	fsw	fa0, 8(a5)
utexture_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
add_light_2919:
	fle	a0, fa0, fzero
	bne	a0, zero, .add_light_cont_1
	lda	a0, min_caml_rgb
	lda	a1, min_caml_texture_color
	flw	fa3, 0(a0)
	flw	fa4, 0(a1)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	fsw	fa3, 0(a0)
	flw	fa3, 4(a0)
	flw	fa4, 4(a1)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	fsw	fa3, 4(a0)
	flw	fa3, 8(a0)
	flw	fa4, 8(a1)
	fmul	fa0, fa0, fa4
	fadd	fa0, fa3, fa0
	fsw	fa0, 8(a0)
.add_light_cont_1:
	fle	a0, fa1, fzero
	bne	a0, zero, add_light_ret
	fmul	fa0, fa1, fa1
	fmul	fa0, fa0, fa0
	fmul	fa0, fa0, fa2
	lda	a0, min_caml_rgb
	flw	fa1, 0(a0)
	fadd	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fadd	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fadd	fa0, fa1, fa0
	fsw	fa0, 8(a0)
add_light_ret:
	jr	ra
trace_reflections_2923:
	addi	sp, sp, -80
	sw	ra, 76(sp)
	blt	a0, zero, trace_reflections_ret
	slli	a2, a0, 2
	lwl	a2, min_caml_reflections(a2)
	flw	fa2, 8(a2)
	lw	a3, 4(a2)
	lw	a2, 0(a2)
	lda	a4, min_caml_tmin
	fli	fa3, l_data_22
	fsw	fa3, 0(a4)
	sw	a0, 0(sp)	# save
	li	a0, 0
	lda	a5, min_caml_or_net
	sw	a1, 4(sp)	# save
	lw	a1, 0(a5)
	fsw	fa3, 8(sp)	# save
	fsw	fa1, 12(sp)	# save
	fsw	fa0, 16(sp)	# save
	fsw	fa2, 20(sp)	# save
	sw	a3, 24(sp)	# save
	sw	a5, 28(sp)	# save
	sw	a2, 32(sp)	# save
	sw	a4, 36(sp)	# save
	mv	a2, a3
	call	trace_or_matrix_fast_2901
	lw	a0, 36(sp)	# restore
	flw	fa0, 0(a0)
	fli	fa1, l_data_9
	fle	a1, fa0, fa1
	bne	a1, zero, .trace_reflections_else_1
	fli	fa2, l_data_23
	fle	a1, fa2, fa0
	xori	a1, a1, 1
	b	.trace_reflections_cont_2
.trace_reflections_else_1:
	li	a1, 0
.trace_reflections_cont_2:
	fsw	fa1, 40(sp)	# save
	beq	a1, zero, .trace_reflections_cont_3
	lda	a1, min_caml_intersected_object_id
	lw	a1, 0(a1)
	slli	a1, a1, 2
	lda	a2, min_caml_intsec_rectside
	lw	a2, 0(a2)
	add	a1, a1, a2
	lw	a2, 32(sp)	# restore
	bne	a1, a2, .trace_reflections_cont_4
	lw	a1, 28(sp)	# restore
	lw	a1, 0(a1)
	lw	a2, 0(a1)
	lw	a0, 0(a2)
	li	a3, -1
	bne	a0, a3, .trace_reflections_else_5
	li	a0, 0
	b	.trace_reflections_cont_6
.trace_reflections_else_5:
	li	a3, 99
	sw	a2, 44(sp)	# save
	sw	a1, 48(sp)	# save
	bne	a0, a3, .trace_reflections_else_7
	li	a0, 1
	b	.trace_reflections_cont_8
.trace_reflections_else_7:
	lda	a1, min_caml_light_dirvec
	lda	a2, min_caml_intersection_point
	call	solver_fast_2804
	bne	a0, zero, .trace_reflections_else_9
	li	a0, 0
	b	.trace_reflections_cont_10
.trace_reflections_else_9:
	lda	a0, min_caml_solver_dist
	flw	fa0, 0(a0)
	flw	fa1, 40(sp)	# restore
	fle	a0, fa1, fa0
	bne	a0, zero, .trace_reflections_else_11
	lw	a0, 44(sp)	# restore
	lw	a1, 4(a0)
	li	a2, -1
	bne	a1, a2, .trace_reflections_else_13
	li	a0, 0
	b	.trace_reflections_cont_14
.trace_reflections_else_13:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_reflections_else_15
	lw	a0, 44(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	bne	a1, a2, .trace_reflections_else_17
	li	a0, 0
	b	.trace_reflections_cont_16
.trace_reflections_else_17:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_reflections_else_19
	lw	a0, 44(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	bne	a1, a2, .trace_reflections_else_21
	li	a0, 0
	b	.trace_reflections_cont_16
.trace_reflections_else_21:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_reflections_else_23
	lw	a0, 44(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	bne	a1, a2, .trace_reflections_else_25
	li	a0, 0
	b	.trace_reflections_cont_16
.trace_reflections_else_25:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_reflections_else_27
	lw	a0, 44(sp)	# restore
	lw	a1, 20(a0)
	li	a2, -1
	bne	a1, a2, .trace_reflections_else_29
	li	a0, 0
	b	.trace_reflections_cont_16
.trace_reflections_else_29:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_reflections_else_31
	lw	a0, 44(sp)	# restore
	lw	a1, 24(a0)
	li	a2, -1
	bne	a1, a2, .trace_reflections_else_33
	li	a0, 0
	b	.trace_reflections_cont_16
.trace_reflections_else_33:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_reflections_else_35
	li	a0, 7
	lw	a1, 44(sp)	# restore
	call	shadow_check_one_or_group_2873
	b	.trace_reflections_cont_16
.trace_reflections_else_35:
	li	a0, 1
	b	.trace_reflections_cont_16
.trace_reflections_else_31:
	li	a0, 1
	b	.trace_reflections_cont_16
.trace_reflections_else_27:
	li	a0, 1
	b	.trace_reflections_cont_16
.trace_reflections_else_23:
	li	a0, 1
	b	.trace_reflections_cont_16
.trace_reflections_else_19:
	li	a0, 1
	b	.trace_reflections_cont_16
.trace_reflections_else_15:
	li	a0, 1
.trace_reflections_cont_16:
.trace_reflections_cont_14:
	bne	a0, zero, .trace_reflections_else_37
	li	a0, 0
	b	.trace_reflections_cont_12
.trace_reflections_else_37:
	li	a0, 1
	b	.trace_reflections_cont_12
.trace_reflections_else_11:
	li	a0, 0
.trace_reflections_cont_12:
.trace_reflections_cont_10:
.trace_reflections_cont_8:
	bne	a0, zero, .trace_reflections_else_39
	li	a0, 1
	lw	a1, 48(sp)	# restore
	call	shadow_check_one_or_matrix_2876
	b	.trace_reflections_cont_40
.trace_reflections_else_39:
	lw	a0, 44(sp)	# restore
	lw	a1, 4(a0)
	li	a2, -1
	bne	a1, a2, .trace_reflections_else_41
	li	a0, 0
	b	.trace_reflections_cont_42
.trace_reflections_else_41:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_reflections_else_43
	lw	a0, 44(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	bne	a1, a2, .trace_reflections_else_45
	li	a0, 0
	b	.trace_reflections_cont_44
.trace_reflections_else_45:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_reflections_else_47
	lw	a0, 44(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	bne	a1, a2, .trace_reflections_else_49
	li	a0, 0
	b	.trace_reflections_cont_44
.trace_reflections_else_49:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_reflections_else_51
	lw	a0, 44(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	bne	a1, a2, .trace_reflections_else_53
	li	a0, 0
	b	.trace_reflections_cont_44
.trace_reflections_else_53:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_reflections_else_55
	lw	a0, 44(sp)	# restore
	lw	a1, 20(a0)
	li	a2, -1
	bne	a1, a2, .trace_reflections_else_57
	li	a0, 0
	b	.trace_reflections_cont_44
.trace_reflections_else_57:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_reflections_else_59
	lw	a0, 44(sp)	# restore
	lw	a1, 24(a0)
	li	a2, -1
	bne	a1, a2, .trace_reflections_else_61
	li	a0, 0
	b	.trace_reflections_cont_44
.trace_reflections_else_61:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_reflections_else_63
	li	a0, 7
	lw	a1, 44(sp)	# restore
	call	shadow_check_one_or_group_2873
	b	.trace_reflections_cont_44
.trace_reflections_else_63:
	li	a0, 1
	b	.trace_reflections_cont_44
.trace_reflections_else_59:
	li	a0, 1
	b	.trace_reflections_cont_44
.trace_reflections_else_55:
	li	a0, 1
	b	.trace_reflections_cont_44
.trace_reflections_else_51:
	li	a0, 1
	b	.trace_reflections_cont_44
.trace_reflections_else_47:
	li	a0, 1
	b	.trace_reflections_cont_44
.trace_reflections_else_43:
	li	a0, 1
.trace_reflections_cont_44:
.trace_reflections_cont_42:
	bne	a0, zero, .trace_reflections_else_65
	li	a0, 1
	lw	a1, 48(sp)	# restore
	call	shadow_check_one_or_matrix_2876
	b	.trace_reflections_cont_66
.trace_reflections_else_65:
	li	a0, 1
.trace_reflections_cont_66:
.trace_reflections_cont_40:
.trace_reflections_cont_6:
	bne	a0, zero, .trace_reflections_cont_67
	lda	a0, min_caml_nvector
	lw	a1, 24(sp)	# restore
	lw	a1, 0(a1)
	flw	fa0, 0(a0)
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a0)
	flw	fa2, 4(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	flw	fa2, 8(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 16(sp)	# restore
	flw	fa2, 20(sp)	# restore
	fmul	fa3, fa2, fa1
	fmul	fa0, fa3, fa0
	lw	a0, 4(sp)	# restore
	flw	fa3, 0(a0)
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	flw	fa4, 4(a0)
	flw	fa5, 4(a1)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	flw	fa4, 8(a0)
	flw	fa5, 8(a1)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa2, fa2, fa3
	fle	a1, fa0, fzero
	bne	a1, zero, .trace_reflections_cont_68
	lda	a1, min_caml_rgb
	lda	a2, min_caml_texture_color
	flw	fa3, 0(a1)
	flw	fa4, 0(a2)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	fsw	fa3, 0(a1)
	flw	fa3, 4(a1)
	flw	fa4, 4(a2)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	fsw	fa3, 4(a1)
	flw	fa3, 8(a1)
	flw	fa4, 8(a2)
	fmul	fa0, fa0, fa4
	fadd	fa0, fa3, fa0
	fsw	fa0, 8(a1)
.trace_reflections_cont_68:
	fle	a1, fa2, fzero
	bne	a1, zero, .trace_reflections_cont_69
	fmul	fa0, fa2, fa2
	fmul	fa0, fa0, fa0
	flw	fa1, 12(sp)	# restore
	fmul	fa0, fa0, fa1
	lda	a1, min_caml_rgb
	flw	fa2, 0(a1)
	fadd	fa2, fa2, fa0
	fsw	fa2, 0(a1)
	flw	fa2, 4(a1)
	fadd	fa2, fa2, fa0
	fsw	fa2, 4(a1)
	flw	fa2, 8(a1)
	fadd	fa0, fa2, fa0
	fsw	fa0, 8(a1)
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
	lw	a3, 36(sp)	# restore
	flw	fa1, 8(sp)	# restore
	fsw	fa1, 0(a3)
	sw	a1, 52(sp)	# save
	lw	a4, 28(sp)	# restore
	lw	a1, 0(a4)
	lw	a5, 0(a1)
	sw	a0, 56(sp)	# save
	lw	a0, 0(a5)
	li	a6, -1
	fsw	fa0, 60(sp)	# save
	sw	a2, 64(sp)	# save
	beq	a0, a6, .trace_reflections_cont_70
	li	a6, 99
	sw	a1, 68(sp)	# save
	bne	a0, a6, .trace_reflections_else_71
	lw	a0, 4(a5)
	li	a6, -1
	beq	a0, a6, .trace_reflections_cont_72
	slli	a0, a0, 2
	lwl	a1, min_caml_and_net(a0)
	li	a0, 0
	sw	a5, 72(sp)	# save
	call	solve_each_element_fast_2893
	lw	a0, 72(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	beq	a1, a2, .trace_reflections_cont_72
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 64(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 72(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	beq	a1, a2, .trace_reflections_cont_72
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 64(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 72(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	beq	a1, a2, .trace_reflections_cont_72
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 64(sp)	# restore
	call	solve_each_element_fast_2893
	li	a0, 5
	lw	a1, 72(sp)	# restore
	lw	a2, 64(sp)	# restore
	call	solve_one_or_network_fast_2897
	b	.trace_reflections_cont_72
.trace_reflections_else_71:
	sw	a5, 72(sp)	# save
	mv	a1, a2
	call	solver_fast2_2822
	beq	a0, zero, .trace_reflections_cont_77
	lda	a0, min_caml_solver_dist
	flw	fa0, 0(a0)
	lw	a0, 36(sp)	# restore
	flw	fa1, 0(a0)
	fle	a1, fa1, fa0
	bne	a1, zero, .trace_reflections_cont_78
	lw	a1, 72(sp)	# restore
	lw	a2, 4(a1)
	li	a3, -1
	beq	a2, a3, .trace_reflections_cont_79
	slli	a2, a2, 2
	lwl	a1, min_caml_and_net(a2)
	li	a0, 0
	lw	a2, 64(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 72(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	beq	a1, a2, .trace_reflections_cont_80
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 64(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 72(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	beq	a1, a2, .trace_reflections_cont_81
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 64(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 72(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	beq	a1, a2, .trace_reflections_cont_82
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 64(sp)	# restore
	call	solve_each_element_fast_2893
	li	a0, 5
	lw	a1, 72(sp)	# restore
	lw	a2, 64(sp)	# restore
	call	solve_one_or_network_fast_2897
.trace_reflections_cont_82:
.trace_reflections_cont_81:
.trace_reflections_cont_80:
.trace_reflections_cont_79:
.trace_reflections_cont_78:
.trace_reflections_cont_77:
.trace_reflections_cont_72:
	li	a0, 1
	lw	a1, 68(sp)	# restore
	lw	a2, 64(sp)	# restore
	call	trace_or_matrix_fast_2901
.trace_reflections_cont_70:
	lw	a0, 36(sp)	# restore
	flw	fa0, 0(a0)
	flw	fa1, 40(sp)	# restore
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
	lda	a0, min_caml_intersected_object_id
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lda	a1, min_caml_intsec_rectside
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, 52(sp)	# restore
	bne	a0, a1, .trace_reflections_cont_86
	li	a0, 0
	lw	a1, 28(sp)	# restore
	lw	a1, 0(a1)
	call	shadow_check_one_or_matrix_2876
	bne	a0, zero, .trace_reflections_cont_87
	lda	a0, min_caml_nvector
	lw	a1, 64(sp)	# restore
	lw	a1, 0(a1)
	flw	fa0, 0(a0)
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a0)
	flw	fa2, 4(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	flw	fa2, 8(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 16(sp)	# restore
	flw	fa2, 60(sp)	# restore
	fmul	fa3, fa2, fa1
	fmul	fa0, fa3, fa0
	lw	a0, 4(sp)	# restore
	flw	fa3, 0(a0)
	flw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	flw	fa4, 4(a0)
	flw	fa5, 4(a1)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	flw	fa4, 8(a0)
	flw	fa5, 8(a1)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa1, fa2, fa3
	flw	fa2, 12(sp)	# restore
	call	add_light_2919
.trace_reflections_cont_87:
.trace_reflections_cont_86:
.trace_reflections_cont_85:
	lw	a0, 56(sp)	# restore
	addi	a0, a0, -1
	flw	fa0, 16(sp)	# restore
	flw	fa1, 12(sp)	# restore
	lw	a1, 4(sp)	# restore
	call	trace_reflections_2923
trace_reflections_ret:
	lw	ra, 76(sp)
	addi	sp, sp, 80
	jr	ra
trace_ray_2928:
	addi	sp, sp, -132
	sw	ra, 128(sp)
	bgti	a0, 4, trace_ray_ret
	lw	a3, 28(a2)
	lw	a4, 16(a2)
	lw	a5, 12(a2)
	lw	a6, 8(a2)
	lw	a7, 4(a2)
	lda	s1, min_caml_tmin
	fli	fa2, l_data_22
	fsw	fa2, 0(s1)
	sw	a0, 0(sp)	# save
	li	a0, 0
	lda	s2, min_caml_or_net
	lw	s3, 0(s2)
	sw	a2, 4(sp)	# save
	fsw	fa1, 8(sp)	# save
	fsw	fa2, 12(sp)	# save
	sw	s2, 16(sp)	# save
	sw	a3, 20(sp)	# save
	sw	a4, 24(sp)	# save
	sw	a5, 28(sp)	# save
	sw	a7, 32(sp)	# save
	fsw	fa0, 36(sp)	# save
	sw	a1, 40(sp)	# save
	sw	a6, 44(sp)	# save
	sw	s1, 48(sp)	# save
	mv	a2, a1
	mv	a1, s3
	call	trace_or_matrix_2887
	lw	a0, 48(sp)	# restore
	flw	fa0, 0(a0)
	fli	fa1, l_data_9
	fle	a1, fa0, fa1
	bne	a1, zero, .trace_ray_else_1
	fli	fa2, l_data_23
	fle	a1, fa2, fa0
	xori	a1, a1, 1
	b	.trace_ray_cont_2
.trace_ray_else_1:
	li	a1, 0
.trace_ray_cont_2:
	bne	a1, zero, .trace_ray_else_3
	li	a0, -1
	lw	a1, 0(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 44(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	bne	a1, zero, .trace_ray_else_4
	lw	ra, 128(sp)
	addi	sp, sp, 132
	jr	ra
.trace_ray_else_4:
	lda	a0, min_caml_light
	lw	a1, 40(sp)	# restore
	flw	fa0, 0(a1)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a1)
	flw	fa2, 4(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fneg	fa0, fa0
	fle	a0, fa0, fzero
	bne	a0, zero, trace_ray_ret
	fmul	fa1, fa0, fa0
	fmul	fa0, fa1, fa0
	flw	fa1, 36(sp)	# restore
	fmul	fa0, fa0, fa1
	lda	a0, min_caml_beam
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lda	a0, min_caml_rgb
	flw	fa1, 0(a0)
	fadd	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fadd	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fadd	fa0, fa1, fa0
	fsw	fa0, 8(a0)
	lw	ra, 128(sp)
	addi	sp, sp, 132
	jr	ra
.trace_ray_else_3:
	lda	a1, min_caml_intersected_object_id
	lw	a2, 0(a1)
	slli	a3, a2, 2
	lwl	a0, min_caml_objects(a3)
	lw	a3, 28(a0)
	lw	a4, 16(a0)
	lw	a5, 8(a0)
	lw	a6, 4(a0)
	flw	fa0, 0(a3)
	flw	fa2, 36(sp)	# restore
	fmul	fa0, fa0, fa2
	sw	a5, 52(sp)	# save
	sw	a1, 56(sp)	# save
	fsw	fa1, 60(sp)	# save
	fsw	fa0, 64(sp)	# save
	sw	a3, 68(sp)	# save
	sw	a2, 72(sp)	# save
	sw	a0, 76(sp)	# save
	bnei	a6, 1, .trace_ray_else_7
	lda	a4, min_caml_intsec_rectside
	lw	a4, 0(a4)
	lda	a6, min_caml_nvector
	fsw	fzero, 0(a6)
	fsw	fzero, 4(a6)
	fsw	fzero, 8(a6)
	addi	a4, a4, -1
	slli	a6, a4, 2
	lw	a7, 40(sp)	# restore
	add	t6, a7, a6
	flw	fa3, 0(t6)
	feq	a6, fa3, fzero
	bne	a6, zero, .trace_ray_else_9
	fle	a6, fa3, fzero
	bne	a6, zero, .trace_ray_else_11
	fli	fa3, l_data_5
	b	.trace_ray_cont_10
.trace_ray_else_11:
	fli	fa3, l_data_6
	b	.trace_ray_cont_10
.trace_ray_else_9:
	fmv	fa3, fzero
.trace_ray_cont_10:
	fneg	fa3, fa3
	slli	a4, a4, 2
	fswl	fa3, min_caml_nvector(a4)
	b	.trace_ray_cont_8
.trace_ray_else_7:
	bnei	a6, 2, .trace_ray_else_13
	lda	a6, min_caml_nvector
	flw	fa3, 0(a4)
	fneg	fa3, fa3
	fsw	fa3, 0(a6)
	flw	fa3, 4(a4)
	fneg	fa3, fa3
	fsw	fa3, 4(a6)
	flw	fa3, 8(a4)
	fneg	fa3, fa3
	fsw	fa3, 8(a6)
	b	.trace_ray_cont_14
.trace_ray_else_13:
	call	get_nvector_second_2911
.trace_ray_cont_14:
.trace_ray_cont_8:
	lda	a0, min_caml_startp
	lda	a1, min_caml_intersection_point
	flw	fa0, 0(a1)
	fsw	fa0, 0(a0)
	flw	fa0, 4(a1)
	fsw	fa0, 4(a0)
	flw	fa0, 8(a1)
	fsw	fa0, 8(a0)
	lw	a0, 76(sp)	# restore
	sw	a1, 80(sp)	# save
	call	utexture_2916
	lw	a0, 72(sp)	# restore
	slli	a0, a0, 2
	lda	a1, min_caml_intsec_rectside
	lw	a2, 0(a1)
	add	a0, a0, a2
	lw	a2, 0(sp)	# restore
	slli	a3, a2, 2
	lw	a4, 44(sp)	# restore
	add	t6, a4, a3
	sw	a0, 0(t6)
	slli	a0, a2, 2
	lw	a3, 32(sp)	# restore
	add	t6, a3, a0
	lw	a0, 0(t6)
	lw	a3, 80(sp)	# restore
	flw	fa0, 0(a3)
	fsw	fa0, 0(a0)
	flw	fa0, 4(a3)
	fsw	fa0, 4(a0)
	flw	fa0, 8(a3)
	fsw	fa0, 8(a0)
	fli	fa0, l_data_15
	lw	a0, 68(sp)	# restore
	flw	fa1, 0(a0)
	fle	a5, fa0, fa1
	bne	a5, zero, .trace_ray_else_15
	slli	a5, a2, 2
	lw	a6, 28(sp)	# restore
	add	t6, a6, a5
	sw	zero, 0(t6)
	b	.trace_ray_cont_16
.trace_ray_else_15:
	li	a5, 1
	slli	a6, a2, 2
	lw	a7, 28(sp)	# restore
	add	t6, a7, a6
	sw	a5, 0(t6)
	slli	a5, a2, 2
	lw	a6, 24(sp)	# restore
	add	t6, a6, a5
	lw	a5, 0(t6)
	lda	a7, min_caml_texture_color
	flw	fa0, 0(a7)
	fsw	fa0, 0(a5)
	flw	fa0, 4(a7)
	fsw	fa0, 4(a5)
	flw	fa0, 8(a7)
	fsw	fa0, 8(a5)
	slli	a5, a2, 2
	add	t6, a6, a5
	lw	a5, 0(t6)
	fli	fa0, l_data_24
	flw	fa1, 64(sp)	# restore
	fmul	fa0, fa0, fa1
	flw	fa2, 0(a5)
	fmul	fa2, fa2, fa0
	fsw	fa2, 0(a5)
	flw	fa2, 4(a5)
	fmul	fa2, fa2, fa0
	fsw	fa2, 4(a5)
	flw	fa2, 8(a5)
	fmul	fa0, fa2, fa0
	fsw	fa0, 8(a5)
	slli	a5, a2, 2
	lw	a6, 20(sp)	# restore
	add	t6, a6, a5
	lw	a5, 0(t6)
	lda	a6, min_caml_nvector
	flw	fa0, 0(a6)
	fsw	fa0, 0(a5)
	flw	fa0, 4(a6)
	fsw	fa0, 4(a5)
	flw	fa0, 8(a6)
	fsw	fa0, 8(a5)
.trace_ray_cont_16:
	fli	fa0, l_data_25
	lda	a5, min_caml_nvector
	lw	a6, 40(sp)	# restore
	flw	fa1, 0(a6)
	flw	fa2, 0(a5)
	fmul	fa1, fa1, fa2
	flw	fa2, 4(a6)
	flw	fa3, 4(a5)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	flw	fa2, 8(a6)
	flw	fa3, 8(a5)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	fmul	fa0, fa0, fa1
	flw	fa1, 0(a6)
	flw	fa2, 0(a5)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	fsw	fa1, 0(a6)
	flw	fa1, 4(a6)
	flw	fa2, 4(a5)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	fsw	fa1, 4(a6)
	flw	fa1, 8(a6)
	flw	fa2, 8(a5)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	fsw	fa0, 8(a6)
	flw	fa0, 4(a0)
	flw	fa1, 36(sp)	# restore
	fmul	fa0, fa1, fa0
	sw	a1, 84(sp)	# save
	lw	a7, 16(sp)	# restore
	lw	a1, 0(a7)
	lw	s1, 0(a1)
	lw	a0, 0(s1)
	li	s2, -1
	fsw	fa0, 88(sp)	# save
	sw	a5, 92(sp)	# save
	bne	a0, s2, .trace_ray_else_17
	li	a0, 0
	b	.trace_ray_cont_18
.trace_ray_else_17:
	li	s2, 99
	sw	s1, 96(sp)	# save
	sw	a1, 100(sp)	# save
	bne	a0, s2, .trace_ray_else_19
	li	a0, 1
	b	.trace_ray_cont_20
.trace_ray_else_19:
	lda	a1, min_caml_light_dirvec
	mv	a2, a3
	call	solver_fast_2804
	bne	a0, zero, .trace_ray_else_21
	li	a0, 0
	b	.trace_ray_cont_22
.trace_ray_else_21:
	lda	a0, min_caml_solver_dist
	flw	fa0, 0(a0)
	flw	fa1, 60(sp)	# restore
	fle	a0, fa1, fa0
	bne	a0, zero, .trace_ray_else_23
	lw	a0, 96(sp)	# restore
	lw	a1, 4(a0)
	li	a2, -1
	bne	a1, a2, .trace_ray_else_25
	li	a0, 0
	b	.trace_ray_cont_26
.trace_ray_else_25:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_ray_else_27
	lw	a0, 96(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	bne	a1, a2, .trace_ray_else_29
	li	a0, 0
	b	.trace_ray_cont_28
.trace_ray_else_29:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_ray_else_31
	lw	a0, 96(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	bne	a1, a2, .trace_ray_else_33
	li	a0, 0
	b	.trace_ray_cont_28
.trace_ray_else_33:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_ray_else_35
	lw	a0, 96(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	bne	a1, a2, .trace_ray_else_37
	li	a0, 0
	b	.trace_ray_cont_28
.trace_ray_else_37:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_ray_else_39
	lw	a0, 96(sp)	# restore
	lw	a1, 20(a0)
	li	a2, -1
	bne	a1, a2, .trace_ray_else_41
	li	a0, 0
	b	.trace_ray_cont_28
.trace_ray_else_41:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_ray_else_43
	lw	a0, 96(sp)	# restore
	lw	a1, 24(a0)
	li	a2, -1
	bne	a1, a2, .trace_ray_else_45
	li	a0, 0
	b	.trace_ray_cont_28
.trace_ray_else_45:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_ray_else_47
	li	a0, 7
	lw	a1, 96(sp)	# restore
	call	shadow_check_one_or_group_2873
	b	.trace_ray_cont_28
.trace_ray_else_47:
	li	a0, 1
	b	.trace_ray_cont_28
.trace_ray_else_43:
	li	a0, 1
	b	.trace_ray_cont_28
.trace_ray_else_39:
	li	a0, 1
	b	.trace_ray_cont_28
.trace_ray_else_35:
	li	a0, 1
	b	.trace_ray_cont_28
.trace_ray_else_31:
	li	a0, 1
	b	.trace_ray_cont_28
.trace_ray_else_27:
	li	a0, 1
.trace_ray_cont_28:
.trace_ray_cont_26:
	bne	a0, zero, .trace_ray_else_49
	li	a0, 0
	b	.trace_ray_cont_24
.trace_ray_else_49:
	li	a0, 1
	b	.trace_ray_cont_24
.trace_ray_else_23:
	li	a0, 0
.trace_ray_cont_24:
.trace_ray_cont_22:
.trace_ray_cont_20:
	bne	a0, zero, .trace_ray_else_51
	li	a0, 1
	lw	a1, 100(sp)	# restore
	call	shadow_check_one_or_matrix_2876
	b	.trace_ray_cont_52
.trace_ray_else_51:
	lw	a0, 96(sp)	# restore
	lw	a1, 4(a0)
	li	a2, -1
	bne	a1, a2, .trace_ray_else_53
	li	a0, 0
	b	.trace_ray_cont_54
.trace_ray_else_53:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_ray_else_55
	lw	a0, 96(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	bne	a1, a2, .trace_ray_else_57
	li	a0, 0
	b	.trace_ray_cont_56
.trace_ray_else_57:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_ray_else_59
	lw	a0, 96(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	bne	a1, a2, .trace_ray_else_61
	li	a0, 0
	b	.trace_ray_cont_56
.trace_ray_else_61:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_ray_else_63
	lw	a0, 96(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	bne	a1, a2, .trace_ray_else_65
	li	a0, 0
	b	.trace_ray_cont_56
.trace_ray_else_65:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_ray_else_67
	lw	a0, 96(sp)	# restore
	lw	a1, 20(a0)
	li	a2, -1
	bne	a1, a2, .trace_ray_else_69
	li	a0, 0
	b	.trace_ray_cont_56
.trace_ray_else_69:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_ray_else_71
	lw	a0, 96(sp)	# restore
	lw	a1, 24(a0)
	li	a2, -1
	bne	a1, a2, .trace_ray_else_73
	li	a0, 0
	b	.trace_ray_cont_56
.trace_ray_else_73:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_ray_else_75
	li	a0, 7
	lw	a1, 96(sp)	# restore
	call	shadow_check_one_or_group_2873
	b	.trace_ray_cont_56
.trace_ray_else_75:
	li	a0, 1
	b	.trace_ray_cont_56
.trace_ray_else_71:
	li	a0, 1
	b	.trace_ray_cont_56
.trace_ray_else_67:
	li	a0, 1
	b	.trace_ray_cont_56
.trace_ray_else_63:
	li	a0, 1
	b	.trace_ray_cont_56
.trace_ray_else_59:
	li	a0, 1
	b	.trace_ray_cont_56
.trace_ray_else_55:
	li	a0, 1
.trace_ray_cont_56:
.trace_ray_cont_54:
	bne	a0, zero, .trace_ray_else_77
	li	a0, 1
	lw	a1, 100(sp)	# restore
	call	shadow_check_one_or_matrix_2876
	b	.trace_ray_cont_78
.trace_ray_else_77:
	li	a0, 1
.trace_ray_cont_78:
.trace_ray_cont_52:
.trace_ray_cont_18:
	bne	a0, zero, .trace_ray_cont_79
	lda	a0, min_caml_light
	lw	a1, 92(sp)	# restore
	flw	fa0, 0(a1)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a1)
	flw	fa2, 4(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fneg	fa0, fa0
	flw	fa1, 64(sp)	# restore
	fmul	fa0, fa0, fa1
	lw	a2, 40(sp)	# restore
	flw	fa2, 0(a2)
	flw	fa3, 0(a0)
	fmul	fa2, fa2, fa3
	flw	fa3, 4(a2)
	flw	fa4, 4(a0)
	fmul	fa3, fa3, fa4
	fadd	fa2, fa2, fa3
	flw	fa3, 8(a2)
	flw	fa4, 8(a0)
	fmul	fa3, fa3, fa4
	fadd	fa2, fa2, fa3
	fneg	fa2, fa2
	fle	a0, fa0, fzero
	bne	a0, zero, .trace_ray_cont_80
	lda	a0, min_caml_rgb
	lda	a3, min_caml_texture_color
	flw	fa3, 0(a0)
	flw	fa4, 0(a3)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	fsw	fa3, 0(a0)
	flw	fa3, 4(a0)
	flw	fa4, 4(a3)
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	fsw	fa3, 4(a0)
	flw	fa3, 8(a0)
	flw	fa4, 8(a3)
	fmul	fa0, fa0, fa4
	fadd	fa0, fa3, fa0
	fsw	fa0, 8(a0)
.trace_ray_cont_80:
	fle	a0, fa2, fzero
	bne	a0, zero, .trace_ray_cont_81
	fmul	fa0, fa2, fa2
	fmul	fa0, fa0, fa0
	flw	fa2, 88(sp)	# restore
	fmul	fa0, fa0, fa2
	lda	a0, min_caml_rgb
	flw	fa3, 0(a0)
	fadd	fa3, fa3, fa0
	fsw	fa3, 0(a0)
	flw	fa3, 4(a0)
	fadd	fa3, fa3, fa0
	fsw	fa3, 4(a0)
	flw	fa3, 8(a0)
	fadd	fa0, fa3, fa0
	fsw	fa0, 8(a0)
.trace_ray_cont_81:
.trace_ray_cont_79:
	lda	a0, min_caml_startp_fast
	lw	a1, 80(sp)	# restore
	flw	fa0, 0(a1)
	fsw	fa0, 0(a0)
	flw	fa0, 4(a1)
	fsw	fa0, 4(a0)
	flw	fa0, 8(a1)
	fsw	fa0, 8(a0)
	lda	a0, min_caml_n_objects
	lw	a0, 0(a0)
	addi	a0, a0, -1
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	setup_startp_constants_2839
	lda	a0, min_caml_n_reflections
	lw	a0, 0(a0)
	addi	a0, a0, -1
	blt	a0, zero, .trace_ray_cont_82
	slli	a1, a0, 2
	lwl	a1, min_caml_reflections(a1)
	flw	fa0, 8(a1)
	lw	a2, 4(a1)
	lw	a1, 0(a1)
	lw	a3, 48(sp)	# restore
	flw	fa1, 12(sp)	# restore
	fsw	fa1, 0(a3)
	sw	a1, 104(sp)	# save
	lw	a4, 16(sp)	# restore
	lw	a1, 0(a4)
	lw	a5, 0(a1)
	sw	a0, 108(sp)	# save
	lw	a0, 0(a5)
	li	a6, -1
	fsw	fa0, 112(sp)	# save
	sw	a2, 116(sp)	# save
	beq	a0, a6, .trace_ray_cont_83
	li	a6, 99
	sw	a1, 120(sp)	# save
	bne	a0, a6, .trace_ray_else_84
	lw	a0, 4(a5)
	li	a6, -1
	beq	a0, a6, .trace_ray_cont_85
	slli	a0, a0, 2
	lwl	a1, min_caml_and_net(a0)
	li	a0, 0
	sw	a5, 124(sp)	# save
	call	solve_each_element_fast_2893
	lw	a0, 124(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	beq	a1, a2, .trace_ray_cont_85
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 116(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 124(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	beq	a1, a2, .trace_ray_cont_85
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 116(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 124(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	beq	a1, a2, .trace_ray_cont_85
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 116(sp)	# restore
	call	solve_each_element_fast_2893
	li	a0, 5
	lw	a1, 124(sp)	# restore
	lw	a2, 116(sp)	# restore
	call	solve_one_or_network_fast_2897
	b	.trace_ray_cont_85
.trace_ray_else_84:
	sw	a5, 124(sp)	# save
	mv	a1, a2
	call	solver_fast2_2822
	beq	a0, zero, .trace_ray_cont_90
	lda	a0, min_caml_solver_dist
	flw	fa0, 0(a0)
	lw	a0, 48(sp)	# restore
	flw	fa1, 0(a0)
	fle	a1, fa1, fa0
	bne	a1, zero, .trace_ray_cont_91
	lw	a1, 124(sp)	# restore
	lw	a2, 4(a1)
	li	a3, -1
	beq	a2, a3, .trace_ray_cont_92
	slli	a2, a2, 2
	lwl	a1, min_caml_and_net(a2)
	li	a0, 0
	lw	a2, 116(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 124(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	beq	a1, a2, .trace_ray_cont_93
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 116(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 124(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	beq	a1, a2, .trace_ray_cont_94
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 116(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 124(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	beq	a1, a2, .trace_ray_cont_95
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 116(sp)	# restore
	call	solve_each_element_fast_2893
	li	a0, 5
	lw	a1, 124(sp)	# restore
	lw	a2, 116(sp)	# restore
	call	solve_one_or_network_fast_2897
.trace_ray_cont_95:
.trace_ray_cont_94:
.trace_ray_cont_93:
.trace_ray_cont_92:
.trace_ray_cont_91:
.trace_ray_cont_90:
.trace_ray_cont_85:
	li	a0, 1
	lw	a1, 120(sp)	# restore
	lw	a2, 116(sp)	# restore
	call	trace_or_matrix_fast_2901
.trace_ray_cont_83:
	lw	a0, 48(sp)	# restore
	flw	fa0, 0(a0)
	flw	fa1, 60(sp)	# restore
	fle	a1, fa0, fa1
	bne	a1, zero, .trace_ray_else_96
	fli	fa1, l_data_23
	fle	a1, fa1, fa0
	xori	a1, a1, 1
	b	.trace_ray_cont_97
.trace_ray_else_96:
	li	a1, 0
.trace_ray_cont_97:
	beq	a1, zero, .trace_ray_cont_98
	lw	a1, 56(sp)	# restore
	lw	a1, 0(a1)
	slli	a1, a1, 2
	lw	a2, 84(sp)	# restore
	lw	a2, 0(a2)
	add	a1, a1, a2
	lw	a2, 104(sp)	# restore
	bne	a1, a2, .trace_ray_cont_99
	li	a0, 0
	lw	a1, 16(sp)	# restore
	lw	a1, 0(a1)
	call	shadow_check_one_or_matrix_2876
	bne	a0, zero, .trace_ray_cont_100
	lw	a0, 116(sp)	# restore
	lw	a0, 0(a0)
	lw	a1, 92(sp)	# restore
	flw	fa0, 0(a1)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a1)
	flw	fa2, 4(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 64(sp)	# restore
	flw	fa2, 112(sp)	# restore
	fmul	fa3, fa2, fa1
	fmul	fa0, fa3, fa0
	lw	a1, 40(sp)	# restore
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
	flw	fa2, 88(sp)	# restore
	call	add_light_2919
.trace_ray_cont_100:
.trace_ray_cont_99:
.trace_ray_cont_98:
	lw	a0, 108(sp)	# restore
	addi	a0, a0, -1
	flw	fa0, 64(sp)	# restore
	flw	fa1, 88(sp)	# restore
	lw	a1, 40(sp)	# restore
	call	trace_reflections_2923
.trace_ray_cont_82:
	fli	fa0, l_data_26
	flw	fa1, 36(sp)	# restore
	fle	a0, fa1, fa0
	bne	a0, zero, trace_ray_ret
	lw	a0, 0(sp)	# restore
	blti	a0, 4, .trace_ray_else_101
	b	.trace_ray_cont_102
.trace_ray_else_101:
	addi	a1, a0, 1
	li	a2, -1
	slli	a1, a1, 2
	lw	a3, 44(sp)	# restore
	add	t6, a3, a1
	sw	a2, 0(t6)
.trace_ray_cont_102:
	lw	a1, 52(sp)	# restore
	bnei	a1, 2, .trace_ray_cont_103
	fli	fa0, l_data_5
	lw	a1, 68(sp)	# restore
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	fmul	fa0, fa1, fa0
	addi	a0, a0, 1
	lw	a1, 48(sp)	# restore
	flw	fa1, 0(a1)
	flw	fa2, 8(sp)	# restore
	fadd	fa1, fa2, fa1
	lw	a1, 40(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	trace_ray_2928
.trace_ray_cont_103:
trace_ray_ret:
	lw	ra, 128(sp)
	addi	sp, sp, 132
	jr	ra
trace_diffuse_ray_2934:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	lda	a1, min_caml_tmin
	fli	fa1, l_data_22
	fsw	fa1, 0(a1)
	li	a2, 0
	lda	a3, min_caml_or_net
	sw	a1, 0(sp)	# save
	lw	a1, 0(a3)
	fsw	fa0, 4(sp)	# save
	sw	a3, 8(sp)	# save
	sw	a0, 12(sp)	# save
	mv	t4, a2
	mv	a2, a0
	mv	a0, t4
	call	trace_or_matrix_fast_2901
	lw	a0, 0(sp)	# restore
	flw	fa0, 0(a0)
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
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
.trace_diffuse_ray_else_3:
	lda	a0, min_caml_intersected_object_id
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	lw	a1, 12(sp)	# restore
	lw	a1, 0(a1)
	lw	a2, 28(a0)
	lw	a3, 16(a0)
	lw	a4, 4(a0)
	sw	a2, 16(sp)	# save
	fsw	fa1, 20(sp)	# save
	sw	a0, 24(sp)	# save
	bnei	a4, 1, .trace_diffuse_ray_else_5
	lda	a3, min_caml_intsec_rectside
	lw	a3, 0(a3)
	lda	a4, min_caml_nvector
	fsw	fzero, 0(a4)
	fsw	fzero, 4(a4)
	fsw	fzero, 8(a4)
	addi	a3, a3, -1
	slli	a4, a3, 2
	add	t6, a1, a4
	flw	fa0, 0(t6)
	feq	a1, fa0, fzero
	bne	a1, zero, .trace_diffuse_ray_else_7
	fle	a1, fa0, fzero
	bne	a1, zero, .trace_diffuse_ray_else_9
	fli	fa0, l_data_5
	b	.trace_diffuse_ray_cont_8
.trace_diffuse_ray_else_9:
	fli	fa0, l_data_6
	b	.trace_diffuse_ray_cont_8
.trace_diffuse_ray_else_7:
	fmv	fa0, fzero
.trace_diffuse_ray_cont_8:
	fneg	fa0, fa0
	slli	a1, a3, 2
	fswl	fa0, min_caml_nvector(a1)
	b	.trace_diffuse_ray_cont_6
.trace_diffuse_ray_else_5:
	bnei	a4, 2, .trace_diffuse_ray_else_11
	lda	a1, min_caml_nvector
	flw	fa0, 0(a3)
	fneg	fa0, fa0
	fsw	fa0, 0(a1)
	flw	fa0, 4(a3)
	fneg	fa0, fa0
	fsw	fa0, 4(a1)
	flw	fa0, 8(a3)
	fneg	fa0, fa0
	fsw	fa0, 8(a1)
	b	.trace_diffuse_ray_cont_12
.trace_diffuse_ray_else_11:
	call	get_nvector_second_2911
.trace_diffuse_ray_cont_12:
.trace_diffuse_ray_cont_6:
	lda	a1, min_caml_intersection_point
	lw	a0, 24(sp)	# restore
	sw	a1, 28(sp)	# save
	call	utexture_2916
	lw	a0, 8(sp)	# restore
	lw	a1, 0(a0)
	lw	a0, 0(a1)
	sw	a0, 32(sp)	# save
	lw	a0, 0(a0)
	li	a2, -1
	bne	a0, a2, .trace_diffuse_ray_else_13
	li	a0, 0
	b	.trace_diffuse_ray_cont_14
.trace_diffuse_ray_else_13:
	li	a2, 99
	sw	a1, 36(sp)	# save
	bne	a0, a2, .trace_diffuse_ray_else_15
	li	a0, 1
	b	.trace_diffuse_ray_cont_16
.trace_diffuse_ray_else_15:
	lda	a1, min_caml_light_dirvec
	lw	a2, 28(sp)	# restore
	call	solver_fast_2804
	bne	a0, zero, .trace_diffuse_ray_else_17
	li	a0, 0
	b	.trace_diffuse_ray_cont_18
.trace_diffuse_ray_else_17:
	lda	a0, min_caml_solver_dist
	flw	fa0, 0(a0)
	flw	fa1, 20(sp)	# restore
	fle	a0, fa1, fa0
	bne	a0, zero, .trace_diffuse_ray_else_19
	lw	a0, 32(sp)	# restore
	lw	a1, 4(a0)
	li	a2, -1
	bne	a1, a2, .trace_diffuse_ray_else_21
	li	a0, 0
	b	.trace_diffuse_ray_cont_22
.trace_diffuse_ray_else_21:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_diffuse_ray_else_23
	lw	a0, 32(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	bne	a1, a2, .trace_diffuse_ray_else_25
	li	a0, 0
	b	.trace_diffuse_ray_cont_24
.trace_diffuse_ray_else_25:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_diffuse_ray_else_27
	lw	a0, 32(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	bne	a1, a2, .trace_diffuse_ray_else_29
	li	a0, 0
	b	.trace_diffuse_ray_cont_24
.trace_diffuse_ray_else_29:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_diffuse_ray_else_31
	lw	a0, 32(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	bne	a1, a2, .trace_diffuse_ray_else_33
	li	a0, 0
	b	.trace_diffuse_ray_cont_24
.trace_diffuse_ray_else_33:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_diffuse_ray_else_35
	lw	a0, 32(sp)	# restore
	lw	a1, 20(a0)
	li	a2, -1
	bne	a1, a2, .trace_diffuse_ray_else_37
	li	a0, 0
	b	.trace_diffuse_ray_cont_24
.trace_diffuse_ray_else_37:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_diffuse_ray_else_39
	lw	a0, 32(sp)	# restore
	lw	a1, 24(a0)
	li	a2, -1
	bne	a1, a2, .trace_diffuse_ray_else_41
	li	a0, 0
	b	.trace_diffuse_ray_cont_24
.trace_diffuse_ray_else_41:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_diffuse_ray_else_43
	li	a0, 7
	lw	a1, 32(sp)	# restore
	call	shadow_check_one_or_group_2873
	b	.trace_diffuse_ray_cont_24
.trace_diffuse_ray_else_43:
	li	a0, 1
	b	.trace_diffuse_ray_cont_24
.trace_diffuse_ray_else_39:
	li	a0, 1
	b	.trace_diffuse_ray_cont_24
.trace_diffuse_ray_else_35:
	li	a0, 1
	b	.trace_diffuse_ray_cont_24
.trace_diffuse_ray_else_31:
	li	a0, 1
	b	.trace_diffuse_ray_cont_24
.trace_diffuse_ray_else_27:
	li	a0, 1
	b	.trace_diffuse_ray_cont_24
.trace_diffuse_ray_else_23:
	li	a0, 1
.trace_diffuse_ray_cont_24:
.trace_diffuse_ray_cont_22:
	bne	a0, zero, .trace_diffuse_ray_else_45
	li	a0, 0
	b	.trace_diffuse_ray_cont_20
.trace_diffuse_ray_else_45:
	li	a0, 1
	b	.trace_diffuse_ray_cont_20
.trace_diffuse_ray_else_19:
	li	a0, 0
.trace_diffuse_ray_cont_20:
.trace_diffuse_ray_cont_18:
.trace_diffuse_ray_cont_16:
	bne	a0, zero, .trace_diffuse_ray_else_47
	li	a0, 1
	lw	a1, 36(sp)	# restore
	call	shadow_check_one_or_matrix_2876
	b	.trace_diffuse_ray_cont_48
.trace_diffuse_ray_else_47:
	lw	a0, 32(sp)	# restore
	lw	a1, 4(a0)
	li	a2, -1
	bne	a1, a2, .trace_diffuse_ray_else_49
	li	a0, 0
	b	.trace_diffuse_ray_cont_50
.trace_diffuse_ray_else_49:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_diffuse_ray_else_51
	lw	a0, 32(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	bne	a1, a2, .trace_diffuse_ray_else_53
	li	a0, 0
	b	.trace_diffuse_ray_cont_52
.trace_diffuse_ray_else_53:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_diffuse_ray_else_55
	lw	a0, 32(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	bne	a1, a2, .trace_diffuse_ray_else_57
	li	a0, 0
	b	.trace_diffuse_ray_cont_52
.trace_diffuse_ray_else_57:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_diffuse_ray_else_59
	lw	a0, 32(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	bne	a1, a2, .trace_diffuse_ray_else_61
	li	a0, 0
	b	.trace_diffuse_ray_cont_52
.trace_diffuse_ray_else_61:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_diffuse_ray_else_63
	lw	a0, 32(sp)	# restore
	lw	a1, 20(a0)
	li	a2, -1
	bne	a1, a2, .trace_diffuse_ray_else_65
	li	a0, 0
	b	.trace_diffuse_ray_cont_52
.trace_diffuse_ray_else_65:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_diffuse_ray_else_67
	lw	a0, 32(sp)	# restore
	lw	a1, 24(a0)
	li	a2, -1
	bne	a1, a2, .trace_diffuse_ray_else_69
	li	a0, 0
	b	.trace_diffuse_ray_cont_52
.trace_diffuse_ray_else_69:
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	call	shadow_check_and_group_2870
	bne	a0, zero, .trace_diffuse_ray_else_71
	li	a0, 7
	lw	a1, 32(sp)	# restore
	call	shadow_check_one_or_group_2873
	b	.trace_diffuse_ray_cont_52
.trace_diffuse_ray_else_71:
	li	a0, 1
	b	.trace_diffuse_ray_cont_52
.trace_diffuse_ray_else_67:
	li	a0, 1
	b	.trace_diffuse_ray_cont_52
.trace_diffuse_ray_else_63:
	li	a0, 1
	b	.trace_diffuse_ray_cont_52
.trace_diffuse_ray_else_59:
	li	a0, 1
	b	.trace_diffuse_ray_cont_52
.trace_diffuse_ray_else_55:
	li	a0, 1
	b	.trace_diffuse_ray_cont_52
.trace_diffuse_ray_else_51:
	li	a0, 1
.trace_diffuse_ray_cont_52:
.trace_diffuse_ray_cont_50:
	bne	a0, zero, .trace_diffuse_ray_else_73
	li	a0, 1
	lw	a1, 36(sp)	# restore
	call	shadow_check_one_or_matrix_2876
	b	.trace_diffuse_ray_cont_74
.trace_diffuse_ray_else_73:
	li	a0, 1
.trace_diffuse_ray_cont_74:
.trace_diffuse_ray_cont_48:
.trace_diffuse_ray_cont_14:
	bne	a0, zero, trace_diffuse_ray_ret
	lda	a0, min_caml_nvector
	lda	a1, min_caml_light
	flw	fa0, 0(a0)
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a0)
	flw	fa2, 4(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	flw	fa2, 8(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fneg	fa0, fa0
	fle	a0, fa0, fzero
	beq	a0, zero, .trace_diffuse_ray_cont_75
	fmv	fa0, fzero
.trace_diffuse_ray_cont_75:
	lda	a0, min_caml_diffuse_ray
	flw	fa1, 4(sp)	# restore
	fmul	fa0, fa1, fa0
	lw	a1, 16(sp)	# restore
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	lda	a1, min_caml_texture_color
	flw	fa1, 0(a0)
	flw	fa2, 0(a1)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	flw	fa2, 4(a1)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	flw	fa2, 8(a1)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	fsw	fa0, 8(a0)
trace_diffuse_ray_ret:
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
iter_trace_diffuse_rays_2937:
	addi	sp, sp, -88
	sw	ra, 84(sp)
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
	lda	a4, min_caml_tmin
	fli	fa1, l_data_22
	fsw	fa1, 0(a4)
	lda	a5, min_caml_or_net
	lw	a1, 0(a5)
	lw	a6, 0(a1)
	lw	a0, 0(a6)
	li	a7, -1
	fsw	fa0, 16(sp)	# save
	sw	a5, 20(sp)	# save
	sw	a2, 24(sp)	# save
	sw	a4, 28(sp)	# save
	beq	a0, a7, .iter_trace_diffuse_rays_cont_3
	li	a7, 99
	sw	a1, 32(sp)	# save
	bne	a0, a7, .iter_trace_diffuse_rays_else_4
	lw	a0, 4(a6)
	li	a7, -1
	beq	a0, a7, .iter_trace_diffuse_rays_cont_5
	slli	a0, a0, 2
	lwl	a1, min_caml_and_net(a0)
	li	a0, 0
	sw	a6, 36(sp)	# save
	call	solve_each_element_fast_2893
	lw	a0, 36(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	beq	a1, a2, .iter_trace_diffuse_rays_cont_5
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 24(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 36(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	beq	a1, a2, .iter_trace_diffuse_rays_cont_5
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 24(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 36(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	beq	a1, a2, .iter_trace_diffuse_rays_cont_5
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 24(sp)	# restore
	call	solve_each_element_fast_2893
	li	a0, 5
	lw	a1, 36(sp)	# restore
	lw	a2, 24(sp)	# restore
	call	solve_one_or_network_fast_2897
	b	.iter_trace_diffuse_rays_cont_5
.iter_trace_diffuse_rays_else_4:
	sw	a6, 36(sp)	# save
	mv	a1, a2
	call	solver_fast2_2822
	beq	a0, zero, .iter_trace_diffuse_rays_cont_10
	lda	a0, min_caml_solver_dist
	flw	fa0, 0(a0)
	lw	a0, 28(sp)	# restore
	flw	fa1, 0(a0)
	fle	a1, fa1, fa0
	bne	a1, zero, .iter_trace_diffuse_rays_cont_11
	lw	a1, 36(sp)	# restore
	lw	a2, 4(a1)
	li	a3, -1
	beq	a2, a3, .iter_trace_diffuse_rays_cont_12
	slli	a2, a2, 2
	lwl	a1, min_caml_and_net(a2)
	li	a0, 0
	lw	a2, 24(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 36(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	beq	a1, a2, .iter_trace_diffuse_rays_cont_13
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 24(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 36(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	beq	a1, a2, .iter_trace_diffuse_rays_cont_14
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 24(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 36(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	beq	a1, a2, .iter_trace_diffuse_rays_cont_15
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 24(sp)	# restore
	call	solve_each_element_fast_2893
	li	a0, 5
	lw	a1, 36(sp)	# restore
	lw	a2, 24(sp)	# restore
	call	solve_one_or_network_fast_2897
.iter_trace_diffuse_rays_cont_15:
.iter_trace_diffuse_rays_cont_14:
.iter_trace_diffuse_rays_cont_13:
.iter_trace_diffuse_rays_cont_12:
.iter_trace_diffuse_rays_cont_11:
.iter_trace_diffuse_rays_cont_10:
.iter_trace_diffuse_rays_cont_5:
	li	a0, 1
	lw	a1, 32(sp)	# restore
	lw	a2, 24(sp)	# restore
	call	trace_or_matrix_fast_2901
.iter_trace_diffuse_rays_cont_3:
	lw	a0, 28(sp)	# restore
	flw	fa0, 0(a0)
	fli	fa1, l_data_9
	fle	a0, fa0, fa1
	bne	a0, zero, .iter_trace_diffuse_rays_else_16
	fli	fa1, l_data_23
	fle	a0, fa1, fa0
	xori	a0, a0, 1
	b	.iter_trace_diffuse_rays_cont_17
.iter_trace_diffuse_rays_else_16:
	li	a0, 0
.iter_trace_diffuse_rays_cont_17:
	beq	a0, zero, .iter_trace_diffuse_rays_cont_2
	lda	a0, min_caml_intersected_object_id
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	lw	a1, 24(sp)	# restore
	lw	a1, 0(a1)
	lw	a2, 28(a0)
	lw	a3, 16(a0)
	lw	a4, 4(a0)
	sw	a2, 40(sp)	# save
	sw	a0, 44(sp)	# save
	bnei	a4, 1, .iter_trace_diffuse_rays_else_19
	lda	a3, min_caml_intsec_rectside
	lw	a3, 0(a3)
	lda	a4, min_caml_nvector
	fsw	fzero, 0(a4)
	fsw	fzero, 4(a4)
	fsw	fzero, 8(a4)
	addi	a3, a3, -1
	slli	a4, a3, 2
	add	t6, a1, a4
	flw	fa0, 0(t6)
	feq	a1, fa0, fzero
	bne	a1, zero, .iter_trace_diffuse_rays_else_21
	fle	a1, fa0, fzero
	bne	a1, zero, .iter_trace_diffuse_rays_else_23
	fli	fa0, l_data_5
	b	.iter_trace_diffuse_rays_cont_22
.iter_trace_diffuse_rays_else_23:
	fli	fa0, l_data_6
	b	.iter_trace_diffuse_rays_cont_22
.iter_trace_diffuse_rays_else_21:
	fmv	fa0, fzero
.iter_trace_diffuse_rays_cont_22:
	fneg	fa0, fa0
	slli	a1, a3, 2
	fswl	fa0, min_caml_nvector(a1)
	b	.iter_trace_diffuse_rays_cont_20
.iter_trace_diffuse_rays_else_19:
	bnei	a4, 2, .iter_trace_diffuse_rays_else_25
	lda	a1, min_caml_nvector
	flw	fa0, 0(a3)
	fneg	fa0, fa0
	fsw	fa0, 0(a1)
	flw	fa0, 4(a3)
	fneg	fa0, fa0
	fsw	fa0, 4(a1)
	flw	fa0, 8(a3)
	fneg	fa0, fa0
	fsw	fa0, 8(a1)
	b	.iter_trace_diffuse_rays_cont_26
.iter_trace_diffuse_rays_else_25:
	call	get_nvector_second_2911
.iter_trace_diffuse_rays_cont_26:
.iter_trace_diffuse_rays_cont_20:
	lda	a1, min_caml_intersection_point
	lw	a0, 44(sp)	# restore
	call	utexture_2916
	li	a0, 0
	lw	a1, 20(sp)	# restore
	lw	a1, 0(a1)
	call	shadow_check_one_or_matrix_2876
	bne	a0, zero, .iter_trace_diffuse_rays_cont_2
	lda	a0, min_caml_nvector
	lda	a1, min_caml_light
	flw	fa0, 0(a0)
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a0)
	flw	fa2, 4(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	flw	fa2, 8(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fneg	fa0, fa0
	fle	a0, fa0, fzero
	beq	a0, zero, .iter_trace_diffuse_rays_cont_28
	fmv	fa0, fzero
.iter_trace_diffuse_rays_cont_28:
	lda	a0, min_caml_diffuse_ray
	flw	fa1, 16(sp)	# restore
	fmul	fa0, fa1, fa0
	lw	a1, 40(sp)	# restore
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	lda	a1, min_caml_texture_color
	flw	fa1, 0(a0)
	flw	fa2, 0(a1)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	flw	fa2, 4(a1)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	flw	fa2, 8(a1)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	fsw	fa0, 8(a0)
	b	.iter_trace_diffuse_rays_cont_2
.iter_trace_diffuse_rays_else_1:
	slli	a4, a3, 2
	add	t6, a0, a4
	lw	a2, 0(t6)
	fli	fa1, l_data_27
	fdiv	fa0, fa0, fa1
	lda	a4, min_caml_tmin
	fli	fa1, l_data_22
	fsw	fa1, 0(a4)
	lda	a5, min_caml_or_net
	lw	a1, 0(a5)
	lw	a6, 0(a1)
	lw	a0, 0(a6)
	li	a7, -1
	fsw	fa0, 48(sp)	# save
	sw	a5, 52(sp)	# save
	sw	a2, 56(sp)	# save
	sw	a4, 60(sp)	# save
	beq	a0, a7, .iter_trace_diffuse_rays_cont_29
	li	a7, 99
	sw	a1, 64(sp)	# save
	bne	a0, a7, .iter_trace_diffuse_rays_else_30
	lw	a0, 4(a6)
	li	a7, -1
	beq	a0, a7, .iter_trace_diffuse_rays_cont_31
	slli	a0, a0, 2
	lwl	a1, min_caml_and_net(a0)
	li	a0, 0
	sw	a6, 68(sp)	# save
	call	solve_each_element_fast_2893
	lw	a0, 68(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	beq	a1, a2, .iter_trace_diffuse_rays_cont_31
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 56(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 68(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	beq	a1, a2, .iter_trace_diffuse_rays_cont_31
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 56(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 68(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	beq	a1, a2, .iter_trace_diffuse_rays_cont_31
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 56(sp)	# restore
	call	solve_each_element_fast_2893
	li	a0, 5
	lw	a1, 68(sp)	# restore
	lw	a2, 56(sp)	# restore
	call	solve_one_or_network_fast_2897
	b	.iter_trace_diffuse_rays_cont_31
.iter_trace_diffuse_rays_else_30:
	sw	a6, 68(sp)	# save
	mv	a1, a2
	call	solver_fast2_2822
	beq	a0, zero, .iter_trace_diffuse_rays_cont_36
	lda	a0, min_caml_solver_dist
	flw	fa0, 0(a0)
	lw	a0, 60(sp)	# restore
	flw	fa1, 0(a0)
	fle	a1, fa1, fa0
	bne	a1, zero, .iter_trace_diffuse_rays_cont_37
	lw	a1, 68(sp)	# restore
	lw	a2, 4(a1)
	li	a3, -1
	beq	a2, a3, .iter_trace_diffuse_rays_cont_38
	slli	a2, a2, 2
	lwl	a1, min_caml_and_net(a2)
	li	a0, 0
	lw	a2, 56(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 68(sp)	# restore
	lw	a1, 8(a0)
	li	a2, -1
	beq	a1, a2, .iter_trace_diffuse_rays_cont_39
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 56(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 68(sp)	# restore
	lw	a1, 12(a0)
	li	a2, -1
	beq	a1, a2, .iter_trace_diffuse_rays_cont_40
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 56(sp)	# restore
	call	solve_each_element_fast_2893
	lw	a0, 68(sp)	# restore
	lw	a1, 16(a0)
	li	a2, -1
	beq	a1, a2, .iter_trace_diffuse_rays_cont_41
	slli	a1, a1, 2
	lwl	a1, min_caml_and_net(a1)
	li	a0, 0
	lw	a2, 56(sp)	# restore
	call	solve_each_element_fast_2893
	li	a0, 5
	lw	a1, 68(sp)	# restore
	lw	a2, 56(sp)	# restore
	call	solve_one_or_network_fast_2897
.iter_trace_diffuse_rays_cont_41:
.iter_trace_diffuse_rays_cont_40:
.iter_trace_diffuse_rays_cont_39:
.iter_trace_diffuse_rays_cont_38:
.iter_trace_diffuse_rays_cont_37:
.iter_trace_diffuse_rays_cont_36:
.iter_trace_diffuse_rays_cont_31:
	li	a0, 1
	lw	a1, 64(sp)	# restore
	lw	a2, 56(sp)	# restore
	call	trace_or_matrix_fast_2901
.iter_trace_diffuse_rays_cont_29:
	lw	a0, 60(sp)	# restore
	flw	fa0, 0(a0)
	fli	fa1, l_data_9
	fle	a0, fa0, fa1
	bne	a0, zero, .iter_trace_diffuse_rays_else_42
	fli	fa1, l_data_23
	fle	a0, fa1, fa0
	xori	a0, a0, 1
	b	.iter_trace_diffuse_rays_cont_43
.iter_trace_diffuse_rays_else_42:
	li	a0, 0
.iter_trace_diffuse_rays_cont_43:
	beq	a0, zero, .iter_trace_diffuse_rays_cont_44
	lda	a0, min_caml_intersected_object_id
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	lw	a1, 56(sp)	# restore
	lw	a1, 0(a1)
	lw	a2, 28(a0)
	lw	a3, 16(a0)
	lw	a4, 4(a0)
	sw	a2, 72(sp)	# save
	sw	a0, 76(sp)	# save
	bnei	a4, 1, .iter_trace_diffuse_rays_else_45
	lda	a3, min_caml_intsec_rectside
	lw	a3, 0(a3)
	lda	a4, min_caml_nvector
	fsw	fzero, 0(a4)
	fsw	fzero, 4(a4)
	fsw	fzero, 8(a4)
	addi	a3, a3, -1
	slli	a4, a3, 2
	add	t6, a1, a4
	flw	fa0, 0(t6)
	feq	a1, fa0, fzero
	bne	a1, zero, .iter_trace_diffuse_rays_else_47
	fle	a1, fa0, fzero
	bne	a1, zero, .iter_trace_diffuse_rays_else_49
	fli	fa0, l_data_5
	b	.iter_trace_diffuse_rays_cont_48
.iter_trace_diffuse_rays_else_49:
	fli	fa0, l_data_6
	b	.iter_trace_diffuse_rays_cont_48
.iter_trace_diffuse_rays_else_47:
	fmv	fa0, fzero
.iter_trace_diffuse_rays_cont_48:
	fneg	fa0, fa0
	slli	a1, a3, 2
	fswl	fa0, min_caml_nvector(a1)
	b	.iter_trace_diffuse_rays_cont_46
.iter_trace_diffuse_rays_else_45:
	bnei	a4, 2, .iter_trace_diffuse_rays_else_51
	lda	a1, min_caml_nvector
	flw	fa0, 0(a3)
	fneg	fa0, fa0
	fsw	fa0, 0(a1)
	flw	fa0, 4(a3)
	fneg	fa0, fa0
	fsw	fa0, 4(a1)
	flw	fa0, 8(a3)
	fneg	fa0, fa0
	fsw	fa0, 8(a1)
	b	.iter_trace_diffuse_rays_cont_52
.iter_trace_diffuse_rays_else_51:
	call	get_nvector_second_2911
.iter_trace_diffuse_rays_cont_52:
.iter_trace_diffuse_rays_cont_46:
	lda	a1, min_caml_intersection_point
	lw	a0, 76(sp)	# restore
	call	utexture_2916
	li	a0, 0
	lw	a1, 52(sp)	# restore
	lw	a1, 0(a1)
	call	shadow_check_one_or_matrix_2876
	bne	a0, zero, .iter_trace_diffuse_rays_cont_53
	lda	a0, min_caml_nvector
	lda	a1, min_caml_light
	flw	fa0, 0(a0)
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a0)
	flw	fa2, 4(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	flw	fa2, 8(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fneg	fa0, fa0
	fle	a0, fa0, fzero
	beq	a0, zero, .iter_trace_diffuse_rays_cont_54
	fmv	fa0, fzero
.iter_trace_diffuse_rays_cont_54:
	lda	a0, min_caml_diffuse_ray
	flw	fa1, 48(sp)	# restore
	fmul	fa0, fa1, fa0
	lw	a1, 72(sp)	# restore
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	lda	a1, min_caml_texture_color
	flw	fa1, 0(a0)
	flw	fa2, 0(a1)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	flw	fa2, 4(a1)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	flw	fa2, 8(a1)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	fsw	fa0, 8(a0)
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
	sw	a0, 80(sp)	# save
	bne	a1, zero, .iter_trace_diffuse_rays_else_55
	addi	a1, a0, 1
	slli	a1, a1, 2
	add	t6, a2, a1
	lw	a0, 0(t6)
	fli	fa1, l_data_28
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2934
	b	.iter_trace_diffuse_rays_cont_56
.iter_trace_diffuse_rays_else_55:
	slli	a1, a0, 2
	add	t6, a2, a1
	lw	a0, 0(t6)
	fli	fa1, l_data_27
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2934
.iter_trace_diffuse_rays_cont_56:
	lw	a0, 80(sp)	# restore
	addi	a3, a0, -2
	lw	a0, 8(sp)	# restore
	lw	a1, 4(sp)	# restore
	lw	a2, 0(sp)	# restore
	call	iter_trace_diffuse_rays_2937
iter_trace_diffuse_rays_ret:
	lw	ra, 84(sp)
	addi	sp, sp, 88
	jr	ra
trace_diffuse_ray_80percent_2946:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	a1, 0(sp)	# save
	sw	a2, 4(sp)	# save
	sw	a0, 8(sp)	# save
	beq	a0, zero, .trace_diffuse_ray_80percent_cont_1
	lda	a3, min_caml_dirvecs
	lw	a3, 0(a3)
	lda	a4, min_caml_startp_fast
	flw	fa0, 0(a2)
	fsw	fa0, 0(a4)
	flw	fa0, 4(a2)
	fsw	fa0, 4(a4)
	flw	fa0, 8(a2)
	fsw	fa0, 8(a4)
	lda	a4, min_caml_n_objects
	lw	a4, 0(a4)
	addi	a1, a4, -1
	sw	a3, 12(sp)	# save
	mv	a0, a2
	call	setup_startp_constants_2839
	li	a3, 118
	lw	a0, 12(sp)	# restore
	lw	a1, 0(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	iter_trace_diffuse_rays_2937
.trace_diffuse_ray_80percent_cont_1:
	lw	a0, 8(sp)	# restore
	beqi	a0, 1, .trace_diffuse_ray_80percent_cont_2
	lda	a1, min_caml_dirvecs
	lw	a1, 4(a1)
	lda	a2, min_caml_startp_fast
	lw	a0, 4(sp)	# restore
	flw	fa0, 0(a0)
	fsw	fa0, 0(a2)
	flw	fa0, 4(a0)
	fsw	fa0, 4(a2)
	flw	fa0, 8(a0)
	fsw	fa0, 8(a2)
	lda	a2, min_caml_n_objects
	lw	a2, 0(a2)
	sw	a1, 16(sp)	# save
	addi	a1, a2, -1
	call	setup_startp_constants_2839
	li	a3, 118
	lw	a0, 16(sp)	# restore
	lw	a1, 0(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	iter_trace_diffuse_rays_2937
.trace_diffuse_ray_80percent_cont_2:
	lw	a0, 8(sp)	# restore
	beqi	a0, 2, .trace_diffuse_ray_80percent_cont_3
	lda	a1, min_caml_dirvecs
	lw	a1, 8(a1)
	lda	a2, min_caml_startp_fast
	lw	a0, 4(sp)	# restore
	flw	fa0, 0(a0)
	fsw	fa0, 0(a2)
	flw	fa0, 4(a0)
	fsw	fa0, 4(a2)
	flw	fa0, 8(a0)
	fsw	fa0, 8(a2)
	lda	a2, min_caml_n_objects
	lw	a2, 0(a2)
	sw	a1, 20(sp)	# save
	addi	a1, a2, -1
	call	setup_startp_constants_2839
	li	a3, 118
	lw	a0, 20(sp)	# restore
	lw	a1, 0(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	iter_trace_diffuse_rays_2937
.trace_diffuse_ray_80percent_cont_3:
	lw	a0, 8(sp)	# restore
	beqi	a0, 3, .trace_diffuse_ray_80percent_cont_4
	lda	a1, min_caml_dirvecs
	lw	a1, 12(a1)
	lda	a2, min_caml_startp_fast
	lw	a0, 4(sp)	# restore
	flw	fa0, 0(a0)
	fsw	fa0, 0(a2)
	flw	fa0, 4(a0)
	fsw	fa0, 4(a2)
	flw	fa0, 8(a0)
	fsw	fa0, 8(a2)
	lda	a2, min_caml_n_objects
	lw	a2, 0(a2)
	sw	a1, 24(sp)	# save
	addi	a1, a2, -1
	call	setup_startp_constants_2839
	li	a3, 118
	lw	a0, 24(sp)	# restore
	lw	a1, 0(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	iter_trace_diffuse_rays_2937
.trace_diffuse_ray_80percent_cont_4:
	lw	a0, 8(sp)	# restore
	bnei	a0, 4, .trace_diffuse_ray_80percent_else_5
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
.trace_diffuse_ray_80percent_else_5:
	lda	a0, min_caml_dirvecs
	lw	a0, 16(a0)
	lda	a1, min_caml_startp_fast
	sw	a0, 28(sp)	# save
	lw	a0, 4(sp)	# restore
	flw	fa0, 0(a0)
	fsw	fa0, 0(a1)
	flw	fa0, 4(a0)
	fsw	fa0, 4(a1)
	flw	fa0, 8(a0)
	fsw	fa0, 8(a1)
	lda	a1, min_caml_n_objects
	lw	a1, 0(a1)
	addi	a1, a1, -1
	call	setup_startp_constants_2839
	li	a3, 118
	lw	a0, 28(sp)	# restore
	lw	a1, 0(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	iter_trace_diffuse_rays_2937
trace_diffuse_ray_80percent_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
calc_diffuse_using_1point_2950:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	lw	a2, 28(a0)
	lw	a3, 24(a0)
	lw	a4, 20(a0)
	lw	a5, 16(a0)
	lw	a0, 4(a0)
	lda	a6, min_caml_diffuse_ray
	slli	a7, a1, 2
	add	t6, a4, a7
	lw	a4, 0(t6)
	flw	fa0, 0(a4)
	fsw	fa0, 0(a6)
	flw	fa0, 4(a4)
	fsw	fa0, 4(a6)
	flw	fa0, 8(a4)
	fsw	fa0, 8(a6)
	lw	a3, 0(a3)
	slli	a4, a1, 2
	add	t6, a2, a4
	lw	a2, 0(t6)
	slli	a4, a1, 2
	add	t6, a0, a4
	lw	a0, 0(t6)
	sw	a6, 0(sp)	# save
	sw	a5, 4(sp)	# save
	sw	a1, 8(sp)	# save
	sw	a2, 12(sp)	# save
	sw	a0, 16(sp)	# save
	sw	a3, 20(sp)	# save
	beq	a3, zero, .calc_diffuse_using_1point_cont_1
	lda	a4, min_caml_dirvecs
	lw	a4, 0(a4)
	lda	a7, min_caml_startp_fast
	flw	fa0, 0(a0)
	fsw	fa0, 0(a7)
	flw	fa0, 4(a0)
	fsw	fa0, 4(a7)
	flw	fa0, 8(a0)
	fsw	fa0, 8(a7)
	lda	a7, min_caml_n_objects
	lw	a7, 0(a7)
	addi	a1, a7, -1
	sw	a4, 24(sp)	# save
	call	setup_startp_constants_2839
	lw	a0, 24(sp)	# restore
	lw	a1, 472(a0)
	lw	a1, 0(a1)
	flw	fa0, 0(a1)
	lw	a2, 12(sp)	# restore
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
	call	trace_diffuse_ray_2934
	b	.calc_diffuse_using_1point_cont_3
.calc_diffuse_using_1point_else_2:
	lw	a0, 472(a0)
	fli	fa1, l_data_27
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2934
.calc_diffuse_using_1point_cont_3:
	li	a3, 116
	lw	a0, 24(sp)	# restore
	lw	a1, 12(sp)	# restore
	lw	a2, 16(sp)	# restore
	call	iter_trace_diffuse_rays_2937
.calc_diffuse_using_1point_cont_1:
	lw	a0, 20(sp)	# restore
	beqi	a0, 1, .calc_diffuse_using_1point_cont_4
	lda	a1, min_caml_dirvecs
	lw	a1, 4(a1)
	lda	a2, min_caml_startp_fast
	lw	a0, 16(sp)	# restore
	flw	fa0, 0(a0)
	fsw	fa0, 0(a2)
	flw	fa0, 4(a0)
	fsw	fa0, 4(a2)
	flw	fa0, 8(a0)
	fsw	fa0, 8(a2)
	lda	a2, min_caml_n_objects
	lw	a2, 0(a2)
	sw	a1, 28(sp)	# save
	addi	a1, a2, -1
	call	setup_startp_constants_2839
	lw	a0, 28(sp)	# restore
	lw	a1, 472(a0)
	lw	a1, 0(a1)
	flw	fa0, 0(a1)
	lw	a2, 12(sp)	# restore
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
	call	trace_diffuse_ray_2934
	b	.calc_diffuse_using_1point_cont_6
.calc_diffuse_using_1point_else_5:
	lw	a0, 472(a0)
	fli	fa1, l_data_27
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2934
.calc_diffuse_using_1point_cont_6:
	li	a3, 116
	lw	a0, 28(sp)	# restore
	lw	a1, 12(sp)	# restore
	lw	a2, 16(sp)	# restore
	call	iter_trace_diffuse_rays_2937
.calc_diffuse_using_1point_cont_4:
	lw	a0, 20(sp)	# restore
	beqi	a0, 2, .calc_diffuse_using_1point_cont_7
	lda	a1, min_caml_dirvecs
	lw	a1, 8(a1)
	lda	a2, min_caml_startp_fast
	lw	a0, 16(sp)	# restore
	flw	fa0, 0(a0)
	fsw	fa0, 0(a2)
	flw	fa0, 4(a0)
	fsw	fa0, 4(a2)
	flw	fa0, 8(a0)
	fsw	fa0, 8(a2)
	lda	a2, min_caml_n_objects
	lw	a2, 0(a2)
	sw	a1, 32(sp)	# save
	addi	a1, a2, -1
	call	setup_startp_constants_2839
	lw	a0, 32(sp)	# restore
	lw	a1, 472(a0)
	lw	a1, 0(a1)
	flw	fa0, 0(a1)
	lw	a2, 12(sp)	# restore
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
	call	trace_diffuse_ray_2934
	b	.calc_diffuse_using_1point_cont_9
.calc_diffuse_using_1point_else_8:
	lw	a0, 472(a0)
	fli	fa1, l_data_27
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2934
.calc_diffuse_using_1point_cont_9:
	li	a3, 116
	lw	a0, 32(sp)	# restore
	lw	a1, 12(sp)	# restore
	lw	a2, 16(sp)	# restore
	call	iter_trace_diffuse_rays_2937
.calc_diffuse_using_1point_cont_7:
	lw	a0, 20(sp)	# restore
	beqi	a0, 3, .calc_diffuse_using_1point_cont_10
	lda	a1, min_caml_dirvecs
	lw	a1, 12(a1)
	lda	a2, min_caml_startp_fast
	lw	a0, 16(sp)	# restore
	flw	fa0, 0(a0)
	fsw	fa0, 0(a2)
	flw	fa0, 4(a0)
	fsw	fa0, 4(a2)
	flw	fa0, 8(a0)
	fsw	fa0, 8(a2)
	lda	a2, min_caml_n_objects
	lw	a2, 0(a2)
	sw	a1, 36(sp)	# save
	addi	a1, a2, -1
	call	setup_startp_constants_2839
	lw	a0, 36(sp)	# restore
	lw	a1, 472(a0)
	lw	a1, 0(a1)
	flw	fa0, 0(a1)
	lw	a2, 12(sp)	# restore
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
	call	trace_diffuse_ray_2934
	b	.calc_diffuse_using_1point_cont_12
.calc_diffuse_using_1point_else_11:
	lw	a0, 472(a0)
	fli	fa1, l_data_27
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2934
.calc_diffuse_using_1point_cont_12:
	li	a3, 116
	lw	a0, 36(sp)	# restore
	lw	a1, 12(sp)	# restore
	lw	a2, 16(sp)	# restore
	call	iter_trace_diffuse_rays_2937
.calc_diffuse_using_1point_cont_10:
	lw	a0, 20(sp)	# restore
	beqi	a0, 4, .calc_diffuse_using_1point_cont_13
	lda	a0, min_caml_dirvecs
	lw	a0, 16(a0)
	lda	a1, min_caml_startp_fast
	sw	a0, 40(sp)	# save
	lw	a0, 16(sp)	# restore
	flw	fa0, 0(a0)
	fsw	fa0, 0(a1)
	flw	fa0, 4(a0)
	fsw	fa0, 4(a1)
	flw	fa0, 8(a0)
	fsw	fa0, 8(a1)
	lda	a1, min_caml_n_objects
	lw	a1, 0(a1)
	addi	a1, a1, -1
	call	setup_startp_constants_2839
	lw	a0, 40(sp)	# restore
	lw	a1, 472(a0)
	lw	a1, 0(a1)
	flw	fa0, 0(a1)
	lw	a2, 12(sp)	# restore
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
	call	trace_diffuse_ray_2934
	b	.calc_diffuse_using_1point_cont_15
.calc_diffuse_using_1point_else_14:
	lw	a0, 472(a0)
	fli	fa1, l_data_27
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2934
.calc_diffuse_using_1point_cont_15:
	li	a3, 116
	lw	a0, 40(sp)	# restore
	lw	a1, 12(sp)	# restore
	lw	a2, 16(sp)	# restore
	call	iter_trace_diffuse_rays_2937
.calc_diffuse_using_1point_cont_13:
	lda	a0, min_caml_rgb
	lw	a1, 8(sp)	# restore
	slli	a1, a1, 2
	lw	a2, 4(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	flw	fa0, 0(a0)
	flw	fa1, 0(a1)
	lw	a2, 0(sp)	# restore
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	flw	fa0, 4(a0)
	flw	fa1, 4(a1)
	flw	fa2, 4(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(a0)
	flw	fa0, 8(a0)
	flw	fa1, 8(a1)
	flw	fa2, 8(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a0)
calc_diffuse_using_1point_ret:
	lw	ra, 44(sp)
	addi	sp, sp, 48
	jr	ra
calc_diffuse_using_5points_2953:
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
	lda	s1, min_caml_diffuse_ray
	slli	s2, a4, 2
	add	t6, a1, s2
	lw	a1, 0(t6)
	flw	fa0, 0(a1)
	fsw	fa0, 0(s1)
	flw	fa0, 4(a1)
	fsw	fa0, 4(s1)
	flw	fa0, 8(a1)
	fsw	fa0, 8(s1)
	slli	a1, a4, 2
	add	t6, a5, a1
	lw	a1, 0(t6)
	flw	fa0, 0(s1)
	flw	fa1, 0(a1)
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(s1)
	flw	fa0, 4(s1)
	flw	fa1, 4(a1)
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(s1)
	flw	fa0, 8(s1)
	flw	fa1, 8(a1)
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(s1)
	slli	a1, a4, 2
	add	t6, a6, a1
	lw	a1, 0(t6)
	flw	fa0, 0(s1)
	flw	fa1, 0(a1)
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(s1)
	flw	fa0, 4(s1)
	flw	fa1, 4(a1)
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(s1)
	flw	fa0, 8(s1)
	flw	fa1, 8(a1)
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(s1)
	slli	a1, a4, 2
	add	t6, a7, a1
	lw	a1, 0(t6)
	flw	fa0, 0(s1)
	flw	fa1, 0(a1)
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(s1)
	flw	fa0, 4(s1)
	flw	fa1, 4(a1)
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(s1)
	flw	fa0, 8(s1)
	flw	fa1, 8(a1)
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(s1)
	slli	a1, a4, 2
	add	t6, a3, a1
	lw	a1, 0(t6)
	flw	fa0, 0(s1)
	flw	fa1, 0(a1)
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(s1)
	flw	fa0, 4(s1)
	flw	fa1, 4(a1)
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(s1)
	flw	fa0, 8(s1)
	flw	fa1, 8(a1)
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(s1)
	slli	a0, a0, 2
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a0, 16(a0)
	lda	a1, min_caml_rgb
	slli	a2, a4, 2
	add	t6, a0, a2
	lw	a0, 0(t6)
	flw	fa0, 0(a1)
	flw	fa1, 0(a0)
	flw	fa2, 0(s1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a1)
	flw	fa0, 4(a1)
	flw	fa1, 4(a0)
	flw	fa2, 4(s1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(a1)
	flw	fa0, 8(a1)
	flw	fa1, 8(a0)
	flw	fa2, 8(s1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a1)
calc_diffuse_using_5points_ret:
	jr	ra
do_without_neighbors_2959:
	addi	sp, sp, -92
	sw	ra, 88(sp)
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
	beq	s2, zero, .do_without_neighbors_cont_1
	lda	s2, min_caml_diffuse_ray
	slli	s3, a1, 2
	add	t6, a4, s3
	lw	s3, 0(t6)
	flw	fa0, 0(s3)
	fsw	fa0, 0(s2)
	flw	fa0, 4(s3)
	fsw	fa0, 4(s2)
	flw	fa0, 8(s3)
	fsw	fa0, 8(s2)
	lw	s3, 0(a3)
	slli	s4, a1, 2
	add	t6, a2, s4
	lw	s4, 0(t6)
	slli	s5, a1, 2
	add	t6, s1, s5
	lw	a0, 0(t6)
	sw	s2, 32(sp)	# save
	sw	a1, 36(sp)	# save
	sw	s4, 40(sp)	# save
	sw	a0, 44(sp)	# save
	sw	s3, 48(sp)	# save
	beq	s3, zero, .do_without_neighbors_cont_2
	lda	s5, min_caml_dirvecs
	lw	s5, 0(s5)
	lda	s6, min_caml_startp_fast
	flw	fa0, 0(a0)
	fsw	fa0, 0(s6)
	flw	fa0, 4(a0)
	fsw	fa0, 4(s6)
	flw	fa0, 8(a0)
	fsw	fa0, 8(s6)
	lda	s6, min_caml_n_objects
	lw	s6, 0(s6)
	addi	a1, s6, -1
	sw	s5, 52(sp)	# save
	call	setup_startp_constants_2839
	li	a3, 118
	lw	a0, 52(sp)	# restore
	lw	a1, 40(sp)	# restore
	lw	a2, 44(sp)	# restore
	call	iter_trace_diffuse_rays_2937
.do_without_neighbors_cont_2:
	lw	a0, 48(sp)	# restore
	beqi	a0, 1, .do_without_neighbors_cont_3
	lda	a1, min_caml_dirvecs
	lw	a1, 4(a1)
	lda	a2, min_caml_startp_fast
	lw	a0, 44(sp)	# restore
	flw	fa0, 0(a0)
	fsw	fa0, 0(a2)
	flw	fa0, 4(a0)
	fsw	fa0, 4(a2)
	flw	fa0, 8(a0)
	fsw	fa0, 8(a2)
	lda	a2, min_caml_n_objects
	lw	a2, 0(a2)
	sw	a1, 56(sp)	# save
	addi	a1, a2, -1
	call	setup_startp_constants_2839
	li	a3, 118
	lw	a0, 56(sp)	# restore
	lw	a1, 40(sp)	# restore
	lw	a2, 44(sp)	# restore
	call	iter_trace_diffuse_rays_2937
.do_without_neighbors_cont_3:
	lw	a0, 48(sp)	# restore
	beqi	a0, 2, .do_without_neighbors_cont_4
	lda	a1, min_caml_dirvecs
	lw	a1, 8(a1)
	lda	a2, min_caml_startp_fast
	lw	a0, 44(sp)	# restore
	flw	fa0, 0(a0)
	fsw	fa0, 0(a2)
	flw	fa0, 4(a0)
	fsw	fa0, 4(a2)
	flw	fa0, 8(a0)
	fsw	fa0, 8(a2)
	lda	a2, min_caml_n_objects
	lw	a2, 0(a2)
	sw	a1, 60(sp)	# save
	addi	a1, a2, -1
	call	setup_startp_constants_2839
	li	a3, 118
	lw	a0, 60(sp)	# restore
	lw	a1, 40(sp)	# restore
	lw	a2, 44(sp)	# restore
	call	iter_trace_diffuse_rays_2937
.do_without_neighbors_cont_4:
	lw	a0, 48(sp)	# restore
	beqi	a0, 3, .do_without_neighbors_cont_5
	lda	a1, min_caml_dirvecs
	lw	a1, 12(a1)
	lda	a2, min_caml_startp_fast
	lw	a0, 44(sp)	# restore
	flw	fa0, 0(a0)
	fsw	fa0, 0(a2)
	flw	fa0, 4(a0)
	fsw	fa0, 4(a2)
	flw	fa0, 8(a0)
	fsw	fa0, 8(a2)
	lda	a2, min_caml_n_objects
	lw	a2, 0(a2)
	sw	a1, 64(sp)	# save
	addi	a1, a2, -1
	call	setup_startp_constants_2839
	li	a3, 118
	lw	a0, 64(sp)	# restore
	lw	a1, 40(sp)	# restore
	lw	a2, 44(sp)	# restore
	call	iter_trace_diffuse_rays_2937
.do_without_neighbors_cont_5:
	lw	a0, 48(sp)	# restore
	beqi	a0, 4, .do_without_neighbors_cont_6
	lda	a0, min_caml_dirvecs
	lw	a0, 16(a0)
	lda	a1, min_caml_startp_fast
	sw	a0, 68(sp)	# save
	lw	a0, 44(sp)	# restore
	flw	fa0, 0(a0)
	fsw	fa0, 0(a1)
	flw	fa0, 4(a0)
	fsw	fa0, 4(a1)
	flw	fa0, 8(a0)
	fsw	fa0, 8(a1)
	lda	a1, min_caml_n_objects
	lw	a1, 0(a1)
	addi	a1, a1, -1
	call	setup_startp_constants_2839
	li	a3, 118
	lw	a0, 68(sp)	# restore
	lw	a1, 40(sp)	# restore
	lw	a2, 44(sp)	# restore
	call	iter_trace_diffuse_rays_2937
.do_without_neighbors_cont_6:
	lda	a0, min_caml_rgb
	lw	a1, 36(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 0(sp)	# restore
	add	t6, a3, a2
	lw	a2, 0(t6)
	flw	fa0, 0(a0)
	flw	fa1, 0(a2)
	lw	a4, 32(sp)	# restore
	flw	fa2, 0(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	flw	fa0, 4(a0)
	flw	fa1, 4(a2)
	flw	fa2, 4(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(a0)
	flw	fa0, 8(a0)
	flw	fa1, 8(a2)
	flw	fa2, 8(a4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a0)
.do_without_neighbors_cont_1:
	addi	a1, a1, 1
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
	sw	a1, 72(sp)	# save
	beq	a0, zero, .do_without_neighbors_cont_7
	lw	a0, 20(sp)	# restore
	call	calc_diffuse_using_1point_2950
.do_without_neighbors_cont_7:
	lw	a0, 72(sp)	# restore
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
	sw	a0, 76(sp)	# save
	beq	a1, zero, .do_without_neighbors_cont_8
	lda	a1, min_caml_diffuse_ray
	slli	a4, a0, 2
	lw	a5, 16(sp)	# restore
	add	t6, a5, a4
	lw	a4, 0(t6)
	flw	fa0, 0(a4)
	fsw	fa0, 0(a1)
	flw	fa0, 4(a4)
	fsw	fa0, 4(a1)
	flw	fa0, 8(a4)
	fsw	fa0, 8(a1)
	lw	a4, 12(sp)	# restore
	lw	a4, 0(a4)
	slli	a5, a0, 2
	sw	a1, 80(sp)	# save
	lw	a6, 8(sp)	# restore
	add	t6, a6, a5
	lw	a1, 0(t6)
	slli	a5, a0, 2
	lw	a6, 4(sp)	# restore
	add	t6, a6, a5
	lw	a2, 0(t6)
	mv	a0, a4
	call	trace_diffuse_ray_80percent_2946
	lda	a0, min_caml_rgb
	lw	a1, 76(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 0(sp)	# restore
	add	t6, a3, a2
	lw	a2, 0(t6)
	flw	fa0, 0(a0)
	flw	fa1, 0(a2)
	lw	a3, 80(sp)	# restore
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	flw	fa0, 4(a0)
	flw	fa1, 4(a2)
	flw	fa2, 4(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(a0)
	flw	fa0, 8(a0)
	flw	fa1, 8(a2)
	flw	fa2, 8(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a0)
.do_without_neighbors_cont_8:
	lw	a0, 76(sp)	# restore
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
	sw	a1, 84(sp)	# save
	beq	a0, zero, .do_without_neighbors_cont_9
	lw	a0, 20(sp)	# restore
	call	calc_diffuse_using_1point_2950
.do_without_neighbors_cont_9:
	lw	a0, 84(sp)	# restore
	addi	a1, a0, 1
	lw	a0, 20(sp)	# restore
	call	do_without_neighbors_2959
do_without_neighbors_ret:
	lw	ra, 88(sp)
	addi	sp, sp, 92
	jr	ra
try_exploit_neighbors_2975:
	addi	sp, sp, -100
	sw	ra, 96(sp)
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
	bne	s1, a6, .try_exploit_neighbors_else_3
	addi	s1, a0, -1
	slli	s1, s1, 2
	add	t6, a3, s1
	lw	s1, 0(t6)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	t6, s1, s2
	lw	s1, 0(t6)
	bne	s1, a6, .try_exploit_neighbors_else_5
	addi	s1, a0, 1
	slli	s1, s1, 2
	add	t6, a3, s1
	lw	s1, 0(t6)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	t6, s1, s2
	lw	s1, 0(t6)
	bne	s1, a6, .try_exploit_neighbors_else_7
	li	a6, 1
	b	.try_exploit_neighbors_cont_2
.try_exploit_neighbors_else_7:
	li	a6, 0
	b	.try_exploit_neighbors_cont_2
.try_exploit_neighbors_else_5:
	li	a6, 0
	b	.try_exploit_neighbors_cont_2
.try_exploit_neighbors_else_3:
	li	a6, 0
	b	.try_exploit_neighbors_cont_2
.try_exploit_neighbors_else_1:
	li	a6, 0
.try_exploit_neighbors_cont_2:
	bne	a6, zero, .try_exploit_neighbors_else_9
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
	call	calc_diffuse_using_1point_2950
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
	sw	a0, 36(sp)	# save
	beq	a1, zero, .try_exploit_neighbors_cont_11
	lda	a1, min_caml_diffuse_ray
	slli	a4, a0, 2
	lw	a5, 20(sp)	# restore
	add	t6, a5, a4
	lw	a4, 0(t6)
	flw	fa0, 0(a4)
	fsw	fa0, 0(a1)
	flw	fa0, 4(a4)
	fsw	fa0, 4(a1)
	flw	fa0, 8(a4)
	fsw	fa0, 8(a1)
	lw	a4, 16(sp)	# restore
	lw	a4, 0(a4)
	slli	a5, a0, 2
	sw	a1, 40(sp)	# save
	lw	a6, 12(sp)	# restore
	add	t6, a6, a5
	lw	a1, 0(t6)
	slli	a5, a0, 2
	lw	a6, 8(sp)	# restore
	add	t6, a6, a5
	lw	a2, 0(t6)
	mv	a0, a4
	call	trace_diffuse_ray_80percent_2946
	lda	a0, min_caml_rgb
	lw	a1, 36(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 4(sp)	# restore
	add	t6, a3, a2
	lw	a2, 0(t6)
	flw	fa0, 0(a0)
	flw	fa1, 0(a2)
	lw	a3, 40(sp)	# restore
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	flw	fa0, 4(a0)
	flw	fa1, 4(a2)
	flw	fa2, 4(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(a0)
	flw	fa0, 8(a0)
	flw	fa1, 8(a2)
	flw	fa2, 8(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a0)
.try_exploit_neighbors_cont_11:
	lw	a0, 36(sp)	# restore
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
	sw	a1, 44(sp)	# save
	beq	a0, zero, .try_exploit_neighbors_cont_12
	lw	a0, 0(sp)	# restore
	call	calc_diffuse_using_1point_2950
.try_exploit_neighbors_cont_12:
	lw	a0, 44(sp)	# restore
	addi	a1, a0, 1
	lw	a0, 0(sp)	# restore
	call	do_without_neighbors_2959
	lw	ra, 96(sp)
	addi	sp, sp, 100
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
	lda	s4, min_caml_diffuse_ray
	slli	s5, a5, 2
	add	t6, a6, s5
	lw	a6, 0(t6)
	flw	fa0, 0(a6)
	fsw	fa0, 0(s4)
	flw	fa0, 4(a6)
	fsw	fa0, 4(s4)
	flw	fa0, 8(a6)
	fsw	fa0, 8(s4)
	slli	a6, a5, 2
	add	t6, a7, a6
	lw	a6, 0(t6)
	flw	fa0, 0(s4)
	flw	fa1, 0(a6)
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(s4)
	flw	fa0, 4(s4)
	flw	fa1, 4(a6)
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(s4)
	flw	fa0, 8(s4)
	flw	fa1, 8(a6)
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(s4)
	slli	a6, a5, 2
	add	t6, s1, a6
	lw	a6, 0(t6)
	flw	fa0, 0(s4)
	flw	fa1, 0(a6)
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(s4)
	flw	fa0, 4(s4)
	flw	fa1, 4(a6)
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(s4)
	flw	fa0, 8(s4)
	flw	fa1, 8(a6)
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(s4)
	slli	a6, a5, 2
	add	t6, s2, a6
	lw	a6, 0(t6)
	flw	fa0, 0(s4)
	flw	fa1, 0(a6)
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(s4)
	flw	fa0, 4(s4)
	flw	fa1, 4(a6)
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(s4)
	flw	fa0, 8(s4)
	flw	fa1, 8(a6)
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(s4)
	slli	a6, a5, 2
	add	t6, s3, a6
	lw	a6, 0(t6)
	flw	fa0, 0(s4)
	flw	fa1, 0(a6)
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(s4)
	flw	fa0, 4(s4)
	flw	fa1, 4(a6)
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(s4)
	flw	fa0, 8(s4)
	flw	fa1, 8(a6)
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(s4)
	slli	a6, a0, 2
	add	t6, a3, a6
	lw	a6, 0(t6)
	lw	a6, 16(a6)
	lda	a7, min_caml_rgb
	slli	s1, a5, 2
	add	t6, a6, s1
	lw	a6, 0(t6)
	flw	fa0, 0(a7)
	flw	fa1, 0(a6)
	flw	fa2, 0(s4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a7)
	flw	fa0, 4(a7)
	flw	fa1, 4(a6)
	flw	fa2, 4(s4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(a7)
	flw	fa0, 8(a7)
	flw	fa1, 8(a6)
	flw	fa2, 8(s4)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a7)
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
	bne	s1, a6, .try_exploit_neighbors_else_16
	addi	s1, a0, -1
	slli	s1, s1, 2
	add	t6, a3, s1
	lw	s1, 0(t6)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	t6, s1, s2
	lw	s1, 0(t6)
	bne	s1, a6, .try_exploit_neighbors_else_18
	addi	s1, a0, 1
	slli	s1, s1, 2
	add	t6, a3, s1
	lw	s1, 0(t6)
	lw	s1, 8(s1)
	slli	s2, a5, 2
	add	t6, s1, s2
	lw	s1, 0(t6)
	bne	s1, a6, .try_exploit_neighbors_else_20
	li	a6, 1
	b	.try_exploit_neighbors_cont_15
.try_exploit_neighbors_else_20:
	li	a6, 0
	b	.try_exploit_neighbors_cont_15
.try_exploit_neighbors_else_18:
	li	a6, 0
	b	.try_exploit_neighbors_cont_15
.try_exploit_neighbors_else_16:
	li	a6, 0
	b	.try_exploit_neighbors_cont_15
.try_exploit_neighbors_else_14:
	li	a6, 0
.try_exploit_neighbors_cont_15:
	bne	a6, zero, .try_exploit_neighbors_else_22
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
	sw	a0, 48(sp)	# save
	sw	a6, 52(sp)	# save
	sw	a7, 56(sp)	# save
	sw	a5, 60(sp)	# save
	beq	s2, zero, .try_exploit_neighbors_cont_23
	lda	s2, min_caml_diffuse_ray
	slli	s3, a5, 2
	add	t6, a3, s3
	lw	a3, 0(t6)
	flw	fa0, 0(a3)
	fsw	fa0, 0(s2)
	flw	fa0, 4(a3)
	fsw	fa0, 4(s2)
	flw	fa0, 8(a3)
	fsw	fa0, 8(s2)
	lw	a0, 0(a2)
	slli	a2, a5, 2
	add	t6, a1, a2
	lw	a1, 0(t6)
	slli	a2, a5, 2
	add	t6, s1, a2
	lw	a2, 0(t6)
	sw	s2, 64(sp)	# save
	sw	a4, 68(sp)	# save
	call	trace_diffuse_ray_80percent_2946
	lda	a0, min_caml_rgb
	lw	a1, 60(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 68(sp)	# restore
	add	t6, a3, a2
	lw	a2, 0(t6)
	flw	fa0, 0(a0)
	flw	fa1, 0(a2)
	lw	a3, 64(sp)	# restore
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	flw	fa0, 4(a0)
	flw	fa1, 4(a2)
	flw	fa2, 4(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(a0)
	flw	fa0, 8(a0)
	flw	fa1, 8(a2)
	flw	fa2, 8(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a0)
.try_exploit_neighbors_cont_23:
	lw	a0, 60(sp)	# restore
	addi	a1, a0, 1
	bgti	a1, 4, try_exploit_neighbors_ret
	slli	a0, a1, 2
	lw	a2, 56(sp)	# restore
	add	t6, a2, a0
	lw	a0, 0(t6)
	blt	a0, zero, try_exploit_neighbors_ret
	slli	a0, a1, 2
	lw	a2, 52(sp)	# restore
	add	t6, a2, a0
	lw	a0, 0(t6)
	sw	a1, 72(sp)	# save
	beq	a0, zero, .try_exploit_neighbors_cont_24
	lw	a0, 48(sp)	# restore
	call	calc_diffuse_using_1point_2950
.try_exploit_neighbors_cont_24:
	lw	a0, 72(sp)	# restore
	addi	a1, a0, 1
	lw	a0, 48(sp)	# restore
	call	do_without_neighbors_2959
	lw	ra, 96(sp)
	addi	sp, sp, 100
	jr	ra
.try_exploit_neighbors_else_22:
	slli	a6, a5, 2
	add	t6, a7, a6
	lw	a6, 0(t6)
	sw	a4, 76(sp)	# save
	sw	a3, 80(sp)	# save
	sw	a2, 84(sp)	# save
	sw	a1, 88(sp)	# save
	sw	a0, 92(sp)	# save
	sw	a5, 60(sp)	# save
	beq	a6, zero, .try_exploit_neighbors_cont_25
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	call	calc_diffuse_using_5points_2953
.try_exploit_neighbors_cont_25:
	lw	a0, 60(sp)	# restore
	addi	a5, a0, 1
	lw	a0, 92(sp)	# restore
	lw	a1, 88(sp)	# restore
	lw	a2, 84(sp)	# restore
	lw	a3, 80(sp)	# restore
	lw	a4, 76(sp)	# restore
	call	try_exploit_neighbors_2975
try_exploit_neighbors_ret:
	lw	ra, 96(sp)
	addi	sp, sp, 100
	jr	ra
pretrace_diffuse_rays_2988:
	addi	sp, sp, -72
	sw	ra, 68(sp)
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
	lda	s2, min_caml_diffuse_ray
	fsw	fzero, 0(s2)
	fsw	fzero, 4(s2)
	fsw	fzero, 8(s2)
	slli	s1, s1, 2
	lwl	s1, min_caml_dirvecs(s1)
	slli	s3, a1, 2
	add	t6, a2, s3
	lw	s3, 0(t6)
	slli	s4, a1, 2
	add	t6, a7, s4
	lw	a0, 0(t6)
	lda	s4, min_caml_startp_fast
	flw	fa0, 0(a0)
	fsw	fa0, 0(s4)
	flw	fa0, 4(a0)
	fsw	fa0, 4(s4)
	flw	fa0, 8(a0)
	fsw	fa0, 8(s4)
	lda	s4, min_caml_n_objects
	lw	s4, 0(s4)
	addi	a1, s4, -1
	sw	s2, 32(sp)	# save
	sw	a0, 36(sp)	# save
	sw	s3, 40(sp)	# save
	sw	s1, 44(sp)	# save
	call	setup_startp_constants_2839
	li	a3, 118
	lw	a0, 44(sp)	# restore
	lw	a1, 40(sp)	# restore
	lw	a2, 36(sp)	# restore
	call	iter_trace_diffuse_rays_2937
	lw	a0, 28(sp)	# restore
	slli	a1, a0, 2
	lw	a2, 4(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a3, 32(sp)	# restore
	flw	fa0, 0(a3)
	fsw	fa0, 0(a1)
	flw	fa0, 4(a3)
	fsw	fa0, 4(a1)
	flw	fa0, 8(a3)
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
	lda	a2, min_caml_diffuse_ray
	fsw	fzero, 0(a2)
	fsw	fzero, 4(a2)
	fsw	fzero, 8(a2)
	slli	a1, a1, 2
	lwl	a1, min_caml_dirvecs(a1)
	slli	a3, a0, 2
	lw	a4, 12(sp)	# restore
	add	t6, a4, a3
	lw	a3, 0(t6)
	slli	a4, a0, 2
	sw	a0, 48(sp)	# save
	lw	a5, 8(sp)	# restore
	add	t6, a5, a4
	lw	a0, 0(t6)
	lda	a4, min_caml_startp_fast
	flw	fa0, 0(a0)
	fsw	fa0, 0(a4)
	flw	fa0, 4(a0)
	fsw	fa0, 4(a4)
	flw	fa0, 8(a0)
	fsw	fa0, 8(a4)
	lda	a4, min_caml_n_objects
	lw	a4, 0(a4)
	sw	a1, 52(sp)	# save
	addi	a1, a4, -1
	sw	a2, 56(sp)	# save
	sw	a0, 60(sp)	# save
	sw	a3, 64(sp)	# save
	call	setup_startp_constants_2839
	lw	a0, 52(sp)	# restore
	lw	a1, 472(a0)
	lw	a1, 0(a1)
	flw	fa0, 0(a1)
	lw	a2, 64(sp)	# restore
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
	call	trace_diffuse_ray_2934
	b	.pretrace_diffuse_rays_cont_4
.pretrace_diffuse_rays_else_3:
	lw	a0, 472(a0)
	fli	fa1, l_data_27
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2934
.pretrace_diffuse_rays_cont_4:
	li	a3, 116
	lw	a0, 52(sp)	# restore
	lw	a1, 64(sp)	# restore
	lw	a2, 60(sp)	# restore
	call	iter_trace_diffuse_rays_2937
	lw	a0, 48(sp)	# restore
	slli	a1, a0, 2
	lw	a2, 4(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 56(sp)	# restore
	flw	fa0, 0(a2)
	fsw	fa0, 0(a1)
	flw	fa0, 4(a2)
	fsw	fa0, 4(a1)
	flw	fa0, 8(a2)
	fsw	fa0, 8(a1)
.pretrace_diffuse_rays_cont_2:
	addi	a1, a0, 1
	lw	a0, 0(sp)	# restore
	call	pretrace_diffuse_rays_2988
pretrace_diffuse_rays_ret:
	lw	ra, 68(sp)
	addi	sp, sp, 72
	jr	ra
pretrace_pixels_2991:
	addi	sp, sp, -56
	sw	ra, 52(sp)
	blt	a1, zero, pretrace_pixels_ret
	lda	a3, min_caml_scan_pitch
	flw	fa3, 0(a3)
	lda	a3, min_caml_image_center
	lw	a3, 0(a3)
	sw	a0, 0(sp)	# save
	sub	a0, a1, a3
	fsw	fa0, 4(sp)	# save
	call	min_caml_float_of_int
	fmul	fa0, fa3, fa0
	sw	a1, 8(sp)	# save
	lda	a1, min_caml_ptrace_dirvec
	lda	a0, min_caml_screenx_dir
	flw	fa3, 0(a0)
	fmul	fa3, fa0, fa3
	flw	fa4, 4(sp)	# restore
	fadd	fa3, fa3, fa4
	fsw	fa3, 0(a1)
	flw	fa3, 4(a0)
	fmul	fa3, fa0, fa3
	fadd	fa3, fa3, fa1
	fsw	fa3, 4(a1)
	flw	fa3, 8(a0)
	fmul	fa0, fa0, fa3
	fadd	fa0, fa0, fa2
	fsw	fa0, 8(a1)
	flw	fa0, 0(a1)
	flw	fa3, 0(a1)
	fmul	fa0, fa0, fa3
	flw	fa3, 4(a1)
	flw	fa5, 4(a1)
	fmul	fa3, fa3, fa5
	fadd	fa0, fa0, fa3
	flw	fa3, 8(a1)
	flw	fa5, 8(a1)
	fmul	fa3, fa3, fa5
	fadd	fa0, fa0, fa3
	fsqrt	fa0, fa0
	fsw	fa1, 12(sp)	# save
	fmv	fa1, fzero
	feq	a0, fa0, fzero
	bne	a0, zero, .pretrace_pixels_else_1
	fli	fa3, l_data_5
	fdiv	fa0, fa3, fa0
	b	.pretrace_pixels_cont_2
.pretrace_pixels_else_1:
	fli	fa0, l_data_5
.pretrace_pixels_cont_2:
	flw	fa3, 0(a1)
	fmul	fa3, fa3, fa0
	fsw	fa3, 0(a1)
	flw	fa3, 4(a1)
	fmul	fa3, fa3, fa0
	fsw	fa3, 4(a1)
	flw	fa3, 8(a1)
	fmul	fa0, fa3, fa0
	fsw	fa0, 8(a1)
	lda	a0, min_caml_rgb
	fsw	fzero, 0(a0)
	fsw	fzero, 4(a0)
	fsw	fzero, 8(a0)
	lda	a3, min_caml_startp
	lda	a4, min_caml_viewpoint
	flw	fa0, 0(a4)
	fsw	fa0, 0(a3)
	flw	fa0, 4(a4)
	fsw	fa0, 4(a3)
	flw	fa0, 8(a4)
	fsw	fa0, 8(a3)
	sw	a0, 16(sp)	# save
	li	a0, 0
	fli	fa0, l_data_5
	lw	a3, 8(sp)	# restore
	slli	a4, a3, 2
	sw	a2, 20(sp)	# save
	lw	a5, 0(sp)	# restore
	add	t6, a5, a4
	lw	a2, 0(t6)
	fsw	fa2, 24(sp)	# save
	call	trace_ray_2928
	lw	a0, 8(sp)	# restore
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	lw	a3, 16(sp)	# restore
	flw	fa0, 0(a3)
	fsw	fa0, 0(a1)
	flw	fa0, 4(a3)
	fsw	fa0, 4(a1)
	flw	fa0, 8(a3)
	fsw	fa0, 8(a1)
	slli	a1, a0, 2
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 24(a1)
	lw	a3, 20(sp)	# restore
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
	sw	a0, 28(sp)	# save
	beq	a6, zero, .pretrace_pixels_cont_4
	lw	a4, 0(a4)
	lda	a6, min_caml_diffuse_ray
	fsw	fzero, 0(a6)
	fsw	fzero, 4(a6)
	fsw	fzero, 8(a6)
	slli	a4, a4, 2
	lwl	a4, min_caml_dirvecs(a4)
	lw	a1, 0(a1)
	lw	a0, 0(s1)
	lda	a7, min_caml_startp_fast
	flw	fa0, 0(a0)
	fsw	fa0, 0(a7)
	flw	fa0, 4(a0)
	fsw	fa0, 4(a7)
	flw	fa0, 8(a0)
	fsw	fa0, 8(a7)
	lda	a7, min_caml_n_objects
	lw	a7, 0(a7)
	sw	a1, 32(sp)	# save
	addi	a1, a7, -1
	sw	a6, 36(sp)	# save
	sw	a5, 40(sp)	# save
	sw	a0, 44(sp)	# save
	sw	a4, 48(sp)	# save
	call	setup_startp_constants_2839
	lw	a0, 48(sp)	# restore
	lw	a1, 472(a0)
	lw	a1, 0(a1)
	flw	fa0, 0(a1)
	lw	a2, 32(sp)	# restore
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
	call	trace_diffuse_ray_2934
	b	.pretrace_pixels_cont_6
.pretrace_pixels_else_5:
	lw	a0, 472(a0)
	fli	fa1, l_data_27
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2934
.pretrace_pixels_cont_6:
	li	a3, 116
	lw	a0, 48(sp)	# restore
	lw	a1, 32(sp)	# restore
	lw	a2, 44(sp)	# restore
	call	iter_trace_diffuse_rays_2937
	lw	a0, 40(sp)	# restore
	lw	a0, 0(a0)
	lw	a1, 36(sp)	# restore
	flw	fa0, 0(a1)
	fsw	fa0, 0(a0)
	flw	fa0, 4(a1)
	fsw	fa0, 4(a0)
	flw	fa0, 8(a1)
	fsw	fa0, 8(a0)
.pretrace_pixels_cont_4:
	li	a1, 1
	lw	a0, 28(sp)	# restore
	call	pretrace_diffuse_rays_2988
.pretrace_pixels_cont_3:
	lw	a0, 8(sp)	# restore
	addi	a1, a0, -1
	lw	a0, 20(sp)	# restore
	addi	a0, a0, 1
	blti	a0, 5, .pretrace_pixels_else_7
	addi	a2, a0, -5
	b	.pretrace_pixels_cont_8
.pretrace_pixels_else_7:
	mv	a2, a0
.pretrace_pixels_cont_8:
	flw	fa0, 4(sp)	# restore
	flw	fa1, 12(sp)	# restore
	flw	fa2, 24(sp)	# restore
	lw	a0, 0(sp)	# restore
	call	pretrace_pixels_2991
pretrace_pixels_ret:
	lw	ra, 52(sp)
	addi	sp, sp, 56
	jr	ra
scan_pixel_3002:
	addi	sp, sp, -112
	sw	ra, 108(sp)
	lda	a5, min_caml_image_size
	lw	a6, 0(a5)
	bgt	a6, a0, .scan_pixel_else_1
	lw	ra, 108(sp)
	addi	sp, sp, 112
	jr	ra
.scan_pixel_else_1:
	lda	a6, min_caml_rgb
	slli	a7, a0, 2
	add	t6, a3, a7
	lw	a7, 0(t6)
	lw	a7, 0(a7)
	flw	fa0, 0(a7)
	fsw	fa0, 0(a6)
	flw	fa0, 4(a7)
	fsw	fa0, 4(a6)
	flw	fa0, 8(a7)
	fsw	fa0, 8(a6)
	lw	a7, 4(a5)
	addi	s1, a1, 1
	bgt	a7, s1, .scan_pixel_else_3
	li	a7, 0
	b	.scan_pixel_cont_4
.scan_pixel_else_3:
	bgt	a1, zero, .scan_pixel_else_5
	li	a7, 0
	b	.scan_pixel_cont_6
.scan_pixel_else_5:
	lw	a7, 0(a5)
	addi	s1, a0, 1
	bgt	a7, s1, .scan_pixel_else_7
	li	a7, 0
	b	.scan_pixel_cont_8
.scan_pixel_else_7:
	bgt	a0, zero, .scan_pixel_else_9
	li	a7, 0
	b	.scan_pixel_cont_10
.scan_pixel_else_9:
	li	a7, 1
.scan_pixel_cont_10:
.scan_pixel_cont_8:
.scan_pixel_cont_6:
.scan_pixel_cont_4:
	sw	a4, 0(sp)	# save
	sw	a2, 4(sp)	# save
	sw	a1, 8(sp)	# save
	sw	a3, 12(sp)	# save
	sw	a5, 16(sp)	# save
	sw	a0, 20(sp)	# save
	sw	a6, 24(sp)	# save
	bne	a7, zero, .scan_pixel_else_11
	slli	a7, a0, 2
	add	t6, a3, a7
	lw	a0, 0(t6)
	li	a1, 0
	lw	a7, 28(a0)
	lw	s1, 24(a0)
	lw	s2, 20(a0)
	lw	s3, 16(a0)
	lw	s4, 12(a0)
	lw	s5, 8(a0)
	lw	s6, 4(a0)
	lw	s7, 0(s5)
	blt	s7, zero, .scan_pixel_cont_12
	lw	s7, 0(s4)
	sw	a0, 28(sp)	# save
	sw	s3, 32(sp)	# save
	sw	s6, 36(sp)	# save
	sw	a7, 40(sp)	# save
	sw	s1, 44(sp)	# save
	sw	s2, 48(sp)	# save
	sw	s4, 52(sp)	# save
	sw	s5, 56(sp)	# save
	beq	s7, zero, .scan_pixel_cont_14
	call	calc_diffuse_using_1point_2950
.scan_pixel_cont_14:
	lw	a0, 56(sp)	# restore
	lw	a1, 4(a0)
	blt	a1, zero, .scan_pixel_cont_12
	lw	a1, 52(sp)	# restore
	lw	a2, 4(a1)
	beq	a2, zero, .scan_pixel_cont_16
	lda	a2, min_caml_diffuse_ray
	lw	a3, 48(sp)	# restore
	lw	a3, 4(a3)
	flw	fa0, 0(a3)
	fsw	fa0, 0(a2)
	flw	fa0, 4(a3)
	fsw	fa0, 4(a2)
	flw	fa0, 8(a3)
	fsw	fa0, 8(a2)
	lw	a3, 44(sp)	# restore
	lw	a0, 0(a3)
	lw	a3, 40(sp)	# restore
	lw	a1, 4(a3)
	sw	a2, 60(sp)	# save
	lw	a3, 36(sp)	# restore
	lw	a2, 4(a3)
	call	trace_diffuse_ray_80percent_2946
	lw	a0, 32(sp)	# restore
	lw	a0, 4(a0)
	lw	a1, 24(sp)	# restore
	flw	fa0, 0(a1)
	flw	fa1, 0(a0)
	lw	a2, 60(sp)	# restore
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a1)
	flw	fa0, 4(a1)
	flw	fa1, 4(a0)
	flw	fa2, 4(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(a1)
	flw	fa0, 8(a1)
	flw	fa1, 8(a0)
	flw	fa2, 8(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a1)
.scan_pixel_cont_16:
	li	a1, 2
	lw	a0, 56(sp)	# restore
	lw	a0, 8(a0)
	blt	a0, zero, .scan_pixel_cont_12
	lw	a0, 52(sp)	# restore
	lw	a0, 8(a0)
	beq	a0, zero, .scan_pixel_cont_18
	lw	a0, 28(sp)	# restore
	call	calc_diffuse_using_1point_2950
.scan_pixel_cont_18:
	li	a1, 3
	lw	a0, 28(sp)	# restore
	call	do_without_neighbors_2959
	b	.scan_pixel_cont_12
.scan_pixel_else_11:
	li	a7, 0
	slli	s1, a0, 2
	add	t6, a3, s1
	lw	s1, 0(t6)
	lw	s2, 12(s1)
	lw	s1, 8(s1)
	lw	s1, 0(s1)
	blt	s1, zero, .scan_pixel_cont_19
	slli	s1, a0, 2
	add	t6, a3, s1
	lw	s1, 0(t6)
	lw	s1, 8(s1)
	lw	s1, 0(s1)
	slli	s3, a0, 2
	add	t6, a2, s3
	lw	s3, 0(t6)
	lw	s3, 8(s3)
	lw	s3, 0(s3)
	bne	s3, s1, .scan_pixel_else_20
	slli	s3, a0, 2
	add	t6, a4, s3
	lw	s3, 0(t6)
	lw	s3, 8(s3)
	lw	s3, 0(s3)
	bne	s3, s1, .scan_pixel_else_22
	addi	s3, a0, -1
	slli	s3, s3, 2
	add	t6, a3, s3
	lw	s3, 0(t6)
	lw	s3, 8(s3)
	lw	s3, 0(s3)
	bne	s3, s1, .scan_pixel_else_24
	addi	s3, a0, 1
	slli	s3, s3, 2
	add	t6, a3, s3
	lw	s3, 0(t6)
	lw	s3, 8(s3)
	lw	s3, 0(s3)
	bne	s3, s1, .scan_pixel_else_26
	li	s1, 1
	b	.scan_pixel_cont_21
.scan_pixel_else_26:
	li	s1, 0
	b	.scan_pixel_cont_21
.scan_pixel_else_24:
	li	s1, 0
	b	.scan_pixel_cont_21
.scan_pixel_else_22:
	li	s1, 0
	b	.scan_pixel_cont_21
.scan_pixel_else_20:
	li	s1, 0
.scan_pixel_cont_21:
	bne	s1, zero, .scan_pixel_else_28
	slli	a7, a0, 2
	add	t6, a3, a7
	lw	a0, 0(t6)
	lw	a7, 28(a0)
	lw	s1, 24(a0)
	lw	s2, 20(a0)
	lw	s3, 16(a0)
	lw	s4, 12(a0)
	lw	s5, 8(a0)
	lw	s6, 4(a0)
	lw	s7, 0(s5)
	blt	s7, zero, .scan_pixel_cont_29
	lw	s7, 0(s4)
	sw	a0, 64(sp)	# save
	sw	s4, 68(sp)	# save
	sw	s5, 72(sp)	# save
	beq	s7, zero, .scan_pixel_cont_31
	lda	s7, min_caml_diffuse_ray
	lw	s2, 0(s2)
	flw	fa0, 0(s2)
	fsw	fa0, 0(s7)
	flw	fa0, 4(s2)
	fsw	fa0, 4(s7)
	flw	fa0, 8(s2)
	fsw	fa0, 8(s7)
	lw	a0, 0(s1)
	lw	a1, 0(a7)
	lw	a2, 0(s6)
	sw	s7, 76(sp)	# save
	sw	s3, 80(sp)	# save
	call	trace_diffuse_ray_80percent_2946
	lw	a0, 80(sp)	# restore
	lw	a0, 0(a0)
	lw	a1, 24(sp)	# restore
	flw	fa0, 0(a1)
	flw	fa1, 0(a0)
	lw	a2, 76(sp)	# restore
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a1)
	flw	fa0, 4(a1)
	flw	fa1, 4(a0)
	flw	fa2, 4(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(a1)
	flw	fa0, 8(a1)
	flw	fa1, 8(a0)
	flw	fa2, 8(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a1)
.scan_pixel_cont_31:
	li	a1, 1
	lw	a0, 72(sp)	# restore
	lw	a0, 4(a0)
	blt	a0, zero, .scan_pixel_cont_29
	lw	a0, 68(sp)	# restore
	lw	a0, 4(a0)
	beq	a0, zero, .scan_pixel_cont_33
	lw	a0, 64(sp)	# restore
	call	calc_diffuse_using_1point_2950
.scan_pixel_cont_33:
	li	a1, 2
	lw	a0, 64(sp)	# restore
	call	do_without_neighbors_2959
	b	.scan_pixel_cont_29
.scan_pixel_else_28:
	lw	s1, 0(s2)
	beq	s1, zero, .scan_pixel_cont_34
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a7
	call	calc_diffuse_using_5points_2953
.scan_pixel_cont_34:
	li	a5, 1
	lw	a0, 20(sp)	# restore
	lw	a1, 8(sp)	# restore
	lw	a2, 4(sp)	# restore
	lw	a3, 12(sp)	# restore
	lw	a4, 0(sp)	# restore
	call	try_exploit_neighbors_2975
.scan_pixel_cont_29:
.scan_pixel_cont_19:
.scan_pixel_cont_12:
	lw	a0, 24(sp)	# restore
	flw	fa0, 0(a0)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_35
	bge	a0, zero, .scan_pixel_cont_36
	li	a0, 0
	b	.scan_pixel_cont_36
.scan_pixel_else_35:
	li	a0, 255
.scan_pixel_cont_36:
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 24(sp)	# restore
	flw	fa0, 4(a0)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_38
	bge	a0, zero, .scan_pixel_cont_39
	li	a0, 0
	b	.scan_pixel_cont_39
.scan_pixel_else_38:
	li	a0, 255
.scan_pixel_cont_39:
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 24(sp)	# restore
	flw	fa0, 8(a0)
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
	call	min_caml_print_char
	lw	a0, 20(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 16(sp)	# restore
	lw	a2, 0(a1)
	bgt	a2, a0, .scan_pixel_else_44
	lw	ra, 108(sp)
	addi	sp, sp, 112
	jr	ra
.scan_pixel_else_44:
	slli	a2, a0, 2
	lw	a3, 12(sp)	# restore
	add	t6, a3, a2
	lw	a2, 0(t6)
	lw	a2, 0(a2)
	flw	fa0, 0(a2)
	lw	a4, 24(sp)	# restore
	fsw	fa0, 0(a4)
	flw	fa0, 4(a2)
	fsw	fa0, 4(a4)
	flw	fa0, 8(a2)
	fsw	fa0, 8(a4)
	lw	a2, 4(a1)
	lw	a5, 8(sp)	# restore
	addi	a6, a5, 1
	bgt	a2, a6, .scan_pixel_else_46
	li	a1, 0
	b	.scan_pixel_cont_47
.scan_pixel_else_46:
	bgt	a5, zero, .scan_pixel_else_48
	li	a1, 0
	b	.scan_pixel_cont_49
.scan_pixel_else_48:
	lw	a1, 0(a1)
	addi	a2, a0, 1
	bgt	a1, a2, .scan_pixel_else_50
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
	sw	a0, 84(sp)	# save
	bne	a1, zero, .scan_pixel_else_54
	slli	a1, a0, 2
	add	t6, a3, a1
	lw	a0, 0(t6)
	lw	a1, 28(a0)
	lw	a2, 24(a0)
	lw	a6, 20(a0)
	lw	a7, 16(a0)
	lw	s1, 12(a0)
	lw	s2, 8(a0)
	lw	s3, 4(a0)
	lw	s4, 0(s2)
	blt	s4, zero, .scan_pixel_cont_55
	lw	s4, 0(s1)
	sw	a0, 88(sp)	# save
	sw	s1, 92(sp)	# save
	sw	s2, 96(sp)	# save
	beq	s4, zero, .scan_pixel_cont_57
	lda	s4, min_caml_diffuse_ray
	lw	a6, 0(a6)
	flw	fa0, 0(a6)
	fsw	fa0, 0(s4)
	flw	fa0, 4(a6)
	fsw	fa0, 4(s4)
	flw	fa0, 8(a6)
	fsw	fa0, 8(s4)
	lw	a0, 0(a2)
	lw	a1, 0(a1)
	lw	a2, 0(s3)
	sw	s4, 100(sp)	# save
	sw	a7, 104(sp)	# save
	call	trace_diffuse_ray_80percent_2946
	lw	a0, 104(sp)	# restore
	lw	a0, 0(a0)
	lw	a1, 24(sp)	# restore
	flw	fa0, 0(a1)
	flw	fa1, 0(a0)
	lw	a2, 100(sp)	# restore
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a1)
	flw	fa0, 4(a1)
	flw	fa1, 4(a0)
	flw	fa2, 4(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(a1)
	flw	fa0, 8(a1)
	flw	fa1, 8(a0)
	flw	fa2, 8(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a1)
.scan_pixel_cont_57:
	li	a1, 1
	lw	a0, 96(sp)	# restore
	lw	a0, 4(a0)
	blt	a0, zero, .scan_pixel_cont_55
	lw	a0, 92(sp)	# restore
	lw	a0, 4(a0)
	beq	a0, zero, .scan_pixel_cont_59
	lw	a0, 88(sp)	# restore
	call	calc_diffuse_using_1point_2950
.scan_pixel_cont_59:
	li	a1, 2
	lw	a0, 88(sp)	# restore
	call	do_without_neighbors_2959
	b	.scan_pixel_cont_55
.scan_pixel_else_54:
	li	a1, 0
	lw	a2, 4(sp)	# restore
	lw	a4, 0(sp)	# restore
	mv	t4, a5
	mv	a5, a1
	mv	a1, t4
	call	try_exploit_neighbors_2975
.scan_pixel_cont_55:
	lw	a0, 24(sp)	# restore
	flw	fa0, 0(a0)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_60
	bge	a0, zero, .scan_pixel_cont_61
	li	a0, 0
	b	.scan_pixel_cont_61
.scan_pixel_else_60:
	li	a0, 255
.scan_pixel_cont_61:
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 24(sp)	# restore
	flw	fa0, 4(a0)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_pixel_else_63
	bge	a0, zero, .scan_pixel_cont_64
	li	a0, 0
	b	.scan_pixel_cont_64
.scan_pixel_else_63:
	li	a0, 255
.scan_pixel_cont_64:
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 24(sp)	# restore
	flw	fa0, 8(a0)
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
	call	min_caml_print_char
	lw	a0, 84(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 8(sp)	# restore
	lw	a2, 4(sp)	# restore
	lw	a3, 12(sp)	# restore
	lw	a4, 0(sp)	# restore
	call	scan_pixel_3002
scan_pixel_ret:
	lw	ra, 108(sp)
	addi	sp, sp, 112
	jr	ra
scan_line_3008:
	addi	sp, sp, -68
	sw	ra, 64(sp)
	lda	a5, min_caml_image_size
	lw	a6, 4(a5)
	bgt	a6, a0, .scan_line_else_1
	lw	ra, 64(sp)
	addi	sp, sp, 68
	jr	ra
.scan_line_else_1:
	lw	a6, 4(a5)
	addi	a6, a6, -1
	sw	a4, 0(sp)	# save
	sw	a3, 4(sp)	# save
	sw	a1, 8(sp)	# save
	sw	a0, 12(sp)	# save
	sw	a2, 16(sp)	# save
	sw	a5, 20(sp)	# save
	ble	a6, a0, .scan_line_cont_3
	addi	a6, a0, 1
	lda	a7, min_caml_scan_pitch
	flw	fa0, 0(a7)
	lda	a7, min_caml_image_center
	lw	a7, 4(a7)
	sub	a0, a6, a7
	fsw	fa0, 24(sp)	# save
	call	min_caml_float_of_int
	flw	fa1, 24(sp)	# restore
	fmul	fa0, fa1, fa0
	lda	a0, min_caml_screeny_dir
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	lda	a6, min_caml_screenz_dir
	flw	fa2, 0(a6)
	fadd	fa1, fa1, fa2
	flw	fa2, 4(a0)
	fmul	fa2, fa0, fa2
	flw	fa3, 4(a6)
	fadd	fa2, fa2, fa3
	flw	fa3, 8(a0)
	fmul	fa0, fa0, fa3
	flw	fa3, 8(a6)
	fadd	fa0, fa0, fa3
	lw	a0, 0(a5)
	addi	a1, a0, -1
	mv	a2, a4
	mv	a0, a3
	fmv	ft8, fa2
	fmv	fa2, fa0
	fmv	fa0, fa1
	fmv	fa1, ft8
	call	pretrace_pixels_2991
.scan_line_cont_3:
	li	a0, 0
	lw	a1, 20(sp)	# restore
	lw	a2, 0(a1)
	ble	a2, zero, .scan_line_cont_4
	lda	a2, min_caml_rgb
	lw	a3, 16(sp)	# restore
	lw	a4, 0(a3)
	lw	a4, 0(a4)
	flw	fa0, 0(a4)
	fsw	fa0, 0(a2)
	flw	fa0, 4(a4)
	fsw	fa0, 4(a2)
	flw	fa0, 8(a4)
	fsw	fa0, 8(a2)
	lw	a4, 4(a1)
	lw	a5, 12(sp)	# restore
	addi	a6, a5, 1
	bgt	a4, a6, .scan_line_else_5
	li	a4, 0
	b	.scan_line_cont_6
.scan_line_else_5:
	bgt	a5, zero, .scan_line_else_7
	li	a4, 0
	b	.scan_line_cont_8
.scan_line_else_7:
	lw	a4, 0(a1)
	bgti	a4, 1, .scan_line_else_9
	li	a4, 0
	b	.scan_line_cont_10
.scan_line_else_9:
	li	a4, 0
.scan_line_cont_10:
.scan_line_cont_8:
.scan_line_cont_6:
	sw	a2, 28(sp)	# save
	bne	a4, zero, .scan_line_else_11
	lw	a0, 0(a3)
	lw	a4, 28(a0)
	lw	a6, 24(a0)
	lw	a7, 20(a0)
	lw	s1, 16(a0)
	lw	s2, 12(a0)
	lw	s3, 8(a0)
	lw	s4, 4(a0)
	lw	s5, 0(s3)
	blt	s5, zero, .scan_line_cont_12
	lw	s5, 0(s2)
	sw	a0, 32(sp)	# save
	sw	s2, 36(sp)	# save
	sw	s3, 40(sp)	# save
	beq	s5, zero, .scan_line_cont_14
	lda	s5, min_caml_diffuse_ray
	lw	a7, 0(a7)
	flw	fa0, 0(a7)
	fsw	fa0, 0(s5)
	flw	fa0, 4(a7)
	fsw	fa0, 4(s5)
	flw	fa0, 8(a7)
	fsw	fa0, 8(s5)
	lw	a0, 0(a6)
	lw	a1, 0(a4)
	lw	a2, 0(s4)
	sw	s5, 44(sp)	# save
	sw	s1, 48(sp)	# save
	call	trace_diffuse_ray_80percent_2946
	lw	a0, 48(sp)	# restore
	lw	a0, 0(a0)
	lw	a1, 28(sp)	# restore
	flw	fa0, 0(a1)
	flw	fa1, 0(a0)
	lw	a2, 44(sp)	# restore
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a1)
	flw	fa0, 4(a1)
	flw	fa1, 4(a0)
	flw	fa2, 4(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(a1)
	flw	fa0, 8(a1)
	flw	fa1, 8(a0)
	flw	fa2, 8(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a1)
.scan_line_cont_14:
	li	a1, 1
	lw	a0, 40(sp)	# restore
	lw	a0, 4(a0)
	blt	a0, zero, .scan_line_cont_12
	lw	a0, 36(sp)	# restore
	lw	a0, 4(a0)
	beq	a0, zero, .scan_line_cont_16
	lw	a0, 32(sp)	# restore
	call	calc_diffuse_using_1point_2950
.scan_line_cont_16:
	li	a1, 2
	lw	a0, 32(sp)	# restore
	call	do_without_neighbors_2959
	b	.scan_line_cont_12
.scan_line_else_11:
	li	a4, 0
	lw	a2, 8(sp)	# restore
	lw	a6, 4(sp)	# restore
	mv	a1, a5
	mv	a5, a4
	mv	a4, a6
	call	try_exploit_neighbors_2975
.scan_line_cont_12:
	lw	a0, 28(sp)	# restore
	flw	fa0, 0(a0)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_line_else_17
	bge	a0, zero, .scan_line_cont_18
	li	a0, 0
	b	.scan_line_cont_18
.scan_line_else_17:
	li	a0, 255
.scan_line_cont_18:
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 28(sp)	# restore
	flw	fa0, 4(a0)
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, .scan_line_else_20
	bge	a0, zero, .scan_line_cont_21
	li	a0, 0
	b	.scan_line_cont_21
.scan_line_else_20:
	li	a0, 255
.scan_line_cont_21:
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 28(sp)	# restore
	flw	fa0, 8(a0)
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
	call	min_caml_print_char
	li	a0, 1
	lw	a1, 12(sp)	# restore
	lw	a2, 8(sp)	# restore
	lw	a3, 16(sp)	# restore
	lw	a4, 4(sp)	# restore
	call	scan_pixel_3002
.scan_line_cont_4:
	lw	a0, 12(sp)	# restore
	addi	a1, a0, 1
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 2
	blti	a0, 5, .scan_line_cont_26
	addi	a0, a0, -5
.scan_line_cont_26:
	lw	a2, 20(sp)	# restore
	lw	a3, 4(a2)
	ble	a3, a1, .scan_line_cont_27
	lw	a3, 4(a2)
	addi	a3, a3, -1
	sw	a0, 52(sp)	# save
	sw	a1, 56(sp)	# save
	ble	a3, a1, .scan_line_cont_28
	addi	a3, a1, 1
	lda	a4, min_caml_scan_pitch
	flw	fa0, 0(a4)
	lda	a4, min_caml_image_center
	lw	a4, 4(a4)
	sub	a0, a3, a4
	fsw	fa0, 60(sp)	# save
	call	min_caml_float_of_int
	flw	fa1, 60(sp)	# restore
	fmul	fa0, fa1, fa0
	lda	a0, min_caml_screeny_dir
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	lda	a3, min_caml_screenz_dir
	flw	fa2, 0(a3)
	fadd	fa1, fa1, fa2
	flw	fa2, 4(a0)
	fmul	fa2, fa0, fa2
	flw	fa3, 4(a3)
	fadd	fa2, fa2, fa3
	flw	fa3, 8(a0)
	fmul	fa0, fa0, fa3
	flw	fa3, 8(a3)
	fadd	fa0, fa0, fa3
	lw	a0, 0(a2)
	addi	a1, a0, -1
	lw	a0, 8(sp)	# restore
	lw	a2, 52(sp)	# restore
	fmv	ft8, fa2
	fmv	fa2, fa0
	fmv	fa0, fa1
	fmv	fa1, ft8
	call	pretrace_pixels_2991
.scan_line_cont_28:
	li	a0, 0
	lw	a1, 56(sp)	# restore
	lw	a2, 16(sp)	# restore
	lw	a3, 4(sp)	# restore
	lw	a4, 8(sp)	# restore
	call	scan_pixel_3002
	lw	a0, 56(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 52(sp)	# restore
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
	call	scan_line_3008
.scan_line_cont_27:
scan_line_ret:
	lw	ra, 64(sp)
	addi	sp, sp, 68
	jr	ra
create_pixel_3016:
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
create_pixel_ret:
	jr	ra
init_line_elements_3018:
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
	blt	a1, zero, .init_line_elements_else_2
	sw	a0, 0(sp)	# save
	sw	a1, 4(sp)	# save
	call	create_pixel_3016
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
	blt	a0, zero, .init_line_elements_else_4
	sw	a0, 8(sp)	# save
	call	create_pixel_3016
	lw	a1, 8(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 0(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	init_line_elements_3018
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
.init_line_elements_else_4:
	mv	a0, a3
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
.init_line_elements_else_3:
	mv	a0, a3
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
.init_line_elements_else_2:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
.init_line_elements_else_1:
init_line_elements_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
calc_dirvec_3028:
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
	call	calc_dirvec_3028
calc_dirvec_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
calc_dirvecs_3036:
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
	flw	fa3, 0(sp)	# restore
	fsw	fa1, 16(sp)	# save
	fsw	fa0, 20(sp)	# save
	sw	a1, 24(sp)	# save
	sw	a2, 28(sp)	# save
	fmv	fa1, fa0
	call	calc_dirvec_3028
	fli	fa0, l_data_26
	flw	fa1, 12(sp)	# restore
	fadd	fa2, fa1, fa0
	li	a0, 0
	lw	a1, 28(sp)	# restore
	addi	a2, a1, 2
	flw	fa1, 20(sp)	# restore
	flw	fa3, 0(sp)	# restore
	lw	a1, 24(sp)	# restore
	fsw	fa0, 32(sp)	# save
	fmv	fa0, fa1
	call	calc_dirvec_3028
	lw	a0, 4(sp)	# restore
	addi	a0, a0, -1
	lw	a1, 24(sp)	# restore
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
	flw	fa0, 20(sp)	# restore
	flw	fa3, 0(sp)	# restore
	lw	a2, 28(sp)	# restore
	sw	a1, 44(sp)	# save
	fmv	fa1, fa0
	call	calc_dirvec_3028
	flw	fa0, 32(sp)	# restore
	flw	fa1, 40(sp)	# restore
	fadd	fa2, fa1, fa0
	li	a0, 0
	lw	a1, 28(sp)	# restore
	addi	a2, a1, 2
	flw	fa1, 20(sp)	# restore
	flw	fa3, 0(sp)	# restore
	lw	a1, 44(sp)	# restore
	fmv	fa0, fa1
	call	calc_dirvec_3028
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
	flw	fa0, 20(sp)	# restore
	flw	fa3, 0(sp)	# restore
	lw	a2, 28(sp)	# restore
	sw	a1, 56(sp)	# save
	fmv	fa1, fa0
	call	calc_dirvec_3028
	flw	fa0, 32(sp)	# restore
	flw	fa1, 52(sp)	# restore
	fadd	fa2, fa1, fa0
	li	a0, 0
	lw	a1, 28(sp)	# restore
	addi	a2, a1, 2
	flw	fa1, 20(sp)	# restore
	flw	fa3, 0(sp)	# restore
	lw	a1, 56(sp)	# restore
	fmv	fa0, fa1
	call	calc_dirvec_3028
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
	flw	fa1, 20(sp)	# restore
	flw	fa3, 0(sp)	# restore
	lw	a2, 28(sp)	# restore
	sw	a1, 64(sp)	# save
	fsw	fa0, 68(sp)	# save
	fmv	fa0, fa1
	call	calc_dirvec_3028
	flw	fa0, 32(sp)	# restore
	flw	fa1, 68(sp)	# restore
	fadd	fa2, fa1, fa0
	li	a0, 0
	lw	a1, 28(sp)	# restore
	addi	a2, a1, 2
	flw	fa0, 20(sp)	# restore
	flw	fa3, 0(sp)	# restore
	lw	a1, 64(sp)	# restore
	fmv	fa1, fa0
	call	calc_dirvec_3028
	lw	a0, 60(sp)	# restore
	addi	a0, a0, -1
	lw	a1, 64(sp)	# restore
	addi	a1, a1, 1
	blti	a1, 5, .calc_dirvecs_cont_4
	addi	a1, a1, -5
.calc_dirvecs_cont_4:
	flw	fa0, 0(sp)	# restore
	lw	a2, 28(sp)	# restore
	call	calc_dirvecs_3036
calc_dirvecs_ret:
	lw	ra, 72(sp)
	addi	sp, sp, 76
	jr	ra
calc_dirvec_rows_3041:
	addi	sp, sp, -116
	sw	ra, 112(sp)
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
	flw	fa3, 4(sp)	# restore
	fsw	fa1, 16(sp)	# save
	fsw	fa0, 20(sp)	# save
	sw	a1, 24(sp)	# save
	sw	a2, 28(sp)	# save
	fmv	fa1, fa0
	call	calc_dirvec_3028
	fli	fa0, l_data_26
	flw	fa1, 12(sp)	# restore
	fadd	fa2, fa1, fa0
	li	a0, 0
	lw	a1, 28(sp)	# restore
	addi	a2, a1, 2
	flw	fa1, 20(sp)	# restore
	flw	fa3, 4(sp)	# restore
	lw	a1, 24(sp)	# restore
	fsw	fa0, 32(sp)	# save
	fmv	fa0, fa1
	call	calc_dirvec_3028
	li	a0, 3
	lw	a1, 24(sp)	# restore
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
	flw	fa0, 20(sp)	# restore
	flw	fa3, 4(sp)	# restore
	lw	a3, 28(sp)	# restore
	sw	a2, 40(sp)	# save
	mv	a1, a2
	mv	a2, a3
	fmv	fa1, fa0
	call	calc_dirvec_3028
	flw	fa0, 32(sp)	# restore
	flw	fa1, 36(sp)	# restore
	fadd	fa2, fa1, fa0
	li	a0, 0
	lw	a1, 28(sp)	# restore
	addi	a2, a1, 2
	flw	fa1, 20(sp)	# restore
	flw	fa3, 4(sp)	# restore
	lw	a1, 40(sp)	# restore
	fmv	fa0, fa1
	call	calc_dirvec_3028
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
	flw	fa0, 20(sp)	# restore
	flw	fa3, 4(sp)	# restore
	lw	a2, 28(sp)	# restore
	sw	a1, 48(sp)	# save
	fmv	fa1, fa0
	call	calc_dirvec_3028
	flw	fa0, 32(sp)	# restore
	flw	fa1, 44(sp)	# restore
	fadd	fa2, fa1, fa0
	li	a0, 0
	lw	a1, 28(sp)	# restore
	addi	a2, a1, 2
	flw	fa1, 20(sp)	# restore
	flw	fa3, 4(sp)	# restore
	lw	a1, 48(sp)	# restore
	fmv	fa0, fa1
	call	calc_dirvec_3028
	li	a0, 1
	lw	a1, 48(sp)	# restore
	addi	a1, a1, 1
	blti	a1, 5, .calc_dirvec_rows_cont_3
	addi	a1, a1, -5
.calc_dirvec_rows_cont_3:
	flw	fa0, 4(sp)	# restore
	lw	a2, 28(sp)	# restore
	call	calc_dirvecs_3036
	lw	a0, 0(sp)	# restore
	addi	a0, a0, -1
	lw	a1, 24(sp)	# restore
	addi	a1, a1, 2
	blti	a1, 5, .calc_dirvec_rows_cont_4
	addi	a1, a1, -5
.calc_dirvec_rows_cont_4:
	lw	a2, 28(sp)	# restore
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
	flw	fa0, 20(sp)	# restore
	flw	fa3, 56(sp)	# restore
	sw	a1, 64(sp)	# save
	sw	a2, 68(sp)	# save
	fmv	fa1, fa0
	call	calc_dirvec_3028
	flw	fa0, 32(sp)	# restore
	flw	fa1, 60(sp)	# restore
	fadd	fa2, fa1, fa0
	li	a0, 0
	lw	a1, 68(sp)	# restore
	addi	a2, a1, 2
	flw	fa1, 20(sp)	# restore
	flw	fa3, 56(sp)	# restore
	lw	a1, 64(sp)	# restore
	fmv	fa0, fa1
	call	calc_dirvec_3028
	li	a0, 3
	lw	a1, 64(sp)	# restore
	addi	a2, a1, 1
	blti	a2, 5, .calc_dirvec_rows_cont_5
	addi	a2, a2, -5
.calc_dirvec_rows_cont_5:
	call	min_caml_float_of_int
	flw	fa1, 16(sp)	# restore
	fmul	fa0, fa0, fa1
	flw	fa2, 8(sp)	# restore
	fsub	fa2, fa0, fa2
	li	a0, 0
	fsw	fa0, 72(sp)	# save
	flw	fa0, 20(sp)	# restore
	flw	fa3, 56(sp)	# restore
	lw	a3, 68(sp)	# restore
	sw	a2, 76(sp)	# save
	mv	a1, a2
	mv	a2, a3
	fmv	fa1, fa0
	call	calc_dirvec_3028
	flw	fa0, 32(sp)	# restore
	flw	fa1, 72(sp)	# restore
	fadd	fa2, fa1, fa0
	li	a0, 0
	lw	a1, 68(sp)	# restore
	addi	a2, a1, 2
	flw	fa1, 20(sp)	# restore
	flw	fa3, 56(sp)	# restore
	lw	a1, 76(sp)	# restore
	fmv	fa0, fa1
	call	calc_dirvec_3028
	li	a0, 2
	lw	a1, 76(sp)	# restore
	addi	a1, a1, 1
	blti	a1, 5, .calc_dirvec_rows_cont_6
	addi	a1, a1, -5
.calc_dirvec_rows_cont_6:
	flw	fa0, 56(sp)	# restore
	lw	a2, 68(sp)	# restore
	call	calc_dirvecs_3036
	lw	a0, 52(sp)	# restore
	addi	a0, a0, -1
	lw	a1, 64(sp)	# restore
	addi	a1, a1, 2
	blti	a1, 5, .calc_dirvec_rows_cont_7
	addi	a1, a1, -5
.calc_dirvec_rows_cont_7:
	lw	a2, 68(sp)	# restore
	addi	a2, a2, 4
	blt	a0, zero, calc_dirvec_rows_ret
	sw	a0, 80(sp)	# save
	call	min_caml_float_of_int
	flw	fa1, 16(sp)	# restore
	fmul	fa0, fa0, fa1
	flw	fa2, 8(sp)	# restore
	fsub	fa0, fa0, fa2
	li	a0, 4
	fsw	fa0, 84(sp)	# save
	call	min_caml_float_of_int
	fmul	fa0, fa0, fa1
	fsub	fa2, fa0, fa2
	li	a0, 0
	fsw	fa0, 88(sp)	# save
	flw	fa0, 20(sp)	# restore
	flw	fa3, 84(sp)	# restore
	sw	a1, 92(sp)	# save
	sw	a2, 96(sp)	# save
	fmv	fa1, fa0
	call	calc_dirvec_3028
	flw	fa0, 32(sp)	# restore
	flw	fa1, 88(sp)	# restore
	fadd	fa2, fa1, fa0
	li	a0, 0
	lw	a1, 96(sp)	# restore
	addi	a2, a1, 2
	flw	fa0, 20(sp)	# restore
	flw	fa3, 84(sp)	# restore
	lw	a1, 92(sp)	# restore
	fmv	fa1, fa0
	call	calc_dirvec_3028
	li	a0, 3
	lw	a1, 92(sp)	# restore
	addi	a2, a1, 1
	blti	a2, 5, .calc_dirvec_rows_else_8
	addi	a1, a2, -5
	b	.calc_dirvec_rows_cont_9
.calc_dirvec_rows_else_8:
	mv	a1, a2
.calc_dirvec_rows_cont_9:
	flw	fa0, 84(sp)	# restore
	lw	a2, 96(sp)	# restore
	call	calc_dirvecs_3036
	lw	a0, 80(sp)	# restore
	addi	a0, a0, -1
	lw	a1, 92(sp)	# restore
	addi	a1, a1, 2
	blti	a1, 5, .calc_dirvec_rows_cont_10
	addi	a1, a1, -5
.calc_dirvec_rows_cont_10:
	lw	a2, 96(sp)	# restore
	addi	a2, a2, 4
	blt	a0, zero, calc_dirvec_rows_ret
	sw	a0, 100(sp)	# save
	call	min_caml_float_of_int
	flw	fa1, 16(sp)	# restore
	fmul	fa0, fa0, fa1
	flw	fa1, 8(sp)	# restore
	fsub	fa0, fa0, fa1
	li	a0, 4
	sw	a2, 104(sp)	# save
	sw	a1, 108(sp)	# save
	call	calc_dirvecs_3036
	lw	a0, 100(sp)	# restore
	addi	a0, a0, -1
	lw	a1, 108(sp)	# restore
	addi	a1, a1, 2
	blti	a1, 5, .calc_dirvec_rows_cont_11
	addi	a1, a1, -5
.calc_dirvec_rows_cont_11:
	lw	a2, 104(sp)	# restore
	addi	a2, a2, 4
	call	calc_dirvec_rows_3041
calc_dirvec_rows_ret:
	lw	ra, 112(sp)
	addi	sp, sp, 116
	jr	ra
create_dirvec_elements_3047:
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
	lda	a2, min_caml_n_objects
	sw	a0, 4(sp)	# save
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 0(sp)	# restore
	slli	a3, a1, 2
	lw	a4, 4(sp)	# restore
	add	t6, a4, a3
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, create_dirvec_elements_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 8(sp)	# save
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 8(sp)	# restore
	slli	a3, a1, 2
	add	t6, a4, a3
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, create_dirvec_elements_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 12(sp)	# save
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 12(sp)	# restore
	slli	a3, a1, 2
	add	t6, a4, a3
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, create_dirvec_elements_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 16(sp)	# save
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 16(sp)	# restore
	slli	a3, a1, 2
	add	t6, a4, a3
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, create_dirvec_elements_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 20(sp)	# save
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 20(sp)	# restore
	slli	a3, a1, 2
	add	t6, a4, a3
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, create_dirvec_elements_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 24(sp)	# save
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 24(sp)	# restore
	slli	a3, a1, 2
	add	t6, a4, a3
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, create_dirvec_elements_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 28(sp)	# save
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 28(sp)	# restore
	slli	a3, a1, 2
	add	t6, a4, a3
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, create_dirvec_elements_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 32(sp)	# save
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 32(sp)	# restore
	slli	a2, a1, 2
	add	t6, a4, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a4
	call	create_dirvec_elements_3047
create_dirvec_elements_ret:
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
create_dirvecs_3050:
	addi	sp, sp, -40
	sw	ra, 36(sp)
	blt	a0, zero, create_dirvecs_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	lda	a2, min_caml_n_objects
	sw	a0, 0(sp)	# save
	lw	a0, 0(a2)
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
	slli	a3, a1, 2
	swl	a0, min_caml_dirvecs(a3)
	slli	a0, a1, 2
	lwl	a0, min_caml_dirvecs(a0)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a3, gp
	addi	gp, gp, 12
	mv	a1, a3
	sw	a0, 4(sp)	# save
	lw	a0, 0(a2)
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
	lw	a0, 0(a2)
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
	lw	a0, 0(a2)
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
	lw	a0, 0(a2)
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
	lw	a0, 0(a2)
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
	lw	a0, 0(a2)
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
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 4(sp)	# restore
	sw	a0, 448(a1)
	li	a0, 111
	sw	a2, 8(sp)	# save
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	create_dirvec_elements_3047
	lw	a0, 0(sp)	# restore
	addi	a0, a0, -1
	blt	a0, zero, create_dirvecs_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 12(sp)	# save
	lw	a2, 8(sp)	# restore
	lw	a0, 0(a2)
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
	lw	a1, 12(sp)	# restore
	slli	a3, a1, 2
	swl	a0, min_caml_dirvecs(a3)
	slli	a0, a1, 2
	lwl	a0, min_caml_dirvecs(a0)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a3, gp
	addi	gp, gp, 12
	mv	a1, a3
	sw	a0, 16(sp)	# save
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 16(sp)	# restore
	sw	a0, 472(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 16(sp)	# restore
	sw	a0, 468(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 16(sp)	# restore
	sw	a0, 464(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 16(sp)	# restore
	sw	a0, 460(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 16(sp)	# restore
	sw	a0, 456(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 16(sp)	# restore
	sw	a0, 452(a1)
	li	a0, 112
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	create_dirvec_elements_3047
	lw	a0, 12(sp)	# restore
	addi	a0, a0, -1
	blt	a0, zero, create_dirvecs_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 20(sp)	# save
	lw	a2, 8(sp)	# restore
	lw	a0, 0(a2)
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
	lw	a1, 20(sp)	# restore
	slli	a3, a1, 2
	swl	a0, min_caml_dirvecs(a3)
	slli	a0, a1, 2
	lwl	a0, min_caml_dirvecs(a0)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a3, gp
	addi	gp, gp, 12
	mv	a1, a3
	sw	a0, 24(sp)	# save
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 24(sp)	# restore
	sw	a0, 472(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 24(sp)	# restore
	sw	a0, 468(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 24(sp)	# restore
	sw	a0, 464(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 24(sp)	# restore
	sw	a0, 460(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 24(sp)	# restore
	sw	a0, 456(a1)
	li	a0, 113
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	create_dirvec_elements_3047
	lw	a0, 20(sp)	# restore
	addi	a0, a0, -1
	blt	a0, zero, create_dirvecs_ret
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 28(sp)	# save
	lw	a2, 8(sp)	# restore
	lw	a0, 0(a2)
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
	lw	a1, 28(sp)	# restore
	slli	a3, a1, 2
	swl	a0, min_caml_dirvecs(a3)
	slli	a0, a1, 2
	lwl	a0, min_caml_dirvecs(a0)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a3, gp
	addi	gp, gp, 12
	mv	a1, a3
	sw	a0, 32(sp)	# save
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 32(sp)	# restore
	sw	a0, 472(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 32(sp)	# restore
	sw	a0, 468(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 32(sp)	# restore
	sw	a0, 464(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 32(sp)	# restore
	sw	a0, 460(a1)
	li	a0, 114
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	create_dirvec_elements_3047
	lw	a0, 28(sp)	# restore
	addi	a0, a0, -1
	call	create_dirvecs_3050
create_dirvecs_ret:
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
init_dirvec_constants_3052:
	addi	sp, sp, -40
	sw	ra, 36(sp)
	blt	a1, zero, init_dirvec_constants_ret
	slli	a2, a1, 2
	sw	a0, 0(sp)	# save
	add	t6, a0, a2
	lw	a0, 0(t6)
	lda	a2, min_caml_n_objects
	lw	a3, 0(a2)
	sw	a1, 4(sp)	# save
	addi	a1, a3, -1
	sw	a2, 8(sp)	# save
	call	iter_setup_dirvec_constants_2834
	lw	a0, 4(sp)	# restore
	addi	a0, a0, -1
	blt	a0, zero, init_dirvec_constants_ret
	slli	a1, a0, 2
	sw	a0, 12(sp)	# save
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a0, 0(t6)
	lw	a1, 8(sp)	# restore
	lw	a3, 0(a1)
	addi	a3, a3, -1
	blt	a3, zero, .init_dirvec_constants_cont_1
	slli	a4, a3, 2
	lwl	a1, min_caml_objects(a4)
	lw	a4, 4(a0)
	sw	a0, 16(sp)	# save
	lw	a0, 0(a0)
	lw	a5, 16(a1)
	lw	a6, 4(a1)
	sw	a3, 20(sp)	# save
	bnei	a6, 1, .init_dirvec_constants_else_2
	sw	a4, 24(sp)	# save
	call	setup_rect_table_2825
	lw	a1, 20(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 24(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.init_dirvec_constants_cont_3
.init_dirvec_constants_else_2:
	bnei	a6, 2, .init_dirvec_constants_else_4
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	fsw	fzero, 12(gp)
	mv	a1, gp
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
	fsw	fa1, 0(a1)
	flw	fa1, 0(a5)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 4(a1)
	flw	fa1, 4(a5)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 8(a1)
	flw	fa1, 8(a5)
	fdiv	fa0, fa1, fa0
	fneg	fa0, fa0
	fsw	fa0, 12(a1)
	b	.init_dirvec_constants_cont_7
.init_dirvec_constants_else_6:
	fsw	fzero, 0(a1)
.init_dirvec_constants_cont_7:
	slli	a0, a3, 2
	add	t6, a4, a0
	sw	a1, 0(t6)
	b	.init_dirvec_constants_cont_5
.init_dirvec_constants_else_4:
	sw	a4, 24(sp)	# save
	call	setup_second_table_2831
	lw	a1, 20(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 24(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
.init_dirvec_constants_cont_5:
.init_dirvec_constants_cont_3:
	lw	a0, 20(sp)	# restore
	addi	a1, a0, -1
	lw	a0, 16(sp)	# restore
	call	iter_setup_dirvec_constants_2834
.init_dirvec_constants_cont_1:
	lw	a0, 12(sp)	# restore
	addi	a0, a0, -1
	blt	a0, zero, init_dirvec_constants_ret
	slli	a1, a0, 2
	sw	a0, 28(sp)	# save
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a0, 0(t6)
	lw	a1, 8(sp)	# restore
	lw	a1, 0(a1)
	addi	a1, a1, -1
	call	iter_setup_dirvec_constants_2834
	lw	a0, 28(sp)	# restore
	addi	a0, a0, -1
	blt	a0, zero, init_dirvec_constants_ret
	slli	a1, a0, 2
	sw	a0, 32(sp)	# save
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a0, 0(t6)
	call	setup_dirvec_constants_2837
	lw	a0, 32(sp)	# restore
	addi	a1, a0, -1
	lw	a0, 0(sp)	# restore
	call	init_dirvec_constants_3052
init_dirvec_constants_ret:
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
init_vecset_constants_3055:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	blt	a0, zero, init_vecset_constants_ret
	slli	a1, a0, 2
	lwl	a1, min_caml_dirvecs(a1)
	sw	a0, 0(sp)	# save
	lw	a0, 476(a1)
	lda	a2, min_caml_n_objects
	lw	a3, 0(a2)
	addi	a3, a3, -1
	sw	a2, 4(sp)	# save
	sw	a1, 8(sp)	# save
	blt	a3, zero, .init_vecset_constants_cont_1
	slli	a4, a3, 2
	lwl	a1, min_caml_objects(a4)
	lw	a4, 4(a0)
	sw	a0, 12(sp)	# save
	lw	a0, 0(a0)
	lw	a5, 16(a1)
	lw	a6, 4(a1)
	sw	a3, 16(sp)	# save
	bnei	a6, 1, .init_vecset_constants_else_2
	sw	a4, 20(sp)	# save
	call	setup_rect_table_2825
	lw	a1, 16(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 20(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.init_vecset_constants_cont_3
.init_vecset_constants_else_2:
	bnei	a6, 2, .init_vecset_constants_else_4
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	fsw	fzero, 12(gp)
	mv	a1, gp
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
	bne	a0, zero, .init_vecset_constants_else_6
	fli	fa1, l_data_6
	fdiv	fa1, fa1, fa0
	fsw	fa1, 0(a1)
	flw	fa1, 0(a5)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 4(a1)
	flw	fa1, 4(a5)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 8(a1)
	flw	fa1, 8(a5)
	fdiv	fa0, fa1, fa0
	fneg	fa0, fa0
	fsw	fa0, 12(a1)
	b	.init_vecset_constants_cont_7
.init_vecset_constants_else_6:
	fsw	fzero, 0(a1)
.init_vecset_constants_cont_7:
	slli	a0, a3, 2
	add	t6, a4, a0
	sw	a1, 0(t6)
	b	.init_vecset_constants_cont_5
.init_vecset_constants_else_4:
	sw	a4, 20(sp)	# save
	call	setup_second_table_2831
	lw	a1, 16(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 20(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
.init_vecset_constants_cont_5:
.init_vecset_constants_cont_3:
	lw	a0, 16(sp)	# restore
	addi	a1, a0, -1
	lw	a0, 12(sp)	# restore
	call	iter_setup_dirvec_constants_2834
.init_vecset_constants_cont_1:
	lw	a0, 8(sp)	# restore
	lw	a0, 472(a0)
	lw	a1, 4(sp)	# restore
	lw	a2, 0(a1)
	addi	a1, a2, -1
	call	iter_setup_dirvec_constants_2834
	lw	a0, 8(sp)	# restore
	lw	a0, 468(a0)
	call	setup_dirvec_constants_2837
	li	a1, 116
	lw	a0, 8(sp)	# restore
	call	init_dirvec_constants_3052
	lw	a0, 0(sp)	# restore
	addi	a0, a0, -1
	blt	a0, zero, init_vecset_constants_ret
	slli	a1, a0, 2
	lwl	a1, min_caml_dirvecs(a1)
	sw	a0, 24(sp)	# save
	lw	a0, 476(a1)
	lw	a2, 4(sp)	# restore
	lw	a2, 0(a2)
	sw	a1, 28(sp)	# save
	addi	a1, a2, -1
	call	iter_setup_dirvec_constants_2834
	lw	a0, 28(sp)	# restore
	lw	a0, 472(a0)
	call	setup_dirvec_constants_2837
	li	a1, 117
	lw	a0, 28(sp)	# restore
	call	init_dirvec_constants_3052
	lw	a0, 24(sp)	# restore
	addi	a0, a0, -1
	blt	a0, zero, init_vecset_constants_ret
	slli	a1, a0, 2
	lwl	a1, min_caml_dirvecs(a1)
	sw	a0, 32(sp)	# save
	lw	a0, 476(a1)
	sw	a1, 36(sp)	# save
	call	setup_dirvec_constants_2837
	li	a1, 118
	lw	a0, 36(sp)	# restore
	call	init_dirvec_constants_3052
	lw	a0, 32(sp)	# restore
	addi	a0, a0, -1
	blt	a0, zero, init_vecset_constants_ret
	slli	a1, a0, 2
	sw	a0, 40(sp)	# save
	lwl	a0, min_caml_dirvecs(a1)
	li	a1, 119
	call	init_dirvec_constants_3052
	lw	a0, 40(sp)	# restore
	addi	a0, a0, -1
	call	init_vecset_constants_3055
init_vecset_constants_ret:
	lw	ra, 44(sp)
	addi	sp, sp, 48
	jr	ra
setup_rect_reflection_3066:
	addi	sp, sp, -96
	sw	ra, 92(sp)
	slli	a0, a0, 2
	lda	a2, min_caml_n_reflections
	lw	a3, 0(a2)
	fli	fa0, l_data_5
	lw	a1, 28(a1)
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	lda	a1, min_caml_light
	flw	fa1, 0(a1)
	fneg	fa1, fa1
	flw	fa2, 4(a1)
	fneg	fa2, fa2
	flw	fa3, 8(a1)
	fneg	fa3, fa3
	addi	a4, a0, 1
	flw	fa4, 0(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a5, gp
	addi	gp, gp, 12
	sw	a1, 0(sp)	# save
	mv	a1, a5
	lda	a5, min_caml_n_objects
	sw	a0, 4(sp)	# save
	lw	a0, 0(a5)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a6, gp
	addi	gp, gp, 8
	fsw	fa4, 0(a1)
	fsw	fa2, 4(a1)
	fsw	fa3, 8(a1)
	lw	a7, 0(a5)
	addi	a7, a7, -1
	sw	a2, 8(sp)	# save
	fsw	fa2, 12(sp)	# save
	fsw	fa3, 16(sp)	# save
	fsw	fa1, 20(sp)	# save
	sw	a5, 24(sp)	# save
	sw	a3, 28(sp)	# save
	sw	a4, 32(sp)	# save
	sw	a6, 36(sp)	# save
	fsw	fa0, 40(sp)	# save
	blt	a7, zero, .setup_rect_reflection_cont_1
	slli	s1, a7, 2
	lwl	s1, min_caml_objects(s1)
	lw	s2, 16(s1)
	lw	s3, 4(s1)
	sw	a7, 44(sp)	# save
	bnei	s3, 1, .setup_rect_reflection_else_2
	sw	a0, 48(sp)	# save
	mv	a0, a1
	mv	a1, s1
	call	setup_rect_table_2825
	lw	a1, 44(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 48(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.setup_rect_reflection_cont_3
.setup_rect_reflection_else_2:
	bnei	s3, 2, .setup_rect_reflection_else_4
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	fsw	fzero, 12(gp)
	mv	s1, gp
	addi	gp, gp, 16
	flw	fa4, 0(a1)
	flw	fa5, 0(s2)
	fmul	fa4, fa4, fa5
	flw	fa5, 4(a1)
	flw	fa6, 4(s2)
	fmul	fa5, fa5, fa6
	fadd	fa4, fa4, fa5
	flw	fa5, 8(a1)
	flw	fa6, 8(s2)
	fmul	fa5, fa5, fa6
	fadd	fa4, fa4, fa5
	fle	a1, fa4, fzero
	bne	a1, zero, .setup_rect_reflection_else_6
	fli	fa5, l_data_6
	fdiv	fa5, fa5, fa4
	fsw	fa5, 0(s1)
	flw	fa5, 0(s2)
	fdiv	fa5, fa5, fa4
	fneg	fa5, fa5
	fsw	fa5, 4(s1)
	flw	fa5, 4(s2)
	fdiv	fa5, fa5, fa4
	fneg	fa5, fa5
	fsw	fa5, 8(s1)
	flw	fa5, 8(s2)
	fdiv	fa4, fa5, fa4
	fneg	fa4, fa4
	fsw	fa4, 12(s1)
	b	.setup_rect_reflection_cont_7
.setup_rect_reflection_else_6:
	fsw	fzero, 0(s1)
.setup_rect_reflection_cont_7:
	slli	a1, a7, 2
	add	t6, a0, a1
	sw	s1, 0(t6)
	b	.setup_rect_reflection_cont_5
.setup_rect_reflection_else_4:
	sw	a0, 48(sp)	# save
	mv	a0, a1
	mv	a1, s1
	call	setup_second_table_2831
	lw	a1, 44(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 48(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
.setup_rect_reflection_cont_5:
.setup_rect_reflection_cont_3:
	lw	a0, 44(sp)	# restore
	addi	a1, a0, -1
	lw	a0, 36(sp)	# restore
	call	iter_setup_dirvec_constants_2834
.setup_rect_reflection_cont_1:
	flw	fa0, 40(sp)	# restore
	fsw	fa0, 8(gp)
	lw	a0, 36(sp)	# restore
	sw	a0, 4(gp)
	lw	a0, 32(sp)	# restore
	sw	a0, 0(gp)
	mv	a0, gp
	addi	gp, gp, 12
	lw	a1, 28(sp)	# restore
	slli	a2, a1, 2
	swl	a0, min_caml_reflections(a2)
	addi	a0, a1, 1
	lw	a2, 4(sp)	# restore
	addi	a3, a2, 2
	lw	a4, 0(sp)	# restore
	flw	fa1, 4(a4)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a5, gp
	addi	gp, gp, 12
	mv	a1, a5
	sw	a0, 52(sp)	# save
	lw	a5, 24(sp)	# restore
	lw	a0, 0(a5)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a6, gp
	addi	gp, gp, 8
	flw	fa2, 20(sp)	# restore
	fsw	fa2, 0(a1)
	fsw	fa1, 4(a1)
	flw	fa1, 16(sp)	# restore
	fsw	fa1, 8(a1)
	lw	a7, 0(a5)
	addi	a7, a7, -1
	sw	a3, 56(sp)	# save
	sw	a6, 60(sp)	# save
	blt	a7, zero, .setup_rect_reflection_cont_8
	slli	s1, a7, 2
	lwl	s1, min_caml_objects(s1)
	lw	s2, 16(s1)
	lw	s3, 4(s1)
	sw	a7, 64(sp)	# save
	bnei	s3, 1, .setup_rect_reflection_else_9
	sw	a0, 68(sp)	# save
	mv	a0, a1
	mv	a1, s1
	call	setup_rect_table_2825
	lw	a1, 64(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 68(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.setup_rect_reflection_cont_10
.setup_rect_reflection_else_9:
	bnei	s3, 2, .setup_rect_reflection_else_11
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	fsw	fzero, 12(gp)
	mv	s1, gp
	addi	gp, gp, 16
	flw	fa1, 0(a1)
	flw	fa3, 0(s2)
	fmul	fa1, fa1, fa3
	flw	fa3, 4(a1)
	flw	fa4, 4(s2)
	fmul	fa3, fa3, fa4
	fadd	fa1, fa1, fa3
	flw	fa3, 8(a1)
	flw	fa4, 8(s2)
	fmul	fa3, fa3, fa4
	fadd	fa1, fa1, fa3
	fle	a1, fa1, fzero
	bne	a1, zero, .setup_rect_reflection_else_13
	fli	fa3, l_data_6
	fdiv	fa3, fa3, fa1
	fsw	fa3, 0(s1)
	flw	fa3, 0(s2)
	fdiv	fa3, fa3, fa1
	fneg	fa3, fa3
	fsw	fa3, 4(s1)
	flw	fa3, 4(s2)
	fdiv	fa3, fa3, fa1
	fneg	fa3, fa3
	fsw	fa3, 8(s1)
	flw	fa3, 8(s2)
	fdiv	fa1, fa3, fa1
	fneg	fa1, fa1
	fsw	fa1, 12(s1)
	b	.setup_rect_reflection_cont_14
.setup_rect_reflection_else_13:
	fsw	fzero, 0(s1)
.setup_rect_reflection_cont_14:
	slli	a1, a7, 2
	add	t6, a0, a1
	sw	s1, 0(t6)
	b	.setup_rect_reflection_cont_12
.setup_rect_reflection_else_11:
	sw	a0, 68(sp)	# save
	mv	a0, a1
	mv	a1, s1
	call	setup_second_table_2831
	lw	a1, 64(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 68(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
.setup_rect_reflection_cont_12:
.setup_rect_reflection_cont_10:
	lw	a0, 64(sp)	# restore
	addi	a1, a0, -1
	lw	a0, 60(sp)	# restore
	call	iter_setup_dirvec_constants_2834
.setup_rect_reflection_cont_8:
	flw	fa0, 40(sp)	# restore
	fsw	fa0, 8(gp)
	lw	a0, 60(sp)	# restore
	sw	a0, 4(gp)
	lw	a0, 56(sp)	# restore
	sw	a0, 0(gp)
	mv	a0, gp
	addi	gp, gp, 12
	lw	a1, 52(sp)	# restore
	slli	a1, a1, 2
	swl	a0, min_caml_reflections(a1)
	lw	a0, 28(sp)	# restore
	addi	a1, a0, 2
	lw	a2, 4(sp)	# restore
	addi	a2, a2, 3
	lw	a3, 0(sp)	# restore
	flw	fa1, 8(a3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a3, gp
	addi	gp, gp, 12
	sw	a1, 72(sp)	# save
	mv	a1, a3
	lw	a3, 24(sp)	# restore
	lw	a0, 0(a3)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a4, gp
	addi	gp, gp, 8
	flw	fa2, 20(sp)	# restore
	fsw	fa2, 0(a1)
	flw	fa2, 12(sp)	# restore
	fsw	fa2, 4(a1)
	fsw	fa1, 8(a1)
	lw	a3, 0(a3)
	addi	a3, a3, -1
	sw	a2, 76(sp)	# save
	sw	a4, 80(sp)	# save
	blt	a3, zero, .setup_rect_reflection_cont_15
	slli	a5, a3, 2
	lwl	a5, min_caml_objects(a5)
	lw	a6, 16(a5)
	lw	a7, 4(a5)
	sw	a3, 84(sp)	# save
	bnei	a7, 1, .setup_rect_reflection_else_16
	sw	a0, 88(sp)	# save
	mv	a0, a1
	mv	a1, a5
	call	setup_rect_table_2825
	lw	a1, 84(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 88(sp)	# restore
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
	b	.setup_rect_reflection_cont_21
.setup_rect_reflection_else_20:
	fsw	fzero, 0(a5)
.setup_rect_reflection_cont_21:
	slli	a1, a3, 2
	add	t6, a0, a1
	sw	a5, 0(t6)
	b	.setup_rect_reflection_cont_19
.setup_rect_reflection_else_18:
	sw	a0, 88(sp)	# save
	mv	a0, a1
	mv	a1, a5
	call	setup_second_table_2831
	lw	a1, 84(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 88(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
.setup_rect_reflection_cont_19:
.setup_rect_reflection_cont_17:
	lw	a0, 84(sp)	# restore
	addi	a1, a0, -1
	lw	a0, 80(sp)	# restore
	call	iter_setup_dirvec_constants_2834
.setup_rect_reflection_cont_15:
	flw	fa0, 40(sp)	# restore
	fsw	fa0, 8(gp)
	lw	a0, 80(sp)	# restore
	sw	a0, 4(gp)
	lw	a0, 76(sp)	# restore
	sw	a0, 0(gp)
	mv	a0, gp
	addi	gp, gp, 12
	lw	a1, 72(sp)	# restore
	slli	a1, a1, 2
	swl	a0, min_caml_reflections(a1)
	lw	a0, 28(sp)	# restore
	addi	a0, a0, 3
	lw	a1, 8(sp)	# restore
	sw	a0, 0(a1)
setup_rect_reflection_ret:
	lw	ra, 92(sp)
	addi	sp, sp, 96
	jr	ra
setup_surface_reflection_3069:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	slli	a0, a0, 2
	addi	a0, a0, 1
	lda	a2, min_caml_n_reflections
	lw	a3, 0(a2)
	fli	fa0, l_data_5
	lw	a4, 28(a1)
	lw	a1, 16(a1)
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	lda	a4, min_caml_light
	flw	fa1, 0(a4)
	flw	fa2, 0(a1)
	fmul	fa1, fa1, fa2
	flw	fa2, 4(a4)
	flw	fa3, 4(a1)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	flw	fa2, 8(a4)
	flw	fa3, 8(a1)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	fli	fa2, l_data_4
	flw	fa3, 0(a1)
	fmul	fa3, fa2, fa3
	fmul	fa3, fa3, fa1
	flw	fa4, 0(a4)
	fsub	fa3, fa3, fa4
	flw	fa4, 4(a1)
	fmul	fa4, fa2, fa4
	fmul	fa4, fa4, fa1
	flw	fa5, 4(a4)
	fsub	fa4, fa4, fa5
	flw	fa5, 8(a1)
	fmul	fa2, fa2, fa5
	fmul	fa1, fa2, fa1
	flw	fa2, 8(a4)
	fsub	fa1, fa1, fa2
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	lda	a4, min_caml_n_objects
	sw	a0, 0(sp)	# save
	lw	a0, 0(a4)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a5, gp
	addi	gp, gp, 8
	fsw	fa3, 0(a1)
	fsw	fa4, 4(a1)
	fsw	fa1, 8(a1)
	lw	a4, 0(a4)
	addi	a4, a4, -1
	sw	a2, 4(sp)	# save
	sw	a3, 8(sp)	# save
	sw	a5, 12(sp)	# save
	fsw	fa0, 16(sp)	# save
	blt	a4, zero, .setup_surface_reflection_cont_1
	slli	a6, a4, 2
	lwl	a6, min_caml_objects(a6)
	lw	a7, 16(a6)
	lw	s1, 4(a6)
	sw	a4, 20(sp)	# save
	bnei	s1, 1, .setup_surface_reflection_else_2
	sw	a0, 24(sp)	# save
	mv	a0, a1
	mv	a1, a6
	call	setup_rect_table_2825
	lw	a1, 20(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 24(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.setup_surface_reflection_cont_3
.setup_surface_reflection_else_2:
	bnei	s1, 2, .setup_surface_reflection_else_4
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	fsw	fzero, 12(gp)
	mv	a6, gp
	addi	gp, gp, 16
	flw	fa1, 0(a1)
	flw	fa2, 0(a7)
	fmul	fa1, fa1, fa2
	flw	fa2, 4(a1)
	flw	fa3, 4(a7)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	flw	fa2, 8(a1)
	flw	fa3, 8(a7)
	fmul	fa2, fa2, fa3
	fadd	fa1, fa1, fa2
	fle	a1, fa1, fzero
	bne	a1, zero, .setup_surface_reflection_else_6
	fli	fa2, l_data_6
	fdiv	fa2, fa2, fa1
	fsw	fa2, 0(a6)
	flw	fa2, 0(a7)
	fdiv	fa2, fa2, fa1
	fneg	fa2, fa2
	fsw	fa2, 4(a6)
	flw	fa2, 4(a7)
	fdiv	fa2, fa2, fa1
	fneg	fa2, fa2
	fsw	fa2, 8(a6)
	flw	fa2, 8(a7)
	fdiv	fa1, fa2, fa1
	fneg	fa1, fa1
	fsw	fa1, 12(a6)
	b	.setup_surface_reflection_cont_7
.setup_surface_reflection_else_6:
	fsw	fzero, 0(a6)
.setup_surface_reflection_cont_7:
	slli	a1, a4, 2
	add	t6, a0, a1
	sw	a6, 0(t6)
	b	.setup_surface_reflection_cont_5
.setup_surface_reflection_else_4:
	sw	a0, 24(sp)	# save
	mv	a0, a1
	mv	a1, a6
	call	setup_second_table_2831
	lw	a1, 20(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 24(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
.setup_surface_reflection_cont_5:
.setup_surface_reflection_cont_3:
	lw	a0, 20(sp)	# restore
	addi	a1, a0, -1
	lw	a0, 12(sp)	# restore
	call	iter_setup_dirvec_constants_2834
.setup_surface_reflection_cont_1:
	flw	fa0, 16(sp)	# restore
	fsw	fa0, 8(gp)
	lw	a0, 12(sp)	# restore
	sw	a0, 4(gp)
	lw	a0, 0(sp)	# restore
	sw	a0, 0(gp)
	mv	a0, gp
	addi	gp, gp, 12
	lw	a1, 8(sp)	# restore
	slli	a2, a1, 2
	swl	a0, min_caml_reflections(a2)
	addi	a0, a1, 1
	lw	a1, 4(sp)	# restore
	sw	a0, 0(a1)
setup_surface_reflection_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
rt_3074:
	addi	sp, sp, -260
	sw	ra, 256(sp)
	lda	a2, min_caml_image_size
	sw	a0, 0(a2)
	sw	a1, 4(a2)
	lda	a3, min_caml_image_center
	srai	a4, a0, 1
	sw	a4, 0(a3)
	srai	a1, a1, 1
	sw	a1, 4(a3)
	lda	a1, min_caml_scan_pitch
	fli	fa0, l_data_31
	fsw	fa0, 0(sp)	# save
	call	min_caml_float_of_int
	flw	fa1, 0(sp)	# restore
	fdiv	fa0, fa1, fa0
	fsw	fa0, 0(a1)
	lw	a0, 0(a2)
	sw	a3, 4(sp)	# save
	sw	a1, 8(sp)	# save
	sw	a2, 12(sp)	# save
	sw	a0, 16(sp)	# save
	call	create_pixel_3016
	mv	a1, a0
	lw	a0, 16(sp)	# restore
	call	min_caml_create_array
	lw	a1, 12(sp)	# restore
	lw	a2, 0(a1)
	addi	a2, a2, -2
	blt	a2, zero, .rt_cont_1
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a3, gp
	addi	gp, gp, 12
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
	sw	zero, 0(gp)
	sw	zero, 4(gp)
	sw	zero, 8(gp)
	sw	zero, 12(gp)
	sw	zero, 16(gp)
	mv	a5, gp
	addi	gp, gp, 20
	sw	zero, 0(gp)
	sw	zero, 4(gp)
	sw	zero, 8(gp)
	sw	zero, 12(gp)
	sw	zero, 16(gp)
	mv	a6, gp
	addi	gp, gp, 20
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
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 0(gp)
	sw	s1, 4(gp)
	sw	s1, 8(gp)
	sw	s1, 12(gp)
	sw	s1, 16(gp)
	mv	s1, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s2, gp
	addi	gp, gp, 12
	sw	s2, 4(s1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s2, gp
	addi	gp, gp, 12
	sw	s2, 8(s1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s2, gp
	addi	gp, gp, 12
	sw	s2, 12(s1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s2, gp
	addi	gp, gp, 12
	sw	s2, 16(s1)
	sw	zero, 0(gp)
	mv	s2, gp
	addi	gp, gp, 4
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 0(gp)
	sw	s3, 4(gp)
	sw	s3, 8(gp)
	sw	s3, 12(gp)
	sw	s3, 16(gp)
	mv	s3, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s4, gp
	addi	gp, gp, 12
	sw	s4, 4(s3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s4, gp
	addi	gp, gp, 12
	sw	s4, 8(s3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s4, gp
	addi	gp, gp, 12
	sw	s4, 12(s3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s4, gp
	addi	gp, gp, 12
	sw	s4, 16(s3)
	sw	s3, 28(gp)
	sw	s2, 24(gp)
	sw	s1, 20(gp)
	sw	a7, 16(gp)
	sw	a6, 12(gp)
	sw	a5, 8(gp)
	sw	a4, 4(gp)
	sw	a3, 0(gp)
	mv	a3, gp
	addi	gp, gp, 32
	slli	a4, a2, 2
	add	t6, a0, a4
	sw	a3, 0(t6)
	addi	a2, a2, -1
	blt	a2, zero, .rt_cont_2
	sw	a0, 20(sp)	# save
	sw	a2, 24(sp)	# save
	call	create_pixel_3016
	lw	a1, 24(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 20(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	init_line_elements_3018
.rt_cont_2:
.rt_cont_1:
	lw	a1, 12(sp)	# restore
	lw	a2, 0(a1)
	sw	a0, 28(sp)	# save
	sw	a2, 32(sp)	# save
	call	create_pixel_3016
	mv	a1, a0
	lw	a0, 32(sp)	# restore
	call	min_caml_create_array
	lw	a1, 12(sp)	# restore
	lw	a2, 0(a1)
	addi	a2, a2, -2
	blt	a2, zero, .rt_cont_3
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a3, gp
	addi	gp, gp, 12
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
	sw	zero, 0(gp)
	sw	zero, 4(gp)
	sw	zero, 8(gp)
	sw	zero, 12(gp)
	sw	zero, 16(gp)
	mv	a5, gp
	addi	gp, gp, 20
	sw	zero, 0(gp)
	sw	zero, 4(gp)
	sw	zero, 8(gp)
	sw	zero, 12(gp)
	sw	zero, 16(gp)
	mv	a6, gp
	addi	gp, gp, 20
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
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 0(gp)
	sw	s1, 4(gp)
	sw	s1, 8(gp)
	sw	s1, 12(gp)
	sw	s1, 16(gp)
	mv	s1, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s2, gp
	addi	gp, gp, 12
	sw	s2, 4(s1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s2, gp
	addi	gp, gp, 12
	sw	s2, 8(s1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s2, gp
	addi	gp, gp, 12
	sw	s2, 12(s1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s2, gp
	addi	gp, gp, 12
	sw	s2, 16(s1)
	sw	zero, 0(gp)
	mv	s2, gp
	addi	gp, gp, 4
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 0(gp)
	sw	s3, 4(gp)
	sw	s3, 8(gp)
	sw	s3, 12(gp)
	sw	s3, 16(gp)
	mv	s3, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s4, gp
	addi	gp, gp, 12
	sw	s4, 4(s3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s4, gp
	addi	gp, gp, 12
	sw	s4, 8(s3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s4, gp
	addi	gp, gp, 12
	sw	s4, 12(s3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s4, gp
	addi	gp, gp, 12
	sw	s4, 16(s3)
	sw	s3, 28(gp)
	sw	s2, 24(gp)
	sw	s1, 20(gp)
	sw	a7, 16(gp)
	sw	a6, 12(gp)
	sw	a5, 8(gp)
	sw	a4, 4(gp)
	sw	a3, 0(gp)
	mv	a3, gp
	addi	gp, gp, 32
	slli	a4, a2, 2
	add	t6, a0, a4
	sw	a3, 0(t6)
	addi	a2, a2, -1
	blt	a2, zero, .rt_cont_4
	sw	a0, 36(sp)	# save
	sw	a2, 40(sp)	# save
	call	create_pixel_3016
	lw	a1, 40(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 36(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	init_line_elements_3018
.rt_cont_4:
.rt_cont_3:
	lw	a1, 12(sp)	# restore
	lw	a2, 0(a1)
	sw	a0, 44(sp)	# save
	sw	a2, 48(sp)	# save
	call	create_pixel_3016
	mv	a1, a0
	lw	a0, 48(sp)	# restore
	call	min_caml_create_array
	lw	a1, 12(sp)	# restore
	lw	a2, 0(a1)
	addi	a2, a2, -2
	blt	a2, zero, .rt_cont_5
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a3, gp
	addi	gp, gp, 12
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
	sw	zero, 0(gp)
	sw	zero, 4(gp)
	sw	zero, 8(gp)
	sw	zero, 12(gp)
	sw	zero, 16(gp)
	mv	a5, gp
	addi	gp, gp, 20
	sw	zero, 0(gp)
	sw	zero, 4(gp)
	sw	zero, 8(gp)
	sw	zero, 12(gp)
	sw	zero, 16(gp)
	mv	a6, gp
	addi	gp, gp, 20
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
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s1, gp
	addi	gp, gp, 12
	sw	s1, 0(gp)
	sw	s1, 4(gp)
	sw	s1, 8(gp)
	sw	s1, 12(gp)
	sw	s1, 16(gp)
	mv	s1, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s2, gp
	addi	gp, gp, 12
	sw	s2, 4(s1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s2, gp
	addi	gp, gp, 12
	sw	s2, 8(s1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s2, gp
	addi	gp, gp, 12
	sw	s2, 12(s1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s2, gp
	addi	gp, gp, 12
	sw	s2, 16(s1)
	sw	zero, 0(gp)
	mv	s2, gp
	addi	gp, gp, 4
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s3, gp
	addi	gp, gp, 12
	sw	s3, 0(gp)
	sw	s3, 4(gp)
	sw	s3, 8(gp)
	sw	s3, 12(gp)
	sw	s3, 16(gp)
	mv	s3, gp
	addi	gp, gp, 20
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s4, gp
	addi	gp, gp, 12
	sw	s4, 4(s3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s4, gp
	addi	gp, gp, 12
	sw	s4, 8(s3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s4, gp
	addi	gp, gp, 12
	sw	s4, 12(s3)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	s4, gp
	addi	gp, gp, 12
	sw	s4, 16(s3)
	sw	s3, 28(gp)
	sw	s2, 24(gp)
	sw	s1, 20(gp)
	sw	a7, 16(gp)
	sw	a6, 12(gp)
	sw	a5, 8(gp)
	sw	a4, 4(gp)
	sw	a3, 0(gp)
	mv	a3, gp
	addi	gp, gp, 32
	slli	a4, a2, 2
	add	t6, a0, a4
	sw	a3, 0(t6)
	addi	a2, a2, -1
	blt	a2, zero, .rt_cont_6
	sw	a0, 52(sp)	# save
	sw	a2, 56(sp)	# save
	call	create_pixel_3016
	lw	a1, 56(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 52(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	init_line_elements_3018
.rt_cont_6:
.rt_cont_5:
	sw	a0, 60(sp)	# save
	call	read_screen_settings_2720
	call	min_caml_read_int
	call	min_caml_read_float
	fli	fa1, l_data_1
	fmul	fa0, fa0, fa1
	fsw	fa0, 64(sp)	# save
	call	min_caml_sin
	lda	a0, min_caml_light
	fneg	fa0, fa0
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	fmul	fa0, fa0, fa1
	fsw	fa0, 68(sp)	# save
	flw	fa0, 64(sp)	# restore
	call	min_caml_cos
	fsw	fa0, 72(sp)	# save
	flw	fa0, 68(sp)	# restore
	call	min_caml_sin
	flw	fa1, 72(sp)	# restore
	fmul	fa0, fa1, fa0
	fsw	fa0, 0(a0)
	flw	fa0, 68(sp)	# restore
	call	min_caml_cos
	fmul	fa0, fa1, fa0
	fsw	fa0, 8(a0)
	lda	a1, min_caml_beam
	call	min_caml_read_float
	fsw	fa0, 0(a1)
	sw	a0, 76(sp)	# save
	li	a0, 0
	call	read_nth_object_2727
	bne	a0, zero, .rt_else_7
	lda	a0, min_caml_n_objects
	sw	zero, 0(a0)
	b	.rt_cont_8
.rt_else_7:
	li	a0, 1
	sw	a0, 80(sp)	# save
	call	read_nth_object_2727
	bne	a0, zero, .rt_else_9
	lda	a0, min_caml_n_objects
	lw	a1, 80(sp)	# restore
	sw	a1, 0(a0)
	b	.rt_cont_10
.rt_else_9:
	li	a0, 2
	sw	a0, 84(sp)	# save
	call	read_nth_object_2727
	bne	a0, zero, .rt_else_11
	lda	a0, min_caml_n_objects
	lw	a1, 84(sp)	# restore
	sw	a1, 0(a0)
	b	.rt_cont_12
.rt_else_11:
	li	a0, 3
	sw	a0, 88(sp)	# save
	call	read_nth_object_2727
	bne	a0, zero, .rt_else_13
	lda	a0, min_caml_n_objects
	lw	a1, 88(sp)	# restore
	sw	a1, 0(a0)
	b	.rt_cont_14
.rt_else_13:
	li	a0, 4
	sw	a0, 92(sp)	# save
	call	read_nth_object_2727
	bne	a0, zero, .rt_else_15
	lda	a0, min_caml_n_objects
	lw	a1, 92(sp)	# restore
	sw	a1, 0(a0)
	b	.rt_cont_16
.rt_else_15:
	li	a0, 5
	call	read_object_2729
.rt_cont_16:
.rt_cont_14:
.rt_cont_12:
.rt_cont_10:
.rt_cont_8:
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .rt_else_17
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_18
.rt_else_17:
	sw	a0, 96(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .rt_else_19
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.rt_cont_20
.rt_else_19:
	sw	a0, 100(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .rt_else_21
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	b	.rt_cont_22
.rt_else_21:
	sw	a0, 104(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .rt_else_23
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	mv	a0, gp
	addi	gp, gp, 16
	b	.rt_cont_24
.rt_else_23:
	sw	a0, 108(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .rt_else_25
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	sw	a1, 16(gp)
	mv	a0, gp
	addi	gp, gp, 20
	b	.rt_cont_26
.rt_else_25:
	sw	a0, 112(sp)	# save
	li	a0, 5
	call	read_net_item_2733
	lw	a1, 112(sp)	# restore
	sw	a1, 16(a0)
.rt_cont_26:
	lw	a1, 108(sp)	# restore
	sw	a1, 12(a0)
.rt_cont_24:
	lw	a1, 104(sp)	# restore
	sw	a1, 8(a0)
.rt_cont_22:
	lw	a1, 100(sp)	# restore
	sw	a1, 4(a0)
.rt_cont_20:
	lw	a1, 96(sp)	# restore
	sw	a1, 0(a0)
.rt_cont_18:
	lw	a1, 0(a0)
	li	a2, -1
	beq	a1, a2, .rt_cont_27
	lda	a1, min_caml_and_net
	sw	a0, 0(a1)
	call	min_caml_read_int
	li	a2, -1
	sw	a1, 116(sp)	# save
	bne	a0, a2, .rt_else_28
	sw	a2, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_29
.rt_else_28:
	sw	a0, 120(sp)	# save
	call	min_caml_read_int
	li	a2, -1
	bne	a0, a2, .rt_else_30
	sw	a2, 0(gp)
	sw	a2, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.rt_cont_31
.rt_else_30:
	sw	a0, 124(sp)	# save
	call	min_caml_read_int
	li	a2, -1
	bne	a0, a2, .rt_else_32
	sw	a2, 0(gp)
	sw	a2, 4(gp)
	sw	a2, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	b	.rt_cont_33
.rt_else_32:
	sw	a0, 128(sp)	# save
	call	min_caml_read_int
	li	a2, -1
	bne	a0, a2, .rt_else_34
	sw	a2, 0(gp)
	sw	a2, 4(gp)
	sw	a2, 8(gp)
	sw	a2, 12(gp)
	mv	a0, gp
	addi	gp, gp, 16
	b	.rt_cont_35
.rt_else_34:
	sw	a0, 132(sp)	# save
	li	a0, 4
	call	read_net_item_2733
	lw	a1, 132(sp)	# restore
	sw	a1, 12(a0)
.rt_cont_35:
	lw	a1, 128(sp)	# restore
	sw	a1, 8(a0)
.rt_cont_33:
	lw	a1, 124(sp)	# restore
	sw	a1, 4(a0)
.rt_cont_31:
	lw	a1, 120(sp)	# restore
	sw	a1, 0(a0)
.rt_cont_29:
	lw	a1, 0(a0)
	li	a2, -1
	beq	a1, a2, .rt_cont_36
	lw	a1, 116(sp)	# restore
	sw	a0, 4(a1)
	li	a0, 2
	call	read_and_network_2737
.rt_cont_36:
.rt_cont_27:
	lda	a0, min_caml_or_net
	sw	a0, 136(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .rt_else_37
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_38
.rt_else_37:
	sw	a0, 140(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .rt_else_39
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.rt_cont_40
.rt_else_39:
	sw	a0, 144(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .rt_else_41
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	b	.rt_cont_42
.rt_else_41:
	sw	a0, 148(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .rt_else_43
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	mv	a0, gp
	addi	gp, gp, 16
	b	.rt_cont_44
.rt_else_43:
	sw	a0, 152(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .rt_else_45
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	sw	a1, 16(gp)
	mv	a0, gp
	addi	gp, gp, 20
	b	.rt_cont_46
.rt_else_45:
	sw	a0, 156(sp)	# save
	li	a0, 5
	call	read_net_item_2733
	lw	a1, 156(sp)	# restore
	sw	a1, 16(a0)
.rt_cont_46:
	lw	a1, 152(sp)	# restore
	sw	a1, 12(a0)
.rt_cont_44:
	lw	a1, 148(sp)	# restore
	sw	a1, 8(a0)
.rt_cont_42:
	lw	a1, 144(sp)	# restore
	sw	a1, 4(a0)
.rt_cont_40:
	lw	a1, 140(sp)	# restore
	sw	a1, 0(a0)
.rt_cont_38:
	lw	a1, 0(a0)
	li	a2, -1
	bne	a1, a2, .rt_else_47
	sw	a0, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_48
.rt_else_47:
	sw	a0, 160(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .rt_else_49
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 4
	b	.rt_cont_50
.rt_else_49:
	sw	a0, 164(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .rt_else_51
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.rt_cont_52
.rt_else_51:
	sw	a0, 168(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .rt_else_53
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	b	.rt_cont_54
.rt_else_53:
	sw	a0, 172(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, .rt_else_55
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	mv	a0, gp
	addi	gp, gp, 16
	b	.rt_cont_56
.rt_else_55:
	sw	a0, 176(sp)	# save
	li	a0, 4
	call	read_net_item_2733
	lw	a1, 176(sp)	# restore
	sw	a1, 12(a0)
.rt_cont_56:
	lw	a1, 172(sp)	# restore
	sw	a1, 8(a0)
.rt_cont_54:
	lw	a1, 168(sp)	# restore
	sw	a1, 4(a0)
.rt_cont_52:
	lw	a1, 164(sp)	# restore
	sw	a1, 0(a0)
.rt_cont_50:
	lw	a1, 0(a0)
	li	a2, -1
	bne	a1, a2, .rt_else_57
	sw	a0, 0(gp)
	sw	a0, 4(gp)
	mv	a0, gp
	addi	gp, gp, 8
	b	.rt_cont_58
.rt_else_57:
	sw	a0, 180(sp)	# save
	li	a0, 2
	call	read_or_network_2735
	lw	a1, 180(sp)	# restore
	sw	a1, 4(a0)
.rt_cont_58:
	lw	a1, 160(sp)	# restore
	sw	a1, 0(a0)
.rt_cont_48:
	lw	a1, 136(sp)	# restore
	sw	a0, 0(a1)
	li	a0, 80
	call	min_caml_print_char
	li	a0, 51
	call	min_caml_print_char
	li	a0, 10
	call	min_caml_print_char
	lw	a0, 12(sp)	# restore
	lw	a0, 0(a0)
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 12(sp)	# restore
	lw	a0, 4(a0)
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	li	a0, 255
	call	min_caml_print_int
	li	a0, 10
	call	min_caml_print_char
	lda	a0, min_caml_dirvecs
	fmv	fa0, fzero
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	lda	a2, min_caml_n_objects
	sw	a0, 184(sp)	# save
	lw	a0, 0(a2)
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
	lw	a1, 184(sp)	# restore
	sw	a0, 16(a1)
	lw	a0, 16(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a3, gp
	addi	gp, gp, 12
	mv	a1, a3
	sw	a0, 188(sp)	# save
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 188(sp)	# restore
	sw	a0, 472(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 188(sp)	# restore
	sw	a0, 468(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 188(sp)	# restore
	sw	a0, 464(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 188(sp)	# restore
	sw	a0, 460(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 188(sp)	# restore
	sw	a0, 456(a1)
	li	a0, 113
	fsw	fa0, 192(sp)	# save
	sw	a2, 196(sp)	# save
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	create_dirvec_elements_3047
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lw	a0, 196(sp)	# restore
	lw	a0, 0(a0)
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
	lw	a1, 184(sp)	# restore
	sw	a0, 12(a1)
	lw	a0, 12(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a2, gp
	addi	gp, gp, 12
	mv	a1, a2
	sw	a0, 200(sp)	# save
	lw	a2, 196(sp)	# restore
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 200(sp)	# restore
	sw	a0, 472(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 200(sp)	# restore
	sw	a0, 468(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 200(sp)	# restore
	sw	a0, 464(a1)
	fsw	fzero, 0(gp)
	fsw	fzero, 4(gp)
	fsw	fzero, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lw	a0, 0(a2)
	call	min_caml_create_array
	sw	a0, 4(gp)
	sw	a1, 0(gp)
	mv	a0, gp
	addi	gp, gp, 8
	lw	a1, 200(sp)	# restore
	sw	a0, 460(a1)
	li	a0, 114
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	create_dirvec_elements_3047
	li	a0, 2
	call	create_dirvecs_3050
	li	a0, 9
	li	a1, 0
	li	a2, 0
	call	min_caml_float_of_int
	fli	fa1, l_data_29
	fmul	fa0, fa0, fa1
	fli	fa2, l_data_30
	fsub	fa0, fa0, fa2
	li	a0, 4
	fsw	fa0, 204(sp)	# save
	call	min_caml_float_of_int
	fmul	fa0, fa0, fa1
	fsw	fa2, 208(sp)	# save
	fsub	fa2, fa0, fa2
	li	a0, 0
	fsw	fa0, 212(sp)	# save
	flw	fa0, 192(sp)	# restore
	flw	fa3, 204(sp)	# restore
	fsw	fa1, 216(sp)	# save
	sw	a2, 220(sp)	# save
	sw	a1, 224(sp)	# save
	fmv	fa1, fa0
	call	calc_dirvec_3028
	fli	fa0, l_data_26
	flw	fa1, 212(sp)	# restore
	fadd	fa2, fa1, fa0
	li	a0, 0
	li	a2, 2
	flw	fa0, 192(sp)	# restore
	flw	fa3, 204(sp)	# restore
	lw	a1, 224(sp)	# restore
	fmv	fa1, fa0
	call	calc_dirvec_3028
	li	a0, 3
	li	a1, 1
	flw	fa0, 204(sp)	# restore
	lw	a2, 220(sp)	# restore
	call	calc_dirvecs_3036
	li	a0, 8
	li	a1, 2
	li	a2, 4
	call	min_caml_float_of_int
	flw	fa1, 216(sp)	# restore
	fmul	fa0, fa0, fa1
	flw	fa1, 208(sp)	# restore
	fsub	fa0, fa0, fa1
	li	a0, 4
	call	calc_dirvecs_3036
	li	a0, 7
	li	a1, 4
	li	a2, 8
	call	calc_dirvec_rows_3041
	lw	a0, 184(sp)	# restore
	lw	a1, 16(a0)
	lw	a0, 476(a1)
	sw	a1, 228(sp)	# save
	call	setup_dirvec_constants_2837
	li	a1, 118
	lw	a0, 228(sp)	# restore
	call	init_dirvec_constants_3052
	lw	a0, 184(sp)	# restore
	lw	a0, 12(a0)
	li	a1, 119
	call	init_dirvec_constants_3052
	li	a0, 2
	call	init_vecset_constants_3055
	lda	a0, min_caml_light_dirvec
	lw	a1, 0(a0)
	lw	a2, 76(sp)	# restore
	flw	fa0, 0(a2)
	fsw	fa0, 0(a1)
	flw	fa0, 4(a2)
	fsw	fa0, 4(a1)
	flw	fa0, 8(a2)
	fsw	fa0, 8(a1)
	lw	a1, 196(sp)	# restore
	lw	a2, 0(a1)
	addi	a1, a2, -1
	call	iter_setup_dirvec_constants_2834
	lw	a0, 196(sp)	# restore
	lw	a0, 0(a0)
	addi	a0, a0, -1
	blt	a0, zero, .rt_cont_59
	slli	a1, a0, 2
	lwl	a1, min_caml_objects(a1)
	lw	a2, 28(a1)
	lw	a3, 8(a1)
	lw	a4, 4(a1)
	bnei	a3, 2, .rt_cont_60
	fli	fa0, l_data_5
	flw	fa1, 0(a2)
	fle	a2, fa0, fa1
	bne	a2, zero, .rt_cont_61
	bnei	a4, 1, .rt_else_62
	call	setup_rect_reflection_3066
	b	.rt_cont_63
.rt_else_62:
	bnei	a4, 2, .rt_cont_64
	call	setup_surface_reflection_3069
.rt_cont_64:
.rt_cont_63:
.rt_cont_61:
.rt_cont_60:
.rt_cont_59:
	li	a0, 0
	li	a1, 0
	lw	a2, 8(sp)	# restore
	flw	fa0, 0(a2)
	lw	a3, 4(sp)	# restore
	lw	a4, 4(a3)
	sub	a0, a0, a4
	fsw	fa0, 232(sp)	# save
	call	min_caml_float_of_int
	flw	fa1, 232(sp)	# restore
	fmul	fa0, fa1, fa0
	lda	a0, min_caml_screeny_dir
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	lda	a4, min_caml_screenz_dir
	flw	fa2, 0(a4)
	fadd	fa1, fa1, fa2
	flw	fa2, 4(a0)
	fmul	fa2, fa0, fa2
	flw	fa3, 4(a4)
	fadd	fa2, fa2, fa3
	flw	fa3, 8(a0)
	fmul	fa0, fa0, fa3
	flw	fa3, 8(a4)
	fadd	fa0, fa0, fa3
	lw	a5, 12(sp)	# restore
	lw	a6, 0(a5)
	addi	a6, a6, -1
	sw	a0, 236(sp)	# save
	lw	a0, 44(sp)	# restore
	sw	a4, 240(sp)	# save
	mv	a2, a1
	mv	a1, a6
	fmv	ft8, fa2
	fmv	fa2, fa0
	fmv	fa0, fa1
	fmv	fa1, ft8
	call	pretrace_pixels_2991
	li	a1, 0
	li	a0, 2
	lw	a2, 12(sp)	# restore
	lw	a3, 4(a2)
	bgt	a3, zero, .rt_else_65
	lw	ra, 256(sp)
	addi	sp, sp, 260
	jr	ra
.rt_else_65:
	lw	a3, 4(a2)
	addi	a3, a3, -1
	sw	a1, 244(sp)	# save
	ble	a3, zero, .rt_cont_67
	li	a3, 1
	lw	a4, 8(sp)	# restore
	flw	fa0, 0(a4)
	lw	a4, 4(sp)	# restore
	lw	a4, 4(a4)
	sw	a0, 248(sp)	# save
	sub	a0, a3, a4
	fsw	fa0, 252(sp)	# save
	call	min_caml_float_of_int
	flw	fa1, 252(sp)	# restore
	fmul	fa0, fa1, fa0
	lw	a0, 236(sp)	# restore
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	lw	a3, 240(sp)	# restore
	flw	fa2, 0(a3)
	fadd	fa1, fa1, fa2
	flw	fa2, 4(a0)
	fmul	fa2, fa0, fa2
	flw	fa3, 4(a3)
	fadd	fa2, fa2, fa3
	flw	fa3, 8(a0)
	fmul	fa0, fa0, fa3
	flw	fa3, 8(a3)
	fadd	fa0, fa0, fa3
	lw	a0, 0(a2)
	addi	a1, a0, -1
	lw	a0, 60(sp)	# restore
	lw	a2, 248(sp)	# restore
	fmv	ft8, fa2
	fmv	fa2, fa0
	fmv	fa0, fa1
	fmv	fa1, ft8
	call	pretrace_pixels_2991
.rt_cont_67:
	li	a0, 0
	lw	a1, 244(sp)	# restore
	lw	a2, 28(sp)	# restore
	lw	a3, 44(sp)	# restore
	lw	a4, 60(sp)	# restore
	call	scan_pixel_3002
	li	a0, 1
	li	a4, 4
	lw	a1, 44(sp)	# restore
	lw	a2, 60(sp)	# restore
	lw	a3, 28(sp)	# restore
	call	scan_line_3008
rt_ret:
	lw	ra, 256(sp)
	addi	sp, sp, 260
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
