	.file	"m_mat_hwvec.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# m_mat_hwvec.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	mult_su3_mat_hwvec
	.type	mult_su3_mat_hwvec, @function
mult_su3_mat_hwvec:
.LFB0:
	.file 1 "m_mat_hwvec.c"
	.loc 1 24 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# mat, mat
	movq	%rsi, -16(%rbp)	# src, src
	movq	%rdx, -24(%rbp)	# dest, dest
	.loc 1 36 0
	movq	-8(%rbp), %rax	# mat, tmp203
	movsd	(%rax), %xmm2	# mat_1(D)->e[0][0].real, a0r
	movq	-8(%rbp), %rax	# mat, tmp204
	movsd	8(%rax), %xmm3	# mat_1(D)->e[0][0].imag, a0i
	.loc 1 37 0
	movq	-16(%rbp), %rax	# src, tmp205
	movsd	(%rax), %xmm4	# src_4(D)->h[0].c[0].real, b0r
	movapd	%xmm4, %xmm8	# b0r, b0r
	movq	-16(%rbp), %rax	# src, tmp206
	movsd	8(%rax), %xmm6	# src_4(D)->h[0].c[0].imag, b0i
	movapd	%xmm6, %xmm9	# b0i, b0i
	.loc 1 38 0
	movq	-8(%rbp), %rax	# mat, tmp207
	movsd	16(%rax), %xmm4	# mat_1(D)->e[0][1].real, a1r
	movq	-8(%rbp), %rax	# mat, tmp208
	movsd	24(%rax), %xmm5	# mat_1(D)->e[0][1].imag, a1i
	.loc 1 39 0
	movq	-16(%rbp), %rax	# src, tmp209
	movsd	16(%rax), %xmm6	# src_4(D)->h[0].c[1].real, b1r
	movapd	%xmm6, %xmm10	# b1r, b1r
	movq	-16(%rbp), %rax	# src, tmp210
	movsd	24(%rax), %xmm6	# src_4(D)->h[0].c[1].imag, b1i
	movapd	%xmm6, %xmm11	# b1i, b1i
	.loc 1 40 0
	movq	-8(%rbp), %rax	# mat, tmp211
	movsd	32(%rax), %xmm6	# mat_1(D)->e[0][2].real, a2r
	movq	-8(%rbp), %rax	# mat, tmp212
	movsd	40(%rax), %xmm7	# mat_1(D)->e[0][2].imag, a2i
	.loc 1 41 0
	movq	-16(%rbp), %rax	# src, tmp213
	movsd	32(%rax), %xmm1	# src_4(D)->h[0].c[2].real, b2r
	movapd	%xmm1, %xmm12	# b2r, b2r
	movq	-16(%rbp), %rax	# src, tmp214
	movsd	40(%rax), %xmm1	# src_4(D)->h[0].c[2].imag, b2i
	movapd	%xmm1, %xmm13	# b2i, b2i
	.loc 1 43 0
	movapd	%xmm2, %xmm0	# a0r, D.2312
	mulsd	%xmm8, %xmm0	# b0r, D.2312
	movapd	%xmm3, %xmm1	# a0i, D.2312
	mulsd	%xmm9, %xmm1	# b0i, D.2312
	subsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm4, %xmm0	# a1r, D.2312
	mulsd	%xmm10, %xmm0	# b1r, D.2312
	addsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm5, %xmm1	# a1i, D.2312
	mulsd	%xmm11, %xmm1	# b1i, D.2312
	subsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm6, %xmm0	# a2r, D.2312
	mulsd	%xmm12, %xmm0	# b2r, D.2312
	addsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm7, %xmm1	# a2i, D.2312
	mulsd	%xmm13, %xmm1	# b2i, D.2312
	subsd	%xmm1, %xmm0	# D.2312, D.2312
	movq	-24(%rbp), %rax	# dest, tmp215
	movsd	%xmm0, (%rax)	# D.2312, dest_26(D)->h[0].c[0].real
	.loc 1 44 0
	mulsd	%xmm9, %xmm2	# b0i, D.2312
	movapd	%xmm2, %xmm1	# D.2312, D.2312
	mulsd	%xmm8, %xmm3	# b0r, D.2312
	movapd	%xmm3, %xmm0	# D.2312, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm4, %xmm0	# a1r, D.2312
	mulsd	%xmm11, %xmm0	# b1i, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	mulsd	%xmm10, %xmm5	# b1r, D.2312
	movapd	%xmm5, %xmm0	# D.2312, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm6, %xmm0	# a2r, D.2312
	mulsd	%xmm13, %xmm0	# b2i, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	mulsd	%xmm12, %xmm7	# b2r, D.2312
	movapd	%xmm7, %xmm0	# D.2312, D.2312
	addsd	%xmm1, %xmm0	# D.2312, D.2312
	movq	-24(%rbp), %rax	# dest, tmp216
	movsd	%xmm0, 8(%rax)	# D.2312, dest_26(D)->h[0].c[0].imag
	.loc 1 46 0
	movq	-8(%rbp), %rax	# mat, tmp217
	movsd	48(%rax), %xmm4	# mat_1(D)->e[1][0].real, a0r
	movq	-8(%rbp), %rax	# mat, tmp218
	movsd	56(%rax), %xmm6	# mat_1(D)->e[1][0].imag, a0i
	.loc 1 47 0
	movq	-16(%rbp), %rax	# src, tmp219
	movsd	(%rax), %xmm2	# src_4(D)->h[0].c[0].real, b0r
	movapd	%xmm2, %xmm14	# b0r, b0r
	movq	-16(%rbp), %rax	# src, tmp220
	movsd	8(%rax), %xmm3	# src_4(D)->h[0].c[0].imag, b0i
	movapd	%xmm3, %xmm15	# b0i, b0i
	.loc 1 48 0
	movq	-8(%rbp), %rax	# mat, tmp221
	movsd	64(%rax), %xmm2	# mat_1(D)->e[1][1].real, a1r
	movq	-8(%rbp), %rax	# mat, tmp222
	movsd	72(%rax), %xmm3	# mat_1(D)->e[1][1].imag, a1i
	.loc 1 49 0
	movq	-16(%rbp), %rax	# src, tmp223
	movsd	16(%rax), %xmm5	# src_4(D)->h[0].c[1].real, b1r
	movapd	%xmm5, %xmm8	# b1r, b1r
	movq	-16(%rbp), %rax	# src, tmp224
	movsd	24(%rax), %xmm5	# src_4(D)->h[0].c[1].imag, b1i
	movapd	%xmm5, %xmm9	# b1i, b1i
	.loc 1 50 0
	movq	-8(%rbp), %rax	# mat, tmp225
	movsd	80(%rax), %xmm5	# mat_1(D)->e[1][2].real, a2r
	movq	-8(%rbp), %rax	# mat, tmp226
	movsd	88(%rax), %xmm7	# mat_1(D)->e[1][2].imag, a2i
	.loc 1 51 0
	movq	-16(%rbp), %rax	# src, tmp227
	movsd	32(%rax), %xmm1	# src_4(D)->h[0].c[2].real, b2r
	movapd	%xmm1, %xmm10	# b2r, b2r
	movq	-16(%rbp), %rax	# src, tmp228
	movsd	40(%rax), %xmm1	# src_4(D)->h[0].c[2].imag, b2i
	movapd	%xmm1, %xmm11	# b2i, b2i
	.loc 1 53 0
	movapd	%xmm4, %xmm0	# a0r, D.2312
	mulsd	%xmm14, %xmm0	# b0r, D.2312
	movapd	%xmm6, %xmm1	# a0i, D.2312
	mulsd	%xmm15, %xmm1	# b0i, D.2312
	subsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm2, %xmm0	# a1r, D.2312
	mulsd	%xmm8, %xmm0	# b1r, D.2312
	addsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm3, %xmm1	# a1i, D.2312
	mulsd	%xmm9, %xmm1	# b1i, D.2312
	subsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm5, %xmm0	# a2r, D.2312
	mulsd	%xmm10, %xmm0	# b2r, D.2312
	addsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm7, %xmm1	# a2i, D.2312
	mulsd	%xmm11, %xmm1	# b2i, D.2312
	subsd	%xmm1, %xmm0	# D.2312, D.2312
	movq	-24(%rbp), %rax	# dest, tmp229
	movsd	%xmm0, 16(%rax)	# D.2312, dest_26(D)->h[0].c[1].real
	.loc 1 54 0
	mulsd	%xmm15, %xmm4	# b0i, D.2312
	movapd	%xmm4, %xmm1	# D.2312, D.2312
	mulsd	%xmm14, %xmm6	# b0r, D.2312
	movapd	%xmm6, %xmm0	# D.2312, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm2, %xmm0	# a1r, D.2312
	mulsd	%xmm9, %xmm0	# b1i, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	mulsd	%xmm8, %xmm3	# b1r, D.2312
	movapd	%xmm3, %xmm0	# D.2312, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm5, %xmm0	# a2r, D.2312
	mulsd	%xmm11, %xmm0	# b2i, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	mulsd	%xmm10, %xmm7	# b2r, D.2312
	movapd	%xmm7, %xmm0	# D.2312, D.2312
	addsd	%xmm1, %xmm0	# D.2312, D.2312
	movq	-24(%rbp), %rax	# dest, tmp230
	movsd	%xmm0, 24(%rax)	# D.2312, dest_26(D)->h[0].c[1].imag
	.loc 1 56 0
	movq	-8(%rbp), %rax	# mat, tmp231
	movsd	96(%rax), %xmm2	# mat_1(D)->e[2][0].real, a0r
	movq	-8(%rbp), %rax	# mat, tmp232
	movsd	104(%rax), %xmm4	# mat_1(D)->e[2][0].imag, a0i
	.loc 1 57 0
	movq	-16(%rbp), %rax	# src, tmp233
	movsd	(%rax), %xmm3	# src_4(D)->h[0].c[0].real, b0r
	movapd	%xmm3, %xmm12	# b0r, b0r
	movq	-16(%rbp), %rax	# src, tmp234
	movsd	8(%rax), %xmm6	# src_4(D)->h[0].c[0].imag, b0i
	movapd	%xmm6, %xmm13	# b0i, b0i
	.loc 1 58 0
	movq	-8(%rbp), %rax	# mat, tmp235
	movsd	112(%rax), %xmm5	# mat_1(D)->e[2][1].real, a1r
	movq	-8(%rbp), %rax	# mat, tmp236
	movsd	120(%rax), %xmm6	# mat_1(D)->e[2][1].imag, a1i
	.loc 1 59 0
	movq	-16(%rbp), %rax	# src, tmp237
	movsd	16(%rax), %xmm3	# src_4(D)->h[0].c[1].real, b1r
	movapd	%xmm3, %xmm14	# b1r, b1r
	movq	-16(%rbp), %rax	# src, tmp238
	movsd	24(%rax), %xmm3	# src_4(D)->h[0].c[1].imag, b1i
	movapd	%xmm3, %xmm15	# b1i, b1i
	.loc 1 60 0
	movq	-8(%rbp), %rax	# mat, tmp239
	movsd	128(%rax), %xmm3	# mat_1(D)->e[2][2].real, a2r
	movq	-8(%rbp), %rax	# mat, tmp240
	movsd	136(%rax), %xmm7	# mat_1(D)->e[2][2].imag, a2i
	.loc 1 61 0
	movq	-16(%rbp), %rax	# src, tmp241
	movsd	32(%rax), %xmm1	# src_4(D)->h[0].c[2].real, b2r
	movapd	%xmm1, %xmm8	# b2r, b2r
	movq	-16(%rbp), %rax	# src, tmp242
	movsd	40(%rax), %xmm1	# src_4(D)->h[0].c[2].imag, b2i
	movapd	%xmm1, %xmm9	# b2i, b2i
	.loc 1 63 0
	movapd	%xmm2, %xmm0	# a0r, D.2312
	mulsd	%xmm12, %xmm0	# b0r, D.2312
	movapd	%xmm4, %xmm1	# a0i, D.2312
	mulsd	%xmm13, %xmm1	# b0i, D.2312
	subsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm5, %xmm0	# a1r, D.2312
	mulsd	%xmm14, %xmm0	# b1r, D.2312
	addsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm6, %xmm1	# a1i, D.2312
	mulsd	%xmm15, %xmm1	# b1i, D.2312
	subsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm3, %xmm0	# a2r, D.2312
	mulsd	%xmm8, %xmm0	# b2r, D.2312
	addsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm7, %xmm1	# a2i, D.2312
	mulsd	%xmm9, %xmm1	# b2i, D.2312
	subsd	%xmm1, %xmm0	# D.2312, D.2312
	movq	-24(%rbp), %rax	# dest, tmp243
	movsd	%xmm0, 32(%rax)	# D.2312, dest_26(D)->h[0].c[2].real
	.loc 1 64 0
	mulsd	%xmm13, %xmm2	# b0i, D.2312
	movapd	%xmm2, %xmm1	# D.2312, D.2312
	mulsd	%xmm12, %xmm4	# b0r, D.2312
	movapd	%xmm4, %xmm0	# D.2312, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm5, %xmm0	# a1r, D.2312
	mulsd	%xmm15, %xmm0	# b1i, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	mulsd	%xmm14, %xmm6	# b1r, D.2312
	movapd	%xmm6, %xmm0	# D.2312, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm3, %xmm0	# a2r, D.2312
	mulsd	%xmm9, %xmm0	# b2i, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	mulsd	%xmm8, %xmm7	# b2r, D.2312
	movapd	%xmm7, %xmm0	# D.2312, D.2312
	addsd	%xmm1, %xmm0	# D.2312, D.2312
	movq	-24(%rbp), %rax	# dest, tmp244
	movsd	%xmm0, 40(%rax)	# D.2312, dest_26(D)->h[0].c[2].imag
	.loc 1 68 0
	movq	-8(%rbp), %rax	# mat, tmp245
	movsd	(%rax), %xmm5	# mat_1(D)->e[0][0].real, a0r
	movq	-8(%rbp), %rax	# mat, tmp246
	movsd	8(%rax), %xmm2	# mat_1(D)->e[0][0].imag, a0i
	.loc 1 69 0
	movq	-16(%rbp), %rax	# src, tmp247
	movsd	48(%rax), %xmm4	# src_4(D)->h[1].c[0].real, b0r
	movapd	%xmm4, %xmm10	# b0r, b0r
	movq	-16(%rbp), %rax	# src, tmp248
	movsd	56(%rax), %xmm4	# src_4(D)->h[1].c[0].imag, b0i
	movapd	%xmm4, %xmm11	# b0i, b0i
	.loc 1 70 0
	movq	-8(%rbp), %rax	# mat, tmp249
	movsd	16(%rax), %xmm3	# mat_1(D)->e[0][1].real, a1r
	movq	-8(%rbp), %rax	# mat, tmp250
	movsd	24(%rax), %xmm4	# mat_1(D)->e[0][1].imag, a1i
	.loc 1 71 0
	movq	-16(%rbp), %rax	# src, tmp251
	movsd	64(%rax), %xmm6	# src_4(D)->h[1].c[1].real, b1r
	movapd	%xmm6, %xmm12	# b1r, b1r
	movq	-16(%rbp), %rax	# src, tmp252
	movsd	72(%rax), %xmm7	# src_4(D)->h[1].c[1].imag, b1i
	movapd	%xmm7, %xmm13	# b1i, b1i
	.loc 1 72 0
	movq	-8(%rbp), %rax	# mat, tmp253
	movsd	32(%rax), %xmm6	# mat_1(D)->e[0][2].real, a2r
	movq	-8(%rbp), %rax	# mat, tmp254
	movsd	40(%rax), %xmm7	# mat_1(D)->e[0][2].imag, a2i
	.loc 1 73 0
	movq	-16(%rbp), %rax	# src, tmp255
	movsd	80(%rax), %xmm1	# src_4(D)->h[1].c[2].real, b2r
	movapd	%xmm1, %xmm14	# b2r, b2r
	movq	-16(%rbp), %rax	# src, tmp256
	movsd	88(%rax), %xmm1	# src_4(D)->h[1].c[2].imag, b2i
	movapd	%xmm1, %xmm15	# b2i, b2i
	.loc 1 75 0
	movapd	%xmm5, %xmm0	# a0r, D.2312
	mulsd	%xmm10, %xmm0	# b0r, D.2312
	movapd	%xmm2, %xmm1	# a0i, D.2312
	mulsd	%xmm11, %xmm1	# b0i, D.2312
	subsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm3, %xmm0	# a1r, D.2312
	mulsd	%xmm12, %xmm0	# b1r, D.2312
	addsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm4, %xmm1	# a1i, D.2312
	mulsd	%xmm13, %xmm1	# b1i, D.2312
	subsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm6, %xmm0	# a2r, D.2312
	mulsd	%xmm14, %xmm0	# b2r, D.2312
	addsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm7, %xmm1	# a2i, D.2312
	mulsd	%xmm15, %xmm1	# b2i, D.2312
	subsd	%xmm1, %xmm0	# D.2312, D.2312
	movq	-24(%rbp), %rax	# dest, tmp257
	movsd	%xmm0, 48(%rax)	# D.2312, dest_26(D)->h[1].c[0].real
	.loc 1 76 0
	mulsd	%xmm11, %xmm5	# b0i, D.2312
	movapd	%xmm5, %xmm1	# D.2312, D.2312
	mulsd	%xmm10, %xmm2	# b0r, D.2312
	movapd	%xmm2, %xmm0	# D.2312, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm3, %xmm0	# a1r, D.2312
	mulsd	%xmm13, %xmm0	# b1i, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	mulsd	%xmm12, %xmm4	# b1r, D.2312
	movapd	%xmm4, %xmm0	# D.2312, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm6, %xmm0	# a2r, D.2312
	mulsd	%xmm15, %xmm0	# b2i, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	mulsd	%xmm14, %xmm7	# b2r, D.2312
	movapd	%xmm7, %xmm0	# D.2312, D.2312
	addsd	%xmm1, %xmm0	# D.2312, D.2312
	movq	-24(%rbp), %rax	# dest, tmp258
	movsd	%xmm0, 56(%rax)	# D.2312, dest_26(D)->h[1].c[0].imag
	.loc 1 78 0
	movq	-8(%rbp), %rax	# mat, tmp259
	movsd	48(%rax), %xmm3	# mat_1(D)->e[1][0].real, a0r
	movq	-8(%rbp), %rax	# mat, tmp260
	movsd	56(%rax), %xmm5	# mat_1(D)->e[1][0].imag, a0i
	.loc 1 79 0
	movq	-16(%rbp), %rax	# src, tmp261
	movsd	48(%rax), %xmm2	# src_4(D)->h[1].c[0].real, b0r
	movapd	%xmm2, %xmm8	# b0r, b0r
	movq	-16(%rbp), %rax	# src, tmp262
	movsd	56(%rax), %xmm4	# src_4(D)->h[1].c[0].imag, b0i
	movapd	%xmm4, %xmm9	# b0i, b0i
	.loc 1 80 0
	movq	-8(%rbp), %rax	# mat, tmp263
	movsd	64(%rax), %xmm6	# mat_1(D)->e[1][1].real, a1r
	movq	-8(%rbp), %rax	# mat, tmp264
	movsd	72(%rax), %xmm2	# mat_1(D)->e[1][1].imag, a1i
	.loc 1 81 0
	movq	-16(%rbp), %rax	# src, tmp265
	movsd	64(%rax), %xmm4	# src_4(D)->h[1].c[1].real, b1r
	movapd	%xmm4, %xmm10	# b1r, b1r
	movq	-16(%rbp), %rax	# src, tmp266
	movsd	72(%rax), %xmm4	# src_4(D)->h[1].c[1].imag, b1i
	movapd	%xmm4, %xmm11	# b1i, b1i
	.loc 1 82 0
	movq	-8(%rbp), %rax	# mat, tmp267
	movsd	80(%rax), %xmm4	# mat_1(D)->e[1][2].real, a2r
	movq	-8(%rbp), %rax	# mat, tmp268
	movsd	88(%rax), %xmm7	# mat_1(D)->e[1][2].imag, a2i
	.loc 1 83 0
	movq	-16(%rbp), %rax	# src, tmp269
	movsd	80(%rax), %xmm1	# src_4(D)->h[1].c[2].real, b2r
	movapd	%xmm1, %xmm12	# b2r, b2r
	movq	-16(%rbp), %rax	# src, tmp270
	movsd	88(%rax), %xmm1	# src_4(D)->h[1].c[2].imag, b2i
	movapd	%xmm1, %xmm13	# b2i, b2i
	.loc 1 85 0
	movapd	%xmm3, %xmm0	# a0r, D.2312
	mulsd	%xmm8, %xmm0	# b0r, D.2312
	movapd	%xmm5, %xmm1	# a0i, D.2312
	mulsd	%xmm9, %xmm1	# b0i, D.2312
	subsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm6, %xmm0	# a1r, D.2312
	mulsd	%xmm10, %xmm0	# b1r, D.2312
	addsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm2, %xmm1	# a1i, D.2312
	mulsd	%xmm11, %xmm1	# b1i, D.2312
	subsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm4, %xmm0	# a2r, D.2312
	mulsd	%xmm12, %xmm0	# b2r, D.2312
	addsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm7, %xmm1	# a2i, D.2312
	mulsd	%xmm13, %xmm1	# b2i, D.2312
	subsd	%xmm1, %xmm0	# D.2312, D.2312
	movq	-24(%rbp), %rax	# dest, tmp271
	movsd	%xmm0, 64(%rax)	# D.2312, dest_26(D)->h[1].c[1].real
	.loc 1 86 0
	mulsd	%xmm9, %xmm3	# b0i, D.2312
	movapd	%xmm3, %xmm1	# D.2312, D.2312
	mulsd	%xmm8, %xmm5	# b0r, D.2312
	movapd	%xmm5, %xmm0	# D.2312, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm6, %xmm0	# a1r, D.2312
	mulsd	%xmm11, %xmm0	# b1i, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	mulsd	%xmm10, %xmm2	# b1r, D.2312
	movapd	%xmm2, %xmm0	# D.2312, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm4, %xmm0	# a2r, D.2312
	mulsd	%xmm13, %xmm0	# b2i, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	mulsd	%xmm12, %xmm7	# b2r, D.2312
	movapd	%xmm7, %xmm0	# D.2312, D.2312
	addsd	%xmm1, %xmm0	# D.2312, D.2312
	movq	-24(%rbp), %rax	# dest, tmp272
	movsd	%xmm0, 72(%rax)	# D.2312, dest_26(D)->h[1].c[1].imag
	.loc 1 88 0
	movq	-8(%rbp), %rax	# mat, tmp273
	movsd	96(%rax), %xmm6	# mat_1(D)->e[2][0].real, a0r
	movq	-8(%rbp), %rax	# mat, tmp274
	movsd	104(%rax), %xmm3	# mat_1(D)->e[2][0].imag, a0i
	.loc 1 89 0
	movq	-16(%rbp), %rax	# src, tmp275
	movsd	48(%rax), %xmm2	# src_4(D)->h[1].c[0].real, b0r
	movapd	%xmm2, %xmm14	# b0r, b0r
	movq	-16(%rbp), %rax	# src, tmp276
	movsd	56(%rax), %xmm5	# src_4(D)->h[1].c[0].imag, b0i
	movapd	%xmm5, %xmm15	# b0i, b0i
	.loc 1 90 0
	movq	-8(%rbp), %rax	# mat, tmp277
	movsd	112(%rax), %xmm4	# mat_1(D)->e[2][1].real, a1r
	movq	-8(%rbp), %rax	# mat, tmp278
	movsd	120(%rax), %xmm5	# mat_1(D)->e[2][1].imag, a1i
	.loc 1 91 0
	movq	-16(%rbp), %rax	# src, tmp279
	movsd	64(%rax), %xmm2	# src_4(D)->h[1].c[1].real, b1r
	movapd	%xmm2, %xmm8	# b1r, b1r
	movq	-16(%rbp), %rax	# src, tmp280
	movsd	72(%rax), %xmm2	# src_4(D)->h[1].c[1].imag, b1i
	movapd	%xmm2, %xmm9	# b1i, b1i
	.loc 1 92 0
	movq	-8(%rbp), %rax	# mat, tmp281
	movsd	128(%rax), %xmm2	# mat_1(D)->e[2][2].real, a2r
	movq	-8(%rbp), %rax	# mat, tmp282
	movsd	136(%rax), %xmm7	# mat_1(D)->e[2][2].imag, a2i
	.loc 1 93 0
	movq	-16(%rbp), %rax	# src, tmp283
	movsd	80(%rax), %xmm1	# src_4(D)->h[1].c[2].real, b2r
	movapd	%xmm1, %xmm10	# b2r, b2r
	movq	-16(%rbp), %rax	# src, tmp284
	movsd	88(%rax), %xmm1	# src_4(D)->h[1].c[2].imag, b2i
	movapd	%xmm1, %xmm11	# b2i, b2i
	.loc 1 95 0
	movapd	%xmm6, %xmm0	# a0r, D.2312
	mulsd	%xmm14, %xmm0	# b0r, D.2312
	movapd	%xmm3, %xmm1	# a0i, D.2312
	mulsd	%xmm15, %xmm1	# b0i, D.2312
	subsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm4, %xmm0	# a1r, D.2312
	mulsd	%xmm8, %xmm0	# b1r, D.2312
	addsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm5, %xmm1	# a1i, D.2312
	mulsd	%xmm9, %xmm1	# b1i, D.2312
	subsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm2, %xmm0	# a2r, D.2312
	mulsd	%xmm10, %xmm0	# b2r, D.2312
	addsd	%xmm1, %xmm0	# D.2312, D.2312
	movapd	%xmm7, %xmm1	# a2i, D.2312
	mulsd	%xmm11, %xmm1	# b2i, D.2312
	subsd	%xmm1, %xmm0	# D.2312, D.2312
	movq	-24(%rbp), %rax	# dest, tmp285
	movsd	%xmm0, 80(%rax)	# D.2312, dest_26(D)->h[1].c[2].real
	.loc 1 96 0
	mulsd	%xmm15, %xmm6	# b0i, D.2312
	movapd	%xmm6, %xmm1	# D.2312, D.2312
	mulsd	%xmm14, %xmm3	# b0r, D.2312
	movapd	%xmm3, %xmm0	# D.2312, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm4, %xmm0	# a1r, D.2312
	mulsd	%xmm9, %xmm0	# b1i, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	mulsd	%xmm8, %xmm5	# b1r, D.2312
	movapd	%xmm5, %xmm0	# D.2312, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	movapd	%xmm2, %xmm0	# a2r, D.2312
	mulsd	%xmm11, %xmm0	# b2i, D.2312
	addsd	%xmm0, %xmm1	# D.2312, D.2312
	mulsd	%xmm10, %xmm7	# b2r, D.2312
	movapd	%xmm7, %xmm0	# D.2312, D.2312
	addsd	%xmm1, %xmm0	# D.2312, D.2312
	movq	-24(%rbp), %rax	# dest, tmp286
	movsd	%xmm0, 88(%rax)	# D.2312, dest_26(D)->h[1].c[2].imag
	.loc 1 98 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	mult_su3_mat_hwvec, .-mult_su3_mat_hwvec
