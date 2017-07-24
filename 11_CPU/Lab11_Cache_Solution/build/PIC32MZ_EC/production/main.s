	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.globl	Timed_Array_Test_CR
.LFB2 = .
	.file 1 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/11_cpu/lab11_cache_solution/main.c"
	.loc 1 32 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	Timed_Array_Test_CR
	.type	Timed_Array_Test_CR, @function
Timed_Array_Test_CR:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL0 = .
	.loc 1 37 0
	lui	$2,%hi(LATE)
	lhu	$3,%lo(LATE)($2)
	li	$8,1			# 0x1
	ins	$3,$8,0,1
	sh	$3,%lo(LATE)($2)
	.loc 1 38 0
	lui	$2,%hi(TMR2)
	sw	$0,%lo(TMR2)($2)
.LVL1 = .
	.loc 1 43 0
	sll	$11,$5,2
	.loc 1 34 0
	move	$8,$0
	.loc 1 39 0
	move	$10,$0
.LVL2 = .
.L5:
	move	$3,$6
	.loc 1 41 0
	move	$2,$0
.LVL3 = .
.L3:
	.loc 1 43 0
	lw	$9,0($3)
	addu	$8,$8,$9
.LVL4 = .
	.loc 1 44 0
	addiu	$2,$2,1
.LVL5 = .
	.loc 1 45 0
	slt	$9,$2,$5
	bne	$9,$0,.L3
	addiu	$3,$3,4

	.loc 1 46 0
	addiu	$10,$10,1
.LVL6 = .
	.loc 1 47 0
	slt	$2,$10,$4
.LVL7 = .
	bne	$2,$0,.L5
	addu	$6,$6,$11

	.loc 1 48 0
	lui	$2,%hi(TMR2)
	lw	$2,%lo(TMR2)($2)
.LVL8 = .
	.loc 1 49 0
	lui	$3,%hi(LATE)
	lhu	$4,%lo(LATE)($3)
.LVL9 = .
	ins	$4,$0,0,1
	sh	$4,%lo(LATE)($3)
	.loc 1 52 0
	j	$31
	sw	$8,0($7)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	Timed_Array_Test_CR
	.cfi_endproc
.LFE2:
	.size	Timed_Array_Test_CR, .-Timed_Array_Test_CR
	.align	2
	.globl	Timed_Array_Test_RC
.LFB3 = .
	.loc 1 54 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	Timed_Array_Test_RC
	.type	Timed_Array_Test_RC, @function
Timed_Array_Test_RC:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL10 = .
	.loc 1 59 0
	lui	$2,%hi(LATE)
	lhu	$3,%lo(LATE)($2)
	li	$8,1			# 0x1
	ins	$3,$8,0,1
	sh	$3,%lo(LATE)($2)
	.loc 1 60 0
	lui	$2,%hi(TMR2)
	sw	$0,%lo(TMR2)($2)
.LVL11 = .
	.loc 1 65 0
	sll	$11,$5,2
	.loc 1 56 0
	move	$8,$0
	.loc 1 61 0
	move	$12,$0
.LVL12 = .
	move	$3,$6
.L11:
	.loc 1 63 0
	move	$2,$0
	.loc 1 65 0
	sll	$10,$12,2
.LVL13 = .
.L8:
	lwx	$9,$3($10)
	addu	$8,$8,$9
.LVL14 = .
	.loc 1 66 0
	addiu	$2,$2,1
.LVL15 = .
	.loc 1 67 0
	slt	$9,$2,$4
	bne	$9,$0,.L8
	addu	$3,$3,$11

	.loc 1 68 0
	addiu	$12,$12,1
.LVL16 = .
	.loc 1 69 0
	slt	$2,$12,$5
.LVL17 = .
	bne	$2,$0,.L11
	move	$3,$6

	.loc 1 70 0
	lui	$2,%hi(TMR2)
	lw	$2,%lo(TMR2)($2)
.LVL18 = .
	.loc 1 71 0
	lui	$3,%hi(LATE)
	lhu	$4,%lo(LATE)($3)
