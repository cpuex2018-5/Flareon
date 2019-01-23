	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
	li	gp, 7404	# initialize gp
#	main program starts
	li	a0, 128
	li	a1, 128
	call	rt_3074
#	main program ends
end:
	b	end
veccpy_2619:
	flw	fa0, 0(a1)
	fsw	fa0, 0(a0)
	flw	fa0, 4(a1)
	fsw	fa0, 4(a0)
	flw	fa0, 8(a1)
	fsw	fa0, 8(a0)
veccpy_ret:
	jr	ra
vecunit_sgn_2622:
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
	feq	a2, fa0, fzero
	bne	a2, zero, .vecunit_sgn_else_1
	bne	a1, zero, .vecunit_sgn_else_3
	fli	fa1, l_data_1
	fdiv	fa0, fa1, fa0
	b	.vecunit_sgn_cont_4
.vecunit_sgn_else_3:
	fli	fa1, l_data_2
	fdiv	fa0, fa1, fa0
.vecunit_sgn_cont_4:
	b	.vecunit_sgn_cont_2
.vecunit_sgn_else_1:
	fli	fa0, l_data_1
.vecunit_sgn_cont_2:
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fmul	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fmul	fa0, fa1, fa0
	fsw	fa0, 8(a0)
vecunit_sgn_ret:
	jr	ra
veciprod_2625:
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
veciprod_ret:
	jr	ra
veciprod2_2628:
	flw	fa3, 0(a0)
	fmul	fa0, fa3, fa0
	flw	fa3, 4(a0)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
veciprod2_ret:
	jr	ra
vecaccum_2633:
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
vecaccum_ret:
	jr	ra
vecadd_2637:
	flw	fa0, 0(a0)
	flw	fa1, 0(a1)
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	flw	fa0, 4(a0)
	flw	fa1, 4(a1)
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(a0)
	flw	fa0, 8(a0)
	flw	fa1, 8(a1)
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a0)
vecadd_ret:
	jr	ra
vecscale_2640:
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fmul	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fmul	fa0, fa1, fa0
	fsw	fa0, 8(a0)
vecscale_ret:
	jr	ra
vecaccumv_2643:
	flw	fa0, 0(a0)
	flw	fa1, 0(a1)
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
vecaccumv_ret:
	jr	ra
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
	fli	fa1, l_data_3
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
	fli	fa3, l_data_4
	fmul	fa2, fa2, fa3
	fsw	fa2, 0(a1)
	fli	fa2, l_data_5
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
read_light_2722:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	call	min_caml_read_int
	call	min_caml_read_float
	fli	fa1, l_data_3
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(sp)	# save
	call	min_caml_sin
	lda	a0, min_caml_light
	fneg	fa0, fa0
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	fmul	fa0, fa0, fa1
	fsw	fa0, 4(sp)	# save
	flw	fa0, 0(sp)	# restore
	call	min_caml_cos
	fsw	fa0, 8(sp)	# save
	flw	fa0, 4(sp)	# restore
	call	min_caml_sin
	flw	fa1, 8(sp)	# restore
	fmul	fa0, fa1, fa0
	fsw	fa0, 0(a0)
	flw	fa0, 4(sp)	# restore
	call	min_caml_cos
	fmul	fa0, fa1, fa0
	fsw	fa0, 8(a0)
	lda	a0, min_caml_beam
	call	min_caml_read_float
	fsw	fa0, 0(a0)
read_light_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
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
	fli	fs5, l_data_6
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
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	a0, 0(sp)	# save
	call	min_caml_read_int
	li	t6, -1
	bne	a0, t6, .read_nth_object_else_1
	li	a0, 0
	b	read_nth_object_ret
.read_nth_object_else_1:
	sw	a0, 4(sp)	# save
	call	min_caml_read_int
	sw	a0, 8(sp)	# save
	call	min_caml_read_int
	sw	a0, 12(sp)	# save
	call	min_caml_read_int
	fmv	fa0, fzero
	fsw	fa0, 0(gp)
	fsw	fa0, 4(gp)
	fsw	fa0, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	fsw	fa0, 16(sp)	# save
	call	min_caml_read_float
	fsw	fa0, 0(a1)
	call	min_caml_read_float
	fsw	fa0, 4(a1)
	call	min_caml_read_float
	fsw	fa0, 8(a1)
	flw	fa0, 16(sp)	# restore
	fsw	fa0, 0(gp)
	fsw	fa0, 4(gp)
	fsw	fa0, 8(gp)
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
	xori	a3, a3, 1	# boolean not
	flw	fa0, 16(sp)	# restore
	fsw	fa0, 0(gp)
	fsw	fa0, 4(gp)
	mv	a4, gp
	addi	gp, gp, 8
	call	min_caml_read_float
	fsw	fa0, 0(a4)
	call	min_caml_read_float
	fsw	fa0, 4(a4)
	flw	fa0, 16(sp)	# restore
	fsw	fa0, 0(gp)
	fsw	fa0, 4(gp)
	fsw	fa0, 8(gp)
	mv	a5, gp
	addi	gp, gp, 12
	call	min_caml_read_float
	fsw	fa0, 0(a5)
	call	min_caml_read_float
	fsw	fa0, 4(a5)
	call	min_caml_read_float
	fsw	fa0, 8(a5)
	flw	fa0, 16(sp)	# restore
	fsw	fa0, 0(gp)
	fsw	fa0, 4(gp)
	fsw	fa0, 8(gp)
	mv	a6, gp
	addi	gp, gp, 12
	sw	a1, 20(sp)	# save
	mv	a1, a6
	beq	a0, zero, .read_nth_object_cont_2
	call	min_caml_read_float
	fli	fa1, l_data_3
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
	li	t6, 2
	bne	a6, t6, .read_nth_object_else_3
	li	a7, 1
	b	.read_nth_object_cont_4
.read_nth_object_else_3:
	mv	a7, a3
.read_nth_object_cont_4:
	flw	fa0, 16(sp)	# restore
	fsw	fa0, 0(gp)
	fsw	fa0, 4(gp)
	fsw	fa0, 8(gp)
	fsw	fa0, 12(gp)
	mv	s1, gp
	addi	gp, gp, 16
	mv	s2, gp
	addi	gp, gp, 44
	sw	s1, 40(s2)
	sw	a1, 36(s2)
	sw	a5, 32(s2)
	sw	a4, 28(s2)
	sw	a7, 24(s2)
	sw	a2, 20(s2)
	lw	a2, 20(sp)	# restore
	sw	a2, 16(s2)
	sw	a0, 12(s2)
	lw	a4, 12(sp)	# restore
	sw	a4, 8(s2)
	sw	a6, 4(s2)
	lw	a4, 4(sp)	# restore
	sw	a4, 0(s2)
	mv	a4, s2
	lw	a5, 0(sp)	# restore
	slli	a5, a5, 2
	swl	a4, min_caml_objects(a5)
	sw	a1, 24(sp)	# save
	sw	a0, 28(sp)	# save
	li	t6, 3
	bne	a6, t6, .read_nth_object_else_5
	flw	fa0, 0(a2)
	feq	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_7
	bne	a3, zero, .read_nth_object_else_9
	fle	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_11
	fli	fa1, l_data_1
	b	.read_nth_object_cont_12
.read_nth_object_else_11:
	fli	fa1, l_data_2
.read_nth_object_cont_12:
	b	.read_nth_object_cont_10
.read_nth_object_else_9:
	fmv	fa1, fzero
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
	bne	a3, zero, .read_nth_object_else_13
	bne	a3, zero, .read_nth_object_else_15
	fle	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_17
	fli	fa1, l_data_1
	b	.read_nth_object_cont_18
.read_nth_object_else_17:
	fli	fa1, l_data_2
.read_nth_object_cont_18:
	b	.read_nth_object_cont_16
.read_nth_object_else_15:
	fmv	fa1, fzero
.read_nth_object_cont_16:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	b	.read_nth_object_cont_14
.read_nth_object_else_13:
	fmv	fa0, fzero
.read_nth_object_cont_14:
	fsw	fa0, 4(a2)
	flw	fa0, 8(a2)
	feq	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_19
	bne	a3, zero, .read_nth_object_else_21
	fle	a3, fa0, fzero
	bne	a3, zero, .read_nth_object_else_23
	fli	fa1, l_data_1
	b	.read_nth_object_cont_24
.read_nth_object_else_23:
	fli	fa1, l_data_2
.read_nth_object_cont_24:
	b	.read_nth_object_cont_22
.read_nth_object_else_21:
	fmv	fa1, fzero
.read_nth_object_cont_22:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	b	.read_nth_object_cont_20
.read_nth_object_else_19:
	fmv	fa0, fzero
.read_nth_object_cont_20:
	fsw	fa0, 8(a2)
	b	.read_nth_object_cont_6
.read_nth_object_else_5:
	li	t6, 2
	bne	a6, t6, .read_nth_object_cont_25
	xori	a1, a3, 1	# boolean not
	mv	a0, a2
	call	vecunit_sgn_2622
.read_nth_object_cont_25:
.read_nth_object_cont_6:
	lw	a0, 28(sp)	# restore
	beq	a0, zero, .read_nth_object_cont_26
	lw	a0, 20(sp)	# restore
	lw	a1, 24(sp)	# restore
	call	rotate_quadratic_matrix_2724
.read_nth_object_cont_26:
	li	a0, 1
read_nth_object_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
read_object_2729:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	li	t6, 60
	blt	a0, t6, .read_object_else_1
	b	read_object_ret
.read_object_else_1:
	sw	a0, 0(sp)	# save
	call	read_nth_object_2727
	bne	a0, zero, .read_object_else_3
	lda	a0, min_caml_n_objects
	lw	a1, 0(sp)	# restore
	sw	a1, 0(a0)
	b	read_object_ret
.read_object_else_3:
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	call	read_object_2729
read_object_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
read_net_item_2733:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	a0, 0(sp)	# save
	call	min_caml_read_int
	li	a1, -1
	li	t6, -1
	bne	a0, t6, .read_net_item_else_1
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	b	read_net_item_ret
.read_net_item_else_1:
	sw	a0, 4(sp)	# save
	lw	a1, 0(sp)	# restore
	addi	a0, a1, 1
	call	read_net_item_2733
	lw	a1, 0(sp)	# restore
	slli	a1, a1, 2
	lw	a2, 4(sp)	# restore
	add	t6, a0, a1
	sw	a2, 0(t6)
read_net_item_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
read_or_network_2735:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	a0, 0(sp)	# save
	li	a0, 0
	call	read_net_item_2733
	mv	a1, a0
	lw	a0, 0(a1)
	li	t6, -1
	bne	a0, t6, .read_or_network_else_1
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	call	min_caml_create_array
	b	read_or_network_ret
.read_or_network_else_1:
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	sw	a1, 4(sp)	# save
	call	read_or_network_2735
	lw	a1, 0(sp)	# restore
	slli	a1, a1, 2
	lw	a2, 4(sp)	# restore
	add	t6, a0, a1
	sw	a2, 0(t6)
read_or_network_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
read_and_network_2737:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	sw	a0, 0(sp)	# save
	li	a0, 0
	call	read_net_item_2733
	lw	a1, 0(a0)
	li	t6, -1
	bne	a1, t6, .read_and_network_else_1
	b	read_and_network_ret
.read_and_network_else_1:
	lw	a1, 0(sp)	# restore
	slli	a2, a1, 2
	swl	a0, min_caml_and_net(a2)
	addi	a0, a1, 1
	call	read_and_network_2737
read_and_network_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
read_parameter_2739:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	call	read_screen_settings_2720
	call	read_light_2722
	li	a0, 0
	call	read_object_2729
	li	a0, 0
	call	read_and_network_2737
	lda	a0, min_caml_or_net
	sw	a0, 0(sp)	# save
	li	a0, 0
	call	read_or_network_2735
	lw	a1, 0(sp)	# restore
	sw	a0, 0(a1)
read_parameter_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
solver_rect_surface_2741:
	slli	a5, a2, 2
	add	t6, a1, a5
	flw	fa3, 0(t6)
	feq	a5, fa3, fzero
	bne	a5, zero, .solver_rect_surface_else_1
	lw	a5, 24(a0)
	lw	a0, 16(a0)
	slli	a6, a2, 2
	add	t6, a1, a6
	flw	fa3, 0(t6)
	fle	a6, fzero, fa3
	xori	a6, a6, 1	# boolean not
	xor	a5, a5, a6
	slli	a6, a2, 2
	add	t6, a0, a6
	flw	fa3, 0(t6)
	bne	a5, zero, .solver_rect_surface_cont_2
	fneg	fa3, fa3
.solver_rect_surface_cont_2:
	fsub	fa0, fa3, fa0
	slli	a2, a2, 2
	add	t6, a1, a2
	flw	fa3, 0(t6)
	fdiv	fa0, fa0, fa3
	slli	a2, a3, 2
	add	t6, a0, a2
	flw	fa3, 0(t6)
	slli	a2, a3, 2
	add	t6, a1, a2
	flw	fa4, 0(t6)
	fmul	fa4, fa0, fa4
	fadd	fa1, fa4, fa1
	fabs	fa1, fa1
	fle	a2, fa3, fa1
	bne	a2, zero, .solver_rect_surface_else_3
	slli	a2, a4, 2
	add	t6, a0, a2
	flw	fa1, 0(t6)
	slli	a0, a4, 2
	add	t6, a1, a0
	flw	fa3, 0(t6)
	fmul	fa3, fa0, fa3
	fadd	fa2, fa3, fa2
	fabs	fa2, fa2
	fle	a0, fa1, fa2
	bne	a0, zero, .solver_rect_surface_else_4
	lda	a0, min_caml_solver_dist
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_rect_surface_ret
.solver_rect_surface_else_4:
	li	a0, 0
	b	solver_rect_surface_ret
.solver_rect_surface_else_3:
	li	a0, 0
	b	solver_rect_surface_ret
.solver_rect_surface_else_1:
	li	a0, 0
solver_rect_surface_ret:
	jr	ra
solver_rect_2750:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	li	a2, 0
	li	a3, 1
	li	a4, 2
	fsw	fa0, 0(sp)	# save
	fsw	fa2, 4(sp)	# save
	fsw	fa1, 8(sp)	# save
	sw	a1, 12(sp)	# save
	sw	a0, 16(sp)	# save
	call	solver_rect_surface_2741
	bne	a0, zero, .solver_rect_else_1
	li	a2, 1
	li	a3, 2
	li	a4, 0
	flw	fa0, 8(sp)	# restore
	flw	fa1, 4(sp)	# restore
	flw	fa2, 0(sp)	# restore
	lw	a0, 16(sp)	# restore
	lw	a1, 12(sp)	# restore
	call	solver_rect_surface_2741
	bne	a0, zero, .solver_rect_else_2
	li	a2, 2
	li	a3, 0
	li	a4, 1
	flw	fa0, 4(sp)	# restore
	flw	fa1, 0(sp)	# restore
	flw	fa2, 8(sp)	# restore
	lw	a0, 16(sp)	# restore
	lw	a1, 12(sp)	# restore
	call	solver_rect_surface_2741
	bne	a0, zero, .solver_rect_else_3
	li	a0, 0
	b	solver_rect_ret
.solver_rect_else_3:
	li	a0, 3
	b	solver_rect_ret
.solver_rect_else_2:
	li	a0, 2
	b	solver_rect_ret
.solver_rect_else_1:
	li	a0, 1
