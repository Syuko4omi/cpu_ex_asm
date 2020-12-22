min_caml_start:
	fmv.w.x	ft10, zero
	lui	ra, 0
	addi	ra, ra, -1000
	lui	sp, 20
	addi	sp, sp, -1920
	lui	tp, 20
	addi	tp, tp, -1916
	lui	t0, 2
	addi	t0, t0, 240
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 236
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 232
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 228
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 224
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 220
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 216
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 212
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 208
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 204
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 200
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 196
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 192
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 188
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 184
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 180
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 176
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 172
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 168
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 164
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 160
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 156
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 152
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 148
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 144
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 140
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 136
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 132
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 128
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 124
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 120
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 116
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 112
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 108
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 104
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 100
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 96
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 92
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 88
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 84
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 80
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 76
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 72
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 68
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 64
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 60
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 56
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 52
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 48
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 44
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 40
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 36
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 32
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 28
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 24
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 20
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 16
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 12
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 8
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 4
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, 0
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -4
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -8
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -12
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -16
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -20
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -24
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -28
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -32
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -36
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -40
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -44
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -48
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -52
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -56
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -60
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -64
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -68
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -72
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -76
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -80
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -84
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -88
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -92
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -96
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -100
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -104
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -108
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -112
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -116
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -120
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -124
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -128
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -132
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -136
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -140
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -144
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -148
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -152
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	lui	t0, 2
	addi	t0, t0, -156
	flw	fa0, 0(t0)
	sw	ra, 0(sp)
	addi	sp, sp, -4
	jal	ra, min_caml_sin
	addi	sp, sp, 4
	lw	ra, 0(sp)
	fadd.s	ft0, fa0, ft10
	fmv.x.w	gp, ft0
	send	gp
	jalr	zero, ra, 0
min_caml_fmod:
	addi	sp, sp, -80
	sw	s0, 76(sp)
	addi	s0, sp, 80
	fsw	fa0, -68(s0)
	fsw	fa1, -72(s0)
	flw	fa5, -68(s0)
	fsw	fa5, -48(s0)
	flw	fa5, -72(s0)
	fsw	fa5, -52(s0)
	lw	a5, -48(s0)
	srli	a5, a5, 23
	andi	a5, a5, 255
	sw	a5, -20(s0)
	lw	a5, -52(s0)
	srli	a5, a5, 23
	andi	a5, a5, 255
	sw	a5, -24(s0)
	lw	a5, -48(s0)
	addi	a4, a5, 0
	lui	a5, 2048
	addi	a5, a5, 0
	addi	a5, a5, -1
	and	a5, a4, a5
	sw	a5, -36(s0)
	lw	a5, -52(s0)
	addi	a4, a5, 0
	lui	a5, 2048
	addi	a5, a5, 0
	addi	a5, a5, -1
	and	a5, a4, a5
	sw	a5, -40(s0)
	lw	a5, -48(s0)
	srli	a5, a5, 31
	sw	a5, -44(s0)
	lw	a5, -48(s0)
	sw	a5, -32(s0)
	lw	a5, -52(s0)
	slli	a5, a5, 1
	beq	a5, zero, min_caml_.L2
	lw	a4, -24(s0)
	lui	a5, 0
	addi	a5, a5, 255
	bne	a4, a5, min_caml_.L3
	lw	a5, -40(s0)
	bne	a5, zero, min_caml_.L2
min_caml_.L3:
	lw	a4, -20(s0)
	lui	a5, 0
	addi	a5, a5, 2047
	bne	a4, a5, min_caml_.L4
min_caml_.L2:
	flw	fa4, -68(s0)
	flw	fa5, -72(s0)
	fmul.s	fa4, fa4, fa5
	flw	fa3, -68(s0)
	flw	fa5, -72(s0)
	fmul.s	fa5, fa3, fa5
	fdiv.s	fa5, fa4, fa5
	jal	zero, min_caml_.L26
min_caml_.L4:
	lw	a5, -32(s0)
	slli	a4, a5, 1
	lw	a5, -52(s0)
	slli	a5, a5, 1
	bgtu	a4, a5, min_caml_.L6
	lw	a5, -32(s0)
	slli	a4, a5, 1
	lw	a5, -52(s0)
	slli	a5, a5, 1
	bne	a4, a5, min_caml_.L7
	flw	fa5, -68(s0)
	fmv.w.x	fa4, zero
	fmul.s	fa5, fa5, fa4
	jal	zero, min_caml_.L26
min_caml_.L7:
	flw	fa5, -68(s0)
	jal	zero, min_caml_.L26
min_caml_.L6:
	lw	a5, -20(s0)
	bne	a5, zero, min_caml_.L8
	lw	a5, -32(s0)
	slli	a5, a5, 9
	sw	a5, -28(s0)
	jal	zero, min_caml_.L9
min_caml_.L10:
	lw	a5, -20(s0)
	addi	a5, a5, -1
	sw	a5, -20(s0)
	lw	a5, -28(s0)
	slli	a5, a5, 1
	sw	a5, -28(s0)