.LVL19 = .
	ins	$4,$0,0,1
	sh	$4,%lo(LATE)($3)
	.loc 1 74 0
	j	$31
	sw	$8,0($7)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	Timed_Array_Test_RC
	.cfi_endproc
.LFE3:
	.size	Timed_Array_Test_RC, .-Timed_Array_Test_RC
	.align	2
	.globl	Pollute_Cache
.LFB4 = .
	.loc 1 76 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	Pollute_Cache
	.type	Pollute_Cache, @function
Pollute_Cache:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL20 = .
	.loc 1 76 0
	li	$2,1024			# 0x400
.LVL21 = .
	addiu	$2,$2,-1
.LVL22 = .
.L16:
	.loc 1 80 0
	bnel	$2,$0,.L16
	addiu	$2,$2,-1

.LVL23 = .
	.loc 1 83 0
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	Pollute_Cache
	.cfi_endproc
.LFE4:
	.size	Pollute_Cache, .-Pollute_Cache
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"Cache Eval.\000"
	.align	2
.LC1:
	.ascii	"%u*%u array\000"
	.align	2
.LC2:
	.ascii	"%6u T2 ticks\000"
	.align	2
.LC3:
	.ascii	"%6.3f CPU cy/el\000"
	.globl	__floatunsisf
	.globl	fpmul
	.globl	fpdiv
	.section	.text,code
	.align	2
	.globl	main
.LFB5 = .
	.loc 1 85 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$sp,72,$31		# vars= 24, regs= 8/0, args= 16, gp= 0
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-72
.LCFI0 = .
	.cfi_def_cfa_offset 72
	sw	$31,68($sp)
	sw	$22,64($sp)
	sw	$21,60($sp)
	sw	$20,56($sp)
	sw	$19,52($sp)
	sw	$18,48($sp)
	sw	$17,44($sp)
	sw	$16,40($sp)
	.cfi_offset 31, -4
	.cfi_offset 22, -8
	.cfi_offset 21, -12
	.cfi_offset 20, -16
	.cfi_offset 19, -20
	.cfi_offset 18, -24
	.cfi_offset 17, -28
	.cfi_offset 16, -32
.LVL24 = .
	.loc 1 92 0
	jal	InitApp
	sw	$0,32($sp)

.LVL25 = .
	.loc 1 94 0
	move	$4,$0
	jal	OledSetCursor
	move	$5,$0

.LVL26 = .
	.loc 1 95 0
	lui	$4,%hi(.LC0)
	jal	OledPutString
	addiu	$4,$4,%lo(.LC0)

.LVL27 = .
	.loc 1 96 0
	jal	DelayMs
	li	$4,500			# 0x1f4

.LVL28 = .
	.loc 1 99 0
	lui	$22,%hi(.LC1)
	addiu	$22,$22,%lo(.LC1)
	.loc 1 106 0
	lui	$21,%hi(aa)
	addiu	$21,$21,%lo(aa)
	.loc 1 108 0
	lui	$20,%hi(.LC2)
	addiu	$20,$20,%lo(.LC2)
	.loc 1 112 0
	lui	$2,%hi(.LC4)
	lw	$19,%lo(.LC4)($2)
	lui	$2,%hi(.LC5)
	lw	$18,%lo(.LC5)($2)
	lui	$17,%hi(.LC3)
	addiu	$17,$17,%lo(.LC3)
.LVL29 = .
	.loc 1 99 0
	addiu	$4,$sp,16
.L20:
	move	$5,$22
	li	$6,48			# 0x30
	jal	_sprintf_cdfFnopuxX
	li	$7,48			# 0x30

.LVL30 = .
	.loc 1 100 0
	move	$4,$0
	jal	OledSetCursor
	li	$5,1			# 0x1

.LVL31 = .
	.loc 1 101 0
	jal	OledPutString
	addiu	$4,$sp,16

.LVL32 = .
	.loc 1 106 0
	li	$4,48			# 0x30
	li	$5,48			# 0x30
	move	$6,$21
	jal	Timed_Array_Test_CR
	addiu	$7,$sp,32

.LVL33 = .
	move	$16,$2
.LVL34 = .
	.loc 1 108 0
	addiu	$4,$sp,16
	move	$5,$20
	jal	_sprintf_cdfFnopuxX
	move	$6,$2

