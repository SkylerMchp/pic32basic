	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.globl	OledRopSet
.LFB18 = .
	.file 1 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/11_cpu/lab11_cache_solution/oledgrph.c"
	.loc 1 904 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledRopSet
	.type	OledRopSet, @function
OledRopSet:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL0 = .
	andi	$5,$5,0x00ff
	andi	$6,$6,0x00ff
	.loc 1 906 0
	nor	$2,$0,$6
	and	$5,$2,$5
.LVL1 = .
	and	$2,$4,$6
	.loc 1 908 0
	j	$31
	or	$2,$5,$2

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledRopSet
	.cfi_endproc
.LFE18:
	.size	OledRopSet, .-OledRopSet
	.align	2
	.globl	OledRopOr
.LFB19 = .
	.loc 1 925 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledRopOr
	.type	OledRopOr, @function
OledRopOr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL2 = .
	andi	$5,$5,0x00ff
	andi	$6,$6,0x00ff
	.loc 1 927 0
	and	$2,$4,$6
	.loc 1 929 0
	j	$31
	or	$2,$5,$2

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledRopOr
	.cfi_endproc
.LFE19:
	.size	OledRopOr, .-OledRopOr
	.align	2
	.globl	OledRopAnd
.LFB20 = .
	.loc 1 946 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledRopAnd
	.type	OledRopAnd, @function
OledRopAnd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL3 = .
	andi	$6,$6,0x00ff
	.loc 1 948 0
	and	$2,$5,$6
	.loc 1 950 0
	j	$31
	and	$2,$4,$2

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledRopAnd
	.cfi_endproc
.LFE20:
	.size	OledRopAnd, .-OledRopAnd
	.align	2
	.globl	OledRopXor
.LFB21 = .
	.loc 1 967 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledRopXor
	.type	OledRopXor, @function
OledRopXor:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL4 = .
	andi	$5,$5,0x00ff
	andi	$6,$6,0x00ff
	.loc 1 969 0
	and	$2,$4,$6
	.loc 1 971 0
	j	$31
	xor	$2,$5,$2

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledRopXor
	.cfi_endproc
.LFE21:
	.size	OledRopXor, .-OledRopXor
	.align	2
	.globl	OledMoveUp
.LFB22 = .
	.loc 1 992 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledMoveUp
	.type	OledMoveUp, @function
OledMoveUp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	.loc 1 996 0
	lw	$2,%gp_rel(bnOledCur)($28)
	addiu	$2,$2,-1
	.loc 1 1001 0
	bltzl	$2,.L6
	li	$2,7			# 0x7

	.loc 1 996 0
	j	$31
	sw	$2,%gp_rel(bnOledCur)($28)

.L6:
	.loc 1 1002 0
	sw	$2,%gp_rel(bnOledCur)($28)
	.loc 1 1003 0
	lw	$2,%gp_rel(pbOledCur)($28)
	addiu	$2,$2,-128
	.loc 1 1007 0
	lui	$3,%hi(rgbOledBmp)
	addiu	$3,$3,%lo(rgbOledBmp)
	sltu	$3,$2,$3
	beql	$3,$0,.L8
	sw	$2,%gp_rel(pbOledCur)($28)

.L8:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledMoveUp
	.cfi_endproc
.LFE22:
	.size	OledMoveUp, .-OledMoveUp
	.align	2
	.globl	OledMoveDown
.LFB23 = .
	.loc 1 1032 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledMoveDown
	.type	OledMoveDown, @function
OledMoveDown:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	.loc 1 1036 0
	lw	$2,%gp_rel(bnOledCur)($28)
	addiu	$2,$2,1
	.loc 1 1041 0
	slt	$3,$2,8
	beql	$3,$0,.L10
	sw	$0,%gp_rel(bnOledCur)($28)

	.loc 1 1036 0
	j	$31
	sw	$2,%gp_rel(bnOledCur)($28)

.L10:
	.loc 1 1043 0
	lw	$2,%gp_rel(pbOledCur)($28)
	addiu	$2,$2,128
	.loc 1 1047 0
	lui	$3,%hi(rgbOledBmp+512)
	addiu	$3,$3,%lo(rgbOledBmp+512)
	sltu	$3,$2,$3
	bnel	$3,$0,.L12
	sw	$2,%gp_rel(pbOledCur)($28)

.L12:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledMoveDown
	.cfi_endproc
.LFE23:
	.size	OledMoveDown, .-OledMoveDown
	.align	2
	.globl	OledMoveLeft
.LFB24 = .
	.loc 1 1072 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledMoveLeft
	.type	OledMoveLeft, @function
OledMoveLeft:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	.loc 1 1076 0
	lw	$2,%gp_rel(pbOledCur)($28)
	lui	$3,%hi(rgbOledBmp)
	addiu	$3,$3,%lo(rgbOledBmp)
	subu	$3,$2,$3
	andi	$3,$3,0x7f
	beq	$3,$0,.L15
	addiu	$2,$2,-1

	.loc 1 1082 0
	sw	$2,%gp_rel(pbOledCur)($28)
.L15:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledMoveLeft
	.cfi_endproc
.LFE24:
	.size	OledMoveLeft, .-OledMoveLeft
	.align	2
	.globl	OledMoveRight
.LFB25 = .
	.loc 1 1105 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledMoveRight
	.type	OledMoveRight, @function
OledMoveRight:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	.loc 1 1109 0
	lw	$2,%gp_rel(pbOledCur)($28)
	lui	$4,%hi(rgbOledBmp)
	addiu	$4,$4,%lo(rgbOledBmp)
	subu	$4,$2,$4
	andi	$4,$4,0x7f
	li	$3,127			# 0x7f
	beq	$4,$3,.L18
	addiu	$2,$2,1

	.loc 1 1115 0
	sw	$2,%gp_rel(pbOledCur)($28)
.L18:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledMoveRight
	.cfi_endproc
.LFE25:
	.size	OledMoveRight, .-OledMoveRight
	.align	2
	.globl	OledGetPos
.LFB3 = .
	.loc 1 153 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledGetPos
	.type	OledGetPos, @function
OledGetPos:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL5 = .
	.loc 1 155 0
	lw	$2,%gp_rel(xcoOledCur)($28)
	sw	$2,0($4)
	.loc 1 156 0
	lw	$2,%gp_rel(ycoOledCur)($28)
	j	$31
	sw	$2,0($5)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledGetPos
	.cfi_endproc
.LFE3:
	.size	OledGetPos, .-OledGetPos
	.align	2
	.globl	OledSetDrawColor
.LFB4 = .
	.loc 1 178 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledSetDrawColor
	.type	OledSetDrawColor, @function
OledSetDrawColor:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL6 = .
	.loc 1 180 0
	andi	$4,$4,0x1
.LVL7 = .
	j	$31
	sb	$4,%gp_rel(clrOledCur)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledSetDrawColor
	.cfi_endproc
.LFE4:
	.size	OledSetDrawColor, .-OledSetDrawColor
	.align	2
	.globl	OledGetStdPattern
.LFB5 = .
	.loc 1 203 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledGetStdPattern
	.type	OledGetStdPattern, @function
OledGetStdPattern:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL8 = .
	.loc 1 205 0
	sll	$4,$4,3
.LVL9 = .
	.loc 1 207 0
	lui	$2,%hi(rgbFillPat)
	addiu	$2,$2,%lo(rgbFillPat)
	j	$31
	addu	$2,$2,$4

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledGetStdPattern
	.cfi_endproc
.LFE5:
	.size	OledGetStdPattern, .-OledGetStdPattern
	.align	2
	.globl	OledSetFillPattern
.LFB6 = .
	.loc 1 228 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledSetFillPattern
	.type	OledSetFillPattern, @function
OledSetFillPattern:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL10 = .
	.loc 1 230 0
	j	$31
	sw	$4,%gp_rel(pbOledPatCur)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledSetFillPattern
	.cfi_endproc
.LFE6:
	.size	OledSetFillPattern, .-OledSetFillPattern
	.align	2
	.globl	OledSetDrawMode
.LFB7 = .
	.loc 1 252 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledSetDrawMode
	.type	OledSetDrawMode, @function
