	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.globl	_general_exception_handler
.LFB2 = .
	.file 1 "e:/modules/1_introduction/lab1_introduction/exceptions.c"
	.loc 1 65 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_general_exception_handler
	.type	_general_exception_handler, @function
_general_exception_handler:
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI0 = .
	.cfi_def_cfa_offset 8
	sw	$31,4($sp)
	.cfi_offset 31, -4
	.loc 1 66 0
	mfc0	$2,$9,0
	.loc 1 70 0
	mfc0	$2,$13,0
	andi	$2,$2,0x1f
	sw	$2,%gp_rel(_excep_code)($28)
	.loc 1 71 0
	mfc0	$2,$14,0
	sw	$2,%gp_rel(_excep_addr)($28)
	.loc 1 73 0
	mfc0	$2,$12,0
	li	$3,268369920			# 0xfff0000
	ori	$3,$3,0xfffe
	and	$2,$2,$3
	mtc0	$2,$12,0
	ehb
.L2:
	j	.L2
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	_general_exception_handler
	.cfi_endproc
.LFE2:
	.size	_general_exception_handler, .-_general_exception_handler
	.section	.sbss,bss
	.align	2
	.type	_excep_addr, @object
	.size	_excep_addr, 4
_excep_addr:
	.space	4
	.align	2
	.type	_excep_code, @object
	.size	_excep_code, 4
_excep_code:
	.space	4
	.section	.text,code
.Letext0:
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x24f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.42\000"
	.byte	0x1
	.ascii	"exceptions.c\000"
	.ascii	"E:/Modules/1_Introduction/Lab1_Introduction\000"
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
	.byte	0x4
	.byte	0x1
	.byte	0x24
	.4byte	0x1d5
	.uleb128 0x4
	.ascii	"EXCEP_IRQ\000"
	.sleb128 0
	.uleb128 0x4
	.ascii	"EXCEP_AdEL\000"
	.sleb128 4
	.uleb128 0x4
	.ascii	"EXCEP_AdES\000"
	.sleb128 5
	.uleb128 0x4
	.ascii	"EXCEP_IBE\000"
	.sleb128 6
	.uleb128 0x4
	.ascii	"EXCEP_DBE\000"
	.sleb128 7
	.uleb128 0x4
	.ascii	"EXCEP_Sys\000"
	.sleb128 8
	.uleb128 0x4
	.ascii	"EXCEP_Bp\000"
	.sleb128 9
	.uleb128 0x4
	.ascii	"EXCEP_RI\000"
	.sleb128 10
	.uleb128 0x4
	.ascii	"EXCEP_CpU\000"
	.sleb128 11
	.uleb128 0x4
	.ascii	"EXCEP_Overflow\000"
	.sleb128 12
	.uleb128 0x4
	.ascii	"EXCEP_Trap\000"
	.sleb128 13
	.uleb128 0x4
	.ascii	"EXCEP_IS1\000"
	.sleb128 16
	.uleb128 0x4
	.ascii	"EXCEP_CEU\000"
	.sleb128 17
	.uleb128 0x4
	.ascii	"EXCEP_C2E\000"
	.sleb128 18
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.ascii	"_general_exception_handler\000"
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x20f
	.uleb128 0x6
	.ascii	"t0\000"
	.byte	0x1
	.byte	0x42
	.4byte	0x88
	.byte	0
	.uleb128 0x7
	.ascii	"_excep_code\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x11e
	.byte	0x5
	.byte	0x3
	.4byte	_excep_code
	.uleb128 0x6
	.ascii	"_epc_code\000"
	.byte	0x1
	.byte	0x36
	.4byte	0x78
	.uleb128 0x7
	.ascii	"_excep_addr\000"
	.byte	0x1
	.byte	0x37
	.4byte	0x78
	.byte	0x5
	.byte	0x3
	.4byte	_excep_addr
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x5
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