.LVL35 = .
	.loc 1 109 0
	move	$4,$0
	jal	OledSetCursor
	li	$5,2			# 0x2

.LVL36 = .
	.loc 1 110 0
	jal	OledPutString
	addiu	$4,$sp,16

.LVL37 = .
	.loc 1 112 0
	jal	__floatunsisf
	move	$4,$16

.LVL38 = .
	move	$4,$2
	jal	fpmul
	move	$5,$19

.LVL39 = .
	move	$4,$2
	jal	fpdiv
	move	$5,$18

.LVL40 = .
	addiu	$4,$sp,16
	move	$5,$17
	jal	_sprintf_cdfFnopuxX
	move	$6,$2

.LVL41 = .
	.loc 1 113 0
	move	$4,$0
	jal	OledSetCursor
	li	$5,3			# 0x3

.LVL42 = .
	.loc 1 114 0
	jal	OledPutString
	addiu	$4,$sp,16

.LVL43 = .
	.loc 1 99 0
	j	.L20
	addiu	$4,$sp,16

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	main
	.cfi_endproc
.LFE5:
	.size	main, .-main

	.comm	aa,9216,4

	.comm	dummy,4096,4

	.comm	rgbOledBmp,512,4
	.section	.rodata,code
	.align	2
.LC4:
	.word	1082130432
	.align	2
.LC5:
	.word	1158676480
	.section	.text,code
