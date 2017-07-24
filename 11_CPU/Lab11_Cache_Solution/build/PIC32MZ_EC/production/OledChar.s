	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.globl	OledSetCursor
.LFB2 = .
	.file 1 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/11_cpu/lab11_cache_solution/oledchar.c"
	.loc 1 122 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledSetCursor
	.type	OledSetCursor, @function
OledSetCursor:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL0 = .
	addiu	$sp,$sp,-24
.LCFI0 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)
	.cfi_offset 31, -4
	.loc 1 126 0
	lw	$2,%gp_rel(xchOledMax)($28)
	slt	$3,$4,$2
	.loc 1 127 0
	addiu	$2,$2,-1
	movz	$4,$2,$3
.LVL1 = .
	.loc 1 130 0
	lw	$2,%gp_rel(ychOledMax)($28)
	slt	$3,$5,$2
	.loc 1 131 0
	addiu	$2,$2,-1
	movz	$5,$2,$3
.LVL2 = .
	.loc 1 136 0
	sw	$4,%gp_rel(xchOledCur)($28)
	.loc 1 137 0
	sw	$5,%gp_rel(ychOledCur)($28)
	.loc 1 141 0
	lw	$2,%gp_rel(dxcoOledFontCur)($28)
	mul	$4,$4,$2
.LVL3 = .
	lw	$2,%gp_rel(dycoOledFontCur)($28)
.LVL4 = .
	jal	OledMoveTo
	mul	$5,$5,$2

.LVL5 = .
	.loc 1 143 0
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL6 = .
	.loc 1 166 0
	lw	$2,%gp_rel(xchOledCur)($28)
	sw	$2,0($4)
	.loc 1 167 0
	lw	$2,%gp_rel(ychOledCur)($28)
	j	$31
	sw	$2,0($5)

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL7 = .
	seb	$4,$4
	.loc 1 197 0
	slt	$3,$4,32
	beq	$3,$0,.L11
	move	$2,$0

	.loc 1 198 0
	sll	$4,$4,3
.LVL8 = .
	lw	$2,%gp_rel(pbOledFontUser)($28)
	addu	$2,$2,$4
.LVL9 = .
	addiu	$4,$5,8
.LVL10 = .
.L8:
	.loc 1 200 0
	addiu	$2,$2,1
.LVL11 = .
	addiu	$5,$5,1
.LVL12 = .
	lbu	$3,-1($5)
	.loc 1 199 0
	bne	$5,$4,.L8
	sb	$3,-1($2)

	.loc 1 202 0
	li	$2,1			# 0x1
.LVL13 = .
.L11:
	.loc 1 208 0
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL14 = .
	.loc 1 233 0
	sltu	$4,$0,$4
.LVL15 = .
	j	$31
	sw	$4,%gp_rel(fOledCharUpdate)($28)

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	.loc 1 259 0
	j	$31
	lw	$2,%gp_rel(fOledCharUpdate)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledGetCharUpdate
	.cfi_endproc
.LFE6:
	.size	OledGetCharUpdate, .-OledGetCharUpdate
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL16 = .
	seb	$4,$4
	.loc 1 349 0
	bltz	$4,.L20
	slt	$2,$4,32

	.loc 1 353 0
	beql	$2,$0,.L16
	addiu	$4,$4,-32

	.loc 1 354 0
	sll	$4,$4,3
.LVL17 = .
	lw	$6,%gp_rel(pbOledFontUser)($28)
.LVL18 = .
	j	.L17
	addu	$6,$6,$4

.LVL19 = .
.L16:
	.loc 1 357 0
	sll	$4,$4,3
	lw	$6,%gp_rel(pbOledFontCur)($28)
	addu	$6,$6,$4
.LVL20 = .
.L17:
	.loc 1 362 0
	lw	$2,%gp_rel(dxcoOledFontCur)($28)
	blez	$2,.L20
	lw	$3,%gp_rel(pbOledCur)($28)

	move	$2,$6
.LVL21 = .
	.loc 1 363 0
	addiu	$3,$3,1
.LVL22 = .
.L19:
	addiu	$2,$2,1
.LVL23 = .
	lbu	$4,-1($2)
	sb	$4,-1($3)
.LVL24 = .
	subu	$5,$2,$6
.LVL25 = .
	.loc 1 362 0
	lw	$4,%gp_rel(dxcoOledFontCur)($28)
	slt	$4,$5,$4
	bne	$4,$0,.L19
	addiu	$3,$3,1

.LVL26 = .
.L20:
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
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI1 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)
	.cfi_offset 31, -4
	.loc 1 390 0
	lw	$2,%gp_rel(xchOledCur)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(xchOledCur)($28)
	.loc 1 391 0
	lw	$3,%gp_rel(xchOledMax)($28)
	slt	$2,$2,$3
	bne	$2,$0,.L25
	lw	$2,%gp_rel(ychOledMax)($28)

	.loc 1 392 0
	sw	$0,%gp_rel(xchOledCur)($28)
	.loc 1 393 0
	lw	$2,%gp_rel(ychOledCur)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(ychOledCur)($28)
	.loc 1 395 0
	lw	$2,%gp_rel(ychOledMax)($28)
