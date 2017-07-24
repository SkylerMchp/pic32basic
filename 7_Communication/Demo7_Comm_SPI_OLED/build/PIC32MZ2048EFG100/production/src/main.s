	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:
	.cfi_sections	.debug_frame

	.comm	rgbOledBmp,512,4
	.section	.rodata,code
	.align	2
.LC1:
	.ascii	"Hello,\000"
	.align	2
.LC2:
	.ascii	"World!\000"
	.align	2
.LC3:
	.ascii	"%7d\000"
	.align	2
.LC0:
	.byte	0
	.byte	17
	.byte	-103
	.byte	-69
	.byte	-1
	.section	.text,code
	.align	2
	.globl	main
.LFB71 = .
	.file 1 "e:/modules/7_communication/demo7_comm_spi_oled/src/main.c"
	.loc 1 27 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,96,$31		# vars= 72, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-96
.LCFI0 = .
	.cfi_def_cfa_offset 96
	sw	$31,92($sp)
	sw	$fp,88($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
.LCFI1 = .
	.cfi_def_cfa_register 30
	.loc 1 28 0
	lui	$2,%hi(.LC0)
	addiu	$3,$2,%lo(.LC0)
	lwl	$3,3($3)
	lwr	$3,%lo(.LC0)($2)
	sw	$3,44($fp)
	addiu	$2,$2,%lo(.LC0)
	lbu	$2,4($2)
	sb	$2,48($fp)
	.loc 1 31 0
	sw	$0,16($fp)
	.loc 1 35 0
	jal	InitApp
	nop

	.loc 1 37 0
	jal	OledDvrInit
	nop

	.loc 1 39 0
	li	$4,1			# 0x1
	jal	OledSetDrawColor
	nop

	.loc 1 40 0
	move	$4,$0
	jal	OledSetDrawMode
	nop

	.loc 1 41 0
	li	$4,3			# 0x3
	jal	OledGetStdPattern
	nop

	move	$4,$2
	jal	OledSetFillPattern
	nop

	.loc 1 43 0
	move	$4,$0
	move	$5,$0
	jal	OledSetCursor
	nop

	.loc 1 44 0
	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	jal	OledPutString
	nop

	.loc 1 45 0
	move	$4,$0
	li	$5,1			# 0x1
	jal	OledSetCursor
	nop

	.loc 1 46 0
	lui	$2,%hi(.LC2)
	addiu	$4,$2,%lo(.LC2)
	jal	OledPutString
	nop

.L6:
.LBB11 = .
	.loc 1 49 0
	move	$4,$0
	li	$5,3			# 0x3
	jal	OledSetCursor
	nop

	.loc 1 50 0
	addiu	$2,$fp,52
	move	$4,$2
	lui	$2,%hi(.LC3)
	addiu	$5,$2,%lo(.LC3)
	lw	$6,16($fp)
	jal	_sprintf_cdnopuxX
	nop

	.loc 1 51 0
	addiu	$2,$fp,52
	move	$4,$2
	jal	OledPutString
	nop

	.loc 1 53 0
	li	$4,96			# 0x60
	li	$5,16			# 0x10
	jal	OledMoveTo
	nop

	.loc 1 54 0
	move	$4,$0
	jal	OledSetDrawColor
	nop

	.loc 1 55 0
	lw	$2,16($fp)
	mtc1	$2,$f0
	cvt.s.w	$f0,$f0
	mfc1	$3,$f0
	lui	$2,%hi(.LC4)
	lw	$2,%lo(.LC4)($2)
	mtc1	$3,$f1
	mtc1	$2,$f0
	div.s	$f1,$f1,$f0
	mfc1	$2,$f1
	sw	$2,28($fp)
.LBB12 = .
.LBB13 = .
	.file 2 "c:/program files (x86)/microchip/xc32/v1.42/pic32mx/include/fdlmath.h"
	.loc 2 289 0
	lwc1	$f12,28($fp)
	jal	_cosx
	nop

	mfc1	$2,$f0
.LBE13 = .
.LBE12 = .
	.loc 1 55 0
	move	$3,$2
	lui	$2,%hi(.LC5)
	lw	$2,%lo(.LC5)($2)
	mtc1	$3,$f1
	mtc1	$2,$f0
	mul.s	$f1,$f1,$f0
	mfc1	$3,$f1
	lui	$2,%hi(.LC6)
	lw	$2,%lo(.LC6)($2)
	mtc1	$3,$f1
	mtc1	$2,$f0
	add.s	$f1,$f1,$f0
	mfc1	$2,$f1
	mtc1	$2,$f1
	trunc.w.s $f1,$f1
	mfc1	$2,$f1
	sw	$2,20($fp)
	.loc 1 56 0
	lw	$2,16($fp)
	mtc1	$2,$f0
	cvt.s.w	$f0,$f0
	mfc1	$3,$f0
	lui	$2,%hi(.LC4)
	lw	$2,%lo(.LC4)($2)
	mtc1	$3,$f1
	mtc1	$2,$f0
	div.s	$f1,$f1,$f0
	mfc1	$2,$f1
	sw	$2,32($fp)
.LBB14 = .
.LBB15 = .
	.loc 2 343 0
	lwc1	$f12,32($fp)
	jal	_sinx
	nop

	mfc1	$2,$f0
.LBE15 = .
.LBE14 = .
	.loc 1 56 0
	move	$3,$2
	lui	$2,%hi(.LC5)
	lw	$2,%lo(.LC5)($2)
	mtc1	$3,$f1
	mtc1	$2,$f0
	mul.s	$f1,$f1,$f0
	mfc1	$3,$f1
	lui	$2,%hi(.LC7)
	lw	$2,%lo(.LC7)($2)
	mtc1	$3,$f1
	mtc1	$2,$f0
	add.s	$f1,$f1,$f0
	mfc1	$2,$f1
	mtc1	$2,$f1
	trunc.w.s $f1,$f1
	mfc1	$2,$f1
	sw	$2,24($fp)
	.loc 1 59 0
	li	$4,1			# 0x1
	jal	OledSetDrawColor
	nop

	.loc 1 60 0
	li	$4,96			# 0x60
	li	$5,16			# 0x10
	jal	OledMoveTo
	nop

	.loc 1 61 0
	lw	$2,16($fp)
	addiu	$2,$2,1
	mtc1	$2,$f0
	cvt.s.w	$f0,$f0
	mfc1	$3,$f0
	lui	$2,%hi(.LC4)
	lw	$2,%lo(.LC4)($2)
	mtc1	$3,$f1
	mtc1	$2,$f0
	div.s	$f1,$f1,$f0
	mfc1	$2,$f1
	sw	$2,36($fp)
.LBB16 = .
.LBB17 = .
	.loc 2 289 0
	lwc1	$f12,36($fp)
	jal	_cosx
	nop

	mfc1	$2,$f0
.LBE17 = .
.LBE16 = .
	.loc 1 61 0
	move	$3,$2
	lui	$2,%hi(.LC5)
	lw	$2,%lo(.LC5)($2)
	mtc1	$3,$f1
	mtc1	$2,$f0
	mul.s	$f1,$f1,$f0
	mfc1	$3,$f1
	lui	$2,%hi(.LC6)
	lw	$2,%lo(.LC6)($2)
	mtc1	$3,$f1
	mtc1	$2,$f0
	add.s	$f1,$f1,$f0
	mfc1	$2,$f1
	mtc1	$2,$f1
	trunc.w.s $f1,$f1
	mfc1	$2,$f1
	sw	$2,20($fp)
	.loc 1 62 0
	lw	$2,16($fp)
	addiu	$2,$2,1
	mtc1	$2,$f0
	cvt.s.w	$f0,$f0
	mfc1	$3,$f0
	lui	$2,%hi(.LC4)
	lw	$2,%lo(.LC4)($2)
	mtc1	$3,$f1
	mtc1	$2,$f0
	div.s	$f1,$f1,$f0
	mfc1	$2,$f1
	sw	$2,40($fp)
.LBB18 = .
.LBB19 = .
	.loc 2 343 0
	lwc1	$f12,40($fp)
	jal	_sinx
	nop

	mfc1	$2,$f0
.LBE19 = .
.LBE18 = .
	.loc 1 62 0
	move	$3,$2
	lui	$2,%hi(.LC5)
	lw	$2,%lo(.LC5)($2)
	mtc1	$3,$f1
	mtc1	$2,$f0
	mul.s	$f1,$f1,$f0
	mfc1	$3,$f1
	lui	$2,%hi(.LC7)
	lw	$2,%lo(.LC7)($2)
	mtc1	$3,$f1
	mtc1	$2,$f0
	add.s	$f1,$f1,$f0
	mfc1	$2,$f1
	mtc1	$2,$f1
	trunc.w.s $f1,$f1
	mfc1	$2,$f1
	sw	$2,24($fp)
	.loc 1 64 0
	jal	OledUpdate
	nop

	.loc 1 65 0
	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
.LBE11 = .
	.loc 1 66 0
	j	.L6
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	main
	.cfi_endproc
.LFE71:
	.size	main, .-main
	.section	.rodata,code
	.align	2
.LC4:
	.word	1117782016
	.align	2
.LC5:
	.word	1097859072
	.align	2
.LC6:
	.word	1119879168
	.align	2
.LC7:
	.word	1098907648
	.section	.text,code
.Letext0:
	.file 3 "c:/program files (x86)/microchip/xc32/v1.42/pic32mx/include/machine/int_types.h"
	.file 4 "e:/modules/7_communication/demo7_comm_spi_oled/src/oled/oled.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x3a6
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.42\000"
	.byte	0x1
	.ascii	"src/main.c\000"
	.ascii	"E:/Modules/7_Communication/Demo7_Comm_SPI_OLED\000"
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
	.byte	0x3
	.byte	0x2f
	.4byte	0xd1
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
	.uleb128 0x3
	.ascii	"__int32_t\000"
	.byte	0x3
	.byte	0x32
	.4byte	0xaa
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
	.byte	0x4
	.byte	0x26
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x4
	.ascii	"cos\000"
	.byte	0x2
	.2byte	0x11f
	.byte	0x1
	.4byte	0x17e
	.byte	0x3
	.4byte	0x17e
	.uleb128 0x5
	.ascii	"x\000"
	.byte	0x2
	.2byte	0x11f
	.4byte	0x17e
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii	"double\000"
	.uleb128 0x4
	.ascii	"sin\000"
	.byte	0x2
	.2byte	0x155
	.byte	0x1
	.4byte	0x17e
	.byte	0x3
	.4byte	0x1a5
	.uleb128 0x5
	.ascii	"x\000"
	.byte	0x2
	.2byte	0x155
	.4byte	0x17e
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.ascii	"main\000"
	.byte	0x1
	.byte	0x1a
	.byte	0x1
	.4byte	0x105
	.4byte	.LFB71
	.4byte	.LFE71
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x35f
	.uleb128 0x7
	.ascii	"pattern\000"
	.byte	0x1
	.byte	0x1c
	.4byte	0x35f
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x7
	.ascii	"buffer\000"
	.byte	0x1
	.byte	0x1d
	.4byte	0x36f
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x7
	.ascii	"x\000"
	.byte	0x1
	.byte	0x1e
	.4byte	0xaa
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x7
	.ascii	"y\000"
	.byte	0x1
	.byte	0x1e
	.4byte	0xaa
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x8
	.ascii	"n\000"
	.byte	0x1
	.byte	0x1f
	.4byte	0xaa
	.uleb128 0x7
	.ascii	"i\000"
	.byte	0x1
	.byte	0x1f
	.4byte	0xaa
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x9
	.byte	0x1
	.ascii	"OledSetDrawColor\000"
	.byte	0x1
	.byte	0x27
	.4byte	0xaa
	.byte	0x1
	.4byte	0x232
	.uleb128 0xa
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.ascii	"OledSetDrawMode\000"
	.byte	0x1
	.byte	0x28
	.4byte	0xaa
	.byte	0x1
	.4byte	0x251
	.uleb128 0xa
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.ascii	"OledSetFillPattern\000"
	.byte	0x1
	.byte	0x29
	.4byte	0xaa
	.byte	0x1
	.4byte	0x273
	.uleb128 0xa
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.ascii	"OledGetStdPattern\000"
	.byte	0x1
	.byte	0x29
	.4byte	0xaa
	.byte	0x1
	.4byte	0x294
	.uleb128 0xa
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.ascii	"OledSetCursor\000"
	.byte	0x1
	.byte	0x2b
	.4byte	0xaa
	.byte	0x1
	.4byte	0x2b1
	.uleb128 0xa
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.ascii	"OledPutString\000"
	.byte	0x1
	.byte	0x2c
	.4byte	0xaa
	.byte	0x1
	.4byte	0x2ce
	.uleb128 0xa
	.byte	0
	.uleb128 0xb
	.4byte	.LBB11
	.4byte	.LBE11
	.uleb128 0x9
	.byte	0x1
	.ascii	"OledMoveTo\000"
	.byte	0x1
	.byte	0x35
	.4byte	0xaa
	.byte	0x1
	.4byte	0x2f1
	.uleb128 0xa
	.byte	0
	.uleb128 0xc
	.4byte	0x161
	.4byte	.LBB12
	.4byte	.LBE12
	.byte	0x1
	.byte	0x37
	.4byte	0x30d
	.uleb128 0xd
	.4byte	0x173
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.byte	0
	.uleb128 0xc
	.4byte	0x188
	.4byte	.LBB14
	.4byte	.LBE14
	.byte	0x1
	.byte	0x38
	.4byte	0x329
	.uleb128 0xd
	.4byte	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0
	.uleb128 0xc
	.4byte	0x161
	.4byte	.LBB16
	.4byte	.LBE16
	.byte	0x1
	.byte	0x3d
	.4byte	0x345
	.uleb128 0xd
	.4byte	0x173
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.byte	0
	.uleb128 0xe
	.4byte	0x188
	.4byte	.LBB18
	.4byte	.LBE18
	.byte	0x1
	.byte	0x3e
	.uleb128 0xd
	.4byte	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xc0
	.4byte	0x36f
	.uleb128 0x10
	.4byte	0x155
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.4byte	0x14d
	.4byte	0x37f
	.uleb128 0x10
	.4byte	0x155
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	0x141
	.4byte	0x390
	.uleb128 0x11
	.4byte	0x155
	.2byte	0x1ff
	.byte	0
	.uleb128 0x12
	.ascii	"rgbOledBmp\000"
	.byte	0x4
	.byte	0x68
	.4byte	0x37f
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
