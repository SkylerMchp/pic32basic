	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:
	.cfi_sections	.debug_frame

	.comm	txq,140,4

	.comm	rxq,140,4
	.align	2
	.globl	UART4_init
.LFB2 = .
	.file 1 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/7_communication/demo7_comm_uart_int/src/uart.c"
	.loc 1 59 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	UART4_init
	.type	UART4_init, @function
UART4_init:
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
	.loc 1 60 0
	lui	$2,%hi(txq)
	addiu	$4,$2,%lo(txq)
	jal	Q_Init
	nop

	.loc 1 61 0
	lui	$2,%hi(rxq)
	addiu	$4,$2,%lo(rxq)
	jal	Q_Init
	nop

	.loc 1 63 0
	lui	$3,%hi(U4MODE)
	lhu	$2,%lo(U4MODE)($3)
	ins	$2,$0,15,1
	sh	$2,%lo(U4MODE)($3)
	.loc 1 64 0
	lui	$2,%hi(RPF8R)
	li	$3,2			# 0x2
	sw	$3,%lo(RPF8R)($2)
	.loc 1 65 0
	lui	$2,%hi(U4RXR)
	li	$3,11			# 0xb
	sw	$3,%lo(U4RXR)($2)
	.loc 1 67 0
	lui	$3,%hi(U4STA)
	lw	$2,%lo(U4STA)($3)
	li	$4,1			# 0x1
	ins	$2,$4,12,1
	sw	$2,%lo(U4STA)($3)
	.loc 1 68 0
	lui	$3,%hi(U4STA)
	lhu	$2,%lo(U4STA)($3)
	li	$4,1			# 0x1
	ins	$2,$4,14,2
	sh	$2,%lo(U4STA)($3)
	.loc 1 72 0
	lui	$2,%hi(U4BRG)
	li	$3,53			# 0x35
	sw	$3,%lo(U4BRG)($2)
	.loc 1 76 0
	lui	$3,%hi(IFS5)
	lw	$2,%lo(IFS5)($3)
	ins	$2,$0,11,1
	sw	$2,%lo(IFS5)($3)
	.loc 1 77 0
	lui	$3,%hi(IFS5)
	lw	$2,%lo(IFS5)($3)
	ins	$2,$0,12,1
	sw	$2,%lo(IFS5)($3)
	.loc 1 78 0
	lui	$3,%hi(IPC42)
	lw	$2,%lo(IPC42)($3)
	li	$4,3			# 0x3
	ins	$2,$4,26,3
	sw	$2,%lo(IPC42)($3)
	.loc 1 79 0
	lui	$3,%hi(IPC42)
	lw	$2,%lo(IPC42)($3)
	li	$4,3			# 0x3
	ins	$2,$4,24,2
	sw	$2,%lo(IPC42)($3)
	.loc 1 80 0
	lui	$3,%hi(IPC43)
	lw	$2,%lo(IPC43)($3)
	li	$4,3			# 0x3
	ins	$2,$4,2,3
	sw	$2,%lo(IPC43)($3)
	.loc 1 81 0
	lui	$3,%hi(IPC43)
	lw	$2,%lo(IPC43)($3)
	li	$4,3			# 0x3
	ins	$2,$4,0,2
	sw	$2,%lo(IPC43)($3)
	.loc 1 82 0
	lui	$3,%hi(IEC5)
	lw	$2,%lo(IEC5)($3)
	li	$4,1			# 0x1
	ins	$2,$4,11,1
	sw	$2,%lo(IEC5)($3)
	.loc 1 83 0
	lui	$3,%hi(IEC5)
	lw	$2,%lo(IEC5)($3)
	li	$4,1			# 0x1
	ins	$2,$4,12,1
	sw	$2,%lo(IEC5)($3)
	.loc 1 84 0
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
	.end	UART4_init
	.cfi_endproc
.LFE2:
	.size	UART4_init, .-UART4_init
	.align	2
	.globl	ISR_UART4_RX
.LFB3 = .
	.loc 1 86 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	ISR_UART4_RX
	.type	ISR_UART4_RX, @function
ISR_UART4_RX:
	.frame	$fp,320,$31		# vars= 8, regs= 19/20, args= 16, gp= 0
	.mask	0xc300fffe,-220
	.fmask	0x000fffff,-64
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue: SOFTWARE_CONTEXT_SAVE
	.set	noat
# End mchp_output_function_prologue
	rdpgpr	$sp,$sp
	mfc0	$26,$14
	mfc0	$27,$12
	addiu	$sp,$sp,-320
