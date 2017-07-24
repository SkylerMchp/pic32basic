	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.globl	Get_Guess
.LFB2 = .
	.file 1 "e:/modules/7_communication/project7_game/game.c"
	.loc 1 68 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	Get_Guess
	.type	Get_Guess, @function
Get_Guess:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI0 = .
	.cfi_def_cfa_offset 40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
.LCFI1 = .
	.cfi_def_cfa_register 30
	.loc 1 70 0
	sw	$0,16($fp)
	sw	$0,20($fp)
.L3:
	.loc 1 73 0
	jal	UART4_getc
	nop

	sb	$2,24($fp)
	.loc 1 74 0
	lb	$2,24($fp)
	move	$4,$2
	jal	UART4_putc
	nop

	.loc 1 75 0
	lb	$2,24($fp)
	slt	$2,$2,48
	bne	$2,$0,.L2
	nop

	lb	$2,24($fp)
	slt	$2,$2,58
	beq	$2,$0,.L2
	nop

	.loc 1 76 0
	lw	$2,16($fp)
	sll	$2,$2,1
	sll	$3,$2,2
	addu	$2,$2,$3
	sw	$2,16($fp)
	.loc 1 77 0
	lb	$2,24($fp)
	addiu	$2,$2,-48
	lw	$3,16($fp)
	addu	$2,$3,$2
	sw	$2,16($fp)
	.loc 1 84 0
	j	.L3
	nop

.L2:
	.loc 1 79 0
	lb	$3,24($fp)
	li	$2,13			# 0xd
	bne	$3,$2,.L4
	nop

	.loc 1 80 0
	lw	$2,16($fp)
	j	.L5
	nop

.L4:
	.loc 1 82 0
	li	$2,-2			# 0xfffffffffffffffe
.L5:
	.loc 1 85 0
	move	$sp,$fp
.LCFI2 = .
	.cfi_def_cfa_register 29
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	Get_Guess
	.cfi_endproc
.LFE2:
	.size	Get_Guess, .-Get_Guess
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"\015\012Welcome to the guessing game!\015\012\000"
	.align	2
.LC1:
	.ascii	"\015\012I am thinking of an integer between 0 and 99.\015"
	.ascii	"\012\000"
	.align	2
.LC2:
	.ascii	"You have %d guesses left.\015\012\000"
	.align	2
.LC3:
	.ascii	"What is my number? Please type it and press enter.\015\012"
	.ascii	"\000"
	.align	2
.LC4:
	.ascii	"\015\012\000"
	.align	2
.LC5:
	.ascii	"That's not a number! You lost your guess.\015\012\000"
	.align	2
.LC6:
	.ascii	"Congratulations! You guessed it!\015\012\000"
	.align	2
.LC7:
	.ascii	"Too low!\015\012\000"
	.align	2
.LC8:
	.ascii	"Too high!\015\012\000"
	.align	2
.LC9:
	.ascii	"My number was %d.\015\012\000"
	.align	2
.LC10:
	.ascii	"Won: %d\015\012Lost: %d\015\012\000"
	.section	.text,code
	.align	2
	.globl	GuessingGame
.LFB3 = .
	.loc 1 87 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	GuessingGame
	.type	GuessingGame, @function
GuessingGame:
	.frame	$fp,128,$31		# vars= 104, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-128
