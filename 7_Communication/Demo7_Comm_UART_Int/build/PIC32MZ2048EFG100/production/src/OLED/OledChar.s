	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:
	.cfi_sections	.debug_frame

	.comm	rgbOledBmp,512,4

	.comm	xchOledCur,4,4

	.comm	ychOledCur,4,4

	.comm	xchOledMax,4,4

	.comm	ychOledMax,4,4

	.comm	pbOledFontExt,4,4

	.comm	rgbOledFontUser,256,4
	.align	2
	.globl	OledSetCursor
.LFB2 = .
	.file 1 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/7_communication/demo7_comm_uart_int/src/oled/oledchar.c"
	.loc 1 122 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledSetCursor
	.type	OledSetCursor, @function
OledSetCursor:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI0 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)
	sw	$fp,16($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
.LCFI1 = .
	.cfi_def_cfa_register 30
	sw	$4,24($fp)
	sw	$5,28($fp)
	.loc 1 126 0
	lw	$2,%gp_rel(xchOledMax)($28)
	lw	$3,24($fp)
	slt	$2,$3,$2
	bne	$2,$0,.L2
	nop

	.loc 1 127 0
	lw	$2,%gp_rel(xchOledMax)($28)
	addiu	$2,$2,-1
	sw	$2,24($fp)
.L2:
	.loc 1 130 0
	lw	$2,%gp_rel(ychOledMax)($28)
	lw	$3,28($fp)
	slt	$2,$3,$2
	bne	$2,$0,.L3
	nop

	.loc 1 131 0
	lw	$2,%gp_rel(ychOledMax)($28)
	addiu	$2,$2,-1
	sw	$2,28($fp)
.L3:
	.loc 1 136 0
	lw	$2,24($fp)
	sw	$2,%gp_rel(xchOledCur)($28)
	.loc 1 137 0
	lw	$2,28($fp)
	sw	$2,%gp_rel(ychOledCur)($28)
	.loc 1 141 0
	lw	$3,%gp_rel(dxcoOledFontCur)($28)
	lw	$2,24($fp)
	mul	$2,$3,$2
	lw	$4,%gp_rel(dycoOledFontCur)($28)
	lw	$3,28($fp)
	mult	$4,$3
	move	$4,$2
	mflo	$5
	jal	OledMoveTo
	nop

	.loc 1 143 0
	move	$sp,$fp
.LCFI2 = .
	.cfi_def_cfa_register 29
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledSetCursor
	.cfi_endproc
.LFE2:
	.size	OledSetCursor, .-OledSetCursor
	.align	2
	.globl	OledGetCursor
.LFB3 = .
	.loc 1 164 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledGetCursor
	.type	OledGetCursor, @function
OledGetCursor:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI3 = .
	.cfi_def_cfa_offset 8
	sw	$fp,4($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
.LCFI4 = .
	.cfi_def_cfa_register 30
	sw	$4,8($fp)
	sw	$5,12($fp)
	.loc 1 166 0
	lw	$3,%gp_rel(xchOledCur)($28)
	lw	$2,8($fp)
	sw	$3,0($2)
	.loc 1 167 0
	lw	$3,%gp_rel(ychOledCur)($28)
	lw	$2,12($fp)
	sw	$3,0($2)
	.loc 1 169 0
	move	$sp,$fp
.LCFI5 = .
	.cfi_def_cfa_register 29
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledGetCursor
	.cfi_endproc
.LFE3:
	.size	OledGetCursor, .-OledGetCursor
	.align	2
	.globl	OledDefUserChar
.LFB4 = .
	.loc 1 193 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledDefUserChar
	.type	OledDefUserChar, @function
OledDefUserChar:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI6 = .
	.cfi_def_cfa_offset 16
	sw	$fp,12($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
.LCFI7 = .
	.cfi_def_cfa_register 30
	move	$2,$4
	sw	$5,20($fp)
	sb	$2,16($fp)
	.loc 1 197 0
	lb	$2,16($fp)
	slt	$2,$2,32
	beq	$2,$0,.L6
	nop

	.loc 1 198 0
	lw	$3,%gp_rel(pbOledFontUser)($28)
	lb	$2,16($fp)
	sll	$2,$2,3
	addu	$2,$3,$2
	sw	$2,0($fp)
	.loc 1 199 0
	sw	$0,4($fp)
	j	.L7
	nop

.L8:
	.loc 1 200 0
	lw	$2,0($fp)
	addiu	$3,$2,1
	sw	$3,0($fp)
	lw	$3,20($fp)
	addiu	$4,$3,1
	sw	$4,20($fp)
	lbu	$3,0($3)
	sb	$3,0($2)
	.loc 1 199 0
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
.L7:
	lw	$2,4($fp)
	slt	$2,$2,8
	bne	$2,$0,.L8
	nop

	.loc 1 202 0
	li	$2,1			# 0x1
	j	.L9
	nop

.L6:
	.loc 1 205 0
	move	$2,$0
.L9:
	.loc 1 208 0
	move	$sp,$fp
.LCFI8 = .
	.cfi_def_cfa_register 29
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledDefUserChar
	.cfi_endproc
.LFE4:
	.size	OledDefUserChar, .-OledDefUserChar
	.align	2
	.globl	OledSetCharUpdate
.LFB5 = .
	.loc 1 231 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledSetCharUpdate
	.type	OledSetCharUpdate, @function
OledSetCharUpdate:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI9 = .
	.cfi_def_cfa_offset 8
	sw	$fp,4($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
.LCFI10 = .
	.cfi_def_cfa_register 30
	sw	$4,8($fp)
	.loc 1 233 0
	lw	$2,8($fp)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	sw	$2,%gp_rel(fOledCharUpdate)($28)
	.loc 1 235 0
	move	$sp,$fp
.LCFI11 = .
	.cfi_def_cfa_register 29
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledSetCharUpdate
	.cfi_endproc
.LFE5:
	.size	OledSetCharUpdate, .-OledSetCharUpdate
	.align	2
	.globl	OledGetCharUpdate
.LFB6 = .
	.loc 1 255 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledGetCharUpdate
	.type	OledGetCharUpdate, @function
OledGetCharUpdate:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI12 = .
	.cfi_def_cfa_offset 8
	sw	$fp,4($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
.LCFI13 = .
	.cfi_def_cfa_register 30
	.loc 1 257 0
	lw	$2,%gp_rel(fOledCharUpdate)($28)
	.loc 1 259 0
	move	$sp,$fp
.LCFI14 = .
	.cfi_def_cfa_register 29
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledGetCharUpdate
	.cfi_endproc
.LFE6:
	.size	OledGetCharUpdate, .-OledGetCharUpdate
	.align	2
	.globl	OledPutChar
.LFB7 = .
	.loc 1 280 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledPutChar
	.type	OledPutChar, @function
OledPutChar:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI15 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)
	sw	$fp,16($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
.LCFI16 = .
	.cfi_def_cfa_register 30
	move	$2,$4
	sb	$2,24($fp)
	.loc 1 282 0
	lb	$2,24($fp)
	move	$4,$2
	jal	OledDrawGlyph
	nop

	.loc 1 283 0
	jal	OledAdvanceCursor
	nop

	.loc 1 284 0
	lw	$2,%gp_rel(fOledCharUpdate)($28)
	beq	$2,$0,.L13
	nop

	.loc 1 285 0
	jal	OledUpdate
	nop

.L13:
	.loc 1 288 0
	move	$sp,$fp
.LCFI17 = .
	.cfi_def_cfa_register 29
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledPutChar
	.cfi_endproc
.LFE7:
	.size	OledPutChar, .-OledPutChar
	.align	2
	.globl	OledPutString
.LFB8 = .
	.loc 1 309 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledPutString
	.type	OledPutString, @function
OledPutString:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI18 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)
	sw	$fp,16($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
.LCFI19 = .
	.cfi_def_cfa_register 30
	sw	$4,24($fp)
	.loc 1 311 0
	j	.L16
	nop

.L17:
	.loc 1 312 0
	lw	$2,24($fp)
	lb	$2,0($2)
	move	$4,$2
	jal	OledDrawGlyph
	nop

	.loc 1 313 0
	jal	OledAdvanceCursor
	nop

	.loc 1 314 0
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
.L16:
	.loc 1 311 0
	lw	$2,24($fp)
	lb	$2,0($2)
	bne	$2,$0,.L17
	nop

	.loc 1 317 0
	lw	$2,%gp_rel(fOledCharUpdate)($28)
	beq	$2,$0,.L15
	nop

	.loc 1 318 0
	jal	OledUpdate
	nop

.L15:
	.loc 1 321 0
	move	$sp,$fp
.LCFI20 = .
	.cfi_def_cfa_register 29
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledPutString
	.cfi_endproc
.LFE8:
	.size	OledPutString, .-OledPutString
	.align	2
	.globl	OledDrawGlyph
.LFB9 = .
	.loc 1 344 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledDrawGlyph
	.type	OledDrawGlyph, @function
OledDrawGlyph:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI21 = .
	.cfi_def_cfa_offset 24
	sw	$fp,20($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
.LCFI22 = .
	.cfi_def_cfa_register 30
	move	$2,$4
	sb	$2,24($fp)
	.loc 1 349 0
	lb	$2,24($fp)
	bgez	$2,.L20
	nop

	.loc 1 350 0
	j	.L19
	nop

.L20:
	.loc 1 353 0
	lb	$2,24($fp)
	slt	$2,$2,32
	beq	$2,$0,.L22
	nop

	.loc 1 354 0
	lw	$3,%gp_rel(pbOledFontUser)($28)
	lb	$2,24($fp)
	sll	$2,$2,3
	addu	$2,$3,$2
	sw	$2,0($fp)
	j	.L23
	nop

.L22:
	.loc 1 356 0
	lb	$2,24($fp)
	bltz	$2,.L23
	nop

	.loc 1 357 0
	lw	$3,%gp_rel(pbOledFontCur)($28)
	lb	$2,24($fp)
	addiu	$2,$2,-32
	sll	$2,$2,3
	addu	$2,$3,$2
	sw	$2,0($fp)
.L23:
	.loc 1 360 0
	lw	$2,%gp_rel(pbOledCur)($28)
	sw	$2,4($fp)
	.loc 1 362 0
	sw	$0,8($fp)
	j	.L24
	nop

.L25:
	.loc 1 363 0
	lw	$2,4($fp)
	addiu	$3,$2,1
	sw	$3,4($fp)
	lw	$3,0($fp)
	addiu	$4,$3,1
	sw	$4,0($fp)
	lbu	$3,0($3)
	sb	$3,0($2)
	.loc 1 362 0
	lw	$2,8($fp)
	addiu	$2,$2,1
	sw	$2,8($fp)
.L24:
	lw	$2,%gp_rel(dxcoOledFontCur)($28)
	lw	$3,8($fp)
	slt	$2,$3,$2
	bne	$2,$0,.L25
	nop

.L19:
	.loc 1 366 0
	move	$sp,$fp
.LCFI23 = .
	.cfi_def_cfa_register 29
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledDrawGlyph
	.cfi_endproc
.LFE9:
	.size	OledDrawGlyph, .-OledDrawGlyph
	.align	2
	.globl	OledAdvanceCursor
.LFB10 = .
	.loc 1 388 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledAdvanceCursor
	.type	OledAdvanceCursor, @function
OledAdvanceCursor:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI24 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)
	sw	$fp,16($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
.LCFI25 = .
	.cfi_def_cfa_register 30
	.loc 1 390 0
	lw	$2,%gp_rel(xchOledCur)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(xchOledCur)($28)
	.loc 1 391 0
	lw	$3,%gp_rel(xchOledCur)($28)
	lw	$2,%gp_rel(xchOledMax)($28)
	slt	$2,$3,$2
	bne	$2,$0,.L27
	nop

	.loc 1 392 0
	sw	$0,%gp_rel(xchOledCur)($28)
	.loc 1 393 0
	lw	$2,%gp_rel(ychOledCur)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(ychOledCur)($28)
.L27:
	.loc 1 395 0
	lw	$3,%gp_rel(ychOledCur)($28)
	lw	$2,%gp_rel(ychOledMax)($28)
	slt	$2,$3,$2
	bne	$2,$0,.L28
	nop

	.loc 1 396 0
	sw	$0,%gp_rel(ychOledCur)($28)
.L28:
	.loc 1 399 0
	lw	$3,%gp_rel(xchOledCur)($28)
	lw	$2,%gp_rel(ychOledCur)($28)
	move	$4,$3
	move	$5,$2
	jal	OledSetCursor
	nop

	.loc 1 401 0
	move	$sp,$fp
.LCFI26 = .
	.cfi_def_cfa_register 29
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledAdvanceCursor
	.cfi_endproc
.LFE10:
	.size	OledAdvanceCursor, .-OledAdvanceCursor
.Letext0:
	.file 2 "c:/program files/microchip/xc32/v1.42/pic32mx/include/machine/int_types.h"
	.file 3 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/7_communication/demo7_comm_uart_int/src/oled/oled.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x542
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.42\000"
	.byte	0x1
	.ascii	"src/OLED/OledChar.c\000"
	.ascii	"E:/\264\375\260\354\312\302\317\356/\315\352\263\311\312"
	.ascii	"\257\300\317\312\246\264\363\321\247\274\306\273\256\310"
	.ascii	"\316\316\361/CML/The-Connected-MCU-Lab--v1.5-12Oct2016-C"
	.ascii	"HN/Release/Modules/7_Communication/Demo7_Comm_UART_Int\000"
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
	.4byte	0x130
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
	.4byte	0x11f
	.uleb128 0x4
	.byte	0x1
	.ascii	"OledSetCursor\000"
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1da
	.uleb128 0x5
	.ascii	"xch\000"
	.byte	0x1
	.byte	0x79
	.4byte	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x5
	.ascii	"ych\000"
	.byte	0x1
	.byte	0x79
	.4byte	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.ascii	"OledGetCursor\000"
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x21b
	.uleb128 0x5
	.ascii	"pxch\000"
	.byte	0x1
	.byte	0xa3
	.4byte	0x21b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x5
	.ascii	"pych\000"
	.byte	0x1
	.byte	0xa3
	.4byte	0x21b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x109
	.uleb128 0x8
	.byte	0x1
	.ascii	"OledDefUserChar\000"
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.4byte	0x109
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x281
	.uleb128 0x5
	.ascii	"ch\000"
	.byte	0x1
	.byte	0xc0
	.4byte	0x281
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x5
	.ascii	"pbDef\000"
	.byte	0x1
	.byte	0xc0
	.4byte	0x289
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x9
	.ascii	"pb\000"
	.byte	0x1
	.byte	0xc2
	.4byte	0x289
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii	"ib\000"
	.byte	0x1
	.byte	0xc3
	.4byte	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0x7
	.byte	0x4
	.4byte	0x18f
	.uleb128 0x6
	.byte	0x1
	.ascii	"OledSetCharUpdate\000"
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x2c2
	.uleb128 0x5
	.ascii	"f\000"
	.byte	0x1
	.byte	0xe6
	.4byte	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.ascii	"OledGetCharUpdate\000"
	.byte	0x1
	.byte	0xfe
	.4byte	0x109
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.ascii	"OledPutChar\000"
	.byte	0x1
	.2byte	0x117
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x317
	.uleb128 0xc
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x117
	.4byte	0x281
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii	"OledPutString\000"
	.byte	0x1
	.2byte	0x134
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x349
	.uleb128 0xc
	.ascii	"sz\000"
	.byte	0x1
	.2byte	0x134
	.4byte	0x349
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x281
	.uleb128 0xd
	.byte	0x1
	.ascii	"OledDrawGlyph\000"
	.byte	0x1
	.2byte	0x157
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x3b2
	.uleb128 0xc
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x157
	.4byte	0x281
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0xe
	.ascii	"pbFont\000"
	.byte	0x1
	.2byte	0x159
	.4byte	0x289
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.ascii	"pbBmp\000"
	.byte	0x1
	.2byte	0x15a
	.4byte	0x289
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.ascii	"ib\000"
	.byte	0x1
	.2byte	0x15b
	.4byte	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.ascii	"OledAdvanceCursor\000"
	.byte	0x1
	.2byte	0x183
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x10
	.4byte	0x18f
	.4byte	0x3e5
	.uleb128 0x11
	.4byte	0x3e5
	.2byte	0x1ff
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x12
	.ascii	"rgbOledBmp\000"
	.byte	0x1
	.byte	0x46
	.4byte	0x3d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rgbOledBmp
	.uleb128 0x13
	.ascii	"pbOledCur\000"
	.byte	0x1
	.byte	0x41
	.4byte	0x289
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.ascii	"fOledCharUpdate\000"
	.byte	0x1
	.byte	0x44
	.4byte	0x109
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.ascii	"dxcoOledFontCur\000"
	.byte	0x1
	.byte	0x48
	.4byte	0x109
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.ascii	"dycoOledFontCur\000"
	.byte	0x1
	.byte	0x49
	.4byte	0x109
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.ascii	"pbOledFontCur\000"
	.byte	0x1
	.byte	0x4b
	.4byte	0x289
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.ascii	"pbOledFontUser\000"
	.byte	0x1
	.byte	0x4c
	.4byte	0x289
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.ascii	"xchOledCur\000"
	.byte	0x1
	.byte	0x52
	.4byte	0x109
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	xchOledCur
	.uleb128 0x12
	.ascii	"ychOledCur\000"
	.byte	0x1
	.byte	0x53
	.4byte	0x109
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	ychOledCur
	.uleb128 0x12
	.ascii	"xchOledMax\000"
	.byte	0x1
	.byte	0x55
	.4byte	0x109
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	xchOledMax
	.uleb128 0x12
	.ascii	"ychOledMax\000"
	.byte	0x1
	.byte	0x56
	.4byte	0x109
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	ychOledMax
	.uleb128 0x12
	.ascii	"pbOledFontExt\000"
	.byte	0x1
	.byte	0x58
	.4byte	0x289
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pbOledFontExt
	.uleb128 0x10
	.4byte	0x18f
	.4byte	0x527
	.uleb128 0x14
	.4byte	0x3e5
	.byte	0xff
	.byte	0
	.uleb128 0x12
	.ascii	"rgbOledFontUser\000"
	.byte	0x1
	.byte	0x5a
	.4byte	0x517
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rgbOledFontUser
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xe
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.42"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
