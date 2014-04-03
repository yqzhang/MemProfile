	.file	"intrarefresh.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 intrarefresh.c -mtune=generic -march=x86-64 -g
# -fverbose-asm -fno-strict-aliasing -fstack-protector -Wformat
# -Wformat-security
# options enabled:  -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg -fcommon
# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -ffunction-cse -fgcse-lm -fgnu-runtime
# -fident -finline-atomics -fira-hoist-pressure -fira-share-save-slots
# -fira-share-spill-slots -fivopts -fkeep-static-consts
# -fleading-underscore -fmath-errno -fmerge-debug-strings
# -fmove-loop-invariants -fpeephole -fprefetch-loop-arrays
# -freg-struct-return -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fshow-column
# -fsigned-zeros -fsplit-ivs-in-unroller -fstack-protector
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
# -ftree-coalesce-vars -ftree-cselim -ftree-forwprop -ftree-loop-if-convert
# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
# -ftree-parallelize-loops= -ftree-phiprop -ftree-pta -ftree-reassoc
# -ftree-scev-cprop -ftree-slp-vectorize -ftree-vect-loop-version
# -funit-at-a-time -funwind-tables -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -maccumulate-outgoing-args
# -malign-stringops -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc
# -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse
# -msse2 -mtls-direct-seg-refs

	.text
.Ltext0:
	.local	RefreshPattern
	.comm	RefreshPattern,8,8
	.local	IntraMBs
	.comm	IntraMBs,8,8
	.local	WalkAround
	.comm	WalkAround,4,4
	.local	NumberOfMBs
	.comm	NumberOfMBs,4,4
	.local	NumberIntraPerPicture
	.comm	NumberIntraPerPicture,4,4
	.section	.rodata
	.align 8
.LC0:
	.string	"RandomIntraInit: RefreshPattern"
.LC1:
	.string	"RandomIntraInit: IntraMBs"
	.text
	.globl	RandomIntraInit
	.type	RandomIntraInit, @function
RandomIntraInit:
.LFB2:
	.file 1 "intrarefresh.c"
	.loc 1 44 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# xsize, xsize
	movl	%esi, -24(%rbp)	# ysize, ysize
	movl	%edx, -28(%rbp)	# refresh, refresh
	.loc 1 48 0
	movl	$1, %edi	#,
	call	spec_srand	#
	.loc 1 52 0
	movl	-20(%rbp), %eax	# xsize, tmp90
	imull	-24(%rbp), %eax	# ysize, NumberOfMBs.0
	movl	%eax, NumberOfMBs(%rip)	# NumberOfMBs.0, NumberOfMBs
	.loc 1 53 0
	movl	-28(%rbp), %eax	# refresh, tmp91
	movl	%eax, NumberIntraPerPicture(%rip)	# tmp91, NumberIntraPerPicture
	.loc 1 56 0
	movl	NumberOfMBs(%rip), %eax	# NumberOfMBs, NumberOfMBs.1
	addl	$1, %eax	#, D.4170
	cltq
	salq	$2, %rax	#, D.4171
	movq	%rax, %rdi	# D.4171,
	call	malloc	#
	movq	%rax, RefreshPattern(%rip)	# RefreshPattern.2, RefreshPattern
	.loc 1 60 0
	movq	RefreshPattern(%rip), %rax	# RefreshPattern, RefreshPattern.3
	testq	%rax, %rax	# RefreshPattern.3
	jne	.L2	#,
	.loc 1 60 0 is_stmt 0 discriminator 1
	movl	$.LC0, %edi	#,
	call	no_mem_exit	#
.L2:
	.loc 1 63 0 is_stmt 1
	movl	-28(%rbp), %eax	# refresh, tmp93
	addl	$1, %eax	#, D.4170
	cltq
	salq	$2, %rax	#, D.4171
	movq	%rax, %rdi	# D.4171,
	call	malloc	#
	movq	%rax, IntraMBs(%rip)	# IntraMBs.4, IntraMBs
	.loc 1 67 0
	movq	IntraMBs(%rip), %rax	# IntraMBs, IntraMBs.5
	testq	%rax, %rax	# IntraMBs.5
	jne	.L3	#,
	.loc 1 67 0 is_stmt 0 discriminator 1
	movl	$.LC1, %edi	#,
	call	no_mem_exit	#