.L25:
	lw	$3,%gp_rel(ychOledCur)($28)
	slt	$2,$3,$2
	beql	$2,$0,.L23
	sw	$0,%gp_rel(ychOledCur)($28)

.L23:
	.loc 1 399 0
	lw	$4,%gp_rel(xchOledCur)($28)
	jal	OledSetCursor
	lw	$5,%gp_rel(ychOledCur)($28)

.LVL27 = .
	.loc 1 401 0
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledAdvanceCursor
	.cfi_endproc
.LFE10:
	.size	OledAdvanceCursor, .-OledAdvanceCursor
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
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL28 = .
	addiu	$sp,$sp,-24
.LCFI2 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)
	.cfi_offset 31, -4
	.loc 1 282 0
	jal	OledDrawGlyph
	seb	$4,$4

.LVL29 = .
	.loc 1 283 0
	jal	OledAdvanceCursor
	nop

.LVL30 = .
	.loc 1 284 0
	lw	$2,%gp_rel(fOledCharUpdate)($28)
	beq	$2,$0,.L29
	lw	$31,20($sp)

	.loc 1 285 0
	jal	OledUpdate
	nop

.LVL31 = .
	.loc 1 288 0
	lw	$31,20($sp)
.L29:
	j	$31
	addiu	$sp,$sp,24

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
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL32 = .
	addiu	$sp,$sp,-24
.LCFI3 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)
	sw	$16,16($sp)
	.cfi_offset 31, -4
	.cfi_offset 16, -8
	move	$16,$4
	.loc 1 311 0
	lb	$4,0($4)
.LVL33 = .
	beq	$4,$0,.L35
	lw	$2,%gp_rel(fOledCharUpdate)($28)

.L32:
	.loc 1 312 0
	jal	OledDrawGlyph
	addiu	$16,$16,1

.LVL34 = .
	.loc 1 313 0
	jal	OledAdvanceCursor
	nop

.LVL35 = .
	.loc 1 311 0
	lb	$4,0($16)
	bne	$4,$0,.L32
	lw	$2,%gp_rel(fOledCharUpdate)($28)

.L35:
	.loc 1 317 0
	beq	$2,$0,.L36
	lw	$31,20($sp)

	.loc 1 318 0
	jal	OledUpdate
	nop

.LVL36 = .
	.loc 1 321 0
	lw	$31,20($sp)
.L36:
	lw	$16,16($sp)
.LVL37 = .
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledPutString
	.cfi_endproc
.LFE8:
	.size	OledPutString, .-OledPutString

	.comm	rgbOledFontUser,256,4

	.comm	pbOledFontExt,4,4

	.comm	ychOledMax,4,4

	.comm	xchOledMax,4,4

	.comm	ychOledCur,4,4

	.comm	xchOledCur,4,4

	.comm	rgbOledBmp,512,4
