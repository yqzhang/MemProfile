	.file	"m_amv_4vec.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# m_amv_4vec.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	mult_adj_su3_mat_4vec
	.type	mult_adj_su3_mat_4vec, @function
mult_adj_su3_mat_4vec:
.LFB0:
	.file 1 "m_amv_4vec.c"
	.loc 1 28 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -72(%rbp)	# mat, mat
	movq	%rsi, -80(%rbp)	# src, src
	movq	%rdx, -88(%rbp)	# dest0, dest0
	movq	%rcx, -96(%rbp)	# dest1, dest1
	movq	%r8, -104(%rbp)	# dest2, dest2
	movq	%r9, -112(%rbp)	# dest3, dest3
	.loc 1 41 0
	movq	-88(%rbp), %rax	# dest0, tmp104
	movq	%rax, -64(%rbp)	# tmp104, cc
	movq	-96(%rbp), %rax	# dest1, tmp105
	movq	%rax, -56(%rbp)	# tmp105, cc
	.loc 1 42 0
	movq	-104(%rbp), %rax	# dest2, tmp106
	movq	%rax, -48(%rbp)	# tmp106, cc
	movq	-112(%rbp), %rax	# dest3, tmp107
	movq	%rax, -40(%rbp)	# tmp107, cc
	.loc 1 44 0
	movq	-72(%rbp), %rbx	# mat, a
	movq	-88(%rbp), %r12	# dest0, c
	movq	-80(%rbp), %r13	# src, b
	.loc 1 46 0
	movl	$0, %r14d	#, n
	jmp	.L2	#
