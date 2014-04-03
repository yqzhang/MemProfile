	.file	"rephase.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# rephase.c -mtune=generic -march=x86-64 -g -fverbose-asm
# -fno-strict-aliasing -fstack-protector -Wformat -Wformat-security
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
	.globl	phaseset
	.type	phaseset, @function
phaseset:
.LFB2:
	.file 1 "rephase.c"
	.loc 1 8 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 1 15 0
	movl	$0, %r12d	#, i
	movq	lattice(%rip), %rbx	# lattice, sit
	jmp	.L2	#
.L10:
	.loc 1 16 0
	movabsq	$4607182418800017408, %rax	#, tmp80
	movq	%rax, 1032(%rbx)	# tmp80, sit_1->phase
	.loc 1 17 0
	movzwl	6(%rbx), %eax	# sit_1->t, D.5014
	movl	%eax, %edx	# D.5014, tmp81
	sarw	$15, %dx	#, tmp81
	shrw	$15, %dx	#, tmp82
	addl	%edx, %eax	# tmp82, tmp83
	andl	$1, %eax	#, tmp84
	subl	%edx, %eax	# tmp82, tmp85
	cmpw	$1, %ax	#, D.5014
	jne	.L3	#,
	.loc 1 17 0 is_stmt 0 discriminator 1
	movabsq	$-4616189618054758400, %rax	#, tmp86
	movq	%rax, 1008(%rbx)	# tmp86, sit_1->phase
	jmp	.L4	#
.L3:
	.loc 1 18 0 is_stmt 1
	movabsq	$4607182418800017408, %rax	#, tmp87
	movq	%rax, 1008(%rbx)	# tmp87, sit_1->phase
.L4:
	.loc 1 19 0
	movzwl	(%rbx), %eax	# sit_1->x, D.5014
	movl	%eax, %edx	# D.5014, tmp88
	sarw	$15, %dx	#, tmp88
	shrw	$15, %dx	#, tmp89
	addl	%edx, %eax	# tmp89, tmp90
	andl	$1, %eax	#, tmp91
	subl	%edx, %eax	# tmp89, tmp92
	cmpw	$1, %ax	#, D.5014
	jne	.L5	#,
	.loc 1 19 0 is_stmt 0 discriminator 1
	movsd	1008(%rbx), %xmm1	# sit_1->phase, D.5015
	movsd	.LC2(%rip), %xmm0	#, tmp93
	xorpd	%xmm1, %xmm0	# D.5015, D.5015
	movsd	%xmm0, 1016(%rbx)	# D.5015, sit_1->phase
	jmp	.L6	#
.L5:
	.loc 1 20 0 is_stmt 1
	movq	1008(%rbx), %rax	# sit_1->phase, D.5015
	movq	%rax, 1016(%rbx)	# D.5015, sit_1->phase
.L6:
	.loc 1 21 0
	movzwl	2(%rbx), %eax	# sit_1->y, D.5014
	movl	%eax, %edx	# D.5014, tmp94
	sarw	$15, %dx	#, tmp94
	shrw	$15, %dx	#, tmp95
	addl	%edx, %eax	# tmp95, tmp96
	andl	$1, %eax	#, tmp97
	subl	%edx, %eax	# tmp95, tmp98
	cmpw	$1, %ax	#, D.5014
	jne	.L7	#,
	.loc 1 21 0 is_stmt 0 discriminator 1
	movsd	1016(%rbx), %xmm1	# sit_1->phase, D.5015
	movsd	.LC2(%rip), %xmm0	#, tmp99
	xorpd	%xmm1, %xmm0	# D.5015, D.5015
	movsd	%xmm0, 1024(%rbx)	# D.5015, sit_1->phase
	jmp	.L8	#
.L7:
	.loc 1 22 0 is_stmt 1
	movq	1016(%rbx), %rax	# sit_1->phase, D.5015
	movq	%rax, 1024(%rbx)	# D.5015, sit_1->phase
.L8:
	.loc 1 24 0
	movzwl	6(%rbx), %eax	# sit_1->t, D.5014
	cwtl
	movl	nt(%rip), %edx	# nt, nt.0
	subl	$1, %edx	#, D.5016
	cmpl	%edx, %eax	# D.5016, D.5016
	jne	.L9	#,
	.loc 1 26 0
	movsd	1032(%rbx), %xmm1	# sit_1->phase, D.5015
	movsd	.LC2(%rip), %xmm0	#, tmp100
	xorpd	%xmm1, %xmm0	# D.5015, D.5015
	movsd	%xmm0, 1032(%rbx)	# D.5015, sit_1->phase