.L3:
	.loc 1 69 0 is_stmt 1
	movl	$0, -8(%rbp)	#, i
	jmp	.L4	#
.L5:
	.loc 1 70 0 discriminator 2
	movq	RefreshPattern(%rip), %rax	# RefreshPattern, RefreshPattern.6
	movl	-8(%rbp), %edx	# i, tmp95
	movslq	%edx, %rdx	# tmp95, D.4171
	salq	$2, %rdx	#, D.4171
	addq	%rdx, %rax	# D.4171, D.4172
	movl	$-1, (%rax)	#, *_23
	.loc 1 69 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L4:
	.loc 1 69 0 is_stmt 0 discriminator 1
	movl	NumberOfMBs(%rip), %eax	# NumberOfMBs, NumberOfMBs.7
	cmpl	%eax, -8(%rbp)	# NumberOfMBs.7, i
	jl	.L5	#,
	.loc 1 72 0 is_stmt 1
	movl	$0, -8(%rbp)	#, i
	jmp	.L6	#
.L7:
	.loc 1 77 0 discriminator 1
	call	spec_rand	#
	movsd	.LC2(%rip), %xmm1	#, tmp96
	mulsd	%xmm1, %xmm0	# tmp96, D.4173
	cvttsd2si	%xmm0, %eax	# D.4173, D.4170
	movl	NumberOfMBs(%rip), %ecx	# NumberOfMBs, NumberOfMBs.8
	cltd
	idivl	%ecx	# NumberOfMBs.8
	movl	%edx, -4(%rbp)	# tmp97, pos
	.loc 1 81 0 discriminator 1
	movq	RefreshPattern(%rip), %rax	# RefreshPattern, RefreshPattern.9
	movl	-4(%rbp), %edx	# pos, tmp99
	movslq	%edx, %rdx	# tmp99, D.4171
	salq	$2, %rdx	#, D.4171
	addq	%rdx, %rax	# D.4171, D.4172
	movl	(%rax), %eax	# *_35, D.4170
	cmpl	$-1, %eax	#, D.4170
	jne	.L7	#,
	.loc 1 82 0
	movq	RefreshPattern(%rip), %rax	# RefreshPattern, RefreshPattern.10
	movl	-4(%rbp), %edx	# pos, tmp100
	movslq	%edx, %rdx	# tmp100, D.4171
	salq	$2, %rdx	#, D.4171
	addq	%rax, %rdx	# RefreshPattern.10, D.4172
	movl	-8(%rbp), %eax	# i, tmp101
	movl	%eax, (%rdx)	# tmp101, *_40
	.loc 1 72 0
	addl	$1, -8(%rbp)	#, i
.L6:
	.loc 1 72 0 is_stmt 0 discriminator 1
	movl	NumberOfMBs(%rip), %eax	# NumberOfMBs, NumberOfMBs.11
	cmpl	%eax, -8(%rbp)	# NumberOfMBs.11, i
	jl	.L7	#,
	.loc 1 88 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	RandomIntraInit, .-RandomIntraInit
	.globl	RandomIntra
	.type	RandomIntra, @function
RandomIntra:
.LFB3:
	.loc 1 106 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# mb, mb
	.loc 1 109 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L9	#
.L12:
	.loc 1 110 0
	movq	IntraMBs(%rip), %rax	# IntraMBs, IntraMBs.12
	movl	-4(%rbp), %edx	# i, tmp67
	movslq	%edx, %rdx	# tmp67, D.4177
	salq	$2, %rdx	#, D.4177
	addq	%rdx, %rax	# D.4177, D.4178
	movl	(%rax), %eax	# *_8, D.4176
	cmpl	-20(%rbp), %eax	# mb, D.4176
	jne	.L10	#,
	.loc 1 111 0
	movl	$1, %eax	#, D.4176
	jmp	.L11	#
