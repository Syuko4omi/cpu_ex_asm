.section	.text
min_caml_fmod:
	addi	sp,sp,-80
	sw	s0,76(sp)
	addi	s0,sp,80
	fsw	fa0,-68(s0)
	fsw	fa1,-72(s0)
	flw	fa5,-68(s0)
	fsw	fa5,-48(s0)
	flw	fa5,-72(s0)
	fsw	fa5,-52(s0)
	lw	a5,-48(s0)
	srli	a5,a5,23
	andi	a5,a5,255
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	srli	a5,a5,23
	andi	a5,a5,255
	sw	a5,-24(s0)
	lw	a5,-48(s0)
	addi	a4,a5,0
	li	a5,8388608
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-52(s0)
	addi	a4,a5,0
	li	a5,8388608
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-40(s0)
	lw	a5,-48(s0)
	srli	a5,a5,31
	sw	a5,-44(s0)
	lw	a5,-48(s0)
	sw	a5,-32(s0)
	lw	a5,-52(s0)
	slli	a5,a5,1
	beq	a5,zero,min_caml_.L2
	lw	a4,-24(s0)
	li	a5,255
	bne	a4,a5,min_caml_.L3
	lw	a5,-40(s0)
	bne	a5,zero,min_caml_.L2
min_caml_.L3:
	lw	a4,-20(s0)
	li	a5,2047
	bne	a4,a5,min_caml_.L4
min_caml_.L2:
	flw	fa4,-68(s0)
	flw	fa5,-72(s0)
	fmul.s	fa4,fa4,fa5
	flw	fa3,-68(s0)
	flw	fa5,-72(s0)
	fmul.s	fa5,fa3,fa5
	fdiv.s	fa5,fa4,fa5
	jal	zero, min_caml_min_caml_.L26
min_caml_.L4:
	lw	a5,-32(s0)
	slli	a4,a5,1
	lw	a5,-52(s0)
	slli	a5,a5,1
	bgtu	a4,a5,min_caml_.L6
	lw	a5,-32(s0)
	slli	a4,a5,1
	lw	a5,-52(s0)
	slli	a5,a5,1
	bne	a4,a5,min_caml_.L7
	flw	fa5,-68(s0)
	fmv.w.x	fa4,zero
	fmul.s	fa5,fa5,fa4
	jal	zero, min_caml_min_caml_.L26
min_caml_.L7:
	flw	fa5,-68(s0)
	jal	zero, min_caml_min_caml_.L26
min_caml_.L6:
	lw	a5,-20(s0)
	bne	a5,zero,min_caml_.L8
	lw	a5,-32(s0)
	slli	a5,a5,9
	sw	a5,-28(s0)
	jal	zero, min_caml_.L9
min_caml_.L10:
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	lw	a5,-28(s0)
	slli	a5,a5,1
	sw	a5,-28(s0)
min_caml_.L9:
	lw	a5,-28(s0)
	bge	a5,zero,min_caml_.L10
	li	a4,1
	lw	a5,-20(s0)
	sub	a5,a4,a5
	lw	a4,-32(s0)
	sll	a5,a4,a5
	sw	a5,-32(s0)
	jal	zero, min_caml_.L11
min_caml_.L8:
	lw	a4,-32(s0)
	li	a5,8388608
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-32(s0)
	lw	a4,-32(s0)
	li	a5,8388608
	or	a5,a4,a5
	sw	a5,-32(s0)
min_caml_.L11:
	lw	a5,-24(s0)
	bne	a5,zero,min_caml_.L12
	lw	a5,-52(s0)
	slli	a5,a5,9
	sw	a5,-28(s0)
	jal	zero, min_caml_.L13
min_caml_.L14:
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	slli	a5,a5,1
	sw	a5,-28(s0)
min_caml_.L13:
	lw	a5,-28(s0)
	bge	a5,zero,min_caml_.L14
	lw	a4,-52(s0)
	li	a3,1
	lw	a5,-24(s0)
	sub	a5,a3,a5
	sll	a5,a4,a5
	sw	a5,-52(s0)
	jal	zero, min_caml_.L16
