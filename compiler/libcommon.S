	.text
## ft9, ft10はlibで自由に使ってよい

min_caml_print_newline:
	sw	t1, -4(sp)
	li	t1, 13
	w	t1
	li	t1, 10
	w	t1
	lw	t1, -4(sp)
	jr	ra

min_caml_print_int:
	addi	sp, sp, -8
	sw	a1, 4(sp)
	sw	s1, 0(sp)
# 負数なら'-'を出力し、絶対値を取る
	bge	a0, zero, .print_int_L0
	li	t6, 45
	w	t6		# '-'
	neg	a0, a0
############# 何桁あるか調べる
.print_int_L0:
	li	s1, 100
	bge	a0, s1, .print_int_L4
# a0 < 10 ** 2
	li	s1, 10
	bge	a0, s1, .print_int_body
	li	s1, 1
	b	.print_int_body
.print_int_L4:
# a0 >= 10 ** 2
	li	s1, 1000
	bge	a0, s1, .print_int_L5
	li	s1, 100
	b	.print_int_body
.print_int_L5:
# a0 >= 1000
	lwd	s1, LI_100000(0)
	bge	a0, s1, .print_int_L1
# 1000 <= a0 < 10 ** 5
	lwd	s1, LI_10000(0)
	bge	a0, s1, .print_int_body
# 10 ** 3 <= a0 < 10 ** 4
	li	s1, 1000
	b	.print_int_body
###
.print_int_L2:
# 10 ** 3 <= a0 < 10 ** 5
	lwd	s1, LI_10000(0)
	bge	a0, s1, .print_int_body
	li	s1, 1000
	b	.print_int_body
.print_int_L1:
# a0 >= 10 ** 5
	lwd	s1, LI_100000000(0)
	bge	a0, s1, .print_int_L3
# 10 ** 5 <= a0 < 10 ** 8
	lwd	s1, LI_10000000(0)
	bge	a0, s1, .print_int_body
	lwd	s1, LI_1000000(0)
	bge	a0, s1, .print_int_body
	lwd	s1, LI_100000(0)
	b	.print_int_body
.print_int_L3:
# a0 >= 10 ** 8
	lwd	s1, LI_1000000000(0)
	bge	a0, s1, .print_int_body
# 10 ** 8 <= a0 < 10 ** 9
	lwd	s1, LI_100000000(0)
	b	.print_int_body
###############
.print_int_body:
	mv	a1, s1
## div_rem
# a0 <- a0 / a1, a1 <- a0 mod a1 (引数a0, a1は共に正)
	li	t6, 0			# t6が商
.print_int_div_L0:
	blt	a0, a1, .print_int_div_end
	sub	a0, a0, a1
	addi	t6, t6, 1
	b	.print_int_div_L0
.print_int_div_end:
	mv	a1, a0
	mv	a0, t6
## -- div_rem
	addi	a0, a0, 48
	w	a0
	li	t6, 1
	beq	t6, s1, .print_int_end
	mv	a0, a1
## print_int_div_10
.print_int_div_10:	# s1 <- s1 / 10
	li	t6, 10
	bne	s1, t6, .print_int_div_10_L0
	li	s1, 1
	b	.print_int_body
.print_int_div_10_L0:
	li	t6, 100
	bne	s1, t6, .print_int_div_10_L1
	li	s1, 10
	b	.print_int_body
.print_int_div_10_L1:
	li	t6, 1000
	bne	s1, t6, .print_int_div_10_L2
	li	s1, 100
	b	.print_int_body
.print_int_div_10_L2:
	lwd	t6, LI_10000(0)
	bne	s1, t6, .print_int_div_10_L3
	li	s1, 1000
	b	.print_int_body
.print_int_div_10_L3:
	lwd	t6, LI_100000(0)
	bne	s1, t6, .print_int_div_10_L4
	lwd	s1, LI_10000(0)
	b	.print_int_body
.print_int_div_10_L4:
	lwd	t6, LI_1000000(0)
	bne	s1, t6, .print_int_div_10_L5
	lwd	s1, LI_100000(0)
	b	.print_int_body