.Letext0:
	.file 2 "c:/program files/microchip/xc32/v1.42/pic32mx/include/machine/int_types.h"
	.file 3 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/11_cpu/lab11_cache_solution/oled.h"
	.file 4 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/11_cpu/lab11_cache_solution/oledgrph.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x5cb
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.42\000"
	.byte	0x1
	.ascii	"OledChar.c\000"
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
	.ascii	"OledSetCursor\000"
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x1d4
	.uleb128 0x5
	.ascii	"xch\000"
	.byte	0x1
	.byte	0x79
	.4byte	0xf8
	.4byte	.LLST0
	.uleb128 0x5
	.ascii	"ych\000"
	.byte	0x1
	.byte	0x79
	.4byte	0xf8
	.4byte	.LLST1
	.uleb128 0x6
	.4byte	.LVL5
	.4byte	0x59c
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.ascii	"OledGetCursor\000"
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x213
	.uleb128 0x7
	.ascii	"pxch\000"
	.byte	0x1
	.byte	0xa3
	.4byte	0x213
	.byte	0x1
	.byte	0x54
	.uleb128 0x7
	.ascii	"pych\000"
	.byte	0x1
	.byte	0xa3
	.4byte	0x213
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf8
	.uleb128 0x9
	.byte	0x1
	.ascii	"OledDefUserChar\000"
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.4byte	0xf8
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x27d
	.uleb128 0x5
	.ascii	"ch\000"
	.byte	0x1
	.byte	0xc0
	.4byte	0x27d
	.4byte	.LLST2
	.uleb128 0x5
	.ascii	"pbDef\000"
	.byte	0x1
	.byte	0xc0
	.4byte	0x285
	.4byte	.LLST3
	.uleb128 0xa
	.ascii	"pb\000"
	.byte	0x1
	.byte	0xc2
	.4byte	0x285
	.4byte	.LLST4
	.uleb128 0xa
	.ascii	"ib\000"
	.byte	0x1
	.byte	0xc3
	.4byte	0xf8
	.4byte	.LLST5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0x8
	.byte	0x4
	.4byte	0x17e
	.uleb128 0x4
	.byte	0x1
	.ascii	"OledSetCharUpdate\000"
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x2bf
	.uleb128 0x5
	.ascii	"f\000"
	.byte	0x1
	.byte	0xe6
	.4byte	0xf8
	.4byte	.LLST6
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii	"OledGetCharUpdate\000"
	.byte	0x1
	.byte	0xfe
	.4byte	0xf8
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.ascii	"OledDrawGlyph\000"
	.byte	0x1
	.2byte	0x157
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x34b
	.uleb128 0xd
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x157
	.4byte	0x27d
	.4byte	.LLST7
	.uleb128 0xe
	.ascii	"pbFont\000"
	.byte	0x1
	.2byte	0x159
	.4byte	0x285
	.4byte	.LLST8
	.uleb128 0xe
	.ascii	"pbBmp\000"
	.byte	0x1
	.2byte	0x15a
	.4byte	0x285
	.4byte	.LLST9
	.uleb128 0xe
	.ascii	"ib\000"
	.byte	0x1
	.2byte	0x15b
	.4byte	0xf8
	.4byte	.LLST10
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.ascii	"OledAdvanceCursor\000"
	.byte	0x1
	.2byte	0x183
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x37b
	.uleb128 0x6
	.4byte	.LVL27
	.4byte	0x18a
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.ascii	"OledPutChar\000"
	.byte	0x1
	.2byte	0x117
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x3d7
	.uleb128 0xd
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x117
	.4byte	0x27d
	.4byte	.LLST11
	.uleb128 0x10
	.4byte	.LVL29
	.4byte	0x2e4
	.4byte	0x3c4
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0
	.uleb128 0x6
	.4byte	.LVL30
	.4byte	0x34b
	.uleb128 0x6
	.4byte	.LVL31
	.4byte	0x5bc
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.ascii	"OledPutString\000"
	.byte	0x1
	.2byte	0x134
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x425
	.uleb128 0xd
	.ascii	"sz\000"
	.byte	0x1
	.2byte	0x134
	.4byte	0x425
	.4byte	.LLST12
	.uleb128 0x6
	.4byte	.LVL34
	.4byte	0x2e4
	.uleb128 0x6
	.4byte	.LVL35
	.4byte	0x34b
	.uleb128 0x6
	.4byte	.LVL36
	.4byte	0x5bc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x27d
	.uleb128 0x12
	.4byte	0x17e
	.4byte	0x43c
	.uleb128 0x13
	.4byte	0x43c
	.2byte	0x1ff
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x14
	.ascii	"rgbOledBmp\000"
	.byte	0x1
	.byte	0x46
	.4byte	0x42b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rgbOledBmp
	.uleb128 0x15
	.ascii	"pbOledCur\000"
	.byte	0x1
	.byte	0x41
	.4byte	0x285
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.ascii	"fOledCharUpdate\000"
	.byte	0x1
	.byte	0x44
	.4byte	0xf8
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.ascii	"dxcoOledFontCur\000"
	.byte	0x1
	.byte	0x48
	.4byte	0xf8
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.ascii	"dycoOledFontCur\000"
	.byte	0x1
	.byte	0x49
	.4byte	0xf8
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.ascii	"pbOledFontCur\000"
	.byte	0x1
	.byte	0x4b
	.4byte	0x285
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.ascii	"pbOledFontUser\000"
	.byte	0x1
	.byte	0x4c
	.4byte	0x285
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.ascii	"xchOledCur\000"
	.byte	0x1
	.byte	0x52
	.4byte	0xf8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	xchOledCur
	.uleb128 0x14
	.ascii	"ychOledCur\000"
	.byte	0x1
	.byte	0x53
	.4byte	0xf8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	ychOledCur
	.uleb128 0x14
	.ascii	"xchOledMax\000"
	.byte	0x1
	.byte	0x55
	.4byte	0xf8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	xchOledMax
	.uleb128 0x14
	.ascii	"ychOledMax\000"
	.byte	0x1
	.byte	0x56
	.4byte	0xf8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	ychOledMax
	.uleb128 0x14
	.ascii	"pbOledFontExt\000"
	.byte	0x1
	.byte	0x58
	.4byte	0x285
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pbOledFontExt
	.uleb128 0x12
	.4byte	0x17e
	.4byte	0x57e
	.uleb128 0x16
	.4byte	0x43c
	.byte	0xff
	.byte	0
	.uleb128 0x14
	.ascii	"rgbOledFontUser\000"
	.byte	0x1
	.byte	0x5a
	.4byte	0x56e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rgbOledFontUser
	.uleb128 0x17
	.byte	0x1
	.ascii	"OledMoveTo\000"
	.byte	0x4
	.byte	0x47
	.byte	0x1
	.byte	0x1
	.4byte	0x5bc
	.uleb128 0x18
	.4byte	0xf8
	.uleb128 0x18
	.4byte	0xf8
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.ascii	"OledUpdate\000"
	.byte	0x3
	.byte	0x8a
	.byte	0x1
	.uleb128 0x1a
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,info
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	xchOledCur
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	ychOledCur
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x7
	.byte	0x76
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL29-1-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x60
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
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.42"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
