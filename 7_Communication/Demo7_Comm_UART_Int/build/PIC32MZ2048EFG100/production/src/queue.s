	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.globl	Q_Empty
.LFB0 = .
	.file 1 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/7_communication/demo7_comm_uart_int/src/queue.c"
	.loc 1 3 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	Q_Empty
	.type	Q_Empty, @function
Q_Empty:
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
	sw	$4,8($fp)
	.loc 1 4 0
	lw	$2,8($fp)
	lw	$2,136($2)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	.loc 1 5 0
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
	.end	Q_Empty
	.cfi_endproc
.LFE0:
	.size	Q_Empty, .-Q_Empty
	.align	2
	.globl	Q_Full
.LFB1 = .
	.loc 1 7 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	Q_Full
	.type	Q_Full, @function
Q_Full:
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
	.loc 1 8 0
	lw	$2,8($fp)
	lw	$2,136($2)
	xori	$2,$2,0x80
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	.loc 1 9 0
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
	.end	Q_Full
	.cfi_endproc
.LFE1:
	.size	Q_Full, .-Q_Full
	.align	2
	.globl	Q_Size
.LFB2 = .
	.loc 1 11 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	Q_Size
	.type	Q_Size, @function
Q_Size:
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
	sw	$4,8($fp)
	.loc 1 12 0
	lw	$2,8($fp)
	lw	$2,136($2)
	.loc 1 13 0
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
	.end	Q_Size
	.cfi_endproc
.LFE2:
	.size	Q_Size, .-Q_Size
	.align	2
	.globl	Q_Enqueue
.LFB3 = .
	.loc 1 16 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	Q_Enqueue
	.type	Q_Enqueue, @function
Q_Enqueue:
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
	move	$2,$5
	sb	$2,28($fp)
	.loc 1 19 0
	lw	$4,24($fp)
	jal	Q_Full
	nop

	bne	$2,$0,.L8
	nop

	.loc 1 20 0
	lw	$2,24($fp)
	lw	$2,132($2)
	addiu	$4,$2,1
	lw	$3,24($fp)
	sw	$4,132($3)
	lw	$3,24($fp)
	addu	$2,$3,$2
	lbu	$3,28($fp)
	sb	$3,0($2)
	.loc 1 21 0
	lw	$2,24($fp)
	lw	$2,132($2)
	andi	$3,$2,0x7f
	lw	$2,24($fp)
	sw	$3,132($2)
	.loc 1 22 0
	lw	$2,24($fp)
	lw	$2,136($2)
	addiu	$3,$2,1
	lw	$2,24($fp)
	sw	$3,136($2)
	.loc 1 23 0
	li	$2,1			# 0x1
	j	.L9
	nop

.L8:
	.loc 1 25 0
	move	$2,$0
.L9:
	.loc 1 26 0
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
	.end	Q_Enqueue
	.cfi_endproc
.LFE3:
	.size	Q_Enqueue, .-Q_Enqueue
	.align	2
	.globl	Q_Dequeue
.LFB4 = .
	.loc 1 28 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	Q_Dequeue
	.type	Q_Dequeue, @function
