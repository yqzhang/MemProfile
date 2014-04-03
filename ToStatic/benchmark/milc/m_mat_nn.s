	.file	"m_mat_nn.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# m_mat_nn.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	mult_su3_nn
	.type	mult_su3_nn, @function
mult_su3_nn:
.LFB0:
	.file 1 "m_mat_nn.c"
	.loc 1 70 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	movq	%rdx, -40(%rbp)	# c, c
	.loc 1 73 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L2	#
.L5:
	.loc 1 73 0 is_stmt 0 discriminator 2
	movl	$0, -4(%rbp)	#, j
	jmp	.L3	#
.L4:
	.loc 1 75 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rcx	# a, tmp66
	movl	-8(%rbp), %eax	# i, tmp68
	movslq	%eax, %rdx	# tmp68, tmp67
	movq	%rdx, %rax	# tmp67, tmp69
	addq	%rax, %rax	# tmp69
	addq	%rdx, %rax	# tmp67, tmp69
	salq	$4, %rax	#, tmp70
	addq	%rcx, %rax	# tmp66, tmp71
	movsd	(%rax), %xmm0	# a_5(D)->e[i_1][0].real, ar
	movq	-24(%rbp), %rcx	# a, tmp72
	movl	-8(%rbp), %eax	# i, tmp74
	movslq	%eax, %rdx	# tmp74, tmp73
	movq	%rdx, %rax	# tmp73, tmp75
	addq	%rax, %rax	# tmp75
	addq	%rdx, %rax	# tmp73, tmp75
	salq	$4, %rax	#, tmp76
	addq	%rcx, %rax	# tmp72, tmp77
	addq	$8, %rax	#, tmp78
	movsd	(%rax), %xmm5	# a_5(D)->e[i_1][0].imag, ai
	movapd	%xmm5, %xmm6	# ai, ai
	.loc 1 76 0 discriminator 2
	movq	-32(%rbp), %rax	# b, tmp79
	movl	-4(%rbp), %edx	# j, tmp81
	movslq	%edx, %rdx	# tmp81, tmp80
	salq	$4, %rdx	#, tmp82
	addq	%rdx, %rax	# tmp82, tmp83
	movsd	(%rax), %xmm4	# b_8(D)->e[0][j_2].real, br
	movapd	%xmm4, %xmm8	# br, br
	movq	-32(%rbp), %rax	# b, tmp84
	movl	-4(%rbp), %edx	# j, tmp86
	movslq	%edx, %rdx	# tmp86, tmp85
	salq	$4, %rdx	#, tmp87
	addq	%rdx, %rax	# tmp87, tmp88
	addq	$8, %rax	#, tmp89
	movsd	(%rax), %xmm3	# b_8(D)->e[0][j_2].imag, bi
	.loc 1 77 0 discriminator 2
	movapd	%xmm0, %xmm1	# ar, cr
	mulsd	%xmm8, %xmm1	# br, cr
	movapd	%xmm1, %xmm7	# cr, cr
	movapd	%xmm6, %xmm4	# ai, ai
	movapd	%xmm4, %xmm6	# ai, t
	movapd	%xmm3, %xmm1	# bi, bi
	mulsd	%xmm1, %xmm6	# bi, t
	movapd	%xmm6, %xmm5	# t, t
	movapd	%xmm7, %xmm2	# cr, cr
	subsd	%xmm5, %xmm2	# t, cr
	movapd	%xmm2, %xmm6	# cr, cr
	.loc 1 78 0 discriminator 2
	movapd	%xmm0, %xmm3	# ar, ci
	mulsd	%xmm1, %xmm3	# bi, ci
	movapd	%xmm3, %xmm5	# ci, ci
	movapd	%xmm4, %xmm7	# ai, t
	mulsd	%xmm8, %xmm7	# br, t
	movapd	%xmm5, %xmm4	# ci, ci
	addsd	%xmm7, %xmm4	# t, ci
	movapd	%xmm4, %xmm1	# ci, ci
	.loc 1 80 0 discriminator 2
	movq	-24(%rbp), %rcx	# a, tmp90
	movl	-8(%rbp), %eax	# i, tmp92
	movslq	%eax, %rdx	# tmp92, tmp91
	movq	%rdx, %rax	# tmp91, tmp93
	addq	%rax, %rax	# tmp93
	addq	%rdx, %rax	# tmp91, tmp93
	salq	$4, %rax	#, tmp94
	addq	%rcx, %rax	# tmp90, tmp95
	addq	$16, %rax	#, tmp96
	movsd	(%rax), %xmm5	# a_5(D)->e[i_1][1].real, ar
	movq	-24(%rbp), %rcx	# a, tmp97
	movl	-8(%rbp), %eax	# i, tmp99
	movslq	%eax, %rdx	# tmp99, tmp98
	movq	%rdx, %rax	# tmp98, tmp100
	addq	%rax, %rax	# tmp100
	addq	%rdx, %rax	# tmp98, tmp100
	salq	$4, %rax	#, tmp101
	addq	%rcx, %rax	# tmp97, tmp102
	addq	$24, %rax	#, tmp103
	movsd	(%rax), %xmm7	# a_5(D)->e[i_1][1].imag, ai
	movapd	%xmm7, %xmm4	# ai, ai
	.loc 1 81 0 discriminator 2
	movq	-32(%rbp), %rax	# b, tmp104
	movl	-4(%rbp), %edx	# j, tmp106
	movslq	%edx, %rdx	# tmp106, tmp105
	addq	$3, %rdx	#, tmp107
	salq	$4, %rdx	#, tmp108
	addq	%rdx, %rax	# tmp108, tmp109
	movsd	(%rax), %xmm3	# b_8(D)->e[1][j_2].real, br
	movapd	%xmm3, %xmm9	# br, br
	movq	-32(%rbp), %rax	# b, tmp110
	movl	-4(%rbp), %edx	# j, tmp112
	movslq	%edx, %rdx	# tmp112, tmp111
	addq	$3, %rdx	#, tmp113
	salq	$4, %rdx	#, tmp114
	addq	%rdx, %rax	# tmp114, tmp115
	addq	$8, %rax	#, tmp116
	movsd	(%rax), %xmm0	# b_8(D)->e[1][j_2].imag, bi
	movapd	%xmm0, %xmm10	# bi, bi
	.loc 1 82 0 discriminator 2
	movapd	%xmm5, %xmm0	# ar, t
	mulsd	%xmm9, %xmm0	# br, t
	movapd	%xmm0, %xmm7	# t, t
	movapd	%xmm6, %xmm2	# cr, cr
	addsd	%xmm7, %xmm2	# t, cr
	movapd	%xmm4, %xmm6	# ai, t
	mulsd	%xmm10, %xmm6	# bi, t
	movapd	%xmm6, %xmm0	# t, t
	subsd	%xmm0, %xmm2	# t, cr
	.loc 1 83 0 discriminator 2
	mulsd	%xmm10, %xmm5	# bi, t
	addsd	%xmm5, %xmm1	# t, ci
	movapd	%xmm1, %xmm3	# ci, ci
	movapd	%xmm4, %xmm6	# ai, t
	mulsd	%xmm9, %xmm6	# br, t
	addsd	%xmm6, %xmm3	# t, ci
	movapd	%xmm3, %xmm4	# ci, ci
	.loc 1 85 0 discriminator 2
	movq	-24(%rbp), %rcx	# a, tmp117
	movl	-8(%rbp), %eax	# i, tmp119
	movslq	%eax, %rdx	# tmp119, tmp118
	movq	%rdx, %rax	# tmp118, tmp120
	addq	%rax, %rax	# tmp120
	addq	%rdx, %rax	# tmp118, tmp120
	salq	$4, %rax	#, tmp121
	addq	%rcx, %rax	# tmp117, tmp122
	addq	$32, %rax	#, tmp123
	movsd	(%rax), %xmm0	# a_5(D)->e[i_1][2].real, ar
	movq	-24(%rbp), %rcx	# a, tmp124
	movl	-8(%rbp), %eax	# i, tmp126
	movslq	%eax, %rdx	# tmp126, tmp125
	movq	%rdx, %rax	# tmp125, tmp127
	addq	%rax, %rax	# tmp127
	addq	%rdx, %rax	# tmp125, tmp127
	salq	$4, %rax	#, tmp128
	addq	%rcx, %rax	# tmp124, tmp129
	addq	$40, %rax	#, tmp130
	movsd	(%rax), %xmm7	# a_5(D)->e[i_1][2].imag, ai
	.loc 1 86 0 discriminator 2
	movq	-32(%rbp), %rax	# b, tmp131
	movl	-4(%rbp), %edx	# j, tmp133
	movslq	%edx, %rdx	# tmp133, tmp132
	addq	$6, %rdx	#, tmp134
	salq	$4, %rdx	#, tmp135
	addq	%rdx, %rax	# tmp135, tmp136
	movsd	(%rax), %xmm6	# b_8(D)->e[2][j_2].real, br
	movq	-32(%rbp), %rax	# b, tmp137
	movl	-4(%rbp), %edx	# j, tmp139
	movslq	%edx, %rdx	# tmp139, tmp138
	addq	$6, %rdx	#, tmp140
	salq	$4, %rdx	#, tmp141
	addq	%rdx, %rax	# tmp141, tmp142
	addq	$8, %rax	#, tmp143
	movsd	(%rax), %xmm5	# b_8(D)->e[2][j_2].imag, bi
	.loc 1 87 0 discriminator 2
	movapd	%xmm0, %xmm3	# ar, t
	mulsd	%xmm6, %xmm3	# br, t
	movapd	%xmm3, %xmm1	# t, t
	addsd	%xmm1, %xmm2	# t, cr
	movapd	%xmm7, %xmm1	# ai, t
	mulsd	%xmm5, %xmm1	# bi, t
	movapd	%xmm1, %xmm3	# t, t
	subsd	%xmm3, %xmm2	# t, cr
	.loc 1 88 0 discriminator 2
	mulsd	%xmm5, %xmm0	# bi, t
	addsd	%xmm0, %xmm4	# t, ci
	movapd	%xmm4, %xmm1	# ci, ci
	mulsd	%xmm6, %xmm7	# br, t
	addsd	%xmm7, %xmm1	# t, ci
	movapd	%xmm1, %xmm3	# ci, ci
	.loc 1 90 0 discriminator 2
	movq	-40(%rbp), %rcx	# c, tmp144
	movl	-4(%rbp), %eax	# j, tmp146
	movslq	%eax, %rsi	# tmp146, tmp145
	movl	-8(%rbp), %eax	# i, tmp148
	movslq	%eax, %rdx	# tmp148, tmp147
	movq	%rdx, %rax	# tmp147, tmp149
	addq	%rax, %rax	# tmp149
	addq	%rdx, %rax	# tmp147, tmp149
	addq	%rsi, %rax	# tmp145, tmp150
	salq	$4, %rax	#, tmp151
	addq	%rcx, %rax	# tmp144, tmp152
	movsd	%xmm2, (%rax)	# cr, c_41(D)->e[i_1][j_2].real
	.loc 1 91 0 discriminator 2
	movq	-40(%rbp), %rcx	# c, tmp153
	movl	-4(%rbp), %eax	# j, tmp155
	movslq	%eax, %rsi	# tmp155, tmp154
	movl	-8(%rbp), %eax	# i, tmp157
	movslq	%eax, %rdx	# tmp157, tmp156
	movq	%rdx, %rax	# tmp156, tmp158
	addq	%rax, %rax	# tmp158
	addq	%rdx, %rax	# tmp156, tmp158
	addq	%rsi, %rax	# tmp154, tmp159
	salq	$4, %rax	#, tmp160
	addq	%rcx, %rax	# tmp153, tmp161
	addq	$8, %rax	#, tmp162
	movsd	%xmm3, (%rax)	# ci, c_41(D)->e[i_1][j_2].imag
	.loc 1 73 0 discriminator 2
	addl	$1, -4(%rbp)	#, j
