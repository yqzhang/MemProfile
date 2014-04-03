	.file	"s_m_mat.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# s_m_mat.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	scalar_mult_su3_matrix
	.type	scalar_mult_su3_matrix, @function
scalar_mult_su3_matrix:
.LFB0:
	.file 1 "s_m_mat.c"
	.loc 1 11 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# a, a
	movsd	%xmm0, -16(%rbp)	# s, s
	movq	%rsi, -24(%rbp)	# b, b
	.loc 1 27 0
	movsd	-16(%rbp), %xmm1	# s, ss
	movapd	%xmm1, %xmm2	# ss, ss
	.loc 1 29 0
	movq	-8(%rbp), %rax	# a, tmp96
	movsd	(%rax), %xmm0	# a_3(D)->e[0][0].real, D.2205
	mulsd	%xmm2, %xmm0	# ss, D.2205
	movq	-24(%rbp), %rax	# b, tmp97
	movsd	%xmm0, (%rax)	# D.2205, b_6(D)->e[0][0].real
	.loc 1 30 0
	movq	-8(%rbp), %rax	# a, tmp98
	movsd	8(%rax), %xmm0	# a_3(D)->e[0][0].imag, D.2205
	mulsd	%xmm2, %xmm0	# ss, D.2205
	movq	-24(%rbp), %rax	# b, tmp99
	movsd	%xmm0, 8(%rax)	# D.2205, b_6(D)->e[0][0].imag
	.loc 1 31 0
	movq	-8(%rbp), %rax	# a, tmp100
	movsd	16(%rax), %xmm0	# a_3(D)->e[0][1].real, D.2205
	mulsd	%xmm2, %xmm0	# ss, D.2205
	movq	-24(%rbp), %rax	# b, tmp101
	movsd	%xmm0, 16(%rax)	# D.2205, b_6(D)->e[0][1].real
	.loc 1 32 0
	movq	-8(%rbp), %rax	# a, tmp102
	movsd	24(%rax), %xmm0	# a_3(D)->e[0][1].imag, D.2205
	mulsd	%xmm2, %xmm0	# ss, D.2205
	movq	-24(%rbp), %rax	# b, tmp103
	movsd	%xmm0, 24(%rax)	# D.2205, b_6(D)->e[0][1].imag
	.loc 1 33 0
	movq	-8(%rbp), %rax	# a, tmp104
	movsd	32(%rax), %xmm0	# a_3(D)->e[0][2].real, D.2205
	mulsd	%xmm2, %xmm0	# ss, D.2205
	movq	-24(%rbp), %rax	# b, tmp105
	movsd	%xmm0, 32(%rax)	# D.2205, b_6(D)->e[0][2].real
	.loc 1 34 0
	movq	-8(%rbp), %rax	# a, tmp106
	movsd	40(%rax), %xmm0	# a_3(D)->e[0][2].imag, D.2205
	mulsd	%xmm2, %xmm0	# ss, D.2205
	movq	-24(%rbp), %rax	# b, tmp107
	movsd	%xmm0, 40(%rax)	# D.2205, b_6(D)->e[0][2].imag
	.loc 1 36 0
	movq	-8(%rbp), %rax	# a, tmp108
	movsd	48(%rax), %xmm0	# a_3(D)->e[1][0].real, D.2205
	mulsd	%xmm2, %xmm0	# ss, D.2205
	movq	-24(%rbp), %rax	# b, tmp109
	movsd	%xmm0, 48(%rax)	# D.2205, b_6(D)->e[1][0].real
	.loc 1 37 0
	movq	-8(%rbp), %rax	# a, tmp110
	movsd	56(%rax), %xmm0	# a_3(D)->e[1][0].imag, D.2205
	mulsd	%xmm2, %xmm0	# ss, D.2205
	movq	-24(%rbp), %rax	# b, tmp111
	movsd	%xmm0, 56(%rax)	# D.2205, b_6(D)->e[1][0].imag
	.loc 1 38 0
	movq	-8(%rbp), %rax	# a, tmp112
	movsd	64(%rax), %xmm0	# a_3(D)->e[1][1].real, D.2205
	mulsd	%xmm2, %xmm0	# ss, D.2205
	movq	-24(%rbp), %rax	# b, tmp113
	movsd	%xmm0, 64(%rax)	# D.2205, b_6(D)->e[1][1].real
	.loc 1 39 0
	movq	-8(%rbp), %rax	# a, tmp114
	movsd	72(%rax), %xmm0	# a_3(D)->e[1][1].imag, D.2205
	mulsd	%xmm2, %xmm0	# ss, D.2205
	movq	-24(%rbp), %rax	# b, tmp115
	movsd	%xmm0, 72(%rax)	# D.2205, b_6(D)->e[1][1].imag
	.loc 1 40 0
	movq	-8(%rbp), %rax	# a, tmp116
	movsd	80(%rax), %xmm0	# a_3(D)->e[1][2].real, D.2205
	mulsd	%xmm2, %xmm0	# ss, D.2205
	movq	-24(%rbp), %rax	# b, tmp117
	movsd	%xmm0, 80(%rax)	# D.2205, b_6(D)->e[1][2].real
	.loc 1 41 0
	movq	-8(%rbp), %rax	# a, tmp118
	movsd	88(%rax), %xmm0	# a_3(D)->e[1][2].imag, D.2205
	mulsd	%xmm2, %xmm0	# ss, D.2205
	movq	-24(%rbp), %rax	# b, tmp119
	movsd	%xmm0, 88(%rax)	# D.2205, b_6(D)->e[1][2].imag
	.loc 1 43 0
	movq	-8(%rbp), %rax	# a, tmp120
	movsd	96(%rax), %xmm0	# a_3(D)->e[2][0].real, D.2205
	mulsd	%xmm2, %xmm0	# ss, D.2205
	movq	-24(%rbp), %rax	# b, tmp121
	movsd	%xmm0, 96(%rax)	# D.2205, b_6(D)->e[2][0].real
	.loc 1 44 0
	movq	-8(%rbp), %rax	# a, tmp122
	movsd	104(%rax), %xmm0	# a_3(D)->e[2][0].imag, D.2205
	mulsd	%xmm2, %xmm0	# ss, D.2205
	movq	-24(%rbp), %rax	# b, tmp123
	movsd	%xmm0, 104(%rax)	# D.2205, b_6(D)->e[2][0].imag
	.loc 1 45 0
	movq	-8(%rbp), %rax	# a, tmp124
	movsd	112(%rax), %xmm0	# a_3(D)->e[2][1].real, D.2205
	mulsd	%xmm2, %xmm0	# ss, D.2205
	movq	-24(%rbp), %rax	# b, tmp125
	movsd	%xmm0, 112(%rax)	# D.2205, b_6(D)->e[2][1].real
	.loc 1 46 0
	movq	-8(%rbp), %rax	# a, tmp126
	movsd	120(%rax), %xmm0	# a_3(D)->e[2][1].imag, D.2205
	mulsd	%xmm2, %xmm0	# ss, D.2205
	movq	-24(%rbp), %rax	# b, tmp127
	movsd	%xmm0, 120(%rax)	# D.2205, b_6(D)->e[2][1].imag
	.loc 1 47 0
	movq	-8(%rbp), %rax	# a, tmp128
	movsd	128(%rax), %xmm0	# a_3(D)->e[2][2].real, D.2205
	mulsd	%xmm2, %xmm0	# ss, D.2205
	movq	-24(%rbp), %rax	# b, tmp129
	movsd	%xmm0, 128(%rax)	# D.2205, b_6(D)->e[2][2].real
	.loc 1 48 0
	movq	-8(%rbp), %rax	# a, tmp130
	movsd	136(%rax), %xmm0	# a_3(D)->e[2][2].imag, D.2205
	mulsd	%xmm2, %xmm0	# ss, D.2205
	movq	-24(%rbp), %rax	# b, tmp131
	movsd	%xmm0, 136(%rax)	# D.2205, b_6(D)->e[2][2].imag
	.loc 1 51 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	scalar_mult_su3_matrix, .-scalar_mult_su3_matrix
.Letext0:
	.file 2 "complex.h"
	.file 3 "su3.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xff
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
	.byte	0xb
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xfc
	.uleb128 0xb
	.string	"a"
	.byte	0x1
	.byte	0xb
	.long	0xfc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"s"
	.byte	0x1
	.byte	0xb
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.string	"b"
	.byte	0x1
	.byte	0xb
	.long	0xfc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"ss"
	.byte	0x1
	.byte	0x18
	.long	0x4e
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
	.string	"s_m_mat.c"
.LASF1:
	.string	"imag"
.LASF7:
	.string	"unsigned int"
.LASF0:
	.string	"real"
.LASF11:
	.string	"scalar_mult_su3_matrix"
.LASF4:
	.string	"sizetype"
.LASF8:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