Q_Dequeue:
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
	sw	$4,32($fp)
	.loc 1 30 0
	sb	$0,16($fp)
	.loc 1 31 0
	lw	$4,32($fp)
	jal	Q_Empty
	nop

	bne	$2,$0,.L11
	nop

	.loc 1 32 0
	lw	$2,32($fp)
	lw	$2,128($2)
	lw	$3,32($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	sb	$2,16($fp)
	.loc 1 33 0
	lw	$2,32($fp)
	lw	$2,128($2)
	addiu	$4,$2,1
	lw	$3,32($fp)
	sw	$4,128($3)
	lw	$3,32($fp)
	addu	$2,$3,$2
	sb	$0,0($2)
	.loc 1 34 0
	lw	$2,32($fp)
	lw	$2,128($2)
	andi	$3,$2,0x7f
	lw	$2,32($fp)
	sw	$3,128($2)
	.loc 1 35 0
	lw	$2,32($fp)
	lw	$2,136($2)
	addiu	$3,$2,-1
	lw	$2,32($fp)
	sw	$3,136($2)
.L11:
	.loc 1 37 0
	lb	$2,16($fp)
	.loc 1 38 0
	move	$sp,$fp
.LCFI14 = .
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
	.end	Q_Dequeue
	.cfi_endproc
.LFE4:
	.size	Q_Dequeue, .-Q_Dequeue
	.align	2
	.globl	Q_Init
.LFB5 = .
	.loc 1 41 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	Q_Init
	.type	Q_Init, @function
Q_Init:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI15 = .
	.cfi_def_cfa_offset 16
	sw	$fp,12($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
.LCFI16 = .
	.cfi_def_cfa_register 30
	sw	$4,16($fp)
	.loc 1 43 0
	sw	$0,0($fp)
	j	.L14
	nop

.L15:
	.loc 1 44 0
	lw	$3,16($fp)
	lw	$2,0($fp)
	addu	$2,$3,$2
	sb	$0,0($2)
	.loc 1 43 0
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
.L14:
	lw	$2,0($fp)
	sltu	$2,$2,128
	bne	$2,$0,.L15
	nop

	.loc 1 45 0
	lw	$2,16($fp)
	sw	$0,128($2)
	.loc 1 46 0
	lw	$2,16($fp)
	sw	$0,132($2)
	.loc 1 47 0
	lw	$2,16($fp)
	sw	$0,136($2)
	.loc 1 48 0
	move	$sp,$fp
.LCFI17 = .
	.cfi_def_cfa_register 29
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	Q_Init
	.cfi_endproc
.LFE5:
	.size	Q_Init, .-Q_Init
.Letext0:
	.file 2 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/7_communication/demo7_comm_uart_int/src/queue.h"
	.file 3 "c:/program files/microchip/xc32/v1.42/pic32mx/include/machine/int_types.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x30b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.42\000"
	.byte	0x1
	.ascii	"src/queue.c\000"
	.ascii	"E:/\264\375\260\354\312\302\317\356/\315\352\263\311\312"
	.ascii	"\257\300\317\312\246\264\363\321\247\274\306\273\256\310"
	.ascii	"\316\316\361/CML/The-Connected-MCU-Lab--v1.5-12Oct2016-C"
	.ascii	"HN/Release/Modules/7_Communication/Demo7_Comm_UART_Int\000"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"signed char\000"
	.uleb128 0x3
	.ascii	"__uint8_t\000"
	.byte	0x3
	.byte	0x2f
	.4byte	0xf0
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
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"unsigned int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii	"long long int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii	"long long unsigned int\000"
	.uleb128 0x4
	.byte	0x8c
	.byte	0x2
	.byte	0x8
	.4byte	0x1ae
	.uleb128 0x5
	.ascii	"Data\000"
	.byte	0x2
	.byte	0x9
	.4byte	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"Head\000"
	.byte	0x2
	.byte	0xa
	.4byte	0x12b
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x5
	.ascii	"Tail\000"
	.byte	0x2
	.byte	0xb
	.4byte	0x12b
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x5
	.ascii	"Size\000"
	.byte	0x2
	.byte	0xc
	.4byte	0x12b
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0
	.uleb128 0x6
	.4byte	0xf0
	.4byte	0x1be
	.uleb128 0x7
	.4byte	0x1be
	.byte	0x7f
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x3
	.ascii	"Q_T\000"
	.byte	0x2
	.byte	0xd
	.4byte	0x166
	.uleb128 0x8
	.byte	0x1
	.ascii	"Q_Empty\000"
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.4byte	0x124
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x202
	.uleb128 0x9
	.ascii	"q\000"
	.byte	0x1
	.byte	0x3
	.4byte	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1ca
	.uleb128 0x8
	.byte	0x1
	.ascii	"Q_Full\000"
	.byte	0x1
	.byte	0x7
	.byte	0x1
	.4byte	0x124
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x234
	.uleb128 0x9
	.ascii	"q\000"
	.byte	0x1
	.byte	0x7
	.4byte	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.ascii	"Q_Size\000"
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.4byte	0x12b
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x260
	.uleb128 0x9
	.ascii	"q\000"
	.byte	0x1
	.byte	0xb
	.4byte	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii	"Q_Enqueue\000"
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.4byte	0x124
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x29b
	.uleb128 0x9
	.ascii	"q\000"
	.byte	0x1
	.byte	0x10
	.4byte	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x9
	.ascii	"d\000"
	.byte	0x1
	.byte	0x10
	.4byte	0xdf
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii	"Q_Dequeue\000"
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.4byte	0x2d6
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x2d6
	.uleb128 0x9
	.ascii	"q\000"
	.byte	0x1
	.byte	0x1c
	.4byte	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0xc
	.ascii	"t\000"
	.byte	0x1
	.byte	0x1e
	.4byte	0xdf
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0xd
	.byte	0x1
	.ascii	"Q_Init\000"
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x9
	.ascii	"q\000"
	.byte	0x1
	.byte	0x29
	.4byte	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xc
	.ascii	"i\000"
	.byte	0x1
	.byte	0x2a
	.4byte	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 0
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
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