.Letext0:
	.file 2 "complex.h"
	.file 3 "su3.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1e1
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF11
	.byte	0x1
	.long	.LASF12
	.long	.LASF13
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
	.uleb128 0x2
	.byte	0x60
	.byte	0x3
	.byte	0x2f
	.long	0xe3
	.uleb128 0x6
	.string	"h"
	.byte	0x3
	.byte	0x2f
	.long	0xe3
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0xc5
	.long	0xf3
	.uleb128 0x8
	.long	0x90
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x3
	.byte	0x2f
	.long	0xd0
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0xa
	.long	.LASF14
	.byte	0x1
	.byte	0x17
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d8
	.uleb128 0xb
	.string	"mat"
	.byte	0x1
	.byte	0x17
	.long	0x1d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"src"
	.byte	0x1
	.byte	0x17
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.long	.LASF10
	.byte	0x1
	.byte	0x18
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"a0r"
	.byte	0x1
	.byte	0x1e
	.long	0x4e
	.uleb128 0xd
	.string	"a0i"
	.byte	0x1
	.byte	0x1e
	.long	0x4e
	.uleb128 0xd
	.string	"a1r"
	.byte	0x1
	.byte	0x1e
	.long	0x4e
	.uleb128 0xd
	.string	"a1i"
	.byte	0x1
	.byte	0x1e
	.long	0x4e
	.uleb128 0xd
	.string	"a2r"
	.byte	0x1
	.byte	0x1e
	.long	0x4e
	.uleb128 0xd
	.string	"a2i"
	.byte	0x1
	.byte	0x1e
	.long	0x4e
	.uleb128 0xd
	.string	"b0r"
	.byte	0x1
	.byte	0x1f
	.long	0x4e
	.uleb128 0xd
	.string	"b0i"
	.byte	0x1
	.byte	0x1f
	.long	0x4e
	.uleb128 0xd
	.string	"b1r"
	.byte	0x1
	.byte	0x1f
	.long	0x4e
	.uleb128 0xd
	.string	"b1i"
	.byte	0x1
	.byte	0x1f
	.long	0x4e
	.uleb128 0xd
	.string	"b2r"
	.byte	0x1
	.byte	0x1f
	.long	0x4e
	.uleb128 0xd
	.string	"b2i"
	.byte	0x1
	.byte	0x1f
	.long	0x4e
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x97
	.uleb128 0xe
	.byte	0x8
	.long	0xf3
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
.LASF14:
	.string	"mult_su3_mat_hwvec"
.LASF10:
	.string	"dest"
.LASF3:
	.string	"long unsigned int"
.LASF13:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF2:
	.string	"double"
.LASF1:
	.string	"imag"
.LASF9:
	.string	"unsigned int"
.LASF0:
	.string	"real"
.LASF4:
	.string	"sizetype"
.LASF8:
	.string	"half_wilson_vector"
.LASF11:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF12:
	.string	"m_mat_hwvec.c"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
