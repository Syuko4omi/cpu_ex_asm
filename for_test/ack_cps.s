min_caml_start:
	li	sp, 4194304
	li	tp, 6291456
	li	a0, 3
	li	a1, 10
	add	a2, zero, tp
	addi	tp, tp, 4
	li	t0, Tf.1.24
	sw	t0, 0(a2)
	sw	ra, 0(sp)
	addi	sp, sp, 4
	jal	ra, ack1.17
	addi	sp, sp, -4
	lw	ra, 0(sp)
ack.26:
	li	t0, 0
	blt	t0, a0, bge_else.48
	li	t0, 1
	add	a0, a1, t0
	jalr	zero, ra, 0
bge_else.48:
	li	t0, 0
	blt	t0, a1, bge_else.49
	li	t0, 1
	sub	a0, a0, t0
	li	a1, 1
	jal	zero, ack.26
bge_else.49:
	li	t0, 1
	sub	t0, a0, t0
	li	t1, 1
	sub	a1, a1, t1
	sw	t0, 0(sp)
	sw	ra, 4(sp)
	addi	sp, sp, 8
	jal	ra, ack.26
	addi	sp, sp, -8
	lw	ra, 4(sp)
	add	a1, a0, zero
	lw	a0, 0(sp)
	jal	zero, ack.26
ack1.17:
	sw	a2, 0(sp)
	sw	ra, 4(sp)
	addi	sp, sp, 8
	jal	ra, ack.26
	addi	sp, sp, -8
	lw	ra, 4(sp)
	lw	fp, 0(sp)
	lw	gp, 0(fp)
	jalr	zero, gp, 0
Tf.1.24:
	jal	zero, min_caml_print_int
