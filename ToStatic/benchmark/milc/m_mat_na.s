	.file	"m_mat_na.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# m_mat_na.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	mult_su3_na
	.type	mult_su3_na, @function
mult_su3_na:
.LFB0:
	.file 1 "m_mat_na.c"
	.loc 1 28 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	movq	%rdx, -40(%rbp)	# c, c
	.loc 1 31 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L2	#
.L5:
	.loc 1 31 0 is_stmt 0 discriminator 2
	movl	$0, -4(%rbp)	#, j
	jmp	.L3	#
.L4:
	.loc 1 33 0 is_stmt 1 discriminator 2
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
	movsd	(%rax), %xmm6	# a_5(D)->e[i_1][0].imag, ai
	.loc 1 34 0 discriminator 2
	movq	-32(%rbp), %rcx	# b, tmp79
	movl	-4(%rbp), %eax	# j, tmp81
	movslq	%eax, %rdx	# tmp81, tmp80
	movq	%rdx, %rax	# tmp80, tmp82
	addq	%rax, %rax	# tmp82
	addq	%rdx, %rax	# tmp80, tmp82
	salq	$4, %rax	#, tmp83
	addq	%rcx, %rax	# tmp79, tmp84
	movsd	(%rax), %xmm3	# b_8(D)->e[j_2][0].real, br
	movq	-32(%rbp), %rcx	# b, tmp85
	movl	-4(%rbp), %eax	# j, tmp87
	movslq	%eax, %rdx	# tmp87, tmp86
	movq	%rdx, %rax	# tmp86, tmp88
	addq	%rax, %rax	# tmp88
	addq	%rdx, %rax	# tmp86, tmp88
	salq	$4, %rax	#, tmp89
	addq	%rcx, %rax	# tmp85, tmp90
	addq	$8, %rax	#, tmp91
	movsd	(%rax), %xmm5	# b_8(D)->e[j_2][0].imag, bi
	movapd	%xmm5, %xmm8	# bi, bi
	.loc 1 35 0 discriminator 2
	movapd	%xmm0, %xmm1	# ar, cr
	mulsd	%xmm3, %xmm1	# br, cr
	movapd	%xmm1, %xmm5	# cr, cr
	movapd	%xmm6, %xmm7	# ai, t
	mulsd	%xmm8, %xmm7	# bi, t
	movapd	%xmm7, %xmm4	# t, t
	movapd	%xmm5, %xmm2	# cr, cr
	addsd	%xmm4, %xmm2	# t, cr
	movapd	%xmm2, %xmm1	# cr, cr
	.loc 1 36 0 discriminator 2
	mulsd	%xmm3, %xmm6	# br, ci
	movapd	%xmm0, %xmm3	# ar, t
	mulsd	%xmm8, %xmm3	# bi, t
	movapd	%xmm3, %xmm4	# t, t
	subsd	%xmm4, %xmm6	# t, ci
	.loc 1 38 0 discriminator 2
	movq	-24(%rbp), %rcx	# a, tmp92
	movl	-8(%rbp), %eax	# i, tmp94
	movslq	%eax, %rdx	# tmp94, tmp93
	movq	%rdx, %rax	# tmp93, tmp95
	addq	%rax, %rax	# tmp95
	addq	%rdx, %rax	# tmp93, tmp95
	salq	$4, %rax	#, tmp96
	addq	%rcx, %rax	# tmp92, tmp97
	addq	$16, %rax	#, tmp98
	movsd	(%rax), %xmm5	# a_5(D)->e[i_1][1].real, ar
	movq	-24(%rbp), %rcx	# a, tmp99
	movl	-8(%rbp), %eax	# i, tmp101
	movslq	%eax, %rdx	# tmp101, tmp100
	movq	%rdx, %rax	# tmp100, tmp102
	addq	%rax, %rax	# tmp102
	addq	%rdx, %rax	# tmp100, tmp102
	salq	$4, %rax	#, tmp103
	addq	%rcx, %rax	# tmp99, tmp104
	addq	$24, %rax	#, tmp105
	movsd	(%rax), %xmm7	# a_5(D)->e[i_1][1].imag, ai
	.loc 1 39 0 discriminator 2
	movq	-32(%rbp), %rcx	# b, tmp106
	movl	-4(%rbp), %eax	# j, tmp108
	movslq	%eax, %rdx	# tmp108, tmp107
	movq	%rdx, %rax	# tmp107, tmp109
	addq	%rax, %rax	# tmp109
	addq	%rdx, %rax	# tmp107, tmp109
	salq	$4, %rax	#, tmp110
	addq	%rcx, %rax	# tmp106, tmp111
	addq	$16, %rax	#, tmp112
	movsd	(%rax), %xmm0	# b_8(D)->e[j_2][1].real, br
	movq	-32(%rbp), %rcx	# b, tmp113
	movl	-4(%rbp), %eax	# j, tmp115
	movslq	%eax, %rdx	# tmp115, tmp114
	movq	%rdx, %rax	# tmp114, tmp116
	addq	%rax, %rax	# tmp116
	addq	%rdx, %rax	# tmp114, tmp116
	salq	$4, %rax	#, tmp117
	addq	%rcx, %rax	# tmp113, tmp118
	addq	$24, %rax	#, tmp119
	movsd	(%rax), %xmm2	# b_8(D)->e[j_2][1].imag, bi
	movapd	%xmm2, %xmm9	# bi, bi
	.loc 1 40 0 discriminator 2
	movapd	%xmm5, %xmm2	# ar, t
	mulsd	%xmm0, %xmm2	# br, t
	movapd	%xmm2, %xmm3	# t, t
	addsd	%xmm3, %xmm1	# t, cr
	movapd	%xmm7, %xmm4	# ai, t
	mulsd	%xmm9, %xmm4	# bi, t
	movapd	%xmm4, %xmm3	# t, t
	addsd	%xmm3, %xmm1	# t, cr
	.loc 1 41 0 discriminator 2
	mulsd	%xmm9, %xmm5	# bi, t
	subsd	%xmm5, %xmm6	# t, ci
	mulsd	%xmm0, %xmm7	# br, t
	addsd	%xmm7, %xmm6	# t, ci
	.loc 1 43 0 discriminator 2
	movq	-24(%rbp), %rcx	# a, tmp120
	movl	-8(%rbp), %eax	# i, tmp122
	movslq	%eax, %rdx	# tmp122, tmp121
	movq	%rdx, %rax	# tmp121, tmp123
	addq	%rax, %rax	# tmp123
	addq	%rdx, %rax	# tmp121, tmp123
	salq	$4, %rax	#, tmp124
	addq	%rcx, %rax	# tmp120, tmp125
	addq	$32, %rax	#, tmp126
	movsd	(%rax), %xmm2	# a_5(D)->e[i_1][2].real, ar
	movq	-24(%rbp), %rcx	# a, tmp127
	movl	-8(%rbp), %eax	# i, tmp129
	movslq	%eax, %rdx	# tmp129, tmp128
	movq	%rdx, %rax	# tmp128, tmp130
	addq	%rax, %rax	# tmp130
	addq	%rdx, %rax	# tmp128, tmp130
	salq	$4, %rax	#, tmp131
	addq	%rcx, %rax	# tmp127, tmp132
	addq	$40, %rax	#, tmp133
	movsd	(%rax), %xmm4	# a_5(D)->e[i_1][2].imag, ai
	.loc 1 44 0 discriminator 2
	movq	-32(%rbp), %rcx	# b, tmp134
	movl	-4(%rbp), %eax	# j, tmp136
	movslq	%eax, %rdx	# tmp136, tmp135
	movq	%rdx, %rax	# tmp135, tmp137
	addq	%rax, %rax	# tmp137
	addq	%rdx, %rax	# tmp135, tmp137
	salq	$4, %rax	#, tmp138
	addq	%rcx, %rax	# tmp134, tmp139
	addq	$32, %rax	#, tmp140
	movsd	(%rax), %xmm7	# b_8(D)->e[j_2][2].real, br
	movq	-32(%rbp), %rcx	# b, tmp141
	movl	-4(%rbp), %eax	# j, tmp143
	movslq	%eax, %rdx	# tmp143, tmp142
	movq	%rdx, %rax	# tmp142, tmp144
	addq	%rax, %rax	# tmp144
	addq	%rdx, %rax	# tmp142, tmp144
	salq	$4, %rax	#, tmp145
	addq	%rcx, %rax	# tmp141, tmp146
	addq	$40, %rax	#, tmp147
	movsd	(%rax), %xmm5	# b_8(D)->e[j_2][2].imag, bi
	.loc 1 45 0 discriminator 2
	movapd	%xmm2, %xmm0	# ar, t
	mulsd	%xmm7, %xmm0	# br, t
	movapd	%xmm0, %xmm3	# t, t
	addsd	%xmm3, %xmm1	# t, cr
	movapd	%xmm4, %xmm3	# ai, t
	mulsd	%xmm5, %xmm3	# bi, t
	movapd	%xmm3, %xmm0	# t, t
	addsd	%xmm0, %xmm1	# t, cr
	.loc 1 46 0 discriminator 2
	mulsd	%xmm5, %xmm2	# bi, t
	subsd	%xmm2, %xmm6	# t, ci
	mulsd	%xmm7, %xmm4	# br, t
	addsd	%xmm4, %xmm6	# t, ci
	.loc 1 48 0 discriminator 2
	movq	-40(%rbp), %rcx	# c, tmp148
	movl	-4(%rbp), %eax	# j, tmp150
	movslq	%eax, %rsi	# tmp150, tmp149
	movl	-8(%rbp), %eax	# i, tmp152
	movslq	%eax, %rdx	# tmp152, tmp151
	movq	%rdx, %rax	# tmp151, tmp153
	addq	%rax, %rax	# tmp153
	addq	%rdx, %rax	# tmp151, tmp153
	addq	%rsi, %rax	# tmp149, tmp154
	salq	$4, %rax	#, tmp155
	addq	%rcx, %rax	# tmp148, tmp156
	movsd	%xmm1, (%rax)	# cr, c_41(D)->e[i_1][j_2].real
	.loc 1 49 0 discriminator 2
	movq	-40(%rbp), %rcx	# c, tmp157
	movl	-4(%rbp), %eax	# j, tmp159
	movslq	%eax, %rsi	# tmp159, tmp158
	movl	-8(%rbp), %eax	# i, tmp161
	movslq	%eax, %rdx	# tmp161, tmp160
	movq	%rdx, %rax	# tmp160, tmp162
	addq	%rax, %rax	# tmp162
	addq	%rdx, %rax	# tmp160, tmp162
	addq	%rsi, %rax	# tmp158, tmp163
	salq	$4, %rax	#, tmp164
	addq	%rcx, %rax	# tmp157, tmp165
	addq	$8, %rax	#, tmp166
	movsd	%xmm6, (%rax)	# ci, c_41(D)->e[i_1][j_2].imag
	.loc 1 31 0 discriminator 2
	addl	$1, -4(%rbp)	#, j