.LCFI3 = .
	.cfi_def_cfa_offset 320
	sw	$26,316($sp)
	mfc0	$26,$12,2
	sw	$27,312($sp)
	sw	$26,308($sp)
	ins	$27,$0,1,15
	ori	$27,$27,0xc00
	mtc0	$27,$12
	sw	$31,100($sp)
	sw	$fp,96($sp)
	sw	$25,92($sp)
	sw	$24,88($sp)
	sw	$15,84($sp)
	sw	$14,80($sp)
	sw	$13,76($sp)
	sw	$12,72($sp)
	sw	$11,68($sp)
	sw	$10,64($sp)
	sw	$9,60($sp)
	sw	$8,56($sp)
	sw	$7,52($sp)
	sw	$6,48($sp)
	sw	$5,44($sp)
	sw	$4,40($sp)
	sw	$3,36($sp)
	sw	$2,32($sp)
	sw	$1,28($sp)
	sdc1	$f19,256($sp)
	sdc1	$f18,248($sp)
	sdc1	$f17,240($sp)
	sdc1	$f16,232($sp)
	sdc1	$f15,224($sp)
	sdc1	$f14,216($sp)
	sdc1	$f13,208($sp)
	sdc1	$f12,200($sp)
	sdc1	$f11,192($sp)
	sdc1	$f10,184($sp)
	sdc1	$f9,176($sp)
	sdc1	$f8,168($sp)
	sdc1	$f7,160($sp)
	sdc1	$f6,152($sp)
	sdc1	$f5,144($sp)
	sdc1	$f4,136($sp)
	sdc1	$f3,128($sp)
	sdc1	$f2,120($sp)
	sdc1	$f1,112($sp)
	sdc1	$f0,104($sp)
	.cfi_offset 26, -12
	.cfi_offset 31, -220
	.cfi_offset 30, -224
	.cfi_offset 25, -228
	.cfi_offset 24, -232
	.cfi_offset 15, -236
	.cfi_offset 14, -240
	.cfi_offset 13, -244
	.cfi_offset 12, -248
	.cfi_offset 11, -252
	.cfi_offset 10, -256
	.cfi_offset 9, -260
	.cfi_offset 8, -264
	.cfi_offset 7, -268
	.cfi_offset 6, -272
	.cfi_offset 5, -276
	.cfi_offset 4, -280
	.cfi_offset 3, -284
	.cfi_offset 2, -288
	.cfi_offset 1, -292
	.cfi_offset 51, -64
	.cfi_offset 50, -72
	.cfi_offset 49, -80
	.cfi_offset 48, -88
	.cfi_offset 47, -96
	.cfi_offset 46, -104
	.cfi_offset 45, -112
	.cfi_offset 44, -120
	.cfi_offset 43, -128
	.cfi_offset 42, -136
	.cfi_offset 41, -144
	.cfi_offset 40, -152
	.cfi_offset 39, -160
	.cfi_offset 38, -168
	.cfi_offset 37, -176
	.cfi_offset 36, -184
	.cfi_offset 35, -192
	.cfi_offset 34, -200
	.cfi_offset 33, -208
	.cfi_offset 32, -216
	mflo	$2
	sw	$2,300($sp)
	mfhi	$3
	sw	$3,296($sp)
	mflo	$2,$ac1
	sw	$2,292($sp)
	mfhi	$3,$ac1
	sw	$3,288($sp)
	mflo	$2,$ac2
	sw	$2,284($sp)
	mfhi	$3,$ac2
	sw	$3,280($sp)
	mflo	$2,$ac3
	sw	$2,276($sp)
	mfhi	$3,$ac3
	sw	$3,272($sp)
	rddsp	$3,63
	sw	$3,304($sp)
	cfc1	$2,$31
	sw	$2,268($sp)
	move	$fp,$sp
.LCFI4 = .
	.cfi_def_cfa_register 30
	.cfi_offset 65, -20
	.cfi_offset 64, -24
	.cfi_offset 209, -28
	.cfi_offset 208, -32
	.cfi_offset 211, -36
	.cfi_offset 210, -40
	.cfi_offset 213, -44
	.cfi_offset 212, -48
	.cfi_offset 3, -16
	.cfi_offset 2, -52
	.loc 1 89 0
	lui	$2,%hi(U4RXREG)
	lw	$2,%lo(U4RXREG)($2)
	sb	$2,16($fp)
	.loc 1 90 0
	lui	$2,%hi(rxq)
	addiu	$4,$2,%lo(rxq)
	jal	Q_Full
	nop

	bne	$2,$0,.L3
	nop

	.loc 1 91 0
	lbu	$2,16($fp)
	lui	$3,%hi(rxq)
	addiu	$4,$3,%lo(rxq)
	move	$5,$2
	jal	Q_Enqueue
	nop

.L3:
	.loc 1 93 0
	lui	$3,%hi(IFS5)
	lw	$2,%lo(IFS5)($3)
	ins	$2,$0,11,1
	sw	$2,%lo(IFS5)($3)
	.loc 1 94 0
	move	$sp,$fp