.print_int_div_10_L5:
	lwd	t6, LI_10000000(0)
	bne	s1, t6, .print_int_div_10_L6
	lwd	s1, LI_1000000(0)
	b	.print_int_body
.print_int_div_10_L6:
	lwd	t6, LI_100000000(0)
	bne	s1, t6, .print_int_div_10_L7
	lwd	s1, LI_10000000(0)
	b	.print_int_body
.print_int_div_10_L7:	# s1 = 10 ** 9
	lwd	s1, LI_100000000(0)
	b	.print_int_body
## -- print_int_div_10
.print_int_end:
	lw	a1, 4(sp)
	lw	s1, 0(sp)
	addi	sp, sp, 8
	jr	ra

# min_caml_print_hex:
# 	addi	sp, sp, -12
# 	sw	a1, 8(sp)
# 	sw	t1, 4(sp)
# 	sw	ra, 0(sp)
# 	mv	a1, a0	# a1に元の数を保存　
# 	srai	a0, a1, 28
# 	call	.print_hex_write
# 	srai	a0, a1, 24
# 	call	.print_hex_write
# 	srai	a0, a1, 20
# 	call	.print_hex_write
# 	srai	a0, a1, 16
# 	call	.print_hex_write
# 	srai	a0, a1, 12
# 	call	.print_hex_write
# 	srai	a0, a1, 8
# 	call	.print_hex_write
# 	srai	a0, a1, 4
# 	call	.print_hex_write
# 	mv	a0, a1
# 	call	.print_hex_write
# 	lw	a1, 8(sp)
# 	lw	t1, 4(sp)
# 	lw	ra, 0(sp)
# 	addi	sp, sp, 12
# 	jr	ra
# .print_hex_write:	# a0の下位4bitをhexで出力
# 	srai	t1, a0, 4
# 	slli	t1, t1, 4
# 	sub	a0, a0, t1
# 	li	t1, 10
# 	bge	a0, t1, .print_hex_write_L0
# 	addi	a0, a0, 48
# 	w	a0
# 	jr	ra
# .print_hex_write_L0:
# 	addi	a0, a0, 87
# 	w	a0
# 	jr	ra

# min_caml_print_float:	# print float in hex
# 	addi	sp, sp, -12
# 	sw	a0, 8(sp)
# 	sw	ra, 4(sp)
# 	fsw	fa0, 0(sp)
# 	lw	a0, 0(sp)
# 	call	min_caml_print_hex
# 	lw	a0, 8(sp)
# 	lw	ra, 4(sp)
# 	addi	sp, sp, 12
# 	jr	ra

min_caml_create_array:
	mv	t6, gp
.create_array_L0:
	sw	a1, 0(gp)
	addi	gp, gp, 4
	addi	a0, a0, -1
	bgt	a0, zero, .create_array_L0
	mv	a0, t6
	jr	ra

min_caml_create_float_array:
	mv	t6, gp
.create_float_array_L0:
	fsw	fa0, 0(gp)
	addi	gp, gp, 4
	addi	a0, a0, -1
	bgt	a0, zero, .create_float_array_L0
	mv	a0, t6
	jr	ra

min_caml_div_rem:
# a0 <- a0 / a1, a1 <- a0 mod a1 (引数a0, a1は共に正)
	li	t6, 0			# t6が商
.div_L0:
	blt	a0, a1, .div_end
	sub	a0, a0, a1
	addi	t6, t6, 1
	b	.div_L0
.div_end:
	mv	a1, a0
	mv	a0, t6
	jr	ra

# sin/cos
.kernel_sin:	# use: ft7,8,9,10
	fmul	ft7, fa0, fa0	# ft7: A ^ 2
	fli	ft8, L_S3	# ft8: 係数
	fmul	ft9, fa0, ft7	# ft9: A ^ 3
	fmul	ft10, ft9, ft8
	fsub	fa0, fa0, ft10
	fli	ft8, L_S5
	fmul	ft9, ft9, ft7	# ft9: A ^ 5
	fmul	ft10, ft9, ft8
	fadd	fa0, fa0, ft10
	fli	ft8, L_S7
	fmul	ft9, ft9, ft7	# ft9: A ^ 7
	fmul	ft10, ft9, ft8
	fsub	fa0, fa0, ft10
	jr	ra