OledSetDrawMode:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL11 = .
	.loc 1 256 0
	li	$2,1			# 0x1
	beq	$4,$2,.L25
	sw	$4,%gp_rel(modOledCur)($28)

	slt	$2,$4,2
	beq	$2,$0,.L26
	li	$2,2			# 0x2

	beq	$4,$0,.L27
	lui	$2,%hi(OledRopSet)

	.loc 1 274 0
	j	.L32
	sw	$0,%gp_rel(modOledCur)($28)

.L26:
	.loc 1 256 0
	beq	$4,$2,.L28
	li	$2,3			# 0x3

	beq	$4,$2,.L29
	lui	$2,%hi(OledRopXor)

	.loc 1 274 0
	j	.L24
	sw	$0,%gp_rel(modOledCur)($28)

.L27:
	.loc 1 258 0
	addiu	$2,$2,%lo(OledRopSet)
	.loc 1 259 0
	j	$31
	sw	$2,%gp_rel(pfnDoRop)($28)

.L25:
	.loc 1 262 0
	lui	$2,%hi(OledRopOr)
	addiu	$2,$2,%lo(OledRopOr)
	.loc 1 263 0
	j	$31
	sw	$2,%gp_rel(pfnDoRop)($28)

.L28:
	.loc 1 266 0
	lui	$2,%hi(OledRopAnd)
	addiu	$2,$2,%lo(OledRopAnd)
	.loc 1 267 0
	j	$31
	sw	$2,%gp_rel(pfnDoRop)($28)

.L29:
	.loc 1 270 0
	addiu	$2,$2,%lo(OledRopXor)
	.loc 1 271 0
	j	$31
	sw	$2,%gp_rel(pfnDoRop)($28)

.L24:
	.loc 1 275 0
	lui	$2,%hi(OledRopSet)
.L32:
	addiu	$2,$2,%lo(OledRopSet)
	j	$31
	sw	$2,%gp_rel(pfnDoRop)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledSetDrawMode
	.cfi_endproc
.LFE7:
	.size	OledSetDrawMode, .-OledSetDrawMode
	.align	2
	.globl	OledGetDrawMode
.LFB8 = .
	.loc 1 298 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledGetDrawMode
	.type	OledGetDrawMode, @function
OledGetDrawMode:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	.loc 1 302 0
	j	$31
	lw	$2,%gp_rel(modOledCur)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledGetDrawMode
	.cfi_endproc
.LFE8:
	.size	OledGetDrawMode, .-OledGetDrawMode
	.align	2
	.globl	OledDrawPixel
.LFB9 = .
	.loc 1 323 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledDrawPixel
	.type	OledDrawPixel, @function
OledDrawPixel:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI0 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)
	sw	$16,16($sp)
	.cfi_offset 31, -4
	.cfi_offset 16, -8
	.loc 1 325 0
	lw	$2,%gp_rel(bnOledCur)($28)
	lw	$16,%gp_rel(pbOledCur)($28)
	lbu	$4,%gp_rel(clrOledCur)($28)
	sll	$4,$4,$2
	li	$3,1			# 0x1
	sll	$6,$3,$2
	andi	$4,$4,0x00ff
	lbu	$5,0($16)
	lw	$2,%gp_rel(pfnDoRop)($28)
	jalr	$2
	andi	$6,$6,0x00ff

.LVL12 = .
	sb	$2,0($16)
	.loc 1 327 0
	lw	$31,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledDrawPixel
	.cfi_endproc
.LFE9:
	.size	OledDrawPixel, .-OledDrawPixel
	.align	2
	.globl	OledGetPixel
.LFB10 = .
	.loc 1 347 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledGetPixel
	.type	OledGetPixel, @function
OledGetPixel:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	.loc 1 349 0
	lw	$2,%gp_rel(pbOledCur)($28)
	lbu	$3,0($2)
	lw	$2,%gp_rel(bnOledCur)($28)
	sra	$2,$3,$2
	.loc 1 351 0
	j	$31
	andi	$2,$2,0x1

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledGetPixel
	.cfi_endproc
.LFE10:
	.size	OledGetPixel, .-OledGetPixel
	.align	2
	.globl	OledGetBmp
.LFB14 = .
	.loc 1 622 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledGetBmp
	.type	OledGetBmp, @function
OledGetBmp:
	.frame	$sp,8,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL13 = .
	addiu	$sp,$sp,-8
.LCFI1 = .
	.cfi_def_cfa_offset 8
	sw	$17,4($sp)
	sw	$16,0($sp)
	.cfi_offset 17, -4
	.cfi_offset 16, -8
	.loc 1 638 0
	lw	$2,%gp_rel(xcoOledCur)($28)
.LVL14 = .
	.loc 1 639 0
	addu	$3,$2,$4
.LVL15 = .
	slt	$15,$3,128
	li	$7,127			# 0x7f
	movn	$7,$3,$15
.LVL16 = .
	.loc 1 644 0
	lw	$9,%gp_rel(ycoOledCur)($28)
.LVL17 = .
	.loc 1 645 0
	addu	$5,$9,$5
.LVL18 = .
	slt	$14,$5,32
	li	$3,31			# 0x1f
	movn	$3,$5,$14
	move	$14,$3
.LVL19 = .
	.loc 1 651 0
	addiu	$3,$9,7
.LVL20 = .
	slt	$5,$9,0
	movz	$3,$9,$5
	sra	$3,$3,3
	sll	$3,$3,7
	addu	$3,$3,$2
	lui	$12,%hi(rgbOledBmp)
	addiu	$12,$12,%lo(rgbOledBmp)
	addu	$12,$12,$3
.LVL21 = .
	.loc 1 654 0
	slt	$3,$9,$14
	beq	$3,$0,.L37
	andi	$10,$9,0x7

	.loc 1 656 0
	addiu	$3,$14,-1
	addiu	$16,$14,6
	slt	$5,$3,0
	movz	$16,$3,$5
	sra	$16,$16,3
	.loc 1 657 0
	andi	$3,$3,0x7
	addiu	$3,$3,1
	li	$25,1			# 0x1
	sll	$25,$25,$3
	addiu	$25,$25,-1
	andi	$25,$25,0x00ff
	subu	$13,$7,$2
	addu	$13,$12,$13
	.loc 1 660 0
	li	$24,255			# 0xff
	.loc 1 671 0
	slt	$15,$2,$7
.LVL22 = .
	.loc 1 683 0
	li	$11,8			# 0x8
	subu	$11,$11,$10
.LVL23 = .
.L45:
	.loc 1 656 0
	addiu	$5,$9,7
	slt	$2,$9,0
	movz	$5,$9,$2
	sra	$5,$5,3
	.loc 1 660 0
	xor	$5,$5,$16
	move	$2,$24
	movz	$2,$25,$5
.LVL24 = .
	.loc 1 670 0
	beq	$10,$0,.L40
	move	$5,$2

	.loc 1 679 0
	bnel	$15,$0,.L41
	move	$17,$13

	.loc 1 692 0
	j	.L48
	addiu	$9,$9,8

.L40:
	.loc 1 671 0
	beq	$15,$0,.L42
	move	$8,$13

	move	$3,$6
	move	$2,$12
.LVL25 = .
.L43:
	.loc 1 672 0
	lbu	$7,0($2)
	and	$7,$5,$7
	sb	$7,0($3)
.LVL26 = .
	.loc 1 675 0
	addiu	$2,$2,1
.LVL27 = .
	.loc 1 671 0
	bne	$2,$8,.L43
	addiu	$3,$3,1

	j	.L48
	addiu	$9,$9,8

.LVL28 = .
.L41:
	.loc 1 679 0
	move	$3,$6
	move	$2,$12
.LVL29 = .
.L44:
	.loc 1 683 0
	lbu	$8,128($2)
	sll	$8,$8,$11
	.loc 1 682 0
	lbu	$7,0($2)
	sra	$7,$7,$10
	or	$7,$8,$7
	and	$7,$7,$5
	sb	$7,0($3)
.LVL30 = .
	.loc 1 686 0
	addiu	$2,$2,1
.LVL31 = .
	.loc 1 679 0
	bne	$2,$17,.L44
	addiu	$3,$3,1

.LVL32 = .
.L42:
	.loc 1 692 0
	addiu	$9,$9,8
.LVL33 = .
.L48:
	.loc 1 693 0
	addiu	$12,$12,128
.LVL34 = .
	.loc 1 694 0
	addu	$6,$6,$4
.LVL35 = .
	.loc 1 654 0
	slt	$2,$9,$14
	bne	$2,$0,.L45
	addiu	$13,$13,128

