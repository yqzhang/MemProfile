	.file	"m_amatvec.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# m_amatvec.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	mult_adj_su3_mat_vec
	.type	mult_adj_su3_mat_vec, @function
mult_adj_su3_mat_vec:
.LFB0:
	.file 1 "m_amatvec.c"
	.loc 1 111 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	movq	%rdx, -40(%rbp)	# c, c
	.loc 1 114 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L2	#
.L3:
	.loc 1 116 0 discriminator 2
	movq	-24(%rbp), %rax	# a, tmp66
	movl	-4(%rbp), %edx	# i, tmp68
	movslq	%edx, %rdx	# tmp68, tmp67
	salq	$4, %rdx	#, tmp69
	addq	%rdx, %rax	# tmp69, tmp70
	movsd	(%rax), %xmm0	# a_3(D)->e[0][i_1].real, ar
	movq	-24(%rbp), %rax	# a, tmp71
	movl	-4(%rbp), %edx	# i, tmp73
	movslq	%edx, %rdx	# tmp73, tmp72
	salq	$4, %rdx	#, tmp74
	addq	%rdx, %rax	# tmp74, tmp75
	addq	$8, %rax	#, tmp76
	movsd	(%rax), %xmm5	# a_3(D)->e[0][i_1].imag, ai
	movapd	%xmm5, %xmm6	# ai, ai
	.loc 1 117 0 discriminator 2
	movq	-32(%rbp), %rax	# b, tmp77
	movsd	(%rax), %xmm4	# b_6(D)->c[0].real, br
	movapd	%xmm4, %xmm8	# br, br
	movq	-32(%rbp), %rax	# b, tmp78
	movsd	8(%rax), %xmm3	# b_6(D)->c[0].imag, bi
	.loc 1 118 0 discriminator 2
	movapd	%xmm0, %xmm1	# ar, cr
	mulsd	%xmm8, %xmm1	# br, cr
	movapd	%xmm1, %xmm7	# cr, cr
	movapd	%xmm6, %xmm4	# ai, ai
	movapd	%xmm4, %xmm6	# ai, t
	movapd	%xmm3, %xmm1	# bi, bi
	mulsd	%xmm1, %xmm6	# bi, t
	movapd	%xmm6, %xmm5	# t, t
	movapd	%xmm7, %xmm2	# cr, cr
	addsd	%xmm5, %xmm2	# t, cr
	movapd	%xmm2, %xmm6	# cr, cr
	.loc 1 119 0 discriminator 2
	movapd	%xmm0, %xmm3	# ar, ci
	mulsd	%xmm1, %xmm3	# bi, ci
	movapd	%xmm3, %xmm5	# ci, ci
	movapd	%xmm4, %xmm7	# ai, t
	mulsd	%xmm8, %xmm7	# br, t
	movapd	%xmm5, %xmm4	# ci, ci
	subsd	%xmm7, %xmm4	# t, ci
	movapd	%xmm4, %xmm1	# ci, ci
	.loc 1 121 0 discriminator 2
	movq	-24(%rbp), %rax	# a, tmp79
	movl	-4(%rbp), %edx	# i, tmp81
	movslq	%edx, %rdx	# tmp81, tmp80
	addq	$3, %rdx	#, tmp82
	salq	$4, %rdx	#, tmp83
	addq	%rdx, %rax	# tmp83, tmp84
	movsd	(%rax), %xmm5	# a_3(D)->e[1][i_1].real, ar
	movq	-24(%rbp), %rax	# a, tmp85
	movl	-4(%rbp), %edx	# i, tmp87
	movslq	%edx, %rdx	# tmp87, tmp86
	addq	$3, %rdx	#, tmp88
	salq	$4, %rdx	#, tmp89
	addq	%rdx, %rax	# tmp89, tmp90
	addq	$8, %rax	#, tmp91
	movsd	(%rax), %xmm7	# a_3(D)->e[1][i_1].imag, ai
	movapd	%xmm7, %xmm4	# ai, ai
	.loc 1 122 0 discriminator 2
	movq	-32(%rbp), %rax	# b, tmp92
	movsd	16(%rax), %xmm3	# b_6(D)->c[1].real, br
	movapd	%xmm3, %xmm9	# br, br
	movq	-32(%rbp), %rax	# b, tmp93
	movsd	24(%rax), %xmm0	# b_6(D)->c[1].imag, bi
	movapd	%xmm0, %xmm10	# bi, bi
	.loc 1 123 0 discriminator 2
	movapd	%xmm5, %xmm0	# ar, t
	mulsd	%xmm9, %xmm0	# br, t
	movapd	%xmm0, %xmm7	# t, t
	movapd	%xmm6, %xmm2	# cr, cr
	addsd	%xmm7, %xmm2	# t, cr
	movapd	%xmm4, %xmm6	# ai, t
	mulsd	%xmm10, %xmm6	# bi, t
	movapd	%xmm6, %xmm0	# t, t
	addsd	%xmm0, %xmm2	# t, cr
	.loc 1 124 0 discriminator 2
	mulsd	%xmm10, %xmm5	# bi, t
	addsd	%xmm5, %xmm1	# t, ci
	movapd	%xmm1, %xmm3	# ci, ci
	movapd	%xmm4, %xmm6	# ai, t
	mulsd	%xmm9, %xmm6	# br, t
	subsd	%xmm6, %xmm3	# t, ci
	movapd	%xmm3, %xmm4	# ci, ci
	.loc 1 126 0 discriminator 2
	movq	-24(%rbp), %rax	# a, tmp94
	movl	-4(%rbp), %edx	# i, tmp96
	movslq	%edx, %rdx	# tmp96, tmp95
	addq	$6, %rdx	#, tmp97
	salq	$4, %rdx	#, tmp98
	addq	%rdx, %rax	# tmp98, tmp99
	movsd	(%rax), %xmm0	# a_3(D)->e[2][i_1].real, ar
	movq	-24(%rbp), %rax	# a, tmp100
	movl	-4(%rbp), %edx	# i, tmp102
	movslq	%edx, %rdx	# tmp102, tmp101
	addq	$6, %rdx	#, tmp103
	salq	$4, %rdx	#, tmp104
	addq	%rdx, %rax	# tmp104, tmp105
	addq	$8, %rax	#, tmp106
	movsd	(%rax), %xmm7	# a_3(D)->e[2][i_1].imag, ai
	.loc 1 127 0 discriminator 2
	movq	-32(%rbp), %rax	# b, tmp107
	movsd	32(%rax), %xmm6	# b_6(D)->c[2].real, br
	movq	-32(%rbp), %rax	# b, tmp108
	movsd	40(%rax), %xmm5	# b_6(D)->c[2].imag, bi
	.loc 1 128 0 discriminator 2
	movapd	%xmm0, %xmm3	# ar, t
	mulsd	%xmm6, %xmm3	# br, t
	movapd	%xmm3, %xmm1	# t, t
	addsd	%xmm1, %xmm2	# t, cr
	movapd	%xmm7, %xmm1	# ai, t
	mulsd	%xmm5, %xmm1	# bi, t
	movapd	%xmm1, %xmm3	# t, t
	addsd	%xmm3, %xmm2	# t, cr
	.loc 1 129 0 discriminator 2
	mulsd	%xmm5, %xmm0	# bi, t
	addsd	%xmm0, %xmm4	# t, ci
	movapd	%xmm4, %xmm1	# ci, ci
	mulsd	%xmm6, %xmm7	# br, t
	subsd	%xmm7, %xmm1	# t, ci
	movapd	%xmm1, %xmm3	# ci, ci
	.loc 1 131 0 discriminator 2
	movq	-40(%rbp), %rax	# c, tmp109
	movl	-4(%rbp), %edx	# i, tmp111
	movslq	%edx, %rdx	# tmp111, tmp110
	salq	$4, %rdx	#, tmp112
	addq	%rdx, %rax	# tmp112, tmp113
	movsd	%xmm2, (%rax)	# cr, c_39(D)->c[i_1].real
	.loc 1 132 0 discriminator 2
	movq	-40(%rbp), %rax	# c, tmp114
	movl	-4(%rbp), %edx	# i, tmp116
	movslq	%edx, %rdx	# tmp116, tmp115
	salq	$4, %rdx	#, tmp117
	addq	%rdx, %rax	# tmp117, tmp118
	addq	$8, %rax	#, tmp119
	movsd	%xmm3, (%rax)	# ci, c_39(D)->c[i_1].imag
	.loc 1 114 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L2:
	.loc 1 114 0 is_stmt 0 discriminator 1
	cmpl	$2, -4(%rbp)	#, i
	jle	.L3	#,
	.loc 1 134 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	mult_adj_su3_mat_vec, .-mult_adj_su3_mat_vec