.L3:
	.loc 1 47 0 discriminator 2
	movslq	%r14d, %rax	# n, tmp108
	movq	-64(%rbp,%rax,8), %r12	# cc, c
	.loc 1 49 0 discriminator 2
	movsd	0(%r13), %xmm4	# b_11->c[0].real, br
	movsd	8(%r13), %xmm1	# b_11->c[0].imag, bi
	.loc 1 50 0 discriminator 2
	movsd	(%rbx), %xmm7	# a_2->e[0][0].real, a0
	movapd	%xmm7, %xmm3	# a0, a0
	.loc 1 51 0 discriminator 2
	movsd	16(%rbx), %xmm5	# a_2->e[0][1].real, a1
	.loc 1 52 0 discriminator 2
	movsd	32(%rbx), %xmm2	# a_2->e[0][2].real, a2
	movapd	%xmm2, %xmm0	# a2, a2
	.loc 1 54 0 discriminator 2
	movapd	%xmm3, %xmm7	# a0, c0r
	mulsd	%xmm4, %xmm7	# br, c0r
	movapd	%xmm7, %xmm2	# c0r, c0r
	.loc 1 55 0 discriminator 2
	movapd	%xmm5, %xmm7	# a1, c1r
	mulsd	%xmm4, %xmm7	# br, c1r
	movapd	%xmm7, %xmm8	# c1r, c1r
	.loc 1 56 0 discriminator 2
	movapd	%xmm0, %xmm7	# a2, c2r
	mulsd	%xmm4, %xmm7	# br, c2r
	movapd	%xmm7, %xmm9	# c2r, c2r
	.loc 1 57 0 discriminator 2
	movapd	%xmm3, %xmm7	# a0, c0i
	mulsd	%xmm1, %xmm7	# bi, c0i
	.loc 1 58 0 discriminator 2
	movapd	%xmm5, %xmm6	# a1, c1i
	mulsd	%xmm1, %xmm6	# bi, c1i
	movapd	%xmm6, %xmm5	# c1i, c1i
	.loc 1 59 0 discriminator 2
	movapd	%xmm0, %xmm3	# a2, c2i
	mulsd	%xmm1, %xmm3	# bi, c2i
	movapd	%xmm3, %xmm6	# c2i, c2i
	.loc 1 61 0 discriminator 2
	movsd	8(%rbx), %xmm3	# a_2->e[0][0].imag, a0
	.loc 1 62 0 discriminator 2
	movsd	24(%rbx), %xmm0	# a_2->e[0][1].imag, a1
	movapd	%xmm0, %xmm10	# a1, a1
	.loc 1 63 0 discriminator 2
	movsd	40(%rbx), %xmm0	# a_2->e[0][2].imag, a2
	movapd	%xmm0, %xmm12	# a2, a2
	.loc 1 65 0 discriminator 2
	movapd	%xmm3, %xmm0	# a0, D.2220
	mulsd	%xmm1, %xmm0	# bi, D.2220
	addsd	%xmm2, %xmm0	# c0r, c0r
	movapd	%xmm0, %xmm13	# c0r, c0r
	.loc 1 66 0 discriminator 2
	movapd	%xmm10, %xmm2	# a1, a1
	movapd	%xmm2, %xmm0	# a1, D.2220
	mulsd	%xmm1, %xmm0	# bi, D.2220
	addsd	%xmm8, %xmm0	# c1r, c1r
	movapd	%xmm0, %xmm10	# c1r, c1r
	.loc 1 67 0 discriminator 2
	movapd	%xmm1, %xmm0	# bi, D.2220
	mulsd	%xmm12, %xmm0	# a2, D.2220
	addsd	%xmm9, %xmm0	# c2r, c2r
	movapd	%xmm0, %xmm9	# c2r, c2r
	.loc 1 68 0 discriminator 2
	movapd	%xmm3, %xmm0	# a0, D.2220
	mulsd	%xmm4, %xmm0	# br, D.2220
	subsd	%xmm0, %xmm7	# D.2220, c0i
	.loc 1 69 0 discriminator 2
	movapd	%xmm2, %xmm0	# a1, D.2220
	mulsd	%xmm4, %xmm0	# br, D.2220
	subsd	%xmm0, %xmm5	# D.2220, c1i
	movapd	%xmm5, %xmm1	# c1i, c1i
	.loc 1 70 0 discriminator 2
	movapd	%xmm12, %xmm0	# a2, D.2220
	mulsd	%xmm4, %xmm0	# br, D.2220
	movapd	%xmm6, %xmm2	# c2i, c2i
	subsd	%xmm0, %xmm2	# D.2220, c2i
	movapd	%xmm2, %xmm4	# c2i, c2i
	.loc 1 72 0 discriminator 2
	movsd	16(%r13), %xmm5	# b_11->c[1].real, br
	movsd	24(%r13), %xmm2	# b_11->c[1].imag, bi
	.loc 1 73 0 discriminator 2
	movsd	48(%rbx), %xmm6	# a_2->e[1][0].real, a0
	.loc 1 74 0 discriminator 2
	movsd	64(%rbx), %xmm3	# a_2->e[1][1].real, a1
	.loc 1 75 0 discriminator 2
	movsd	80(%rbx), %xmm0	# a_2->e[1][2].real, a2
	movapd	%xmm0, %xmm11	# a2, a2
	.loc 1 77 0 discriminator 2
	movapd	%xmm6, %xmm0	# a0, D.2220
	mulsd	%xmm5, %xmm0	# br, D.2220
	addsd	%xmm13, %xmm0	# c0r, c0r
	movapd	%xmm0, %xmm15	# c0r, c0r
	.loc 1 78 0 discriminator 2
	movapd	%xmm3, %xmm0	# a1, D.2220
	mulsd	%xmm5, %xmm0	# br, D.2220
	addsd	%xmm10, %xmm0	# c1r, c1r
	movapd	%xmm0, %xmm8	# c1r, c1r
	.loc 1 79 0 discriminator 2
	movapd	%xmm11, %xmm0	# a2, D.2220
	mulsd	%xmm5, %xmm0	# br, D.2220
	addsd	%xmm9, %xmm0	# c2r, c2r
	movapd	%xmm0, %xmm9	# c2r, c2r
	.loc 1 80 0 discriminator 2
	movapd	%xmm6, %xmm0	# a0, D.2220
	mulsd	%xmm2, %xmm0	# bi, D.2220
	addsd	%xmm7, %xmm0	# c0i, c0i
	movapd	%xmm0, %xmm6	# c0i, c0i
	.loc 1 81 0 discriminator 2
	movapd	%xmm3, %xmm0	# a1, D.2220
	mulsd	%xmm2, %xmm0	# bi, D.2220
	addsd	%xmm1, %xmm0	# c1i, c1i
	movapd	%xmm0, %xmm7	# c1i, c1i
	.loc 1 82 0 discriminator 2
	movapd	%xmm11, %xmm0	# a2, D.2220
	mulsd	%xmm2, %xmm0	# bi, D.2220
	addsd	%xmm4, %xmm0	# c2i, c2i
	movapd	%xmm0, %xmm3	# c2i, c2i
	.loc 1 84 0 discriminator 2
	movsd	56(%rbx), %xmm1	# a_2->e[1][0].imag, a0
	.loc 1 85 0 discriminator 2
	movsd	72(%rbx), %xmm4	# a_2->e[1][1].imag, a1
	.loc 1 86 0 discriminator 2
	movsd	88(%rbx), %xmm0	# a_2->e[1][2].imag, a2
	movapd	%xmm0, %xmm14	# a2, a2
	.loc 1 88 0 discriminator 2
	movapd	%xmm1, %xmm0	# a0, D.2220
	mulsd	%xmm2, %xmm0	# bi, D.2220
	addsd	%xmm15, %xmm0	# c0r, c0r
	movapd	%xmm0, %xmm10	# c0r, c0r
	.loc 1 89 0 discriminator 2
	movapd	%xmm4, %xmm0	# a1, D.2220
	mulsd	%xmm2, %xmm0	# bi, D.2220
	addsd	%xmm8, %xmm0	# c1r, c1r
	movapd	%xmm0, %xmm15	# c1r, c1r
	.loc 1 90 0 discriminator 2
	movapd	%xmm2, %xmm0	# bi, D.2220
	mulsd	%xmm14, %xmm0	# a2, D.2220
	addsd	%xmm9, %xmm0	# c2r, c2r
	movapd	%xmm0, %xmm11	# c2r, c2r
	.loc 1 91 0 discriminator 2
	movapd	%xmm1, %xmm0	# a0, D.2220
	mulsd	%xmm5, %xmm0	# br, D.2220
	subsd	%xmm0, %xmm6	# D.2220, c0i
	movapd	%xmm6, %xmm2	# c0i, c0i
	.loc 1 92 0 discriminator 2
	movapd	%xmm4, %xmm0	# a1, D.2220
	mulsd	%xmm5, %xmm0	# br, D.2220
	movapd	%xmm7, %xmm1	# c1i, c1i
	subsd	%xmm0, %xmm1	# D.2220, c1i
	movapd	%xmm1, %xmm13	# c1i, c1i
	.loc 1 93 0 discriminator 2
	movapd	%xmm14, %xmm0	# a2, D.2220
	mulsd	%xmm5, %xmm0	# br, D.2220
	movapd	%xmm3, %xmm5	# c2i, c2i
	subsd	%xmm0, %xmm5	# D.2220, c2i
	.loc 1 95 0 discriminator 2
	movsd	32(%r13), %xmm6	# b_11->c[2].real, br
	movsd	40(%r13), %xmm3	# b_11->c[2].imag, bi
	.loc 1 96 0 discriminator 2
	movsd	96(%rbx), %xmm7	# a_2->e[2][0].real, a0
	.loc 1 97 0 discriminator 2
	movsd	112(%rbx), %xmm1	# a_2->e[2][1].real, a1
	.loc 1 98 0 discriminator 2
	movsd	128(%rbx), %xmm4	# a_2->e[2][2].real, a2
	.loc 1 100 0 discriminator 2
	movapd	%xmm7, %xmm0	# a0, D.2220
	mulsd	%xmm6, %xmm0	# br, D.2220
	addsd	%xmm10, %xmm0	# c0r, c0r
	movapd	%xmm0, %xmm12	# c0r, c0r
	.loc 1 101 0 discriminator 2
	movapd	%xmm1, %xmm0	# a1, D.2220
	mulsd	%xmm6, %xmm0	# br, D.2220
	addsd	%xmm15, %xmm0	# c1r, c1r
	movapd	%xmm0, %xmm14	# c1r, c1r
	.loc 1 102 0 discriminator 2
	movapd	%xmm4, %xmm0	# a2, D.2220
	mulsd	%xmm6, %xmm0	# br, D.2220
	addsd	%xmm11, %xmm0	# c2r, c2r
	movapd	%xmm0, %xmm9	# c2r, c2r
	.loc 1 103 0 discriminator 2
	movapd	%xmm7, %xmm0	# a0, D.2220
	mulsd	%xmm3, %xmm0	# bi, D.2220
	addsd	%xmm2, %xmm0	# c0i, c0i
	movapd	%xmm0, %xmm15	# c0i, c0i
	.loc 1 104 0 discriminator 2
	movapd	%xmm1, %xmm0	# a1, D.2220
	mulsd	%xmm3, %xmm0	# bi, D.2220
	addsd	%xmm13, %xmm0	# c1i, c1i
	movapd	%xmm0, %xmm1	# c1i, c1i
	.loc 1 105 0 discriminator 2
	movapd	%xmm4, %xmm0	# a2, D.2220
	mulsd	%xmm3, %xmm0	# bi, D.2220
	addsd	%xmm5, %xmm0	# c2i, c2i
	movapd	%xmm0, %xmm8	# c2i, c2i
	.loc 1 107 0 discriminator 2
	movsd	104(%rbx), %xmm2	# a_2->e[2][0].imag, a0
	.loc 1 108 0 discriminator 2
	movsd	120(%rbx), %xmm7	# a_2->e[2][1].imag, a1
	.loc 1 109 0 discriminator 2
	movsd	136(%rbx), %xmm4	# a_2->e[2][2].imag, a2
	.loc 1 111 0 discriminator 2
	movapd	%xmm2, %xmm0	# a0, D.2220
	mulsd	%xmm3, %xmm0	# bi, D.2220
	addsd	%xmm12, %xmm0	# c0r, c0r
	movapd	%xmm0, %xmm13	# c0r, c0r
	.loc 1 112 0 discriminator 2
	movapd	%xmm7, %xmm0	# a1, D.2220
	mulsd	%xmm3, %xmm0	# bi, D.2220
	addsd	%xmm14, %xmm0	# c1r, c1r
	movapd	%xmm0, %xmm10	# c1r, c1r
	.loc 1 113 0 discriminator 2
	movapd	%xmm3, %xmm0	# bi, D.2220
	movapd	%xmm4, %xmm3	# a2, a2
	mulsd	%xmm3, %xmm0	# a2, D.2220
	addsd	%xmm9, %xmm0	# c2r, c2r
	movapd	%xmm0, %xmm11	# c2r, c2r
	.loc 1 114 0 discriminator 2
	movapd	%xmm2, %xmm0	# a0, D.2220
	mulsd	%xmm6, %xmm0	# br, D.2220
	movapd	%xmm15, %xmm4	# c0i, c0i
	subsd	%xmm0, %xmm4	# D.2220, c0i
	.loc 1 115 0 discriminator 2
	movapd	%xmm7, %xmm0	# a1, D.2220
	mulsd	%xmm6, %xmm0	# br, D.2220
	movapd	%xmm1, %xmm5	# c1i, c1i
	subsd	%xmm0, %xmm5	# D.2220, c1i
	.loc 1 116 0 discriminator 2
	movapd	%xmm3, %xmm0	# a2, D.2220
	mulsd	%xmm6, %xmm0	# br, D.2220
	movapd	%xmm8, %xmm2	# c2i, c2i
	subsd	%xmm0, %xmm2	# D.2220, c2i
	.loc 1 118 0 discriminator 2
	movapd	%xmm13, %xmm0	# c0r, c0r
	movsd	%xmm0, (%r12)	# c0r, c_13->c[0].real
	.loc 1 119 0 discriminator 2
	movsd	%xmm4, 8(%r12)	# c0i, c_13->c[0].imag
	.loc 1 120 0 discriminator 2
	movapd	%xmm10, %xmm0	# c1r, c1r
	movsd	%xmm0, 16(%r12)	# c1r, c_13->c[1].real
	.loc 1 121 0 discriminator 2
	movsd	%xmm5, 24(%r12)	# c1i, c_13->c[1].imag
	.loc 1 122 0 discriminator 2
	movapd	%xmm11, %xmm0	# c2r, c2r
	movsd	%xmm0, 32(%r12)	# c2r, c_13->c[2].real
	.loc 1 123 0 discriminator 2
	movsd	%xmm2, 40(%r12)	# c2i, c_13->c[2].imag
	.loc 1 46 0 discriminator 2
	addl	$1, %r14d	#, n
	addq	$144, %rbx	#, a
