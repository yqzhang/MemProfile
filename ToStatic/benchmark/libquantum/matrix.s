	.file	"matrix.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX matrix.c -mtune=generic -march=x86-64
# -g -fverbose-asm -fno-strict-aliasing -fstack-protector -Wformat
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
	.type	quantum_real, @function
quantum_real:
.LFB2:
	.file 1 "lq_complex.h"
	.loc 1 39 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%xmm0, -40(%rbp)	# a, %sfp
	movq	-40(%rbp), %rax	# %sfp, tmp63
	movq	%rax, -24(%rbp)	# tmp63,
	movl	-24(%rbp), %edx	#, tmp61
	movl	-20(%rbp), %eax	#, tmp62
	movl	%edx, -32(%rbp)	# tmp61, a
	movl	%eax, -28(%rbp)	# tmp62, a
	.loc 1 40 0
	leaq	-32(%rbp), %rax	#, tmp64
	movq	%rax, -8(%rbp)	# tmp64, p
	.loc 1 41 0
	movq	-8(%rbp), %rax	# p, tmp65
	movl	(%rax), %eax	# *p_1, D.3076
	.loc 1 42 0
	movl	%eax, -40(%rbp)	# <retval>, %sfp
	movss	-40(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	quantum_real, .-quantum_real
	.type	quantum_imag, @function
quantum_imag:
.LFB3:
	.loc 1 48 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%xmm0, -40(%rbp)	# a, %sfp
	movq	-40(%rbp), %rax	# %sfp, tmp63
	movq	%rax, -24(%rbp)	# tmp63,
	movl	-24(%rbp), %edx	#, tmp61
	movl	-20(%rbp), %eax	#, tmp62
	movl	%edx, -32(%rbp)	# tmp61, a
	movl	%eax, -28(%rbp)	# tmp62, a
	.loc 1 49 0
	leaq	-32(%rbp), %rax	#, tmp64
	movq	%rax, -8(%rbp)	# tmp64, p
	.loc 1 50 0
	movq	-8(%rbp), %rax	# p, tmp65
	movl	4(%rax), %eax	# MEM[(float *)p_1 + 4B], D.3078
	.loc 1 51 0
	movl	%eax, -40(%rbp)	# <retval>, %sfp
	movss	-40(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	quantum_imag, .-quantum_imag
	.globl	quantum_memman
	.type	quantum_memman, @function
quantum_memman:
.LFB5:
	.file 2 "matrix.c"
	.loc 2 34 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# change, change
	.loc 2 37 0
	movq	mem.2983(%rip), %rdx	# mem, mem.0
	movq	-8(%rbp), %rax	# change, tmp67
	addq	%rdx, %rax	# mem.0, mem.1
	movq	%rax, mem.2983(%rip)	# mem.1, mem
	.loc 2 39 0
	movq	mem.2983(%rip), %rdx	# mem, mem.2
	movq	max.2984(%rip), %rax	# max, max.3
	cmpq	%rax, %rdx	# max.3, mem.2
	jle	.L6	#,
	.loc 2 40 0
	movq	mem.2983(%rip), %rax	# mem, mem.4
	movq	%rax, max.2984(%rip)	# mem.4, max
.L6:
	.loc 2 42 0
	movq	mem.2983(%rip), %rax	# mem, mem.5
	.loc 2 43 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	quantum_memman, .-quantum_memman
	.section	.rodata
	.align 8
.LC0:
	.string	"Not enogh memory for %ix%i-Matrix!"
	.text
	.globl	quantum_new_matrix
	.type	quantum_new_matrix, @function
quantum_new_matrix:
.LFB6:
	.loc 2 49 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# cols, cols
	movl	%esi, -24(%rbp)	# rows, rows
	.loc 2 52 0
	movl	-24(%rbp), %eax	# rows, tmp70
	movl	%eax, -16(%rbp)	# tmp70, m.rows
	.loc 2 53 0
	movl	-20(%rbp), %eax	# cols, tmp71
	movl	%eax, -12(%rbp)	# tmp71, m.cols
	.loc 2 54 0
	movl	-20(%rbp), %eax	# cols, tmp72
	imull	-24(%rbp), %eax	# rows, D.3080
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.3081,
	call	calloc	#
	movq	%rax, -8(%rbp)	# D.3082, m.t
	.loc 2 61 0
	movq	-8(%rbp), %rax	# m.t, D.3083
	testq	%rax, %rax	# D.3083
	jne	.L9	#,
	.loc 2 63 0
	movl	-20(%rbp), %edx	# cols, tmp74
	movl	-24(%rbp), %eax	# rows, tmp75
	movl	%eax, %esi	# tmp75,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 2 64 0
	movl	$1, %edi	#,
	call	exit	#
.L9:
	.loc 2 66 0
	movl	-20(%rbp), %eax	# cols, tmp76
	movslq	%eax, %rdx	# tmp76, D.3081
	movl	-24(%rbp), %eax	# rows, tmp77
	cltq
	imulq	%rdx, %rax	# D.3081, D.3081
	salq	$3, %rax	#, D.3081
	movq	%rax, %rdi	# D.3084,
	call	quantum_memman	#
	.loc 2 68 0
	movq	-16(%rbp), %rax	# m, D.3030
	movq	-8(%rbp), %rdx	# m, D.3030
	.loc 2 69 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	quantum_new_matrix, .-quantum_new_matrix
	.globl	quantum_delete_matrix
	.type	quantum_delete_matrix, @function
quantum_delete_matrix:
.LFB7:
	.loc 2 75 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# m, m
	.loc 2 82 0
	movq	-8(%rbp), %rax	# m, tmp67
	movq	8(%rax), %rax	# m_1(D)->t, D.3086
	movq	%rax, %rdi	# D.3086,
	call	free	#
	.loc 2 83 0
	movq	-8(%rbp), %rax	# m, tmp68
	movl	4(%rax), %eax	# m_1(D)->cols, D.3087
	movslq	%eax, %rdx	# D.3087, D.3088
	movq	-8(%rbp), %rax	# m, tmp69
	movl	(%rax), %eax	# m_1(D)->rows, D.3087
	cltq
	imulq	%rax, %rdx	# D.3088, D.3088
	movl	$0, %eax	#, tmp70
	subq	%rdx, %rax	# D.3088, tmp70
	salq	$3, %rax	#, tmp71
	movq	%rax, %rdi	# D.3089,
	call	quantum_memman	#
	.loc 2 84 0
	movq	-8(%rbp), %rax	# m, tmp72
	movq	$0, 8(%rax)	#, m_1(D)->t
	.loc 2 85 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	quantum_delete_matrix, .-quantum_delete_matrix
	.section	.rodata
.LC1:
	.string	"% f %+fi\t"
	.text
	.globl	quantum_print_matrix
	.type	quantum_print_matrix, @function
quantum_print_matrix:
.LFB8:
	.loc 2 91 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, %rax	# m, tmp87
	movq	%rsi, %rcx	# m, tmp88
	movq	%rcx, %rdx	# tmp88,
	movq	%rax, -32(%rbp)	# tmp86, m
	movq	%rdx, -24(%rbp)	#, m
	.loc 2 92 0
	movl	$0, -4(%rbp)	#, z
	.loc 2 95 0
	nop
.L13:
	.loc 2 95 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# z, z.6
	leal	1(%rax), %edx	#, tmp89
	movl	%edx, -4(%rbp)	# tmp89, z
	movl	$1, %edx	#, tmp90
	movl	%eax, %ecx	# z.6, tmp99
	sall	%cl, %edx	# tmp99, D.3090
	movl	-32(%rbp), %eax	# m.rows, D.3090
	cmpl	%eax, %edx	# D.3090, D.3090
	jl	.L13	#,
	.loc 2 96 0 is_stmt 1
	subl	$1, -4(%rbp)	#, z
	.loc 2 98 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L14	#
.L17:
	.loc 2 107 0
	movl	$0, -8(%rbp)	#, j
	jmp	.L15	#
.L16:
	.loc 2 109 0 discriminator 2
	movq	-24(%rbp), %rdx	# m.t, D.3091
	movl	-28(%rbp), %eax	# m.cols, D.3090
	imull	-12(%rbp), %eax	# i, D.3090
	movl	%eax, %ecx	# D.3090, D.3090
	movl	-8(%rbp), %eax	# j, tmp91
	addl	%ecx, %eax	# D.3090, D.3090
	cltq
	salq	$3, %rax	#, D.3092
	addq	%rdx, %rax	# D.3091, D.3091
	movl	(%rax), %edx	# *_20, D.3093
	movl	4(%rax), %eax	# *_20, D.3093
	movl	%edx, -40(%rbp)	# tmp92,
	movl	%eax, -36(%rbp)	# tmp93,
	movq	-40(%rbp), %rax	#, tmp94
	movq	%rax, -56(%rbp)	# tmp94, %sfp
	movq	-56(%rbp), %xmm0	# %sfp,
	call	quantum_imag	#
	.loc 2 108 0 discriminator 2
	unpcklps	%xmm0, %xmm0	# D.3094, D.3094
	cvtps2pd	%xmm0, %xmm2	# D.3094, D.3095
	movsd	%xmm2, -56(%rbp)	# D.3095, %sfp
	movq	-24(%rbp), %rdx	# m.t, D.3091
	movl	-28(%rbp), %eax	# m.cols, D.3090
	imull	-12(%rbp), %eax	# i, D.3090
	movl	%eax, %ecx	# D.3090, D.3090
	movl	-8(%rbp), %eax	# j, tmp95
	addl	%ecx, %eax	# D.3090, D.3090
	cltq
	salq	$3, %rax	#, D.3092
	addq	%rdx, %rax	# D.3091, D.3091
	movl	(%rax), %edx	# *_30, D.3093
	movl	4(%rax), %eax	# *_30, D.3093
	movl	%edx, -48(%rbp)	# tmp96,
	movl	%eax, -44(%rbp)	# tmp97,
	movq	-48(%rbp), %rax	#, tmp98
	movq	%rax, -64(%rbp)	# tmp98, %sfp
	movq	-64(%rbp), %xmm0	# %sfp,
	call	quantum_real	#
	unpcklps	%xmm0, %xmm0	# D.3094, D.3094
	cvtps2pd	%xmm0, %xmm0	# D.3094, D.3095
	movsd	-56(%rbp), %xmm1	# %sfp,
	movl	$.LC1, %edi	#,
	movl	$2, %eax	#,
	call	printf	#
	.loc 2 107 0 discriminator 2
	addl	$1, -8(%rbp)	#, j
.L15:
	.loc 2 107 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# m.cols, D.3090
	cmpl	-8(%rbp), %eax	# j, D.3090
	jg	.L16	#,
	.loc 2 110 0 is_stmt 1
	movl	$10, %edi	#,
	call	putchar	#
	.loc 2 98 0
	addl	$1, -12(%rbp)	#, i
.L14:
	.loc 2 98 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# m.rows, D.3090
	cmpl	-12(%rbp), %eax	# i, D.3090
	jg	.L17	#,
	.loc 2 112 0 is_stmt 1
	movl	$10, %edi	#,
	call	putchar	#
	.loc 2 113 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	quantum_print_matrix, .-quantum_print_matrix
	.local	mem.2983
	.comm	mem.2983,8,8
	.local	max.2984
	.comm	max.2984,8,8
.Letext0:
	.file 3 "matrix.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x264
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF20
	.byte	0x1
	.long	.LASF21
	.long	.LASF22
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.long	.LASF23
	.byte	0x10
	.byte	0x3
	.byte	0x20
	.long	0xb0
	.uleb128 0x5
	.long	.LASF11
	.byte	0x3
	.byte	0x21
	.long	0x34
	.byte	0
	.uleb128 0x5
	.long	.LASF12
	.byte	0x3
	.byte	0x22
	.long	0x34
	.byte	0x4
	.uleb128 0x6
	.string	"t"
	.byte	0x3
	.byte	0x23
	.long	0xb0
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb6
	.uleb128 0x2
	.byte	0x8
	.byte	0x3
	.long	.LASF13
	.uleb128 0x8
	.long	.LASF24
	.byte	0x3
	.byte	0x26
	.long	0x81
	.uleb128 0x9
	.long	.LASF15
	.byte	0x1
	.byte	0x26
	.long	0x102
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x102
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x26
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"p"
	.byte	0x1
	.byte	0x28
	.long	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF14
	.uleb128 0x7
	.byte	0x8
	.long	0x102
	.uleb128 0x9
	.long	.LASF16
	.byte	0x1
	.byte	0x2f
	.long	0x102
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x149
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x2f
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"p"
	.byte	0x1
	.byte	0x31
	.long	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	.LASF18
	.byte	0x2
	.byte	0x21
	.long	0x2d
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a3
	.uleb128 0xd
	.long	.LASF17
	.byte	0x2
	.byte	0x21
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"mem"
	.byte	0x2
	.byte	0x23
	.long	0x5e
	.uleb128 0x9
	.byte	0x3
	.quad	mem.2983
	.uleb128 0xb
	.string	"max"
	.byte	0x2
	.byte	0x23
	.long	0x5e
	.uleb128 0x9
	.byte	0x3
	.quad	max.2984
	.byte	0
	.uleb128 0xe
	.long	.LASF19
	.byte	0x2
	.byte	0x30
	.long	0xbd
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ed
	.uleb128 0xd
	.long	.LASF12
	.byte	0x2
	.byte	0x30
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.long	.LASF11
	.byte	0x2
	.byte	0x30
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"m"
	.byte	0x2
	.byte	0x32
	.long	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xf
	.long	.LASF25
	.byte	0x2
	.byte	0x4a
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x217
	.uleb128 0xa
	.string	"m"
	.byte	0x2
	.byte	0x4a
	.long	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xbd
	.uleb128 0x10
	.long	.LASF26
	.byte	0x2
	.byte	0x5a
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.string	"m"
	.byte	0x2
	.byte	0x5a
	.long	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"i"
	.byte	0x2
	.byte	0x5c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.string	"j"
	.byte	0x2
	.byte	0x5c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"z"
	.byte	0x2
	.byte	0x5c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
.LASF25:
	.string	"quantum_delete_matrix"
.LASF18:
	.string	"quantum_memman"
.LASF23:
	.string	"quantum_matrix_struct"
.LASF14:
	.string	"float"
.LASF22:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/462.libquantum/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF1:
	.string	"unsigned char"
.LASF2:
	.string	"short unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF16:
	.string	"quantum_imag"
.LASF5:
	.string	"short int"
.LASF3:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF24:
	.string	"quantum_matrix"
.LASF13:
	.string	"complex float"
.LASF17:
	.string	"change"
.LASF26:
	.string	"quantum_print_matrix"
.LASF11:
	.string	"rows"
.LASF7:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF8:
	.string	"char"
.LASF20:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF19:
	.string	"quantum_new_matrix"
.LASF15:
	.string	"quantum_real"
.LASF12:
	.string	"cols"
.LASF6:
	.string	"long int"
.LASF21:
	.string	"matrix.c"
.LASF4:
	.string	"signed char"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