.kernel_cos:	# use: ft7,8,9,10
	fmul	ft7, fa0, fa0	# ft7: A ^ 2
	fli	fa0, L_1
	fli	ft8, L_C2
	fmv	ft9, ft7	# ft9: A ^ 2
	fmul	ft10, ft9, ft8
	fsub	fa0, fa0, ft10
	fli	ft8, L_C4
	fmul	ft9, ft9, ft7	# ft9: A ^ 4
	fmul	ft10, ft9, ft8
	fadd	fa0, fa0, ft10
	fli	ft8, L_C6
	fmul	ft9, ft9, ft7	# ft9: A ^ 6
	fmul	ft10, ft9, ft8
	fsub	fa0, fa0, ft10
	jr	ra

.reduction_2pi:	# 呼ばれた時点でft8 = 2.0である必要がある use: ft9, ft10
	fli	ft9, L_2PI		# ft9: P (2pi)
	fmv	ft10, ft9		# ft10: 2pi (const)
.reduction_2pi_L0:	# loop
	fle	t2, ft9, fa0	# P <= A
	beq	t2, zero, .reduction_2pi_L1
	fmul	ft9, ft9, ft8
	b	.reduction_2pi_L0
.reduction_2pi_L1:	# loop
	fle	t2, ft10, fa0	# 2pi <= A
	beq	t2, zero, .reduction_2pi_end
	fle	t2, ft9, fa0	# P <= A
	beq	t2, zero, .reduction_2pi_L2
# if (A >= P)
	fsub	fa0, fa0, ft9
.reduction_2pi_L2:
	fdiv	ft9, ft9, ft8
	b	.reduction_2pi_L1
.reduction_2pi_end:
	jr	ra

min_caml_sin:	# s1, t2
	addi	sp, sp, -4
	sw	ra, 0(sp)
	fli	ft7, L_PI	# pi
	fli	ft8, L_2	# 2.0
	fle	s1, fzero, fa0	# s1: FLAG (fa0 >= 0なら1)
	fabs	fa0, fa0
	call	.reduction_2pi
	fle	t2, ft7, fa0	# pi <= A
	beq	t2, zero, .sin_L0
# if (A >= pi)
	fsub	fa0, fa0, ft7
	xori	s1, s1, 1
.sin_L0:
	fdiv	ft9, ft7, ft8	# ft9 = pi / 2
	fle	t2, ft9, fa0	# pi / 2 <= A
	beq	t2, zero, .sin_L1
# if (A >= pi / 2)
	fsub	fa0, ft7, fa0
.sin_L1:
	fdiv	ft7, ft9, ft8	# ft7 = pi / 4 (piを上書き)
	fle	t2, fa0, ft7	# A <= pi / 4
	beq	t2, zero, .sin_L2
# if (A <= pi / 4)
	call	.kernel_sin
	b	.sin_L3
.sin_L2: # else
	fsub	fa0, ft9, fa0
	call	.kernel_cos
.sin_L3:
	bne	s1, zero, .sin_end
	fneg	fa0, fa0	# FLAG == 0ならneg
.sin_end:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra

min_caml_cos:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	fli	ft7, L_PI	# pi
	fli	ft8, L_2	# 2.0
	li	s1, 1		# s1: FLAG (fa0 >= 0なら1)
	fabs	fa0, fa0
	call	.reduction_2pi
	fle	t2, ft7, fa0	# pi <= A
	beq	t2, zero, .cos_L0
# if (A >= pi)
	fsub	fa0, fa0, ft7
	xori	s1, s1, 1
.cos_L0:
	fdiv	ft9, ft7, ft8	# ft9 = pi / 2
	fle	t2, ft9, fa0	# pi / 2 <= A
	beq	t2, zero, .cos_L1
