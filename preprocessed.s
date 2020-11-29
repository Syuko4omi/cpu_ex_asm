min_caml_start:
	lui	sp, 0
	addi	sp, sp, 1024
	lui	tp, 1
	addi	tp, tp, 0
	lui	a0, 0
	addi	a0, a0, 2
	lui	a1, 0
	addi	a1, a1, 2
	sw	ra, 0(sp)
	addi	sp, sp, 4
	jal	ra, ack15
	addi	sp, sp, -4
	lw	ra, 0(sp)
	lui	s0, 3
	addi	s0, s0, 57
ack15:
	lui	t0, 0
	addi	t0, t0, 0
	blt	t0, a0, bge_else34
	lui	t0, 0
	addi	t0, t0, 1
	add	a0, a1, t0
	jalr	zero, ra, 0
bge_else34:
	lui	t0, 0
	addi	t0, t0, 0
	blt	t0, a1, bge_else35
	lui	t0, 0
	addi	t0, t0, 1
	sub	a0, a0, t0
	lui	a1, 0
	addi	a1, a1, 1
	jal	zero, ack15
bge_else35:
	lui	t0, 0
	addi	t0, t0, 1
	sub	t0, a0, t0
	lui	t1, 0
	addi	t1, t1, 1
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