min_caml_.L9:
	lw	a5, -28(s0)
	bge	a5, zero, min_caml_.L10
	lui	a4, 0
	addi	a4, a4, 1
	lw	a5, -20(s0)
	sub	a5, a4, a5
	lw	a4, -32(s0)
	sll	a5, a4, a5
	sw	a5, -32(s0)
	jal	zero, min_caml_.L11
min_caml_.L8:
	lw	a4, -32(s0)
	lui	a5, 2048
	addi	a5, a5, 0
	addi	a5, a5, -1
	and	a5, a4, a5
	sw	a5, -32(s0)
	lw	a4, -32(s0)
	lui	a5, 2048
	addi	a5, a5, 0
	or	a5, a4, a5
	sw	a5, -32(s0)
min_caml_.L11:
	lw	a5, -24(s0)
	bne	a5, zero, min_caml_.L12
	lw	a5, -52(s0)
	slli	a5, a5, 9
	sw	a5, -28(s0)
	jal	zero, min_caml_.L13
min_caml_.L14:
	lw	a5, -24(s0)
	addi	a5, a5, -1
	sw	a5, -24(s0)
	lw	a5, -28(s0)
	slli	a5, a5, 1
	sw	a5, -28(s0)
min_caml_.L13:
	lw	a5, -28(s0)
	bge	a5, zero, min_caml_.L14
	lw	a4, -52(s0)
	lui	a3, 0
	addi	a3, a3, 1
	lw	a5, -24(s0)
	sub	a5, a3, a5
	sll	a5, a4, a5
	sw	a5, -52(s0)
	jal	zero, min_caml_.L16
min_caml_.L12:
	lw	a4, -52(s0)
	lui	a5, 2048
	addi	a5, a5, 0
	addi	a5, a5, -1
	and	a5, a4, a5
	sw	a5, -52(s0)
	lw	a4, -52(s0)
	lui	a5, 2048
	addi	a5, a5, 0
	or	a5, a4, a5
	sw	a5, -52(s0)
	jal	zero, min_caml_.L16
min_caml_.L19:
	lw	a5, -52(s0)
	lw	a4, -32(s0)
	sub	a5, a4, a5
	sw	a5, -28(s0)
	lw	a5, -28(s0)
	blt	a5, zero, min_caml_.L17
	lw	a5, -28(s0)
	bne	a5, zero, min_caml_.L18
	flw	fa5, -68(s0)
	fmv.w.x	fa4, zero
	fmul.s	fa5, fa5, fa4
	jal	zero, min_caml_.L26
min_caml_.L18:
	lw	a5, -28(s0)
	sw	a5, -32(s0)
min_caml_.L17:
	lw	a5, -32(s0)
	slli	a5, a5, 1
	sw	a5, -32(s0)
	lw	a5, -20(s0)
	addi	a5, a5, -1
	sw	a5, -20(s0)
min_caml_.L16:
	lw	a4, -20(s0)
	lw	a5, -24(s0)
	bgt	a4, a5, min_caml_.L19
	lw	a5, -52(s0)
	lw	a4, -32(s0)
	sub	a5, a4, a5
	sw	a5, -28(s0)
	lw	a5, -28(s0)
	blt	a5, zero, min_caml_.L22
	lw	a5, -28(s0)
	bne	a5, zero, min_caml_.L21
	flw	fa5, -68(s0)
	fmv.w.x	fa4, zero
	fmul.s	fa5, fa5, fa4
	jal	zero, min_caml_.L26
min_caml_.L21:
	lw	a5, -28(s0)
	sw	a5, -32(s0)
	jal	zero, min_caml_.L22
min_caml_.L23:
	lw	a5, -32(s0)
	slli	a5, a5, 1
	sw	a5, -32(s0)
	lw	a5, -20(s0)
	addi	a5, a5, -1
	sw	a5, -20(s0)
min_caml_.L22:
	lw	a5, -32(s0)
	srli	a5, a5, 23
	beq	a5, zero, min_caml_.L23
	lw	a5, -20(s0)
	bge	zero, a5, min_caml_.L24
	lw	a4, -32(s0)
	lui	a5, -2048
	addi	a5, a5, 0
	add	a5, a4, a5
	sw	a5, -32(s0)
	lw	a5, -20(s0)
	slli	a5, a5, 23
	lw	a4, -32(s0)
	or	a5, a4, a5
	sw	a5, -32(s0)
	jal	zero, min_caml_.L25
min_caml_.L24:
	lui	a4, 0
	addi	a4, a4, 1
	lw	a5, -20(s0)
	sub	a5, a4, a5
	lw	a4, -32(s0)
	srl	a5, a4, a5
	sw	a5, -32(s0)
min_caml_.L25:
	lw	a5, -44(s0)
	slli	a5, a5, 31
	lw	a4, -32(s0)
	or	a5, a4, a5
	sw	a5, -32(s0)
	lw	a5, -32(s0)
	sw	a5, -48(s0)
	flw	fa5, -48(s0)
min_caml_.L26:
	fmv.s	fa0, fa5
	lw	s0, 76(sp)
	addi	sp, sp, 80
	jalr	zero, ra, 0