.L3:
	.loc 1 73 0 is_stmt 0 discriminator 1
	cmpl	$2, -4(%rbp)	#, j
	jle	.L4	#,
	.loc 1 73 0 discriminator 3
	addl	$1, -8(%rbp)	#, i
.L2:
	.loc 1 73 0 discriminator 1
	cmpl	$2, -8(%rbp)	#, i
	jle	.L5	#,
	.loc 1 93 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	mult_su3_nn, .-mult_su3_nn
.Letext0:
	.file 2 "complex.h"
	.file 3 "su3.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x152
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF8
	.byte	0x1
	.long	.LASF9
	.long	.LASF10
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x10
	.byte	0x2
	.byte	0x49
	.long	0x4e
	.uleb128 0x3
	.long	.LASF0
	.byte	0x2
	.byte	0x4a
	.long	0x4e
	.byte	0
	.uleb128 0x3
	.long	.LASF1
	.byte	0x2
	.byte	0x4b
	.long	0x4e
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.long	.LASF2
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x4c
	.long	0x2d
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x90
	.byte	0x3
	.byte	0xe
	.long	0x7a
	.uleb128 0x6
	.string	"e"
	.byte	0x3
	.byte	0xe
	.long	0x7a
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x55
	.long	0x90
	.uleb128 0x8
	.long	0x90
	.byte	0x2
	.uleb128 0x8
	.long	0x90
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF4
	.uleb128 0x5
	.long	.LASF6
	.byte	0x3
	.byte	0xe
	.long	0x67
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0xa
	.long	.LASF11
	.byte	0x1
	.byte	0x46
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x14f
	.uleb128 0xb
	.string	"a"
	.byte	0x1
	.byte	0x46
	.long	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"b"
	.byte	0x1
	.byte	0x46
	.long	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"c"
	.byte	0x1
	.byte	0x46
	.long	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x47
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.byte	0x47
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"t"
	.byte	0x1
	.byte	0x48
	.long	0x4e
	.uleb128 0xd
	.string	"ar"
	.byte	0x1
	.byte	0x48
	.long	0x4e
	.uleb128 0xd
	.string	"ai"
	.byte	0x1
	.byte	0x48
	.long	0x4e
	.uleb128 0xd
	.string	"br"
	.byte	0x1
	.byte	0x48
	.long	0x4e
	.uleb128 0xd
	.string	"bi"
	.byte	0x1
	.byte	0x48
	.long	0x4e
	.uleb128 0xd
	.string	"cr"
	.byte	0x1
	.byte	0x48
	.long	0x4e
	.uleb128 0xd
	.string	"ci"
	.byte	0x1
	.byte	0x48
	.long	0x4e
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x97
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
.LASF5:
	.string	"complex"
.LASF6:
	.string	"su3_matrix"
.LASF11:
	.string	"mult_su3_nn"
.LASF3:
	.string	"long unsigned int"
.LASF10:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF2:
	.string	"double"
.LASF9:
	.string	"m_mat_nn.c"
.LASF1:
	.string	"imag"
.LASF7:
	.string	"unsigned int"
.LASF0:
	.string	"real"
.LASF4:
	.string	"sizetype"
.LASF8:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