# if (A >= pi / 2)
	fsub	fa0, ft7, fa0
	xori	s1, s1, 1
.cos_L1:
	fdiv	ft7, ft9, ft8	# ft7 = pi / 4 (piを上書き)
	fle	t2, fa0, ft7	# A <= pi / 4
	beq	t2, zero, .cos_L2
# if (A <= pi / 4)
	call	.kernel_cos
	b	.cos_L3
.cos_L2: # else
	fsub	fa0, ft9, fa0
	call	.kernel_sin
.cos_L3:
	bne	s1, zero, .cos_end
	fneg	fa0, fa0	# FLAG == 0ならneg
.cos_end:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra

# 誤差が大きい
min_caml_tan:
	sw	ra, -4(sp)
	fle	s1, fzero, fa0	# s1: FLAG (fa0 >= 0なら0)
	xori	s1, s1, 1
	fabs	fa0, fa0
.reduction_pi:
	fli	ft8, L_2
	fli	ft9, L_PI		# ft9: P (pi)
	fmv	ft10, ft9		# ft10: pi (const)
.reduction_pi_L0:	# loop
	fle	t2, ft9, fa0	# P <= A
	beq	t2, zero, .reduction_pi_L1
	fmul	ft9, ft9, ft8
	b	.reduction_pi_L0
.reduction_pi_L1:	# loop
	fle	t2, ft10, fa0	# pi <= A
	beq	t2, zero, .reduction_pi_end
	fle	t2, ft9, fa0	# P <= A
	beq	t2, zero, .reduction_pi_L2
# if (A >= P)
	fsub	fa0, fa0, ft9
.reduction_pi_L2:
	fdiv	ft9, ft9, ft8
	b	.reduction_pi_L1
.reduction_pi_end:
# =============== reduction_pi ここまで
	fli	ft10, L_PI2
	fle	t2, ft10, fa0
	beq	t2, zero, .kernel_tan
# if (A >= PI / 2)
	fli	ft10, L_PI
	fsub	fa0, ft10, fa0
	xori	s1, s1, 1
.kernel_tan:
	fmul	ft7, fa0, fa0	# ft7 : A ^ 2
	fli	ft8, L_T3
	fmul	ft9, fa0, ft7	# ft9 : A ^ 3
	fmul	ft10, ft9, ft8
	fadd	fa0, fa0, ft10
	fli	ft8, L_T5
	fmul	ft9, ft9, ft7	# ft9 : A ^ 5
	fmul	ft10, ft9, ft8
	fadd	fa0, fa0, ft10
	fli	ft8, L_T7
	fmul	ft9, ft9, ft7	# ft9 : A ^ 7
	fmul	ft10, ft9, ft8
	fadd	fa0, fa0, ft10
# ================ kernel_tan
	beq	s1, zero, .tan_end
	fneg	fa0, fa0
.tan_end:
	lw	ra, -4(sp)
	jr	ra

.kernel_atan:
	fmv	ft0, fa0
	fmv	ft8, fa0
	fmul	ft0, ft0, ft0	# ft0: A ^ 2
	fmul	ft8, ft8, ft0	# ft8: A ^ 3
	fli	ft9, L_A3	# ft9: 係数
	fmul	ft10, ft9, ft8
	fsub	fa0, fa0, ft10
	fmul	ft8, ft8, ft0	# ft8: A ^ 5
	fli	ft9, L_A5
	fmul	ft10, ft9, ft8
	fadd	fa0, fa0, ft10
	fmul	ft8, ft8, ft0	# ft8: A ^ 7
	fli	ft9, L_A7
	fmul	ft10, ft9, ft8
	fsub	fa0, fa0, ft10
	fmul	ft8, ft8, ft0	# ft8: A ^ 9
	fli	ft9, L_A9
	fmul	ft10, ft9, ft8
	fadd	fa0, fa0, ft10
	fmul	ft8, ft8, ft0	# ft8: A ^ 11
	fli	ft9, L_A11
	fmul	ft10, ft9, ft8
	fsub	fa0, fa0, ft10
	fmul	ft8, ft8, ft0	# ft8: A ^ 13
	fli	ft9, L_A13
	fmul	ft10, ft9, ft8
	fadd	fa0, fa0, ft10
	jr	ra

