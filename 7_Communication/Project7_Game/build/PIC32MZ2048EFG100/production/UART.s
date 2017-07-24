	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.globl	UART4_init
.LFB2 = .
	.file 1 "e:/modules/7_communication/project7_game/uart.c"
	.loc 1 56 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	UART4_init
	.type	UART4_init, @function
UART4_init:
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
	.loc 1 57 0
	lui	$2,%hi(RPF8R)
	li	$3,2			# 0x2
	sw	$3,%lo(RPF8R)($2)
	.loc 1 58 0
	lui	$2,%hi(U4RXR)
	li	$3,11			# 0xb
	sw	$3,%lo(U4RXR)($2)
	.loc 1 60 0
	lui	$3,%hi(U4STA)
	lw	$2,%lo(U4STA)($3)
	li	$4,1			# 0x1
	ins	$2,$4,10,1
	sw	$2,%lo(U4STA)($3)
	.loc 1 61 0
	lui	$3,%hi(U4STA)
	lw	$2,%lo(U4STA)($3)
	li	$4,1			# 0x1
	ins	$2,$4,12,1
	sw	$2,%lo(U4STA)($3)
	.loc 1 62 0
	lui	$2,%hi(U4BRG)
	li	$3,53			# 0x35
	sw	$3,%lo(U4BRG)($2)
	.loc 1 63 0
	lui	$3,%hi(U4MODE)
	lhu	$2,%lo(U4MODE)($3)
	li	$4,1			# 0x1
	ins	$2,$4,15,1
	sh	$2,%lo(U4MODE)($3)
	.loc 1 64 0
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
	.end	UART4_init
	.cfi_endproc
.LFE2:
	.size	UART4_init, .-UART4_init
	.align	2
	.globl	UART4_getc
.LFB3 = .
	.loc 1 66 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	UART4_getc
	.type	UART4_getc, @function
UART4_getc:
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
	.loc 1 67 0
	nop
.L3:
	lui	$2,%hi(U4STA)
	lw	$2,%lo(U4STA)($2)
	andi	$2,$2,0x1
	beq	$2,$0,.L3
	nop

	.loc 1 69 0
	lui	$2,%hi(U4RXREG)
	lw	$2,%lo(U4RXREG)($2)
	seb	$2,$2
	.loc 1 70 0
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
	.end	UART4_getc
	.cfi_endproc
.LFE3:
	.size	UART4_getc, .-UART4_getc
	.align	2
	.globl	UART4_putc
.LFB4 = .
	.loc 1 73 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	UART4_putc
	.type	UART4_putc, @function