.Letext0:
	.file 2 "c:/program files/microchip/xc32/v1.42/pic32mx/include/proc/p32mz2048ecg100.h"
	.file 3 "c:/program files/microchip/xc32/v1.42/pic32mx/include/machine/int_types.h"
	.file 4 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/11_cpu/lab11_cache_solution/oled.h"
	.file 5 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/11_cpu/lab11_cache_solution/user.h"
	.file 6 "c:/program files/microchip/xc32/v1.42/pic32mx/include/stdio.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x76b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.42\000"
	.byte	0x1
	.ascii	"main.c\000"
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2c8d
	.4byte	0x1a5
	.uleb128 0x4
	.ascii	"LATE0\000"
	.byte	0x2
	.2byte	0x2c8e
	.4byte	0xc3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATE1\000"
	.byte	0x2
	.2byte	0x2c8f
	.4byte	0xc3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATE2\000"
	.byte	0x2
	.2byte	0x2c90
	.4byte	0xc3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATE3\000"
	.byte	0x2
	.2byte	0x2c91
	.4byte	0xc3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATE4\000"
	.byte	0x2
	.2byte	0x2c92
	.4byte	0xc3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATE5\000"
	.byte	0x2
	.2byte	0x2c93
	.4byte	0xc3
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATE6\000"
	.byte	0x2
	.2byte	0x2c94
	.4byte	0xc3
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATE7\000"
	.byte	0x2
	.2byte	0x2c95
	.4byte	0xc3
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATE8\000"
	.byte	0x2
	.2byte	0x2c96
	.4byte	0xc3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATE9\000"
	.byte	0x2
	.2byte	0x2c97
	.4byte	0xc3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2c99
	.4byte	0x1bf
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x2c9a
	.4byte	0xc3
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
	.2byte	0x2c8c
	.4byte	0x1d3
	.uleb128 0x6
	.4byte	0xd3
	.uleb128 0x6
	.4byte	0x1a5
	.byte	0
	.uleb128 0x7
	.ascii	"__LATEbits_t\000"
	.byte	0x2
	.2byte	0x2c9c
	.4byte	0x1bf
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
	.4byte	0x230
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
	.uleb128 0x8
	.ascii	"__int32_t\000"
	.byte	0x3
	.byte	0x32
	.4byte	0x209
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
	.4byte	0x21f
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2b2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0xa
	.byte	0x1
	.ascii	"Timed_Array_Test_CR\000"
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.4byte	0xc3
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x35f
	.uleb128 0xb
	.ascii	"nr\000"
	.byte	0x1
	.byte	0x20
	.4byte	0x209
	.4byte	.LLST0
	.uleb128 0xc
	.ascii	"nc\000"
	.byte	0x1
	.byte	0x20
	.4byte	0x209
	.byte	0x1
	.byte	0x55
	.uleb128 0xb
	.ascii	"a\000"
	.byte	0x1
	.byte	0x20
	.4byte	0x371
	.4byte	.LLST1
	.uleb128 0xc
	.ascii	"ret_sum\000"
	.byte	0x1
	.byte	0x20
	.4byte	0x377
	.byte	0x1
	.byte	0x57
	.uleb128 0xd
	.ascii	"r\000"
	.byte	0x1
	.byte	0x21
	.4byte	0x209
	.4byte	.LLST2
	.uleb128 0xd
	.ascii	"c\000"
	.byte	0x1
	.byte	0x21
	.4byte	0x209
	.4byte	.LLST3
	.uleb128 0xd
	.ascii	"sum\000"
	.byte	0x1
	.byte	0x22
	.4byte	0x209
	.4byte	.LLST4
	.uleb128 0xe
	.ascii	"t\000"
	.byte	0x1
	.byte	0x23
	.4byte	0xc3
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0xf
	.4byte	0x209
	.4byte	0x371
	.uleb128 0x10
	.4byte	0x2ba
	.byte	0x2
	.byte	0x75
	.sleb128 -1
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x35f
	.uleb128 0x9
	.byte	0x4
	.4byte	0x209
	.uleb128 0xa
	.byte	0x1
	.ascii	"Timed_Array_Test_RC\000"
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.4byte	0xc3
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x414
	.uleb128 0xb
	.ascii	"nr\000"
	.byte	0x1
	.byte	0x36
	.4byte	0x209
	.4byte	.LLST5
	.uleb128 0xc
	.ascii	"nc\000"
	.byte	0x1
	.byte	0x36
	.4byte	0x209
	.byte	0x1
	.byte	0x55
	.uleb128 0xc
	.ascii	"a\000"
	.byte	0x1
	.byte	0x36
	.4byte	0x426
	.byte	0x1
	.byte	0x56
	.uleb128 0xc
	.ascii	"ret_sum\000"
	.byte	0x1
	.byte	0x36
	.4byte	0x377
	.byte	0x1
	.byte	0x57
	.uleb128 0xd
	.ascii	"r\000"
	.byte	0x1
	.byte	0x37
	.4byte	0x209
	.4byte	.LLST6
	.uleb128 0xd
	.ascii	"c\000"
	.byte	0x1
	.byte	0x37
	.4byte	0x209
	.4byte	.LLST7
	.uleb128 0xd
	.ascii	"sum\000"
	.byte	0x1
	.byte	0x38
	.4byte	0x209
	.4byte	.LLST8
	.uleb128 0xe
	.ascii	"t\000"
	.byte	0x1
	.byte	0x39
	.4byte	0xc3
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0xf
	.4byte	0x209
	.4byte	0x426
	.uleb128 0x10
	.4byte	0x2ba
	.byte	0x2
	.byte	0x75
	.sleb128 -1
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x414
	.uleb128 0xa
	.byte	0x1
	.ascii	"Pollute_Cache\000"
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0x209
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x46b
	.uleb128 0xd
	.ascii	"i\000"
	.byte	0x1
	.byte	0x4d
	.4byte	0xc3
	.4byte	.LLST9
	.uleb128 0x11
	.ascii	"sum\000"
	.byte	0x1
	.byte	0x4e
	.4byte	0x209
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.ascii	"main\000"
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.4byte	0x264
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x63d
	.uleb128 0xd
	.ascii	"t_test\000"
	.byte	0x1
	.byte	0x56
	.4byte	0xc3
	.4byte	.LLST10
	.uleb128 0xe
	.ascii	"buffer\000"
	.byte	0x1
	.byte	0x57
	.4byte	0x63d
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xe
	.ascii	"sum\000"
	.byte	0x1
	.byte	0x58
	.4byte	0x209
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x13
	.ascii	"i\000"
	.byte	0x1
	.byte	0x59
	.4byte	0x209
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x5e
	.4byte	0x209
	.byte	0x1
	.4byte	0x4d6
	.uleb128 0x15
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x5f
	.4byte	0x209
	.byte	0x1
	.4byte	0x4e9
	.uleb128 0x15
	.byte	0
	.uleb128 0x16
	.4byte	.LVL25
	.4byte	0x6f4
	.uleb128 0x17
	.4byte	.LVL26
	.4byte	0x702
	.4byte	0x50a
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL27
	.4byte	0x715
	.4byte	0x521
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL28
	.4byte	0x728
	.4byte	0x536
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.uleb128 0x17
	.4byte	.LVL30
	.4byte	0x740
	.4byte	0x55c
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x86
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x17
	.4byte	.LVL31
	.4byte	0x702
	.4byte	0x574
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL32
	.4byte	0x715
	.4byte	0x588
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x17
	.4byte	.LVL33
	.4byte	0x2c6
	.4byte	0x5ae
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x85
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL35
	.4byte	0x740
	.4byte	0x5ce
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x84
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x17
	.4byte	.LVL36
	.4byte	0x702
	.4byte	0x5e6
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL37
	.4byte	0x715
	.4byte	0x5fa
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x17
	.4byte	.LVL41
	.4byte	0x740
	.4byte	0x614
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x17
	.4byte	.LVL42
	.4byte	0x702
	.4byte	0x62c
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL43
	.4byte	0x715
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x2b2
	.4byte	0x64d
	.uleb128 0x1a
	.4byte	0x2ba
	.byte	0xf
	.byte	0
	.uleb128 0x1b
	.ascii	"TMR2\000"
	.byte	0x2
	.2byte	0x2081
	.4byte	0x65c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	0xc3
	.uleb128 0x1d
	.ascii	"LATEbits\000"
	.byte	0x2
	.2byte	0x2c9d
	.ascii	"LATE\000"
	.4byte	0x679
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	0x1d3
	.uleb128 0xf
	.4byte	0x2a0
	.4byte	0x68f
	.uleb128 0x1e
	.4byte	0x2ba
	.2byte	0x1ff
	.byte	0
	.uleb128 0x1f
	.ascii	"rgbOledBmp\000"
	.byte	0x4
	.byte	0x68
	.4byte	0x67e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rgbOledBmp
	.uleb128 0xf
	.4byte	0x209
	.4byte	0x6b9
	.uleb128 0x1e
	.4byte	0x2ba
	.2byte	0x3ff
	.byte	0
	.uleb128 0x1f
	.ascii	"dummy\000"
	.byte	0x1
	.byte	0x19
	.4byte	0x6a8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	dummy
	.uleb128 0xf
	.4byte	0x209
	.4byte	0x6e3
	.uleb128 0x1a
	.4byte	0x2ba
	.byte	0x2f
	.uleb128 0x1a
	.4byte	0x2ba
	.byte	0x2f
	.byte	0
	.uleb128 0x1f
	.ascii	"aa\000"
	.byte	0x1
	.byte	0x1a
	.4byte	0x6cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	aa
	.uleb128 0x20
	.byte	0x1
	.ascii	"InitApp\000"
	.byte	0x5
	.byte	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x5e
	.4byte	0x209
	.byte	0x1
	.4byte	0x715
	.uleb128 0x15
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x5f
	.4byte	0x209
	.byte	0x1
	.4byte	0x728
	.uleb128 0x15
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.ascii	"DelayMs\000"
	.byte	0x5
	.byte	0x31
	.byte	0x1
	.byte	0x1
	.4byte	0x740
	.uleb128 0x22
	.4byte	0x209
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.ascii	"sprintf\000"
	.byte	0x6
	.2byte	0x187
	.byte	0x1
	.4byte	0x209
	.byte	0x1
	.4byte	0x763
	.uleb128 0x22
	.4byte	0x2ac
	.uleb128 0x22
	.4byte	0x763
	.uleb128 0x15
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x769
	.uleb128 0x24
	.4byte	0x2b2
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x26
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
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x7
	.byte	0xa
	.2byte	0x401
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x7
	.byte	0xa
	.2byte	0x400
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35-1-.Ltext0
	.4byte	.LFE5-.Ltext0
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
.LASF0:
	.ascii	"OledSetCursor\000"
.LASF1:
	.ascii	"OledPutString\000"
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.42"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