.LCFI5 = .
	.cfi_def_cfa_register 29
	lw	$2,268($sp)
	ctc1	$2,$31
	lw	$3,304($sp)
	wrdsp	$3,63
	lw	$2,300($sp)
	mtlo	$2
	lw	$3,296($sp)
	mthi	$3
	lw	$5,292($sp)
	mtlo	$5,$ac1
	lw	$5,288($sp)
	mthi	$5,$ac1
	lw	$5,284($sp)
	mtlo	$5,$ac2
	lw	$5,280($sp)
	mthi	$5,$ac2
	lw	$5,276($sp)
	mtlo	$5,$ac3
	lw	$5,272($sp)
	mthi	$5,$ac3
	lw	$31,100($sp)
	lw	$fp,96($sp)
	lw	$25,92($sp)
	lw	$24,88($sp)
	lw	$15,84($sp)
	lw	$14,80($sp)
	lw	$13,76($sp)
	lw	$12,72($sp)
	lw	$11,68($sp)
	lw	$10,64($sp)
	lw	$9,60($sp)
	lw	$8,56($sp)
	lw	$7,52($sp)
	lw	$6,48($sp)
	lw	$5,44($sp)
	lw	$4,40($sp)
	lw	$3,36($sp)
	lw	$2,32($sp)
	lw	$1,28($sp)
	ldc1	$f19,256($sp)
	ldc1	$f18,248($sp)
	ldc1	$f17,240($sp)
	ldc1	$f16,232($sp)
	ldc1	$f15,224($sp)
	ldc1	$f14,216($sp)
	ldc1	$f13,208($sp)
	ldc1	$f12,200($sp)
	ldc1	$f11,192($sp)
	ldc1	$f10,184($sp)
	ldc1	$f9,176($sp)
	ldc1	$f8,168($sp)
	ldc1	$f7,160($sp)
	ldc1	$f6,152($sp)
	ldc1	$f5,144($sp)
	ldc1	$f4,136($sp)
	ldc1	$f3,128($sp)
	ldc1	$f2,120($sp)
	ldc1	$f1,112($sp)
	ldc1	$f0,104($sp)
	di
	ehb
	lw	$26,316($sp)
	lw	$27,312($sp)
	mtc0	$26,$14
	lw	$26,308($sp)
	addiu	$sp,$sp,320
	mtc0	$26,$12,2
	wrpgpr	$sp,$sp
	mtc0	$27,$12
	eret
	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
	.set	at
# End mchp_output_function_epilogue
	.end	ISR_UART4_RX
	.cfi_endproc
.LFE3:
	.size	ISR_UART4_RX, .-ISR_UART4_RX
	.align	2
	.globl	ISR_UART4_TX
.LFB4 = .
	.loc 1 96 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	ISR_UART4_TX
	.type	ISR_UART4_TX, @function
ISR_UART4_TX:
	.frame	$fp,312,$31		# vars= 0, regs= 19/20, args= 16, gp= 0
	.mask	0xc300fffe,-220
	.fmask	0x000fffff,-64
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue: SOFTWARE_CONTEXT_SAVE
	.set	noat
# End mchp_output_function_prologue
	rdpgpr	$sp,$sp
	mfc0	$26,$14
	mfc0	$27,$12
	addiu	$sp,$sp,-312
.LCFI6 = .
	.cfi_def_cfa_offset 312
	sw	$26,308($sp)
	mfc0	$26,$12,2
	sw	$27,304($sp)
	sw	$26,300($sp)
	ins	$27,$0,1,15
	ori	$27,$27,0xc00
	mtc0	$27,$12
	sw	$31,92($sp)
	sw	$fp,88($sp)
	sw	$25,84($sp)
	sw	$24,80($sp)
	sw	$15,76($sp)
	sw	$14,72($sp)
	sw	$13,68($sp)
	sw	$12,64($sp)
	sw	$11,60($sp)
	sw	$10,56($sp)
	sw	$9,52($sp)
	sw	$8,48($sp)
	sw	$7,44($sp)
	sw	$6,40($sp)
	sw	$5,36($sp)
	sw	$4,32($sp)
	sw	$3,28($sp)
	sw	$2,24($sp)
	sw	$1,20($sp)
	sdc1	$f19,248($sp)
	sdc1	$f18,240($sp)
	sdc1	$f17,232($sp)
	sdc1	$f16,224($sp)
	sdc1	$f15,216($sp)
	sdc1	$f14,208($sp)
	sdc1	$f13,200($sp)
	sdc1	$f12,192($sp)
	sdc1	$f11,184($sp)
	sdc1	$f10,176($sp)
	sdc1	$f9,168($sp)
	sdc1	$f8,160($sp)
	sdc1	$f7,152($sp)
	sdc1	$f6,144($sp)
	sdc1	$f5,136($sp)
	sdc1	$f4,128($sp)
	sdc1	$f3,120($sp)
	sdc1	$f2,112($sp)
	sdc1	$f1,104($sp)
	sdc1	$f0,96($sp)
	.cfi_offset 26, -12
	.cfi_offset 31, -220
	.cfi_offset 30, -224
	.cfi_offset 25, -228
	.cfi_offset 24, -232
	.cfi_offset 15, -236
	.cfi_offset 14, -240
	.cfi_offset 13, -244
	.cfi_offset 12, -248
	.cfi_offset 11, -252
	.cfi_offset 10, -256
	.cfi_offset 9, -260
	.cfi_offset 8, -264
	.cfi_offset 7, -268
	.cfi_offset 6, -272
	.cfi_offset 5, -276
	.cfi_offset 4, -280
	.cfi_offset 3, -284
	.cfi_offset 2, -288
	.cfi_offset 1, -292
	.cfi_offset 51, -64
	.cfi_offset 50, -72
	.cfi_offset 49, -80
	.cfi_offset 48, -88
	.cfi_offset 47, -96
	.cfi_offset 46, -104
	.cfi_offset 45, -112
	.cfi_offset 44, -120
	.cfi_offset 43, -128
	.cfi_offset 42, -136
	.cfi_offset 41, -144
	.cfi_offset 40, -152
	.cfi_offset 39, -160
	.cfi_offset 38, -168
	.cfi_offset 37, -176
	.cfi_offset 36, -184
	.cfi_offset 35, -192
	.cfi_offset 34, -200
	.cfi_offset 33, -208
	.cfi_offset 32, -216
	mflo	$2
	sw	$2,292($sp)
	mfhi	$3
	sw	$3,288($sp)
	mflo	$2,$ac1
	sw	$2,284($sp)
	mfhi	$3,$ac1
	sw	$3,280($sp)
	mflo	$2,$ac2
	sw	$2,276($sp)
	mfhi	$3,$ac2
	sw	$3,272($sp)
	mflo	$2,$ac3
	sw	$2,268($sp)
	mfhi	$3,$ac3
	sw	$3,264($sp)
	rddsp	$3,63
	sw	$3,296($sp)
	cfc1	$2,$31
	sw	$2,260($sp)
	move	$fp,$sp