solver_rect_ret:
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
solver_surface_2756:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a0, 16(a0)
	fsw	fa2, 0(sp)	# save
	fsw	fa1, 4(sp)	# save
	fsw	fa0, 8(sp)	# save
	sw	a0, 12(sp)	# save
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	veciprod_2625
	fle	a0, fa0, fzero
	bne	a0, zero, .solver_surface_else_1
	lda	a0, min_caml_solver_dist
	fsw	fa0, 16(sp)	# save
	flw	fa0, 8(sp)	# restore
	flw	fa1, 4(sp)	# restore
	flw	fa2, 0(sp)	# restore
	sw	a0, 20(sp)	# save
	lw	a0, 12(sp)	# restore
	call	veciprod2_2628
	fneg	fa0, fa0
	flw	fa1, 16(sp)	# restore
	fdiv	fa0, fa0, fa1
	lw	a0, 20(sp)	# restore
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_surface_ret
.solver_surface_else_1:
	li	a0, 0
solver_surface_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
quadratic_2762:
	fmul	fa3, fa0, fa0
	lw	a1, 36(a0)
	lw	a2, 16(a0)
	lw	a0, 12(a0)
	flw	fa4, 0(a2)
	fmul	fa3, fa3, fa4
	fmul	fa4, fa1, fa1
	flw	fa5, 4(a2)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa4, fa2, fa2
	flw	fa5, 8(a2)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	bne	a0, zero, .quadratic_else_1
	fmv	fa0, fa3
	b	quadratic_ret
.quadratic_else_1:
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
quadratic_ret:
	jr	ra
bilinear_2767:
	fmul	fa6, fa0, fa3
	lw	a1, 36(a0)
	lw	a2, 16(a0)
	lw	a0, 12(a0)
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa1, fa4
	flw	fs1, 4(a2)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	fmul	fa7, fa2, fa5
	flw	fs1, 8(a2)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	bne	a0, zero, .bilinear_else_1
	fmv	fa0, fa6
	b	bilinear_ret
.bilinear_else_1:
	fmul	fa7, fa2, fa4
	fmul	fs1, fa1, fa5
	fadd	fa7, fa7, fs1
	flw	fs1, 0(a1)
	fmul	fa7, fa7, fs1
	fmul	fa5, fa0, fa5
	fmul	fa2, fa2, fa3
	fadd	fa2, fa5, fa2
	flw	fa5, 4(a1)
	fmul	fa2, fa2, fa5
	fadd	fa2, fa7, fa2
	fmul	fa0, fa0, fa4
	fmul	fa1, fa1, fa3
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a1)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
	fli	fa1, l_data_6
	fdiv	fa0, fa0, fa1
	fadd	fa0, fa6, fa0
bilinear_ret:
	jr	ra
solver_second_2775:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	fsw	fa0, 0(sp)	# save
	flw	fa0, 0(a1)
	fsw	fa1, 4(sp)	# save
	flw	fa1, 4(a1)
	fsw	fa2, 8(sp)	# save
	flw	fa2, 8(a1)
	sw	a0, 12(sp)	# save
	sw	a1, 16(sp)	# save
	call	quadratic_2762
	feq	a0, fa0, fzero
	bne	a0, zero, .solver_second_else_1
	fsw	fa0, 20(sp)	# save
	lw	a0, 16(sp)	# restore
	flw	fa0, 0(a0)
	flw	fa1, 4(a0)
	flw	fa2, 8(a0)
	flw	fa3, 0(sp)	# restore
	flw	fa4, 4(sp)	# restore
	flw	fa5, 8(sp)	# restore
	lw	a0, 12(sp)	# restore
	call	bilinear_2767
	fsw	fa0, 24(sp)	# save
	flw	fa0, 0(sp)	# restore
	flw	fa1, 4(sp)	# restore
	flw	fa2, 8(sp)	# restore
	lw	a0, 12(sp)	# restore
	call	quadratic_2762
	lw	a0, 12(sp)	# restore
	lw	a1, 24(a0)
	lw	a0, 4(a0)
	li	t6, 3
	bne	a0, t6, .solver_second_cont_2
	fli	fa1, l_data_1
	fsub	fa0, fa0, fa1
.solver_second_cont_2:
	flw	fa1, 24(sp)	# restore
	fmul	fa2, fa1, fa1
	flw	fa3, 20(sp)	# restore
	fmul	fa0, fa3, fa0
	fsub	fa0, fa2, fa0
	fle	a0, fa0, fzero
	bne	a0, zero, .solver_second_else_3
	fsqrt	fa0, fa0
	bne	a1, zero, .solver_second_cont_4
	fneg	fa0, fa0
.solver_second_cont_4:
	lda	a0, min_caml_solver_dist
	fsub	fa0, fa0, fa1
	fdiv	fa0, fa0, fa3
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_second_ret
.solver_second_else_3:
	li	a0, 0
	b	solver_second_ret
.solver_second_else_1:
	li	a0, 0
solver_second_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
solver_2781:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	flw	fa0, 0(a2)
	lw	a3, 20(a0)
	lw	a4, 4(a0)
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	flw	fa1, 4(a2)
	flw	fa2, 4(a3)
	fsub	fa1, fa1, fa2
	flw	fa2, 8(a2)
	flw	fa3, 8(a3)
	fsub	fa2, fa2, fa3
	li	t6, 1
	bne	a4, t6, .solver_else_1
	call	solver_rect_2750
	b	solver_ret
.solver_else_1:
	li	t6, 2
	bne	a4, t6, .solver_else_2
	call	solver_surface_2756
	b	solver_ret
.solver_else_2:
	call	solver_second_2775
solver_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
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
	xori	a3, a3, 1	# boolean not
	b	.solver_rect_fast_cont_4
.solver_rect_fast_else_3:
	li	a3, 0
.solver_rect_fast_cont_4:
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
	xori	a3, a3, 1	# boolean not
	b	.solver_rect_fast_cont_9
.solver_rect_fast_else_8:
	li	a3, 0
.solver_rect_fast_cont_9:
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
	xori	a0, a0, 1	# boolean not
	b	.solver_rect_fast_cont_14
.solver_rect_fast_else_13:
	li	a0, 0
.solver_rect_fast_cont_14:
	b	.solver_rect_fast_cont_12
.solver_rect_fast_else_11:
	li	a0, 0
.solver_rect_fast_cont_12:
	bne	a0, zero, .solver_rect_fast_else_15
	li	a0, 0
	b	solver_rect_fast_ret
.solver_rect_fast_else_15:
	lda	a0, min_caml_solver_dist
	fsw	fa2, 0(a0)
	li	a0, 3
	b	solver_rect_fast_ret
.solver_rect_fast_else_10:
	lda	a0, min_caml_solver_dist
	fsw	fa3, 0(a0)
	li	a0, 2
	b	solver_rect_fast_ret
.solver_rect_fast_else_5:
	lda	a0, min_caml_solver_dist
	fsw	fa3, 0(a0)
	li	a0, 1
solver_rect_fast_ret:
	jr	ra
