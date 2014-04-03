	.file	"m_mv_s_4dir.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# m_mv_s_4dir.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	mult_su3_mat_vec_sum_4dir
	.type	mult_su3_mat_vec_sum_4dir, @function
mult_su3_mat_vec_sum_4dir:
.LFB0:
	.file 1 "m_mv_s_4dir.c"
	.loc 1 128 0
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
	movq	%rdi, -40(%rbp)	# a, a
	movq	%rsi, -48(%rbp)	# b0, b0
	movq	%rdx, -56(%rbp)	# b1, b1
	movq	%rcx, -64(%rbp)	# b2, b2
	movq	%r8, -72(%rbp)	# b3, b3
	movq	%r9, -80(%rbp)	# c, c
	.loc 1 134 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L2	#
.L3:
	.loc 1 135 0 discriminator 2
	movq	-80(%rbp), %rax	# c, tmp74
	movl	-24(%rbp), %edx	# i, tmp76
	movslq	%edx, %rdx	# tmp76, tmp75
	salq	$4, %rdx	#, tmp77
	addq	%rax, %rdx	# tmp74, tmp78
	movl	$0, %eax	#, tmp79
	movq	%rax, (%rdx)	# tmp79, c_7(D)->c[i_1].real
	.loc 1 136 0 discriminator 2
	movq	-80(%rbp), %rax	# c, tmp80
	movl	-24(%rbp), %edx	# i, tmp82
	movslq	%edx, %rdx	# tmp82, tmp81
	salq	$4, %rdx	#, tmp83
	addq	%rdx, %rax	# tmp83, tmp84
	leaq	8(%rax), %rdx	#, tmp85
	movl	$0, %eax	#, tmp86
	movq	%rax, (%rdx)	# tmp86, c_7(D)->c[i_1].imag
	.loc 1 134 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L2:
	.loc 1 134 0 is_stmt 0 discriminator 1
	cmpl	$2, -24(%rbp)	#, i
	jle	.L3	#,
	.loc 1 138 0 is_stmt 1
	movl	$0, -20(%rbp)	#, n
	jmp	.L4	#
.L13:
	.loc 1 139 0
	movl	-20(%rbp), %eax	# n, tmp87
	movslq	%eax, %rdx	# tmp87, D.2203
	movq	%rdx, %rax	# D.2203, tmp88
	salq	$3, %rax	#, tmp88
	addq	%rdx, %rax	# D.2203, tmp88
	salq	$4, %rax	#, tmp89
	movq	%rax, %rdx	# tmp88, D.2203
	movq	-40(%rbp), %rax	# a, tmp90
	leaq	(%rdx,%rax), %r12	#, at
	.loc 1 140 0
	movl	-20(%rbp), %eax	# n, n
	cmpl	$1, %eax	#, n
	je	.L6	#,
	cmpl	$1, %eax	#, n
	jg	.L7	#,
	testl	%eax, %eax	# n
	je	.L8	#,
	jmp	.L5	#
.L7:
	cmpl	$2, %eax	#, n
	je	.L9	#,
	cmpl	$3, %eax	#, n
	je	.L10	#,
	jmp	.L5	#
.L8:
	.loc 1 141 0
	movq	-48(%rbp), %rbx	# b0, b
	jmp	.L5	#
.L6:
	.loc 1 142 0
	movq	-56(%rbp), %rbx	# b1, b
	jmp	.L5	#
.L9:
	.loc 1 143 0
	movq	-64(%rbp), %rbx	# b2, b
	jmp	.L5	#
.L10:
	.loc 1 144 0
	movq	-72(%rbp), %rbx	# b3, b
	nop
.L5:
	.loc 1 146 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L11	#