min_caml_i4_min:
	addi	sp, sp, -48
	sw	s0, 44(sp)
	addi	s0, sp, 48
	sw	a0, -36(s0)
	sw	a1, -40(s0)
	lw	a4, -36(s0)
	lw	a5, -40(s0)
	bge	a4, a5, min_caml_.L28
	lw	a5, -36(s0)
	sw	a5, -20(s0)
	jal	zero, min_caml_.L29
min_caml_.L28:
	lw	a5, -40(s0)
	sw	a5, -20(s0)
min_caml_.L29:
	lw	a5, -20(s0)
	addi	a0, a5, 0
	lw	s0, 44(sp)
	addi	sp, sp, 48
	jalr	zero, ra, 0
min_caml_angle_shift:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	s0, 40(sp)
	addi	s0, sp, 48
	fsw	fa0, -36(s0)
	fsw	fa1, -40(s0)
	lui	a5, 2
	addi	a5, a5, -180
	flw	fa5, 0(a5)
	fsw	fa5, -24(s0)
	flw	fa4, -36(s0)
	flw	fa5, -40(s0)
	flt.s	a5, fa4, fa5
	beq	a5, zero, min_caml_.L37
	flw	fa4, -40(s0)
	flw	fa5, -36(s0)
	fsub.s	fa4, fa4, fa5
	flw	fa5, -24(s0)
	fadd.s	fa5, fa5, fa5
	fmv.s	fa1, fa5
	fmv.s	fa0, fa4
	jal	ra, min_caml_fmod
	fmv.s	fa4, fa0
	flw	fa5, -40(s0)
	fsub.s	fa4, fa5, fa4
	flw	fa5, -24(s0)
	fadd.s	fa5, fa5, fa5
	fadd.s	fa5, fa4, fa5
	fsw	fa5, -20(s0)
	jal	zero, min_caml_.L34
min_caml_.L37:
	flw	fa4, -36(s0)
	flw	fa5, -40(s0)
	fsub.s	fa4, fa4, fa5
	flw	fa5, -24(s0)
	fadd.s	fa5, fa5, fa5
	fmv.s	fa1, fa5
	fmv.s	fa0, fa4
	jal	ra, min_caml_fmod
	fmv.s	fa4, fa0
	flw	fa5, -40(s0)
	fadd.s	fa5, fa5, fa4
	fsw	fa5, -20(s0)
min_caml_.L34:
	flw	fa5, -20(s0)
	fmv.s	fa0, fa5
	lw	ra, 44(sp)
	lw	s0, 40(sp)
	addi	sp, sp, 48
	jalr	zero, ra, 0
min_caml_atan:
	addi	sp, sp, -80
	sw	s0, 76(sp)
	addi	s0, sp, 80
	fsw	fa0, -68(s0)
	lui	a5, 0
	addi	a5, a5, 25
	sw	a5, -52(s0)
	lui	a5, 2
	addi	a5, a5, -176
	flw	fa5, 0(a5)
	fsw	fa5, -44(s0)
	flw	fa5, -68(s0)
	fsw	fa5, -48(s0)
	flw	fa5, -44(s0)
	fmv.w.x	fa4, zero
	flt.s	a5, fa5, fa4
	beq	a5, zero, min_caml_.L39
	flw	fa5, -48(s0)
	fmv.w.x	fa4, zero
	flt.s	a5, fa5, fa4
	beq	a5, zero, min_caml_.L39
	flw	fa5, -44(s0)
	fsgnjn.s	fa5, fa5, fa5
	fsw	fa5, -44(s0)
	flw	fa5, -48(s0)
	fsgnjn.s	fa5, fa5, fa5
	fsw	fa5, -48(s0)
min_caml_.L39:
	flw	fa5, -44(s0)
	fmv.w.x	fa4, zero
	flt.s	a5, fa5, fa4
	beq	a5, zero, min_caml_.L60
	flw	fa5, -44(s0)
	fsgnjn.s	fa5, fa5, fa5
	fsw	fa5, -44(s0)
	lui	a5, 2
	addi	a5, a5, -172
	flw	fa5, 0(a5)
	fsw	fa5, -36(s0)
	jal	zero, min_caml_.L44
min_caml_.L60:
	flw	fa5, -48(s0)
	fmv.w.x	fa4, zero
	flt.s	a5, fa5, fa4
	beq	a5, zero, min_caml_.L61
	flw	fa5, -48(s0)
	fsgnjn.s	fa5, fa5, fa5
	fsw	fa5, -48(s0)
	lui	a5, 2
	addi	a5, a5, -172
	flw	fa5, 0(a5)
	fsw	fa5, -36(s0)
	jal	zero, min_caml_.L44
min_caml_.L61:
	lui	a5, 2
	addi	a5, a5, -176
	flw	fa5, 0(a5)
	fsw	fa5, -36(s0)
min_caml_.L44:
	sw	zero, -40(s0)
	lui	a5, 2
	addi	a5, a5, -176
	flw	fa5, 0(a5)
	fsw	fa5, -28(s0)
	lui	a5, 0
	addi	a5, a5, 1
	sw	a5, -24(s0)
	jal	zero, min_caml_.L47
min_caml_.L53:
	flw	fa5, -48(s0)
	fmv.w.x	fa4, zero
	fle.s	a5, fa5, fa4
	beq	a5, zero, min_caml_.L62
	lui	a5, 2
	addi	a5, a5, -176
	flw	fa5, 0(a5)
	fsw	fa5, -32(s0)
	jal	zero, min_caml_.L50
