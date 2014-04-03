	.file	"ranstuff.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# ranstuff.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	initialize_prn
	.type	initialize_prn, @function
initialize_prn:
.LFB2:
	.file 1 "ranstuff.c"
	.loc 1 20 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# prn_pt, prn_pt
	movl	%esi, -12(%rbp)	# seed, seed
	movl	%edx, -16(%rbp)	# index, index
	.loc 1 22 0
	movl	-16(%rbp), %eax	# index, tmp115
	sall	$3, %eax	#, D.5084
	addl	$69607, %eax	#, D.5084
	imull	-12(%rbp), %eax	# seed, D.5084
	addl	$12345, %eax	#, tmp116
	movl	%eax, -12(%rbp)	# tmp116, seed
	.loc 1 23 0
	movl	-12(%rbp), %eax	# seed, seed.0
	shrl	$8, %eax	#, D.5085
	movslq	%eax, %rdx	# D.5084, D.5086
	movq	-8(%rbp), %rax	# prn_pt, tmp117
	movq	%rdx, (%rax)	# D.5086, prn_pt_11(D)->r0
	.loc 1 24 0
	movl	-16(%rbp), %eax	# index, tmp118
	sall	$3, %eax	#, D.5084
	addl	$69607, %eax	#, D.5084
	imull	-12(%rbp), %eax	# seed, D.5084
	addl	$12345, %eax	#, tmp119
	movl	%eax, -12(%rbp)	# tmp119, seed
	.loc 1 25 0
	movl	-12(%rbp), %eax	# seed, seed.1
	shrl	$8, %eax	#, D.5085
	movslq	%eax, %rdx	# D.5084, D.5086
	movq	-8(%rbp), %rax	# prn_pt, tmp120
	movq	%rdx, 8(%rax)	# D.5086, prn_pt_11(D)->r1
	.loc 1 26 0
	movl	-16(%rbp), %eax	# index, tmp121
	sall	$3, %eax	#, D.5084
	addl	$69607, %eax	#, D.5084
	imull	-12(%rbp), %eax	# seed, D.5084
	addl	$12345, %eax	#, tmp122
	movl	%eax, -12(%rbp)	# tmp122, seed
	.loc 1 27 0
	movl	-12(%rbp), %eax	# seed, seed.2
	shrl	$8, %eax	#, D.5085
	movslq	%eax, %rdx	# D.5084, D.5086
	movq	-8(%rbp), %rax	# prn_pt, tmp123
	movq	%rdx, 16(%rax)	# D.5086, prn_pt_11(D)->r2
	.loc 1 28 0
	movl	-16(%rbp), %eax	# index, tmp124
	sall	$3, %eax	#, D.5084
	addl	$69607, %eax	#, D.5084
	imull	-12(%rbp), %eax	# seed, D.5084
	addl	$12345, %eax	#, tmp125
	movl	%eax, -12(%rbp)	# tmp125, seed
	.loc 1 29 0
	movl	-12(%rbp), %eax	# seed, seed.3
	shrl	$8, %eax	#, D.5085
	movslq	%eax, %rdx	# D.5084, D.5086
	movq	-8(%rbp), %rax	# prn_pt, tmp126
	movq	%rdx, 24(%rax)	# D.5086, prn_pt_11(D)->r3
	.loc 1 30 0
	movl	-16(%rbp), %eax	# index, tmp127
	sall	$3, %eax	#, D.5084
	addl	$69607, %eax	#, D.5084
	imull	-12(%rbp), %eax	# seed, D.5084
	addl	$12345, %eax	#, tmp128
	movl	%eax, -12(%rbp)	# tmp128, seed
	.loc 1 31 0
	movl	-12(%rbp), %eax	# seed, seed.4
	shrl	$8, %eax	#, D.5085
	movslq	%eax, %rdx	# D.5084, D.5086
	movq	-8(%rbp), %rax	# prn_pt, tmp129
	movq	%rdx, 32(%rax)	# D.5086, prn_pt_11(D)->r4
	.loc 1 32 0
	movl	-16(%rbp), %eax	# index, tmp130
	sall	$3, %eax	#, D.5084
	addl	$69607, %eax	#, D.5084
	imull	-12(%rbp), %eax	# seed, D.5084
	addl	$12345, %eax	#, tmp131
	movl	%eax, -12(%rbp)	# tmp131, seed
	.loc 1 33 0
	movl	-12(%rbp), %eax	# seed, seed.5
	shrl	$8, %eax	#, D.5085
	movslq	%eax, %rdx	# D.5084, D.5086
	movq	-8(%rbp), %rax	# prn_pt, tmp132
	movq	%rdx, 40(%rax)	# D.5086, prn_pt_11(D)->r5
	.loc 1 34 0
	movl	-16(%rbp), %eax	# index, tmp133
	sall	$3, %eax	#, D.5084
	addl	$69607, %eax	#, D.5084
	imull	-12(%rbp), %eax	# seed, D.5084
	addl	$12345, %eax	#, tmp134
	movl	%eax, -12(%rbp)	# tmp134, seed
	.loc 1 35 0
	movl	-12(%rbp), %eax	# seed, seed.6
	shrl	$8, %eax	#, D.5085
	movslq	%eax, %rdx	# D.5084, D.5086
	movq	-8(%rbp), %rax	# prn_pt, tmp135
	movq	%rdx, 48(%rax)	# D.5086, prn_pt_11(D)->r6
	.loc 1 36 0
	movl	-16(%rbp), %eax	# index, tmp136
	sall	$3, %eax	#, D.5084
	addl	$69607, %eax	#, D.5084
	imull	-12(%rbp), %eax	# seed, D.5084
	addl	$12345, %eax	#, tmp137
	movl	%eax, -12(%rbp)	# tmp137, seed
	.loc 1 37 0
	movl	-12(%rbp), %eax	# seed, tmp138
	movslq	%eax, %rdx	# tmp138, D.5086
	movq	-8(%rbp), %rax	# prn_pt, tmp139
	movq	%rdx, 72(%rax)	# D.5086, prn_pt_11(D)->ic_state
	.loc 1 38 0
	movl	-16(%rbp), %eax	# index, tmp140
	sall	$3, %eax	#, D.5084
	addl	$100005, %eax	#, D.5084
	movslq	%eax, %rdx	# D.5084, D.5086
	movq	-8(%rbp), %rax	# prn_pt, tmp141
	movq	%rdx, 56(%rax)	# D.5086, prn_pt_11(D)->multiplier
	.loc 1 39 0
	movq	-8(%rbp), %rax	# prn_pt, tmp142
	movq	$12345, 64(%rax)	#, prn_pt_11(D)->addend
	.loc 1 40 0
	movq	-8(%rbp), %rdx	# prn_pt, tmp143
	movabsq	$4499096027743125504, %rax	#, tmp144
	movq	%rax, 80(%rdx)	# tmp144, prn_pt_11(D)->scale
	.loc 1 41 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	initialize_prn, .-initialize_prn
	.globl	myrand
	.type	myrand, @function