.L12:
	.loc 1 148 0 discriminator 2
	movl	-24(%rbp), %eax	# i, tmp93
	movslq	%eax, %rdx	# tmp93, tmp92
	movq	%rdx, %rax	# tmp92, tmp94
	addq	%rax, %rax	# tmp94
	addq	%rdx, %rax	# tmp92, tmp94
	salq	$4, %rax	#, tmp95
	addq	%r12, %rax	# at, tmp96
	movsd	(%rax), %xmm1	# at_14->e[i_2][0].real, ar
	movl	-24(%rbp), %eax	# i, tmp98
	movslq	%eax, %rdx	# tmp98, tmp97
	movq	%rdx, %rax	# tmp97, tmp99
	addq	%rax, %rax	# tmp99
	addq	%rdx, %rax	# tmp97, tmp99
	salq	$4, %rax	#, tmp100
	addq	%r12, %rax	# at, tmp101
	addq	$8, %rax	#, tmp102
	movsd	(%rax), %xmm7	# at_14->e[i_2][0].imag, ai
	.loc 1 149 0 discriminator 2
	movsd	(%rbx), %xmm6	# b_4->c[0].real, br
	movapd	%xmm6, %xmm5	# br, br
	movsd	8(%rbx), %xmm0	# b_4->c[0].imag, bi
	movapd	%xmm0, %xmm3	# bi, bi
	.loc 1 150 0 discriminator 2
	movapd	%xmm1, %xmm6	# ar, ar
	movapd	%xmm6, %xmm2	# ar, cr
	mulsd	%xmm5, %xmm2	# br, cr
	movapd	%xmm2, %xmm1	# cr, cr
	movapd	%xmm7, %xmm0	# ai, ai
	movapd	%xmm0, %xmm7	# ai, t
	movapd	%xmm3, %xmm2	# bi, bi
	mulsd	%xmm2, %xmm7	# bi, t
	movapd	%xmm1, %xmm3	# cr, cr
	subsd	%xmm7, %xmm3	# t, cr
	movapd	%xmm3, %xmm7	# cr, cr
	.loc 1 151 0 discriminator 2
	movapd	%xmm6, %xmm4	# ar, ci
	mulsd	%xmm2, %xmm4	# bi, ci
	movapd	%xmm4, %xmm6	# ci, ci
	movapd	%xmm0, %xmm1	# ai, t
	mulsd	%xmm5, %xmm1	# br, t
	movapd	%xmm6, %xmm5	# ci, ci
	addsd	%xmm1, %xmm5	# t, ci
	movapd	%xmm5, %xmm2	# ci, ci
	.loc 1 153 0 discriminator 2
	movl	-24(%rbp), %eax	# i, tmp104
	movslq	%eax, %rdx	# tmp104, tmp103
	movq	%rdx, %rax	# tmp103, tmp105
	addq	%rax, %rax	# tmp105
	addq	%rdx, %rax	# tmp103, tmp105
	salq	$4, %rax	#, tmp106
	addq	%r12, %rax	# at, tmp107
	addq	$16, %rax	#, tmp108
	movsd	(%rax), %xmm6	# at_14->e[i_2][1].real, ar
	movapd	%xmm6, %xmm4	# ar, ar
	movl	-24(%rbp), %eax	# i, tmp110
	movslq	%eax, %rdx	# tmp110, tmp109
	movq	%rdx, %rax	# tmp109, tmp111
	addq	%rax, %rax	# tmp111
	addq	%rdx, %rax	# tmp109, tmp111
	salq	$4, %rax	#, tmp112
	addq	%r12, %rax	# at, tmp113
	addq	$24, %rax	#, tmp114
	movsd	(%rax), %xmm5	# at_14->e[i_2][1].imag, ai
	movapd	%xmm5, %xmm0	# ai, ai
	.loc 1 154 0 discriminator 2
	movsd	16(%rbx), %xmm1	# b_4->c[1].real, br
	movapd	%xmm1, %xmm8	# br, br
	movsd	24(%rbx), %xmm3	# b_4->c[1].imag, bi
	movapd	%xmm3, %xmm9	# bi, bi
	.loc 1 155 0 discriminator 2
	movapd	%xmm4, %xmm6	# ar, t
	mulsd	%xmm8, %xmm6	# br, t
	movapd	%xmm6, %xmm5	# t, t
	movapd	%xmm7, %xmm3	# cr, cr
	addsd	%xmm5, %xmm3	# t, cr
	movapd	%xmm0, %xmm5	# ai, ai
	movapd	%xmm5, %xmm0	# ai, t
	mulsd	%xmm9, %xmm0	# bi, t
	movapd	%xmm0, %xmm1	# t, t
	subsd	%xmm1, %xmm3	# t, cr
	.loc 1 156 0 discriminator 2
	movapd	%xmm4, %xmm6	# ar, t
	mulsd	%xmm9, %xmm6	# bi, t
	addsd	%xmm6, %xmm2	# t, ci
	movapd	%xmm2, %xmm4	# ci, ci
	mulsd	%xmm8, %xmm5	# br, t
	addsd	%xmm5, %xmm4	# t, ci
	movapd	%xmm4, %xmm5	# ci, ci
	.loc 1 158 0 discriminator 2
	movl	-24(%rbp), %eax	# i, tmp116
	movslq	%eax, %rdx	# tmp116, tmp115
	movq	%rdx, %rax	# tmp115, tmp117
	addq	%rax, %rax	# tmp117
	addq	%rdx, %rax	# tmp115, tmp117
	salq	$4, %rax	#, tmp118
	addq	%r12, %rax	# at, tmp119
	addq	$32, %rax	#, tmp120
	movsd	(%rax), %xmm7	# at_14->e[i_2][2].real, ar
	movl	-24(%rbp), %eax	# i, tmp122
	movslq	%eax, %rdx	# tmp122, tmp121
	movq	%rdx, %rax	# tmp121, tmp123
	addq	%rax, %rax	# tmp123
	addq	%rdx, %rax	# tmp121, tmp123
	salq	$4, %rax	#, tmp124
	addq	%r12, %rax	# at, tmp125
	addq	$40, %rax	#, tmp126
	movsd	(%rax), %xmm4	# at_14->e[i_2][2].imag, ai
	.loc 1 159 0 discriminator 2
	movsd	32(%rbx), %xmm6	# b_4->c[2].real, br
	movsd	40(%rbx), %xmm0	# b_4->c[2].imag, bi
	.loc 1 160 0 discriminator 2
	movapd	%xmm7, %xmm1	# ar, t
	mulsd	%xmm6, %xmm1	# br, t
	movapd	%xmm1, %xmm2	# t, t
	addsd	%xmm2, %xmm3	# t, cr
	movapd	%xmm4, %xmm2	# ai, t
	movapd	%xmm0, %xmm1	# bi, bi
	mulsd	%xmm1, %xmm2	# bi, t
	movapd	%xmm2, %xmm0	# t, t
	subsd	%xmm0, %xmm3	# t, cr
	.loc 1 161 0 discriminator 2
	mulsd	%xmm1, %xmm7	# bi, t
	addsd	%xmm7, %xmm5	# t, ci
	movapd	%xmm5, %xmm2	# ci, ci
	mulsd	%xmm6, %xmm4	# br, t
	addsd	%xmm4, %xmm2	# t, ci
	movapd	%xmm2, %xmm4	# ci, ci
	.loc 1 163 0 discriminator 2
	movq	-80(%rbp), %rax	# c, tmp127
	movl	-24(%rbp), %edx	# i, tmp129
	movslq	%edx, %rdx	# tmp129, tmp128
	salq	$4, %rdx	#, tmp130
	addq	%rdx, %rax	# tmp130, tmp131
	movsd	(%rax), %xmm0	# c_7(D)->c[i_2].real, D.2204
	addsd	%xmm3, %xmm0	# cr, D.2204
	movq	-80(%rbp), %rax	# c, tmp132
	movl	-24(%rbp), %edx	# i, tmp134
	movslq	%edx, %rdx	# tmp134, tmp133
	salq	$4, %rdx	#, tmp135
	addq	%rdx, %rax	# tmp135, tmp136
	movsd	%xmm0, (%rax)	# D.2204, c_7(D)->c[i_2].real
	.loc 1 164 0 discriminator 2
	movq	-80(%rbp), %rax	# c, tmp137
	movl	-24(%rbp), %edx	# i, tmp139
	movslq	%edx, %rdx	# tmp139, tmp138
	salq	$4, %rdx	#, tmp140
	addq	%rdx, %rax	# tmp140, tmp141
	addq	$8, %rax	#, tmp142
	movsd	(%rax), %xmm0	# c_7(D)->c[i_2].imag, D.2204
	addsd	%xmm4, %xmm0	# ci, D.2204
	movq	-80(%rbp), %rax	# c, tmp143
	movl	-24(%rbp), %edx	# i, tmp145
	movslq	%edx, %rdx	# tmp145, tmp144
	salq	$4, %rdx	#, tmp146
	addq	%rdx, %rax	# tmp146, tmp147
	addq	$8, %rax	#, tmp148
	movsd	%xmm0, (%rax)	# D.2204, c_7(D)->c[i_2].imag
	.loc 1 146 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L11:
	.loc 1 146 0 is_stmt 0 discriminator 1
	cmpl	$2, -24(%rbp)	#, i
	jle	.L12	#,
	.loc 1 138 0 is_stmt 1
	addl	$1, -20(%rbp)	#, n