min_caml_.L62:
	lui	a5, 2
	addi	a5, a5, -172
	flw	fa5, 0(a5)
	fsw	fa5, -32(s0)
min_caml_.L50:
	lw	a4, -24(s0)
	lui	a5, 0
	addi	a5, a5, 60
	bgt	a4, a5, min_caml_.L51
	lw	a5, -24(s0)
	addi	a5, a5, -1
	lui	a4, 2
	addi	a4, a4, -552
	slli	a5, a5, 2
	add	a5, a4, a5
	flw	fa5, 0(a5)
	fsw	fa5, -20(s0)
	jal	zero, min_caml_.L52
min_caml_.L51:
	flw	fa4, -20(s0)
	lui	a5, 2
	addi	a5, a5, -168
	flw	fa5, 0(a5)
	fdiv.s	fa5, fa4, fa5
	fsw	fa5, -20(s0)
min_caml_.L52:
	flw	fa4, -32(s0)
	flw	fa5, -28(s0)
	fmul.s	fa4, fa4, fa5
	flw	fa5, -48(s0)
	fmul.s	fa5, fa4, fa5
	flw	fa4, -44(s0)
	fsub.s	fa5, fa4, fa5
	fsw	fa5, -56(s0)
	flw	fa4, -32(s0)
	flw	fa5, -28(s0)
	fmul.s	fa4, fa4, fa5
	flw	fa5, -44(s0)
	fmul.s	fa5, fa4, fa5
	flw	fa4, -48(s0)
	fadd.s	fa5, fa4, fa5
	fsw	fa5, -60(s0)
	flw	fa4, -32(s0)
	flw	fa5, -20(s0)
	fmul.s	fa5, fa4, fa5
	flw	fa4, -40(s0)
	fsub.s	fa5, fa4, fa5
	fsw	fa5, -40(s0)
	flw	fa5, -56(s0)
	fsw	fa5, -44(s0)
	flw	fa5, -60(s0)
	fsw	fa5, -48(s0)
	flw	fa4, -28(s0)
	lui	a5, 2
	addi	a5, a5, -168
	flw	fa5, 0(a5)
	fdiv.s	fa5, fa4, fa5
	fsw	fa5, -28(s0)
	lw	a5, -24(s0)
	addi	a5, a5, 1
	sw	a5, -24(s0)
min_caml_.L47:
	lw	a4, -24(s0)
	lw	a5, -52(s0)
	bge	a5, a4, min_caml_.L53
	flw	fa4, -40(s0)
	flw	fa5, -36(s0)
	fmul.s	fa5, fa4, fa5
	fsw	fa5, -40(s0)
	flw	fa5, -40(s0)
	fmv.s	fa0, fa5
	lw	s0, 76(sp)
	addi	sp, sp, 80
	jalr	zero, ra, 0
min_caml_cos:
	addi	sp, sp, -96
	sw	ra, 92(sp)
	sw	s0, 88(sp)
	addi	s0, sp, 96
	fsw	fa0, -84(s0)
	lui	a5, 2
	addi	a5, a5, -180
	flw	fa5, 0(a5)
	fsw	fa5, -52(s0)
	lui	a5, 0
	addi	a5, a5, 25
	sw	a5, -56(s0)
	flw	fa5, -52(s0)
	fsgnjn.s	fa5, fa5, fa5
	fmv.s	fa1, fa5
	flw	fa0, -84(s0)
	jal	ra, min_caml_angle_shift
	fsw	fa0, -40(s0)
	flw	fa4, -52(s0)
	lui	a5, 2
	addi	a5, a5, -164
	flw	fa5, 0(a5)
	fmul.s	fa5, fa4, fa5
	flw	fa4, -40(s0)
	flt.s	a5, fa4, fa5
	beq	a5, zero, min_caml_.L81
	flw	fa4, -40(s0)
	flw	fa5, -52(s0)
	fadd.s	fa5, fa4, fa5
	fsw	fa5, -40(s0)
	lui	a5, 2
	addi	a5, a5, -172
	flw	fa5, 0(a5)
	fsw	fa5, -36(s0)
	jal	zero, min_caml_.L66
min_caml_.L81:
	flw	fa4, -52(s0)
	lui	a5, 2
	addi	a5, a5, -160
	flw	fa5, 0(a5)
	fmul.s	fa5, fa4, fa5
	flw	fa4, -40(s0)
	flt.s	a5, fa5, fa4
	beq	a5, zero, min_caml_.L82
	flw	fa4, -40(s0)
	flw	fa5, -52(s0)
	fsub.s	fa5, fa4, fa5
	fsw	fa5, -40(s0)
	lui	a5, 2
	addi	a5, a5, -172
	flw	fa5, 0(a5)
	fsw	fa5, -36(s0)
	jal	zero, min_caml_.L66
min_caml_.L82:
	lui	a5, 2
	addi	a5, a5, -176
	flw	fa5, 0(a5)
	fsw	fa5, -36(s0)