.L2:
	.loc 1 46 0 is_stmt 0 discriminator 1
	cmpl	$3, %r14d	#, n
	jle	.L3	#,
	.loc 1 125 0 is_stmt 1
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	mult_adj_su3_mat_4vec, .-mult_adj_su3_mat_4vec
.Letext0:
	.file 2 "complex.h"
	.file 3 "su3.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x219
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF13
	.byte	0x1
	.long	.LASF14
	.long	.LASF15
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
	.long	.LASF16
	.byte	0x1
	.byte	0x1a
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x204
	.uleb128 0xb
	.string	"mat"
	.byte	0x1
	.byte	0x1a
	.long	0x204
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xb
	.string	"src"
	.byte	0x1
	.byte	0x1a
	.long	0x20a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xc
	.long	.LASF9
	.byte	0x1
	.byte	0x1b
	.long	0x20a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xc
	.long	.LASF10
	.byte	0x1
	.byte	0x1b
	.long	0x20a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xc
	.long	.LASF11
	.byte	0x1
	.byte	0x1c
	.long	0x20a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0xc
	.long	.LASF12
	.byte	0x1
	.byte	0x1c
	.long	0x20a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xd
	.string	"n"
	.byte	0x1
	.byte	0x1d
	.long	0xd0
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0xe
	.string	"c0r"
	.byte	0x1
	.byte	0x22
	.long	0x4e
	.uleb128 0xe
	.string	"c0i"
	.byte	0x1
	.byte	0x22
	.long	0x4e
	.uleb128 0xe
	.string	"c1r"
	.byte	0x1
	.byte	0x22
	.long	0x4e
	.uleb128 0xe
	.string	"c1i"
	.byte	0x1
	.byte	0x22
	.long	0x4e
	.uleb128 0xe
	.string	"c2r"
	.byte	0x1
	.byte	0x22
	.long	0x4e
	.uleb128 0xe
	.string	"c2i"
	.byte	0x1
	.byte	0x22
	.long	0x4e
	.uleb128 0xe
	.string	"br"
	.byte	0x1
	.byte	0x23
	.long	0x4e
	.uleb128 0xe
	.string	"bi"
	.byte	0x1
	.byte	0x23
	.long	0x4e
	.uleb128 0xe
	.string	"a0"
	.byte	0x1
	.byte	0x23
	.long	0x4e
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.byte	0x23
	.long	0x4e
	.uleb128 0xe
	.string	"a2"
	.byte	0x1
	.byte	0x23
	.long	0x4e
	.uleb128 0xd
	.string	"a"
	.byte	0x1
	.byte	0x25
	.long	0x204
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"b"
	.byte	0x1
	.byte	0x26
	.long	0x20a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x26
	.long	0x20a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xd
	.string	"cc"
	.byte	0x1
	.byte	0x27
	.long	0x210
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.long	0x97
	.uleb128 0xf
	.byte	0x8
	.long	0xc5
	.uleb128 0x10
	.long	0x20a
	.uleb128 0x8
	.long	0x90
	.byte	0x3
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x1
	.byte	0x1
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
.LASF10:
	.string	"dest1"
.LASF11:
	.string	"dest2"
.LASF12:
	.string	"dest3"
.LASF14:
	.string	"m_amv_4vec.c"
.LASF3:
	.string	"long unsigned int"
.LASF15:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF2:
	.string	"double"
.LASF1:
	.string	"imag"
.LASF8:
	.string	"unsigned int"
.LASF0:
	.string	"real"
.LASF9:
	.string	"dest0"
.LASF4:
	.string	"sizetype"
.LASF13:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF16:
	.string	"mult_adj_su3_mat_4vec"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
