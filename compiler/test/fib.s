	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
	li	gp, 7280	# initialize gp
#	main program starts
	li	a0, 30
	call	fib_10
	call	min_caml_print_int
#	main program ends
end:
	b	end
fib_10:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	bgti	a0, 1, .fib_else_1
	b	fib_ret
.fib_else_1:
	sw	a0, 0(sp)	# save
	addi	a0, a0, -1
	call	fib_10
	sw	a0, 4(sp)	# save
	lw	a1, 0(sp)	# restore
	addi	a0, a1, -2
	call	fib_10
	lw	a1, 4(sp)	# restore
	add	a0, a1, a0
fib_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
	.data