.L3:
	.loc 1 31 0 is_stmt 0 discriminator 1
	cmpl	$2, -4(%rbp)	#, j
	jle	.L4	#,
	.loc 1 31 0 discriminator 3
	addl	$1, -8(%rbp)	#, i
.L2:
	.loc 1 31 0 discriminator 1
	cmpl	$2, -8(%rbp)	#, i
	jle	.L5	#,
	.loc 1 51 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	mult_su3_na, .-mult_su3_na
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
	.byte	0x1c
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x14f
	.uleb128 0xb
	.string	"a"
	.byte	0x1
	.byte	0x1c
	.long	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"b"
	.byte	0x1
	.byte	0x1c
	.long	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"c"
	.byte	0x1
	.byte	0x1c
	.long	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x1d
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.byte	0x1d
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"t"
	.byte	0x1
	.byte	0x1e
	.long	0x4e
	.uleb128 0xd
	.string	"ar"
	.byte	0x1
	.byte	0x1e
	.long	0x4e
	.uleb128 0xd
	.string	"ai"
	.byte	0x1
	.byte	0x1e
	.long	0x4e
	.uleb128 0xd
	.string	"br"
	.byte	0x1
	.byte	0x1e
	.long	0x4e
	.uleb128 0xd
	.string	"bi"
	.byte	0x1
	.byte	0x1e
	.long	0x4e
	.uleb128 0xd
	.string	"cr"
	.byte	0x1
	.byte	0x1e
	.long	0x4e
	.uleb128 0xd
	.string	"ci"
	.byte	0x1
	.byte	0x1e
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
.LASF11:
	.string	"mult_su3_na"
.LASF6:
	.string	"su3_matrix"
.LASF3:
	.string	"long unsigned int"
.LASF10:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF2:
	.string	"double"
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
.LASF9:
	.string	"m_mat_na.c"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