.L10:
	.loc 1 109 0
	addl	$1, -4(%rbp)	#, i
.L9:
	.loc 1 109 0 is_stmt 0 discriminator 1
	movl	NumberIntraPerPicture(%rip), %eax	# NumberIntraPerPicture, NumberIntraPerPicture.13
	cmpl	%eax, -4(%rbp)	# NumberIntraPerPicture.13, i
	jl	.L12	#,
	.loc 1 112 0 is_stmt 1
	movl	$0, %eax	#, D.4176
.L11:
	.loc 1 113 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	RandomIntra, .-RandomIntra
	.globl	RandomIntraNewPicture
	.type	RandomIntraNewPicture, @function
RandomIntraNewPicture:
.LFB4:
	.loc 1 129 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 132 0
	movl	WalkAround(%rip), %edx	# WalkAround, WalkAround.14
	movl	NumberIntraPerPicture(%rip), %eax	# NumberIntraPerPicture, NumberIntraPerPicture.15
	addl	%edx, %eax	# WalkAround.14, WalkAround.16
	movl	%eax, WalkAround(%rip)	# WalkAround.16, WalkAround
	.loc 1 133 0
	movl	$0, -4(%rbp)	#, j
	movl	WalkAround(%rip), %eax	# WalkAround, tmp74
	movl	%eax, -8(%rbp)	# tmp74, i
	jmp	.L14	#
.L15:
	.loc 1 134 0 discriminator 2
	movq	IntraMBs(%rip), %rax	# IntraMBs, IntraMBs.17
	movl	-4(%rbp), %edx	# j, tmp75
	movslq	%edx, %rdx	# tmp75, D.4179
	salq	$2, %rdx	#, D.4179
	leaq	(%rax,%rdx), %rcx	#, D.4180
	movq	RefreshPattern(%rip), %rsi	# RefreshPattern, RefreshPattern.18
	movl	NumberOfMBs(%rip), %edi	# NumberOfMBs, NumberOfMBs.19
	movl	-8(%rbp), %eax	# i, tmp76
	cltd
	idivl	%edi	# NumberOfMBs.19
	movl	%edx, %eax	# tmp77, D.4181
	cltq
	salq	$2, %rax	#, D.4179
	addq	%rsi, %rax	# RefreshPattern.18, D.4180
	movl	(%rax), %eax	# *_18, D.4181
	movl	%eax, (%rcx)	# D.4181, *_12
	.loc 1 133 0 discriminator 2
	addl	$1, -4(%rbp)	#, j
	addl	$1, -8(%rbp)	#, i
.L14:
	.loc 1 133 0 is_stmt 0 discriminator 1
	movl	NumberIntraPerPicture(%rip), %eax	# NumberIntraPerPicture, NumberIntraPerPicture.20
	cmpl	%eax, -4(%rbp)	# NumberIntraPerPicture.20, j
	jl	.L15	#,
	.loc 1 135 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	RandomIntraNewPicture, .-RandomIntraNewPicture
	.globl	RandomIntraUninit
	.type	RandomIntraUninit, @function
RandomIntraUninit:
.LFB5:
	.loc 1 138 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 139 0
	movq	RefreshPattern(%rip), %rax	# RefreshPattern, RefreshPattern.21
	movq	%rax, %rdi	# RefreshPattern.21,
	call	free	#
	.loc 1 140 0
	movq	IntraMBs(%rip), %rax	# IntraMBs, IntraMBs.22
	movq	%rax, %rdi	# IntraMBs.22,
	call	free	#
	.loc 1 141 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	RandomIntraUninit, .-RandomIntraUninit
	.section	.rodata
	.align 8
.LC2:
	.long	4290772992
	.long	1105199103
	.text