.LCFI7 = .
	.cfi_def_cfa_register 30
	.cfi_offset 65, -20
	.cfi_offset 64, -24
	.cfi_offset 209, -28
	.cfi_offset 208, -32
	.cfi_offset 211, -36
	.cfi_offset 210, -40
	.cfi_offset 213, -44
	.cfi_offset 212, -48
	.cfi_offset 3, -16
	.cfi_offset 2, -52
	.loc 1 97 0
	lui	$2,%hi(txq)
	addiu	$4,$2,%lo(txq)
	jal	Q_Empty
	nop

	bne	$2,$0,.L5
	nop

	.loc 1 98 0
	lui	$2,%hi(txq)
	addiu	$4,$2,%lo(txq)
	jal	Q_Dequeue
	nop

	move	$3,$2
	lui	$2,%hi(U4TXREG)
	sw	$3,%lo(U4TXREG)($2)
	j	.L6
	nop

.L5:
	.loc 1 100 0
	lui	$3,%hi(U4STA)
	lw	$2,%lo(U4STA)($3)
	ins	$2,$0,10,1
	sw	$2,%lo(U4STA)($3)
.L6:
	.loc 1 102 0
	lui	$3,%hi(IFS5)
	lw	$2,%lo(IFS5)($3)
	ins	$2,$0,12,1
	sw	$2,%lo(IFS5)($3)
	.loc 1 103 0
	move	$sp,$fp
.LCFI8 = .
	.cfi_def_cfa_register 29
	lw	$2,260($sp)
	ctc1	$2,$31
	lw	$3,296($sp)
	wrdsp	$3,63
	lw	$2,292($sp)
	mtlo	$2
	lw	$3,288($sp)
	mthi	$3
	lw	$5,284($sp)
	mtlo	$5,$ac1
	lw	$5,280($sp)
	mthi	$5,$ac1
	lw	$5,276($sp)
	mtlo	$5,$ac2
	lw	$5,272($sp)
	mthi	$5,$ac2
	lw	$5,268($sp)
	mtlo	$5,$ac3
	lw	$5,264($sp)
	mthi	$5,$ac3
	lw	$31,92($sp)
	lw	$fp,88($sp)
	lw	$25,84($sp)
	lw	$24,80($sp)
	lw	$15,76($sp)
	lw	$14,72($sp)
	lw	$13,68($sp)
	lw	$12,64($sp)
	lw	$11,60($sp)
	lw	$10,56($sp)
	lw	$9,52($sp)
	lw	$8,48($sp)
	lw	$7,44($sp)
	lw	$6,40($sp)
	lw	$5,36($sp)
	lw	$4,32($sp)
	lw	$3,28($sp)
	lw	$2,24($sp)
	lw	$1,20($sp)
	ldc1	$f19,248($sp)
	ldc1	$f18,240($sp)
	ldc1	$f17,232($sp)
	ldc1	$f16,224($sp)
	ldc1	$f15,216($sp)
	ldc1	$f14,208($sp)
	ldc1	$f13,200($sp)
	ldc1	$f12,192($sp)
	ldc1	$f11,184($sp)
	ldc1	$f10,176($sp)
	ldc1	$f9,168($sp)
	ldc1	$f8,160($sp)
	ldc1	$f7,152($sp)
	ldc1	$f6,144($sp)
	ldc1	$f5,136($sp)
	ldc1	$f4,128($sp)
	ldc1	$f3,120($sp)
	ldc1	$f2,112($sp)
	ldc1	$f1,104($sp)
	ldc1	$f0,96($sp)
	di
	ehb
	lw	$26,308($sp)
	lw	$27,304($sp)
	mtc0	$26,$14
	lw	$26,300($sp)
	addiu	$sp,$sp,312
	mtc0	$26,$12,2
	wrpgpr	$sp,$sp
	mtc0	$27,$12
	eret
	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
	.set	at
# End mchp_output_function_epilogue
	.end	ISR_UART4_TX
	.cfi_endproc
.LFE4:
	.size	ISR_UART4_TX, .-ISR_UART4_TX
	.align	2
	.globl	UART4_getc