.LCFI3 = .
	.cfi_def_cfa_offset 128
	sw	$31,124($sp)
	sw	$fp,120($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
.LCFI4 = .
	.cfi_def_cfa_register 30
	.loc 1 88 0
	sw	$0,20($fp)
	sw	$0,24($fp)
	sw	$0,28($fp)
	.loc 1 91 0
	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	jal	UART4_puts
	nop

.L16:
.LBB2 = .
	.loc 1 94 0
	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	jal	UART4_puts
	nop

	.loc 1 95 0
	li	$2,33			# 0x21
	sw	$2,32($fp)
	.loc 1 96 0
	sw	$0,20($fp)
	.loc 1 97 0
	li	$2,6			# 0x6
	sw	$2,16($fp)
	j	.L7
	nop

.L13:
.LBB3 = .
	.loc 1 98 0
	addiu	$2,$fp,40
	move	$4,$2
	lui	$2,%hi(.LC2)
	addiu	$5,$2,%lo(.LC2)
	lw	$6,16($fp)
	jal	_sprintf_cdnopuxX
	nop

	.loc 1 99 0
	addiu	$2,$fp,40
	move	$4,$2
	jal	UART4_puts
	nop

	.loc 1 100 0
	lui	$2,%hi(.LC3)
	addiu	$4,$2,%lo(.LC3)
	jal	UART4_puts
	nop

	.loc 1 101 0
	jal	Get_Guess
	nop

	sw	$2,36($fp)
	.loc 1 102 0
	lui	$2,%hi(.LC4)
	addiu	$4,$2,%lo(.LC4)
	jal	UART4_puts
	nop

	.loc 1 103 0
	lw	$3,36($fp)
	li	$2,-2			# 0xfffffffffffffffe
	bne	$3,$2,.L8
	nop

	.loc 1 104 0
	lui	$2,%hi(.LC5)
	addiu	$4,$2,%lo(.LC5)
	jal	UART4_puts
	nop

	j	.L9
	nop

.L8:
	.loc 1 106 0
	lw	$3,36($fp)
	lw	$2,32($fp)
	bne	$3,$2,.L10
	nop

	.loc 1 107 0
	lui	$2,%hi(.LC6)
	addiu	$4,$2,%lo(.LC6)
	jal	UART4_puts
	nop

	.loc 1 108 0
	li	$2,1			# 0x1
	sw	$2,20($fp)
	j	.L9
	nop

.L10:
	.loc 1 109 0
	lw	$3,36($fp)
	lw	$2,32($fp)
	slt	$2,$3,$2
	beq	$2,$0,.L11
	nop

	.loc 1 110 0
	lui	$2,%hi(.LC7)
	addiu	$4,$2,%lo(.LC7)
	jal	UART4_puts
	nop

	j	.L9
	nop

.L11:
	.loc 1 112 0
	lui	$2,%hi(.LC8)
	addiu	$4,$2,%lo(.LC8)
	jal	UART4_puts
	nop

.L9:
.LBE3 = .
	.loc 1 97 0
	lw	$2,16($fp)
	addiu	$2,$2,-1
	sw	$2,16($fp)
.L7:
	lw	$2,16($fp)
	blez	$2,.L12
	nop

	lw	$2,20($fp)
	beq	$2,$0,.L13
	nop

.L12:
	.loc 1 116 0
	lw	$3,20($fp)
	li	$2,1			# 0x1
	bne	$3,$2,.L14
	nop

	.loc 1 117 0
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
	j	.L15
	nop

.L14:
.LBB4 = .
	.loc 1 119 0
	addiu	$2,$fp,40
	move	$4,$2
	lui	$2,%hi(.LC9)
	addiu	$5,$2,%lo(.LC9)
	lw	$6,32($fp)
	jal	_sprintf_cdnopuxX
	nop

	.loc 1 120 0
	addiu	$2,$fp,40
	move	$4,$2
	jal	UART4_puts
	nop

	.loc 1 121 0
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
.L15:
.LBE4 = .
	.loc 1 123 0
	addiu	$2,$fp,40
	move	$4,$2
	lui	$2,%hi(.LC10)
	addiu	$5,$2,%lo(.LC10)
	lw	$6,24($fp)
	lw	$7,28($fp)
	jal	_sprintf_cdnopuxX
	nop

	.loc 1 124 0
	addiu	$2,$fp,40
	move	$4,$2
	jal	UART4_puts
	nop

.LBE2 = .
	.loc 1 125 0
	j	.L16
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	GuessingGame
	.cfi_endproc
.LFE3:
	.size	GuessingGame, .-GuessingGame
.Letext0:
	.file 2 "e:/modules/7_communication/project7_game/<built-in>"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x235
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.42\000"
	.byte	0x1
	.ascii	"game.c\000"
	.ascii	"E:/Modules/7_Communication/Project7_Game\000"
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
	.uleb128 0x3
	.byte	0x1
	.ascii	"Get_Guess\000"
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	0xa0
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xf1
	.uleb128 0x4
	.ascii	"c\000"
	.byte	0x1
	.byte	0x45
	.4byte	0xf1
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x4
	.ascii	"n\000"
	.byte	0x1
	.byte	0x46
	.4byte	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x4
	.ascii	"done\000"
	.byte	0x1
	.byte	0x46
	.4byte	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0x5
	.byte	0x1
	.ascii	"GuessingGame\000"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x20b
	.uleb128 0x4
	.ascii	"guess\000"
	.byte	0x1
	.byte	0x58
	.4byte	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x4
	.ascii	"number\000"
	.byte	0x1
	.byte	0x58
	.4byte	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x4
	.ascii	"guesses_left\000"
	.byte	0x1
	.byte	0x58
	.4byte	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x4
	.ascii	"won\000"
	.byte	0x1
	.byte	0x58
	.4byte	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x4
	.ascii	"num_won\000"
	.byte	0x1
	.byte	0x58
	.4byte	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x4
	.ascii	"num_lost\000"
	.byte	0x1
	.byte	0x58
	.4byte	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x4
	.ascii	"buffer\000"
	.byte	0x1
	.byte	0x59
	.4byte	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x6
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF0
	.byte	0x2
	.byte	0
	.byte	0x1
	.4byte	0xa0
	.byte	0x1
	.4byte	0x1bd
	.uleb128 0x8
	.4byte	0x227
	.uleb128 0x8
	.4byte	0x22d
	.uleb128 0x9
	.byte	0
	.uleb128 0xa
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0x1e5
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF0
	.byte	0x2
	.byte	0
	.byte	0x1
	.4byte	0xa0
	.byte	0x1
	.uleb128 0x8
	.4byte	0x227
	.uleb128 0x8
	.4byte	0x22d
	.uleb128 0x9
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LBB4
	.4byte	.LBE4
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF0
	.byte	0x2
	.byte	0
	.byte	0x1
	.4byte	0xa0
	.byte	0x1
	.uleb128 0x8
	.4byte	0x227
	.uleb128 0x8
	.4byte	0x22d
	.uleb128 0x9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xf1
	.4byte	0x21b
	.uleb128 0xd
	.4byte	0x21b
	.byte	0x4f
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0xe
	.byte	0x4
	.4byte	0xf1
	.uleb128 0xe
	.byte	0x4
	.4byte	0x233
	.uleb128 0xf
	.4byte	0xf1
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
	.uleb128 0x4
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.ascii	"sprintf\000"
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.42"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
