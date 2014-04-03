	.file	"s_m_s_mat.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# s_m_s_mat.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	scalar_mult_sub_su3_matrix
	.type	scalar_mult_sub_su3_matrix, @function
scalar_mult_sub_su3_matrix:
.LFB0:
	.file 1 "s_m_s_mat.c"
	.loc 1 13 0
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
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	movsd	%xmm0, -40(%rbp)	# s, s
	movq	%rdx, -48(%rbp)	# c, c
	.loc 1 17 0
	movl	$0, %ebx	#, i
	jmp	.L2	#
.L5:
	.loc 1 17 0 is_stmt 0 discriminator 2
	movl	$0, %r12d	#, j
	jmp	.L3	#
.L4:
	.loc 1 18 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rcx	# a, tmp69
	movslq	%r12d, %rsi	# j, tmp70
	movslq	%ebx, %rdx	# i, tmp71
	movq	%rdx, %rax	# tmp71, tmp72
	addq	%rax, %rax	# tmp72
	addq	%rdx, %rax	# tmp71, tmp72
	addq	%rsi, %rax	# tmp70, tmp73
	salq	$4, %rax	#, tmp74
	addq	%rcx, %rax	# tmp69, tmp75
	movsd	(%rax), %xmm1	# a_5(D)->e[i_1][j_2].real, D.2185
	movq	-32(%rbp), %rcx	# b, tmp76
	movslq	%r12d, %rsi	# j, tmp77
	movslq	%ebx, %rdx	# i, tmp78
	movq	%rdx, %rax	# tmp78, tmp79
	addq	%rax, %rax	# tmp79
	addq	%rdx, %rax	# tmp78, tmp79
	addq	%rsi, %rax	# tmp77, tmp80
	salq	$4, %rax	#, tmp81
	addq	%rcx, %rax	# tmp76, tmp82
	movsd	(%rax), %xmm0	# b_7(D)->e[i_1][j_2].real, D.2185
	mulsd	-40(%rbp), %xmm0	# s, D.2185
	subsd	%xmm0, %xmm1	# D.2185, D.2185
	movapd	%xmm1, %xmm0	# D.2185, D.2185
	movq	-48(%rbp), %rcx	# c, tmp83
	movslq	%r12d, %rsi	# j, tmp84
	movslq	%ebx, %rdx	# i, tmp85
	movq	%rdx, %rax	# tmp85, tmp86
	addq	%rax, %rax	# tmp86
	addq	%rdx, %rax	# tmp85, tmp86
	addq	%rsi, %rax	# tmp84, tmp87
	salq	$4, %rax	#, tmp88
	addq	%rcx, %rax	# tmp83, tmp89
	movsd	%xmm0, (%rax)	# D.2185, c_12(D)->e[i_1][j_2].real
	.loc 1 19 0 discriminator 2
	movq	-24(%rbp), %rcx	# a, tmp90
	movslq	%r12d, %rsi	# j, tmp91
	movslq	%ebx, %rdx	# i, tmp92
	movq	%rdx, %rax	# tmp92, tmp93
	addq	%rax, %rax	# tmp93
	addq	%rdx, %rax	# tmp92, tmp93
	addq	%rsi, %rax	# tmp91, tmp94
	salq	$4, %rax	#, tmp95
	addq	%rcx, %rax	# tmp90, tmp96
	addq	$8, %rax	#, tmp97
	movsd	(%rax), %xmm1	# a_5(D)->e[i_1][j_2].imag, D.2185
	movq	-32(%rbp), %rcx	# b, tmp98
	movslq	%r12d, %rsi	# j, tmp99
	movslq	%ebx, %rdx	# i, tmp100
	movq	%rdx, %rax	# tmp100, tmp101
	addq	%rax, %rax	# tmp101
	addq	%rdx, %rax	# tmp100, tmp101
	addq	%rsi, %rax	# tmp99, tmp102
	salq	$4, %rax	#, tmp103
	addq	%rcx, %rax	# tmp98, tmp104
	addq	$8, %rax	#, tmp105
	movsd	(%rax), %xmm0	# b_7(D)->e[i_1][j_2].imag, D.2185
	mulsd	-40(%rbp), %xmm0	# s, D.2185
	subsd	%xmm0, %xmm1	# D.2185, D.2185
	movapd	%xmm1, %xmm0	# D.2185, D.2185
	movq	-48(%rbp), %rcx	# c, tmp106
	movslq	%r12d, %rsi	# j, tmp107
	movslq	%ebx, %rdx	# i, tmp108
	movq	%rdx, %rax	# tmp108, tmp109
	addq	%rax, %rax	# tmp109
	addq	%rdx, %rax	# tmp108, tmp109
	addq	%rsi, %rax	# tmp107, tmp110
	salq	$4, %rax	#, tmp111
	addq	%rcx, %rax	# tmp106, tmp112
	addq	$8, %rax	#, tmp113
	movsd	%xmm0, (%rax)	# D.2185, c_12(D)->e[i_1][j_2].imag
	.loc 1 17 0 discriminator 2
	addl	$1, %r12d	#, j
.L3:
	.loc 1 17 0 is_stmt 0 discriminator 1
	cmpl	$2, %r12d	#, j
	jle	.L4	#,
	.loc 1 17 0 discriminator 3
	addl	$1, %ebx	#, i
.L2:
	.loc 1 17 0 discriminator 1
	cmpl	$2, %ebx	#, i
	jle	.L5	#,
	.loc 1 50 0 is_stmt 1
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	scalar_mult_sub_su3_matrix, .-scalar_mult_sub_su3_matrix
.Letext0:
	.file 2 "complex.h"
	.file 3 "su3.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x117
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
	.byte	0xc
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x114
	.uleb128 0xb
	.string	"a"
	.byte	0x1
	.byte	0xc
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"b"
	.byte	0x1
	.byte	0xc
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"s"
	.byte	0x1
	.byte	0xc
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"c"
	.byte	0x1
	.byte	0xd
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x10
	.long	0xa2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.byte	0x10
	.long	0xa2
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0xd
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
.LASF3:
	.string	"long unsigned int"
.LASF10:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF2:
	.string	"double"
.LASF9:
	.string	"s_m_s_mat.c"
.LASF1:
	.string	"imag"
.LASF7:
	.string	"unsigned int"
.LASF0:
	.string	"real"
.LASF11:
	.string	"scalar_mult_sub_su3_matrix"
.LASF4:
	.string	"sizetype"
.LASF8:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
