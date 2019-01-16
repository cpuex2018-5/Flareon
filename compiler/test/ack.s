	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
	li	gp, 7280	# initialize gp
#	main program starts
	li	a0, 2
	li	a1, 10
	call	ack_15
	call	min_caml_print_int
#	main program ends
end:
	b	end
ack_15:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	bgt	a0, zero, .ack_else_1
	addi	a0, a1, 1
	b	ack_ret
.ack_else_1:
	bgt	a1, zero, .ack_else_2
	addi	a0, a0, -1
	li	a1, 1
	call	ack_15
	b	ack_ret
.ack_else_2:
	addi	a2, a0, -1
	addi	a1, a1, -1
	sw	a2, 0(sp)
	call	ack_15
	mv	a1, a0
	lw	a0, 0(sp)
	call	ack_15
ack_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
	.data