min_caml_.L66:
	lui	a5, 2
	addi	a5, a5, -176
	flw	fa5, 0(a5)
	fsw	fa5, -44(s0)
	sw	zero, -48(s0)
	lui	a5, 2
	addi	a5, a5, -176
	flw	fa5, 0(a5)
	fsw	fa5, -28(s0)
	lui	a5, 2
	addi	a5, a5, -552
	flw	fa5, 0(a5)
	fsw	fa5, -20(s0)
	lui	a5, 0
	addi	a5, a5, 1
	sw	a5, -24(s0)
	jal	zero, min_caml_.L69
min_caml_.L75:
	flw	fa5, -40(s0)
	fmv.w.x	fa4, zero
	flt.s	a5, fa5, fa4
	beq	a5, zero, min_caml_.L83
	lui	a5, 2
	addi	a5, a5, -172
	flw	fa5, 0(a5)
	fsw	fa5, -32(s0)
	jal	zero, min_caml_.L72
min_caml_.L83:
	lui	a5, 2
	addi	a5, a5, -176
	flw	fa5, 0(a5)
	fsw	fa5, -32(s0)
min_caml_.L72:
	flw	fa4, -32(s0)
	flw	fa5, -28(s0)
	fmul.s	fa5, fa4, fa5
	fsw	fa5, -60(s0)
	flw	fa4, -60(s0)
	flw	fa5, -48(s0)
	fmul.s	fa5, fa4, fa5
	flw	fa4, -44(s0)
	fsub.s	fa5, fa4, fa5
	fsw	fa5, -64(s0)
	flw	fa4, -60(s0)
	flw	fa5, -44(s0)
	fmul.s	fa5, fa4, fa5
	flw	fa4, -48(s0)
	fadd.s	fa5, fa4, fa5
	fsw	fa5, -68(s0)
	flw	fa5, -64(s0)
	fsw	fa5, -44(s0)
	flw	fa5, -68(s0)
	fsw	fa5, -48(s0)
	flw	fa4, -32(s0)
	flw	fa5, -20(s0)
	fmul.s	fa5, fa4, fa5
	flw	fa4, -40(s0)
	fsub.s	fa5, fa4, fa5
	fsw	fa5, -40(s0)
	flw	fa4, -28(s0)
	lui	a5, 2
	addi	a5, a5, -168
	flw	fa5, 0(a5)
	fdiv.s	fa5, fa4, fa5
	fsw	fa5, -28(s0)
	lw	a4, -24(s0)
	lui	a5, 0
	addi	a5, a5, 59
	bge	a5, a4, min_caml_.L73
	flw	fa4, -20(s0)
	lui	a5, 2
	addi	a5, a5, -168
	flw	fa5, 0(a5)
	fdiv.s	fa5, fa4, fa5
	fsw	fa5, -20(s0)
	jal	zero, min_caml_.L74
min_caml_.L73:
	lui	a5, 2
	addi	a5, a5, -552
	addi	a4, a5, 0
	lw	a5, -24(s0)
	slli	a5, a5, 2
	add	a5, a4, a5
	flw	fa5, 0(a5)
	fsw	fa5, -20(s0)
min_caml_.L74:
	lw	a5, -24(s0)
	addi	a5, a5, 1
	sw	a5, -24(s0)
min_caml_.L69:
	lw	a4, -24(s0)
	lw	a5, -56(s0)
	bge	a5, a4, min_caml_.L75
	lw	a5, -56(s0)
	bge	zero, a5, min_caml_.L76
	lui	a1, 0
	addi	a1, a1, 33
	lw	a0, -56(s0)
	jal	ra, min_caml_i4_min
	addi	a5, a0, 0
	addi	a5, a5, -1
	lui	a4, 2
	addi	a4, a4, -312
	slli	a5, a5, 2
	add	a5, a4, a5
	flw	fa5, 0(a5)
	flw	fa4, -44(s0)
	fmul.s	fa5, fa4, fa5
	fsw	fa5, -44(s0)
	lui	a1, 0
	addi	a1, a1, 33
	lw	a0, -56(s0)
	jal	ra, min_caml_i4_min
	addi	a5, a0, 0
	addi	a5, a5, -1
	lui	a4, 2
	addi	a4, a4, -312
	slli	a5, a5, 2
	add	a5, a4, a5
	flw	fa5, 0(a5)
	flw	fa4, -48(s0)
	fmul.s	fa5, fa4, fa5
	fsw	fa5, -48(s0)
min_caml_.L76:
	flw	fa4, -44(s0)
	flw	fa5, -36(s0)
	fmul.s	fa5, fa4, fa5
	fsw	fa5, -44(s0)
	flw	fa4, -48(s0)
	flw	fa5, -36(s0)
	fmul.s	fa5, fa4, fa5
	fsw	fa5, -48(s0)
	flw	fa5, -44(s0)
	fmv.s	fa0, fa5
	lw	ra, 92(sp)
	lw	s0, 88(sp)
	addi	sp, sp, 96
	jalr	zero, ra, 0
