min_caml_start:
	li	sp, 1024
	li	tp, 4096
	li	a0, 2
	li	a1, 2
	sw	ra, 0(sp)
	addi	sp, sp, 4
	jal	ra, ack15
	addi	sp, sp, -4
	lw	ra, 0(sp)
	li	s0, 12345
ack15:
	li	t0, 0
	blt	t0, a0, bge_else34
	li	t0, 1
	add	a0, a1, t0
	jalr	zero, ra, 0
bge_else34:
	li	t0, 0
	blt	t0, a1, bge_else35
	li	t0, 1
	sub	a0, a0, t0
	li	a1, 1
	jal	zero, ack15
bge_else35:
	li	t0, 1
	sub	t0, a0, t0
	li	t1, 1
	sub	a1, a1, t1
	sw	t0, 0(sp)
	sw	ra, 4(sp)
	addi	sp, sp, 8
	jal	ra, ack15
	addi	sp, sp, -8
	lw	ra, 4(sp)
	add	a1, a0, zero
	lw	a0, 0(sp)
	jal	zero, ack15