solver_surface_fast_2792:
	flw	fa3, 0(a1)
	fle	a0, fzero, fa3
	bne	a0, zero, .solver_surface_fast_else_1
	lda	a0, min_caml_solver_dist
	flw	fa3, 4(a1)
	fmul	fa0, fa3, fa0
	flw	fa3, 8(a1)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 12(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_surface_fast_ret
.solver_surface_fast_else_1:
	li	a0, 0
solver_surface_fast_ret:
	jr	ra
solver_second_fast_2798:
	addi	sp, sp, -20
	sw	ra, 16(sp)
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
	sw	a1, 0(sp)	# save
	fsw	fa3, 4(sp)	# save
	fsw	fa4, 8(sp)	# save
	sw	a0, 12(sp)	# save
	call	quadratic_2762
	lw	a0, 12(sp)	# restore
	lw	a1, 24(a0)
	lw	a0, 4(a0)
	li	t6, 3
	bne	a0, t6, .solver_second_fast_cont_2
	fli	fa1, l_data_1
	fsub	fa0, fa0, fa1
.solver_second_fast_cont_2:
	flw	fa1, 8(sp)	# restore
	fmul	fa2, fa1, fa1
	flw	fa3, 4(sp)	# restore
	fmul	fa0, fa3, fa0
	fsub	fa0, fa2, fa0
	fle	a0, fa0, fzero
	bne	a0, zero, .solver_second_fast_else_3
	bne	a1, zero, .solver_second_fast_else_4
	lda	a0, min_caml_solver_dist
	fsqrt	fa0, fa0
	fsub	fa0, fa1, fa0
	lw	a1, 0(sp)	# restore
	flw	fa1, 16(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	b	.solver_second_fast_cont_5
.solver_second_fast_else_4:
	lda	a0, min_caml_solver_dist
	fsqrt	fa0, fa0
	fadd	fa0, fa1, fa0
	lw	a1, 0(sp)	# restore
	flw	fa1, 16(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
.solver_second_fast_cont_5:
	li	a0, 1
	b	solver_second_fast_ret
.solver_second_fast_else_3:
	li	a0, 0
	b	solver_second_fast_ret
.solver_second_fast_else_1:
	li	a0, 0
solver_second_fast_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
solver_fast_2804:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	slli	a3, a0, 2
	lwl	a3, min_caml_objects(a3)
	flw	fa0, 0(a2)
	lw	a4, 20(a3)
	lw	a5, 4(a3)
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	flw	fa1, 4(a2)
	flw	fa2, 4(a4)
	fsub	fa1, fa1, fa2
	flw	fa2, 8(a2)
	flw	fa3, 8(a4)
	fsub	fa2, fa2, fa3
	lw	a2, 4(a1)
	lw	a1, 0(a1)
	slli	a0, a0, 2
	add	t6, a2, a0
	lw	a2, 0(t6)
	li	t6, 1
	bne	a5, t6, .solver_fast_else_1
	mv	a0, a3
	call	solver_rect_fast_2785
	b	solver_fast_ret
.solver_fast_else_1:
	li	t6, 2
	bne	a5, t6, .solver_fast_else_2
	mv	a1, a2
	mv	a0, a3
	call	solver_surface_fast_2792
	b	solver_fast_ret
.solver_fast_else_2:
	mv	a1, a2
	mv	a0, a3
	call	solver_second_fast_2798
solver_fast_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_surface_fast2_2808:
	flw	fa0, 0(a1)
	fle	a0, fzero, fa0
	bne	a0, zero, .solver_surface_fast2_else_1
	lda	a0, min_caml_solver_dist
	flw	fa0, 0(a1)
	flw	fa1, 12(a2)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_surface_fast2_ret
.solver_surface_fast2_else_1:
	li	a0, 0
solver_surface_fast2_ret:
	jr	ra
solver_second_fast2_2815:
	flw	fa3, 0(a1)
	feq	a3, fa3, fzero
	bne	a3, zero, .solver_second_fast2_else_1
	flw	fa4, 4(a1)
	fmul	fa0, fa4, fa0
	flw	fa4, 8(a1)
	fmul	fa1, fa4, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 12(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 12(a2)
	fmul	fa2, fa0, fa0
	fmul	fa1, fa3, fa1
	fsub	fa1, fa2, fa1
	fle	a2, fa1, fzero
	bne	a2, zero, .solver_second_fast2_else_2
	lw	a0, 24(a0)
	bne	a0, zero, .solver_second_fast2_else_3
	lda	a0, min_caml_solver_dist
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	flw	fa1, 16(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	b	.solver_second_fast2_cont_4
.solver_second_fast2_else_3:
	lda	a0, min_caml_solver_dist
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 16(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
.solver_second_fast2_cont_4:
	li	a0, 1
	b	solver_second_fast2_ret
.solver_second_fast2_else_2:
	li	a0, 0
	b	solver_second_fast2_ret
.solver_second_fast2_else_1:
	li	a0, 0
solver_second_fast2_ret:
	jr	ra
solver_fast2_2822:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	slli	a2, a0, 2
	lwl	a2, min_caml_objects(a2)
	lw	a3, 40(a2)
	lw	a4, 4(a2)
	flw	fa0, 0(a3)
	flw	fa1, 4(a3)
	flw	fa2, 8(a3)
	lw	a5, 4(a1)
	lw	a1, 0(a1)
	slli	a0, a0, 2
	add	t6, a5, a0
	lw	a0, 0(t6)
	li	t6, 1
	bne	a4, t6, .solver_fast2_else_1
	mv	t4, a2
	mv	a2, a0
	mv	a0, t4
	call	solver_rect_fast_2785
	b	solver_fast2_ret
.solver_fast2_else_1:
	li	t6, 2
	bne	a4, t6, .solver_fast2_else_2
	mv	a1, a0
	mv	a0, a2
	mv	a2, a3
	call	solver_surface_fast2_2808
	b	solver_fast2_ret
.solver_fast2_else_2:
	mv	a1, a0
	mv	a0, a2
	mv	a2, a3
	call	solver_second_fast2_2815
solver_fast2_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
setup_rect_table_2825:
	fmv	fa0, fzero
	fsw	fa0, 0(gp)
	fsw	fa0, 4(gp)
	fsw	fa0, 8(gp)
	fsw	fa0, 12(gp)
	fsw	fa0, 16(gp)
	fsw	fa0, 20(gp)
	mv	a2, gp
	addi	gp, gp, 24
	flw	fa0, 0(a0)
	feq	a3, fa0, fzero
	bne	a3, zero, .setup_rect_table_else_1
	lw	a3, 24(a1)
	lw	a4, 16(a1)
	flw	fa0, 0(a0)
	fle	a5, fzero, fa0
	xori	a5, a5, 1	# boolean not
	xor	a3, a3, a5
	flw	fa0, 0(a4)
	bne	a3, zero, .setup_rect_table_cont_3
	fneg	fa0, fa0
.setup_rect_table_cont_3:
	fsw	fa0, 0(a2)
	fli	fa0, l_data_1
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
	xori	a5, a5, 1	# boolean not
	xor	a3, a3, a5
	flw	fa0, 4(a4)
	bne	a3, zero, .setup_rect_table_cont_6
	fneg	fa0, fa0
.setup_rect_table_cont_6:
	fsw	fa0, 8(a2)
	fli	fa0, l_data_1
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
	xori	a4, a4, 1	# boolean not
	xor	a3, a3, a4
	flw	fa0, 8(a1)
	bne	a3, zero, .setup_rect_table_cont_9
	fneg	fa0, fa0
.setup_rect_table_cont_9:
	fsw	fa0, 16(a2)
	fli	fa0, l_data_1
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
setup_surface_table_2828:
	fmv	fa0, fzero
	fsw	fa0, 0(gp)
	fsw	fa0, 4(gp)
	fsw	fa0, 8(gp)
	fsw	fa0, 12(gp)
	mv	a2, gp
	addi	gp, gp, 16
	flw	fa0, 0(a0)
	lw	a1, 16(a1)
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
	fle	a0, fa0, fzero
	bne	a0, zero, .setup_surface_table_else_1
	fli	fa1, l_data_2
	fdiv	fa1, fa1, fa0
	fsw	fa1, 0(a2)
	flw	fa1, 0(a1)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 4(a2)
	flw	fa1, 4(a1)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 8(a2)
	flw	fa1, 8(a1)
	fdiv	fa0, fa1, fa0
	fneg	fa0, fa0
	fsw	fa0, 12(a2)
	b	.setup_surface_table_cont_2
.setup_surface_table_else_1:
	fsw	fzero, 0(a2)
.setup_surface_table_cont_2:
	mv	a0, a2
setup_surface_table_ret:
	jr	ra
setup_second_table_2831:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	fmv	fa0, fzero
	fsw	fa0, 0(gp)
	fsw	fa0, 4(gp)
	fsw	fa0, 8(gp)
	fsw	fa0, 12(gp)
	fsw	fa0, 16(gp)
	mv	a2, gp
	addi	gp, gp, 20
	flw	fa0, 0(a0)
	flw	fa1, 4(a0)
	flw	fa2, 8(a0)
	sw	a2, 0(sp)	# save
	sw	a1, 4(sp)	# save
	sw	a0, 8(sp)	# save
	mv	a0, a1
	call	quadratic_2762
	lw	a0, 8(sp)	# restore
	flw	fa1, 0(a0)
	lw	a1, 4(sp)	# restore
	lw	a2, 36(a1)
	lw	a3, 16(a1)
	lw	a1, 12(a1)
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fneg	fa1, fa1
	flw	fa2, 4(a0)
	flw	fa3, 4(a3)
	fmul	fa2, fa2, fa3
	fneg	fa2, fa2
	flw	fa3, 8(a0)
	flw	fa4, 8(a3)
	fmul	fa3, fa3, fa4
	fneg	fa3, fa3
	lw	a3, 0(sp)	# restore
	fsw	fa0, 0(a3)
	bne	a1, zero, .setup_second_table_else_1
	fsw	fa1, 4(a3)
	fsw	fa2, 8(a3)
	fsw	fa3, 12(a3)
	b	.setup_second_table_cont_2
.setup_second_table_else_1:
	flw	fa4, 8(a0)
	flw	fa5, 4(a2)
	fmul	fa4, fa4, fa5
	flw	fa5, 4(a0)
	flw	fa6, 8(a2)
	fmul	fa5, fa5, fa6
	fadd	fa4, fa4, fa5
	fli	fa5, l_data_6
	fdiv	fa4, fa4, fa5
	fsub	fa1, fa1, fa4
	fsw	fa1, 4(a3)
	flw	fa1, 8(a0)
	flw	fa4, 0(a2)
	fmul	fa1, fa1, fa4
	flw	fa4, 0(a0)
	flw	fa6, 8(a2)
	fmul	fa4, fa4, fa6
	fadd	fa1, fa1, fa4
	fdiv	fa1, fa1, fa5
	fsub	fa1, fa2, fa1
	fsw	fa1, 8(a3)
	flw	fa1, 4(a0)
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	flw	fa2, 0(a0)
	flw	fa4, 4(a2)
	fmul	fa2, fa2, fa4
	fadd	fa1, fa1, fa2
	fdiv	fa1, fa1, fa5
	fsub	fa1, fa3, fa1
	fsw	fa1, 12(a3)
.setup_second_table_cont_2:
	feq	a0, fa0, fzero
	bne	a0, zero, .setup_second_table_cont_3
	fli	fa1, l_data_1
	fdiv	fa0, fa1, fa0
	fsw	fa0, 16(a3)
.setup_second_table_cont_3:
	mv	a0, a3
setup_second_table_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
iter_setup_dirvec_constants_2834:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	blt	a1, zero, iter_setup_dirvec_constants_ret
	slli	a2, a1, 2
	lwl	a2, min_caml_objects(a2)
	lw	a3, 4(a0)
	sw	a0, 0(sp)	# save
	lw	a0, 0(a0)
	lw	a4, 4(a2)
	li	t6, 1
	bne	a4, t6, .iter_setup_dirvec_constants_else_1
	sw	a3, 4(sp)	# save
	sw	a1, 8(sp)	# save
	mv	a1, a2
	call	setup_rect_table_2825
	lw	a1, 8(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 4(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.iter_setup_dirvec_constants_cont_2
.iter_setup_dirvec_constants_else_1:
	li	t6, 2
	bne	a4, t6, .iter_setup_dirvec_constants_else_3
	sw	a3, 4(sp)	# save
	sw	a1, 8(sp)	# save
	mv	a1, a2
	call	setup_surface_table_2828
	lw	a1, 8(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 4(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	.iter_setup_dirvec_constants_cont_4
.iter_setup_dirvec_constants_else_3:
	sw	a3, 4(sp)	# save
	sw	a1, 8(sp)	# save
	mv	a1, a2
	call	setup_second_table_2831
	lw	a1, 8(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 4(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
.iter_setup_dirvec_constants_cont_4:
.iter_setup_dirvec_constants_cont_2:
	addi	a1, a1, -1
	lw	a0, 0(sp)	# restore
	call	iter_setup_dirvec_constants_2834
iter_setup_dirvec_constants_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
setup_startp_constants_2839:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	blt	a1, zero, setup_startp_constants_ret
	slli	a2, a1, 2
	lwl	a2, min_caml_objects(a2)
	lw	a3, 40(a2)
	lw	a4, 20(a2)
	lw	a5, 16(a2)
	lw	a6, 4(a2)
	flw	fa0, 0(a0)
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	fsw	fa0, 0(a3)
	flw	fa0, 4(a0)
	flw	fa1, 4(a4)
	fsub	fa0, fa0, fa1
	fsw	fa0, 4(a3)
	flw	fa0, 8(a0)
	flw	fa1, 8(a4)
	fsub	fa0, fa0, fa1
	fsw	fa0, 8(a3)
	sw	a0, 0(sp)	# save
	sw	a1, 4(sp)	# save
	li	t6, 2
	bne	a6, t6, .setup_startp_constants_else_1
	flw	fa0, 0(a3)
	flw	fa1, 4(a3)
	flw	fa2, 8(a3)
	sw	a3, 8(sp)	# save
	mv	a0, a5
	call	veciprod2_2628
	lw	a0, 8(sp)	# restore
	fsw	fa0, 12(a0)
	b	.setup_startp_constants_cont_2
.setup_startp_constants_else_1:
	li	t6, 2
	ble	a6, t6, .setup_startp_constants_cont_3
	flw	fa0, 0(a3)
	flw	fa1, 4(a3)
	flw	fa2, 8(a3)
	sw	a3, 8(sp)	# save
	sw	a6, 12(sp)	# save
	mv	a0, a2
	call	quadratic_2762
	lw	a0, 12(sp)	# restore
	li	t6, 3
	bne	a0, t6, .setup_startp_constants_cont_4
	fli	fa1, l_data_1
	fsub	fa0, fa0, fa1
.setup_startp_constants_cont_4:
	lw	a0, 8(sp)	# restore
	fsw	fa0, 12(a0)
.setup_startp_constants_cont_3:
.setup_startp_constants_cont_2:
	lw	a0, 4(sp)	# restore
	addi	a1, a0, -1
	lw	a0, 0(sp)	# restore
	call	setup_startp_constants_2839
setup_startp_constants_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
is_rect_outside_2844:
	lw	a1, 24(a0)
	lw	a0, 16(a0)
	flw	fa3, 0(a0)
	fabs	fa0, fa0
	fle	a2, fa3, fa0
	bne	a2, zero, .is_rect_outside_else_1
	flw	fa0, 4(a0)
	fabs	fa1, fa1
	fle	a2, fa0, fa1
	bne	a2, zero, .is_rect_outside_else_3
	flw	fa0, 8(a0)
	fabs	fa1, fa2
	fle	a0, fa0, fa1
	xori	a0, a0, 1	# boolean not
	b	.is_rect_outside_cont_4
.is_rect_outside_else_3:
	li	a0, 0
.is_rect_outside_cont_4:
	b	.is_rect_outside_cont_2
.is_rect_outside_else_1:
	li	a0, 0
.is_rect_outside_cont_2:
	bne	a0, zero, .is_rect_outside_else_5
	xori	a0, a1, 1	# boolean not
	b	is_rect_outside_ret
.is_rect_outside_else_5:
	mv	a0, a1
is_rect_outside_ret:
	jr	ra
is_second_outside_2854:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	sw	a0, 0(sp)	# save
	call	quadratic_2762
	lw	a0, 0(sp)	# restore
	lw	a1, 24(a0)
	lw	a0, 4(a0)
	li	t6, 3
	bne	a0, t6, .is_second_outside_cont_1
	fli	fa1, l_data_1
	fsub	fa0, fa0, fa1
.is_second_outside_cont_1:
	fle	a0, fzero, fa0
	xori	a0, a0, 1	# boolean not
	xor	a0, a1, a0
	xori	a0, a0, 1	# boolean not
is_second_outside_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
is_outside_2859:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	lw	a1, 24(a0)
	lw	a2, 20(a0)
	lw	a3, 16(a0)
	lw	a4, 4(a0)
	flw	fa3, 0(a2)
	fsub	fa0, fa0, fa3
	flw	fa3, 4(a2)
	fsub	fa1, fa1, fa3
	flw	fa3, 8(a2)
	fsub	fa2, fa2, fa3
	li	t6, 1
	bne	a4, t6, .is_outside_else_1
	call	is_rect_outside_2844
	b	is_outside_ret
.is_outside_else_1:
	li	t6, 2
	bne	a4, t6, .is_outside_else_2
	sw	a1, 0(sp)	# save
	mv	a0, a3
	call	veciprod2_2628
	fle	a0, fzero, fa0
	xori	a0, a0, 1	# boolean not
	lw	a1, 0(sp)	# restore
	xor	a0, a1, a0
	xori	a0, a0, 1	# boolean not
	b	is_outside_ret
.is_outside_else_2:
	call	is_second_outside_2854
is_outside_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
check_all_inside_2864:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	slli	a2, a0, 2
	add	t6, a1, a2
	lw	a2, 0(t6)
	li	t6, -1
	bne	a2, t6, .check_all_inside_else_1
	li	a0, 1
	b	check_all_inside_ret
.check_all_inside_else_1:
	slli	a2, a2, 2
	sw	a0, 0(sp)	# save
	lwl	a0, min_caml_objects(a2)
	fsw	fa2, 4(sp)	# save
	fsw	fa1, 8(sp)	# save
	fsw	fa0, 12(sp)	# save
	sw	a1, 16(sp)	# save
	call	is_outside_2859
	bne	a0, zero, .check_all_inside_else_2
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	flw	fa0, 12(sp)	# restore
	flw	fa1, 8(sp)	# restore
	flw	fa2, 4(sp)	# restore
	lw	a1, 16(sp)	# restore
	call	check_all_inside_2864
	b	check_all_inside_ret
.check_all_inside_else_2:
	li	a0, 0
check_all_inside_ret:
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
shadow_check_and_group_2870:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	slli	a2, a0, 2
	add	t6, a1, a2
	lw	a2, 0(t6)
	li	t6, -1
	bne	a2, t6, .shadow_check_and_group_else_1
	li	a0, 0
	b	shadow_check_and_group_ret
.shadow_check_and_group_else_1:
	slli	a2, a0, 2
	sw	a0, 0(sp)	# save
	add	t6, a1, a2
	lw	a0, 0(t6)
	sw	a1, 4(sp)	# save
	lda	a1, min_caml_light_dirvec
	lda	a2, min_caml_intersection_point
	sw	a2, 8(sp)	# save
	sw	a0, 12(sp)	# save
	call	solver_fast_2804
	lda	a1, min_caml_solver_dist
	flw	fa0, 0(a1)
	bne	a0, zero, .shadow_check_and_group_else_2
	li	a0, 0
	b	.shadow_check_and_group_cont_3
.shadow_check_and_group_else_2:
	fli	fa1, l_data_7
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
.shadow_check_and_group_cont_3:
	bne	a0, zero, .shadow_check_and_group_else_4
	lw	a0, 12(sp)	# restore
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	lw	a0, 24(a0)
	bne	a0, zero, .shadow_check_and_group_else_5
	li	a0, 0
	b	shadow_check_and_group_ret
.shadow_check_and_group_else_5:
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 4(sp)	# restore
	call	shadow_check_and_group_2870
	b	shadow_check_and_group_ret
.shadow_check_and_group_else_4:
	fli	fa1, l_data_8
	fadd	fa0, fa0, fa1
	lda	a0, min_caml_light
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	lw	a1, 8(sp)	# restore
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
	li	a0, 0
	lw	a1, 4(sp)	# restore
	fmv	ft8, fa2
	fmv	fa2, fa0
	fmv	fa0, fa1
	fmv	fa1, ft8
	call	check_all_inside_2864
	bne	a0, zero, .shadow_check_and_group_else_6
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 4(sp)	# restore
	call	shadow_check_and_group_2870
	b	shadow_check_and_group_ret
.shadow_check_and_group_else_6:
	li	a0, 1
shadow_check_and_group_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
shadow_check_one_or_group_2873:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	slli	a2, a0, 2
	add	t6, a1, a2
	lw	a2, 0(t6)
	li	t6, -1
	bne	a2, t6, .shadow_check_one_or_group_else_1
	li	a0, 0
	b	shadow_check_one_or_group_ret
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
	lw	a1, 0(sp)	# restore
	call	shadow_check_one_or_group_2873
	b	shadow_check_one_or_group_ret
.shadow_check_one_or_group_else_2:
	li	a0, 1
shadow_check_one_or_group_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
shadow_check_one_or_matrix_2876:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	slli	a2, a0, 2
	sw	a1, 0(sp)	# save
	add	t6, a1, a2
	lw	a1, 0(t6)
	sw	a0, 4(sp)	# save
	lw	a0, 0(a1)
	li	t6, -1
	bne	a0, t6, .shadow_check_one_or_matrix_else_1
	li	a0, 0
	b	shadow_check_one_or_matrix_ret
.shadow_check_one_or_matrix_else_1:
	sw	a1, 8(sp)	# save
	li	t6, 99
	bne	a0, t6, .shadow_check_one_or_matrix_else_2
	li	a0, 1
	b	.shadow_check_one_or_matrix_cont_3
.shadow_check_one_or_matrix_else_2:
	lda	a1, min_caml_light_dirvec
	lda	a2, min_caml_intersection_point
	call	solver_fast_2804
	bne	a0, zero, .shadow_check_one_or_matrix_else_4
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_5
.shadow_check_one_or_matrix_else_4:
	fli	fa0, l_data_9
	lda	a0, min_caml_solver_dist
	flw	fa1, 0(a0)
	fle	a0, fa0, fa1
	bne	a0, zero, .shadow_check_one_or_matrix_else_6
	li	a0, 1
	lw	a1, 8(sp)	# restore
	call	shadow_check_one_or_group_2873
	bne	a0, zero, .shadow_check_one_or_matrix_else_8
	li	a0, 0
	b	.shadow_check_one_or_matrix_cont_9
.shadow_check_one_or_matrix_else_8:
	li	a0, 1
.shadow_check_one_or_matrix_cont_9:
	b	.shadow_check_one_or_matrix_cont_7
.shadow_check_one_or_matrix_else_6:
	li	a0, 0
.shadow_check_one_or_matrix_cont_7:
.shadow_check_one_or_matrix_cont_5:
.shadow_check_one_or_matrix_cont_3:
	bne	a0, zero, .shadow_check_one_or_matrix_else_10
	lw	a0, 4(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 0(sp)	# restore
	call	shadow_check_one_or_matrix_2876
	b	shadow_check_one_or_matrix_ret
.shadow_check_one_or_matrix_else_10:
	li	a0, 1
	lw	a1, 8(sp)	# restore
	call	shadow_check_one_or_group_2873
	bne	a0, zero, .shadow_check_one_or_matrix_else_11
	lw	a0, 4(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 0(sp)	# restore
	call	shadow_check_one_or_matrix_2876
	b	shadow_check_one_or_matrix_ret
.shadow_check_one_or_matrix_else_11:
	li	a0, 1
shadow_check_one_or_matrix_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
solve_each_element_2879:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	slli	a3, a0, 2
	sw	a0, 0(sp)	# save
	add	t6, a1, a3
	lw	a0, 0(t6)
	li	t6, -1
	bne	a0, t6, .solve_each_element_else_1
	b	solve_each_element_ret
.solve_each_element_else_1:
	lda	a3, min_caml_startp
	sw	a3, 4(sp)	# save
	sw	a2, 8(sp)	# save
	sw	a1, 12(sp)	# save
	sw	a0, 16(sp)	# save
	mv	a1, a2
	mv	a2, a3
	call	solver_2781
	bne	a0, zero, .solve_each_element_else_3
	lw	a0, 16(sp)	# restore
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	lw	a0, 24(a0)
	bne	a0, zero, .solve_each_element_else_4
	b	solve_each_element_ret
.solve_each_element_else_4:
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 12(sp)	# restore
	lw	a2, 8(sp)	# restore
	call	solve_each_element_2879
	b	solve_each_element_ret
.solve_each_element_else_3:
	lda	a1, min_caml_solver_dist
	flw	fa0, 0(a1)
	fle	a1, fa0, fzero
	bne	a1, zero, .solve_each_element_cont_6
	lda	a1, min_caml_tmin
	flw	fa1, 0(a1)
	fle	a2, fa1, fa0
	bne	a2, zero, .solve_each_element_cont_7
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
	sw	a0, 20(sp)	# save
	li	a0, 0
	sw	a1, 24(sp)	# save
	lw	a1, 12(sp)	# restore
	fsw	fa3, 28(sp)	# save
	fsw	fa2, 32(sp)	# save
	fsw	fa1, 36(sp)	# save
	fsw	fa0, 40(sp)	# save
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	call	check_all_inside_2864
	beq	a0, zero, .solve_each_element_cont_8
	lw	a0, 24(sp)	# restore
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
	lw	a1, 20(sp)	# restore
	sw	a1, 0(a0)
.solve_each_element_cont_8:
.solve_each_element_cont_7:
.solve_each_element_cont_6:
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
	addi	sp, sp, -16
	sw	ra, 12(sp)
	slli	a3, a0, 2
	add	t6, a1, a3
	lw	a3, 0(t6)
	li	t6, -1
	bne	a3, t6, .solve_one_or_network_else_1
	b	solve_one_or_network_ret
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
	lw	a1, 0(sp)	# restore
	lw	a2, 8(sp)	# restore
	call	solve_one_or_network_2883
solve_one_or_network_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
trace_or_matrix_2887:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	slli	a3, a0, 2
	sw	a1, 0(sp)	# save
	add	t6, a1, a3
	lw	a1, 0(t6)
	sw	a0, 4(sp)	# save
	lw	a0, 0(a1)
	li	t6, -1
	bne	a0, t6, .trace_or_matrix_else_1
	b	trace_or_matrix_ret
.trace_or_matrix_else_1:
	sw	a2, 8(sp)	# save
	li	t6, 99
	bne	a0, t6, .trace_or_matrix_else_3
	li	a0, 1
	call	solve_one_or_network_2883
	b	.trace_or_matrix_cont_4
.trace_or_matrix_else_3:
	lda	a3, min_caml_startp
	sw	a1, 12(sp)	# save
	mv	a1, a2
	mv	a2, a3
	call	solver_2781
	beq	a0, zero, .trace_or_matrix_cont_5
	lda	a0, min_caml_solver_dist
	flw	fa0, 0(a0)
	lda	a0, min_caml_tmin
	flw	fa1, 0(a0)
	fle	a0, fa1, fa0
	bne	a0, zero, .trace_or_matrix_cont_6
	li	a0, 1
	lw	a1, 12(sp)	# restore
	lw	a2, 8(sp)	# restore
	call	solve_one_or_network_2883
.trace_or_matrix_cont_6:
.trace_or_matrix_cont_5:
.trace_or_matrix_cont_4:
	lw	a0, 4(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 0(sp)	# restore
	lw	a2, 8(sp)	# restore
	call	trace_or_matrix_2887
trace_or_matrix_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
judge_intersection_2891:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	lda	a1, min_caml_tmin
	fli	fa0, l_data_10
	fsw	fa0, 0(a1)
	li	a2, 0
	lda	a3, min_caml_or_net
	sw	a1, 0(sp)	# save
	lw	a1, 0(a3)
	mv	t4, a2
	mv	a2, a0
	mv	a0, t4
	call	trace_or_matrix_2887
	lw	a0, 0(sp)	# restore
	flw	fa0, 0(a0)
	fli	fa1, l_data_9
	fle	a0, fa0, fa1
	bne	a0, zero, .judge_intersection_else_1
	fli	fa1, l_data_11
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	b	judge_intersection_ret
.judge_intersection_else_1:
	li	a0, 0
judge_intersection_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
solve_each_element_fast_2893:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	lw	a3, 0(a2)
	slli	a4, a0, 2
	sw	a0, 0(sp)	# save
	add	t6, a1, a4
	lw	a0, 0(t6)
	li	t6, -1
	bne	a0, t6, .solve_each_element_fast_else_1
	b	solve_each_element_fast_ret
.solve_each_element_fast_else_1:
	sw	a3, 4(sp)	# save
	sw	a2, 8(sp)	# save
	sw	a1, 12(sp)	# save
	sw	a0, 16(sp)	# save
	mv	a1, a2
	call	solver_fast2_2822
	bne	a0, zero, .solve_each_element_fast_else_3
	lw	a0, 16(sp)	# restore
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	lw	a0, 24(a0)
	bne	a0, zero, .solve_each_element_fast_else_4
	b	solve_each_element_fast_ret
.solve_each_element_fast_else_4:
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 12(sp)	# restore
	lw	a2, 8(sp)	# restore
	call	solve_each_element_fast_2893
	b	solve_each_element_fast_ret
.solve_each_element_fast_else_3:
	lda	a1, min_caml_solver_dist
	flw	fa0, 0(a1)
	fle	a1, fa0, fzero
	bne	a1, zero, .solve_each_element_fast_cont_6
	lda	a1, min_caml_tmin
	flw	fa1, 0(a1)
	fle	a2, fa1, fa0
	bne	a2, zero, .solve_each_element_fast_cont_7
	fli	fa1, l_data_8
	fadd	fa0, fa0, fa1
	lw	a2, 4(sp)	# restore
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
	sw	a0, 20(sp)	# save
	li	a0, 0
	sw	a1, 24(sp)	# save
	lw	a1, 12(sp)	# restore
	fsw	fa3, 28(sp)	# save
	fsw	fa2, 32(sp)	# save
	fsw	fa1, 36(sp)	# save
	fsw	fa0, 40(sp)	# save
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	call	check_all_inside_2864
	beq	a0, zero, .solve_each_element_fast_cont_8
	lw	a0, 24(sp)	# restore
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
	lw	a1, 20(sp)	# restore
	sw	a1, 0(a0)
.solve_each_element_fast_cont_8:
.solve_each_element_fast_cont_7:
.solve_each_element_fast_cont_6:
	lw	a0, 0(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 12(sp)	# restore
	lw	a2, 8(sp)	# restore
	call	solve_each_element_fast_2893
solve_each_element_fast_ret:
	lw	ra, 44(sp)
	addi	sp, sp, 48
	jr	ra
solve_one_or_network_fast_2897:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	slli	a3, a0, 2
	add	t6, a1, a3
	lw	a3, 0(t6)
	li	t6, -1
	bne	a3, t6, .solve_one_or_network_fast_else_1
	b	solve_one_or_network_fast_ret
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
	lw	a1, 0(sp)	# restore
	lw	a2, 8(sp)	# restore
	call	solve_one_or_network_fast_2897
solve_one_or_network_fast_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
trace_or_matrix_fast_2901:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	slli	a3, a0, 2
	sw	a1, 0(sp)	# save
	add	t6, a1, a3
	lw	a1, 0(t6)
	sw	a0, 4(sp)	# save
	lw	a0, 0(a1)
	li	t6, -1
	bne	a0, t6, .trace_or_matrix_fast_else_1
	b	trace_or_matrix_fast_ret
.trace_or_matrix_fast_else_1:
	sw	a2, 8(sp)	# save
	li	t6, 99
	bne	a0, t6, .trace_or_matrix_fast_else_3
	li	a0, 1
	call	solve_one_or_network_fast_2897
	b	.trace_or_matrix_fast_cont_4
.trace_or_matrix_fast_else_3:
	sw	a1, 12(sp)	# save
	mv	a1, a2
	call	solver_fast2_2822
	beq	a0, zero, .trace_or_matrix_fast_cont_5
	lda	a0, min_caml_solver_dist
	flw	fa0, 0(a0)
	lda	a0, min_caml_tmin
	flw	fa1, 0(a0)
	fle	a0, fa1, fa0
	bne	a0, zero, .trace_or_matrix_fast_cont_6
	li	a0, 1
	lw	a1, 12(sp)	# restore
	lw	a2, 8(sp)	# restore
	call	solve_one_or_network_fast_2897
.trace_or_matrix_fast_cont_6:
.trace_or_matrix_fast_cont_5:
.trace_or_matrix_fast_cont_4:
	lw	a0, 4(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 0(sp)	# restore
	lw	a2, 8(sp)	# restore
	call	trace_or_matrix_fast_2901
trace_or_matrix_fast_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
judge_intersection_fast_2905:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	lda	a1, min_caml_tmin
	fli	fa0, l_data_10
	fsw	fa0, 0(a1)
	li	a2, 0
	lda	a3, min_caml_or_net
	sw	a1, 0(sp)	# save
	lw	a1, 0(a3)
	mv	t4, a2
	mv	a2, a0
	mv	a0, t4
	call	trace_or_matrix_fast_2901
	lw	a0, 0(sp)	# restore
	flw	fa0, 0(a0)
	fli	fa1, l_data_9
	fle	a0, fa0, fa1
	bne	a0, zero, .judge_intersection_fast_else_1
	fli	fa1, l_data_11
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	b	judge_intersection_fast_ret
.judge_intersection_fast_else_1:
	li	a0, 0
judge_intersection_fast_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
get_nvector_rect_2907:
	lda	a1, min_caml_intsec_rectside
	lw	a1, 0(a1)
	lda	a2, min_caml_nvector
	fsw	fzero, 0(a2)
	fsw	fzero, 4(a2)
	fsw	fzero, 8(a2)
	addi	a1, a1, -1
	slli	a2, a1, 2
	add	t6, a0, a2
	flw	fa0, 0(t6)
	feq	a0, fa0, fzero
	bne	a0, zero, .get_nvector_rect_else_1
	fle	a0, fa0, fzero
	bne	a0, zero, .get_nvector_rect_else_3
	fli	fa0, l_data_1
	b	.get_nvector_rect_cont_4
.get_nvector_rect_else_3:
	fli	fa0, l_data_2
.get_nvector_rect_cont_4:
	b	.get_nvector_rect_cont_2
.get_nvector_rect_else_1:
	fmv	fa0, fzero
.get_nvector_rect_cont_2:
	fneg	fa0, fa0
	slli	a0, a1, 2
	fswl	fa0, min_caml_nvector(a0)
get_nvector_rect_ret:
	jr	ra
get_nvector_plane_2909:
	lda	a1, min_caml_nvector
	lw	a0, 16(a0)
	flw	fa0, 0(a0)
	fneg	fa0, fa0
	fsw	fa0, 0(a1)
	flw	fa0, 4(a0)
	fneg	fa0, fa0
	fsw	fa0, 4(a1)
	flw	fa0, 8(a0)
	fneg	fa0, fa0
	fsw	fa0, 8(a1)
get_nvector_plane_ret:
	jr	ra
get_nvector_second_2911:
	addi	sp, sp, -4
	sw	ra, 0(sp)
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
	fli	fa7, l_data_6
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
	mv	a1, a3
	call	vecunit_sgn_2622
get_nvector_second_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
utexture_2916:
	addi	sp, sp, -40
	sw	ra, 36(sp)
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
	li	t6, 1
	bne	a0, t6, .utexture_else_1
	flw	fa0, 0(a1)
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	fli	fa1, l_data_22
	fsw	fa0, 0(sp)	# save
	fmul	fa0, fa0, fa1
	call	min_caml_floor
	fli	fa2, l_data_23
	fmul	fa0, fa0, fa2
	fli	fa3, l_data_20
	flw	fa4, 0(sp)	# restore
	fsub	fa0, fa4, fa0
	fle	a0, fa3, fa0
	xori	a0, a0, 1	# boolean not
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
	xori	a1, a1, 1	# boolean not
	bne	a0, zero, .utexture_else_2
	bne	a1, zero, .utexture_else_4
	fli	fa0, l_data_18
	b	.utexture_cont_5
.utexture_else_4:
	fmv	fa0, fzero
.utexture_cont_5:
	b	.utexture_cont_3
.utexture_else_2:
	bne	a1, zero, .utexture_else_6
	fmv	fa0, fzero
	b	.utexture_cont_7
.utexture_else_6:
	fli	fa0, l_data_18
.utexture_cont_7:
.utexture_cont_3:
	fsw	fa0, 4(a5)
	b	utexture_ret
.utexture_else_1:
	li	t6, 2
	bne	a0, t6, .utexture_else_9
	flw	fa0, 4(a1)
	fli	fa1, l_data_21
	fmul	fa0, fa0, fa1
	call	min_caml_sin
	flw	fa2, 4(a1)
	fsw	fa0, 8(sp)	# save
	fmul	fa0, fa2, fa1
	call	min_caml_sin
	flw	fa1, 8(sp)	# restore
	fmul	fa0, fa1, fa0
	fli	fa1, l_data_18
	fmul	fa2, fa1, fa0
	fsw	fa2, 0(a5)
	fli	fa2, l_data_1
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a5)
	b	utexture_ret
.utexture_else_9:
	li	t6, 3
	bne	a0, t6, .utexture_else_11
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
	fli	fa1, l_data_20
	fdiv	fa0, fa0, fa1
	fsw	fa0, 12(sp)	# save
	call	min_caml_floor
	flw	fa1, 12(sp)	# restore
	fsub	fa0, fa1, fa0
	fli	fa1, l_data_14
	fmul	fa0, fa0, fa1
	fsw	fa0, 16(sp)	# save
	call	min_caml_cos
	fsw	fa0, 20(sp)	# save
	flw	fa0, 16(sp)	# restore
	call	min_caml_cos
	flw	fa1, 20(sp)	# restore
	fmul	fa0, fa1, fa0
	fli	fa1, l_data_18
	fmul	fa2, fa0, fa1
	fsw	fa2, 4(a5)
	fli	fa2, l_data_1
	fsub	fa0, fa2, fa0
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a5)
	b	utexture_ret
.utexture_else_11:
	li	t6, 4
	bne	a0, t6, utexture_ret
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
	fli	fa3, l_data_12
	fabs	fa4, fa0
	fle	a0, fa3, fa4
	bne	a0, zero, .utexture_else_13
	fli	fa0, l_data_15
	b	.utexture_cont_14
.utexture_else_13:
	fdiv	fa0, fa1, fa0
	fabs	fa0, fa0
	call	min_caml_atan
	fli	fa1, l_data_13
	fmul	fa0, fa0, fa1
	fli	fa1, l_data_14
	fdiv	fa0, fa0, fa1
.utexture_cont_14:
	fsw	fa0, 24(sp)	# save
	call	min_caml_floor
	flw	fa1, 24(sp)	# restore
	fsub	fa0, fa1, fa0
	flw	fa1, 4(a1)
	flw	fa4, 4(a3)
	fsub	fa1, fa1, fa4
	flw	fa4, 4(a4)
	fsqrt	fa4, fa4
	fmul	fa1, fa1, fa4
	fabs	fa4, fa2
	fle	a0, fa3, fa4
	fsw	fa0, 28(sp)	# save
	bne	a0, zero, .utexture_else_15
	fli	fa0, l_data_15
	b	.utexture_cont_16
.utexture_else_15:
	fdiv	fa1, fa1, fa2
	fabs	fa0, fa1
	call	min_caml_atan
	fli	fa1, l_data_13
	fmul	fa0, fa0, fa1
	fli	fa1, l_data_14
	fdiv	fa0, fa0, fa1
.utexture_cont_16:
	fsw	fa0, 32(sp)	# save
	call	min_caml_floor
	flw	fa1, 32(sp)	# restore
	fsub	fa0, fa1, fa0
	fli	fa1, l_data_16
	fli	fa2, l_data_17
	flw	fa3, 28(sp)	# restore
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
	fli	fa1, l_data_18
	fmul	fa0, fa1, fa0
	fli	fa1, l_data_19
	fdiv	fa0, fa0, fa1
	fsw	fa0, 8(a5)
utexture_ret:
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
add_light_2919:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	fle	a0, fa0, fzero
	fsw	fa2, 0(sp)	# save
	fsw	fa1, 4(sp)	# save
	bne	a0, zero, .add_light_cont_1
	lda	a0, min_caml_rgb
	lda	a1, min_caml_texture_color
	call	vecaccum_2633
.add_light_cont_1:
	flw	fa0, 4(sp)	# restore
	fle	a0, fa0, fzero
	bne	a0, zero, add_light_ret
	fmul	fa0, fa0, fa0
	fmul	fa0, fa0, fa0
	flw	fa1, 0(sp)	# restore
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
add_light_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
trace_reflections_2923:
	addi	sp, sp, -40
	sw	ra, 36(sp)
	blt	a0, zero, trace_reflections_ret
	slli	a2, a0, 2
	lwl	a2, min_caml_reflections(a2)
	flw	fa2, 8(a2)
	sw	a0, 0(sp)	# save
	lw	a0, 4(a2)
	lw	a2, 0(a2)
	fsw	fa1, 4(sp)	# save
	sw	a1, 8(sp)	# save
	fsw	fa0, 12(sp)	# save
	fsw	fa2, 16(sp)	# save
	sw	a0, 20(sp)	# save
	sw	a2, 24(sp)	# save
	call	judge_intersection_fast_2905
	beq	a0, zero, .trace_reflections_cont_1
	lda	a0, min_caml_intersected_object_id
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lda	a1, min_caml_intsec_rectside
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, 24(sp)	# restore
	bne	a0, a1, .trace_reflections_cont_2
	li	a0, 0
	lda	a1, min_caml_or_net
	lw	a1, 0(a1)
	call	shadow_check_one_or_matrix_2876
	bne	a0, zero, .trace_reflections_cont_3
	lda	a0, min_caml_nvector
	lw	a1, 20(sp)	# restore
	lw	a1, 0(a1)
	sw	a1, 28(sp)	# save
	call	veciprod_2625
	flw	fa1, 12(sp)	# restore
	flw	fa2, 16(sp)	# restore
	fmul	fa3, fa2, fa1
	fmul	fa0, fa3, fa0
	lw	a0, 8(sp)	# restore
	lw	a1, 28(sp)	# restore
	fsw	fa0, 32(sp)	# save
	call	veciprod_2625
	flw	fa1, 16(sp)	# restore
	fmul	fa1, fa1, fa0
	flw	fa0, 32(sp)	# restore
	flw	fa2, 4(sp)	# restore
	call	add_light_2919
.trace_reflections_cont_3:
.trace_reflections_cont_2:
.trace_reflections_cont_1:
	lw	a0, 0(sp)	# restore
	addi	a0, a0, -1
	flw	fa0, 12(sp)	# restore
	flw	fa1, 4(sp)	# restore
	lw	a1, 8(sp)	# restore
	call	trace_reflections_2923
trace_reflections_ret:
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
trace_ray_2928:
	addi	sp, sp, -88
	sw	ra, 84(sp)
	li	t6, 4
	bgt	a0, t6, trace_ray_ret
	lw	a3, 28(a2)
	lw	a4, 16(a2)
	lw	a5, 12(a2)
	lw	a6, 8(a2)
	lw	a7, 4(a2)
	sw	a2, 0(sp)	# save
	fsw	fa1, 4(sp)	# save
	sw	a3, 8(sp)	# save
	sw	a4, 12(sp)	# save
	sw	a5, 16(sp)	# save
	sw	a7, 20(sp)	# save
	fsw	fa0, 24(sp)	# save
	sw	a1, 28(sp)	# save
	sw	a6, 32(sp)	# save
	sw	a0, 36(sp)	# save
	mv	a0, a1
	call	judge_intersection_2891
	bne	a0, zero, .trace_ray_else_1
	li	a0, -1
	lw	a1, 36(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 32(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	bne	a1, zero, .trace_ray_else_2
	b	trace_ray_ret
.trace_ray_else_2:
	lda	a1, min_caml_light
	lw	a0, 28(sp)	# restore
	call	veciprod_2625
	fneg	fa0, fa0
	fle	a0, fa0, fzero
	bne	a0, zero, trace_ray_ret
	fmul	fa1, fa0, fa0
	fmul	fa0, fa1, fa0
	flw	fa1, 24(sp)	# restore
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
	b	trace_ray_ret
.trace_ray_else_1:
	lda	a0, min_caml_intersected_object_id
	lw	a0, 0(a0)
	slli	a1, a0, 2
	sw	a0, 40(sp)	# save
	lwl	a0, min_caml_objects(a1)
	lw	a1, 28(a0)
	lw	a2, 8(a0)
	lw	a3, 4(a0)
	flw	fa0, 0(a1)
	flw	fa1, 24(sp)	# restore
	fmul	fa0, fa0, fa1
	sw	a2, 44(sp)	# save
	fsw	fa0, 48(sp)	# save
	sw	a1, 52(sp)	# save
	sw	a0, 56(sp)	# save
	li	t6, 1
	bne	a3, t6, .trace_ray_else_5
	lw	a0, 28(sp)	# restore
	call	get_nvector_rect_2907
	b	.trace_ray_cont_6
.trace_ray_else_5:
	li	t6, 2
	bne	a3, t6, .trace_ray_else_7
	call	get_nvector_plane_2909
	b	.trace_ray_cont_8
.trace_ray_else_7:
	call	get_nvector_second_2911
.trace_ray_cont_8:
.trace_ray_cont_6:
	lda	a0, min_caml_startp
	lda	a1, min_caml_intersection_point
	sw	a1, 60(sp)	# save
	call	veccpy_2619
	lw	a0, 56(sp)	# restore
	lw	a1, 60(sp)	# restore
	call	utexture_2916
	lw	a0, 40(sp)	# restore
	slli	a0, a0, 2
	lda	a1, min_caml_intsec_rectside
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, 36(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 32(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	slli	a0, a1, 2
	lw	a2, 20(sp)	# restore
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a1, 60(sp)	# restore
	call	veccpy_2619
	fli	fa0, l_data_17
	lw	a0, 52(sp)	# restore
	flw	fa1, 0(a0)
	fle	a1, fa0, fa1
	bne	a1, zero, .trace_ray_else_9
	li	a1, 0
	lw	a2, 36(sp)	# restore
	slli	a3, a2, 2
	lw	a4, 16(sp)	# restore
	add	t6, a4, a3
	sw	a1, 0(t6)
	b	.trace_ray_cont_10
.trace_ray_else_9:
	li	a1, 1
	lw	a2, 36(sp)	# restore
	slli	a3, a2, 2
	lw	a4, 16(sp)	# restore
	add	t6, a4, a3
	sw	a1, 0(t6)
	slli	a1, a2, 2
	lw	a3, 12(sp)	# restore
	add	t6, a3, a1
	lw	a0, 0(t6)
	lda	a1, min_caml_texture_color
	call	veccpy_2619
	lw	a0, 36(sp)	# restore
	slli	a1, a0, 2
	lw	a2, 12(sp)	# restore
	add	t6, a2, a1
	lw	a0, 0(t6)
	fli	fa0, l_data_24
	flw	fa1, 48(sp)	# restore
	fmul	fa0, fa0, fa1
	call	vecscale_2640
	lw	a0, 36(sp)	# restore
	slli	a1, a0, 2
	lw	a2, 8(sp)	# restore
	add	t6, a2, a1
	lw	a0, 0(t6)
	lda	a1, min_caml_nvector
	call	veccpy_2619
.trace_ray_cont_10:
	fli	fa0, l_data_25
	lda	a1, min_caml_nvector
	lw	a0, 28(sp)	# restore
	sw	a1, 64(sp)	# save
	fsw	fa0, 68(sp)	# save
	call	veciprod_2625
	flw	fa1, 68(sp)	# restore
	fmul	fa0, fa1, fa0
	lw	a0, 28(sp)	# restore
	lw	a1, 64(sp)	# restore
	call	vecaccum_2633
	lw	a0, 52(sp)	# restore
	flw	fa0, 4(a0)
	flw	fa1, 24(sp)	# restore
	fmul	fa0, fa1, fa0
	li	a0, 0
	lda	a1, min_caml_or_net
	lw	a1, 0(a1)
	fsw	fa0, 72(sp)	# save
	call	shadow_check_one_or_matrix_2876
	bne	a0, zero, .trace_ray_cont_11
	lda	a1, min_caml_light
	lw	a0, 64(sp)	# restore
	sw	a1, 76(sp)	# save
	call	veciprod_2625
	fneg	fa0, fa0
	flw	fa1, 48(sp)	# restore
	fmul	fa0, fa0, fa1
	lw	a0, 28(sp)	# restore
	lw	a1, 76(sp)	# restore
	fsw	fa0, 80(sp)	# save
	call	veciprod_2625
	fneg	fa1, fa0
	flw	fa0, 80(sp)	# restore
	flw	fa2, 72(sp)	# restore
	call	add_light_2919
.trace_ray_cont_11:
	lda	a0, min_caml_startp_fast
	lw	a1, 60(sp)	# restore
	call	veccpy_2619
	lda	a0, min_caml_n_objects
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 60(sp)	# restore
	call	setup_startp_constants_2839
	lda	a0, min_caml_n_reflections
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, 48(sp)	# restore
	flw	fa1, 72(sp)	# restore
	lw	a1, 28(sp)	# restore
	call	trace_reflections_2923
	fli	fa0, l_data_26
	flw	fa1, 24(sp)	# restore
	fle	a0, fa1, fa0
	bne	a0, zero, trace_ray_ret
	lw	a0, 36(sp)	# restore
	li	t6, 4
	bge	a0, t6, .trace_ray_cont_12
	addi	a1, a0, 1
	li	a2, -1
	slli	a1, a1, 2
	lw	a3, 32(sp)	# restore
	add	t6, a3, a1
	sw	a2, 0(t6)
.trace_ray_cont_12:
	lw	a1, 44(sp)	# restore
	li	t6, 2
	bne	a1, t6, .trace_ray_cont_13
	fli	fa0, l_data_1
	lw	a1, 52(sp)	# restore
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	fmul	fa0, fa1, fa0
	addi	a0, a0, 1
	lda	a1, min_caml_tmin
	flw	fa1, 0(a1)
	flw	fa2, 4(sp)	# restore
	fadd	fa1, fa2, fa1
	lw	a1, 28(sp)	# restore
	lw	a2, 0(sp)	# restore
	call	trace_ray_2928
.trace_ray_cont_13:
trace_ray_ret:
	lw	ra, 84(sp)
	addi	sp, sp, 88
	jr	ra
trace_diffuse_ray_2934:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	fsw	fa0, 0(sp)	# save
	sw	a0, 4(sp)	# save
	call	judge_intersection_fast_2905
	bne	a0, zero, .trace_diffuse_ray_else_1
	b	trace_diffuse_ray_ret
.trace_diffuse_ray_else_1:
	lda	a0, min_caml_intersected_object_id
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lwl	a0, min_caml_objects(a0)
	lw	a1, 4(sp)	# restore
	lw	a1, 0(a1)
	lw	a2, 28(a0)
	lw	a3, 4(a0)
	sw	a2, 8(sp)	# save
	sw	a0, 12(sp)	# save
	li	t6, 1
	bne	a3, t6, .trace_diffuse_ray_else_3
	mv	a0, a1
	call	get_nvector_rect_2907
	b	.trace_diffuse_ray_cont_4
.trace_diffuse_ray_else_3:
	li	t6, 2
	bne	a3, t6, .trace_diffuse_ray_else_5
	call	get_nvector_plane_2909
	b	.trace_diffuse_ray_cont_6
.trace_diffuse_ray_else_5:
	call	get_nvector_second_2911
.trace_diffuse_ray_cont_6:
.trace_diffuse_ray_cont_4:
	lda	a1, min_caml_intersection_point
	lw	a0, 12(sp)	# restore
	call	utexture_2916
	li	a0, 0
	lda	a1, min_caml_or_net
	lw	a1, 0(a1)
	call	shadow_check_one_or_matrix_2876
	bne	a0, zero, trace_diffuse_ray_ret
	lda	a0, min_caml_nvector
	lda	a1, min_caml_light
	call	veciprod_2625
	fneg	fa0, fa0
	fle	a0, fa0, fzero
	beq	a0, zero, .trace_diffuse_ray_cont_7
	fmv	fa0, fzero
.trace_diffuse_ray_cont_7:
	lda	a0, min_caml_diffuse_ray
	flw	fa1, 0(sp)	# restore
	fmul	fa0, fa1, fa0
	lw	a1, 8(sp)	# restore
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	lda	a1, min_caml_texture_color
	call	vecaccum_2633
trace_diffuse_ray_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
iter_trace_diffuse_rays_2937:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	blt	a3, zero, iter_trace_diffuse_rays_ret
	slli	a4, a3, 2
	add	t6, a0, a4
	lw	a4, 0(t6)
	sw	a0, 0(sp)	# save
	lw	a0, 0(a4)
	sw	a2, 4(sp)	# save
	sw	a1, 8(sp)	# save
	sw	a3, 12(sp)	# save
	call	veciprod_2625
	fle	a0, fzero, fa0
	bne	a0, zero, .iter_trace_diffuse_rays_else_1
	lw	a0, 12(sp)	# restore
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a0, 0(t6)
	fli	fa1, l_data_28
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2934
	b	.iter_trace_diffuse_rays_cont_2
.iter_trace_diffuse_rays_else_1:
	lw	a0, 12(sp)	# restore
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a0, 0(t6)
	fli	fa1, l_data_27
	fdiv	fa0, fa0, fa1
	call	trace_diffuse_ray_2934
.iter_trace_diffuse_rays_cont_2:
	lw	a0, 12(sp)	# restore
	addi	a3, a0, -2
	lw	a0, 0(sp)	# restore
	lw	a1, 8(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	iter_trace_diffuse_rays_2937
iter_trace_diffuse_rays_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
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
	lda	a0, min_caml_startp_fast
	sw	a3, 12(sp)	# save
	mv	a1, a2
	call	veccpy_2619
	lda	a0, min_caml_n_objects
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 4(sp)	# restore
	call	setup_startp_constants_2839
	li	a3, 118
	lw	a0, 12(sp)	# restore
	lw	a1, 0(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	iter_trace_diffuse_rays_2937
.trace_diffuse_ray_80percent_cont_1:
	lw	a0, 8(sp)	# restore
	li	t6, 1
	beq	a0, t6, .trace_diffuse_ray_80percent_cont_2
	lda	a1, min_caml_dirvecs
	lw	a1, 4(a1)
	lda	a0, min_caml_startp_fast
	sw	a1, 16(sp)	# save
	lw	a1, 4(sp)	# restore
	call	veccpy_2619
	lda	a0, min_caml_n_objects
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 4(sp)	# restore
	call	setup_startp_constants_2839
	li	a3, 118
	lw	a0, 16(sp)	# restore
	lw	a1, 0(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	iter_trace_diffuse_rays_2937
.trace_diffuse_ray_80percent_cont_2:
	lw	a0, 8(sp)	# restore
	li	t6, 2
	beq	a0, t6, .trace_diffuse_ray_80percent_cont_3
	lda	a1, min_caml_dirvecs
	lw	a1, 8(a1)
	lda	a0, min_caml_startp_fast
	sw	a1, 20(sp)	# save
	lw	a1, 4(sp)	# restore
	call	veccpy_2619
	lda	a0, min_caml_n_objects
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 4(sp)	# restore
	call	setup_startp_constants_2839
	li	a3, 118
	lw	a0, 20(sp)	# restore
	lw	a1, 0(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	iter_trace_diffuse_rays_2937
.trace_diffuse_ray_80percent_cont_3:
	lw	a0, 8(sp)	# restore
	li	t6, 3
	beq	a0, t6, .trace_diffuse_ray_80percent_cont_4
	lda	a1, min_caml_dirvecs
	lw	a1, 12(a1)
	lda	a0, min_caml_startp_fast
	sw	a1, 24(sp)	# save
	lw	a1, 4(sp)	# restore
	call	veccpy_2619
	lda	a0, min_caml_n_objects
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 4(sp)	# restore
	call	setup_startp_constants_2839
	li	a3, 118
	lw	a0, 24(sp)	# restore
	lw	a1, 0(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	iter_trace_diffuse_rays_2937
.trace_diffuse_ray_80percent_cont_4:
	lw	a0, 8(sp)	# restore
	li	t6, 4
	bne	a0, t6, .trace_diffuse_ray_80percent_else_5
	b	trace_diffuse_ray_80percent_ret
.trace_diffuse_ray_80percent_else_5:
	lda	a0, min_caml_dirvecs
	lw	a0, 16(a0)
	sw	a0, 28(sp)	# save
	lda	a0, min_caml_startp_fast
	lw	a1, 4(sp)	# restore
	call	veccpy_2619
	lda	a0, min_caml_n_objects
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 4(sp)	# restore
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
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a2, 28(a0)
	lw	a3, 24(a0)
	lw	a4, 20(a0)
	lw	a5, 16(a0)
	lw	a0, 4(a0)
	sw	a0, 0(sp)	# save
	lda	a0, min_caml_diffuse_ray
	slli	a6, a1, 2
	sw	a1, 4(sp)	# save
	add	t6, a4, a6
	lw	a1, 0(t6)
	sw	a0, 8(sp)	# save
	sw	a5, 12(sp)	# save
	sw	a2, 16(sp)	# save
	sw	a3, 20(sp)	# save
	call	veccpy_2619
	lw	a0, 20(sp)	# restore
	lw	a0, 0(a0)
	lw	a1, 4(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 16(sp)	# restore
	add	t6, a3, a2
	lw	a2, 0(t6)
	slli	a3, a1, 2
	lw	a4, 0(sp)	# restore
	add	t6, a4, a3
	lw	a3, 0(t6)
	mv	a1, a2
	mv	a2, a3
	call	trace_diffuse_ray_80percent_2946
	lda	a0, min_caml_rgb
	lw	a1, 4(sp)	# restore
	slli	a1, a1, 2
	lw	a2, 12(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 8(sp)	# restore
	call	vecaccumv_2643
calc_diffuse_using_1point_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
calc_diffuse_using_5points_2953:
	addi	sp, sp, -36
	sw	ra, 32(sp)
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
	sw	a0, 0(sp)	# save
	lda	a0, min_caml_diffuse_ray
	slli	s1, a4, 2
	add	t6, a1, s1
	lw	a1, 0(t6)
	sw	a2, 4(sp)	# save
	sw	a3, 8(sp)	# save
	sw	a7, 12(sp)	# save
	sw	a6, 16(sp)	# save
	sw	a0, 20(sp)	# save
	sw	a5, 24(sp)	# save
	sw	a4, 28(sp)	# save
	call	veccpy_2619
	lw	a0, 28(sp)	# restore
	slli	a1, a0, 2
	lw	a2, 24(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a0, 20(sp)	# restore
	call	vecadd_2637
	lw	a0, 28(sp)	# restore
	slli	a1, a0, 2
	lw	a2, 16(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a0, 20(sp)	# restore
	call	vecadd_2637
	lw	a0, 28(sp)	# restore
	slli	a1, a0, 2
	lw	a2, 12(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a0, 20(sp)	# restore
	call	vecadd_2637
	lw	a0, 28(sp)	# restore
	slli	a1, a0, 2
	lw	a2, 8(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a0, 20(sp)	# restore
	call	vecadd_2637
	lw	a0, 0(sp)	# restore
	slli	a0, a0, 2
	lw	a1, 4(sp)	# restore
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 16(a0)
	lda	a1, min_caml_rgb
	lw	a2, 28(sp)	# restore
	slli	a2, a2, 2
	add	t6, a0, a2
	lw	a0, 0(t6)
	lw	a2, 20(sp)	# restore
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	vecaccumv_2643
calc_diffuse_using_5points_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
do_without_neighbors_2959:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	li	t6, 4
	bgt	a1, t6, do_without_neighbors_ret
	lw	a2, 12(a0)
	lw	a3, 8(a0)
	slli	a4, a1, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	blt	a3, zero, do_without_neighbors_ret
	slli	a3, a1, 2
	add	t6, a2, a3
	lw	a2, 0(t6)
	sw	a0, 0(sp)	# save
	sw	a1, 4(sp)	# save
	beq	a2, zero, .do_without_neighbors_cont_1
	call	calc_diffuse_using_1point_2950
.do_without_neighbors_cont_1:
	lw	a0, 4(sp)	# restore
	addi	a1, a0, 1
	lw	a0, 0(sp)	# restore
	call	do_without_neighbors_2959
do_without_neighbors_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
neighbors_exist_2962:
	lda	a2, min_caml_image_size
	lw	a3, 4(a2)
	addi	a4, a1, 1
	bgt	a3, a4, .neighbors_exist_else_1
	li	a0, 0
	b	neighbors_exist_ret
.neighbors_exist_else_1:
	bgt	a1, zero, .neighbors_exist_else_2
	li	a0, 0
	b	neighbors_exist_ret
.neighbors_exist_else_2:
	lw	a1, 0(a2)
	addi	a2, a0, 1
	bgt	a1, a2, .neighbors_exist_else_3
	li	a0, 0
	b	neighbors_exist_ret
.neighbors_exist_else_3:
	bgt	a0, zero, .neighbors_exist_else_4
	li	a0, 0
	b	neighbors_exist_ret
.neighbors_exist_else_4:
	li	a0, 1
neighbors_exist_ret:
	jr	ra
neighbors_are_available_2969:
	slli	a5, a0, 2
	add	t6, a2, a5
	lw	a5, 0(t6)
	lw	a5, 8(a5)
	slli	a6, a4, 2
	add	t6, a5, a6
	lw	a5, 0(t6)
	slli	a6, a0, 2
	add	t6, a1, a6
	lw	a1, 0(t6)
	lw	a1, 8(a1)
	slli	a6, a4, 2
	add	t6, a1, a6
	lw	a1, 0(t6)
	bne	a1, a5, .neighbors_are_available_else_1
	slli	a1, a0, 2
	add	t6, a3, a1
	lw	a1, 0(t6)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	t6, a1, a3
	lw	a1, 0(t6)
	bne	a1, a5, .neighbors_are_available_else_2
	addi	a1, a0, -1
	slli	a1, a1, 2
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	t6, a1, a3
	lw	a1, 0(t6)
	bne	a1, a5, .neighbors_are_available_else_3
	addi	a0, a0, 1
	slli	a0, a0, 2
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a0, 8(a0)
	slli	a1, a4, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	bne	a0, a5, .neighbors_are_available_else_4
	li	a0, 1
	b	neighbors_are_available_ret
.neighbors_are_available_else_4:
	li	a0, 0
	b	neighbors_are_available_ret
.neighbors_are_available_else_3:
	li	a0, 0
	b	neighbors_are_available_ret
.neighbors_are_available_else_2:
	li	a0, 0
	b	neighbors_are_available_ret
.neighbors_are_available_else_1:
	li	a0, 0
neighbors_are_available_ret:
	jr	ra
try_exploit_neighbors_2975:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	slli	a6, a0, 2
	add	t6, a3, a6
	lw	a6, 0(t6)
	li	t6, 4
	bgt	a5, t6, try_exploit_neighbors_ret
	lw	a7, 12(a6)
	lw	a6, 8(a6)
	slli	s1, a5, 2
	add	t6, a6, s1
	lw	a6, 0(t6)
	blt	a6, zero, try_exploit_neighbors_ret
	sw	a1, 0(sp)	# save
	sw	a4, 4(sp)	# save
	sw	a2, 8(sp)	# save
	sw	a7, 12(sp)	# save
	sw	a5, 16(sp)	# save
	sw	a3, 20(sp)	# save
	sw	a0, 24(sp)	# save
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	call	neighbors_are_available_2969
	bne	a0, zero, .try_exploit_neighbors_else_1
	lw	a0, 24(sp)	# restore
	slli	a0, a0, 2
	lw	a1, 20(sp)	# restore
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 16(sp)	# restore
	call	do_without_neighbors_2959
	b	try_exploit_neighbors_ret
.try_exploit_neighbors_else_1:
	lw	a4, 16(sp)	# restore
	slli	a0, a4, 2
	lw	a1, 12(sp)	# restore
	add	t6, a1, a0
	lw	a0, 0(t6)
	beq	a0, zero, .try_exploit_neighbors_cont_2
	lw	a0, 24(sp)	# restore
	lw	a1, 8(sp)	# restore
	lw	a2, 20(sp)	# restore
	lw	a3, 4(sp)	# restore
	call	calc_diffuse_using_5points_2953
.try_exploit_neighbors_cont_2:
	lw	a0, 16(sp)	# restore
	addi	a5, a0, 1
	lw	a0, 24(sp)	# restore
	lw	a1, 0(sp)	# restore
	lw	a2, 8(sp)	# restore
	lw	a3, 20(sp)	# restore
	lw	a4, 4(sp)	# restore
	call	try_exploit_neighbors_2975
try_exploit_neighbors_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
write_ppm_header_2982:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	li	a0, 80
	call	min_caml_print_char
	li	a0, 51
	call	min_caml_print_char
	li	a0, 10
	call	min_caml_print_char
	lda	a0, min_caml_image_size
	sw	a0, 0(sp)	# save
	lw	a0, 0(a0)
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 0(sp)	# restore
	lw	a0, 4(a0)
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	li	a0, 255
	call	min_caml_print_int
	li	a0, 10
	call	min_caml_print_char
write_ppm_header_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
write_rgb_2986:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	lda	a0, min_caml_rgb
	flw	fa0, 0(a0)
	sw	a0, 0(sp)	# save
	call	min_caml_int_of_float
	li	t6, 255
	bgt	a0, t6, .write_rgb_else_1
	bge	a0, zero, .write_rgb_cont_3
	li	a0, 0
.write_rgb_cont_3:
	b	.write_rgb_cont_2
.write_rgb_else_1:
	li	a0, 255
.write_rgb_cont_2:
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 0(sp)	# restore
	flw	fa0, 4(a0)
	call	min_caml_int_of_float
	li	t6, 255
	bgt	a0, t6, .write_rgb_else_4
	bge	a0, zero, .write_rgb_cont_6
	li	a0, 0
.write_rgb_cont_6:
	b	.write_rgb_cont_5
.write_rgb_else_4:
	li	a0, 255
.write_rgb_cont_5:
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 0(sp)	# restore
	flw	fa0, 8(a0)
	call	min_caml_int_of_float
	li	t6, 255
	bgt	a0, t6, .write_rgb_else_7
	bge	a0, zero, .write_rgb_cont_9
	li	a0, 0
.write_rgb_cont_9:
	b	.write_rgb_cont_8
.write_rgb_else_7:
	li	a0, 255
.write_rgb_cont_8:
	call	min_caml_print_int
	li	a0, 10
	call	min_caml_print_char
write_rgb_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
pretrace_diffuse_rays_2988:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	li	t6, 4
	bgt	a1, t6, pretrace_diffuse_rays_ret
	lw	a2, 28(a0)
	lw	a3, 24(a0)
	lw	a4, 20(a0)
	lw	a5, 12(a0)
	lw	a6, 8(a0)
	lw	a7, 4(a0)
	slli	s1, a1, 2
	add	t6, a6, s1
	lw	a6, 0(t6)
	blt	a6, zero, pretrace_diffuse_rays_ret
	slli	a6, a1, 2
	add	t6, a5, a6
	lw	a5, 0(t6)
	sw	a0, 0(sp)	# save
	sw	a1, 4(sp)	# save
	beq	a5, zero, .pretrace_diffuse_rays_cont_1
	lw	a3, 0(a3)
	lda	a5, min_caml_diffuse_ray
	fsw	fzero, 0(a5)
	fsw	fzero, 4(a5)
	fsw	fzero, 8(a5)
	slli	a3, a3, 2
	lwl	a3, min_caml_dirvecs(a3)
	slli	a6, a1, 2
	add	t6, a2, a6
	lw	a2, 0(t6)
	slli	a6, a1, 2
	add	t6, a7, a6
	lw	a1, 0(t6)
	lda	a0, min_caml_startp_fast
	sw	a5, 8(sp)	# save
	sw	a4, 12(sp)	# save
	sw	a2, 16(sp)	# save
	sw	a3, 20(sp)	# save
	sw	a1, 24(sp)	# save
	call	veccpy_2619
	lda	a0, min_caml_n_objects
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 24(sp)	# restore
	call	setup_startp_constants_2839
	li	a3, 118
	lw	a0, 20(sp)	# restore
	lw	a1, 16(sp)	# restore
	lw	a2, 24(sp)	# restore
	call	iter_trace_diffuse_rays_2937
	lw	a0, 4(sp)	# restore
	slli	a1, a0, 2
	lw	a2, 12(sp)	# restore
	add	t6, a2, a1
	lw	a0, 0(t6)
	lw	a1, 8(sp)	# restore
	call	veccpy_2619
.pretrace_diffuse_rays_cont_1:
	lw	a0, 4(sp)	# restore
	addi	a1, a0, 1
	lw	a0, 0(sp)	# restore
	call	pretrace_diffuse_rays_2988
pretrace_diffuse_rays_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
pretrace_pixels_2991:
	addi	sp, sp, -40
	sw	ra, 36(sp)
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
	lda	a0, min_caml_ptrace_dirvec
	lda	a3, min_caml_screenx_dir
	flw	fa3, 0(a3)
	fmul	fa3, fa0, fa3
	flw	fa4, 4(sp)	# restore
	fadd	fa3, fa3, fa4
	fsw	fa3, 0(a0)
	flw	fa3, 4(a3)
	fmul	fa3, fa0, fa3
	fadd	fa3, fa3, fa1
	fsw	fa3, 4(a0)
	flw	fa3, 8(a3)
	fmul	fa0, fa0, fa3
	fadd	fa0, fa0, fa2
	fsw	fa0, 8(a0)
	sw	a1, 8(sp)	# save
	li	a1, 0
	fsw	fa2, 12(sp)	# save
	fsw	fa1, 16(sp)	# save
	sw	a2, 20(sp)	# save
	sw	a0, 24(sp)	# save
	call	vecunit_sgn_2622
	lda	a0, min_caml_rgb
	fmv	fa0, fzero
	fsw	fzero, 0(a0)
	fsw	fzero, 4(a0)
	fsw	fzero, 8(a0)
	sw	a0, 28(sp)	# save
	lda	a0, min_caml_startp
	lda	a1, min_caml_viewpoint
	fsw	fa0, 32(sp)	# save
	call	veccpy_2619
	li	a0, 0
	fli	fa0, l_data_1
	lw	a1, 8(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 0(sp)	# restore
	add	t6, a3, a2
	lw	a2, 0(t6)
	flw	fa1, 32(sp)	# restore
	lw	a1, 24(sp)	# restore
	call	trace_ray_2928
	lw	a0, 8(sp)	# restore
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a0, 0(a1)
	lw	a1, 28(sp)	# restore
	call	veccpy_2619
	lw	a0, 8(sp)	# restore
	slli	a1, a0, 2
	lw	a2, 0(sp)	# restore
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 24(a1)
	lw	a3, 20(sp)	# restore
	sw	a3, 0(a1)
	slli	a1, a0, 2
	add	t6, a2, a1
	lw	a0, 0(t6)
	li	a1, 0
	call	pretrace_diffuse_rays_2988
	lw	a0, 8(sp)	# restore
	addi	a1, a0, -1
	lw	a0, 20(sp)	# restore
	addi	a0, a0, 1
	li	t6, 5
	blt	a0, t6, .pretrace_pixels_else_1
	addi	a2, a0, -5
	b	.pretrace_pixels_cont_2
.pretrace_pixels_else_1:
	mv	a2, a0
.pretrace_pixels_cont_2:
	flw	fa0, 4(sp)	# restore
	flw	fa1, 16(sp)	# restore
	flw	fa2, 12(sp)	# restore
	lw	a0, 0(sp)	# restore
	call	pretrace_pixels_2991
pretrace_pixels_ret:
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
pretrace_line_2998:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	lda	a3, min_caml_scan_pitch
	flw	fa0, 0(a3)
	lda	a3, min_caml_image_center
	lw	a3, 4(a3)
	sw	a0, 0(sp)	# save
	sub	a0, a1, a3
	fsw	fa0, 4(sp)	# save
	call	min_caml_float_of_int
	flw	fa1, 4(sp)	# restore
	fmul	fa0, fa1, fa0
	lda	a0, min_caml_screeny_dir
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	lda	a1, min_caml_screenz_dir
	flw	fa2, 0(a1)
	fadd	fa1, fa1, fa2
	flw	fa2, 4(a0)
	fmul	fa2, fa0, fa2
	flw	fa3, 4(a1)
	fadd	fa2, fa2, fa3
	flw	fa3, 8(a0)
	fmul	fa0, fa0, fa3
	flw	fa3, 8(a1)
	fadd	fa0, fa0, fa3
	lda	a0, min_caml_image_size
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 0(sp)	# restore
	fmv	ft8, fa2
	fmv	fa2, fa0
	fmv	fa0, fa1
	fmv	fa1, ft8
	call	pretrace_pixels_2991
pretrace_line_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
scan_pixel_3002:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	lda	a5, min_caml_image_size
	lw	a5, 0(a5)
	bgt	a5, a0, .scan_pixel_else_1
	b	scan_pixel_ret
.scan_pixel_else_1:
	lda	a5, min_caml_rgb
	slli	a6, a0, 2
	add	t6, a3, a6
	lw	a6, 0(t6)
	sw	a1, 0(sp)	# save
	lw	a1, 0(a6)
	sw	a2, 4(sp)	# save
	sw	a3, 8(sp)	# save
	sw	a4, 12(sp)	# save
	sw	a0, 16(sp)	# save
	mv	a0, a5
	call	veccpy_2619
	lw	a0, 16(sp)	# restore
	lw	a1, 0(sp)	# restore
	lw	a2, 12(sp)	# restore
	call	neighbors_exist_2962
	bne	a0, zero, .scan_pixel_else_3
	lw	a0, 16(sp)	# restore
	slli	a1, a0, 2
	lw	a2, 8(sp)	# restore
	add	t6, a2, a1
	lw	a0, 0(t6)
	li	a1, 0
	call	do_without_neighbors_2959
	b	.scan_pixel_cont_4
.scan_pixel_else_3:
	li	a5, 0
	lw	a0, 16(sp)	# restore
	lw	a1, 0(sp)	# restore
	lw	a2, 4(sp)	# restore
	lw	a3, 8(sp)	# restore
	lw	a4, 12(sp)	# restore
	call	try_exploit_neighbors_2975
.scan_pixel_cont_4:
	call	write_rgb_2986
	lw	a0, 16(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 0(sp)	# restore
	lw	a2, 4(sp)	# restore
	lw	a3, 8(sp)	# restore
	lw	a4, 12(sp)	# restore
	call	scan_pixel_3002
scan_pixel_ret:
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
scan_line_3008:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	lda	a5, min_caml_image_size
	lw	a6, 4(a5)
	bgt	a6, a0, .scan_line_else_1
	b	scan_line_ret
.scan_line_else_1:
	lw	a5, 4(a5)
	addi	a5, a5, -1
	sw	a4, 0(sp)	# save
	sw	a3, 4(sp)	# save
	sw	a2, 8(sp)	# save
	sw	a1, 12(sp)	# save
	sw	a0, 16(sp)	# save
	ble	a5, a0, .scan_line_cont_3
	addi	a1, a0, 1
	mv	a2, a4
	mv	a0, a3
	call	pretrace_line_2998
.scan_line_cont_3:
	li	a0, 0
	lw	a1, 16(sp)	# restore
	lw	a2, 12(sp)	# restore
	lw	a3, 8(sp)	# restore
	lw	a4, 4(sp)	# restore
	call	scan_pixel_3002
	lw	a0, 16(sp)	# restore
	addi	a0, a0, 1
	lw	a1, 0(sp)	# restore
	addi	a1, a1, 2
	li	t6, 5
	blt	a1, t6, .scan_line_else_4
	addi	a4, a1, -5
	b	.scan_line_cont_5
.scan_line_else_4:
	mv	a4, a1
.scan_line_cont_5:
	lw	a1, 8(sp)	# restore
	lw	a2, 4(sp)	# restore
	lw	a3, 12(sp)	# restore
	call	scan_line_3008
scan_line_ret:
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
create_float5x3array_3014:
	fmv	fa0, fzero
	fsw	fa0, 0(gp)
	fsw	fa0, 4(gp)
	fsw	fa0, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	sw	a0, 0(gp)
	sw	a0, 4(gp)
	sw	a0, 8(gp)
	sw	a0, 12(gp)
	sw	a0, 16(gp)
	mv	a0, gp
	addi	gp, gp, 20
	fsw	fa0, 0(gp)
	fsw	fa0, 4(gp)
	fsw	fa0, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a1, 4(a0)
	fsw	fa0, 0(gp)
	fsw	fa0, 4(gp)
	fsw	fa0, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a1, 8(a0)
	fsw	fa0, 0(gp)
	fsw	fa0, 4(gp)
	fsw	fa0, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a1, 12(a0)
	fsw	fa0, 0(gp)
	fsw	fa0, 4(gp)
	fsw	fa0, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a1, 16(a0)
create_float5x3array_ret:
	jr	ra
create_pixel_3016:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	fmv	fa0, fzero
	fsw	fa0, 0(gp)
	fsw	fa0, 4(gp)
	fsw	fa0, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	sw	a0, 0(sp)	# save
	call	create_float5x3array_3014
	li	a1, 0
	sw	a1, 0(gp)
	sw	a1, 4(gp)
	sw	a1, 8(gp)
	sw	a1, 12(gp)
	sw	a1, 16(gp)
	mv	a1, gp
	addi	gp, gp, 20
	li	a2, 0
	sw	a2, 0(gp)
	sw	a2, 4(gp)
	sw	a2, 8(gp)
	sw	a2, 12(gp)
	sw	a2, 16(gp)
	mv	a2, gp
	addi	gp, gp, 20
	sw	a0, 4(sp)	# save
	sw	a1, 8(sp)	# save
	sw	a2, 12(sp)	# save
	call	create_float5x3array_3014
	sw	a0, 16(sp)	# save
	call	create_float5x3array_3014
	li	a1, 0
	sw	a1, 0(gp)
	mv	a1, gp
	addi	gp, gp, 4
	sw	a0, 20(sp)	# save
	sw	a1, 24(sp)	# save
	call	create_float5x3array_3014
	mv	a1, gp
	addi	gp, gp, 32
	sw	a0, 28(a1)
	lw	a0, 24(sp)	# restore
	sw	a0, 24(a1)
	lw	a0, 20(sp)	# restore
	sw	a0, 20(a1)
	lw	a0, 16(sp)	# restore
	sw	a0, 16(a1)
	lw	a0, 12(sp)	# restore
	sw	a0, 12(a1)
	lw	a0, 8(sp)	# restore
	sw	a0, 8(a1)
	lw	a0, 4(sp)	# restore
	sw	a0, 4(a1)
	lw	a0, 0(sp)	# restore
	sw	a0, 0(a1)
	mv	a0, a1
create_pixel_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
init_line_elements_3018:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	blt	a1, zero, .init_line_elements_else_1
	sw	a0, 0(sp)	# save
	sw	a1, 4(sp)	# save
	call	create_pixel_3016
	lw	a1, 4(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 0(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, .init_line_elements_else_2
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
	b	init_line_elements_ret
.init_line_elements_else_2:
	mv	a0, a3
	b	init_line_elements_ret
.init_line_elements_else_1:
init_line_elements_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
create_pixelline_3021:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lda	a0, min_caml_image_size
	lw	a1, 0(a0)
	sw	a0, 0(sp)	# save
	sw	a1, 4(sp)	# save
	call	create_pixel_3016
	mv	a1, a0
	lw	a0, 4(sp)	# restore
	call	min_caml_create_array
	lw	a1, 0(sp)	# restore
	lw	a1, 0(a1)
	addi	a1, a1, -2
	blt	a1, zero, .create_pixelline_else_1
	sw	a0, 8(sp)	# save
	sw	a1, 12(sp)	# save
	call	create_pixel_3016
	lw	a1, 12(sp)	# restore
	slli	a2, a1, 2
	lw	a3, 8(sp)	# restore
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	init_line_elements_3018
	b	create_pixelline_ret
.create_pixelline_else_1:
create_pixelline_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
adjust_position_3025:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	fmul	fa0, fa0, fa0
	fli	fa2, l_data_26
	fadd	fa0, fa0, fa2
	fsqrt	fa0, fa0
	fli	fa2, l_data_1
	fsw	fa0, 0(sp)	# save
	fdiv	fa0, fa2, fa0
	call	min_caml_atan
	fmul	fa0, fa0, fa1
	fsw	fa0, 4(sp)	# save
	call	min_caml_sin
	fsw	fa0, 8(sp)	# save
	flw	fa0, 4(sp)	# restore
	call	min_caml_cos
	flw	fa1, 8(sp)	# restore
	fdiv	fa0, fa1, fa0
	flw	fa1, 0(sp)	# restore
	fmul	fa0, fa0, fa1
adjust_position_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
calc_dirvec_3028:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	li	t6, 5
	blt	a0, t6, .calc_dirvec_else_1
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	fli	fa3, l_data_1
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
	b	calc_dirvec_ret
.calc_dirvec_else_1:
	fsw	fa2, 0(sp)	# save
	sw	a2, 4(sp)	# save
	sw	a1, 8(sp)	# save
	fsw	fa3, 12(sp)	# save
	sw	a0, 16(sp)	# save
	fmv	fa0, fa1
	fmv	fa1, fa2
	call	adjust_position_3025
	lw	a0, 16(sp)	# restore
	addi	a0, a0, 1
	flw	fa1, 12(sp)	# restore
	fsw	fa0, 20(sp)	# save
	sw	a0, 24(sp)	# save
	call	adjust_position_3025
	fmv	fa1, fa0
	flw	fa0, 20(sp)	# restore
	flw	fa2, 0(sp)	# restore
	flw	fa3, 12(sp)	# restore
	lw	a0, 24(sp)	# restore
	lw	a1, 8(sp)	# restore
	lw	a2, 4(sp)	# restore
	call	calc_dirvec_3028
calc_dirvec_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
calc_dirvecs_3036:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	blt	a0, zero, calc_dirvecs_ret
	fsw	fa0, 0(sp)	# save
	sw	a0, 4(sp)	# save
	call	min_caml_float_of_int
	fli	fa1, l_data_29
	fmul	fa0, fa0, fa1
	fli	fa2, l_data_30
	fsub	fa2, fa0, fa2
	li	a0, 0
	fmv	fa0, fzero
	flw	fa3, 0(sp)	# restore
	fsw	fa0, 8(sp)	# save
	sw	a1, 12(sp)	# save
	sw	a2, 16(sp)	# save
	fsw	fa1, 20(sp)	# save
	fmv	fa1, fa0
	call	calc_dirvec_3028
	lw	a0, 4(sp)	# restore
	call	min_caml_float_of_int
	flw	fa1, 20(sp)	# restore
	fmul	fa0, fa0, fa1
	fli	fa1, l_data_26
	fadd	fa2, fa0, fa1
	li	a0, 0
	lw	a1, 16(sp)	# restore
	addi	a2, a1, 2
	flw	fa0, 8(sp)	# restore
	flw	fa3, 0(sp)	# restore
	lw	a1, 12(sp)	# restore
	fmv	fa1, fa0
	call	calc_dirvec_3028
	lw	a0, 4(sp)	# restore
	addi	a0, a0, -1
	lw	a1, 12(sp)	# restore
	addi	a1, a1, 1
	li	t6, 5
	blt	a1, t6, .calc_dirvecs_cont_1
	addi	a1, a1, -5
.calc_dirvecs_cont_1:
	flw	fa0, 0(sp)	# restore
	lw	a2, 16(sp)	# restore
	call	calc_dirvecs_3036
calc_dirvecs_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
calc_dirvec_rows_3041:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	blt	a0, zero, calc_dirvec_rows_ret
	sw	a0, 0(sp)	# save
	call	min_caml_float_of_int
	fli	fa1, l_data_29
	fmul	fa0, fa0, fa1
	fli	fa1, l_data_30
	fsub	fa0, fa0, fa1
	li	a0, 4
	sw	a2, 4(sp)	# save
	sw	a1, 8(sp)	# save
	call	calc_dirvecs_3036
	lw	a0, 0(sp)	# restore
	addi	a0, a0, -1
	lw	a1, 8(sp)	# restore
	addi	a1, a1, 2
	li	t6, 5
	blt	a1, t6, .calc_dirvec_rows_cont_1
	addi	a1, a1, -5
.calc_dirvec_rows_cont_1:
	lw	a2, 4(sp)	# restore
	addi	a2, a2, 4
	call	calc_dirvec_rows_3041
calc_dirvec_rows_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
create_dirvec_elements_3047:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	blt	a1, zero, create_dirvec_elements_ret
	fmv	fa0, fzero
	fsw	fa0, 0(gp)
	fsw	fa0, 4(gp)
	fsw	fa0, 8(gp)
	mv	a2, gp
	addi	gp, gp, 12
	sw	a1, 0(sp)	# save
	mv	a1, a2
	lda	a2, min_caml_n_objects
	sw	a0, 4(sp)	# save
	lw	a0, 0(a2)
	call	min_caml_create_array
	mv	a3, gp
	addi	gp, gp, 8
	sw	a0, 4(a3)
	sw	a1, 0(a3)
	mv	a0, a3
	lw	a1, 0(sp)	# restore
	slli	a3, a1, 2
	lw	a4, 4(sp)	# restore
	add	t6, a4, a3
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, create_dirvec_elements_ret
	fsw	fa0, 0(gp)
	fsw	fa0, 4(gp)
	fsw	fa0, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	sw	a0, 8(sp)	# save
	lw	a0, 0(a2)
	call	min_caml_create_array
	mv	a2, gp
	addi	gp, gp, 8
	sw	a0, 4(a2)
	sw	a1, 0(a2)
	mv	a0, a2
	lw	a1, 8(sp)	# restore
	slli	a2, a1, 2
	add	t6, a4, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a4
	call	create_dirvec_elements_3047
create_dirvec_elements_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
create_dirvecs_3050:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	blt	a0, zero, create_dirvecs_ret
	fmv	fa0, fzero
	fsw	fa0, 0(gp)
	fsw	fa0, 4(gp)
	fsw	fa0, 8(gp)
	mv	a1, gp
	addi	gp, gp, 12
	lda	a2, min_caml_n_objects
	sw	a0, 0(sp)	# save
	lw	a0, 0(a2)
	call	min_caml_create_array
	mv	a3, gp
	addi	gp, gp, 8
	sw	a0, 4(a3)
	sw	a1, 0(a3)
	mv	a0, a3
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
	fsw	fa0, 0(gp)
	fsw	fa0, 4(gp)
	fsw	fa0, 8(gp)
	mv	a3, gp
	addi	gp, gp, 12
	mv	a1, a3
	sw	a0, 4(sp)	# save
	lw	a0, 0(a2)
	call	min_caml_create_array
	mv	a2, gp
	addi	gp, gp, 8
	sw	a0, 4(a2)
	sw	a1, 0(a2)
	mv	a0, a2
	lw	a1, 4(sp)	# restore
	sw	a0, 472(a1)
	li	a0, 117
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	create_dirvec_elements_3047
	lw	a0, 0(sp)	# restore
	addi	a0, a0, -1
	call	create_dirvecs_3050
create_dirvecs_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
init_dirvec_constants_3052:
	addi	sp, sp, -20
	sw	ra, 16(sp)
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
	lw	a1, 0(a1)
	addi	a1, a1, -1
	call	iter_setup_dirvec_constants_2834
	lw	a0, 12(sp)	# restore
	addi	a1, a0, -1
	lw	a0, 0(sp)	# restore
	call	init_dirvec_constants_3052
init_dirvec_constants_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
init_vecset_constants_3055:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	blt	a0, zero, init_vecset_constants_ret
	slli	a1, a0, 2
	lwl	a1, min_caml_dirvecs(a1)
	sw	a0, 0(sp)	# save
	lw	a0, 476(a1)
	lda	a2, min_caml_n_objects
	lw	a2, 0(a2)
	sw	a1, 4(sp)	# save
	addi	a1, a2, -1
	call	iter_setup_dirvec_constants_2834
	li	a1, 118
	lw	a0, 4(sp)	# restore
	call	init_dirvec_constants_3052
	lw	a0, 0(sp)	# restore
	addi	a0, a0, -1
	call	init_vecset_constants_3055
init_vecset_constants_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
setup_rect_reflection_3066:
	addi	sp, sp, -76
	sw	ra, 72(sp)
	slli	a0, a0, 2
	lda	a2, min_caml_n_reflections
	lw	a3, 0(a2)
	fli	fa0, l_data_1
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
	fmv	fa5, fzero
	fsw	fa5, 0(gp)
	fsw	fa5, 4(gp)
	fsw	fa5, 8(gp)
	mv	a5, gp
	addi	gp, gp, 12
	sw	a1, 0(sp)	# save
	mv	a1, a5
	lda	a5, min_caml_n_objects
	sw	a0, 4(sp)	# save
	lw	a0, 0(a5)
	call	min_caml_create_array
	mv	a6, gp
	addi	gp, gp, 8
	sw	a0, 4(a6)
	sw	a1, 0(a6)
	mv	a0, a6
	fsw	fa4, 0(a1)
	fsw	fa2, 4(a1)
	fsw	fa3, 8(a1)
	lw	a1, 0(a5)
	addi	a1, a1, -1
	sw	a2, 8(sp)	# save
	fsw	fa2, 12(sp)	# save
	fsw	fa3, 16(sp)	# save
	fsw	fa1, 20(sp)	# save
	sw	a5, 24(sp)	# save
	fsw	fa5, 28(sp)	# save
	sw	a3, 32(sp)	# save
	sw	a4, 36(sp)	# save
	sw	a0, 40(sp)	# save
	fsw	fa0, 44(sp)	# save
	call	iter_setup_dirvec_constants_2834
	mv	a0, gp
	addi	gp, gp, 12
	flw	fa0, 44(sp)	# restore
	fsw	fa0, 8(a0)
	lw	a1, 40(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 36(sp)	# restore
	sw	a1, 0(a0)
	lw	a1, 32(sp)	# restore
	slli	a2, a1, 2
	swl	a0, min_caml_reflections(a2)
	addi	a0, a1, 1
	lw	a2, 4(sp)	# restore
	addi	a3, a2, 2
	lw	a4, 0(sp)	# restore
	flw	fa1, 4(a4)
	flw	fa2, 28(sp)	# restore
	fsw	fa2, 0(gp)
	fsw	fa2, 4(gp)
	fsw	fa2, 8(gp)
	mv	a5, gp
	addi	gp, gp, 12
	mv	a1, a5
	sw	a0, 48(sp)	# save
	lw	a5, 24(sp)	# restore
	lw	a0, 0(a5)
	call	min_caml_create_array
	mv	a6, gp
	addi	gp, gp, 8
	sw	a0, 4(a6)
	sw	a1, 0(a6)
	mv	a0, a6
	flw	fa3, 20(sp)	# restore
	fsw	fa3, 0(a1)
	fsw	fa1, 4(a1)
	flw	fa1, 16(sp)	# restore
	fsw	fa1, 8(a1)
	lw	a1, 0(a5)
	addi	a1, a1, -1
	sw	a3, 52(sp)	# save
	sw	a0, 56(sp)	# save
	call	iter_setup_dirvec_constants_2834
	mv	a0, gp
	addi	gp, gp, 12
	flw	fa0, 44(sp)	# restore
	fsw	fa0, 8(a0)
	lw	a1, 56(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 52(sp)	# restore
	sw	a1, 0(a0)
	lw	a1, 48(sp)	# restore
	slli	a1, a1, 2
	swl	a0, min_caml_reflections(a1)
	lw	a0, 32(sp)	# restore
	addi	a1, a0, 2
	lw	a2, 4(sp)	# restore
	addi	a2, a2, 3
	lw	a3, 0(sp)	# restore
	flw	fa1, 8(a3)
	flw	fa2, 28(sp)	# restore
	fsw	fa2, 0(gp)
	fsw	fa2, 4(gp)
	fsw	fa2, 8(gp)
	mv	a3, gp
	addi	gp, gp, 12
	sw	a1, 60(sp)	# save
	mv	a1, a3
	lw	a3, 24(sp)	# restore
	lw	a0, 0(a3)
	call	min_caml_create_array
	mv	a4, gp
	addi	gp, gp, 8
	sw	a0, 4(a4)
	sw	a1, 0(a4)
	mv	a0, a4
	flw	fa2, 20(sp)	# restore
	fsw	fa2, 0(a1)
	flw	fa2, 12(sp)	# restore
	fsw	fa2, 4(a1)
	fsw	fa1, 8(a1)
	lw	a1, 0(a3)
	addi	a1, a1, -1
	sw	a2, 64(sp)	# save
	sw	a0, 68(sp)	# save
	call	iter_setup_dirvec_constants_2834
	mv	a0, gp
	addi	gp, gp, 12
	flw	fa0, 44(sp)	# restore
	fsw	fa0, 8(a0)
	lw	a1, 68(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 64(sp)	# restore
	sw	a1, 0(a0)
	lw	a1, 60(sp)	# restore
	slli	a1, a1, 2
	swl	a0, min_caml_reflections(a1)
	lw	a0, 32(sp)	# restore
	addi	a0, a0, 3
	lw	a1, 8(sp)	# restore
	sw	a0, 0(a1)
setup_rect_reflection_ret:
	lw	ra, 72(sp)
	addi	sp, sp, 76
	jr	ra
setup_surface_reflection_3069:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	slli	a0, a0, 2
	addi	a0, a0, 1
	lda	a2, min_caml_n_reflections
	lw	a3, 0(a2)
	fli	fa0, l_data_1
	lw	a4, 28(a1)
	lw	a1, 16(a1)
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	sw	a0, 0(sp)	# save
	lda	a0, min_caml_light
	sw	a2, 4(sp)	# save
	sw	a3, 8(sp)	# save
	fsw	fa0, 12(sp)	# save
	sw	a0, 16(sp)	# save
	sw	a1, 20(sp)	# save
	call	veciprod_2625
	fli	fa1, l_data_6
	lw	a0, 20(sp)	# restore
	flw	fa2, 0(a0)
	fmul	fa2, fa1, fa2
	fmul	fa2, fa2, fa0
	lw	a1, 16(sp)	# restore
	flw	fa3, 0(a1)
	fsub	fa2, fa2, fa3
	flw	fa3, 4(a0)
	fmul	fa3, fa1, fa3
	fmul	fa3, fa3, fa0
	flw	fa4, 4(a1)
	fsub	fa3, fa3, fa4
	flw	fa4, 8(a0)
	fmul	fa1, fa1, fa4
	fmul	fa0, fa1, fa0
	flw	fa1, 8(a1)
	fsub	fa0, fa0, fa1
	fmv	fa1, fzero
	fsw	fa1, 0(gp)
	fsw	fa1, 4(gp)
	fsw	fa1, 8(gp)
	mv	a0, gp
	addi	gp, gp, 12
	mv	a1, a0
	lda	a0, min_caml_n_objects
	sw	a0, 24(sp)	# save
	lw	a0, 0(a0)
	call	min_caml_create_array
	mv	a2, gp
	addi	gp, gp, 8
	sw	a0, 4(a2)
	sw	a1, 0(a2)
	mv	a0, a2
	fsw	fa2, 0(a1)
	fsw	fa3, 4(a1)
	fsw	fa0, 8(a1)
	lw	a1, 24(sp)	# restore
	lw	a1, 0(a1)
	addi	a1, a1, -1
	sw	a0, 28(sp)	# save
	call	iter_setup_dirvec_constants_2834
	mv	a0, gp
	addi	gp, gp, 12
	flw	fa0, 12(sp)	# restore
	fsw	fa0, 8(a0)
	lw	a1, 28(sp)	# restore
	sw	a1, 4(a0)
	lw	a1, 0(sp)	# restore
	sw	a1, 0(a0)
	lw	a1, 8(sp)	# restore
	slli	a2, a1, 2
	swl	a0, min_caml_reflections(a2)
	addi	a0, a1, 1
	lw	a1, 4(sp)	# restore
	sw	a0, 0(a1)
setup_surface_reflection_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
setup_reflections_3072:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	blt	a0, zero, setup_reflections_ret
	slli	a1, a0, 2
	lwl	a1, min_caml_objects(a1)
	lw	a2, 28(a1)
	lw	a3, 8(a1)
	lw	a4, 4(a1)
	li	t6, 2
	bne	a3, t6, setup_reflections_ret
	fli	fa0, l_data_1
	flw	fa1, 0(a2)
	fle	a2, fa0, fa1
	bne	a2, zero, setup_reflections_ret
	li	t6, 1
	bne	a4, t6, .setup_reflections_else_1
	call	setup_rect_reflection_3066
	b	setup_reflections_ret
.setup_reflections_else_1:
	li	t6, 2
	bne	a4, t6, setup_reflections_ret
	call	setup_surface_reflection_3069
setup_reflections_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
rt_3074:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lda	a2, min_caml_image_size
	sw	a0, 0(a2)
	sw	a1, 4(a2)
	lda	a2, min_caml_image_center
	srai	a3, a0, 1
	sw	a3, 0(a2)
	srai	a1, a1, 1
	sw	a1, 4(a2)
	lda	a1, min_caml_scan_pitch
	fli	fa0, l_data_31
	fsw	fa0, 0(sp)	# save
	call	min_caml_float_of_int
	flw	fa1, 0(sp)	# restore
	fdiv	fa0, fa1, fa0
	fsw	fa0, 0(a1)
	call	create_pixelline_3021
	sw	a0, 4(sp)	# save
	call	create_pixelline_3021
	sw	a0, 8(sp)	# save
	call	create_pixelline_3021
	sw	a0, 12(sp)	# save
	call	read_parameter_2739
	call	write_ppm_header_2982
	li	a0, 4
	call	create_dirvecs_3050
	li	a0, 9
	li	a1, 0
	li	a2, 0
	call	calc_dirvec_rows_3041
	li	a0, 4
	call	init_vecset_constants_3055
	lda	a0, min_caml_light_dirvec
	sw	a0, 16(sp)	# save
	lw	a0, 0(a0)
	lda	a1, min_caml_light
	call	veccpy_2619
	lda	a0, min_caml_n_objects
	lw	a1, 0(a0)
	addi	a1, a1, -1
	sw	a0, 20(sp)	# save
	lw	a0, 16(sp)	# restore
	call	iter_setup_dirvec_constants_2834
	lw	a0, 20(sp)	# restore
	lw	a0, 0(a0)
	addi	a0, a0, -1
	call	setup_reflections_3072
	li	a1, 0
	li	a2, 0
	lw	a0, 8(sp)	# restore
	call	pretrace_line_2998
	li	a0, 0
	li	a4, 2
	lw	a1, 4(sp)	# restore
	lw	a2, 8(sp)	# restore
	lw	a3, 12(sp)	# restore
	call	scan_line_3008
rt_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
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
l_data_23:	# 20.000000
	.word	1101004800
l_data_22:	# 0.050000
	.word	1028443341
l_data_21:	# 0.250000
	.word	1048576000
l_data_20:	# 10.000000
	.word	1092616192
l_data_19:	# 0.300000
	.word	1050253722
l_data_18:	# 255.000000
	.word	1132396544
l_data_17:	# 0.500000
	.word	1056964608
l_data_16:	# 0.150000
	.word	1041865114
l_data_15:	# 15.000000
	.word	1097859072
l_data_14:	# 3.141593
	.word	1078530011
l_data_13:	# 30.000000
	.word	1106247680
l_data_12:	# 0.000100
	.word	953267991
l_data_11:	# 100000000.000000
	.word	1287568416
l_data_10:	# 1000000000.000000
	.word	1315859240
l_data_9:	# -0.100000
	.word	-1110651699
l_data_8:	# 0.010000
	.word	1008981770
l_data_7:	# -0.200000
	.word	-1102263091
l_data_6:	# 2.000000
	.word	1073741824
l_data_5:	# -200.000000
	.word	-1018691584
l_data_4:	# 200.000000
	.word	1128792064
l_data_3:	# 0.017453
	.word	1016003125
l_data_2:	# -1.000000
	.word	-1082130432
l_data_1:	# 1.000000
	.word	1065353216