.Letext0:
	.file 2 "global.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x226
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF30
	.byte	0x1
	.long	.LASF31
	.long	.LASF32
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x4
	.byte	0x8
	.long	0x34
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.byte	0x9b
	.long	0xc6
	.uleb128 0x6
	.long	.LASF11
	.sleb128 0
	.uleb128 0x6
	.long	.LASF12
	.sleb128 1
	.uleb128 0x6
	.long	.LASF13
	.sleb128 2
	.uleb128 0x6
	.long	.LASF14
	.sleb128 3
	.uleb128 0x6
	.long	.LASF15
	.sleb128 4
	.uleb128 0x6
	.long	.LASF16
	.sleb128 5
	.uleb128 0x6
	.long	.LASF17
	.sleb128 6
	.uleb128 0x6
	.long	.LASF18
	.sleb128 7
	.uleb128 0x6
	.long	.LASF19
	.sleb128 8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF20
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF21
	.uleb128 0x7
	.long	.LASF33
	.byte	0x1
	.byte	0x2b
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x136
	.uleb128 0x8
	.long	.LASF22
	.byte	0x1
	.byte	0x2b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.long	.LASF23
	.byte	0x1
	.byte	0x2b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF24
	.byte	0x1
	.byte	0x2b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x2d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"pos"
	.byte	0x1
	.byte	0x2d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.long	.LASF34
	.byte	0x1
	.byte	0x69
	.long	0x34
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x171
	.uleb128 0xb
	.string	"mb"
	.byte	0x1
	.byte	0x69
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x6b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.long	.LASF35
	.byte	0x1
	.byte	0x80
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a7
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x82
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"j"
	.byte	0x1
	.byte	0x82
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.long	.LASF36
	.byte	0x1
	.byte	0x89
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.long	.LASF25
	.byte	0x1
	.byte	0x16
	.long	0x73
	.uleb128 0x9
	.byte	0x3
	.quad	RefreshPattern
	.uleb128 0xe
	.long	.LASF26
	.byte	0x1
	.byte	0x17
	.long	0x73
	.uleb128 0x9
	.byte	0x3
	.quad	IntraMBs
	.uleb128 0xe
	.long	.LASF27
	.byte	0x1
	.byte	0x18
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	WalkAround
	.uleb128 0xe
	.long	.LASF28
	.byte	0x1
	.byte	0x19
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	NumberOfMBs
	.uleb128 0xe
	.long	.LASF29
	.byte	0x1
	.byte	0x1a
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	NumberIntraPerPicture
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF11:
	.string	"BITS_HEADER"
.LASF14:
	.string	"BITS_INTER_MB"
.LASF21:
	.string	"float"
.LASF16:
	.string	"BITS_COEFF_Y_MB"
.LASF35:
	.string	"RandomIntraNewPicture"
.LASF23:
	.string	"ysize"
.LASF32:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF10:
	.string	"long long unsigned int"
.LASF27:
	.string	"WalkAround"
.LASF1:
	.string	"unsigned char"
.LASF17:
	.string	"BITS_COEFF_UV_MB"
.LASF0:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF15:
	.string	"BITS_CBP_MB"
.LASF36:
	.string	"RandomIntraUninit"
.LASF22:
	.string	"xsize"
.LASF20:
	.string	"double"
.LASF29:
	.string	"NumberIntraPerPicture"
.LASF3:
	.string	"unsigned int"
.LASF8:
	.string	"char"
.LASF13:
	.string	"BITS_MB_MODE"
.LASF18:
	.string	"BITS_DELTA_QUANT_MB"
.LASF25:
	.string	"RefreshPattern"
.LASF7:
	.string	"sizetype"
.LASF24:
	.string	"refresh"
.LASF9:
	.string	"long long int"
.LASF34:
	.string	"RandomIntra"
.LASF30:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF12:
	.string	"BITS_TOTAL_MB"
.LASF5:
	.string	"short int"
.LASF33:
	.string	"RandomIntraInit"
.LASF6:
	.string	"long int"
.LASF4:
	.string	"signed char"
.LASF28:
	.string	"NumberOfMBs"
.LASF26:
	.string	"IntraMBs"
.LASF31:
	.string	"intrarefresh.c"
.LASF19:
	.string	"MAX_BITCOUNTER_MB"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
