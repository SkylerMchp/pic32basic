	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:
	.cfi_sections	.debug_frame

	.comm	rgbOledBmp,512,4

	.comm	xcoOledCur,4,4

	.comm	ycoOledCur,4,4

	.comm	pbOledCur,4,4

	.comm	bnOledCur,4,4

	.comm	clrOledCur,1,1

	.comm	pbOledPatCur,4,4

	.comm	fOledCharUpdate,4,4

	.comm	dxcoOledFontCur,4,4

	.comm	dycoOledFontCur,4,4

	.comm	pbOledFontCur,4,4

	.comm	pbOledFontUser,4,4
	.align	2
	.globl	OledHostInit
.LFB2 = .
	.file 1 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/7_communication/demo7_comm_uart_int/src/oled/oled.c"
	.loc 1 130 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledHostInit
	.type	OledHostInit, @function
OledHostInit:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI0 = .
	.cfi_def_cfa_offset 8
	sw	$fp,4($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
.LCFI1 = .
	.cfi_def_cfa_register 30
	.loc 1 134 0
	lui	$2,%hi(SPI2CON)
	sw	$0,%lo(SPI2CON)($2)
	.loc 1 135 0
	lui	$2,%hi(SPI2BRG)
	li	$3,9			# 0x9
	sw	$3,%lo(SPI2BRG)($2)
	.loc 1 136 0
	lui	$3,%hi(SPI2STAT)
	lw	$2,%lo(SPI2STAT)($3)
	ins	$2,$0,6,1
	sw	$2,%lo(SPI2STAT)($3)
	.loc 1 137 0
	lui	$3,%hi(SPI2CON)
	lw	$2,%lo(SPI2CON)($3)
	li	$4,1			# 0x1
	ins	$2,$4,6,1
	sw	$2,%lo(SPI2CON)($3)
	.loc 1 138 0
	lui	$3,%hi(SPI2CON)
	lw	$2,%lo(SPI2CON)($3)
	li	$4,1			# 0x1
	ins	$2,$4,5,1
	sw	$2,%lo(SPI2CON)($3)
	.loc 1 139 0
	lui	$3,%hi(SPI2CON)
	lw	$2,%lo(SPI2CON)($3)
	li	$4,1			# 0x1
	ins	$2,$4,15,1
	sw	$2,%lo(SPI2CON)($3)
	.loc 1 142 0
	lui	$2,%hi(LATDSET)
	li	$3,36864			# 0x9000
	sw	$3,%lo(LATDSET)($2)
	.loc 1 143 0
	lui	$2,%hi(LATDSET)
	li	$3,16384			# 0x4000
	sw	$3,%lo(LATDSET)($2)
	.loc 1 146 0
	lui	$2,%hi(TRISDCLR)
	li	$3,36864			# 0x9000
	sw	$3,%lo(TRISDCLR)($2)
	.loc 1 147 0
	lui	$2,%hi(TRISDCLR)
	li	$3,16384			# 0x4000
	sw	$3,%lo(TRISDCLR)($2)
	.loc 1 150 0
	lui	$2,%hi(TRISDCLR)
	li	$3,2048			# 0x800
	sw	$3,%lo(TRISDCLR)($2)
	.loc 1 155 0
	lui	$2,%hi(LATGSET)
	li	$3,512			# 0x200
	sw	$3,%lo(LATGSET)($2)
	.loc 1 158 0
	lui	$2,%hi(TRISGCLR)
	li	$3,512			# 0x200
	sw	$3,%lo(TRISGCLR)($2)
	.loc 1 159 0
	lui	$2,%hi(ANSELGCLR)
	li	$3,512			# 0x200
	sw	$3,%lo(ANSELGCLR)($2)
	.loc 1 162 0
	lui	$2,%hi(RPD11R)
	li	$3,6			# 0x6
	sw	$3,%lo(RPD11R)($2)
	.loc 1 163 0
	move	$sp,$fp
.LCFI2 = .
	.cfi_def_cfa_register 29
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledHostInit
	.cfi_endproc
.LFE2:
	.size	OledHostInit, .-OledHostInit
	.align	2
	.globl	OledDspInit
.LFB3 = .
	.loc 1 182 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledDspInit
	.type	OledDspInit, @function
OledDspInit:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI3 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)
	sw	$fp,16($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
.LCFI4 = .
	.cfi_def_cfa_register 30
	.loc 1 185 0
	lui	$2,%hi(LATDCLR)
	li	$3,16384			# 0x4000
	sw	$3,%lo(LATDCLR)($2)
	.loc 1 188 0
	lui	$2,%hi(LATDCLR)
	li	$3,4096			# 0x1000
	sw	$3,%lo(LATDCLR)($2)
	.loc 1 189 0
	li	$4,1			# 0x1
	jal	DelayMs
	nop

	.loc 1 192 0
	li	$4,174			# 0xae
	jal	Spi2PutByte
	nop

	.loc 1 195 0
	lui	$2,%hi(PORTGCLR)
	li	$3,512			# 0x200
	sw	$3,%lo(PORTGCLR)($2)
	.loc 1 196 0
	li	$4,1			# 0x1
	jal	DelayMs
	nop

	.loc 1 197 0
	lui	$2,%hi(PORTGSET)
	li	$3,512			# 0x200
	sw	$3,%lo(PORTGSET)($2)
	.loc 1 200 0
	li	$4,141			# 0x8d
	jal	Spi2PutByte
	nop

	.loc 1 201 0
	li	$4,20			# 0x14
	jal	Spi2PutByte
	nop

	.loc 1 202 0
	li	$4,217			# 0xd9
	jal	Spi2PutByte
	nop

	.loc 1 203 0
	li	$4,241			# 0xf1
	jal	Spi2PutByte
	nop

	.loc 1 206 0
	lui	$2,%hi(LATDCLR)
	li	$3,32768			# 0x8000
	sw	$3,%lo(LATDCLR)($2)
	.loc 1 207 0
	li	$4,100			# 0x64
	jal	DelayMs
	nop

	.loc 1 212 0
	li	$4,161			# 0xa1
	jal	Spi2PutByte
	nop

	.loc 1 213 0
	li	$4,200			# 0xc8
	jal	Spi2PutByte
	nop

	.loc 1 217 0
	li	$4,218			# 0xda
	jal	Spi2PutByte
	nop

	.loc 1 218 0
	li	$4,32			# 0x20
	jal	Spi2PutByte
	nop

	.loc 1 221 0
	li	$4,175			# 0xaf
	jal	Spi2PutByte
	nop

	.loc 1 222 0
	move	$sp,$fp
.LCFI5 = .
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
	.end	OledDspInit
	.cfi_endproc
.LFE3:
	.size	OledDspInit, .-OledDspInit
	.align	2
	.globl	OledDvrInit
.LFB4 = .
	.loc 1 243 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledDvrInit
	.type	OledDvrInit, @function
OledDvrInit:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI6 = .
	.cfi_def_cfa_offset 32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
.LCFI7 = .
	.cfi_def_cfa_register 30
	.loc 1 248 0
	li	$2,8			# 0x8
	sw	$2,%gp_rel(dxcoOledFontCur)($28)
	.loc 1 249 0
	li	$2,8			# 0x8
	sw	$2,%gp_rel(dycoOledFontCur)($28)
	.loc 1 250 0
	lui	$2,%hi(rgbOledFont0)
	addiu	$2,$2,%lo(rgbOledFont0)
	sw	$2,%gp_rel(pbOledFontCur)($28)
	.loc 1 251 0
	lui	$2,%hi(rgbOledFontUser)
	addiu	$2,$2,%lo(rgbOledFontUser)
	sw	$2,%gp_rel(pbOledFontUser)($28)
	.loc 1 253 0
	sw	$0,16($fp)
	j	.L4
	nop

.L5:
	.loc 1 254 0
	lui	$2,%hi(rgbOledFontUser)
	addiu	$3,$2,%lo(rgbOledFontUser)
	lw	$2,16($fp)
	addu	$2,$3,$2
	sb	$0,0($2)
	.loc 1 253 0
	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
.L4:
	lw	$2,16($fp)
	slt	$2,$2,256
	bne	$2,$0,.L5
	nop

	.loc 1 257 0
	lw	$2,%gp_rel(dxcoOledFontCur)($28)
	li	$3,128			# 0x80
	div	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	mflo	$2
	sw	$2,%gp_rel(xchOledMax)($28)
	.loc 1 258 0
	lw	$2,%gp_rel(dycoOledFontCur)($28)
	li	$3,32			# 0x20
	div	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	mflo	$2
	sw	$2,%gp_rel(ychOledMax)($28)
	.loc 1 262 0
	move	$4,$0
	move	$5,$0
	jal	OledSetCursor
	nop

	.loc 1 266 0
	li	$2,1			# 0x1
	sb	$2,%gp_rel(clrOledCur)($28)
	.loc 1 267 0
	lui	$2,%hi(rgbFillPat)
	addiu	$2,$2,%lo(rgbFillPat)
	sw	$2,%gp_rel(pbOledPatCur)($28)
	.loc 1 268 0
	move	$4,$0
	jal	OledSetDrawMode
	nop

	.loc 1 273 0
	li	$2,1			# 0x1
	sw	$2,%gp_rel(fOledCharUpdate)($28)
	.loc 1 275 0
	move	$sp,$fp
.LCFI8 = .
	.cfi_def_cfa_register 29
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledDvrInit
	.cfi_endproc
.LFE4:
	.size	OledDvrInit, .-OledDvrInit
	.align	2
	.globl	OledUpdate
.LFB5 = .
	.loc 1 294 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledUpdate
	.type	OledUpdate, @function
OledUpdate:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI9 = .
	.cfi_def_cfa_offset 32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
.LCFI10 = .
	.cfi_def_cfa_register 30
	.loc 1 298 0
	lui	$2,%hi(rgbOledBmp)
	addiu	$2,$2,%lo(rgbOledBmp)
	sw	$2,20($fp)
	.loc 1 299 0
	sw	$0,16($fp)
	j	.L7
	nop

.L8:
.LBB2 = .
	.loc 1 300 0
	lui	$2,%hi(LATDCLR)
	li	$3,16384			# 0x4000
	sw	$3,%lo(LATDCLR)($2)
	.loc 1 304 0
	li	$4,34			# 0x22
	jal	Spi2PutByte
	nop

	.loc 1 305 0
	lw	$4,16($fp)
	jal	Spi2PutByte
	nop

	.loc 1 308 0
	move	$4,$0
	jal	Spi2PutByte
	nop

	.loc 1 309 0
	li	$4,16			# 0x10
	jal	Spi2PutByte
	nop

	.loc 1 310 0
	lui	$2,%hi(LATDSET)
	li	$3,16384			# 0x4000
	sw	$3,%lo(LATDSET)($2)
	.loc 1 314 0
	li	$4,128			# 0x80
	lw	$5,20($fp)
	jal	OledPutBuffer
	nop

	.loc 1 315 0
	lw	$2,20($fp)
	addiu	$2,$2,128
	sw	$2,20($fp)
.LBE2 = .
	.loc 1 299 0
	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
.L7:
	lw	$2,16($fp)
	slt	$2,$2,4
	bne	$2,$0,.L8
	nop

	.loc 1 317 0
	move	$sp,$fp
.LCFI11 = .
	.cfi_def_cfa_register 29
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledUpdate
	.cfi_endproc
.LFE5:
	.size	OledUpdate, .-OledUpdate
	.align	2
	.globl	OledHostTerm
.LFB6 = .
	.loc 1 337 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledHostTerm
	.type	OledHostTerm, @function
OledHostTerm:
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
	.loc 1 364 0
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
	.end	OledHostTerm
	.cfi_endproc
.LFE6:
	.size	OledHostTerm, .-OledHostTerm
	.align	2
	.globl	OledDevTerm
.LFB7 = .
	.loc 1 384 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	OledDevTerm
	.type	OledDevTerm, @function
OledDevTerm:
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
	.loc 1 388 0
	li	$4,174			# 0xae
	jal	Spi2PutByte
	nop

	.loc 1 399 0
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
	.end	OledDevTerm
	.cfi_endproc
.LFE7:
	.size	OledDevTerm, .-OledDevTerm
.Letext0:
	.file 2 "c:/program files/microchip/xc32/v1.42/pic32mx/include/proc/p32mz2048efg100.h"
	.file 3 "c:/program files/microchip/xc32/v1.42/pic32mx/include/machine/int_types.h"
	.file 4 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/7_communication/demo7_comm_uart_int/src/oled/oled.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x962
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.42\000"
	.byte	0x1
	.ascii	"src/OLED/OLED.c\000"
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x1a98
	.4byte	0x2ac
	.uleb128 0x4
	.ascii	"SRXISEL\000"
	.byte	0x2
	.2byte	0x1a99
	.4byte	0xd4
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"STXISEL\000"
	.byte	0x2
	.2byte	0x1a9a
	.4byte	0xd4
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"DISSDI\000"
	.byte	0x2
	.2byte	0x1a9b
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"MSTEN\000"
	.byte	0x2
	.2byte	0x1a9c
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"CKP\000"
	.byte	0x2
	.2byte	0x1a9d
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SSEN\000"
	.byte	0x2
	.2byte	0x1a9e
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"CKE\000"
	.byte	0x2
	.2byte	0x1a9f
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SMP\000"
	.byte	0x2
	.2byte	0x1aa0
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"MODE16\000"
	.byte	0x2
	.2byte	0x1aa1
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"MODE32\000"
	.byte	0x2
	.2byte	0x1aa2
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"DISSDO\000"
	.byte	0x2
	.2byte	0x1aa3
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SIDL\000"
	.byte	0x2
	.2byte	0x1aa4
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ON\000"
	.byte	0x2
	.2byte	0x1aa6
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ENHBUF\000"
	.byte	0x2
	.2byte	0x1aa7
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPIFE\000"
	.byte	0x2
	.2byte	0x1aa8
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"MCLKSEL\000"
	.byte	0x2
	.2byte	0x1aaa
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"FRMCNT\000"
	.byte	0x2
	.2byte	0x1aab
	.4byte	0xd4
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"FRMSYPW\000"
	.byte	0x2
	.2byte	0x1aac
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"MSSEN\000"
	.byte	0x2
	.2byte	0x1aad
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"FRMPOL\000"
	.byte	0x2
	.2byte	0x1aae
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"FRMSYNC\000"
	.byte	0x2
	.2byte	0x1aaf
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"FRMEN\000"
	.byte	0x2
	.2byte	0x1ab0
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x1ab2
	.4byte	0x2c6
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x1ab3
	.4byte	0xd4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x1a97
	.4byte	0x2da
	.uleb128 0x6
	.4byte	0xe4
	.uleb128 0x6
	.4byte	0x2ac
	.byte	0
	.uleb128 0x7
	.ascii	"__SPI2CONbits_t\000"
	.byte	0x2
	.2byte	0x1ab5
	.4byte	0x2c6
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x1abd
	.4byte	0x3e6
	.uleb128 0x4
	.ascii	"SPIRBF\000"
	.byte	0x2
	.2byte	0x1abe
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPITBF\000"
	.byte	0x2
	.2byte	0x1abf
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPITBE\000"
	.byte	0x2
	.2byte	0x1ac1
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPIRBE\000"
	.byte	0x2
	.2byte	0x1ac3
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPIROV\000"
	.byte	0x2
	.2byte	0x1ac4
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SRMT\000"
	.byte	0x2
	.2byte	0x1ac5
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPITUR\000"
	.byte	0x2
	.2byte	0x1ac6
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPIBUSY\000"
	.byte	0x2
	.2byte	0x1ac8
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"FRMERR\000"
	.byte	0x2
	.2byte	0x1ac9
	.4byte	0xd4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TXBUFELM\000"
	.byte	0x2
	.2byte	0x1acb
	.4byte	0xd4
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"RXBUFELM\000"
	.byte	0x2
	.2byte	0x1acd
	.4byte	0xd4
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x1acf
	.4byte	0x400
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x1ad0
	.4byte	0xd4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x1abc
	.4byte	0x414
	.uleb128 0x6
	.4byte	0x2f2
	.uleb128 0x6
	.4byte	0x3e6
	.byte	0
	.uleb128 0x7
	.ascii	"__SPI2STATbits_t\000"
	.byte	0x2
	.2byte	0x1ad2
	.4byte	0x400
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
	.uleb128 0x8
	.ascii	"__uint8_t\000"
	.byte	0x3
	.byte	0x2f
	.4byte	0x475
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
	.uleb128 0x8
	.ascii	"BYTE\000"
	.byte	0x4
	.byte	0x26
	.4byte	0x464
	.uleb128 0x9
	.byte	0x1
	.ascii	"OledHostInit\000"
	.byte	0x1
	.byte	0x81
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x50d
	.uleb128 0xa
	.ascii	"tcfg\000"
	.byte	0x1
	.byte	0x83
	.4byte	0xd4
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii	"OledDspInit\000"
	.byte	0x1
	.byte	0xb5
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x53c
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0xc0
	.4byte	0x44e
	.byte	0x1
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii	"OledDvrInit\000"
	.byte	0x1
	.byte	0xf2
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x5a3
	.uleb128 0xe
	.ascii	"ib\000"
	.byte	0x1
	.byte	0xf4
	.4byte	0x44e
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xf
	.byte	0x1
	.ascii	"OledSetCursor\000"
	.byte	0x1
	.2byte	0x106
	.4byte	0x44e
	.byte	0x1
	.4byte	0x586
	.uleb128 0xd
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ascii	"OledSetDrawMode\000"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x44e
	.byte	0x1
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.ascii	"OledUpdate\000"
	.byte	0x1
	.2byte	0x125
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x625
	.uleb128 0x12
	.ascii	"ipag\000"
	.byte	0x1
	.2byte	0x127
	.4byte	0x44e
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x13
	.ascii	"icol\000"
	.byte	0x1
	.2byte	0x128
	.4byte	0x44e
	.uleb128 0x12
	.ascii	"pb\000"
	.byte	0x1
	.2byte	0x129
	.4byte	0x625
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x14
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0xc0
	.4byte	0x44e
	.byte	0x1
	.4byte	0x609
	.uleb128 0xd
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ascii	"OledPutBuffer\000"
	.byte	0x1
	.2byte	0x13a
	.4byte	0x44e
	.byte	0x1
	.uleb128 0xd
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0x4d4
	.uleb128 0x17
	.byte	0x1
	.ascii	"OledHostTerm\000"
	.byte	0x1
	.2byte	0x150
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.ascii	"OledDevTerm\000"
	.byte	0x1
	.2byte	0x17f
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x678
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0xc0
	.4byte	0x44e
	.byte	0x1
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x18
	.ascii	"RPD11R\000"
	.byte	0x2
	.2byte	0x5b4
	.4byte	0x689
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd4
	.uleb128 0x18
	.ascii	"SPI2CON\000"
	.byte	0x2
	.2byte	0x1a96
	.4byte	0x689
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.ascii	"SPI2CONbits\000"
	.byte	0x2
	.2byte	0x1ab6
	.ascii	"SPI2CON\000"
	.4byte	0x6be
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2da
	.uleb128 0x1a
	.ascii	"SPI2STATbits\000"
	.byte	0x2
	.2byte	0x1ad3
	.ascii	"SPI2STAT\000"
	.4byte	0x6e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x414
	.uleb128 0x18
	.ascii	"SPI2BRG\000"
	.byte	0x2
	.2byte	0x1ada
	.4byte	0x689
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.ascii	"TRISDCLR\000"
	.byte	0x2
	.2byte	0x2fbe
	.4byte	0x689
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.ascii	"LATDCLR\000"
	.byte	0x2
	.2byte	0x2ff4
	.4byte	0x689
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.ascii	"LATDSET\000"
	.byte	0x2
	.2byte	0x2ff5
	.4byte	0x689
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.ascii	"ANSELGCLR\000"
	.byte	0x2
	.2byte	0x3306
	.4byte	0x689
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.ascii	"TRISGCLR\000"
	.byte	0x2
	.2byte	0x331f
	.4byte	0x689
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.ascii	"PORTGCLR\000"
	.byte	0x2
	.2byte	0x3338
	.4byte	0x689
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.ascii	"PORTGSET\000"
	.byte	0x2
	.2byte	0x3339
	.4byte	0x689
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.ascii	"LATGSET\000"
	.byte	0x2
	.2byte	0x3352
	.4byte	0x689
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	0x4d4
	.4byte	0x7a1
	.uleb128 0x1c
	.4byte	0x7a1
	.2byte	0x1ff
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x1d
	.ascii	"rgbOledBmp\000"
	.byte	0x4
	.byte	0x68
	.4byte	0x790
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rgbOledBmp
	.uleb128 0x1b
	.4byte	0x4d4
	.4byte	0x7d1
	.uleb128 0x1e
	.byte	0
	.uleb128 0x1f
	.ascii	"rgbOledFont0\000"
	.byte	0x1
	.byte	0x42
	.4byte	0x7c6
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.ascii	"rgbOledFontUser\000"
	.byte	0x1
	.byte	0x43
	.4byte	0x7c6
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.ascii	"rgbFillPat\000"
	.byte	0x1
	.byte	0x44
	.4byte	0x7c6
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.ascii	"xchOledMax\000"
	.byte	0x1
	.byte	0x46
	.4byte	0x44e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.ascii	"ychOledMax\000"
	.byte	0x1
	.byte	0x47
	.4byte	0x44e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.ascii	"xcoOledCur\000"
	.byte	0x1
	.byte	0x4d
	.4byte	0x44e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	xcoOledCur
	.uleb128 0x1d
	.ascii	"ycoOledCur\000"
	.byte	0x1
	.byte	0x4e
	.4byte	0x44e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	ycoOledCur
	.uleb128 0x1d
	.ascii	"pbOledCur\000"
	.byte	0x1
	.byte	0x50
	.4byte	0x625
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pbOledCur
	.uleb128 0x1d
	.ascii	"bnOledCur\000"
	.byte	0x1
	.byte	0x51
	.4byte	0x44e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	bnOledCur
	.uleb128 0x1d
	.ascii	"clrOledCur\000"
	.byte	0x1
	.byte	0x52
	.4byte	0x4d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	clrOledCur
	.uleb128 0x1d
	.ascii	"pbOledPatCur\000"
	.byte	0x1
	.byte	0x53
	.4byte	0x625
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pbOledPatCur
	.uleb128 0x1d
	.ascii	"fOledCharUpdate\000"
	.byte	0x1
	.byte	0x54
	.4byte	0x44e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fOledCharUpdate
	.uleb128 0x1d
	.ascii	"dxcoOledFontCur\000"
	.byte	0x1
	.byte	0x56
	.4byte	0x44e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	dxcoOledFontCur
	.uleb128 0x1d
	.ascii	"dycoOledFontCur\000"
	.byte	0x1
	.byte	0x57
	.4byte	0x44e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	dycoOledFontCur
	.uleb128 0x1d
	.ascii	"pbOledFontCur\000"
	.byte	0x1
	.byte	0x59
	.4byte	0x625
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pbOledFontCur
	.uleb128 0x1d
	.ascii	"pbOledFontUser\000"
	.byte	0x1
	.byte	0x5a
	.4byte	0x625
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pbOledFontUser
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
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
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0xd
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.ascii	"Spi2PutByte\000"
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.42"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
