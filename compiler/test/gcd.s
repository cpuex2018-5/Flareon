	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
	li	gp, 7280	# initialize gp
#	main program starts
	li	a0, 21600
	li	a1, 315900
	call	gcd_7
	call	min_caml_print_int
#	main program ends
end:
	b	end
gcd_7:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	bne	a0, zero, .gcd_else_1
	mv	a0, a1
	b	gcd_ret
.gcd_else_1:
	bgt	a0, a1, .gcd_else_2
	sub	a1, a1, a0
	bne	a0, zero, .gcd_else_3
	mv	a0, a1
	b	gcd_ret
.gcd_else_3:
	bgt	a0, a1, .gcd_else_4
	sub	a1, a1, a0
	call	gcd_7
	b	gcd_ret
.gcd_else_4:
	sub	a0, a0, a1
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	gcd_7
	b	gcd_ret
.gcd_else_2:
	sub	a0, a0, a1
	bne	a1, zero, .gcd_else_5
	b	gcd_ret
.gcd_else_5:
	bgt	a1, a0, .gcd_else_6
	sub	a0, a0, a1
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	gcd_7
	b	gcd_ret
.gcd_else_6:
	sub	a1, a1, a0
	call	gcd_7
gcd_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
	.data