min_caml_sin:
	addi	sp, sp, -96
	sw	ra, 92(sp)
	sw	s0, 88(sp)
	addi	s0, sp, 96
	fsw	fa0, -84(s0)
	lui	a5, 2
	addi	a5, a5, -180
	flw	fa5, 0(a5)
	fsw	fa5, -52(s0)
	lui	a5, 0
	addi	a5, a5, 25
	sw	a5, -56(s0)
	flw	fa5, -52(s0)
	fsgnjn.s	fa5, fa5, fa5
	fmv.s	fa1, fa5
	flw	fa0, -84(s0)
	jal	ra, min_caml_angle_shift
	fsw	fa0, -40(s0)
	flw	fa4, -52(s0)
	lui	a5, 2
	addi	a5, a5, -164
	flw	fa5, 0(a5)
	fmul.s	fa5, fa4, fa5
	flw	fa4, -40(s0)
	flt.s	a5, fa4, fa5
	beq	a5, zero, min_caml_.L102
	flw	fa4, -40(s0)
	flw	fa5, -52(s0)
	fadd.s	fa5, fa4, fa5
	fsw	fa5, -40(s0)
	lui	a5, 2
	addi	a5, a5, -172
	flw	fa5, 0(a5)
	fsw	fa5, -36(s0)
	jal	zero, min_caml_.L87
min_caml_.L102:
	flw	fa4, -52(s0)
	lui	a5, 2
	addi	a5, a5, -160
	flw	fa5, 0(a5)
	fmul.s	fa5, fa4, fa5
	flw	fa4, -40(s0)
	flt.s	a5, fa5, fa4
	beq	a5, zero, min_caml_.L103
	flw	fa4, -40(s0)
	flw	fa5, -52(s0)
	fsub.s	fa5, fa4, fa5
	fsw	fa5, -40(s0)
	lui	a5, 2
	addi	a5, a5, -172
	flw	fa5, 0(a5)
	fsw	fa5, -36(s0)
	jal	zero, min_caml_.L87
min_caml_.L103:
	lui	a5, 2
	addi	a5, a5, -176
	flw	fa5, 0(a5)
	fsw	fa5, -36(s0)
min_caml_.L87:
	lui	a5, 2
	addi	a5, a5, -176
	flw	fa5, 0(a5)
	fsw	fa5, -44(s0)
	sw	zero, -48(s0)
	lui	a5, 2
	addi	a5, a5, -176
	flw	fa5, 0(a5)
	fsw	fa5, -28(s0)
	lui	a5, 2
	addi	a5, a5, -552
	flw	fa5, 0(a5)
	fsw	fa5, -20(s0)
	lui	a5, 0
	addi	a5, a5, 1
	sw	a5, -24(s0)
	jal	zero, min_caml_.L90
min_caml_.L96:
	flw	fa5, -40(s0)
	fmv.w.x	fa4, zero
	flt.s	a5, fa5, fa4
	beq	a5, zero, min_caml_.L104
	lui	a5, 2
	addi	a5, a5, -172
	flw	fa5, 0(a5)
	fsw	fa5, -32(s0)
	jal	zero, min_caml_.L93
min_caml_.L104:
	lui	a5, 2
	addi	a5, a5, -176
	flw	fa5, 0(a5)
	fsw	fa5, -32(s0)
min_caml_.L93:
	flw	fa4, -32(s0)
	flw	fa5, -28(s0)
	fmul.s	fa5, fa4, fa5
	fsw	fa5, -60(s0)
	flw	fa4, -60(s0)
	flw	fa5, -48(s0)
	fmul.s	fa5, fa4, fa5
	flw	fa4, -44(s0)
	fsub.s	fa5, fa4, fa5
	fsw	fa5, -64(s0)
	flw	fa4, -60(s0)
	flw	fa5, -44(s0)
	fmul.s	fa5, fa4, fa5
	flw	fa4, -48(s0)
	fadd.s	fa5, fa4, fa5
	fsw	fa5, -68(s0)
	flw	fa5, -64(s0)
	fsw	fa5, -44(s0)
	flw	fa5, -68(s0)
	fsw	fa5, -48(s0)
	flw	fa4, -32(s0)
	flw	fa5, -20(s0)
	fmul.s	fa5, fa4, fa5
	flw	fa4, -40(s0)
	fsub.s	fa5, fa4, fa5
	fsw	fa5, -40(s0)
	flw	fa4, -28(s0)
	lui	a5, 2
	addi	a5, a5, -168
	flw	fa5, 0(a5)
	fdiv.s	fa5, fa4, fa5
	fsw	fa5, -28(s0)
	lw	a4, -24(s0)
	lui	a5, 0
	addi	a5, a5, 59
	bge	a5, a4, min_caml_.L94
	flw	fa4, -20(s0)
	lui	a5, 2
	addi	a5, a5, -168
	flw	fa5, 0(a5)
	fdiv.s	fa5, fa4, fa5
	fsw	fa5, -20(s0)
	jal	zero, min_caml_.L95
min_caml_.L94:
	lui	a5, 2
	addi	a5, a5, -552
	addi	a4, a5, 0
	lw	a5, -24(s0)
	slli	a5, a5, 2
	add	a5, a4, a5
	flw	fa5, 0(a5)
	fsw	fa5, -20(s0)
min_caml_.L95:
	lw	a5, -24(s0)
	addi	a5, a5, 1
	sw	a5, -24(s0)