.LFB5 = .
	.loc 1 106 0
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
.LCFI9 = .
	.cfi_def_cfa_offset 8
	sw	$fp,4($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
.LCFI10 = .
	.cfi_def_cfa_register 30
	.loc 1 107 0
	nop
.L8:
	lui	$2,%hi(U4STA)
	lw	$2,%lo(U4STA)($2)
	andi	$2,$2,0x1
	beq	$2,$0,.L8
	nop

	.loc 1 109 0
	lui	$2,%hi(U4RXREG)
	lw	$2,%lo(U4RXREG)($2)
	seb	$2,$2
	.loc 1 110 0
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
	.end	UART4_getc
	.cfi_endproc
.LFE5:
	.size	UART4_getc, .-UART4_getc
	.align	2
	.globl	UART4_putc
.LFB6 = .
	.loc 1 112 0
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
.LCFI12 = .
	.cfi_def_cfa_offset 8
	sw	$fp,4($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
.LCFI13 = .
	.cfi_def_cfa_register 30
	move	$2,$4
	sb	$2,8($fp)
	.loc 1 113 0
	nop
.L11:
	lui	$2,%hi(U4STA)
	lw	$2,%lo(U4STA)($2)
	andi	$2,$2,0x200
	bne	$2,$0,.L11
	nop

	.loc 1 115 0
	lb	$3,8($fp)
	lui	$2,%hi(U4TXREG)
	sw	$3,%lo(U4TXREG)($2)
	.loc 1 116 0
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
	.end	UART4_putc
	.cfi_endproc
.LFE6:
	.size	UART4_putc, .-UART4_putc
	.align	2
	.globl	UART4_puts
.LFB7 = .
	.loc 1 118 0
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
.LCFI15 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)
	sw	$fp,16($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
.LCFI16 = .
	.cfi_def_cfa_register 30
	sw	$4,24($fp)
	.loc 1 119 0
	j	.L13
	nop

.L14:
	.loc 1 120 0
	lw	$2,24($fp)
	addiu	$3,$2,1
	sw	$3,24($fp)
	lb	$2,0($2)
	move	$4,$2
	jal	UART4_putc
	nop

.L13:
	.loc 1 119 0
	lw	$2,24($fp)
	lb	$2,0($2)
	bne	$2,$0,.L14
	nop

	.loc 1 121 0
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
	.end	UART4_puts
	.cfi_endproc
.LFE7:
	.size	UART4_puts, .-UART4_puts
	.align	2
	.globl	UART4_qgetc
.LFB8 = .
	.loc 1 123 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	UART4_qgetc
	.type	UART4_qgetc, @function
UART4_qgetc:
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
	.loc 1 124 0
	nop
.L16:
	lui	$2,%hi(rxq)
	addiu	$4,$2,%lo(rxq)
	jal	Q_Empty
	nop

	bne	$2,$0,.L16
	nop

	.loc 1 126 0
	lui	$2,%hi(rxq)
	addiu	$4,$2,%lo(rxq)
	jal	Q_Dequeue
	nop

	.loc 1 127 0
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
	.end	UART4_qgetc
	.cfi_endproc
.LFE8:
	.size	UART4_qgetc, .-UART4_qgetc
	.align	2
	.globl	UART4_qputc
.LFB9 = .
	.loc 1 129 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	UART4_qputc
	.type	UART4_qputc, @function
UART4_qputc:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI21 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)
	sw	$fp,16($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
.LCFI22 = .
	.cfi_def_cfa_register 30
	move	$2,$4
	sb	$2,24($fp)
	.loc 1 131 0
	nop
.L19:
	lui	$2,%hi(txq)
	addiu	$4,$2,%lo(txq)
	jal	Q_Full
	nop

	bne	$2,$0,.L19
	nop

	.loc 1 133 0
	lbu	$2,24($fp)
	lui	$3,%hi(txq)
	addiu	$4,$3,%lo(txq)
	move	$5,$2
	jal	Q_Enqueue
	nop

	.loc 1 135 0
	lui	$3,%hi(U4STA)
	lw	$2,%lo(U4STA)($3)
	li	$4,1			# 0x1
	ins	$2,$4,10,1
	sw	$2,%lo(U4STA)($3)
	.loc 1 136 0
	move	$sp,$fp
.LCFI23 = .
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
	.end	UART4_qputc
	.cfi_endproc
.LFE9:
	.size	UART4_qputc, .-UART4_qputc
	.align	2
	.globl	UART4_qputs
.LFB10 = .
	.loc 1 138 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	UART4_qputs
	.type	UART4_qputs, @function
UART4_qputs:
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
	sw	$4,24($fp)
	.loc 1 140 0
	j	.L21
	nop

.L22:
	.loc 1 141 0
	lw	$2,24($fp)
	addiu	$3,$2,1
	sw	$3,24($fp)
	lb	$2,0($2)
	move	$4,$2
	jal	UART4_qputc
	nop

.L21:
	.loc 1 140 0
	lw	$2,24($fp)
	lb	$2,0($2)
	bne	$2,$0,.L22
	nop

	.loc 1 143 0
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
	.end	UART4_qputs
	.cfi_endproc
.LFE10:
	.size	UART4_qputs, .-UART4_qputs
.Letext0:
	.file 2 "c:/program files/microchip/xc32/v1.42/pic32mx/include/proc/p32mz2048efg100.h"
	.file 3 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/7_communication/demo7_comm_uart_int/src/queue.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x1028
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.42\000"
	.byte	0x1
	.ascii	"src/UART.c\000"
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
	.2byte	0x74c
	.4byte	0x384
	.uleb128 0x4
	.ascii	"I2C3BIF\000"
	.byte	0x2
	.2byte	0x74d
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C3SIF\000"
	.byte	0x2
	.2byte	0x74e
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C3MIF\000"
	.byte	0x2
	.2byte	0x74f
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPI4EIF\000"
	.byte	0x2
	.2byte	0x750
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPI4RXIF\000"
	.byte	0x2
	.2byte	0x751
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPI4TXIF\000"
	.byte	0x2
	.2byte	0x752
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"RTCCIF\000"
	.byte	0x2
	.2byte	0x753
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"FCEIF\000"
	.byte	0x2
	.2byte	0x754
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"PREIF\000"
	.byte	0x2
	.2byte	0x755
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SQI1IF\000"
	.byte	0x2
	.2byte	0x756
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U4EIF\000"
	.byte	0x2
	.2byte	0x757
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U4RXIF\000"
	.byte	0x2
	.2byte	0x758
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U4TXIF\000"
	.byte	0x2
	.2byte	0x759
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C4BIF\000"
	.byte	0x2
	.2byte	0x75a
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C4SIF\000"
	.byte	0x2
	.2byte	0x75b
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C4MIF\000"
	.byte	0x2
	.2byte	0x75c
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPI5EIF\000"
	.byte	0x2
	.2byte	0x75d
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPI5RXIF\000"
	.byte	0x2
	.2byte	0x75e
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPI5TXIF\000"
	.byte	0x2
	.2byte	0x75f
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U5EIF\000"
	.byte	0x2
	.2byte	0x760
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U5RXIF\000"
	.byte	0x2
	.2byte	0x761
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U5TXIF\000"
	.byte	0x2
	.2byte	0x762
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C5BIF\000"
	.byte	0x2
	.2byte	0x763
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C5SIF\000"
	.byte	0x2
	.2byte	0x764
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C5MIF\000"
	.byte	0x2
	.2byte	0x765
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPI6IF\000"
	.byte	0x2
	.2byte	0x766
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPI6RXIF\000"
	.byte	0x2
	.2byte	0x767
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPI6TX\000"
	.byte	0x2
	.2byte	0x768
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U6EIF\000"
	.byte	0x2
	.2byte	0x769
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U6RXIF\000"
	.byte	0x2
	.2byte	0x76a
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U6TXIF\000"
	.byte	0x2
	.2byte	0x76b
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x76d
	.4byte	0x39e
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x76e
	.4byte	0xcf
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
	.2byte	0x74b
	.4byte	0x3b2
	.uleb128 0x6
	.4byte	0xdf
	.uleb128 0x6
	.4byte	0x384
	.byte	0
	.uleb128 0x7
	.ascii	"__IFS5bits_t\000"
	.byte	0x2
	.2byte	0x770
	.4byte	0x39e
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x86e
	.4byte	0x66e
	.uleb128 0x4
	.ascii	"I2C3BIE\000"
	.byte	0x2
	.2byte	0x86f
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C3SIE\000"
	.byte	0x2
	.2byte	0x870
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C3MIE\000"
	.byte	0x2
	.2byte	0x871
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPI4EIE\000"
	.byte	0x2
	.2byte	0x872
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPI4RXIE\000"
	.byte	0x2
	.2byte	0x873
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPI4TXIE\000"
	.byte	0x2
	.2byte	0x874
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"RTCCIE\000"
	.byte	0x2
	.2byte	0x875
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"FCEIE\000"
	.byte	0x2
	.2byte	0x876
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"PREIE\000"
	.byte	0x2
	.2byte	0x877
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SQI1IE\000"
	.byte	0x2
	.2byte	0x878
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U4EIE\000"
	.byte	0x2
	.2byte	0x879
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U4RXIE\000"
	.byte	0x2
	.2byte	0x87a
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U4TXIE\000"
	.byte	0x2
	.2byte	0x87b
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C4BIE\000"
	.byte	0x2
	.2byte	0x87c
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C4SIE\000"
	.byte	0x2
	.2byte	0x87d
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C4MIE\000"
	.byte	0x2
	.2byte	0x87e
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPI5EIE\000"
	.byte	0x2
	.2byte	0x87f
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPI5RXIE\000"
	.byte	0x2
	.2byte	0x880
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPI5TXIE\000"
	.byte	0x2
	.2byte	0x881
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U5EIE\000"
	.byte	0x2
	.2byte	0x882
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U5RXIE\000"
	.byte	0x2
	.2byte	0x883
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U5TXIE\000"
	.byte	0x2
	.2byte	0x884
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C5BIE\000"
	.byte	0x2
	.2byte	0x885
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C5SIE\000"
	.byte	0x2
	.2byte	0x886
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C5MIE\000"
	.byte	0x2
	.2byte	0x887
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPI6IE\000"
	.byte	0x2
	.2byte	0x888
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPI6RXIE\000"
	.byte	0x2
	.2byte	0x889
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPI6TXIE\000"
	.byte	0x2
	.2byte	0x88a
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U6EIE\000"
	.byte	0x2
	.2byte	0x88b
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U6RXIE\000"
	.byte	0x2
	.2byte	0x88c
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U6TXIE\000"
	.byte	0x2
	.2byte	0x88d
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x88f
	.4byte	0x688
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x890
	.4byte	0xcf
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
	.2byte	0x86d
	.4byte	0x69c
	.uleb128 0x6
	.4byte	0x3c7
	.uleb128 0x6
	.4byte	0x66e
	.byte	0
	.uleb128 0x7
	.ascii	"__IEC5bits_t\000"
	.byte	0x2
	.2byte	0x892
	.4byte	0x688
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0xc75
	.4byte	0x75f
	.uleb128 0x4
	.ascii	"PREIS\000"
	.byte	0x2
	.2byte	0xc76
	.4byte	0xcf
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"PREIP\000"
	.byte	0x2
	.2byte	0xc77
	.4byte	0xcf
	.byte	0x4
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SQI1IS\000"
	.byte	0x2
	.2byte	0xc79
	.4byte	0xcf
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SQI1IP\000"
	.byte	0x2
	.2byte	0xc7a
	.4byte	0xcf
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U4EIS\000"
	.byte	0x2
	.2byte	0xc7c
	.4byte	0xcf
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U4EIP\000"
	.byte	0x2
	.2byte	0xc7d
	.4byte	0xcf
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U4RXIS\000"
	.byte	0x2
	.2byte	0xc7f
	.4byte	0xcf
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U4RXIP\000"
	.byte	0x2
	.2byte	0xc80
	.4byte	0xcf
	.byte	0x4
	.byte	0x3
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0xc82
	.4byte	0x779
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0xc83
	.4byte	0xcf
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
	.2byte	0xc74
	.4byte	0x78d
	.uleb128 0x6
	.4byte	0x6b1
	.uleb128 0x6
	.4byte	0x75f
	.byte	0
	.uleb128 0x7
	.ascii	"__IPC42bits_t\000"
	.byte	0x2
	.2byte	0xc85
	.4byte	0x779
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0xc8d
	.4byte	0x85b
	.uleb128 0x4
	.ascii	"U4TXIS\000"
	.byte	0x2
	.2byte	0xc8e
	.4byte	0xcf
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"U4TXIP\000"
	.byte	0x2
	.2byte	0xc8f
	.4byte	0xcf
	.byte	0x4
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C4BIS\000"
	.byte	0x2
	.2byte	0xc91
	.4byte	0xcf
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C4BIP\000"
	.byte	0x2
	.2byte	0xc92
	.4byte	0xcf
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C4SIS\000"
	.byte	0x2
	.2byte	0xc94
	.4byte	0xcf
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C4SIP\000"
	.byte	0x2
	.2byte	0xc95
	.4byte	0xcf
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C4MIS\000"
	.byte	0x2
	.2byte	0xc97
	.4byte	0xcf
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"I2C4MIP\000"
	.byte	0x2
	.2byte	0xc98
	.4byte	0xcf
	.byte	0x4
	.byte	0x3
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0xc9a
	.4byte	0x875
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0xc9b
	.4byte	0xcf
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
	.2byte	0xc8c
	.4byte	0x889
	.uleb128 0x6
	.4byte	0x7a3
	.uleb128 0x6
	.4byte	0x85b
	.byte	0
	.uleb128 0x7
	.ascii	"__IPC43bits_t\000"
	.byte	0x2
	.2byte	0xc9d
	.4byte	0x875
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x1eb8
	.4byte	0x991
	.uleb128 0x4
	.ascii	"STSEL\000"
	.byte	0x2
	.2byte	0x1eb9
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0x9eb
	.uleb128 0x4
	.ascii	"PDSEL0\000"
	.byte	0x2
	.2byte	0x1eca
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xa1e
	.uleb128 0x4
	.ascii	"USIDL\000"
	.byte	0x2
	.2byte	0x1ed2
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xa38
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x1ed7
	.4byte	0xcf
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
	.4byte	0xa56
	.uleb128 0x6
	.4byte	0x89f
	.uleb128 0x6
	.4byte	0x991
	.uleb128 0x6
	.4byte	0x9eb
	.uleb128 0x6
	.4byte	0xa1e
	.byte	0
	.uleb128 0x7
	.ascii	"__U4MODEbits_t\000"
	.byte	0x2
	.2byte	0x1ed9
	.4byte	0xa38
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x1f0a
	.4byte	0xbb9
	.uleb128 0x4
	.ascii	"URXDA\000"
	.byte	0x2
	.2byte	0x1f0b
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xc1f
	.uleb128 0x4
	.ascii	"URXISEL0\000"
	.byte	0x2
	.2byte	0x1f1e
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xcf
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
	.4byte	0xc3e
	.uleb128 0x4
	.ascii	"UTXSEL\000"
	.byte	0x2
	.2byte	0x1f26
	.4byte	0xcf
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
	.4byte	0xc58
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x1f29
	.4byte	0xcf
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
	.4byte	0xc76
	.uleb128 0x6
	.4byte	0xa6d
	.uleb128 0x6
	.4byte	0xbb9
	.uleb128 0x6
	.4byte	0xc1f
	.uleb128 0x6
	.4byte	0xc3e
	.byte	0
	.uleb128 0x7
	.ascii	"__U4STAbits_t\000"
	.byte	0x2
	.2byte	0x1f2b
	.4byte	0xc58
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
	.uleb128 0x8
	.byte	0x8c
	.byte	0x3
	.byte	0x8
	.4byte	0xd6a
	.uleb128 0x9
	.ascii	"Data\000"
	.byte	0x3
	.byte	0x9
	.4byte	0xd6a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"Head\000"
	.byte	0x3
	.byte	0xa
	.4byte	0xcf
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.ascii	"Tail\000"
	.byte	0x3
	.byte	0xb
	.4byte	0xcf
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x9
	.ascii	"Size\000"
	.byte	0x3
	.byte	0xc
	.4byte	0xcf
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0
	.uleb128 0xa
	.4byte	0xcc3
	.4byte	0xd7a
	.uleb128 0xb
	.4byte	0xd7a
	.byte	0x7f
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0xc
	.ascii	"Q_T\000"
	.byte	0x3
	.byte	0xd
	.4byte	0xd22
	.uleb128 0xd
	.byte	0x1
	.ascii	"UART4_init\000"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.ascii	"ISR_UART4_RX\000"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xdda
	.uleb128 0xf
	.ascii	"c\000"
	.byte	0x1
	.byte	0x57
	.4byte	0xdda
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
	.ascii	"ISR_UART4_TX\000"
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.ascii	"UART4_getc\000"
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.4byte	0xdda
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.ascii	"UART4_putc\000"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xe4a
	.uleb128 0x12
	.ascii	"c\000"
	.byte	0x1
	.byte	0x70
	.4byte	0xdda
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.ascii	"UART4_puts\000"
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xe76
	.uleb128 0x12
	.ascii	"s\000"
	.byte	0x1
	.byte	0x76
	.4byte	0xe76
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.4byte	0xdda
	.uleb128 0x14
	.byte	0x1
	.ascii	"UART4_qgetc\000"
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.4byte	0xdda
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.ascii	"UART4_qputc\000"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xec9
	.uleb128 0x12
	.ascii	"c\000"
	.byte	0x1
	.byte	0x81
	.4byte	0xdda
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.ascii	"UART4_qputs\000"
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xef6
	.uleb128 0x12
	.ascii	"s\000"
	.byte	0x1
	.byte	0x8a
	.4byte	0xe76
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0x15
	.ascii	"U4RXR\000"
	.byte	0x2
	.2byte	0x48e
	.4byte	0xf06
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0xcf
	.uleb128 0x15
	.ascii	"RPF8R\000"
	.byte	0x2
	.2byte	0x608
	.4byte	0xf06
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.ascii	"IFS5bits\000"
	.byte	0x2
	.2byte	0x771
	.ascii	"IFS5\000"
	.4byte	0xf33
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x3b2
	.uleb128 0x17
	.ascii	"IEC5bits\000"
	.byte	0x2
	.2byte	0x893
	.ascii	"IEC5\000"
	.4byte	0xf50
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x69c
	.uleb128 0x17
	.ascii	"IPC42bits\000"
	.byte	0x2
	.2byte	0xc86
	.ascii	"IPC42\000"
	.4byte	0xf6f
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x78d
	.uleb128 0x17
	.ascii	"IPC43bits\000"
	.byte	0x2
	.2byte	0xc9e
	.ascii	"IPC43\000"
	.4byte	0xf8e
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x889
	.uleb128 0x17
	.ascii	"U4MODEbits\000"
	.byte	0x2
	.2byte	0x1eda
	.ascii	"U4MODE\000"
	.4byte	0xfaf
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0xa56
	.uleb128 0x17
	.ascii	"U4STAbits\000"
	.byte	0x2
	.2byte	0x1f2c
	.ascii	"U4STA\000"
	.4byte	0xfce
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0xc76
	.uleb128 0x15
	.ascii	"U4TXREG\000"
	.byte	0x2
	.2byte	0x1f5a
	.4byte	0xf06
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.ascii	"U4RXREG\000"
	.byte	0x2
	.2byte	0x1f5e
	.4byte	0xf06
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.ascii	"U4BRG\000"
	.byte	0x2
	.2byte	0x1f62
	.4byte	0xf06
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.ascii	"txq\000"
	.byte	0x1
	.byte	0x39
	.4byte	0xd86
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	txq
	.uleb128 0x18
	.ascii	"rxq\000"
	.byte	0x1
	.byte	0x39
	.4byte	0xd86
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rxq
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
	.uleb128 0x9
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
	.uleb128 0xd
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
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x2116
	.uleb128 0xc
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.globl	__vector_dispatch_172
	.section	.vector_172,code,keep
	.set	nomips16
	.set noreorder
	.align	2
	.ent	__vector_dispatch_172
__vector_dispatch_172:
	j	ISR_UART4_TX
	nop
	.set reorder
	.end	__vector_dispatch_172
	.size	__vector_dispatch_172, .-__vector_dispatch_172
	.globl	__vector_dispatch_171
	.section	.vector_171,code,keep
	.set	nomips16
	.set noreorder
	.align	2
	.ent	__vector_dispatch_171
__vector_dispatch_171:
	j	ISR_UART4_RX
	nop
	.set reorder
	.end	__vector_dispatch_171
	.size	__vector_dispatch_171, .-__vector_dispatch_171
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
