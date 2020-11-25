min_caml_start:
	li	sp, 4194304
	li	tp, 6291456
	li	a0, 21600
	li	a1, 337500
	sw	ra, 0(sp)
	addi	sp, sp, 4
	jal	ra, gcd.7
	addi	sp, sp, -4
	lw	ra, 0(sp)
	sw	ra, 0(sp)
	addi	sp, sp, 4
	jal	ra, min_caml_print_int
	addi	sp, sp, -4
	lw	ra, 0(sp)
gcd.7:
	li	t0, 0
	bne	a0, t0, be_else.17
	add	a0, zero, a1
	jalr	zero, ra, 0
be_else.17:
	blt	a1, a0, bge_else.18
	sub	a1, a1, a0
	jal	zero, gcd.7
bge_else.18:
	sub	t0, a0, a1
	add	a0, a1, zero
	add	a1, t0, zero
	jal	zero, gcd.7