.LVL36 = .
.L37:
	.loc 1 698 0
	lw	$17,4($sp)
	lw	$16,0($sp)
	j	$31
	addiu	$sp,$sp,8

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledGetBmp
	.cfi_endproc
.LFE14:
	.size	OledGetBmp, .-OledGetBmp
	.align	2
	.globl	OledPutBmp
.LFB15 = .
	.loc 1 721 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledPutBmp
	.type	OledPutBmp, @function
OledPutBmp:
	.frame	$sp,88,$31		# vars= 32, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL37 = .
	addiu	$sp,$sp,-88
.LCFI2 = .
	.cfi_def_cfa_offset 88
	sw	$31,84($sp)
	sw	$fp,80($sp)
	sw	$23,76($sp)
	sw	$22,72($sp)
	sw	$21,68($sp)
	sw	$20,64($sp)
	sw	$19,60($sp)
	sw	$18,56($sp)
	sw	$17,52($sp)
	sw	$16,48($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 23, -12
	.cfi_offset 22, -16
	.cfi_offset 21, -20
	.cfi_offset 20, -24
	.cfi_offset 19, -28
	.cfi_offset 18, -32
	.cfi_offset 17, -36
	.cfi_offset 16, -40
	move	$23,$4
	sw	$6,96($sp)
	.loc 1 742 0
	lw	$3,%gp_rel(xcoOledCur)($28)
.LVL38 = .
	.loc 1 743 0
	addu	$2,$3,$4
.LVL39 = .
	slt	$20,$2,128
	li	$4,127			# 0x7f
.LVL40 = .
	movn	$4,$2,$20
	move	$20,$4
.LVL41 = .
	.loc 1 748 0
	lw	$2,%gp_rel(ycoOledCur)($28)
.LVL42 = .
	.loc 1 749 0
	addu	$5,$2,$5
.LVL43 = .
	slt	$6,$5,32
.LVL44 = .
	li	$4,31			# 0x1f
.LVL45 = .
	movn	$4,$5,$6
	sw	$4,28($sp)
.LVL46 = .
	.loc 1 754 0
	andi	$22,$2,0x7
.LVL47 = .
	.loc 1 755 0
	li	$5,1			# 0x1
	sll	$5,$5,$22
	addiu	$5,$5,-1
	andi	$5,$5,0x00ff
.LVL48 = .
	.loc 1 756 0
	nor	$4,$0,$5
.LVL49 = .
	andi	$7,$4,0x00ff
.LVL50 = .
	.loc 1 757 0
	addiu	$4,$2,7
.LVL51 = .
	slt	$6,$2,0
	movz	$4,$2,$6
	sra	$4,$4,3
	sll	$4,$4,7
	addu	$4,$4,$3
	lui	$6,%hi(rgbOledBmp)
	addiu	$6,$6,%lo(rgbOledBmp)
	addu	$fp,$6,$4
.LVL52 = .
	.loc 1 761 0
	lw	$6,28($sp)
	slt	$4,$2,$6
	beq	$4,$0,.L49
	addiu	$4,$6,-1

	.loc 1 767 0
	addiu	$6,$6,6
	slt	$8,$4,0
	movz	$6,$4,$8
	sra	$6,$6,3
	sw	$6,32($sp)
	.loc 1 768 0
	andi	$4,$4,0x7
	addiu	$4,$4,1
	li	$6,1			# 0x1
	sll	$4,$6,$4
	addiu	$4,$4,-1
	andi	$4,$4,0x00ff
	sw	$4,36($sp)
	subu	$19,$3,$fp
	.loc 1 759 0
	li	$21,1			# 0x1
	.loc 1 774 0
	nor	$5,$0,$5
.LVL53 = .
	sw	$5,40($sp)
	.loc 1 785 0
	slt	$3,$3,$20
.LVL54 = .
	sw	$3,44($sp)
	.loc 1 796 0
	li	$3,8			# 0x8
	subu	$3,$3,$22
	sw	$3,20($sp)
	nor	$7,$0,$7
.LVL55 = .
	sw	$7,24($sp)
.LVL56 = .
.L60:
	.loc 1 767 0
	addiu	$3,$2,7
	slt	$4,$2,0
	movn	$2,$3,$4
.LVL57 = .
	sra	$2,$2,3
	sw	$2,16($sp)
	.loc 1 771 0
	lw	$8,32($sp)
	xor	$17,$2,$8
	li	$2,255			# 0xff
	lw	$3,36($sp)
.LVL58 = .
	movn	$3,$2,$17
	move	$17,$3
.LVL59 = .
	.loc 1 774 0
	lw	$4,40($sp)
	and	$2,$3,$4
.LVL60 = .
	.loc 1 784 0
	beq	$22,$0,.L53
	movn	$17,$2,$21

	.loc 1 793 0
	lw	$18,96($sp)
	lw	$6,44($sp)
	bne	$6,$0,.L62
	move	$16,$fp

	.loc 1 808 0
	j	.L64
	lw	$8,16($sp)

.L53:
	.loc 1 785 0
	lw	$8,44($sp)
	beq	$8,$0,.L64
	lw	$8,16($sp)

	lw	$18,96($sp)
	move	$16,$fp
.LVL61 = .
.L56:
	.loc 1 786 0
	lbu	$4,0($18)
	lbu	$5,0($16)
	lw	$2,%gp_rel(pfnDoRop)($28)
	jalr	$2
	move	$6,$17

.LVL62 = .
	sb	$2,0($16)
.LVL63 = .
	.loc 1 788 0
	addiu	$16,$16,1
.LVL64 = .
	addu	$2,$16,$19
	.loc 1 785 0
	slt	$2,$2,$20
	bne	$2,$0,.L56
	addiu	$18,$18,1

	j	.L64
	lw	$8,16($sp)

.L62:
	.loc 1 794 0
	lbu	$4,0($18)
.LVL65 = .
	.loc 1 795 0
	beq	$21,$0,.L57
	sll	$4,$4,$22

.LVL66 = .
	.loc 1 794 0
	j	.L58
	andi	$4,$4,0x00ff

.LVL67 = .
.L57:
	subu	$2,$18,$23
	.loc 1 796 0
	lbu	$2,0($2)
	lw	$3,20($sp)
	sra	$2,$2,$3
	lw	$6,24($sp)
	and	$2,$2,$6
	or	$4,$2,$4
.LVL68 = .
	andi	$4,$4,0x00ff
.LVL69 = .
.L58:
	.loc 1 799 0
	and	$4,$4,$17
.LVL70 = .
	lbu	$5,0($16)
	lw	$2,%gp_rel(pfnDoRop)($28)
	jalr	$2
	move	$6,$17

.LVL71 = .
	sb	$2,0($16)
	.loc 1 801 0
	addiu	$16,$16,1
.LVL72 = .
	addu	$2,$16,$19
	.loc 1 793 0
	slt	$2,$2,$20
	bne	$2,$0,.L62
	addiu	$18,$18,1

.LVL73 = .
	.loc 1 808 0
	lw	$8,16($sp)
.L64:
	addiu	$2,$8,1
	sll	$2,$2,3
.LVL74 = .
	.loc 1 809 0
	addiu	$fp,$fp,128
.LVL75 = .
	.loc 1 810 0
	lw	$3,96($sp)
	addu	$3,$3,$23
	sw	$3,96($sp)
.LVL76 = .
	.loc 1 761 0
	lw	$4,28($sp)
	slt	$3,$2,$4
.LVL77 = .
	beq	$3,$0,.L49
	addiu	$19,$19,-128

	.loc 1 811 0
	j	.L60
	move	$21,$0

.LVL78 = .
.L49:
	.loc 1 815 0
	lw	$31,84($sp)
	lw	$fp,80($sp)
.LVL79 = .
	lw	$23,76($sp)
.LVL80 = .
	lw	$22,72($sp)
.LVL81 = .
	lw	$21,68($sp)
	lw	$20,64($sp)
.LVL82 = .
	lw	$19,60($sp)
	lw	$18,56($sp)
	lw	$17,52($sp)
	lw	$16,48($sp)
.LVL83 = .
	j	$31
	addiu	$sp,$sp,88

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledPutBmp
	.cfi_endproc
.LFE15:
	.size	OledPutBmp, .-OledPutBmp
	.align	2
	.globl	OledDrawChar
.LFB16 = .
	.loc 1 836 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledDrawChar
	.type	OledDrawChar, @function
OledDrawChar:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL84 = .
	seb	$4,$4
	.loc 1 841 0
	bltz	$4,.L71
	slt	$2,$4,32

	.loc 1 836 0
	addiu	$sp,$sp,-24
.LCFI3 = .
	.cfi_def_cfa_offset 24
	.loc 1 845 0
	beq	$2,$0,.L67
	sw	$31,20($sp)

	.cfi_offset 31, -4
	.loc 1 846 0
	sll	$4,$4,3
.LVL85 = .
	lw	$6,%gp_rel(pbOledFontUser)($28)
.LVL86 = .
	j	.L68
	addu	$6,$6,$4

.LVL87 = .
.L67:
	.loc 1 849 0
	addiu	$4,$4,-32
	sll	$4,$4,3
	lw	$6,%gp_rel(pbOledFontCur)($28)
	addu	$6,$6,$4
.LVL88 = .
.L68:
	.loc 1 854 0
	lw	$4,%gp_rel(dxcoOledFontCur)($28)
	jal	OledPutBmp
	lw	$5,%gp_rel(dycoOledFontCur)($28)

.LVL89 = .
	.loc 1 856 0
	lw	$2,%gp_rel(dxcoOledFontCur)($28)
	lw	$3,%gp_rel(xcoOledCur)($28)
	addu	$2,$3,$2
	sw	$2,%gp_rel(xcoOledCur)($28)
	.loc 1 858 0
	lw	$31,20($sp)
	addiu	$sp,$sp,24
.L71:
.LCFI4 = .
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledDrawChar
	.cfi_endproc
.LFE16:
	.size	OledDrawChar, .-OledDrawChar
	.align	2
	.globl	OledDrawString
.LFB17 = .
	.loc 1 879 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledDrawString
	.type	OledDrawString, @function
OledDrawString:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL90 = .
	addiu	$sp,$sp,-24
.LCFI5 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)
	sw	$16,16($sp)
	.cfi_offset 31, -4
	.cfi_offset 16, -8
	move	$16,$4
	.loc 1 881 0
	lb	$4,0($4)
