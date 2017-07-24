	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
.Ltext0:
	.cfi_sections	.debug_frame
	.globl	adx_lost
	.section	.sbss,bss
	.align	2
	.type	adx_lost, @object
	.size	adx_lost, 4
adx_lost:
	.space	4
	.globl	num_lost
	.align	2
	.type	num_lost, @object
	.size	num_lost, 4
num_lost:
	.space	4
	.globl	profile_ticks
	.align	2
	.type	profile_ticks, @object
	.size	profile_ticks, 4
profile_ticks:
	.space	4
	.globl	profiling_enabled
	.type	profiling_enabled, @object
	.size	profiling_enabled, 1
profiling_enabled:
	.space	1
	.section	.text,code
	.align	2
	.globl	Init_Profiling
.LFB0 = .
	.file 1 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/12_performance/demo12_optimization/src/profiler/profile.c"
	.loc 1 10 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	Init_Profiling
	.type	Init_Profiling, @function
Init_Profiling:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI0 = .
	.cfi_def_cfa_offset 16
	sw	$fp,12($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
.LCFI1 = .
	.cfi_def_cfa_register 30
	.loc 1 14 0
	sw	$0,0($fp)
	j	.L2
	nop

.L3:
	.loc 1 15 0
	lui	$2,%hi(RegionCount)
	lw	$3,0($fp)
	sll	$3,$3,2
	addiu	$2,$2,%lo(RegionCount)
	addu	$2,$3,$2
	sw	$0,0($2)
	.loc 1 14 0
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
.L2:
	lui	$2,%hi(NumProfileRegions)
	lw	$2,%lo(NumProfileRegions)($2)
	lw	$3,0($fp)
	sltu	$2,$3,$2
	bne	$2,$0,.L3
	nop

	.loc 1 19 0
	move	$sp,$fp
.LCFI2 = .
	.cfi_def_cfa_register 29
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	Init_Profiling
	.cfi_endproc
.LFE0:
	.size	Init_Profiling, .-Init_Profiling
	.align	2
	.globl	Disable_Profiling
.LFB1 = .
	.loc 1 21 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	Disable_Profiling
	.type	Disable_Profiling, @function
Disable_Profiling:
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
	.loc 1 22 0
	sb	$0,%gp_rel(profiling_enabled)($28)
	.loc 1 23 0
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
	.end	Disable_Profiling
	.cfi_endproc
.LFE1:
	.size	Disable_Profiling, .-Disable_Profiling
	.align	2
	.globl	Enable_Profiling
.LFB2 = .
	.loc 1 25 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	Enable_Profiling
	.type	Enable_Profiling, @function
Enable_Profiling:
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
	.loc 1 26 0
	li	$2,1			# 0x1
	sb	$2,%gp_rel(profiling_enabled)($28)
	.loc 1 27 0
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
	.end	Enable_Profiling
	.cfi_endproc
.LFE2:
	.size	Enable_Profiling, .-Enable_Profiling
	.align	2
	.globl	Handle_Profile_Sample
.LFB3 = .
	.loc 1 29 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	Handle_Profile_Sample
	.type	Handle_Profile_Sample, @function
Handle_Profile_Sample:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI9 = .
	.cfi_def_cfa_offset 24
	sw	$fp,20($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
.LCFI10 = .
	.cfi_def_cfa_register 30
	sw	$4,24($fp)
	.loc 1 33 0
	lbu	$2,%gp_rel(profiling_enabled)($28)
	beq	$2,$0,.L6
	nop

	.loc 1 34 0
	lw	$2,%gp_rel(profile_ticks)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(profile_ticks)($28)
	.loc 1 36 0
	sw	$0,0($fp)
	j	.L8
	nop

.L11:
	.loc 1 37 0
	lui	$2,%hi(RegionTable)
	lw	$3,0($fp)
	sll	$3,$3,5
	addiu	$2,$2,%lo(RegionTable)
	addu	$2,$3,$2
	lw	$2,0($2)
	sw	$2,4($fp)
	.loc 1 38 0
	lui	$3,%hi(RegionTable)
	lw	$2,0($fp)
	addiu	$3,$3,%lo(RegionTable)
	sll	$2,$2,5
	addu	$2,$3,$2
	lw	$2,4($2)
	sw	$2,8($fp)
	.loc 1 39 0
	lw	$3,24($fp)
	lw	$2,4($fp)
	sltu	$2,$3,$2
	bne	$2,$0,.L9
	nop

	lw	$3,24($fp)
	lw	$2,8($fp)
	sltu	$2,$2,$3
	bne	$2,$0,.L9
	nop

	.loc 1 40 0
	lui	$2,%hi(RegionCount)
	lw	$3,0($fp)
	sll	$3,$3,2
	addiu	$2,$2,%lo(RegionCount)
	addu	$2,$3,$2
	lw	$2,0($2)
	addiu	$3,$2,1
	lui	$2,%hi(RegionCount)
	lw	$4,0($fp)
	sll	$4,$4,2
	addiu	$2,$2,%lo(RegionCount)
	addu	$2,$4,$2
	sw	$3,0($2)
	.loc 1 41 0
	j	.L10
	nop

.L9:
	.loc 1 36 0
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
.L8:
	lw	$3,0($fp)
	lui	$2,%hi(NumProfileRegions)
	lw	$2,%lo(NumProfileRegions)($2)
	sltu	$2,$3,$2
	bne	$2,$0,.L11
	nop

.L10:
	.loc 1 44 0
	lw	$3,0($fp)
	lui	$2,%hi(NumProfileRegions)
	lw	$2,%lo(NumProfileRegions)($2)
	bne	$3,$2,.L6
	nop

	.loc 1 45 0
	lw	$2,24($fp)
	sw	$2,%gp_rel(adx_lost)($28)
	.loc 1 46 0
	lw	$2,%gp_rel(num_lost)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(num_lost)($28)
.L6:
	.loc 1 49 0
	move	$sp,$fp
.LCFI11 = .
	.cfi_def_cfa_register 29
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	Handle_Profile_Sample
	.cfi_endproc
.LFE3:
	.size	Handle_Profile_Sample, .-Handle_Profile_Sample
	.align	2
	.globl	Sort_Profile
.LFB4 = .
	.loc 1 51 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	Sort_Profile
	.type	Sort_Profile, @function
Sort_Profile:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI12 = .
	.cfi_def_cfa_offset 24
	sw	$fp,20($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
.LCFI13 = .
	.cfi_def_cfa_register 30
	.loc 1 55 0
	sw	$0,0($fp)
	j	.L13
	nop

.L14:
	.loc 1 56 0
	lui	$2,%hi(SortedRegions)
	lw	$3,0($fp)
	sll	$3,$3,2
	addiu	$2,$2,%lo(SortedRegions)
	addu	$2,$3,$2
	lw	$3,0($fp)
	sw	$3,0($2)
	.loc 1 55 0
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
.L13:
	lui	$2,%hi(NumProfileRegions)
	lw	$2,%lo(NumProfileRegions)($2)
	lw	$3,0($fp)
	sltu	$2,$3,$2
	bne	$2,$0,.L14
	nop

	.loc 1 59 0
	sw	$0,0($fp)
	j	.L15
	nop

.L19:
	.loc 1 60 0
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
	j	.L16
	nop

.L18:
	.loc 1 61 0
	lui	$2,%hi(SortedRegions)
	lw	$3,0($fp)
	sll	$3,$3,2
	addiu	$2,$2,%lo(SortedRegions)
	addu	$2,$3,$2
	lw	$3,0($2)
	lui	$2,%hi(RegionCount)
	sll	$3,$3,2
	addiu	$2,$2,%lo(RegionCount)
	addu	$2,$3,$2
	lw	$3,0($2)
	lui	$2,%hi(SortedRegions)
	lw	$4,4($fp)
	sll	$4,$4,2
	addiu	$2,$2,%lo(SortedRegions)
	addu	$2,$4,$2
	lw	$4,0($2)
	lui	$2,%hi(RegionCount)
	sll	$4,$4,2
	addiu	$2,$2,%lo(RegionCount)
	addu	$2,$4,$2
	lw	$2,0($2)
	sltu	$2,$3,$2
	beq	$2,$0,.L17
	nop

	.loc 1 62 0
	lui	$2,%hi(SortedRegions)
	lw	$3,0($fp)
	sll	$3,$3,2
	addiu	$2,$2,%lo(SortedRegions)
	addu	$2,$3,$2
	lw	$2,0($2)
	sw	$2,8($fp)
	.loc 1 63 0
	lui	$2,%hi(SortedRegions)
	lw	$3,4($fp)
	sll	$3,$3,2
	addiu	$2,$2,%lo(SortedRegions)
	addu	$2,$3,$2
	lw	$3,0($2)
	lui	$2,%hi(SortedRegions)
	lw	$4,0($fp)
	sll	$4,$4,2
	addiu	$2,$2,%lo(SortedRegions)
	addu	$2,$4,$2
	sw	$3,0($2)
	.loc 1 64 0
	lui	$2,%hi(SortedRegions)
	lw	$3,4($fp)
	sll	$3,$3,2
	addiu	$2,$2,%lo(SortedRegions)
	addu	$2,$3,$2
	lw	$3,8($fp)
	sw	$3,0($2)
.L17:
	.loc 1 60 0
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
.L16:
	lui	$2,%hi(NumProfileRegions)
	lw	$2,%lo(NumProfileRegions)($2)
	lw	$3,4($fp)
	sltu	$2,$3,$2
	bne	$2,$0,.L18
	nop

	.loc 1 59 0
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
.L15:
	lui	$2,%hi(NumProfileRegions)
	lw	$2,%lo(NumProfileRegions)($2)
	lw	$3,0($fp)
	sltu	$2,$3,$2
	bne	$2,$0,.L19
	nop

	.loc 1 68 0
	move	$sp,$fp
.LCFI14 = .
	.cfi_def_cfa_register 29
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	Sort_Profile
	.cfi_endproc
.LFE4:
	.size	Sort_Profile, .-Sort_Profile
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"%d Samples\000"
	.align	2
.LC1:
	.ascii	"%d Lost\000"
	.align	2
.LC2:
	.ascii	"%d Regions\000"
	.align	2
.LC3:
	.ascii	"%3d %.12s\000"
	.section	.text,code
	.align	2
	.globl	Display_Profile
.LFB5 = .
	.loc 1 70 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	Display_Profile
	.type	Display_Profile, @function
Display_Profile:
	.frame	$fp,48,$31		# vars= 24, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
.LCFI15 = .
	.cfi_def_cfa_offset 48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
.LCFI16 = .
	.cfi_def_cfa_register 30
	.loc 1 75 0
	lw	$2,%gp_rel(profile_ticks)($28)
	addiu	$3,$fp,24
	move	$4,$3
	lui	$3,%hi(.LC0)
	addiu	$5,$3,%lo(.LC0)
	move	$6,$2
	jal	_sprintf_cdnopsuxX
	nop

	.loc 1 76 0
	move	$4,$0
	move	$5,$0
	jal	OledSetCursor
	nop

	.loc 1 77 0
	addiu	$2,$fp,24
	move	$4,$2
	jal	OledPutString
	nop

	.loc 1 79 0
	lw	$2,%gp_rel(num_lost)($28)
	addiu	$3,$fp,24
	move	$4,$3
	lui	$3,%hi(.LC1)
	addiu	$5,$3,%lo(.LC1)
	move	$6,$2
	jal	_sprintf_cdnopsuxX
	nop

	.loc 1 80 0
	move	$4,$0
	li	$5,1			# 0x1
	jal	OledSetCursor
	nop

	.loc 1 81 0
	addiu	$2,$fp,24
	move	$4,$2
	jal	OledPutString
	nop

	.loc 1 83 0
	lui	$2,%hi(NumProfileRegions)
	lw	$2,%lo(NumProfileRegions)($2)
	addiu	$3,$fp,24
	move	$4,$3
	lui	$3,%hi(.LC2)
	addiu	$5,$3,%lo(.LC2)
	move	$6,$2
	jal	_sprintf_cdnopsuxX
	nop

	.loc 1 84 0
	move	$4,$0
	li	$5,2			# 0x2
	jal	OledSetCursor
	nop

	.loc 1 85 0
	addiu	$2,$fp,24
	move	$4,$2
	jal	OledPutString
	nop

	.loc 1 87 0
	li	$4,4			# 0x4
	jal	AwaitBIOSButtonPress
	nop

	.loc 1 88 0
	jal	OledClear
	nop

	.loc 1 90 0
	sw	$0,20($fp)
	.loc 1 91 0
	sw	$0,16($fp)
	j	.L21
	nop

.L23:
	.loc 1 92 0
	lui	$2,%hi(SortedRegions)
	lw	$3,16($fp)
	sll	$3,$3,2
	addiu	$2,$2,%lo(SortedRegions)
	addu	$2,$3,$2
	lw	$3,0($2)
	lui	$2,%hi(RegionCount)
	sll	$3,$3,2
	addiu	$2,$2,%lo(RegionCount)
	addu	$2,$3,$2
	lw	$2,0($2)
	beq	$2,$0,.L22
	nop

	.loc 1 93 0
	lui	$2,%hi(SortedRegions)
	lw	$3,16($fp)
	sll	$3,$3,2
	addiu	$2,$2,%lo(SortedRegions)
	addu	$2,$3,$2
	lw	$3,0($2)
	lui	$2,%hi(RegionCount)
	sll	$3,$3,2
	addiu	$2,$2,%lo(RegionCount)
	addu	$2,$3,$2
	lw	$3,0($2)
	lui	$2,%hi(SortedRegions)
	lw	$4,16($fp)
	sll	$4,$4,2
	addiu	$2,$2,%lo(SortedRegions)
	addu	$2,$4,$2
	lw	$2,0($2)
	sll	$2,$2,5
	addiu	$4,$2,8
	lui	$2,%hi(RegionTable)
	addiu	$2,$2,%lo(RegionTable)
	addu	$2,$4,$2
	addiu	$4,$fp,24
	lui	$5,%hi(.LC3)
	addiu	$5,$5,%lo(.LC3)
	move	$6,$3
	move	$7,$2
	jal	_sprintf_cdnopsuxX
	nop

	.loc 1 94 0
	lw	$2,20($fp)
	addiu	$3,$2,1
	sw	$3,20($fp)
	move	$4,$0
	move	$5,$2
	jal	OledSetCursor
	nop

	.loc 1 95 0
	addiu	$2,$fp,24
	move	$4,$2
	jal	OledPutString
	nop

	.loc 1 96 0
	lw	$3,20($fp)
	li	$2,4			# 0x4
	bne	$3,$2,.L22
	nop

	.loc 1 97 0
	sw	$0,20($fp)
	.loc 1 98 0
	li	$4,4			# 0x4
	jal	AwaitBIOSButtonPress
	nop

	.loc 1 99 0
	jal	OledClear
	nop

.L22:
	.loc 1 91 0
	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
.L21:
	lw	$3,16($fp)
	lui	$2,%hi(NumProfileRegions)
	lw	$2,%lo(NumProfileRegions)($2)
	sltu	$2,$3,$2
	bne	$2,$0,.L23
	nop

	.loc 1 104 0
	move	$sp,$fp
.LCFI17 = .
	.cfi_def_cfa_register 29
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	Display_Profile
	.cfi_endproc
.LFE5:
	.size	Display_Profile, .-Display_Profile
.Letext0:
	.file 2 "e:/\264\375\260\354\312\302\317\356/\315\352\263\311\312\257\300\317\312\246\264\363\321\247\274\306\273\256\310\316\316\361/cml/the-connected-mcu-lab--v1.5-12oct2016-chn/release/modules/12_performance/demo12_optimization/src/profiler/region.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x49d
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.42\000"
	.byte	0x1
	.ascii	"src/Profiler/profile.c\000"
	.ascii	"E:/\264\375\260\354\312\302\317\356/\315\352\263\311\312"
	.ascii	"\257\300\317\312\246\264\363\321\247\274\306\273\256\310"
	.ascii	"\316\316\361/CML/The-Connected-MCU-Lab--v1.5-12Oct2016-C"
	.ascii	"HN/Release/Modules/12_Performance/Demo12_Optimization\000"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x20
	.byte	0x2
	.byte	0x4
	.4byte	0x110
	.uleb128 0x3
	.ascii	"Start\000"
	.byte	0x2
	.byte	0x5
	.4byte	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x3
	.ascii	"End\000"
	.byte	0x2
	.byte	0x6
	.4byte	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x3
	.ascii	"Name\000"
	.byte	0x2
	.byte	0x7
	.4byte	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.ascii	"unsigned int\000"
	.uleb128 0x5
	.4byte	0x13c
	.4byte	0x130
	.uleb128 0x6
	.4byte	0x130
	.byte	0x17
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0x7
	.ascii	"REGION_T\000"
	.byte	0x2
	.byte	0x8
	.4byte	0xda
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"long int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.ascii	"long unsigned int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.ascii	"short unsigned int\000"
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.ascii	"short int\000"
	.uleb128 0x8
	.byte	0x1
	.ascii	"Init_Profiling\000"
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1cf
	.uleb128 0x9
	.ascii	"i\000"
	.byte	0x1
	.byte	0xb
	.4byte	0x110
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.ascii	"Disable_Profiling\000"
	.byte	0x1
	.byte	0x15
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.ascii	"Enable_Profiling\000"
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.ascii	"Handle_Profile_Sample\000"
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x272
	.uleb128 0xb
	.ascii	"PC_val\000"
	.byte	0x1
	.byte	0x1d
	.4byte	0x110
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x9
	.ascii	"i\000"
	.byte	0x1
	.byte	0x1e
	.4byte	0x175
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii	"s\000"
	.byte	0x1
	.byte	0x1f
	.4byte	0x110
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.ascii	"e\000"
	.byte	0x1
	.byte	0x1f
	.4byte	0x110
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.ascii	"Sort_Profile\000"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x2bb
	.uleb128 0x9
	.ascii	"i\000"
	.byte	0x1
	.byte	0x34
	.4byte	0x110
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii	"j\000"
	.byte	0x1
	.byte	0x34
	.4byte	0x110
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.ascii	"temp\000"
	.byte	0x1
	.byte	0x34
	.4byte	0x110
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.ascii	"Display_Profile\000"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x38a
	.uleb128 0x9
	.ascii	"region_num\000"
	.byte	0x1
	.byte	0x47
	.4byte	0x175
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x9
	.ascii	"line_num\000"
	.byte	0x1
	.byte	0x47
	.4byte	0x175
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x9
	.ascii	"text\000"
	.byte	0x1
	.byte	0x49
	.4byte	0x38a
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0xd
	.byte	0x1
	.ascii	"OledSetCursor\000"
	.byte	0x1
	.byte	0x4c
	.4byte	0x175
	.byte	0x1
	.4byte	0x333
	.uleb128 0xe
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.ascii	"OledPutString\000"
	.byte	0x1
	.byte	0x4d
	.4byte	0x175
	.byte	0x1
	.4byte	0x350
	.uleb128 0xe
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.ascii	"AwaitBIOSButtonPress\000"
	.byte	0x1
	.byte	0x57
	.4byte	0x175
	.byte	0x1
	.4byte	0x374
	.uleb128 0xe
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.ascii	"OledClear\000"
	.byte	0x1
	.byte	0x58
	.4byte	0x175
	.byte	0x1
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x13c
	.4byte	0x39a
	.uleb128 0x6
	.4byte	0x130
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	0x144
	.4byte	0x3a5
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.ascii	"RegionTable\000"
	.byte	0x2
	.byte	0xa
	.4byte	0x3ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	0x39a
	.uleb128 0x11
	.ascii	"NumProfileRegions\000"
	.byte	0x2
	.byte	0xb
	.4byte	0x3da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	0x110
	.uleb128 0x5
	.4byte	0x110
	.4byte	0x3ea
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.ascii	"RegionCount\000"
	.byte	0x2
	.byte	0xc
	.4byte	0x3ff
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.4byte	0x3df
	.uleb128 0x11
	.ascii	"SortedRegions\000"
	.byte	0x2
	.byte	0xd
	.4byte	0x3df
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.ascii	"adx_lost\000"
	.byte	0x1
	.byte	0x6
	.4byte	0x432
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	adx_lost
	.uleb128 0x13
	.4byte	0x110
	.uleb128 0x14
	.ascii	"num_lost\000"
	.byte	0x1
	.byte	0x6
	.4byte	0x432
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	num_lost
	.uleb128 0x14
	.ascii	"profile_ticks\000"
	.byte	0x1
	.byte	0x7
	.4byte	0x46a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	profile_ticks
	.uleb128 0x13
	.4byte	0x160
	.uleb128 0x14
	.ascii	"profiling_enabled\000"
	.byte	0x1
	.byte	0x8
	.4byte	0x48f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	profiling_enabled
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.ascii	"unsigned char\000"
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0xe
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