UART4_putc:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI6 = .
	.cfi_def_cfa_offset 8
	sw	$fp,4($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
.LCFI7 = .
	.cfi_def_cfa_register 30
	move	$2,$4
	sb	$2,8($fp)
	.loc 1 74 0
	nop
.L6:
	lui	$2,%hi(U4STA)
	lw	$2,%lo(U4STA)($2)
	andi	$2,$2,0x200
	bne	$2,$0,.L6
	nop

	.loc 1 76 0
	lb	$3,8($fp)
	lui	$2,%hi(U4TXREG)
	sw	$3,%lo(U4TXREG)($2)
	.loc 1 77 0
	move	$sp,$fp
.LCFI8 = .
	.cfi_def_cfa_register 29
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	UART4_putc
	.cfi_endproc
.LFE4:
	.size	UART4_putc, .-UART4_putc
	.align	2
	.globl	UART4_puts
.LFB5 = .
	.loc 1 83 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	UART4_puts
	.type	UART4_puts, @function
UART4_puts:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI9 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)
	sw	$fp,16($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
.LCFI10 = .
	.cfi_def_cfa_register 30
	sw	$4,24($fp)
	.loc 1 84 0
	j	.L8
	nop

.L9:
	.loc 1 85 0
	lw	$2,24($fp)
	addiu	$3,$2,1
	sw	$3,24($fp)
	lb	$2,0($2)
	move	$4,$2
	jal	UART4_putc
	nop

.L8:
	.loc 1 84 0
	lw	$2,24($fp)
	lb	$2,0($2)
	bne	$2,$0,.L9
	nop

	.loc 1 86 0
	move	$sp,$fp
.LCFI11 = .
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
	.end	UART4_puts
	.cfi_endproc
.LFE5:
	.size	UART4_puts, .-UART4_puts
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"Hello, World!\015\012\000"
	.align	2
.LC1:
	.ascii	"Please press a key.\015\012\000"
	.align	2
.LC2:
	.ascii	"]\015\012\000"
	.section	.text,code
	.align	2
	.globl	UART4_test
.LFB6 = .
	.loc 1 101 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	UART4_test
	.type	UART4_test, @function
UART4_test:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI12 = .
	.cfi_def_cfa_offset 32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
.LCFI13 = .
	.cfi_def_cfa_register 30
	.loc 1 104 0
	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	jal	UART4_puts
	nop

	.loc 1 105 0
	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	jal	UART4_puts
	nop

.L11:
	.loc 1 109 0
	jal	UART4_getc
	nop

	sb	$2,16($fp)
	.loc 1 110 0
	li	$4,91			# 0x5b
	jal	UART4_putc
	nop

	.loc 1 111 0
	lb	$2,16($fp)
	move	$4,$2
	jal	UART4_putc
	nop

	.loc 1 112 0
	lui	$2,%hi(.LC2)
	addiu	$4,$2,%lo(.LC2)
	jal	UART4_puts
	nop

	.loc 1 113 0
	j	.L11
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	UART4_test
	.cfi_endproc
.LFE6:
	.size	UART4_test, .-UART4_test
.Letext0:
	.file 2 "c:/program files (x86)/microchip/xc32/v1.42/pic32mx/include/proc/p32mz2048efg100.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x5f6
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.42\000"
	.byte	0x1
	.ascii	"UART.c\000"
	.ascii	"E:/Modules/7_Communication/Project7_Game\000"
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
	.2byte	0x1eb8
	.4byte	0x171
	.uleb128 0x4
	.ascii	"STSEL\000"
	.byte	0x2
	.2byte	0x1eb9
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"PDSEL\000"
	.byte	0x2
	.2byte	0x1eba
	.4byte	0x6f
	.byte	0x4
	.byte	0x2
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"BRGH\000"
	.byte	0x2
	.2byte	0x1ebb
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"RXINV\000"
	.byte	0x2
	.2byte	0x1ebc
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ABAUD\000"
	.byte	0x2
	.2byte	0x1ebd
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LPBACK\000"
	.byte	0x2
	.2byte	0x1ebe
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"WAKE\000"
	.byte	0x2
	.2byte	0x1ebf
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"UEN\000"
	.byte	0x2
	.2byte	0x1ec0
	.4byte	0x6f
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"RTSMD\000"
	.byte	0x2
	.2byte	0x1ec2
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IREN\000"
	.byte	0x2
	.2byte	0x1ec3
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SIDL\000"
	.byte	0x2
	.2byte	0x1ec4
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ON\000"
	.byte	0x2
	.2byte	0x1ec6
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x1ec8
	.4byte	0x1cb
	.uleb128 0x4
	.ascii	"PDSEL0\000"
	.byte	0x2
	.2byte	0x1eca
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"PDSEL1\000"
	.byte	0x2
	.2byte	0x1ecb
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"UEN0\000"
	.byte	0x2
	.2byte	0x1ecd
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"UEN1\000"
	.byte	0x2
	.2byte	0x1ece
	.4byte	0x6f
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
	.2byte	0x1ed0
	.4byte	0x1fe
	.uleb128 0x4
	.ascii	"USIDL\000"
	.byte	0x2
	.2byte	0x1ed2
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"UARTEN\000"
	.byte	0x2
	.2byte	0x1ed4
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x1ed6
	.4byte	0x218
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x1ed7
	.4byte	0x6f
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
	.2byte	0x1eb7
	.4byte	0x236
	.uleb128 0x6
	.4byte	0x7f
	.uleb128 0x6
	.4byte	0x171
	.uleb128 0x6
	.4byte	0x1cb
	.uleb128 0x6
	.4byte	0x1fe
	.byte	0
	.uleb128 0x7
	.ascii	"__U4MODEbits_t\000"
	.byte	0x2
	.2byte	0x1ed9
	.4byte	0x218
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x1f0a
	.4byte	0x399
	.uleb128 0x4
	.ascii	"URXDA\000"
	.byte	0x2
	.2byte	0x1f0b
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OERR\000"
	.byte	0x2
	.2byte	0x1f0c
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"FERR\000"
	.byte	0x2
	.2byte	0x1f0d
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"PERR\000"
	.byte	0x2
	.2byte	0x1f0e
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"RIDLE\000"
	.byte	0x2
	.2byte	0x1f0f
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ADDEN\000"
	.byte	0x2
	.2byte	0x1f10
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"URXISEL\000"
	.byte	0x2
	.2byte	0x1f11
	.4byte	0x6f
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRMT\000"
	.byte	0x2
	.2byte	0x1f12
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"UTXBF\000"
	.byte	0x2
	.2byte	0x1f13
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"UTXEN\000"
	.byte	0x2
	.2byte	0x1f14
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"UTXBRK\000"
	.byte	0x2
	.2byte	0x1f15
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"URXEN\000"
	.byte	0x2
	.2byte	0x1f16
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"UTXINV\000"
	.byte	0x2
	.2byte	0x1f17
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"UTXISEL\000"
	.byte	0x2
	.2byte	0x1f18
	.4byte	0x6f
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ADDR\000"
	.byte	0x2
	.2byte	0x1f19
	.4byte	0x6f
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ADM_EN\000"
	.byte	0x2
	.2byte	0x1f1a
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x1f1c
	.4byte	0x3ff
	.uleb128 0x4
	.ascii	"URXISEL0\000"
	.byte	0x2
	.2byte	0x1f1e
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"URXISEL1\000"
	.byte	0x2
	.2byte	0x1f1f
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"UTXISEL0\000"
	.byte	0x2
	.2byte	0x1f21
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"UTXISEL1\000"
	.byte	0x2
	.2byte	0x1f22
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x1f24
	.4byte	0x41e
	.uleb128 0x4
	.ascii	"UTXSEL\000"
	.byte	0x2
	.2byte	0x1f26
	.4byte	0x6f
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x1f28
	.4byte	0x438
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x1f29
	.4byte	0x6f
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
	.2byte	0x1f09
	.4byte	0x456
	.uleb128 0x6
	.4byte	0x24d
	.uleb128 0x6
	.4byte	0x399
	.uleb128 0x6
	.4byte	0x3ff
	.uleb128 0x6
	.4byte	0x41e
	.byte	0
	.uleb128 0x7
	.ascii	"__U4STAbits_t\000"
	.byte	0x2
	.2byte	0x1f2b
	.4byte	0x438
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
	.uleb128 0x8
	.byte	0x1
	.ascii	"UART4_init\000"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.ascii	"UART4_getc\000"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.4byte	0x4ce
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0xa
	.byte	0x1
	.ascii	"UART4_putc\000"
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x502
	.uleb128 0xb
	.ascii	"c\000"
	.byte	0x1
	.byte	0x48
	.4byte	0x4ce
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.ascii	"UART4_puts\000"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x52e
	.uleb128 0xb
	.ascii	"s\000"
	.byte	0x1
	.byte	0x52
	.4byte	0x52e
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x4ce
	.uleb128 0xc
	.byte	0x1
	.ascii	"UART4_test\000"
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x560
	.uleb128 0xe
	.ascii	"c\000"
	.byte	0x1
	.byte	0x66
	.4byte	0x4ce
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0xf
	.ascii	"U4RXR\000"
	.byte	0x2
	.2byte	0x48e
	.4byte	0x570
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.4byte	0x6f
	.uleb128 0xf
	.ascii	"RPF8R\000"
	.byte	0x2
	.2byte	0x608
	.4byte	0x570
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.ascii	"U4MODEbits\000"
	.byte	0x2
	.2byte	0x1eda
	.ascii	"U4MODE\000"
	.4byte	0x5a1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.4byte	0x236
	.uleb128 0x11
	.ascii	"U4STAbits\000"
	.byte	0x2
	.2byte	0x1f2c
	.ascii	"U4STA\000"
	.4byte	0x5c0
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.4byte	0x456
	.uleb128 0xf
	.ascii	"U4TXREG\000"
	.byte	0x2
	.2byte	0x1f5a
	.4byte	0x570
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.ascii	"U4RXREG\000"
	.byte	0x2
	.2byte	0x1f5e
	.4byte	0x570
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.ascii	"U4BRG\000"
	.byte	0x2
	.2byte	0x1f62
	.4byte	0x570
	.byte	0x1
	.byte	0x1
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
	.uleb128 0xa
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