.LVL91 = .
	beq	$4,$0,.L76
	lw	$31,20($sp)

.L74:
	.loc 1 882 0
	jal	OledDrawChar
	addiu	$16,$16,1

.LVL92 = .
	.loc 1 881 0
	lb	$4,0($16)
	bne	$4,$0,.L74
	lw	$31,20($sp)

.L76:
	.loc 1 885 0
	lw	$16,16($sp)
.LVL93 = .
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledDrawString
	.cfi_endproc
.LFE17:
	.size	OledDrawString, .-OledDrawString
	.align	2
	.globl	OledClampXco
.LFB26 = .
	.loc 1 1137 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledClampXco
	.type	OledClampXco, @function
OledClampXco:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL94 = .
	slt	$2,$4,0
	movn	$4,$0,$2
.LVL95 = .
	slt	$3,$4,128
	.loc 1 1147 0
	li	$2,127			# 0x7f
	j	$31
	movn	$2,$4,$3

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledClampXco
	.cfi_endproc
.LFE26:
	.size	OledClampXco, .-OledClampXco
	.align	2
	.globl	OledClampYco
.LFB27 = .
	.loc 1 1167 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledClampYco
	.type	OledClampYco, @function
OledClampYco:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL96 = .
	slt	$2,$4,0
	movn	$4,$0,$2
.LVL97 = .
	slt	$3,$4,32
	.loc 1 1177 0
	li	$2,31			# 0x1f
	j	$31
	movn	$2,$4,$3

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledClampYco
	.cfi_endproc
.LFE27:
	.size	OledClampYco, .-OledClampYco
	.align	2
	.globl	OledMoveTo
.LFB2 = .
	.loc 1 114 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledMoveTo
	.type	OledMoveTo, @function
OledMoveTo:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL98 = .
	addiu	$sp,$sp,-32
.LCFI6 = .
	.cfi_def_cfa_offset 32
	sw	$31,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	.cfi_offset 31, -4
	.cfi_offset 17, -8
	.cfi_offset 16, -12
	.loc 1 118 0
	jal	OledClampXco
	move	$17,$5

.LVL99 = .
	move	$16,$2
.LVL100 = .
	.loc 1 119 0
	jal	OledClampYco
	move	$4,$17

.LVL101 = .
	move	$3,$2
.LVL102 = .
	.loc 1 123 0
	sw	$16,%gp_rel(xcoOledCur)($28)
	.loc 1 124 0
	sw	$2,%gp_rel(ycoOledCur)($28)
	.loc 1 129 0
	addiu	$2,$2,7
.LVL103 = .
	slt	$4,$3,0
	movz	$2,$3,$4
	sra	$2,$2,3
	sll	$2,$2,7
	addu	$16,$2,$16
.LVL104 = .
	lui	$2,%hi(rgbOledBmp)
	addiu	$2,$2,%lo(rgbOledBmp)
	addu	$16,$2,$16
	sw	$16,%gp_rel(pbOledCur)($28)
	.loc 1 130 0
	andi	$3,$3,0x7
.LVL105 = .
	sw	$3,%gp_rel(bnOledCur)($28)
	.loc 1 132 0
	lw	$31,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledMoveTo
	.cfi_endproc
.LFE2:
	.size	OledMoveTo, .-OledMoveTo
	.align	2
	.globl	OledLineTo
.LFB11 = .
	.loc 1 373 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledLineTo
	.type	OledLineTo, @function
OledLineTo:
	.frame	$sp,56,$31		# vars= 0, regs= 9/0, args= 16, gp= 0
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL106 = .
	addiu	$sp,$sp,-56
.LCFI7 = .
	.cfi_def_cfa_offset 56
	sw	$31,52($sp)
	sw	$23,48($sp)
	sw	$22,44($sp)
	sw	$21,40($sp)
	sw	$20,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	.cfi_offset 31, -4
	.cfi_offset 23, -8
	.cfi_offset 22, -12
	.cfi_offset 21, -16
	.cfi_offset 20, -20
	.cfi_offset 19, -24
	.cfi_offset 18, -28
	.cfi_offset 17, -32
	.cfi_offset 16, -36
	.loc 1 385 0
	jal	OledClampXco
	move	$16,$5

.LVL107 = .
	move	$22,$2
.LVL108 = .
	.loc 1 386 0
	jal	OledClampYco
	move	$4,$16

.LVL109 = .
	move	$21,$2
.LVL110 = .
	.loc 1 390 0
	lw	$3,%gp_rel(xcoOledCur)($28)
	subu	$3,$22,$3
.LVL111 = .
	.loc 1 391 0
	lw	$2,%gp_rel(ycoOledCur)($28)
.LVL112 = .
	subu	$2,$21,$2
.LVL113 = .
	.loc 1 392 0
	sra	$4,$3,31
	xor	$19,$4,$3
	subu	$19,$19,$4
	sra	$4,$2,31
	xor	$18,$4,$2
	subu	$18,$18,$4
	slt	$4,$19,$18
	bne	$4,$0,.L82
	nop

.LVL114 = .
	.loc 1 397 0
	bltz	$3,.L89
	lui	$20,%hi(OledMoveRight)

	.loc 1 398 0
	j	.L83
	addiu	$20,$20,%lo(OledMoveRight)

.L89:
	.loc 1 401 0
	lui	$20,%hi(OledMoveLeft)
	addiu	$20,$20,%lo(OledMoveLeft)
.L83:
.LVL115 = .
	.loc 1 404 0
	bltz	$2,.L90
	move	$2,$19

.LVL116 = .
	.loc 1 396 0
	move	$19,$18
.LVL117 = .
	.loc 1 395 0
	move	$18,$2
.LVL118 = .
	.loc 1 405 0
	lui	$23,%hi(OledMoveDown)
	j	.L84
	addiu	$23,$23,%lo(OledMoveDown)

.LVL119 = .
.L82:
	.loc 1 416 0
	bltz	$2,.L91
	lui	$20,%hi(OledMoveDown)

	.loc 1 417 0
	j	.L85
	addiu	$20,$20,%lo(OledMoveDown)

.L91:
	.loc 1 420 0
	lui	$20,%hi(OledMoveUp)
	addiu	$20,$20,%lo(OledMoveUp)