.L9:
	.loc 1 15 0
	addl	$1, %r12d	#, i
	addq	$2048, %rbx	#, sit
.L2:
	.loc 1 15 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.1
	cmpl	%eax, %r12d	# sites_on_node.1, i
	jl	.L10	#,
	.loc 1 29 0 is_stmt 1
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	phaseset, .-phaseset
	.section	.rodata
	.align 8
.LC3:
	.string	"DUMMY: you fouled up the phases"
	.text
	.globl	rephase
	.type	rephase, @function
rephase:
.LFB3:
	.loc 1 34 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -52(%rbp)	# flag, flag
	.loc 1 38 0
	cmpl	$1, -52(%rbp)	#, flag
	jne	.L12	#,
	.loc 1 38 0 is_stmt 0 discriminator 2
	movl	phases_in(%rip), %eax	# phases_in, phases_in.2
	testl	%eax, %eax	# phases_in.2
	je	.L13	#,
.L12:
	.loc 1 38 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, flag
	jne	.L14	#,
	movl	phases_in(%rip), %eax	# phases_in, phases_in.3
	cmpl	$1, %eax	#, phases_in.3
	je	.L13	#,
.L14:
	.loc 1 39 0 is_stmt 1
	movl	this_node(%rip), %eax	# this_node, this_node.4
	testl	%eax, %eax	# this_node.4
	jne	.L15	#,
	.loc 1 39 0 is_stmt 0 discriminator 1
	movl	$.LC3, %edi	#,
	call	puts	#
.L15:
	.loc 1 40 0 is_stmt 1
	movl	$1, %edi	#,
	call	terminate	#
.L13:
	.loc 1 42 0
	movl	$0, %r15d	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L16	#
.L23:
	.loc 1 43 0
	movl	$0, %ebx	#, dir
	jmp	.L17	#
.L22:
	.loc 1 44 0
	movl	$0, %r13d	#, j
	jmp	.L18	#
.L21:
	.loc 1 44 0 is_stmt 0 discriminator 2
	movl	$0, %r14d	#, k
	jmp	.L19	#
.L20:
	.loc 1 45 0 is_stmt 1 discriminator 2
	movslq	%r14d, %rsi	# k, tmp74
	movslq	%ebx, %rax	# dir, tmp75
	movslq	%r13d, %rcx	# j, tmp76
	movq	%rax, %rdx	# tmp75, tmp77
	salq	$3, %rdx	#, tmp77
	addq	%rax, %rdx	# tmp75, tmp77
	movq	%rcx, %rax	# tmp76, tmp78
	addq	%rax, %rax	# tmp78
	addq	%rcx, %rax	# tmp76, tmp78
	addq	%rdx, %rax	# tmp77, tmp79
	addq	%rsi, %rax	# tmp74, tmp80
	addq	$7, %rax	#, tmp81
	salq	$4, %rax	#, tmp82
	addq	%r12, %rax	# s, tmp83
	movsd	(%rax), %xmm1	# s_5->link[dir_4].e[j_2][k_3].real, D.5017
	movslq	%ebx, %rax	# dir, tmp84
	addq	$126, %rax	#, tmp85
	movsd	(%r12,%rax,8), %xmm0	# s_5->phase, D.5017
	mulsd	%xmm1, %xmm0	# D.5017, D.5017
	movslq	%r14d, %rsi	# k, tmp86
	movslq	%ebx, %rax	# dir, tmp87
	movslq	%r13d, %rcx	# j, tmp88
	movq	%rax, %rdx	# tmp87, tmp89
	salq	$3, %rdx	#, tmp89
	addq	%rax, %rdx	# tmp87, tmp89
	movq	%rcx, %rax	# tmp88, tmp90
	addq	%rax, %rax	# tmp90
	addq	%rcx, %rax	# tmp88, tmp90
	addq	%rdx, %rax	# tmp89, tmp91
	addq	%rsi, %rax	# tmp86, tmp92
	addq	$7, %rax	#, tmp93
	salq	$4, %rax	#, tmp94
	addq	%r12, %rax	# s, tmp95
	movsd	%xmm0, (%rax)	# D.5017, s_5->link[dir_4].e[j_2][k_3].real
	.loc 1 46 0 discriminator 2
	movslq	%r14d, %rsi	# k, tmp96
	movslq	%ebx, %rax	# dir, tmp97
	movslq	%r13d, %rcx	# j, tmp98
	movq	%rax, %rdx	# tmp97, tmp99
	salq	$3, %rdx	#, tmp99
	addq	%rax, %rdx	# tmp97, tmp99
	movq	%rcx, %rax	# tmp98, tmp100
	addq	%rax, %rax	# tmp100
	addq	%rcx, %rax	# tmp98, tmp100
	addq	%rdx, %rax	# tmp99, tmp101
	addq	%rsi, %rax	# tmp96, tmp102
	addq	$7, %rax	#, tmp103
	salq	$4, %rax	#, tmp104
	addq	%r12, %rax	# s, tmp105
	addq	$8, %rax	#, tmp106
	movsd	(%rax), %xmm1	# s_5->link[dir_4].e[j_2][k_3].imag, D.5017
	movslq	%ebx, %rax	# dir, tmp107
	addq	$126, %rax	#, tmp108
	movsd	(%r12,%rax,8), %xmm0	# s_5->phase, D.5017
	mulsd	%xmm1, %xmm0	# D.5017, D.5017
	movslq	%r14d, %rsi	# k, tmp109
	movslq	%ebx, %rax	# dir, tmp110
	movslq	%r13d, %rcx	# j, tmp111
	movq	%rax, %rdx	# tmp110, tmp112
	salq	$3, %rdx	#, tmp112
	addq	%rax, %rdx	# tmp110, tmp112
	movq	%rcx, %rax	# tmp111, tmp113
	addq	%rax, %rax	# tmp113
	addq	%rcx, %rax	# tmp111, tmp113
	addq	%rdx, %rax	# tmp112, tmp114
	addq	%rsi, %rax	# tmp109, tmp115
	addq	$7, %rax	#, tmp116
	salq	$4, %rax	#, tmp117
	addq	%r12, %rax	# s, tmp118
	addq	$8, %rax	#, tmp119
	movsd	%xmm0, (%rax)	# D.5017, s_5->link[dir_4].e[j_2][k_3].imag
	.loc 1 44 0 discriminator 2
	addl	$1, %r14d	#, k