myrand:
.LFB3:
	.loc 1 43 0
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
	movq	%rdi, -24(%rbp)	# prn_pt, prn_pt
	.loc 1 46 0
	movq	-24(%rbp), %rax	# prn_pt, tmp101
	movq	40(%rax), %rax	# prn_pt_1(D)->r5, D.5087
	shrq	$7, %rax	#, D.5087
	movl	%eax, %edx	# D.5087, D.5088
	movq	-24(%rbp), %rax	# prn_pt, tmp102
	movq	48(%rax), %rax	# prn_pt_1(D)->r6, D.5087
	sall	$17, %eax	#, D.5088
	movl	%edx, %ecx	# D.5088, D.5088
	orl	%eax, %ecx	# D.5088, D.5088
	.loc 1 47 0
	movq	-24(%rbp), %rax	# prn_pt, tmp103
	movq	32(%rax), %rax	# prn_pt_1(D)->r4, D.5087
	shrq	%rax	# D.5087
	.loc 1 46 0
	movl	%eax, %edx	# D.5087, D.5088
	.loc 1 47 0
	movq	-24(%rbp), %rax	# prn_pt, tmp104
	movq	40(%rax), %rax	# prn_pt_1(D)->r5, D.5087
	.loc 1 46 0
	sall	$23, %eax	#, D.5088
	orl	%edx, %eax	# D.5088, D.5088
	xorl	%ecx, %eax	# D.5088, D.5088
	andl	$16777215, %eax	#, t
	movl	%eax, %r12d	# t, t
	.loc 1 48 0
	movq	-24(%rbp), %rax	# prn_pt, tmp105
	movq	40(%rax), %rdx	# prn_pt_1(D)->r5, D.5087
	movq	-24(%rbp), %rax	# prn_pt, tmp106
	movq	%rdx, 48(%rax)	# D.5087, prn_pt_1(D)->r6
	.loc 1 49 0
	movq	-24(%rbp), %rax	# prn_pt, tmp107
	movq	32(%rax), %rdx	# prn_pt_1(D)->r4, D.5087
	movq	-24(%rbp), %rax	# prn_pt, tmp108
	movq	%rdx, 40(%rax)	# D.5087, prn_pt_1(D)->r5
	.loc 1 50 0
	movq	-24(%rbp), %rax	# prn_pt, tmp109
	movq	24(%rax), %rdx	# prn_pt_1(D)->r3, D.5087
	movq	-24(%rbp), %rax	# prn_pt, tmp110
	movq	%rdx, 32(%rax)	# D.5087, prn_pt_1(D)->r4
	.loc 1 51 0
	movq	-24(%rbp), %rax	# prn_pt, tmp111
	movq	16(%rax), %rdx	# prn_pt_1(D)->r2, D.5087
	movq	-24(%rbp), %rax	# prn_pt, tmp112
	movq	%rdx, 24(%rax)	# D.5087, prn_pt_1(D)->r3
	.loc 1 52 0
	movq	-24(%rbp), %rax	# prn_pt, tmp113
	movq	8(%rax), %rdx	# prn_pt_1(D)->r1, D.5087
	movq	-24(%rbp), %rax	# prn_pt, tmp114
	movq	%rdx, 16(%rax)	# D.5087, prn_pt_1(D)->r2
	.loc 1 53 0
	movq	-24(%rbp), %rax	# prn_pt, tmp115
	movq	(%rax), %rdx	# prn_pt_1(D)->r0, D.5087
	movq	-24(%rbp), %rax	# prn_pt, tmp116
	movq	%rdx, 8(%rax)	# D.5087, prn_pt_1(D)->r1
	.loc 1 54 0
	movslq	%r12d, %rdx	# t, D.5087
	movq	-24(%rbp), %rax	# prn_pt, tmp117
	movq	%rdx, (%rax)	# D.5087, prn_pt_1(D)->r0
	.loc 1 55 0
	movq	-24(%rbp), %rax	# prn_pt, tmp118
	movq	72(%rax), %rax	# prn_pt_1(D)->ic_state, D.5087
	movl	%eax, %edx	# D.5087, D.5088
	movq	-24(%rbp), %rax	# prn_pt, tmp119
	movq	56(%rax), %rax	# prn_pt_1(D)->multiplier, D.5087
	imull	%eax, %edx	# D.5088, D.5088
	movq	-24(%rbp), %rax	# prn_pt, tmp120
	movq	64(%rax), %rax	# prn_pt_1(D)->addend, D.5087
	addl	%edx, %eax	# D.5088, D.5088
	movl	%eax, %ebx	# D.5088, s
	.loc 1 56 0
	movslq	%ebx, %rdx	# s, D.5087
	movq	-24(%rbp), %rax	# prn_pt, tmp121
	movq	%rdx, 72(%rax)	# D.5087, prn_pt_1(D)->ic_state
	.loc 1 57 0
	movq	-24(%rbp), %rax	# prn_pt, tmp122
	movsd	80(%rax), %xmm1	# prn_pt_1(D)->scale, D.5090
	movl	%ebx, %eax	# s, s.7
	shrl	$8, %eax	#, D.5088
	xorl	%r12d, %eax	# t, D.5089
	cvtsi2sd	%eax, %xmm0	# D.5089, D.5090
	mulsd	%xmm1, %xmm0	# D.5090, D.5090
	movsd	%xmm0, -32(%rbp)	# D.5090, %sfp
	movq	-32(%rbp), %rax	# %sfp, <retval>
	.loc 1 58 0
	movq	%rax, -32(%rbp)	# <retval>, %sfp
	movsd	-32(%rbp), %xmm0	# %sfp,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	myrand, .-myrand