.L85:
.LVL120 = .
	.loc 1 423 0
	bltz	$3,.L92
	lui	$23,%hi(OledMoveRight)

	.loc 1 424 0
	j	.L84
	addiu	$23,$23,%lo(OledMoveRight)

.LVL121 = .
.L90:
	.loc 1 396 0
	move	$19,$18
.LVL122 = .
	.loc 1 395 0
	move	$18,$2
.LVL123 = .
	.loc 1 408 0
	lui	$23,%hi(OledMoveUp)
	j	.L84
	addiu	$23,$23,%lo(OledMoveUp)

.LVL124 = .
.L92:
	.loc 1 427 0
	lui	$23,%hi(OledMoveLeft)
	addiu	$23,$23,%lo(OledMoveLeft)
.LVL125 = .
.L84:
	.loc 1 439 0
	srl	$16,$18,31
	addu	$16,$16,$18
.LVL126 = .
	.loc 1 441 0
	blez	$18,.L86
	sra	$16,$16,1

	.loc 1 440 0
	move	$17,$18
.LVL127 = .
.L88:
	.loc 1 442 0
	jal	OledDrawPixel
	addu	$16,$16,$19

.LVL128 = .
	.loc 1 443 0
	jalr	$20
	nop

.LVL129 = .
	.loc 1 445 0
	slt	$3,$18,$16
	beql	$3,$0,.L94
	addiu	$17,$17,-1

.LVL130 = .
	.loc 1 447 0
	jalr	$23
	subu	$16,$16,$18

.LVL131 = .
	.loc 1 449 0
	addiu	$17,$17,-1
.LVL132 = .
.L94:
	.loc 1 441 0
	bne	$17,$0,.L88
	nop

.LVL133 = .
.L86:
	.loc 1 454 0
	sw	$22,%gp_rel(xcoOledCur)($28)
	.loc 1 455 0
	sw	$21,%gp_rel(ycoOledCur)($28)
	.loc 1 457 0
	lw	$31,52($sp)
	lw	$23,48($sp)
.LVL134 = .
	lw	$22,44($sp)
.LVL135 = .
	lw	$21,40($sp)
.LVL136 = .
	lw	$20,36($sp)
.LVL137 = .
	lw	$19,32($sp)
.LVL138 = .
	lw	$18,28($sp)
.LVL139 = .
	lw	$17,24($sp)
	lw	$16,20($sp)
.LVL140 = .
	j	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledLineTo
	.cfi_endproc
.LFE11:
	.size	OledLineTo, .-OledLineTo
	.align	2
	.globl	OledDrawRect
.LFB12 = .
	.loc 1 479 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledDrawRect
	.type	OledDrawRect, @function
OledDrawRect:
	.frame	$sp,40,$31		# vars= 0, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL141 = .
	addiu	$sp,$sp,-40
.LCFI8 = .
	.cfi_def_cfa_offset 40
	sw	$31,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	.cfi_offset 31, -4
	.cfi_offset 19, -8
	.cfi_offset 18, -12
	.cfi_offset 17, -16
	.cfi_offset 16, -20
	.loc 1 485 0
	jal	OledClampXco
	move	$16,$5

.LVL142 = .
	move	$19,$2
.LVL143 = .
	.loc 1 486 0
	jal	OledClampYco
	move	$4,$16

.LVL144 = .
	move	$18,$2
.LVL145 = .
	.loc 1 488 0
	lw	$17,%gp_rel(xcoOledCur)($28)
.LVL146 = .
	.loc 1 489 0
	lw	$16,%gp_rel(ycoOledCur)($28)
.LVL147 = .
	.loc 1 490 0
	move	$4,$19
	jal	OledLineTo
	move	$5,$16

.LVL148 = .
	.loc 1 491 0
	move	$4,$19
	jal	OledLineTo
	move	$5,$18

.LVL149 = .
	.loc 1 492 0
	move	$4,$17
	jal	OledLineTo
	move	$5,$18

.LVL150 = .
	.loc 1 493 0
	move	$4,$17
	jal	OledLineTo
	move	$5,$16

.LVL151 = .
	.loc 1 494 0
	lw	$31,36($sp)
	lw	$19,32($sp)
.LVL152 = .
	lw	$18,28($sp)
.LVL153 = .
	lw	$17,24($sp)
.LVL154 = .
	lw	$16,20($sp)
.LVL155 = .
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledDrawRect
	.cfi_endproc
.LFE12:
	.size	OledDrawRect, .-OledDrawRect
	.align	2
	.globl	OledFillRect
.LFB13 = .
	.loc 1 516 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledFillRect
	.type	OledFillRect, @function
OledFillRect:
	.frame	$sp,72,$31		# vars= 16, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL156 = .
	addiu	$sp,$sp,-72