min_caml_.L90:
	lw	a4, -24(s0)
	lw	a5, -56(s0)
	bge	a5, a4, min_caml_.L96
	lw	a5, -56(s0)
	bge	zero, a5, min_caml_.L97
	lui	a1, 0
	addi	a1, a1, 33
	lw	a0, -56(s0)
	jal	ra, min_caml_i4_min
	addi	a5, a0, 0
	addi	a5, a5, -1
	lui	a4, 2
	addi	a4, a4, -312
	slli	a5, a5, 2
	add	a5, a4, a5
	flw	fa5, 0(a5)
	flw	fa4, -44(s0)
	fmul.s	fa5, fa4, fa5
	fsw	fa5, -44(s0)
	lui	a1, 0
	addi	a1, a1, 33
	lw	a0, -56(s0)
	jal	ra, min_caml_i4_min
	addi	a5, a0, 0
	addi	a5, a5, -1
	lui	a4, 2
	addi	a4, a4, -312
	slli	a5, a5, 2
	add	a5, a4, a5
	flw	fa5, 0(a5)
	flw	fa4, -48(s0)
	fmul.s	fa5, fa4, fa5
	fsw	fa5, -48(s0)
min_caml_.L97:
	flw	fa4, -44(s0)
	flw	fa5, -36(s0)
	fmul.s	fa5, fa4, fa5
	fsw	fa5, -44(s0)
	flw	fa4, -48(s0)
	flw	fa5, -36(s0)
	fmul.s	fa5, fa4, fa5
	fsw	fa5, -48(s0)
	flw	fa5, -48(s0)
	fmv.s	fa0, fa5
	lw	ra, 92(sp)
	lw	s0, 88(sp)
	addi	sp, sp, 96
	jalr	zero, ra, 0
min_caml_angles:
	.4byte	0x3f490fdb
	.4byte	0x3eed6338
	.4byte	0x3e7adbb0
	.4byte	0x3dfeadd5
	.4byte	0x3d7faade
	.4byte	0x3cffeaae
	.4byte	0x3c7ffaab
	.4byte	0x3bfffeab
	.4byte	0x3b7fffab
	.4byte	0x3affffeb
	.4byte	0x3a7ffffb
	.4byte	0x39ffffff
	.4byte	0x39800000
	.4byte	0x39000000
	.4byte	0x38800000
	.4byte	0x38000000
	.4byte	0x37800000
	.4byte	0x37000000
	.4byte	0x36800000
	.4byte	0x36000000
	.4byte	0x35800000
	.4byte	0x35000000
	.4byte	0x34800000
	.4byte	0x34000000
	.4byte	0x33800000
	.4byte	0x33000000
	.4byte	0x32800000
	.4byte	0x32000000
	.4byte	0x31800000
	.4byte	0x31000000
	.4byte	0x30800000
	.4byte	0x30000000
	.4byte	0x2f800000
	.4byte	0x2f000000
	.4byte	0x2e800000
	.4byte	0x2e000000
	.4byte	0x2d800000
	.4byte	0x2d000000
	.4byte	0x2c800000
	.4byte	0x2c000000
	.4byte	0x2b800000
	.4byte	0x2b000000
	.4byte	0x2a800000
	.4byte	0x2a000000
	.4byte	0x29800000
	.4byte	0x29000000
	.4byte	0x28800000
	.4byte	0x28000000
	.4byte	0x27800000
	.4byte	0x27000000
	.4byte	0x26800000
	.4byte	0x26000000
	.4byte	0x25800000
	.4byte	0x25000000
	.4byte	0x24800000
	.4byte	0x24000000
	.4byte	0x23800000
	.4byte	0x23000000
	.4byte	0x22800000
	.4byte	0x22000000
min_caml_kprod:
	.4byte	0x3f3504f3
	.4byte	0x3f21e89b
	.4byte	0x3f1d130e
	.4byte	0x3f1bdc8a
	.4byte	0x3f1b8ed6
	.4byte	0x3f1b7b68
	.4byte	0x3f1b768c
	.4byte	0x3f1b7555
	.4byte	0x3f1b7508
	.4byte	0x3f1b74f4
	.4byte	0x3f1b74ef
	.4byte	0x3f1b74ee
	.4byte	0x3f1b74ee
	.4byte	0x3f1b74ee
	.4byte	0x3f1b74ee
	.4byte	0x3f1b74ee
	.4byte	0x3f1b74ee
	.4byte	0x3f1b74ee
	.4byte	0x3f1b74ee
	.4byte	0x3f1b74ee
	.4byte	0x3f1b74ee
	.4byte	0x3f1b74ee
	.4byte	0x3f1b74ee
	.4byte	0x3f1b74ee
	.4byte	0x3f1b74ee
	.4byte	0x3f1b74ee
	.4byte	0x3f1b74ee
	.4byte	0x3f1b74ee
	.4byte	0x3f1b74ee
	.4byte	0x3f1b74ee
	.4byte	0x3f1b74ee
	.4byte	0x3f1b74ee
	.4byte	0x3f1b74ee
min_caml_.LC0:
	.4byte	0x40490fdb
min_caml_.LC1:
	.4byte	0x3f800000
min_caml_.LC2:
	.4byte	0xbf800000
