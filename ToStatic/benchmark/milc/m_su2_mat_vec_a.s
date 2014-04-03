	.file	"m_su2_mat_vec_a.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# m_su2_mat_vec_a.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	mult_su2_mat_vec_elem_a
	.type	mult_su2_mat_vec_elem_a, @function
mult_su2_mat_vec_elem_a:
.LFB0:
	.file 1 "m_su2_mat_vec_a.c"
	.loc 1 11 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)	# u, u
	movq	%rsi, -80(%rbp)	# x0, x0
	movq	%rdx, -88(%rbp)	# x1, x1
	.loc 1 19 0
	movq	-80(%rbp), %rax	# x0, tmp127
	movq	8(%rax), %rdx	# *x0_1(D),
	movq	(%rax), %rax	# *x0_1(D), tmp128
	movq	%rax, -32(%rbp)	# tmp128, t0
	movq	%rdx, -24(%rbp)	#, t0
	movq	-88(%rbp), %rax	# x1, tmp129
	movq	8(%rax), %rdx	# *x1_2(D),
	movq	(%rax), %rax	# *x1_2(D), tmp130
	movq	%rax, -16(%rbp)	# tmp130, t1
	movq	%rdx, -8(%rbp)	#, t1
	.loc 1 21 0
	movsd	-32(%rbp), %xmm1	# t0.real, D.2240
	movq	-72(%rbp), %rax	# u, tmp131
	movsd	(%rax), %xmm0	# u_4(D)->e[0][0].real, D.2240
	mulsd	%xmm0, %xmm1	# D.2240, D.2240
	movsd	-24(%rbp), %xmm2	# t0.imag, D.2240
	movq	-72(%rbp), %rax	# u, tmp132
	movsd	8(%rax), %xmm0	# u_4(D)->e[0][0].imag, D.2240
	mulsd	%xmm2, %xmm0	# D.2240, D.2240
	addsd	%xmm1, %xmm0	# D.2240, D.2240
	movsd	%xmm0, -64(%rbp)	# D.2240, z0.real
	movsd	-24(%rbp), %xmm1	# t0.imag, D.2240
	movq	-72(%rbp), %rax	# u, tmp133
	movsd	(%rax), %xmm0	# u_4(D)->e[0][0].real, D.2240
	mulsd	%xmm1, %xmm0	# D.2240, D.2240
	movsd	-32(%rbp), %xmm2	# t0.real, D.2240
	movq	-72(%rbp), %rax	# u, tmp134
	movsd	8(%rax), %xmm1	# u_4(D)->e[0][0].imag, D.2240
	mulsd	%xmm2, %xmm1	# D.2240, D.2240
	subsd	%xmm1, %xmm0	# D.2240, D.2240
	movsd	%xmm0, -56(%rbp)	# D.2240, z0.imag
	.loc 1 22 0
	movsd	-16(%rbp), %xmm1	# t1.real, D.2240
	movq	-72(%rbp), %rax	# u, tmp135
	movsd	16(%rax), %xmm0	# u_4(D)->e[0][1].real, D.2240
	mulsd	%xmm0, %xmm1	# D.2240, D.2240
	movsd	-8(%rbp), %xmm2	# t1.imag, D.2240
	movq	-72(%rbp), %rax	# u, tmp136
	movsd	24(%rax), %xmm0	# u_4(D)->e[0][1].imag, D.2240
	mulsd	%xmm2, %xmm0	# D.2240, D.2240
	addsd	%xmm1, %xmm0	# D.2240, D.2240
	movsd	%xmm0, -48(%rbp)	# D.2240, z1.real
	movsd	-8(%rbp), %xmm1	# t1.imag, D.2240
	movq	-72(%rbp), %rax	# u, tmp137
	movsd	16(%rax), %xmm0	# u_4(D)->e[0][1].real, D.2240
	mulsd	%xmm1, %xmm0	# D.2240, D.2240
	movsd	-16(%rbp), %xmm2	# t1.real, D.2240
	movq	-72(%rbp), %rax	# u, tmp138
	movsd	24(%rax), %xmm1	# u_4(D)->e[0][1].imag, D.2240
	mulsd	%xmm2, %xmm1	# D.2240, D.2240
	subsd	%xmm1, %xmm0	# D.2240, D.2240
	movsd	%xmm0, -40(%rbp)	# D.2240, z1.imag
	.loc 1 23 0
	movsd	-64(%rbp), %xmm1	# z0.real, D.2240
	movsd	-48(%rbp), %xmm0	# z1.real, D.2240
	addsd	%xmm1, %xmm0	# D.2240, D.2240
	movq	-80(%rbp), %rax	# x0, tmp139
	movsd	%xmm0, (%rax)	# D.2240, x0_1(D)->real
	movsd	-56(%rbp), %xmm1	# z0.imag, D.2240
	movsd	-40(%rbp), %xmm0	# z1.imag, D.2240
	addsd	%xmm1, %xmm0	# D.2240, D.2240
	movq	-80(%rbp), %rax	# x0, tmp140
	movsd	%xmm0, 8(%rax)	# D.2240, x0_1(D)->imag
	.loc 1 24 0
	movsd	-32(%rbp), %xmm1	# t0.real, D.2240
	movq	-72(%rbp), %rax	# u, tmp141
	movsd	32(%rax), %xmm0	# u_4(D)->e[1][0].real, D.2240
	mulsd	%xmm0, %xmm1	# D.2240, D.2240
	movsd	-24(%rbp), %xmm2	# t0.imag, D.2240
	movq	-72(%rbp), %rax	# u, tmp142
	movsd	40(%rax), %xmm0	# u_4(D)->e[1][0].imag, D.2240
	mulsd	%xmm2, %xmm0	# D.2240, D.2240
	addsd	%xmm1, %xmm0	# D.2240, D.2240
	movsd	%xmm0, -64(%rbp)	# D.2240, z0.real
	movsd	-24(%rbp), %xmm1	# t0.imag, D.2240
	movq	-72(%rbp), %rax	# u, tmp143
	movsd	32(%rax), %xmm0	# u_4(D)->e[1][0].real, D.2240
	mulsd	%xmm1, %xmm0	# D.2240, D.2240
	movsd	-32(%rbp), %xmm2	# t0.real, D.2240
	movq	-72(%rbp), %rax	# u, tmp144
	movsd	40(%rax), %xmm1	# u_4(D)->e[1][0].imag, D.2240
	mulsd	%xmm2, %xmm1	# D.2240, D.2240
	subsd	%xmm1, %xmm0	# D.2240, D.2240
	movsd	%xmm0, -56(%rbp)	# D.2240, z0.imag
	.loc 1 25 0
	movsd	-16(%rbp), %xmm1	# t1.real, D.2240
	movq	-72(%rbp), %rax	# u, tmp145
	movsd	48(%rax), %xmm0	# u_4(D)->e[1][1].real, D.2240
	mulsd	%xmm0, %xmm1	# D.2240, D.2240
	movsd	-8(%rbp), %xmm2	# t1.imag, D.2240
	movq	-72(%rbp), %rax	# u, tmp146
	movsd	56(%rax), %xmm0	# u_4(D)->e[1][1].imag, D.2240
	mulsd	%xmm2, %xmm0	# D.2240, D.2240
	addsd	%xmm1, %xmm0	# D.2240, D.2240
	movsd	%xmm0, -48(%rbp)	# D.2240, z1.real
	movsd	-8(%rbp), %xmm1	# t1.imag, D.2240
	movq	-72(%rbp), %rax	# u, tmp147
	movsd	48(%rax), %xmm0	# u_4(D)->e[1][1].real, D.2240
	mulsd	%xmm1, %xmm0	# D.2240, D.2240
	movsd	-16(%rbp), %xmm2	# t1.real, D.2240
	movq	-72(%rbp), %rax	# u, tmp148
	movsd	56(%rax), %xmm1	# u_4(D)->e[1][1].imag, D.2240
	mulsd	%xmm2, %xmm1	# D.2240, D.2240
	subsd	%xmm1, %xmm0	# D.2240, D.2240
	movsd	%xmm0, -40(%rbp)	# D.2240, z1.imag
	.loc 1 26 0
	movsd	-64(%rbp), %xmm1	# z0.real, D.2240
	movsd	-48(%rbp), %xmm0	# z1.real, D.2240
	addsd	%xmm1, %xmm0	# D.2240, D.2240
	movq	-88(%rbp), %rax	# x1, tmp149
	movsd	%xmm0, (%rax)	# D.2240, x1_2(D)->real
	movsd	-56(%rbp), %xmm1	# z0.imag, D.2240
	movsd	-40(%rbp), %xmm0	# z1.imag, D.2240
	addsd	%xmm1, %xmm0	# D.2240, D.2240
	movq	-88(%rbp), %rax	# x1, tmp150
	movsd	%xmm0, 8(%rax)	# D.2240, x1_2(D)->imag
	.loc 1 28 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	mult_su2_mat_vec_elem_a, .-mult_su2_mat_vec_elem_a