.L4:
	.loc 1 138 0 is_stmt 0 discriminator 1
	cmpl	$3, -20(%rbp)	#, n
	jle	.L13	#,
	.loc 1 167 0 is_stmt 1
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	mult_su3_mat_vec_sum_4dir, .-mult_su3_mat_vec_sum_4dir
.Letext0:
	.file 2 "complex.h"
	.file 3 "su3.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1c9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF9
	.byte	0x1
	.long	.LASF10
	.long	.LASF11
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
	.uleb128 0x2
	.byte	0x30
	.byte	0x3
	.byte	0xf
	.long	0xb5
	.uleb128 0x6
	.string	"c"
	.byte	0x3
	.byte	0xf
	.long	0xb5
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x55
	.long	0xc5
	.uleb128 0x8
	.long	0x90
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x3
	.byte	0xf
	.long	0xa2
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0xa
	.long	.LASF12
	.byte	0x1
	.byte	0x7f
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c0
	.uleb128 0xb
	.string	"a"
	.byte	0x1
	.byte	0x7f
	.long	0x1c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"b0"
	.byte	0x1
	.byte	0x7f
	.long	0x1c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xb
	.string	"b1"
	.byte	0x1
	.byte	0x80
	.long	0x1c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xb
	.string	"b2"
	.byte	0x1
	.byte	0x80
	.long	0x1c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xb
	.string	"b3"
	.byte	0x1
	.byte	0x80
	.long	0x1c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xb
	.string	"c"
	.byte	0x1
	.byte	0x80
	.long	0x1c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x81
	.long	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"n"
	.byte	0x1
	.byte	0x81
	.long	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"at"
	.byte	0x1
	.byte	0x82
	.long	0x1c0
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x83
	.long	0x1c6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"t"
	.byte	0x1
	.byte	0x84
	.long	0x4e
	.uleb128 0xd
	.string	"ar"
	.byte	0x1
	.byte	0x84
	.long	0x4e
	.uleb128 0xd
	.string	"ai"
	.byte	0x1
	.byte	0x84
	.long	0x4e
	.uleb128 0xd
	.string	"br"
	.byte	0x1
	.byte	0x84
	.long	0x4e
	.uleb128 0xd
	.string	"bi"
	.byte	0x1
	.byte	0x84
	.long	0x4e
	.uleb128 0xd
	.string	"cr"
	.byte	0x1
	.byte	0x84
	.long	0x4e
	.uleb128 0xd
	.string	"ci"
	.byte	0x1
	.byte	0x84
	.long	0x4e
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x97
	.uleb128 0xe
	.byte	0x8
	.long	0xc5
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
.LASF7:
	.string	"su3_vector"
.LASF6:
	.string	"su3_matrix"
.LASF12:
	.string	"mult_su3_mat_vec_sum_4dir"
.LASF3:
	.string	"long unsigned int"
.LASF11:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF2:
	.string	"double"
.LASF1:
	.string	"imag"
.LASF8:
	.string	"unsigned int"
.LASF0:
	.string	"real"
.LASF4:
	.string	"sizetype"
.LASF9:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF10:
	.string	"m_mv_s_4dir.c"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
