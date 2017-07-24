	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
.Ltext0:
	.cfi_sections	.debug_frame

	.comm	rgbOledBmp,512,4
	.globl	sitofp
	.globl	fpmul
	.globl	fpadd
	.globl	fptosi
	.globl	fpcmp
	.align	2
	.globl	DrawCircle1
.LFB2 = .
	.file 1 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/12_performance/demo12_optimization/src/ball.c"
	.loc 1 16 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	DrawCircle1
	.type	DrawCircle1, @function
DrawCircle1:
	.frame	$fp,48,$31		# vars= 16, regs= 3/0, args= 16, gp= 0
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
.LCFI0 = .
	.cfi_def_cfa_offset 48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	sw	$16,36($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 16, -12
	move	$fp,$sp
.LCFI1 = .
	.cfi_def_cfa_register 30
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	sw	$7,60($fp)
	.loc 1 19 0
	lw	$4,60($fp)
	jal	OledSetDrawColor
	nop

	.loc 1 21 0
	move	$2,$0
	sw	$2,16($fp)
	j	.L2
	nop

.L3:
.LBB2 = .
	.loc 1 22 0
	lw	$4,16($fp)
	jal	cosf
	nop

	move	$16,$2
	lw	$4,56($fp)
	jal	sitofp
	nop

	move	$4,$16
	move	$5,$2
	jal	fpmul
	nop

	move	$16,$2
	lw	$4,48($fp)
	jal	sitofp
	nop

	move	$4,$16
	move	$5,$2
	jal	fpadd
	nop

	sw	$2,20($fp)
	.loc 1 23 0
	lw	$4,16($fp)
	jal	sinf
	nop

	move	$16,$2
	lw	$4,56($fp)
	jal	sitofp
	nop

	move	$4,$16
	move	$5,$2
	jal	fpmul
	nop

	move	$16,$2
	lw	$4,52($fp)
	jal	sitofp
	nop

	move	$4,$16
	move	$5,$2
	jal	fpadd
	nop

	sw	$2,24($fp)
	.loc 1 25 0
	lw	$4,48($fp)
	lw	$5,52($fp)
	jal	OledMoveTo
	nop

	.loc 1 26 0
	lw	$4,20($fp)
	jal	fptosi
	nop

	move	$16,$2
	lw	$4,24($fp)
	jal	fptosi
	nop

	move	$4,$16
	move	$5,$2
	jal	OledLineTo
	nop

.LBE2 = .
	.loc 1 21 0
	lui	$2,%hi(.LC0)
	lw	$4,16($fp)
	lw	$5,%lo(.LC0)($2)
	jal	fpadd
	nop

	sw	$2,16($fp)
.L2:
	lui	$2,%hi(.LC1)
	lw	$4,16($fp)
	lw	$5,%lo(.LC1)($2)
	jal	fpcmp
	nop

	bltz	$2,.L3
	nop

	.loc 1 28 0
	move	$sp,$fp
.LCFI2 = .
	.cfi_def_cfa_register 29
	lw	$31,44($sp)
	lw	$fp,40($sp)
	lw	$16,36($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	DrawCircle1
	.cfi_endproc
.LFE2:
	.size	DrawCircle1, .-DrawCircle1
	.globl	fpsub
	.align	2
	.globl	DrawCircle2
.LFB3 = .
	.loc 1 30 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	DrawCircle2
	.type	DrawCircle2, @function
DrawCircle2:
	.frame	$fp,48,$31		# vars= 16, regs= 3/0, args= 16, gp= 0
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
.LCFI3 = .
	.cfi_def_cfa_offset 48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	sw	$16,36($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 16, -12
	move	$fp,$sp
.LCFI4 = .
	.cfi_def_cfa_register 30
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	sw	$7,60($fp)
	.loc 1 34 0
	lw	$4,60($fp)
	jal	OledSetDrawColor
	nop

	.loc 1 36 0
	move	$2,$0
	sw	$2,16($fp)
	j	.L5
	nop

.L6:
.LBB3 = .
	.loc 1 37 0
	lw	$4,16($fp)
	jal	cosf
	nop

	move	$16,$2
	lw	$4,56($fp)
	jal	sitofp
	nop

	move	$4,$16
	move	$5,$2
	jal	fpmul
	nop

	sw	$2,20($fp)
	.loc 1 38 0
	lw	$4,16($fp)
	jal	sinf
	nop

	move	$16,$2
	lw	$4,56($fp)
	jal	sitofp
	nop

	move	$4,$16
	move	$5,$2
	jal	fpmul
	nop

	sw	$2,24($fp)
	.loc 1 40 0
	lw	$4,48($fp)
	jal	sitofp
	nop

	move	$4,$2
	lw	$5,20($fp)
	jal	fpsub
	nop

	move	$4,$2
	jal	fptosi
	nop

	move	$16,$2
	lw	$4,52($fp)
	jal	sitofp
	nop

	move	$4,$2
	lw	$5,24($fp)
	jal	fpsub
	nop

	move	$4,$2
	jal	fptosi
	nop

	move	$4,$16
	move	$5,$2
	jal	OledMoveTo
	nop

	.loc 1 41 0
	lw	$4,48($fp)
	jal	sitofp
	nop

	move	$4,$2
	lw	$5,20($fp)
	jal	fpadd
	nop

	move	$4,$2
	jal	fptosi
	nop

	move	$16,$2
	lw	$4,52($fp)
	jal	sitofp
	nop

	move	$4,$2
	lw	$5,24($fp)
	jal	fpadd
	nop

	move	$4,$2
	jal	fptosi
	nop

	move	$4,$16
	move	$5,$2
	jal	OledLineTo
	nop

.LBE3 = .
	.loc 1 36 0
	lui	$2,%hi(.LC0)
	lw	$4,16($fp)
	lw	$5,%lo(.LC0)($2)
	jal	fpadd
	nop

	sw	$2,16($fp)
.L5:
	lui	$2,%hi(.LC2)
	lw	$4,16($fp)
	lw	$5,%lo(.LC2)($2)
	jal	fpcmp
	nop

	bltz	$2,.L6
	nop

	.loc 1 43 0
	move	$sp,$fp
.LCFI5 = .
	.cfi_def_cfa_register 29
	lw	$31,44($sp)
	lw	$fp,40($sp)
	lw	$16,36($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	DrawCircle2
	.cfi_endproc
.LFE3:
	.size	DrawCircle2, .-DrawCircle2
	.align	2
	.globl	DrawCircle3
.LFB4 = .
	.loc 1 45 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	DrawCircle3
	.type	DrawCircle3, @function
DrawCircle3:
	.frame	$fp,48,$31		# vars= 16, regs= 3/0, args= 16, gp= 0
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
.LCFI6 = .
	.cfi_def_cfa_offset 48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	sw	$16,36($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 16, -12
	move	$fp,$sp
.LCFI7 = .
	.cfi_def_cfa_register 30
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	sw	$7,60($fp)
	.loc 1 49 0
	lw	$4,60($fp)
	jal	OledSetDrawColor
	nop

	.loc 1 51 0
	move	$2,$0
	sw	$2,16($fp)
	j	.L8
	nop

.L9:
.LBB4 = .
	.loc 1 52 0
	lw	$4,16($fp)
	jal	cosf
	nop

	move	$16,$2
	lw	$4,56($fp)
	jal	sitofp
	nop

	move	$4,$16
	move	$5,$2
	jal	fpmul
	nop

	sw	$2,20($fp)
	.loc 1 53 0
	lw	$4,16($fp)
	jal	sinf
	nop

	move	$16,$2
	lw	$4,56($fp)
	jal	sitofp
	nop

	move	$4,$16
	move	$5,$2
	jal	fpmul
	nop

	sw	$2,24($fp)
	.loc 1 55 0
	lw	$4,48($fp)
	jal	sitofp
	nop

	move	$4,$2
	lw	$5,20($fp)
	jal	fpsub
	nop

	move	$4,$2
	jal	fptosi
	nop

	move	$16,$2
	lw	$4,52($fp)
	jal	sitofp
	nop

	move	$4,$2
	lw	$5,24($fp)
	jal	fpsub
	nop

	move	$4,$2
	jal	fptosi
	nop

	move	$4,$16
	move	$5,$2
	jal	OledMoveTo
	nop

	.loc 1 56 0
	lw	$4,48($fp)
	jal	sitofp
	nop

	move	$4,$2
	lw	$5,20($fp)
	jal	fpadd
	nop

	move	$4,$2
	jal	fptosi
	nop

	move	$16,$2
	lw	$4,52($fp)
	jal	sitofp
	nop

	move	$4,$2
	lw	$5,24($fp)
	jal	fpsub
	nop

	move	$4,$2
	jal	fptosi
	nop

	move	$4,$16
	move	$5,$2
	jal	OledLineTo
	nop

	.loc 1 58 0
	lw	$4,48($fp)
	jal	sitofp
	nop

	move	$4,$2
	lw	$5,20($fp)
	jal	fpsub
	nop

	move	$4,$2
	jal	fptosi
	nop

	move	$16,$2
	lw	$4,52($fp)
	jal	sitofp
	nop

	move	$4,$2
	lw	$5,24($fp)
	jal	fpadd
	nop

	move	$4,$2
	jal	fptosi
	nop

	move	$4,$16
	move	$5,$2
	jal	OledMoveTo
	nop

	.loc 1 59 0
	lw	$4,48($fp)
	jal	sitofp
	nop

	move	$4,$2
	lw	$5,20($fp)
	jal	fpadd
	nop

	move	$4,$2
	jal	fptosi
	nop

	move	$16,$2
	lw	$4,52($fp)
	jal	sitofp
	nop

	move	$4,$2
	lw	$5,24($fp)
	jal	fpadd
	nop

	move	$4,$2
	jal	fptosi
	nop

	move	$4,$16
	move	$5,$2
	jal	OledLineTo
	nop

.LBE4 = .
	.loc 1 51 0
	lui	$2,%hi(.LC0)
	lw	$4,16($fp)
	lw	$5,%lo(.LC0)($2)
	jal	fpadd
	nop

	sw	$2,16($fp)
.L8:
	lui	$2,%hi(.LC3)
	lw	$4,16($fp)
	lw	$5,%lo(.LC3)($2)
	jal	fpcmp
	nop

	bltz	$2,.L9
	nop

	.loc 1 61 0
	move	$sp,$fp
.LCFI8 = .
	.cfi_def_cfa_register 29
	lw	$31,44($sp)
	lw	$fp,40($sp)
	lw	$16,36($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	DrawCircle3
	.cfi_endproc
.LFE4:
	.size	DrawCircle3, .-DrawCircle3
	.align	2
	.globl	DrawCircle4
.LFB5 = .
	.loc 1 63 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	DrawCircle4
	.type	DrawCircle4, @function
DrawCircle4:
	.frame	$fp,48,$31		# vars= 16, regs= 3/0, args= 16, gp= 0
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
.LCFI9 = .
	.cfi_def_cfa_offset 48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	sw	$16,36($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 16, -12
	move	$fp,$sp
.LCFI10 = .
	.cfi_def_cfa_register 30
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	sw	$7,60($fp)
	.loc 1 67 0
	lw	$4,60($fp)
	jal	OledSetDrawColor
	nop

	.loc 1 69 0
	move	$2,$0
	sw	$2,16($fp)
	j	.L11
	nop

.L12:
.LBB5 = .
	.loc 1 70 0
	lw	$4,16($fp)
	jal	cosf
	nop

	move	$16,$2
	lw	$4,56($fp)
	jal	sitofp
	nop

	move	$4,$16
	move	$5,$2
	jal	fpmul
	nop

	sw	$2,20($fp)
	.loc 1 71 0
	lw	$4,16($fp)
	jal	sinf
	nop

	move	$16,$2
	lw	$4,56($fp)
	jal	sitofp
	nop

	move	$4,$16
	move	$5,$2
	jal	fpmul
	nop

	sw	$2,24($fp)
	.loc 1 73 0
	lw	$4,48($fp)
	jal	sitofp
	nop

	move	$4,$2
	lw	$5,20($fp)
	jal	fpadd
	nop

	move	$4,$2
	jal	fptosi
	nop

	move	$16,$2
	lw	$4,52($fp)
	jal	sitofp
	nop

	move	$4,$2
	lw	$5,24($fp)
	jal	fpsub
	nop

	move	$4,$2
	jal	fptosi
	nop

	move	$4,$16
	move	$5,$2
	jal	OledMoveTo
	nop

	.loc 1 74 0
	lw	$4,48($fp)
	jal	sitofp
	nop

	move	$4,$2
	lw	$5,20($fp)
	jal	fpadd
	nop

	move	$4,$2
	jal	fptosi
	nop

	move	$16,$2
	lw	$4,52($fp)
	jal	sitofp
	nop

	move	$4,$2
	lw	$5,24($fp)
	jal	fpadd
	nop

	move	$4,$2
	jal	fptosi
	nop

	move	$4,$16
	move	$5,$2
	jal	OledLineTo
	nop

	.loc 1 76 0
	lw	$4,48($fp)
	jal	sitofp
	nop

	move	$4,$2
	lw	$5,20($fp)
	jal	fpsub
	nop

	move	$4,$2
	jal	fptosi
	nop

	move	$16,$2
	lw	$4,52($fp)
	jal	sitofp
	nop

	move	$4,$2
	lw	$5,24($fp)
	jal	fpsub
	nop

	move	$4,$2
	jal	fptosi
	nop

	move	$4,$16
	move	$5,$2
	jal	OledMoveTo
	nop

	.loc 1 77 0
	lw	$4,48($fp)
	jal	sitofp
	nop

	move	$4,$2
	lw	$5,20($fp)
	jal	fpsub
	nop

	move	$4,$2
	jal	fptosi
	nop

	move	$16,$2
	lw	$4,52($fp)
	jal	sitofp
	nop

	move	$4,$2
	lw	$5,24($fp)
	jal	fpadd
	nop

	move	$4,$2
	jal	fptosi
	nop

	move	$4,$16
	move	$5,$2
	jal	OledLineTo
	nop

.LBE5 = .
	.loc 1 69 0
	lui	$2,%hi(.LC0)
	lw	$4,16($fp)
	lw	$5,%lo(.LC0)($2)
	jal	fpadd
	nop

	sw	$2,16($fp)
.L11:
	lui	$2,%hi(.LC3)
	lw	$4,16($fp)
	lw	$5,%lo(.LC3)($2)
	jal	fpcmp
	nop

	bltz	$2,.L12
	nop

	.loc 1 79 0
	move	$sp,$fp
.LCFI11 = .
	.cfi_def_cfa_register 29
	lw	$31,44($sp)
	lw	$fp,40($sp)
	lw	$16,36($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	DrawCircle4
	.cfi_endproc
.LFE5:
	.size	DrawCircle4, .-DrawCircle4
	.align	2
	.globl	DrawCircle5
.LFB6 = .
	.loc 1 81 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	DrawCircle5
	.type	DrawCircle5, @function
DrawCircle5:
	.frame	$fp,48,$31		# vars= 16, regs= 3/0, args= 16, gp= 0
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
.LCFI12 = .
	.cfi_def_cfa_offset 48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	sw	$16,36($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 16, -12
	move	$fp,$sp
.LCFI13 = .
	.cfi_def_cfa_register 30
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	sw	$7,60($fp)
	.loc 1 86 0
	lw	$4,60($fp)
	jal	OledSetDrawColor
	nop

	.loc 1 88 0
	move	$2,$0
	sw	$2,16($fp)
	j	.L14
	nop

.L15:
.LBB6 = .
	.loc 1 89 0
	lw	$4,16($fp)
	jal	cosf
	nop

	move	$16,$2
	lw	$4,56($fp)
	jal	sitofp
	nop

	move	$4,$16
	move	$5,$2
	jal	fpmul
	nop

	move	$4,$2
	jal	fptosi
	nop

	sw	$2,20($fp)
	.loc 1 90 0
	lw	$4,16($fp)
	jal	sinf
	nop

	move	$16,$2
	lw	$4,56($fp)
	jal	sitofp
	nop

	move	$4,$16
	move	$5,$2
	jal	fpmul
	nop

	move	$4,$2
	jal	fptosi
	nop

	sw	$2,24($fp)
	.loc 1 92 0
	lw	$3,48($fp)
	lw	$2,20($fp)
	addu	$3,$3,$2
	lw	$4,52($fp)
	lw	$2,24($fp)
	subu	$2,$4,$2
	move	$4,$3
	move	$5,$2
	jal	OledMoveTo
	nop

	.loc 1 93 0
	lw	$3,48($fp)
	lw	$2,20($fp)
	addu	$3,$3,$2
	lw	$4,52($fp)
	lw	$2,24($fp)
	addu	$2,$4,$2
	move	$4,$3
	move	$5,$2
	jal	OledLineTo
	nop

	.loc 1 95 0
	lw	$3,48($fp)
	lw	$2,20($fp)
	subu	$3,$3,$2
	lw	$4,52($fp)
	lw	$2,24($fp)
	subu	$2,$4,$2
	move	$4,$3
	move	$5,$2
	jal	OledMoveTo
	nop

	.loc 1 96 0
	lw	$3,48($fp)
	lw	$2,20($fp)
	subu	$3,$3,$2
	lw	$4,52($fp)
	lw	$2,24($fp)
	addu	$2,$4,$2
	move	$4,$3
	move	$5,$2
	jal	OledLineTo
	nop

.LBE6 = .
	.loc 1 88 0
	lui	$2,%hi(.LC0)
	lw	$4,16($fp)
	lw	$5,%lo(.LC0)($2)
	jal	fpadd
	nop

	sw	$2,16($fp)
.L14:
	lui	$2,%hi(.LC3)
	lw	$4,16($fp)
	lw	$5,%lo(.LC3)($2)
	jal	fpcmp
	nop

	bltz	$2,.L15
	nop

	.loc 1 98 0
	move	$sp,$fp
.LCFI14 = .
	.cfi_def_cfa_register 29
	lw	$31,44($sp)
	lw	$fp,40($sp)
	lw	$16,36($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	DrawCircle5
	.cfi_endproc
.LFE6:
	.size	DrawCircle5, .-DrawCircle5
	.align	2
	.globl	DrawCircle6
.LFB7 = .
	.loc 1 100 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	DrawCircle6
	.type	DrawCircle6, @function
DrawCircle6:
	.frame	$fp,48,$31		# vars= 16, regs= 3/0, args= 16, gp= 0
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
.LCFI15 = .
	.cfi_def_cfa_offset 48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	sw	$16,36($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 16, -12
	move	$fp,$sp
.LCFI16 = .
	.cfi_def_cfa_register 30
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	sw	$7,60($fp)
	.loc 1 106 0
	lw	$4,60($fp)
	jal	OledSetDrawColor
	nop

	.loc 1 108 0
	move	$2,$0
	sw	$2,16($fp)
	j	.L17
	nop

.L18:
.LBB7 = .
	.loc 1 109 0
	lw	$4,16($fp)
	jal	cosf
	nop

	move	$16,$2
	lw	$4,56($fp)
	jal	sitofp
	nop

	move	$4,$16
	move	$5,$2
	jal	fpmul
	nop

	move	$4,$2
	jal	fptosi
	nop

	sw	$2,20($fp)
	.loc 1 110 0
	lw	$4,16($fp)
	jal	sinf
	nop

	move	$16,$2
	lw	$4,56($fp)
	jal	sitofp
	nop

	move	$4,$16
	move	$5,$2
	jal	fpmul
	nop

	move	$4,$2
	jal	fptosi
	nop

	sw	$2,24($fp)
	.loc 1 112 0
	lw	$3,48($fp)
	lw	$2,20($fp)
	addu	$3,$3,$2
	lw	$4,52($fp)
	lw	$2,24($fp)
	subu	$2,$4,$2
	move	$4,$3
	move	$5,$2
	jal	OledMoveTo
	nop

	.loc 1 113 0
	lw	$3,48($fp)
	lw	$2,20($fp)
	addu	$3,$3,$2
	lw	$4,52($fp)
	lw	$2,24($fp)
	addu	$2,$4,$2
	move	$4,$3
	move	$5,$2
	jal	OledLineTo
	nop

	.loc 1 115 0
	lw	$3,48($fp)
	lw	$2,20($fp)
	subu	$3,$3,$2
	lw	$4,52($fp)
	lw	$2,24($fp)
	subu	$2,$4,$2
	move	$4,$3
	move	$5,$2
	jal	OledMoveTo
	nop

	.loc 1 116 0
	lw	$3,48($fp)
	lw	$2,20($fp)
	subu	$3,$3,$2
	lw	$4,52($fp)
	lw	$2,24($fp)
	addu	$2,$4,$2
	move	$4,$3
	move	$5,$2
	jal	OledLineTo
	nop

.LBE7 = .
	.loc 1 108 0
	lui	$2,%hi(.LC4)
	lw	$4,16($fp)
	lw	$5,%lo(.LC4)($2)
	jal	fpadd
	nop

	sw	$2,16($fp)
.L17:
	lui	$2,%hi(.LC3)
	lw	$4,16($fp)
	lw	$5,%lo(.LC3)($2)
	jal	fpcmp
	nop

	bltz	$2,.L18
	nop

	.loc 1 118 0
	move	$sp,$fp
.LCFI17 = .
	.cfi_def_cfa_register 29
	lw	$31,44($sp)
	lw	$fp,40($sp)
	lw	$16,36($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	DrawCircle6
	.cfi_endproc
.LFE7:
	.size	DrawCircle6, .-DrawCircle6
	.align	2
	.globl	Animate
.LFB8 = .
	.loc 1 120 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	Animate
	.type	Animate, @function
Animate:
	.frame	$fp,56,$31		# vars= 32, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-56
.LCFI18 = .
	.cfi_def_cfa_offset 56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
.LCFI19 = .
	.cfi_def_cfa_register 30
	sw	$4,56($fp)
	.loc 1 121 0
	li	$2,10			# 0xa
	sw	$2,16($fp)
	li	$2,10			# 0xa
	sw	$2,20($fp)
	.loc 1 122 0
	li	$2,1			# 0x1
	sw	$2,24($fp)
	li	$2,1			# 0x1
	sw	$2,28($fp)
	.loc 1 123 0
	li	$2,8			# 0x8
	sw	$2,32($fp)
	.loc 1 125 0
	move	$4,$0
	move	$5,$0
	jal	OledMoveTo
	nop

	.loc 1 126 0
	li	$4,127			# 0x7f
	li	$5,31			# 0x1f
	jal	OledDrawRect
	nop

	.loc 1 127 0
	j	.L20
	nop

.L23:
	.loc 1 128 0
	lw	$4,16($fp)
	lw	$5,20($fp)
	lw	$6,32($fp)
	li	$7,1			# 0x1
	jal	DrawCircle1
	nop

	.loc 1 129 0
	jal	OledUpdate
	nop

	.loc 1 130 0
	lw	$2,32($fp)
	addiu	$3,$2,1
	lw	$2,16($fp)
	slt	$2,$3,$2
	xori	$2,$2,0x1
	andi	$3,$2,0x00ff
	li	$4,126			# 0x7e
	lw	$2,32($fp)
	subu	$4,$4,$2
	lw	$2,16($fp)
	slt	$2,$2,$4
	xori	$2,$2,0x1
	andi	$2,$2,0x00ff
	or	$2,$3,$2
	andi	$2,$2,0x00ff
	beq	$2,$0,.L21
	nop

	.loc 1 131 0
	lw	$2,24($fp)
	subu	$2,$0,$2
	sw	$2,24($fp)
.L21:
	.loc 1 132 0
	lw	$2,32($fp)
	addiu	$3,$2,1
	lw	$2,20($fp)
	slt	$2,$3,$2
	xori	$2,$2,0x1
	andi	$3,$2,0x00ff
	li	$4,30			# 0x1e
	lw	$2,32($fp)
	subu	$4,$4,$2
	lw	$2,20($fp)
	slt	$2,$2,$4
	xori	$2,$2,0x1
	andi	$2,$2,0x00ff
	or	$2,$3,$2
	andi	$2,$2,0x00ff
	beq	$2,$0,.L22
	nop

	.loc 1 133 0
	lw	$2,28($fp)
	subu	$2,$0,$2
	sw	$2,28($fp)
.L22:
	.loc 1 134 0
	lw	$2,16($fp)
	sw	$2,36($fp)
	.loc 1 135 0
	lw	$2,20($fp)
	sw	$2,40($fp)
	.loc 1 136 0
	lw	$3,16($fp)
	lw	$2,24($fp)
	addu	$2,$3,$2
	sw	$2,16($fp)
	.loc 1 137 0
	lw	$3,20($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	sw	$2,20($fp)
	.loc 1 139 0
	lw	$4,36($fp)
	lw	$5,40($fp)
	lw	$6,32($fp)
	move	$7,$0
	jal	DrawCircle1
	nop

.L20:
	.loc 1 127 0
	lw	$2,56($fp)
	addiu	$3,$2,-1
	sw	$3,56($fp)
	bne	$2,$0,.L23
	nop

	.loc 1 141 0
	move	$sp,$fp
.LCFI20 = .
	.cfi_def_cfa_register 29
	lw	$31,52($sp)
	lw	$fp,48($sp)
	addiu	$sp,$sp,56
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	Animate
	.cfi_endproc
.LFE8:
	.size	Animate, .-Animate
	.section	.rodata,code
	.align	2
.LC0:
	.word	1022739087
	.align	2
.LC1:
	.word	1086918608
	.align	2
.LC2:
	.word	1078530000
	.align	2
.LC3:
	.word	1070141392
	.align	2
.LC4:
	.word	1031777309
	.section	.text,code
.Letext0:
	.file 2 "c:/program files/microchip/xc32/v1.42/pic32mx/include/machine/int_types.h"
	.file 3 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/12_performance/demo12_optimization/src/oled/oled.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x744
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.42\000"
	.byte	0x1
	.ascii	"src/ball.c\000"
	.ascii	"E:/\264\375\260\354\312\302\317\356/\315\352\263\311\312"
	.ascii	"\257\300\317\312\246\264\363\321\247\274\306\273\256\310"
	.ascii	"\316\316\361/CML/The-Connected-MCU-Lab--v1.5-12Oct2016-C"
	.ascii	"HN/Release/Modules/12_Performance/Demo12_Optimization\000"
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
	.4byte	0x126
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
	.4byte	0x115
	.uleb128 0x4
	.byte	0x1
	.ascii	"DrawCircle1\000"
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x24b
	.uleb128 0x5
	.ascii	"cx\000"
	.byte	0x1
	.byte	0x10
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x5
	.ascii	"cy\000"
	.byte	0x1
	.byte	0x10
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0x1
	.byte	0x10
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x6
	.4byte	.LASF1
	.byte	0x1
	.byte	0x10
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x7
	.ascii	"a\000"
	.byte	0x1
	.byte	0x11
	.4byte	0x24b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x7
	.ascii	"x\000"
	.byte	0x1
	.byte	0x11
	.4byte	0x24b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x7
	.ascii	"y\000"
	.byte	0x1
	.byte	0x11
	.4byte	0x24b
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0x13
	.4byte	0xff
	.byte	0x1
	.4byte	0x21e
	.uleb128 0x9
	.byte	0
	.uleb128 0xa
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0x19
	.4byte	0xff
	.byte	0x1
	.4byte	0x23a
	.uleb128 0x9
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0x1a
	.4byte	0xff
	.byte	0x1
	.uleb128 0x9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii	"float\000"
	.uleb128 0x4
	.byte	0x1
	.ascii	"DrawCircle2\000"
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x322
	.uleb128 0x5
	.ascii	"cx\000"
	.byte	0x1
	.byte	0x1e
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x5
	.ascii	"cy\000"
	.byte	0x1
	.byte	0x1e
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0x1
	.byte	0x1e
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x6
	.4byte	.LASF1
	.byte	0x1
	.byte	0x1e
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x7
	.ascii	"a\000"
	.byte	0x1
	.byte	0x20
	.4byte	0x24b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xc
	.ascii	"x\000"
	.byte	0x1
	.byte	0x20
	.4byte	0x24b
	.uleb128 0xc
	.ascii	"y\000"
	.byte	0x1
	.byte	0x20
	.4byte	0x24b
	.uleb128 0x7
	.ascii	"dx\000"
	.byte	0x1
	.byte	0x20
	.4byte	0x24b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x7
	.ascii	"dy\000"
	.byte	0x1
	.byte	0x20
	.4byte	0x24b
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0x13
	.4byte	0xff
	.byte	0x1
	.4byte	0x2f5
	.uleb128 0x9
	.byte	0
	.uleb128 0xa
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0x19
	.4byte	0xff
	.byte	0x1
	.4byte	0x311
	.uleb128 0x9
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0x1a
	.4byte	0xff
	.byte	0x1
	.uleb128 0x9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.ascii	"DrawCircle3\000"
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x3f0
	.uleb128 0x5
	.ascii	"cx\000"
	.byte	0x1
	.byte	0x2d
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x5
	.ascii	"cy\000"
	.byte	0x1
	.byte	0x2d
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0x1
	.byte	0x2d
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x6
	.4byte	.LASF1
	.byte	0x1
	.byte	0x2d
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x7
	.ascii	"a\000"
	.byte	0x1
	.byte	0x2f
	.4byte	0x24b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xc
	.ascii	"x\000"
	.byte	0x1
	.byte	0x2f
	.4byte	0x24b
	.uleb128 0xc
	.ascii	"y\000"
	.byte	0x1
	.byte	0x2f
	.4byte	0x24b
	.uleb128 0x7
	.ascii	"dx\000"
	.byte	0x1
	.byte	0x2f
	.4byte	0x24b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x7
	.ascii	"dy\000"
	.byte	0x1
	.byte	0x2f
	.4byte	0x24b
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0x13
	.4byte	0xff
	.byte	0x1
	.4byte	0x3c3
	.uleb128 0x9
	.byte	0
	.uleb128 0xa
	.4byte	.LBB4
	.4byte	.LBE4
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0x19
	.4byte	0xff
	.byte	0x1
	.4byte	0x3df
	.uleb128 0x9
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0x1a
	.4byte	0xff
	.byte	0x1
	.uleb128 0x9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.ascii	"DrawCircle4\000"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x4be
	.uleb128 0x5
	.ascii	"cx\000"
	.byte	0x1
	.byte	0x3f
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x5
	.ascii	"cy\000"
	.byte	0x1
	.byte	0x3f
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0x1
	.byte	0x3f
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x6
	.4byte	.LASF1
	.byte	0x1
	.byte	0x3f
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x7
	.ascii	"a\000"
	.byte	0x1
	.byte	0x41
	.4byte	0x24b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xc
	.ascii	"x\000"
	.byte	0x1
	.byte	0x41
	.4byte	0x24b
	.uleb128 0xc
	.ascii	"y\000"
	.byte	0x1
	.byte	0x41
	.4byte	0x24b
	.uleb128 0x7
	.ascii	"dx\000"
	.byte	0x1
	.byte	0x41
	.4byte	0x24b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x7
	.ascii	"dy\000"
	.byte	0x1
	.byte	0x41
	.4byte	0x24b
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0x13
	.4byte	0xff
	.byte	0x1
	.4byte	0x491
	.uleb128 0x9
	.byte	0
	.uleb128 0xa
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0x19
	.4byte	0xff
	.byte	0x1
	.4byte	0x4ad
	.uleb128 0x9
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0x1a
	.4byte	0xff
	.byte	0x1
	.uleb128 0x9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.ascii	"DrawCircle5\000"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x58c
	.uleb128 0x5
	.ascii	"cx\000"
	.byte	0x1
	.byte	0x51
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x5
	.ascii	"cy\000"
	.byte	0x1
	.byte	0x51
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0x1
	.byte	0x51
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x6
	.4byte	.LASF1
	.byte	0x1
	.byte	0x51
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x7
	.ascii	"a\000"
	.byte	0x1
	.byte	0x53
	.4byte	0x24b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xc
	.ascii	"x\000"
	.byte	0x1
	.byte	0x53
	.4byte	0x24b
	.uleb128 0xc
	.ascii	"y\000"
	.byte	0x1
	.byte	0x53
	.4byte	0x24b
	.uleb128 0x7
	.ascii	"dx\000"
	.byte	0x1
	.byte	0x54
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x7
	.ascii	"dy\000"
	.byte	0x1
	.byte	0x54
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0x13
	.4byte	0xff
	.byte	0x1
	.4byte	0x55f
	.uleb128 0x9
	.byte	0
	.uleb128 0xa
	.4byte	.LBB6
	.4byte	.LBE6
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0x19
	.4byte	0xff
	.byte	0x1
	.4byte	0x57b
	.uleb128 0x9
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0x1a
	.4byte	0xff
	.byte	0x1
	.uleb128 0x9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.ascii	"DrawCircle6\000"
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x65a
	.uleb128 0x5
	.ascii	"cx\000"
	.byte	0x1
	.byte	0x64
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x5
	.ascii	"cy\000"
	.byte	0x1
	.byte	0x64
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0x1
	.byte	0x64
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x6
	.4byte	.LASF1
	.byte	0x1
	.byte	0x64
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x7
	.ascii	"a\000"
	.byte	0x1
	.byte	0x67
	.4byte	0x24b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xc
	.ascii	"x\000"
	.byte	0x1
	.byte	0x67
	.4byte	0x24b
	.uleb128 0xc
	.ascii	"y\000"
	.byte	0x1
	.byte	0x67
	.4byte	0x24b
	.uleb128 0x7
	.ascii	"dx\000"
	.byte	0x1
	.byte	0x68
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x7
	.ascii	"dy\000"
	.byte	0x1
	.byte	0x68
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0x13
	.4byte	0xff
	.byte	0x1
	.4byte	0x62d
	.uleb128 0x9
	.byte	0
	.uleb128 0xa
	.4byte	.LBB7
	.4byte	.LBE7
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0x19
	.4byte	0xff
	.byte	0x1
	.4byte	0x649
	.uleb128 0x9
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0x1a
	.4byte	0xff
	.byte	0x1
	.uleb128 0x9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.ascii	"Animate\000"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x711
	.uleb128 0x5
	.ascii	"steps\000"
	.byte	0x1
	.byte	0x78
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x7
	.ascii	"x\000"
	.byte	0x1
	.byte	0x79
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x7
	.ascii	"y\000"
	.byte	0x1
	.byte	0x79
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x7
	.ascii	"ox\000"
	.byte	0x1
	.byte	0x79
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x7
	.ascii	"oy\000"
	.byte	0x1
	.byte	0x79
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x7
	.ascii	"vx\000"
	.byte	0x1
	.byte	0x7a
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x7
	.ascii	"vy\000"
	.byte	0x1
	.byte	0x7a
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x7
	.ascii	"halfsize\000"
	.byte	0x1
	.byte	0x7b
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0x19
	.4byte	0xff
	.byte	0x1
	.4byte	0x6f8
	.uleb128 0x9
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.ascii	"OledDrawRect\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0xff
	.byte	0x1
	.uleb128 0x9
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x185
	.4byte	0x722
	.uleb128 0xf
	.4byte	0x722
	.2byte	0x1ff
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x10
	.ascii	"rgbOledBmp\000"
	.byte	0x3
	.byte	0x68
	.4byte	0x711
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rgbOledBmp
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
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x7
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.byte	0
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
.LASF0:
	.ascii	"radius\000"
.LASF3:
	.ascii	"OledMoveTo\000"
.LASF1:
	.ascii	"color\000"
.LASF4:
	.ascii	"OledLineTo\000"
.LASF2:
	.ascii	"OledSetDrawColor\000"
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.42"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