min_caml_.LC3:
	.4byte	0x40000000
min_caml_.LC4:
	.4byte	0xbf000000
min_caml_.LC5:
	.4byte	0x3f000000
l.797:
	.4byte	0x3f800000
l.795:
	.4byte	0x3f7d70a4
l.793:
	.4byte	0x3f7ae148
l.791:
	.4byte	0x3f7851ec
l.789:
	.4byte	0x3f75c28f
l.787:
	.4byte	0x3f733333
l.785:
	.4byte	0x3f70a3d7
l.783:
	.4byte	0x3f6e147b
l.781:
	.4byte	0x3f6b851f
l.779:
	.4byte	0x3f68f5c3
l.777:
	.4byte	0x3f666666
l.775:
	.4byte	0x3f63d70a
l.773:
	.4byte	0x3f6147ae
l.771:
	.4byte	0x3f5eb852
l.769:
	.4byte	0x3f5c28f6
l.767:
	.4byte	0x3f59999a
l.765:
	.4byte	0x3f570a3d
l.763:
	.4byte	0x3f547ae1
l.761:
	.4byte	0x3f51eb85
l.759:
	.4byte	0x3f4f5c29
l.757:
	.4byte	0x3f4ccccd
l.755:
	.4byte	0x3f4a3d71
l.753:
	.4byte	0x3f47ae14
l.751:
	.4byte	0x3f451eb8
l.749:
	.4byte	0x3f428f5c
l.747:
	.4byte	0x3f400000
l.745:
	.4byte	0x3f3d70a4
l.743:
	.4byte	0x3f3ae148
l.741:
	.4byte	0x3f3851ec
l.739:
	.4byte	0x3f35c28f
l.737:
	.4byte	0x3f333333
l.735:
	.4byte	0x3f30a3d7
l.733:
	.4byte	0x3f2e147b
l.731:
	.4byte	0x3f2b851f
l.729:
	.4byte	0x3f28f5c3
l.727:
	.4byte	0x3f266666
l.725:
	.4byte	0x3f23d70a
l.723:
	.4byte	0x3f2147ae
l.721:
	.4byte	0x3f1eb852
l.719:
	.4byte	0x3f1c28f6
l.717:
	.4byte	0x3f19999a
l.715:
	.4byte	0x3f170a3d
l.713:
	.4byte	0x3f147ae1
l.711:
	.4byte	0x3f11eb85
l.709:
	.4byte	0x3f0f5c29
l.707:
	.4byte	0x3f0ccccd
l.705:
	.4byte	0x3f0a3d71
l.703:
	.4byte	0x3f07ae14
l.701:
	.4byte	0x3f051eb8
l.699:
	.4byte	0x3f028f5c
l.697:
	.4byte	0x3f000000
l.695:
	.4byte	0x3efae148
l.693:
	.4byte	0x3ef5c28f
l.691:
	.4byte	0x3ef0a3d7
l.689:
	.4byte	0x3eeb851f
l.687:
	.4byte	0x3ee66666
l.685:
	.4byte	0x3ee147ae
l.683:
	.4byte	0x3edc28f6
l.681:
	.4byte	0x3ed70a3d
l.679:
	.4byte	0x3ed1eb85
l.677:
	.4byte	0x3ecccccd
l.675:
	.4byte	0x3ec7ae14
l.673:
	.4byte	0x3ec28f5c
l.671:
	.4byte	0x3ebd70a4
l.669:
	.4byte	0x3eb851ec
l.667:
	.4byte	0x3eb33333
l.665:
	.4byte	0x3eae147b
l.663:
	.4byte	0x3ea8f5c3
l.661:
	.4byte	0x3ea3d70a
l.659:
	.4byte	0x3e9eb852
l.657:
	.4byte	0x3e99999a
l.655:
	.4byte	0x3e947ae1
l.653:
	.4byte	0x3e8f5c29
l.651:
	.4byte	0x3e8a3d71
l.649:
	.4byte	0x3e851eb8
l.647:
	.4byte	0x3e800000
l.645:
	.4byte	0x3e75c28f
l.643:
	.4byte	0x3e6b851f
l.641:
	.4byte	0x3e6147ae
l.639:
	.4byte	0x3e570a3d
l.637:
	.4byte	0x3e4ccccd
l.635:
	.4byte	0x3e428f5c
l.633:
	.4byte	0x3e3851ec
l.631:
	.4byte	0x3e2e147b
l.629:
	.4byte	0x3e23d70a
l.627:
	.4byte	0x3e19999a
l.625:
	.4byte	0x3e0f5c29
l.623:
	.4byte	0x3e051eb8
l.621:
	.4byte	0x3df5c28f
l.619:
	.4byte	0x3de147ae
l.617:
	.4byte	0x3dcccccd
l.615:
	.4byte	0x3db851ec
l.613:
	.4byte	0x3da3d70a
l.611:
	.4byte	0x3d8f5c29
l.609:
	.4byte	0x3d75c28f
l.607:
	.4byte	0x3d4ccccd
l.605:
	.4byte	0x3d23d70a
l.603:
	.4byte	0x3cf5c28f
l.601:
	.4byte	0x3ca3d70a
l.599:
	.4byte	0x3c23d70a