.L19:
	.loc 1 44 0 is_stmt 0 discriminator 1
	cmpl	$2, %r14d	#, k
	jle	.L20	#,
	.loc 1 44 0 discriminator 3
	addl	$1, %r13d	#, j
.L18:
	.loc 1 44 0 discriminator 1
	cmpl	$2, %r13d	#, j
	jle	.L21	#,
	.loc 1 43 0 is_stmt 1
	addl	$1, %ebx	#, dir
.L17:
	.loc 1 43 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L22	#,
	.loc 1 42 0 is_stmt 1
	addl	$1, %r15d	#, i
	addq	$2048, %r12	#, s
.L16:
	.loc 1 42 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.5
	cmpl	%eax, %r15d	# sites_on_node.5, i
	jl	.L23	#,
	.loc 1 50 0 is_stmt 1
	movl	-52(%rbp), %eax	# flag, tmp120
	movl	%eax, phases_in(%rip)	# tmp120, phases_in
	.loc 1 51 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	rephase, .-rephase
	.section	.rodata
	.align 16
.LC2:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.text
.Letext0:
	.file 2 "random.h"
	.file 3 "./complex.h"
	.file 4 "./su3.h"
	.file 5 "./lattice.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x44d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF47
	.byte	0x1
	.long	.LASF48
	.long	.LASF49
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF12
	.uleb128 0x4
	.byte	0x58
	.byte	0x2
	.byte	0x6
	.long	0x115
	.uleb128 0x5
	.string	"r0"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0
	.uleb128 0x5
	.string	"r1"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x8
	.uleb128 0x5
	.string	"r2"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x10
	.uleb128 0x5
	.string	"r3"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x18
	.uleb128 0x5
	.string	"r4"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x20
	.uleb128 0x5
	.string	"r5"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x28
	.uleb128 0x5
	.string	"r6"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x30
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.byte	0x9
	.long	0x2d
	.byte	0x38
	.uleb128 0x6
	.long	.LASF14
	.byte	0x2
	.byte	0x9
	.long	0x2d
	.byte	0x40
	.uleb128 0x6
	.long	.LASF15
	.byte	0x2
	.byte	0x9
	.long	0x2d
	.byte	0x48
	.uleb128 0x6
	.long	.LASF16
	.byte	0x2
	.byte	0xa
	.long	0x88
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.long	.LASF19
	.byte	0x2
	.byte	0xb
	.long	0x8f
	.uleb128 0x4
	.byte	0x10
	.byte	0x3
	.byte	0x49
	.long	0x141
	.uleb128 0x6
	.long	.LASF17
	.byte	0x3
	.byte	0x4a
	.long	0x88
	.byte	0
	.uleb128 0x6
	.long	.LASF18
	.byte	0x3
	.byte	0x4b
	.long	0x88
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF20
	.byte	0x3
	.byte	0x4c
	.long	0x120
	.uleb128 0x4
	.byte	0x90
	.byte	0x4
	.byte	0xe
	.long	0x15f
	.uleb128 0x5
	.string	"e"
	.byte	0x4
	.byte	0xe
	.long	0x15f
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x141
	.long	0x175
	.uleb128 0x9
	.long	0x65
	.byte	0x2
	.uleb128 0x9
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF21
	.byte	0x4
	.byte	0xe
	.long	0x14c
	.uleb128 0x4
	.byte	0x30
	.byte	0x4
	.byte	0xf
	.long	0x193
	.uleb128 0x5
	.string	"c"
	.byte	0x4
	.byte	0xf
	.long	0x193
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x141
	.long	0x1a3
	.uleb128 0x9
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF22
	.byte	0x4
	.byte	0xf
	.long	0x180
	.uleb128 0x4
	.byte	0x50
	.byte	0x4
	.byte	0x10
	.long	0x20b
	.uleb128 0x5
	.string	"m01"
	.byte	0x4
	.byte	0x11
	.long	0x141
	.byte	0
	.uleb128 0x5
	.string	"m02"
	.byte	0x4
	.byte	0x11
	.long	0x141
	.byte	0x10
	.uleb128 0x5
	.string	"m12"
	.byte	0x4
	.byte	0x11
	.long	0x141
	.byte	0x20
	.uleb128 0x6
	.long	.LASF23
	.byte	0x4
	.byte	0x11
	.long	0x88
	.byte	0x30
	.uleb128 0x6
	.long	.LASF24
	.byte	0x4
	.byte	0x11
	.long	0x88
	.byte	0x38
	.uleb128 0x6
	.long	.LASF25
	.byte	0x4
	.byte	0x11
	.long	0x88
	.byte	0x40
	.uleb128 0x6
	.long	.LASF26
	.byte	0x4
	.byte	0x11
	.long	0x88
	.byte	0x48
	.byte	0
	.uleb128 0x7
	.long	.LASF27
	.byte	0x4
	.byte	0x11
	.long	0x1ae
	.uleb128 0x8
	.long	0x1a3
	.long	0x226
	.uleb128 0x9
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.value	0x800
	.byte	0x5
	.byte	0x1f
	.long	0x33d
	.uleb128 0x5
	.string	"x"
	.byte	0x5
	.byte	0x22
	.long	0x50
	.byte	0
	.uleb128 0x5
	.string	"y"
	.byte	0x5
	.byte	0x22
	.long	0x50
	.byte	0x2
	.uleb128 0x5
	.string	"z"
	.byte	0x5
	.byte	0x22
	.long	0x50
	.byte	0x4
	.uleb128 0x5
	.string	"t"
	.byte	0x5
	.byte	0x22
	.long	0x50
	.byte	0x6
	.uleb128 0x6
	.long	.LASF28
	.byte	0x5
	.byte	0x24
	.long	0x6c
	.byte	0x8
	.uleb128 0x6
	.long	.LASF29
	.byte	0x5
	.byte	0x26
	.long	0x57
	.byte	0xc
	.uleb128 0x6
	.long	.LASF30
	.byte	0x5
	.byte	0x29
	.long	0x115
	.byte	0x10
	.uleb128 0x6
	.long	.LASF31
	.byte	0x5
	.byte	0x2b
	.long	0x57
	.byte	0x68
	.uleb128 0x6
	.long	.LASF32
	.byte	0x5
	.byte	0x32
	.long	0x33d
	.byte	0x70
	.uleb128 0xb
	.string	"mom"
	.byte	0x5
	.byte	0x3e
	.long	0x34d
	.value	0x2b0
	.uleb128 0xc
	.long	.LASF33
	.byte	0x5
	.byte	0x42
	.long	0x35d
	.value	0x3f0
	.uleb128 0xb
	.string	"phi"
	.byte	0x5
	.byte	0x45
	.long	0x1a3
	.value	0x410
	.uleb128 0xc
	.long	.LASF34
	.byte	0x5
	.byte	0x46
	.long	0x1a3
	.value	0x440
	.uleb128 0xc
	.long	.LASF35
	.byte	0x5
	.byte	0x47
	.long	0x1a3
	.value	0x470
	.uleb128 0xb
	.string	"xxx"
	.byte	0x5
	.byte	0x48
	.long	0x1a3
	.value	0x4a0
	.uleb128 0xb
	.string	"ttt"
	.byte	0x5
	.byte	0x49
	.long	0x1a3
	.value	0x4d0
	.uleb128 0xc
	.long	.LASF36
	.byte	0x5
	.byte	0x4a
	.long	0x1a3
	.value	0x500
	.uleb128 0xc
	.long	.LASF37
	.byte	0x5
	.byte	0x5d
	.long	0x216
	.value	0x530
	.uleb128 0xc
	.long	.LASF38
	.byte	0x5
	.byte	0x5f
	.long	0x216
	.value	0x5f0
	.uleb128 0xc
	.long	.LASF39
	.byte	0x5
	.byte	0x60
	.long	0x1a3
	.value	0x6b0
	.uleb128 0xc
	.long	.LASF40
	.byte	0x5
	.byte	0x62
	.long	0x175
	.value	0x6e0
	.uleb128 0xc
	.long	.LASF41
	.byte	0x5
	.byte	0x62
	.long	0x175
	.value	0x770
	.byte	0
	.uleb128 0x8
	.long	0x175
	.long	0x34d
	.uleb128 0x9
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x20b
	.long	0x35d
	.uleb128 0x9
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x88
	.long	0x36d
	.uleb128 0x9
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF42
	.byte	0x5
	.byte	0x63
	.long	0x226
	.uleb128 0xd
	.long	.LASF50
	.byte	0x1
	.byte	0x8
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ae
	.uleb128 0xe
	.string	"sit"
	.byte	0x1
	.byte	0x9
	.long	0x3ae
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0xa
	.long	0x57
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.long	0x36d
	.uleb128 0x10
	.long	.LASF51
	.byte	0x1
	.byte	0x22
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x41a
	.uleb128 0x11
	.long	.LASF52
	.byte	0x1
	.byte	0x22
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0x23
	.long	0x57
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0xe
	.string	"j"
	.byte	0x1
	.byte	0x23
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xe
	.string	"k"
	.byte	0x1
	.byte	0x23
	.long	0x57
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0xe
	.string	"dir"
	.byte	0x1
	.byte	0x23
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.string	"s"
	.byte	0x1
	.byte	0x24
	.long	0x3ae
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x12
	.string	"nt"
	.byte	0x5
	.byte	0x74
	.long	0x57
	.uleb128 0x13
	.long	.LASF43
	.byte	0x5
	.byte	0x81
	.long	0x57
	.uleb128 0x13
	.long	.LASF44
	.byte	0x5
	.byte	0x87
	.long	0x57
	.uleb128 0x13
	.long	.LASF45
	.byte	0x5
	.byte	0x8b
	.long	0x57
	.uleb128 0x13
	.long	.LASF46
	.byte	0x5
	.byte	0x9a
	.long	0x3ae
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
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
.LASF36:
	.string	"g_rand"