min_caml_atan:	# use: s1, ft0, ft8, ft9, ft10
	addi	sp, sp, -4
	sw	ra, 0(sp)
	fli	ft0, L_Atan1
	fle	s1, fzero, fa0	# s1: sign flag (s1 = 1 when positive)
	fabs	fa0, fa0
	fle	t6, ft0, fa0	# 0.4375 <= fa0
	bne	t6, zero, .atan_L0
# |A| < 0.4375の場合
	call	.kernel_atan
	b	.atan_L2
.atan_L0:
	fli	ft0, L_Atan2
	fle	t6, ft0, fa0	# 2.4375 <= fa0
	bne	t6, zero, .atan_L1
# |A| < 2.4375の場合
	fli	ft0, L_1
	fsub	ft8, fa0, ft0	# ft8 = |A| - 1.0
	fadd	ft0, fa0, ft0	# ft0 = |A| + 1.0
	fdiv	fa0, ft8, ft0
	call	.kernel_atan
	fli	ft0, L_PI4
	fadd	fa0, fa0, ft0
	# 符号処理
	b	.atan_L2
.atan_L1:
# |A| >= 2.4375の場合
	finv	fa0, fa0
	call	.kernel_atan
	fli	ft0, L_PI2
	fsub	fa0, ft0, fa0
	# 符号処理
	b	.atan_L2
.atan_L2:
	bne	s1, zero, .atan_end
	fneg	fa0, fa0
.atan_end:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra

min_caml_floor:
	fmv	ft9, fa0	# ft9: before flooring
	fli	ft10, L_8388608
	fle	t6, fzero, fa0
	beq	zero, t6, .floor_neg
# positive
	fadd	fa0, fa0, ft10
	fsub	fa0, fa0, ft10
	b	.floor_cont
.floor_neg:
	fabs	fa0, fa0
	fadd	fa0, fa0, ft10
	fsub	fa0, fa0, ft10
	fneg	fa0, fa0
######
.floor_cont:
	fle	t6, fa0, ft9	# after <= before ?
	bne	t6, zero, .floor_ret
	fli	ft9, L_1
	fsub	fa0, fa0, ft9
.floor_ret:
	jr	ra

min_caml_float_of_int: # int -> float
	fli	ft10, L_8388608
	lwd	t6, LI_1258291200(0)  # 0x4b000000
	bge	a0, zero, .float_of_int_pos
# negativeの場合
	sub	a0, t6, a0
	sw	a0, -4(sp)
	flw	fa0, -4(sp)
	fsub	fa0, fa0, ft10
	fneg	fa0, fa0
	jr	ra
.float_of_int_pos:
	add	a0, a0, t6
	sw	a0, -4(sp)
	flw	fa0, -4(sp)
	fsub	fa0, fa0, ft10
	jr	ra

min_caml_int_of_float: # float -> int
	fli	ft10, L_8388608
	fle	t6, fzero, fa0
	beq	zero, t6, .int_of_float_neg
# positiveの場合
	fadd	fa0, fa0, ft10
	fsw	fa0, -4(sp)
	lw	a0, -4(sp)
	lwd	t6, LI_1258291200(0)
	sub	a0, a0, t6
	jr	ra
.int_of_float_neg:
	fabs	fa0, fa0
	fadd	fa0, fa0, ft10
	fsw	fa0, -4(sp)
	lw	a0, -4(sp)
	lwd	t6, LI_1258291200(0)
	sub	a0, a0, t6
	neg	a0, a0
	jr	ra

	.data
LI_1258291200:
	.word	1258291200
LI_10000:
	.word	10000
LI_100000:
	.word	100000
LI_1000000:
	.word	1000000
LI_10000000:
	.word	10000000
LI_100000000:
	.word	100000000
LI_1000000000:
	.word	1000000000
