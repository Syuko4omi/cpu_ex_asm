.section	.text
min_caml_start:
	li	sp, 4194304
	li	tp, 6291456
	li	a0, 0
	sw	ra, 0(sp)
	addi	sp, sp, 4
	jal	ra, yloop.40
	addi	sp, sp, -4
	lw	ra, 0(sp)
dbl.38:
	jalr	zero, ra, 0
iloop.54:
	li	t0, 0
	bne	a0, t0, be_else.126
	li	a0, 1
	jal	zero, min_caml_print_int
be_else.126:
	fsub	ft0, fa2, fa3
	fadd	ft0, ft0, fa4
	fsw	fa4, 0(sp)
	sw	a0, 4(sp)
	fsw	ft0, 8(sp)
	fsw	fa5, 12(sp)
	fsw	fa1, 16(sp)
	sw	ra, 20(sp)
	addi	sp, sp, 24
	jal	ra, dbl.38
	addi	sp, sp, -24
	lw	ra, 20(sp)
	fmv.w.x	ft11, zero
	fadd.s	ft0, fa0, ft11
	flw	ft1, 16(sp)
	fmul	ft0, ft0, ft1
	flw	fa5, 12(sp)
	fadd	fa1, ft0, fa5
	flw	fa0, 8(sp)
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	ft0, fa2, fa3
	la	t0, l.98
	flw	ft1, 0(t0)
	fle.s	gp, ft0, ft1
	bne	gp, zero, fblt_else.127
	li	a0, 0
	jal	zero, min_caml_print_int
fblt_else.127:
	li	t0, 1
	lw	t1, 4(sp)
	sub	a0, t1, t0
	flw	fa4, 0(sp)
	jal	zero, iloop.54
xloop.44:
	li	t0, 400
	blt	a0, t0, bge_else.128
	jalr	zero, ra, 0
bge_else.128:
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	sw	ra, 8(sp)
	addi	sp, sp, 12
	jal	ra, min_caml_float_of_int
	addi	sp, sp, -12
	lw	ra, 8(sp)
	sw	ra, 8(sp)
	addi	sp, sp, 12
	jal	ra, dbl.38
	addi	sp, sp, -12
	lw	ra, 8(sp)
	fmv.w.x	ft11, zero
	fadd.s	ft0, fa0, ft11
	la	t0, l.100
	flw	ft1, 0(t0)
	fdiv	ft0, ft0, ft1
	la	t0, l.102
	flw	ft1, 0(t0)
	fsub	ft0, ft0, ft1
	lw	a0, 4(sp)
	fsw	ft0, 8(sp)
	sw	ra, 12(sp)
	addi	sp, sp, 16
	jal	ra, min_caml_float_of_int
	addi	sp, sp, -16
	lw	ra, 12(sp)
	sw	ra, 12(sp)
	addi	sp, sp, 16
	jal	ra, dbl.38
	addi	sp, sp, -16
	lw	ra, 12(sp)
	fmv.w.x	ft11, zero
	fadd.s	ft0, fa0, ft11
	la	t0, l.100
	flw	ft1, 0(t0)
	fdiv	ft0, ft0, ft1
	la	t0, l.105
	flw	ft1, 0(t0)
	fsub	fa5, ft0, ft1
	li	a0, 1000
	la	t0, l.107
	flw	fa0, 0(t0)
	la	t0, l.107
	flw	fa1, 0(t0)
	la	t0, l.107
	flw	fa2, 0(t0)
	la	t0, l.107
	flw	fa3, 0(t0)
	flw	fa4, 8(sp)
	sw	ra, 12(sp)
	addi	sp, sp, 16
	jal	ra, iloop.54
	addi	sp, sp, -16
	lw	ra, 12(sp)
	li	t0, 1
	lw	t1, 0(sp)
	add	a0, t1, t0
	lw	a1, 4(sp)
	jal	zero, xloop.44
yloop.40:
	li	t0, 400
	blt	a0, t0, bge_else.130
	jalr	zero, ra, 0
bge_else.130:
	li	t0, 0
	sw	a0, 0(sp)
	add	a1, a0, zero
	add	a0, t0, zero
	sw	ra, 4(sp)
	addi	sp, sp, 8
	jal	ra, xloop.44
	addi	sp, sp, -8
	lw	ra, 4(sp)
	li	t0, 1
	lw	t1, 0(sp)
	add	a0, t1, t0
	jal	zero, yloop.40
.section	.data
l.107:
	.4byte	0x00000000
l.105:
	.4byte	0x3f800000
l.102:
	.4byte	0x3fc00000
l.100:
	.4byte	0x43c80000
l.98:
	.4byte	0x40800000
