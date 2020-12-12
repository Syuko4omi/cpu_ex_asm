.section	.text
min_caml_start:
	fmv.w.x	ft10, zero
	li	sp, 4194304
	li	tp, 6291456
	recv	t0
	blt	t0, zero, 12
	srai	t1, t0, 2
	jal	zero, 16
	sub	t1, zero, t0
	srai	t1, t1, 2
	sub	t1, zero, t1
	li	t2, 3
	div	t2, t0, t2
	blt	t0, zero, 12
	srai	t3, t0, 2
	jal	zero, 16
	sub	t3, zero, t0
	srai	t3, t3, 2
	sub	t3, zero, t3
	sub	t3, zero, t3
	li	t4, -3
	div	t4, t0, t4
	slli	t5, t0, 2
	li	t6, 3
	mul	t6, t0, t6
	slli	s2, t0, 2
	sub	s2, zero, s2
	li	s3, -3
	mul	t0, t0, s3
	send	t1
	send	t2
	send	t3
	send	t4
	send	t5
	send	t6
	send	s2
	send	t0
	jalr	zero, ra, 0
