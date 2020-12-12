min_caml_start:
	fmv.w.x	ft10, zero
	lui	sp, 1024
	addi	sp, sp, 0
	lui	tp, 1536
	addi	tp, tp, 0
	lui	a0, 0
	addi	a0, a0, 1
	lui	a1, 0
	addi	a1, a1, 0
	lui	t0, 0
	addi	t0, t0, 216
	flw	ft0, 0(t0)
	fsw	ft0, 0(sp)
	sw	ra, 4(sp)
	addi	sp, sp, 8
	jal	ra, xor.11
	addi	sp, sp, -8
	lw	ra, 4(sp)
	add	t0, a0, zero
	lui	t1, 0
	addi	t1, t1, 0
	bne	t0, t1, be_else.29
	flw	ft0, 0(sp)
	fcvt.w.s.rdn	gp, ft0
	fcvt.s.w	ft0, gp
	fcvt.w.s	t0, ft0
	send	t0
	jal	zero, be_cont.30
be_else.29:
	flw	fa0, 0(sp)
	sw	ra, 4(sp)
	addi	sp, sp, 8
	jal	ra, fabs.9
	addi	sp, sp, -8
	lw	ra, 4(sp)
	fadd.s	ft0, fa0, ft10
	fcvt.w.s.rdn	gp, ft0
	fcvt.s.w	ft0, gp
	fcvt.w.s	t0, ft0
	send	t0
be_cont.30:
	jalr	zero, ra, 0
fabs.9:
	fmv.w.x	ft0, zero
	fle.s	gp, fa0, ft0
	bne	gp, zero, fblt_else.31
	fadd.s	fa0, fa0, ft10
	jalr	zero, ra, 0
fblt_else.31:
	fsub.s	fa0, ft10, fa0
	jalr	zero, ra, 0
xor.11:
	beq	a1, a0, bne_else.32
	lui	a0, 0
	addi	a0, a0, 1
	jalr	zero, ra, 0
bne_else.32:
	lui	a0, 0
	addi	a0, a0, 0
	jalr	zero, ra, 0
l.25:
	.4byte	0xbdcccccd