.Letext0:
	.file 2 "complex.h"
	.file 3 "su3.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x135
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
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x40
	.byte	0x3
	.byte	0x14
	.long	0x81
	.uleb128 0x6
	.string	"e"
	.byte	0x3
	.byte	0x14
	.long	0x81
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x55
	.long	0x97
	.uleb128 0x8
	.long	0x67
	.byte	0x1
	.uleb128 0x8
	.long	0x67
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x3
	.byte	0x14
	.long	0x6e
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
	.byte	0xa
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x12c
	.uleb128 0xb
	.string	"u"
	.byte	0x1
	.byte	0xa
	.long	0x12c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xb
	.string	"x0"
	.byte	0x1
	.byte	0xa
	.long	0x132
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xb
	.string	"x1"
	.byte	0x1
	.byte	0xa
	.long	0x132
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xc
	.string	"z0"
	.byte	0x1
	.byte	0x11
	.long	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xc
	.string	"z1"
	.byte	0x1
	.byte	0x11
	.long	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.string	"t0"
	.byte	0x1
	.byte	0x11
	.long	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"t1"
	.byte	0x1
	.byte	0x11
	.long	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x97
	.uleb128 0xd
	.byte	0x8
	.long	0x55
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
	.string	"su2_matrix"
.LASF3:
	.string	"long unsigned int"
.LASF10:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF2:
	.string	"double"
.LASF11:
	.string	"mult_su2_mat_vec_elem_a"
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
	.string	"m_su2_mat_vec_a.c"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