.LCFI9 = .
	.cfi_def_cfa_offset 72
	sw	$31,68($sp)
	sw	$fp,64($sp)
	sw	$23,60($sp)
	sw	$22,56($sp)
	sw	$21,52($sp)
	sw	$20,48($sp)
	sw	$19,44($sp)
	sw	$18,40($sp)
	sw	$17,36($sp)
	sw	$16,32($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 23, -12
	.cfi_offset 22, -16
	.cfi_offset 21, -20
	.cfi_offset 20, -24
	.cfi_offset 19, -28
	.cfi_offset 18, -32
	.cfi_offset 17, -36
	.cfi_offset 16, -40
	.loc 1 530 0
	jal	OledClampXco
	move	$16,$5

.LVL157 = .
	move	$22,$2
.LVL158 = .
	.loc 1 531 0
	jal	OledClampYco
	move	$4,$16

.LVL159 = .
	.loc 1 535 0
	lw	$20,%gp_rel(xcoOledCur)($28)
	slt	$3,$20,$22
	beq	$3,$0,.L111
	lw	$23,%gp_rel(ycoOledCur)($28)

	move	$3,$22
	.loc 1 536 0
	move	$22,$20
.LVL160 = .
	.loc 1 537 0
	move	$20,$3
.LVL161 = .
.L111:
	.loc 1 544 0
	slt	$3,$23,$2
	bne	$3,$0,.L99
	move	$3,$2

	j	.L110
	addiu	$fp,$23,7

.LVL162 = .
.L106:
	.loc 1 558 0
	addiu	$3,$2,7
.L113:
	slt	$21,$2,0
	movz	$3,$2,$21
	sra	$21,$3,3
	sll	$18,$21,7
	addu	$18,$18,$22
.LVL163 = .
	.loc 1 563 0
	andi	$19,$2,0x7
	li	$2,1			# 0x1
.LVL164 = .
	sll	$19,$2,$19
	addiu	$19,$19,-1
.LVL165 = .
	.loc 1 570 0
	bne	$21,$fp,.L101
	andi	$19,$19,0x00ff

	.loc 1 571 0
	lw	$3,24($sp)
	or	$19,$3,$19
.LVL166 = .
	andi	$19,$19,0x00ff
.LVL167 = .
.L101:
	.loc 1 573 0
	lw	$16,16($sp)
.LVL168 = .
	.loc 1 575 0
	lui	$2,%hi(rgbOledBmp)
	addiu	$2,$2,%lo(rgbOledBmp)
.LVL169 = .
	.loc 1 580 0
	lw	$3,20($sp)
	bne	$3,$0,.L102
	addu	$18,$2,$18

	.loc 1 575 0
	move	$17,$18
	.loc 1 581 0
	nor	$19,$0,$19
.LVL170 = .
	andi	$19,$19,0x00ff
.LVL171 = .
	subu	$18,$22,$18
.LVL172 = .
	lw	$4,%gp_rel(pbOledPatCur)($28)
.L112:
	lbux	$4,$16($4)
	lbu	$5,0($17)
	lw	$2,%gp_rel(pfnDoRop)($28)
	jalr	$2
	move	$6,$19

.LVL173 = .
	sb	$2,0($17)
	.loc 1 583 0
	addiu	$17,$17,1
.LVL174 = .
	.loc 1 584 0
	addiu	$16,$16,1
.LVL175 = .
	.loc 1 585 0
	slt	$2,$16,8
	.loc 1 586 0
	movz	$16,$0,$2
.LVL176 = .
	addu	$2,$17,$18
	.loc 1 580 0
	slt	$2,$20,$2
	beq	$2,$0,.L112
	lw	$4,%gp_rel(pbOledPatCur)($28)

.LVL177 = .
.L102:
	.loc 1 592 0
	addiu	$21,$21,1
.LVL178 = .
	sll	$2,$21,3
.LVL179 = .
	.loc 1 554 0
	slt	$3,$23,$2
	beq	$3,$0,.L113
	addiu	$3,$2,7

	j	.L108
	lw	$31,68($sp)

.LVL180 = .
.L99:
	.loc 1 545 0
	move	$2,$23
.LVL181 = .
	.loc 1 546 0
	move	$23,$3
.LVL182 = .
	.loc 1 570 0
	addiu	$fp,$23,7
.L110:
	slt	$3,$23,0
	movz	$fp,$23,$3
	sra	$fp,$fp,3
	.loc 1 571 0
	andi	$3,$23,0x7
	addiu	$3,$3,1
	li	$4,-1			# 0xffffffffffffffff
	sll	$3,$4,$3
	seb	$3,$3
	sw	$3,24($sp)
	.loc 1 573 0
	andi	$3,$22,0x7
	sw	$3,16($sp)
	.loc 1 580 0
	slt	$3,$20,$22
	j	.L106
	sw	$3,20($sp)

.LVL183 = .
.L108:
	.loc 1 596 0
	lw	$fp,64($sp)
	lw	$23,60($sp)
.LVL184 = .
	lw	$22,56($sp)
.LVL185 = .
	lw	$21,52($sp)
	lw	$20,48($sp)
.LVL186 = .
	lw	$19,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
.LVL187 = .
	j	$31
	addiu	$sp,$sp,72

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledFillRect
	.cfi_endproc
.LFE13:
	.size	OledFillRect, .-OledFillRect

	.comm	modOledCur,4,4

	.comm	pfnDoRop,4,4

	.comm	rgbOledBmp,512,4
.Letext0:
	.file 2 "c:/program files/microchip/xc32/v1.42/pic32mx/include/machine/int_types.h"
	.file 3 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/11_cpu/lab11_cache_solution/oled.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0xd7c
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.42\000"
	.byte	0x1
	.ascii	"OledGrph.c\000"
	.ascii	"E:/\264\375\260\354\312\302\317\356/\315\352\263\311\312"
	.ascii	"\257\300\317\312\246\264\363\321\247\274\306\273\256\310"
	.ascii	"\316\316\361/CML/The-Connected-MCU-Lab--v1.5-12Oct2016-C"
	.ascii	"HN/Release/Modules/11_CPU/Lab11_Cache_Solution\000"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"unsigned int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"long unsigned int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"long int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"signed char\000"
	.uleb128 0x3
	.ascii	"__uint8_t\000"
	.byte	0x2
	.byte	0x2f
	.4byte	0x11f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii	"unsigned char\000"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii	"short int\000"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii	"short unsigned int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii	"long long int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii	"long long unsigned int\000"
	.uleb128 0x3
	.ascii	"BYTE\000"
	.byte	0x3
	.byte	0x26
	.4byte	0x10e
	.uleb128 0x4
	.byte	0x1
	.ascii	"OledRopSet\000"
	.byte	0x1
	.2byte	0x387
	.byte	0x1
	.4byte	0x17e
	.4byte	.LFB18
	.4byte	.LFE18
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x1dd
	.uleb128 0x5
	.ascii	"bPix\000"
	.byte	0x1
	.2byte	0x387
	.4byte	0x17e
	.byte	0x1
	.byte	0x54
	.uleb128 0x6
	.ascii	"bDsp\000"
	.byte	0x1
	.2byte	0x387
	.4byte	0x17e
	.4byte	.LLST0
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x387
	.4byte	0x17e
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.ascii	"OledRopOr\000"
	.byte	0x1
	.2byte	0x39c
	.byte	0x1
	.4byte	0x17e
	.4byte	.LFB19
	.4byte	.LFE19
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x22d
	.uleb128 0x5
	.ascii	"bPix\000"
	.byte	0x1
	.2byte	0x39c
	.4byte	0x17e
	.byte	0x1
	.byte	0x54
	.uleb128 0x5
	.ascii	"bDsp\000"
	.byte	0x1
	.2byte	0x39c
	.4byte	0x17e
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x39c
	.4byte	0x17e
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.ascii	"OledRopAnd\000"
	.byte	0x1
	.2byte	0x3b1
	.byte	0x1
	.4byte	0x17e
	.4byte	.LFB20
	.4byte	.LFE20
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x27e
	.uleb128 0x5
	.ascii	"bPix\000"
	.byte	0x1
	.2byte	0x3b1
	.4byte	0x17e
	.byte	0x1
	.byte	0x54
	.uleb128 0x5
	.ascii	"bDsp\000"
	.byte	0x1
	.2byte	0x3b1
	.4byte	0x17e
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x3b1
	.4byte	0x17e
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.ascii	"OledRopXor\000"
	.byte	0x1
	.2byte	0x3c6
	.byte	0x1
	.4byte	0x17e
	.4byte	.LFB21
	.4byte	.LFE21
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x2cf
	.uleb128 0x5
	.ascii	"bPix\000"
	.byte	0x1
	.2byte	0x3c6
	.4byte	0x17e
	.byte	0x1
	.byte	0x54
	.uleb128 0x5
	.ascii	"bDsp\000"
	.byte	0x1
	.2byte	0x3c6
	.4byte	0x17e
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x3c6
	.4byte	0x17e
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.ascii	"OledMoveUp\000"
	.byte	0x1
	.2byte	0x3df
	.4byte	.LFB22
	.4byte	.LFE22
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.ascii	"OledMoveDown\000"
	.byte	0x1
	.2byte	0x407
	.4byte	.LFB23
	.4byte	.LFE23
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.ascii	"OledMoveLeft\000"
	.byte	0x1
	.2byte	0x42f
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.ascii	"OledMoveRight\000"
	.byte	0x1
	.2byte	0x450
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.ascii	"OledGetPos\000"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x37e
	.uleb128 0xa
	.ascii	"pxco\000"
	.byte	0x1
	.byte	0x98
	.4byte	0x37e
	.byte	0x1
	.byte	0x54
	.uleb128 0xa
	.ascii	"pyco\000"
	.byte	0x1
	.byte	0x98
	.4byte	0x37e
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xf8
	.uleb128 0x9
	.byte	0x1
	.ascii	"OledSetDrawColor\000"
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x3b9
	.uleb128 0xc
	.ascii	"clr\000"
	.byte	0x1
	.byte	0xb1
	.4byte	0x17e
	.4byte	.LLST1
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.ascii	"OledGetStdPattern\000"
	.byte	0x1
	.byte	0xca
	.byte	0x1
	.4byte	0x3f4
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x3f4
	.uleb128 0xc
	.ascii	"ipat\000"
	.byte	0x1
	.byte	0xca
	.4byte	0xf8
	.4byte	.LLST2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x17e
	.uleb128 0x9
	.byte	0x1
	.ascii	"OledSetFillPattern\000"
	.byte	0x1
	.byte	0xe3
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x431
	.uleb128 0xa
	.ascii	"pbPat\000"
	.byte	0x1
	.byte	0xe3
	.4byte	0x3f4
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.ascii	"OledSetDrawMode\000"
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x463
	.uleb128 0xa
	.ascii	"mod\000"
	.byte	0x1
	.byte	0xfb
	.4byte	0xf8
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.ascii	"OledGetDrawMode\000"
	.byte	0x1
	.2byte	0x129
	.4byte	0xf8
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.ascii	"OledDrawPixel\000"
	.byte	0x1
	.2byte	0x142
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.ascii	"OledGetPixel\000"
	.byte	0x1
	.2byte	0x15a
	.4byte	0x17e
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.ascii	"OledGetBmp\000"
	.byte	0x1
	.2byte	0x26d
	.byte	0x1
	.4byte	.LFB14
	.4byte	.LFE14
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x5d6
	.uleb128 0x5
	.ascii	"dxco\000"
	.byte	0x1
	.2byte	0x26d
	.4byte	0xf8
	.byte	0x1
	.byte	0x54
	.uleb128 0x6
	.ascii	"dyco\000"
	.byte	0x1
	.2byte	0x26d
	.4byte	0xf8
	.4byte	.LLST3
	.uleb128 0x6
	.ascii	"pbBits\000"
	.byte	0x1
	.2byte	0x26d
	.4byte	0x3f4
	.4byte	.LLST4
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x26f
	.4byte	0xf8
	.4byte	.LLST5
	.uleb128 0x11
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x270
	.4byte	0xf8
	.4byte	.LLST6
	.uleb128 0x12
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x271
	.4byte	0xf8
	.byte	0x1
	.byte	0x59
	.uleb128 0x11
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x272
	.4byte	0xf8
	.4byte	.LLST7
	.uleb128 0x11
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x273
	.4byte	0x3f4
	.4byte	.LLST8
	.uleb128 0x12
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x274
	.4byte	0x3f4
	.byte	0x1
	.byte	0x5c
	.uleb128 0x11
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x275
	.4byte	0x3f4
	.4byte	.LLST9
	.uleb128 0x12
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x276
	.4byte	0x3f4
	.byte	0x1
	.byte	0x56
	.uleb128 0x13
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x277
	.4byte	0xf8
	.uleb128 0x14
	.ascii	"bnAlign\000"
	.byte	0x1
	.2byte	0x278
	.4byte	0xf8
	.byte	0x1
	.byte	0x5a
	.uleb128 0x15
	.ascii	"mskEnd\000"
	.byte	0x1
	.2byte	0x279
	.4byte	0x17e
	.4byte	.LLST10
	.uleb128 0x15
	.ascii	"bTmp\000"
	.byte	0x1
	.2byte	0x27a
	.4byte	0x17e
	.4byte	.LLST11
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ascii	"OledPutBmp\000"
	.byte	0x1
	.2byte	0x2d0
	.byte	0x1
	.4byte	.LFB15
	.4byte	.LFE15
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x761
	.uleb128 0x6
	.ascii	"dxco\000"
	.byte	0x1
	.2byte	0x2d0
	.4byte	0xf8
	.4byte	.LLST12
	.uleb128 0x6
	.ascii	"dyco\000"
	.byte	0x1
	.2byte	0x2d0
	.4byte	0xf8
	.4byte	.LLST13
	.uleb128 0x6
	.ascii	"pbBits\000"
	.byte	0x1
	.2byte	0x2d0
	.4byte	0x3f4
	.4byte	.LLST14
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x2d2
	.4byte	0xf8
	.4byte	.LLST15
	.uleb128 0x11
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x2d3
	.4byte	0xf8
	.4byte	.LLST16
	.uleb128 0x11
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x2d4
	.4byte	0xf8
	.4byte	.LLST17
	.uleb128 0x11
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x2d5
	.4byte	0xf8
	.4byte	.LLST18
	.uleb128 0x11
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x2d6
	.4byte	0x3f4
	.4byte	.LLST19
	.uleb128 0x11
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x2d7
	.4byte	0x3f4
	.4byte	.LLST20
	.uleb128 0x11
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x2d8
	.4byte	0x3f4
	.4byte	.LLST21
	.uleb128 0x11
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x2d9
	.4byte	0x3f4
	.4byte	.LLST22
	.uleb128 0x13
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x2da
	.4byte	0xf8
	.uleb128 0x16
	.ascii	"bDsp\000"
	.byte	0x1
	.2byte	0x2db
	.4byte	0x17e
	.uleb128 0x15
	.ascii	"bBmp\000"
	.byte	0x1
	.2byte	0x2dc
	.4byte	0x17e
	.4byte	.LLST23
	.uleb128 0x15
	.ascii	"mskEnd\000"
	.byte	0x1
	.2byte	0x2dd
	.4byte	0x17e
	.4byte	.LLST24
	.uleb128 0x15
	.ascii	"mskUpper\000"
	.byte	0x1
	.2byte	0x2de
	.4byte	0x17e
	.4byte	.LLST25
	.uleb128 0x15
	.ascii	"mskLower\000"
	.byte	0x1
	.2byte	0x2df
	.4byte	0x17e
	.4byte	.LLST26
	.uleb128 0x15
	.ascii	"bnAlign\000"
	.byte	0x1
	.2byte	0x2e0
	.4byte	0xf8
	.4byte	.LLST27
	.uleb128 0x15
	.ascii	"fTop\000"
	.byte	0x1
	.2byte	0x2e1
	.4byte	0xf8
	.4byte	.LLST28
	.uleb128 0x16
	.ascii	"bTmp\000"
	.byte	0x1
	.2byte	0x2e2
	.4byte	0x17e
	.uleb128 0x17
	.4byte	.LVL62
	.4byte	0x754
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL71
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ascii	"OledDrawChar\000"
	.byte	0x1
	.2byte	0x343
	.byte	0x1
	.4byte	.LFB16
	.4byte	.LFE16
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x7c8
	.uleb128 0x6
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x343
	.4byte	0x7c8
	.4byte	.LLST29
	.uleb128 0x15
	.ascii	"pbFont\000"
	.byte	0x1
	.2byte	0x345
	.4byte	0x3f4
	.4byte	.LLST30
	.uleb128 0x16
	.ascii	"pbBmp\000"
	.byte	0x1
	.2byte	0x346
	.4byte	0x3f4
	.uleb128 0x16
	.ascii	"ib\000"
	.byte	0x1
	.2byte	0x347
	.4byte	0xf8
	.uleb128 0x1a
	.4byte	.LVL89
	.4byte	0x5d6
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0x10
	.byte	0x1
	.ascii	"OledDrawString\000"
	.byte	0x1
	.2byte	0x36e
	.byte	0x1
	.4byte	.LFB17
	.4byte	.LFE17
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x80d
	.uleb128 0x6
	.ascii	"sz\000"
	.byte	0x1
	.2byte	0x36e
	.4byte	0x80d
	.4byte	.LLST31
	.uleb128 0x1a
	.4byte	.LVL92
	.4byte	0x761
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7c8
	.uleb128 0x4
	.byte	0x1
	.ascii	"OledClampXco\000"
	.byte	0x1
	.2byte	0x470
	.byte	0x1
	.4byte	0xf8
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x84a
	.uleb128 0x6
	.ascii	"xco\000"
	.byte	0x1
	.2byte	0x470
	.4byte	0xf8
	.4byte	.LLST32
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.ascii	"OledClampYco\000"
	.byte	0x1
	.2byte	0x48e
	.byte	0x1
	.4byte	0xf8
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x881
	.uleb128 0x6
	.ascii	"yco\000"
	.byte	0x1
	.2byte	0x48e
	.4byte	0xf8
	.4byte	.LLST33
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.ascii	"OledMoveTo\000"
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x8e4
	.uleb128 0xc
	.ascii	"xco\000"
	.byte	0x1
	.byte	0x71
	.4byte	0xf8
	.4byte	.LLST34
	.uleb128 0xc
	.ascii	"yco\000"
	.byte	0x1
	.byte	0x71
	.4byte	0xf8
	.4byte	.LLST35
	.uleb128 0x1b
	.4byte	.LVL99
	.4byte	0x813
	.4byte	0x8d3
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL101
	.4byte	0x84a
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.ascii	"OledLineTo\000"
	.byte	0x1
	.2byte	0x174
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x9e3
	.uleb128 0x6
	.ascii	"xco\000"
	.byte	0x1
	.2byte	0x174
	.4byte	0xf8
	.4byte	.LLST36
	.uleb128 0x6
	.ascii	"yco\000"
	.byte	0x1
	.2byte	0x174
	.4byte	0xf8
	.4byte	.LLST37
	.uleb128 0x15
	.ascii	"err\000"
	.byte	0x1
	.2byte	0x176
	.4byte	0xf8
	.4byte	.LLST38
	.uleb128 0x15
	.ascii	"del\000"
	.byte	0x1
	.2byte	0x177
	.4byte	0xf8
	.4byte	.LLST39
	.uleb128 0x15
	.ascii	"lim\000"
	.byte	0x1
	.2byte	0x178
	.4byte	0xf8
	.4byte	.LLST40
	.uleb128 0x15
	.ascii	"cpx\000"
	.byte	0x1
	.2byte	0x179
	.4byte	0xf8
	.4byte	.LLST41
	.uleb128 0x15
	.ascii	"dxco\000"
	.byte	0x1
	.2byte	0x17a
	.4byte	0xf8
	.4byte	.LLST42
	.uleb128 0x15
	.ascii	"dyco\000"
	.byte	0x1
	.2byte	0x17b
	.4byte	0xf8
	.4byte	.LLST43
	.uleb128 0x15
	.ascii	"pfnMajor\000"
	.byte	0x1
	.2byte	0x17c
	.4byte	0x9ea
	.4byte	.LLST44
	.uleb128 0x15
	.ascii	"pfnMinor\000"
	.byte	0x1
	.2byte	0x17d
	.4byte	0x9ea
	.4byte	.LLST45
	.uleb128 0x1b
	.4byte	.LVL107
	.4byte	0x813
	.4byte	0x9c5
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL109
	.4byte	0x84a
	.4byte	0x9d9
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL128
	.4byte	0x487
	.byte	0
	.uleb128 0x1e
	.4byte	0x9ea
	.uleb128 0x1f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9e3
	.uleb128 0x10
	.byte	0x1
	.ascii	"OledDrawRect\000"
	.byte	0x1
	.2byte	0x1de
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0xae2
	.uleb128 0x6
	.ascii	"xco\000"
	.byte	0x1
	.2byte	0x1de
	.4byte	0xf8
	.4byte	.LLST46
	.uleb128 0x6
	.ascii	"yco\000"
	.byte	0x1
	.2byte	0x1de
	.4byte	0xf8
	.4byte	.LLST47
	.uleb128 0x15
	.ascii	"xco1\000"
	.byte	0x1
	.2byte	0x1e0
	.4byte	0xf8
	.4byte	.LLST48
	.uleb128 0x15
	.ascii	"yco1\000"
	.byte	0x1
	.2byte	0x1e1
	.4byte	0xf8
	.4byte	.LLST49
	.uleb128 0x1b
	.4byte	.LVL142
	.4byte	0x813
	.4byte	0xa69
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL144
	.4byte	0x84a
	.4byte	0xa7d
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL148
	.4byte	0x8e4
	.4byte	0xa97
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x83
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL149
	.4byte	0x8e4
	.4byte	0xab1
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x82
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x83
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL150
	.4byte	0x8e4
	.4byte	0xacb
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x82
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL151
	.4byte	0x8e4
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ascii	"OledFillRect\000"
	.byte	0x1
	.2byte	0x203
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0xc01
	.uleb128 0x6
	.ascii	"xco\000"
	.byte	0x1
	.2byte	0x203
	.4byte	0xf8
	.4byte	.LLST50
	.uleb128 0x6
	.ascii	"yco\000"
	.byte	0x1
	.2byte	0x203
	.4byte	0xf8
	.4byte	.LLST51
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x205
	.4byte	0xf8
	.4byte	.LLST52
	.uleb128 0x11
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x206
	.4byte	0xf8
	.4byte	.LLST53
	.uleb128 0x11
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x207
	.4byte	0xf8
	.4byte	.LLST54
	.uleb128 0x11
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x208
	.4byte	0xf8
	.4byte	.LLST55
	.uleb128 0x15
	.ascii	"ibPat\000"
	.byte	0x1
	.2byte	0x209
	.4byte	0xf8
	.4byte	.LLST56
	.uleb128 0x15
	.ascii	"pbCur\000"
	.byte	0x1
	.2byte	0x20a
	.4byte	0x3f4
	.4byte	.LLST57
	.uleb128 0x15
	.ascii	"pbLeft\000"
	.byte	0x1
	.2byte	0x20b
	.4byte	0x3f4
	.4byte	.LLST58
	.uleb128 0x11
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x20c
	.4byte	0xf8
	.4byte	.LLST59
	.uleb128 0x16
	.ascii	"bTmp\000"
	.byte	0x1
	.2byte	0x20d
	.4byte	0x17e
	.uleb128 0x15
	.ascii	"mskPat\000"
	.byte	0x1
	.2byte	0x20e
	.4byte	0x17e
	.4byte	.LLST60
	.uleb128 0x1b
	.4byte	.LVL157
	.4byte	0x813
	.4byte	0xbe0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL159
	.4byte	0x84a
	.4byte	0xbf4
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL173
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x83
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	0x17e
	.4byte	0xc12
	.uleb128 0x21
	.4byte	0xc12
	.2byte	0x1ff
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x22
	.ascii	"rgbOledBmp\000"
	.byte	0x1
	.byte	0x3d
	.4byte	0xc01
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rgbOledBmp
	.uleb128 0x23
	.ascii	"xcoOledCur\000"
	.byte	0x1
	.byte	0x3a
	.4byte	0xf8
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.ascii	"ycoOledCur\000"
	.byte	0x1
	.byte	0x3b
	.4byte	0xf8
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.ascii	"pbOledCur\000"
	.byte	0x1
	.byte	0x3c
	.4byte	0x3f4
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.4byte	0x17e
	.4byte	0xc7d
	.uleb128 0x24
	.byte	0
	.uleb128 0x23
	.ascii	"rgbFillPat\000"
	.byte	0x1
	.byte	0x3e
	.4byte	0xc72
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.ascii	"bnOledCur\000"
	.byte	0x1
	.byte	0x3f
	.4byte	0xf8
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.ascii	"clrOledCur\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x17e
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.ascii	"pbOledPatCur\000"
	.byte	0x1
	.byte	0x41
	.4byte	0x3f4
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.ascii	"pbOledFontUser\000"
	.byte	0x1
	.byte	0x42
	.4byte	0x3f4
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.ascii	"pbOledFontCur\000"
	.byte	0x1
	.byte	0x43
	.4byte	0x3f4
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.ascii	"dxcoOledFontCur\000"
	.byte	0x1
	.byte	0x44
	.4byte	0xf8
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.ascii	"dycoOledFontCur\000"
	.byte	0x1
	.byte	0x45
	.4byte	0xf8
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.4byte	0x17e
	.4byte	0xd49
	.uleb128 0x26
	.4byte	0x17e
	.uleb128 0x26
	.4byte	0x17e
	.uleb128 0x26
	.4byte	0x17e
	.byte	0
	.uleb128 0x22
	.ascii	"pfnDoRop\000"
	.byte	0x1
	.byte	0x4b
	.4byte	0xd60
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pfnDoRop
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd2f
	.uleb128 0x22
	.ascii	"modOledCur\000"
	.byte	0x1
	.byte	0x4c
	.4byte	0xf8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	modOledCur
	.byte	0
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,info
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x7f
	.byte	0x2c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 128
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL80-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL43-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 96
	.4byte	.LVL83-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -7
	.byte	0x9f
	.4byte	.LVL74-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 28
	.4byte	.LVL83-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 96
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 96
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 96
	.4byte	.LVL83-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0xb
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x86
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0xb
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x86
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x81
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x5
	.byte	0x91
	.sleb128 40
	.byte	0x6
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x7
	.byte	0x31
	.byte	0x86
	.sleb128 0
	.byte	0x24
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x4
	.byte	0x77
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x5
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0xb
	.byte	0x31
	.byte	0x86
	.sleb128 0
	.byte	0x24
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL85-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL95-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0xe
	.byte	0x74
	.sleb128 0
	.byte	0x12
	.byte	0x8
	.byte	0x7f
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL97-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0xd
	.byte	0x74
	.sleb128 0
	.byte	0x12
	.byte	0x4f
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL99-1-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101-1-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL99-1-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL107-1-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109-1-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL107-1-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL142-1-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL144-1-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL142-1-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL148-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL148-1-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL157-1-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL159-1-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL157-1-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL182-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.4byte	rgbOledBmp
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0xe
	.byte	0x85
	.sleb128 0
	.byte	0x37
	.byte	0x24
	.byte	0x86
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.4byte	rgbOledBmp
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0xe
	.byte	0x85
	.sleb128 -1
	.byte	0x37
	.byte	0x24
	.byte	0x86
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.4byte	rgbOledBmp
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0xe
	.byte	0x85
	.sleb128 -1
	.byte	0x37
	.byte	0x24
	.byte	0x86
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.4byte	rgbOledBmp
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x4
	.byte	0x83
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,info
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,info
.Ldebug_line0:
	.section	.debug_str,info
.LASF6:
	.ascii	"pbDspLeft\000"
.LASF1:
	.ascii	"xcoLeft\000"
.LASF3:
	.ascii	"ycoTop\000"
.LASF9:
	.ascii	"xcoCur\000"
.LASF0:
	.ascii	"mskPix\000"
.LASF7:
	.ascii	"pbBmpCur\000"
.LASF2:
	.ascii	"xcoRight\000"
.LASF8:
	.ascii	"pbBmpLeft\000"
.LASF4:
	.ascii	"ycoBottom\000"
.LASF5:
	.ascii	"pbDspCur\000"
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.42"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