.LASF50:
	.string	"phaseset"
.LASF13:
	.string	"multiplier"
.LASF47:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
.LASF33:
	.string	"phase"
.LASF20:
	.string	"complex"
.LASF42:
	.string	"site"
.LASF37:
	.string	"tempvec"
.LASF35:
	.string	"cg_p"
.LASF38:
	.string	"templongvec"
.LASF29:
	.string	"index"
.LASF51:
	.string	"rephase"
.LASF32:
	.string	"link"
.LASF11:
	.string	"float"
.LASF30:
	.string	"site_prn"
.LASF21:
	.string	"su3_matrix"
.LASF9:
	.string	"long long int"
.LASF17:
	.string	"real"
.LASF46:
	.string	"lattice"
.LASF44:
	.string	"sites_on_node"
.LASF28:
	.string	"parity"
.LASF43:
	.string	"phases_in"
.LASF23:
	.string	"m00im"
.LASF19:
	.string	"double_prn"
.LASF1:
	.string	"unsigned char"
.LASF26:
	.string	"space"
.LASF4:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF16:
	.string	"scale"
.LASF3:
	.string	"unsigned int"
.LASF40:
	.string	"tempmat1"
.LASF18:
	.string	"imag"
.LASF2:
	.string	"short unsigned int"
.LASF22:
	.string	"su3_vector"
.LASF41:
	.string	"staple"
.LASF8:
	.string	"char"
.LASF39:
	.string	"templongv1"
.LASF14:
	.string	"addend"
.LASF49:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF0:
	.string	"long unsigned int"
.LASF24:
	.string	"m11im"
.LASF12:
	.string	"double"
.LASF48:
	.string	"rephase.c"
.LASF31:
	.string	"space1"
.LASF34:
	.string	"resid"
.LASF15:
	.string	"ic_state"
.LASF25:
	.string	"m22im"
.LASF52:
	.string	"flag"
.LASF6:
	.string	"long int"
.LASF45:
	.string	"this_node"
.LASF27:
	.string	"anti_hermitmat"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