min_caml_.L12:
	lw	a4,-52(s0)
	li	a5,8388608
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-52(s0)
	lw	a4,-52(s0)
	li	a5,8388608
	or	a5,a4,a5
	sw	a5,-52(s0)
	jal	zero, min_caml_.L16
min_caml_.L19:
	lw	a5,-52(s0)
	lw	a4,-32(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	blt	a5,zero,min_caml_.L17
	lw	a5,-28(s0)
	bne	a5,zero,min_caml_.L18
	flw	fa5,-68(s0)
	fmv.w.x	fa4,zero
	fmul.s	fa5,fa5,fa4
	jal	zero, min_caml_min_caml_.L26
min_caml_.L18:
	lw	a5,-28(s0)
	sw	a5,-32(s0)
min_caml_.L17:
	lw	a5,-32(s0)
	slli	a5,a5,1
	sw	a5,-32(s0)
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
min_caml_.L16:
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bgt	a4,a5,min_caml_.L19
	lw	a5,-52(s0)
	lw	a4,-32(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	blt	a5,zero,min_caml_min_caml_.L22
	lw	a5,-28(s0)
	bne	a5,zero,min_caml_min_caml_.L21
	flw	fa5,-68(s0)
	fmv.w.x	fa4,zero
	fmul.s	fa5,fa5,fa4
	jal	zero, min_caml_min_caml_.L26
min_caml_min_caml_.L21:
	lw	a5,-28(s0)
	sw	a5,-32(s0)
	jal	zero, min_caml_min_caml_.L22
min_caml_min_caml_.L23:
	lw	a5,-32(s0)
	slli	a5,a5,1
	sw	a5,-32(s0)
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
min_caml_min_caml_.L22:
	lw	a5,-32(s0)
	srli	a5,a5,23
	beq	a5,zero,min_caml_min_caml_.L23
	lw	a5,-20(s0)
	ble	a5,zero,min_caml_min_caml_.L24
	lw	a4,-32(s0)
	li	a5,-8388608
	add	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-20(s0)
	slli	a5,a5,23
	lw	a4,-32(s0)
	or	a5,a4,a5
	sw	a5,-32(s0)
	jal	zero, min_caml_min_caml_.L25
min_caml_min_caml_.L24:
	li	a4,1
	lw	a5,-20(s0)
	sub	a5,a4,a5
	lw	a4,-32(s0)
	srl	a5,a4,a5
	sw	a5,-32(s0)
min_caml_min_caml_.L25:
	lw	a5,-44(s0)
	slli	a5,a5,31
	lw	a4,-32(s0)
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-48(s0)
	flw	fa5,-48(s0)
min_caml_min_caml_.L26:
	fmv.s	fa0,fa5
	lw	s0,76(sp)
	addi	sp,sp,80
	jalr	zero, ra, 0
min_caml_i4_min:
	addi	sp,sp,-48
	sw	s0,44(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	bge	a4,a5,min_caml_min_caml_.L28
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	jal	zero, min_caml_min_caml_.L29
min_caml_min_caml_.L28:
	lw	a5,-40(s0)
	sw	a5,-20(s0)
min_caml_min_caml_.L29:
	lw	a5,-20(s0)
	addi	a0,a5,0
	lw	s0,44(sp)
	addi	sp,sp,48
	jalr	zero, ra, 0
min_caml_angle_shift:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	fsw	fa0,-36(s0)
	fsw	fa1,-40(s0)
	la	a5,min_caml_.LC0
	flw	fa5, a5
	fsw	fa5,-24(s0)
	flw	fa4,-36(s0)
	flw	fa5,-40(s0)
	flt.s	a5,fa4,fa5
	beq	a5,zero,min_caml_min_caml_.L37
	flw	fa4,-40(s0)
	flw	fa5,-36(s0)
	fsub.s	fa4,fa4,fa5
	flw	fa5,-24(s0)
	fadd.s	fa5,fa5,fa5
	fmv.s	fa1,fa5
	fmv.s	fa0,fa4
	jal	ra, min_caml_fmod
	fmv.s	fa4,fa0
	flw	fa5,-40(s0)
	fsub.s	fa4,fa5,fa4
	flw	fa5,-24(s0)
	fadd.s	fa5,fa5,fa5
	fadd.s	fa5,fa4,fa5
	fsw	fa5,-20(s0)
	jal	zero, min_caml_min_caml_.L34
min_caml_min_caml_.L37:
	flw	fa4,-36(s0)
	flw	fa5,-40(s0)
	fsub.s	fa4,fa4,fa5
	flw	fa5,-24(s0)
	fadd.s	fa5,fa5,fa5
	fmv.s	fa1,fa5
	fmv.s	fa0,fa4
	jal	ra, min_caml_fmod
	fmv.s	fa4,fa0
	flw	fa5,-40(s0)
	fadd.s	fa5,fa5,fa4
	fsw	fa5,-20(s0)
min_caml_min_caml_.L34:
	flw	fa5,-20(s0)
	fmv.s	fa0,fa5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jalr	zero, ra, 0
min_caml_atan:
	addi	sp,sp,-80
	sw	s0,76(sp)
	addi	s0,sp,80
	fsw	fa0,-68(s0)
	li	a5,25
	sw	a5,-52(s0)
	la	a5,min_caml_.LC1
	flw	fa5,a5
	fsw	fa5,-44(s0)
	flw	fa5,-68(s0)
	fsw	fa5,-48(s0)
	flw	fa5,-44(s0)
	fmv.w.x	fa4,zero
	flt.s	a5,fa5,fa4
	beq	a5,zero,min_caml_min_caml_.L39
	flw	fa5,-48(s0)
	fmv.w.x	fa4,zero
	flt.s	a5,fa5,fa4
	beq	a5,zero,min_caml_min_caml_.L39
	flw	fa5,-44(s0)
	fsgnjn.s	fa5,fa5,fa5
	fsw	fa5,-44(s0)
	flw	fa5,-48(s0)
	fsgnjn.s	fa5,fa5,fa5
	fsw	fa5,-48(s0)
min_caml_min_caml_.L39:
	flw	fa5,-44(s0)
	fmv.w.x	fa4,zero
	flt.s	a5,fa5,fa4
	beq	a5,zero,min_caml_min_caml_.L60
	flw	fa5,-44(s0)
	fsgnjn.s	fa5,fa5,fa5
	fsw	fa5,-44(s0)
	la	a5,min_caml_.LC2
	flw	fa5,a5
	fsw	fa5,-36(s0)
	jal	zero, min_caml_min_caml_.L44
min_caml_min_caml_.L60:
	flw	fa5,-48(s0)
	fmv.w.x	fa4,zero
	flt.s	a5,fa5,fa4
	beq	a5,zero,min_caml_min_caml_.L61
	flw	fa5,-48(s0)
	fsgnjn.s	fa5,fa5,fa5
	fsw	fa5,-48(s0)
	la	a5,min_caml_.LC2
	flw	fa5,a5
	fsw	fa5,-36(s0)
	jal	zero, min_caml_min_caml_.L44
min_caml_min_caml_.L61:
	la	a5,min_caml_.LC1
	flw	fa5,a5
	fsw	fa5,-36(s0)
min_caml_min_caml_.L44:
	sw	zero,-40(s0)
	la	a5,min_caml_.LC1
	flw	fa5,a5
	fsw	fa5,-28(s0)
	li	a5,1
	sw	a5,-24(s0)
	jal	zero, min_caml_min_caml_.L47
min_caml_.L53:
	flw	fa5,-48(s0)
	fmv.w.x	fa4,zero
	fle.s	a5,fa5,fa4
	beq	a5,zero,min_caml_min_caml_.L62
	la	a5,min_caml_.LC1
	flw	fa5,a5
	fsw	fa5,-32(s0)
	jal	zero, min_caml_.L50
min_caml_min_caml_.L62:
	la	a5,min_caml_.LC2
	flw	fa5,a5
	fsw	fa5,-32(s0)
min_caml_.L50:
	lw	a4,-24(s0)
	li	a5,60
	bgt	a4,a5,min_caml_.L51
	lw	a5,-24(s0)
	addi	a5,a5,-1
	la	a4,min_caml_angles
	slli	a5,a5,2
	add	a5,a4,a5
	flw	fa5,0(a5)
	fsw	fa5,-20(s0)
	jal	zero, min_caml_.L52
min_caml_.L51:
	flw	fa4,-20(s0)
	la	a5,min_caml_.LC3
	flw	fa5,a5
	fdiv.s	fa5,fa4,fa5
	fsw	fa5,-20(s0)
min_caml_.L52:
	flw	fa4,-32(s0)
	flw	fa5,-28(s0)
	fmul.s	fa4,fa4,fa5
	flw	fa5,-48(s0)
	fmul.s	fa5,fa4,fa5
	flw	fa4,-44(s0)
	fsub.s	fa5,fa4,fa5
	fsw	fa5,-56(s0)
	flw	fa4,-32(s0)
	flw	fa5,-28(s0)
	fmul.s	fa4,fa4,fa5
	flw	fa5,-44(s0)
	fmul.s	fa5,fa4,fa5
	flw	fa4,-48(s0)
	fadd.s	fa5,fa4,fa5
	fsw	fa5,-60(s0)
	flw	fa4,-32(s0)
	flw	fa5,-20(s0)
	fmul.s	fa5,fa4,fa5
	flw	fa4,-40(s0)
	fsub.s	fa5,fa4,fa5
	fsw	fa5,-40(s0)
	flw	fa5,-56(s0)
	fsw	fa5,-44(s0)
	flw	fa5,-60(s0)
	fsw	fa5,-48(s0)
	flw	fa4,-28(s0)
	la	a5,min_caml_.LC3
	flw	fa5,a5
	fdiv.s	fa5,fa4,fa5
	fsw	fa5,-28(s0)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
min_caml_min_caml_.L47:
	lw	a4,-24(s0)
	lw	a5,-52(s0)
	ble	a4,a5,min_caml_.L53
	flw	fa4,-40(s0)
	flw	fa5,-36(s0)
	fmul.s	fa5,fa4,fa5
	fsw	fa5,-40(s0)
	flw	fa5,-40(s0)
	fmv.s	fa0,fa5
	lw	s0,76(sp)
	addi	sp,sp,80
	jalr	zero, ra, 0
min_caml_cos:
	addi	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	addi	s0,sp,96
	fsw	fa0,-84(s0)
	la	a5,min_caml_.LC0
	flw	fa5,a5
	fsw	fa5,-52(s0)
	li	a5,25
	sw	a5,-56(s0)
	flw	fa5,-52(s0)
	fsgnjn.s	fa5,fa5,fa5
	fmv.s	fa1,fa5
	flw	fa0,-84(s0)
	jal	ra, min_caml_angle_shift
	fsw	fa0,-40(s0)
	flw	fa4,-52(s0)
	la	a5,min_caml_.LC4
	flw	fa5,a5
	fmul.s	fa5,fa4,fa5
	flw	fa4,-40(s0)
	flt.s	a5,fa4,fa5
	beq	a5,zero,min_caml_min_caml_.L81
	flw	fa4,-40(s0)
	flw	fa5,-52(s0)
	fadd.s	fa5,fa4,fa5
	fsw	fa5,-40(s0)
	la	a5,min_caml_.LC2
	flw	fa5,a5
	fsw	fa5,-36(s0)
	jal	zero, min_caml_min_caml_.L66
min_caml_min_caml_.L81:
	flw	fa4,-52(s0)
	la	a5,min_caml_.LC5
	flw	fa5,a5
	fmul.s	fa5,fa4,fa5
	flw	fa4,-40(s0)
	flt.s	a5,fa5,fa4
	beq	a5,zero,min_caml_min_caml_.L82
	flw	fa4,-40(s0)
	flw	fa5,-52(s0)
	fsub.s	fa5,fa4,fa5
	fsw	fa5,-40(s0)
	la	a5,min_caml_.LC2
	flw	fa5,a5
	fsw	fa5,-36(s0)
	jal	zero, min_caml_min_caml_.L66
min_caml_min_caml_.L82:
	la	a5,min_caml_.LC1
	flw	fa5,a5
	fsw	fa5,-36(s0)
min_caml_min_caml_.L66:
	la	a5,min_caml_.LC1
	flw	fa5,a5
	fsw	fa5,-44(s0)
	sw	zero,-48(s0)
	la	a5,min_caml_.LC1
	flw	fa5,a5
	fsw	fa5,-28(s0)
	la	a5,min_caml_angles
	flw	fa5,0(a5)
	fsw	fa5,-20(s0)
	li	a5,1
	sw	a5,-24(s0)
	jal	zero, min_caml_min_caml_.L69
min_caml_min_caml_.L75:
	flw	fa5,-40(s0)
	fmv.w.x	fa4,zero
	flt.s	a5,fa5,fa4
	beq	a5,zero,min_caml_min_caml_.L83
	la	a5,min_caml_.LC2
	flw	fa5,a5
	fsw	fa5,-32(s0)
	jal	zero, min_caml_min_caml_.L72
min_caml_min_caml_.L83:
	la	a5,min_caml_.LC1
	flw	fa5,a5
	fsw	fa5,-32(s0)
min_caml_min_caml_.L72:
	flw	fa4,-32(s0)
	flw	fa5,-28(s0)
	fmul.s	fa5,fa4,fa5
	fsw	fa5,-60(s0)
	flw	fa4,-60(s0)
	flw	fa5,-48(s0)
	fmul.s	fa5,fa4,fa5
	flw	fa4,-44(s0)
	fsub.s	fa5,fa4,fa5
	fsw	fa5,-64(s0)
	flw	fa4,-60(s0)
	flw	fa5,-44(s0)
	fmul.s	fa5,fa4,fa5
	flw	fa4,-48(s0)
	fadd.s	fa5,fa4,fa5
	fsw	fa5,-68(s0)
	flw	fa5,-64(s0)
	fsw	fa5,-44(s0)
	flw	fa5,-68(s0)
	fsw	fa5,-48(s0)
	flw	fa4,-32(s0)
	flw	fa5,-20(s0)
	fmul.s	fa5,fa4,fa5
	flw	fa4,-40(s0)
	fsub.s	fa5,fa4,fa5
	fsw	fa5,-40(s0)
	flw	fa4,-28(s0)
	la	a5,min_caml_.LC3
	flw	fa5,a5
	fdiv.s	fa5,fa4,fa5
	fsw	fa5,-28(s0)
	lw	a4,-24(s0)
	li	a5,59
	ble	a4,a5,min_caml_min_caml_.L73
	flw	fa4,-20(s0)
	la	a5,min_caml_.LC3
	flw	fa5,a5
	fdiv.s	fa5,fa4,fa5
	fsw	fa5,-20(s0)
	jal	zero, min_caml_min_caml_.L74
min_caml_min_caml_.L73:
	la	a5,min_caml_angles
	addi	a4,a5,59
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	flw	fa5,0(a5)
	fsw	fa5,-20(s0)
min_caml_min_caml_.L74:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
min_caml_min_caml_.L69:
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	ble	a4,a5,min_caml_min_caml_.L75
	lw	a5,-56(s0)
	ble	a5,zero,min_caml_min_caml_.L76
	li	a1,33
	lw	a0,-56(s0)
	jal	ra, min_caml_i4_min
	addi	a5,a0,0
	addi	a5,a5,-1
	la	a4,min_caml_kprod
	slli	a5,a5,2
	add	a5,a4,a5
	flw	fa5,0(a5)
	flw	fa4,-44(s0)
	fmul.s	fa5,fa4,fa5
	fsw	fa5,-44(s0)
	li	a1,33
	lw	a0,-56(s0)
	jal	ra, min_caml_i4_min
	addi	a5,a0,0
	addi	a5,a5,-1
	la	a4,min_caml_kprod
	slli	a5,a5,2
	add	a5,a4,a5
	flw	fa5,0(a5)
	flw	fa4,-48(s0)
	fmul.s	fa5,fa4,fa5
	fsw	fa5,-48(s0)
min_caml_min_caml_.L76:
	flw	fa4,-44(s0)
	flw	fa5,-36(s0)
	fmul.s	fa5,fa4,fa5
	fsw	fa5,-44(s0)
	flw	fa4,-48(s0)
	flw	fa5,-36(s0)
	fmul.s	fa5,fa4,fa5
	fsw	fa5,-48(s0)
	flw	fa5,-44(s0)
	fmv.s	fa0,fa5
	lw	ra,92(sp)
	lw	s0,88(sp)
	addi	sp,sp,96
	jalr	zero, ra, 0
min_caml_sin:
	addi	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	addi	s0,sp,96
	fsw	fa0,-84(s0)
	la	a5,min_caml_.LC0
	flw	fa5,a5
	fsw	fa5,-52(s0)
	li	a5,25
	sw	a5,-56(s0)
	flw	fa5,-52(s0)
	fsgnjn.s	fa5,fa5,fa5
	fmv.s	fa1,fa5
	flw	fa0,-84(s0)
	jal	ra, min_caml_angle_shift
	fsw	fa0,-40(s0)
	flw	fa4,-52(s0)
	la	a5,min_caml_.LC4
	flw	fa5,a5
	fmul.s	fa5,fa4,fa5
	flw	fa4,-40(s0)
	flt.s	a5,fa4,fa5
	beq	a5,zero,min_caml_min_caml_.L102
	flw	fa4,-40(s0)
	flw	fa5,-52(s0)
	fadd.s	fa5,fa4,fa5
	fsw	fa5,-40(s0)
	la	a5,min_caml_.LC2
	flw	fa5,a5
	fsw	fa5,-36(s0)
	jal	zero, min_caml_min_caml_.L87
min_caml_min_caml_.L102:
	flw	fa4,-52(s0)
	la	a5,min_caml_.LC5
	flw	fa5,a5
	fmul.s	fa5,fa4,fa5
	flw	fa4,-40(s0)
	flt.s	a5,fa5,fa4
	beq	a5,zero,min_caml_min_caml_.L103
	flw	fa4,-40(s0)
	flw	fa5,-52(s0)
	fsub.s	fa5,fa4,fa5
	fsw	fa5,-40(s0)
	la	a5,min_caml_.LC2
	flw	fa5,a5
	fsw	fa5,-36(s0)
	jal	zero, min_caml_min_caml_.L87
min_caml_min_caml_.L103:
	la	a5,min_caml_.LC1
	flw	fa5,a5
	fsw	fa5,-36(s0)
min_caml_min_caml_.L87:
	la	a5,min_caml_.LC1
	flw	fa5,a5
	fsw	fa5,-44(s0)
	sw	zero,-48(s0)
	la	a5,min_caml_.LC1
	flw	fa5,a5
	fsw	fa5,-28(s0)
	la	a5,min_caml_angles
	flw	fa5,0(a5)
	fsw	fa5,-20(s0)
	li	a5,1
	sw	a5,-24(s0)
	jal	zero, min_caml_min_caml_.L90
min_caml_min_caml_.L96:
	flw	fa5,-40(s0)
	fmv.w.x	fa4,zero
	flt.s	a5,fa5,fa4
	beq	a5,zero,min_caml_min_caml_.L104
	la	a5,min_caml_.LC2
	flw	fa5,a5
	fsw	fa5,-32(s0)
	jal	zero, min_caml_min_caml_.L93
min_caml_min_caml_.L104:
	la	a5,min_caml_.LC1
	flw	fa5,a5
	fsw	fa5,-32(s0)
min_caml_min_caml_.L93:
	flw	fa4,-32(s0)
	flw	fa5,-28(s0)
	fmul.s	fa5,fa4,fa5
	fsw	fa5,-60(s0)
	flw	fa4,-60(s0)
	flw	fa5,-48(s0)
	fmul.s	fa5,fa4,fa5
	flw	fa4,-44(s0)
	fsub.s	fa5,fa4,fa5
	fsw	fa5,-64(s0)
	flw	fa4,-60(s0)
	flw	fa5,-44(s0)
	fmul.s	fa5,fa4,fa5
	flw	fa4,-48(s0)
	fadd.s	fa5,fa4,fa5
	fsw	fa5,-68(s0)
	flw	fa5,-64(s0)
	fsw	fa5,-44(s0)
	flw	fa5,-68(s0)
	fsw	fa5,-48(s0)
	flw	fa4,-32(s0)
	flw	fa5,-20(s0)
	fmul.s	fa5,fa4,fa5
	flw	fa4,-40(s0)
	fsub.s	fa5,fa4,fa5
	fsw	fa5,-40(s0)
	flw	fa4,-28(s0)
	la	a5,min_caml_.LC3
	flw	fa5,a5
	fdiv.s	fa5,fa4,fa5
	fsw	fa5,-28(s0)
	lw	a4,-24(s0)
	li	a5,59
	ble	a4,a5,min_caml_min_caml_.L94
	flw	fa4,-20(s0)
	la	a5,min_caml_.LC3
	flw	fa5,a5
	fdiv.s	fa5,fa4,fa5
	fsw	fa5,-20(s0)
	jal	zero, min_caml_min_caml_.L95
min_caml_min_caml_.L94:
	la	a5,min_caml_angles
	addi	a4,a5,59
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	flw	fa5,0(a5)
	fsw	fa5,-20(s0)
min_caml_min_caml_.L95:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
min_caml_min_caml_.L90:
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	ble	a4,a5,min_caml_min_caml_.L96
	lw	a5,-56(s0)
	ble	a5,zero,min_caml_min_caml_.L97
	li	a1,33
	lw	a0,-56(s0)
	jal	ra, min_caml_i4_min
	addi	a5,a0,0
	addi	a5,a5,-1
	la	a4,min_caml_kprod
	slli	a5,a5,2
	add	a5,a4,a5
	flw	fa5,0(a5)
	flw	fa4,-44(s0)
	fmul.s	fa5,fa4,fa5
	fsw	fa5,-44(s0)
	li	a1,33
	lw	a0,-56(s0)
	jal	ra, min_caml_i4_min
	addi	a5,a0,0
	addi	a5,a5,-1
	la	a4,min_caml_kprod
	slli	a5,a5,2
	add	a5,a4,a5
	flw	fa5,0(a5)
	flw	fa4,-48(s0)
	fmul.s	fa5,fa4,fa5
	fsw	fa5,-48(s0)
min_caml_min_caml_.L97:
	flw	fa4,-44(s0)
	flw	fa5,-36(s0)
	fmul.s	fa5,fa4,fa5
	fsw	fa5,-44(s0)
	flw	fa4,-48(s0)
	flw	fa5,-36(s0)
	fmul.s	fa5,fa4,fa5
	fsw	fa5,-48(s0)
	flw	fa5,-48(s0)
	fmv.s	fa0,fa5
	lw	ra,92(sp)
	lw	s0,88(sp)
	addi	sp,sp,96
	jalr	zero, ra, 0

.section	.data
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
