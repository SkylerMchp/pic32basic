	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
.Ltext0:
	.cfi_sections	.debug_frame

	.comm	rgbOledBmp,512,4
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"Profiler Eval.\000"
	.align	2
.LC1:
	.ascii	"Done!\000"
	.section	.text,code
	.align	2
	.globl	main
.LFB2 = .
	.file 1 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/12_performance/demo12_optimization/src/main.c"
	.loc 1 29 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,48,$31		# vars= 24, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
.LCFI0 = .
	.cfi_def_cfa_offset 48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
.LCFI1 = .
	.cfi_def_cfa_register 30
	.loc 1 30 0
	sw	$0,16($fp)
	.loc 1 32 0
	sw	$0,20($fp)
	.loc 1 36 0
	jal	InitApp
	nop

	.loc 1 38 0
	move	$4,$0
	move	$5,$0
	jal	OledSetCursor
	nop

	.loc 1 39 0
	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	jal	OledPutString
	nop

	.loc 1 40 0
	li	$4,200			# 0xc8
	jal	DelayMs
	nop

	.loc 1 41 0
	jal	OledClear
	nop

	.loc 1 43 0
	jal	Init_Profiling
	nop

	.loc 1 44 0
	jal	Enable_Profiling
	nop

	.loc 1 45 0
	li	$4,500			# 0x1f4
	jal	Animate
	nop

	.loc 1 46 0
	jal	Disable_Profiling
	nop

	.loc 1 48 0
	jal	OledClear
	nop

	.loc 1 49 0
	jal	Sort_Profile
	nop

	.loc 1 50 0
	jal	Display_Profile
	nop

	.loc 1 52 0
	move	$4,$0
	li	$5,2			# 0x2
	jal	OledSetCursor
	nop

	.loc 1 53 0
	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	jal	OledPutString
	nop

.L2:
	.loc 1 56 0
	j	.L2
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	main
	.cfi_endproc
.LFE2:
	.size	main, .-main
.Letext0:
	.file 2 "c:/program files/microchip/xc32/v1.42/pic32mx/include/machine/int_types.h"
	.file 3 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/12_performance/demo12_optimization/src/oled/oled.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x314
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.42\000"
	.byte	0x1
	.ascii	"src/main.c\000"
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
	.uleb128 0x3
	.ascii	"__int32_t\000"
	.byte	0x2
	.byte	0x32
	.4byte	0xff
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x4
	.byte	0x1
	.ascii	"main\000"
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	0x15a
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x2dd
	.uleb128 0x5
	.ascii	"t_test\000"
	.byte	0x1
	.byte	0x1e
	.4byte	0xce
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x5
	.ascii	"buffer\000"
	.byte	0x1
	.byte	0x1f
	.4byte	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x5
	.ascii	"sum\000"
	.byte	0x1
	.byte	0x20
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x6
	.ascii	"i\000"
	.byte	0x1
	.byte	0x21
	.4byte	0xff
	.uleb128 0x7
	.byte	0x1
	.ascii	"OledSetCursor\000"
	.byte	0x1
	.byte	0x26
	.4byte	0xff
	.byte	0x1
	.4byte	0x229
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.ascii	"OledPutString\000"
	.byte	0x1
	.byte	0x27
	.4byte	0xff
	.byte	0x1
	.4byte	0x246
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.ascii	"Init_Profiling\000"
	.byte	0x1
	.byte	0x2b
	.4byte	0xff
	.byte	0x1
	.4byte	0x264
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.ascii	"Enable_Profiling\000"
	.byte	0x1
	.byte	0x2c
	.4byte	0xff
	.byte	0x1
	.4byte	0x284
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.ascii	"Disable_Profiling\000"
	.byte	0x1
	.byte	0x2e
	.4byte	0xff
	.byte	0x1
	.4byte	0x2a5
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.ascii	"Sort_Profile\000"
	.byte	0x1
	.byte	0x31
	.4byte	0xff
	.byte	0x1
	.4byte	0x2c1
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.ascii	"Display_Profile\000"
	.byte	0x1
	.byte	0x32
	.4byte	0xff
	.byte	0x1
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x1a2
	.4byte	0x2ed
	.uleb128 0xb
	.4byte	0x1aa
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0x196
	.4byte	0x2fe
	.uleb128 0xc
	.4byte	0x1aa
	.2byte	0x1ff
	.byte	0
	.uleb128 0xd
	.ascii	"rgbOledBmp\000"
	.byte	0x3
	.byte	0x68
	.4byte	0x2ed
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x18
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