.Letext0:
	.file 2 "complex.h"
	.file 3 "su3.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x17a
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
	.byte	0x6f
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x171
	.uleb128 0xb
	.string	"a"
	.byte	0x1
	.byte	0x6f
	.long	0x171
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"b"
	.byte	0x1
	.byte	0x6f
	.long	0x177
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"c"
	.byte	0x1
	.byte	0x6f
	.long	0x177
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x70
	.long	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"t"
	.byte	0x1
	.byte	0x71
	.long	0x4e
	.uleb128 0xd
	.string	"ar"
	.byte	0x1
	.byte	0x71
	.long	0x4e
	.uleb128 0xd
	.string	"ai"
	.byte	0x1
	.byte	0x71
	.long	0x4e
	.uleb128 0xd
	.string	"br"
	.byte	0x1
	.byte	0x71
	.long	0x4e
	.uleb128 0xd
	.string	"bi"
	.byte	0x1
	.byte	0x71
	.long	0x4e
	.uleb128 0xd
	.string	"cr"
	.byte	0x1
	.byte	0x71
	.long	0x4e
	.uleb128 0xd
	.string	"ci"
	.byte	0x1
	.byte	0x71
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
.LASF12:
	.string	"mult_adj_su3_mat_vec"
.LASF6:
	.string	"su3_matrix"
.LASF10:
	.string	"m_amatvec.c"
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
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