.Letext0:
	.file 2 "random.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1ad
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF22
	.byte	0x1
	.long	.LASF23
	.long	.LASF24
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
	.long	.LASF25
	.byte	0x2
	.byte	0xb
	.long	0x8f
	.uleb128 0x8
	.long	.LASF20
	.byte	0x1
	.byte	0x14
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x168
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.byte	0x14
	.long	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.byte	0x14
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0x14
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x115
	.uleb128 0xb
	.long	.LASF21
	.byte	0x1
	.byte	0x2b
	.long	0x88
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.byte	0x2b
	.long	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"t"
	.byte	0x1
	.byte	0x2c
	.long	0x57
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xc
	.string	"s"
	.byte	0x1
	.byte	0x2c
	.long	0x57
	.uleb128 0x1
	.byte	0x53
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
.LASF25:
	.string	"double_prn"
.LASF16:
	.string	"scale"
.LASF11:
	.string	"float"
.LASF14:
	.string	"addend"
.LASF0:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF13:
	.string	"multiplier"
.LASF24:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF12:
	.string	"double"
.LASF1:
	.string	"unsigned char"
.LASF3:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF17:
	.string	"prn_pt"
.LASF20:
	.string	"initialize_prn"
.LASF7:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF8:
	.string	"char"
.LASF19:
	.string	"index"
.LASF15:
	.string	"ic_state"
.LASF21:
	.string	"myrand"
.LASF22:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF23:
	.string	"ranstuff.c"
.LASF18:
	.string	"seed"
.LASF6:
	.string	"long int"
.LASF4:
	.string	"signed char"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
