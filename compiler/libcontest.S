	.text
# ============= beginning of libcontest.S ===============
min_caml_read_int:	# inputs are binary-encoded
	mv	a0, zero
	r	t6
	add	a0, a0, t6
	slli	a0, a0, 8
	r	t6
	andi	t6, t6, 255
	add	a0, a0, t6
	slli	a0, a0, 8
	r	t6
	andi	t6, t6, 255
	add	a0, a0, t6
	slli	a0, a0, 8
	r	t6
	andi	t6, t6, 255
	add	a0, a0, t6
	jr	ra

min_caml_read_float:	# inputs are binary-encoded
	addi	sp, sp, -4
	sw	t2, 0(sp)
	mv	t2, zero
	r	t6
	add	t2, t2, t6
	slli	t2, t2, 8
	r	t6
	andi	t6, t6, 255
	add	t2, t2, t6
	slli	t2, t2, 8
	r	t6
	andi	t6, t6, 255
	add	t2, t2, t6
	slli	t2, t2, 8
	r	t6
	andi	t6, t6, 255
	add	t2, t2, t6
	sw	t2, -4(sp)
	flw	fa0, -4(sp)
	lw	t2, 0(sp)
	addi	sp, sp, 4
	jr	ra
