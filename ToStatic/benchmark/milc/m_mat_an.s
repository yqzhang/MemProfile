	.file	"m_mat_an.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# m_mat_an.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	mult_su3_an
	.type	mult_su3_an, @function
mult_su3_an:
.LFB0:
	.file 1 "m_mat_an.c"
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
	.loc 1 39 0
	movl	$0, -4(%rbp)	#, j
	jmp	.L2	#
.L3:
	.loc 1 41 0 discriminator 2
	movq	-24(%rbp), %rax	# a, tmp137
	movsd	(%rax), %xmm2	# a_3(D)->e[0][0].real, a0r
	movq	-24(%rbp), %rax	# a, tmp138
	movsd	8(%rax), %xmm3	# a_3(D)->e[0][0].imag, a0i
	.loc 1 42 0 discriminator 2
	movq	-32(%rbp), %rax	# b, tmp139
	movl	-4(%rbp), %edx	# j, tmp141
	movslq	%edx, %rdx	# tmp141, tmp140
	salq	$4, %rdx	#, tmp142
	addq	%rdx, %rax	# tmp142, tmp143
	movsd	(%rax), %xmm5	# b_6(D)->e[0][j_1].real, b0r
	movapd	%xmm5, %xmm8	# b0r, b0r
	movq	-32(%rbp), %rax	# b, tmp144
	movl	-4(%rbp), %edx	# j, tmp146
	movslq	%edx, %rdx	# tmp146, tmp145
	salq	$4, %rdx	#, tmp147
	addq	%rdx, %rax	# tmp147, tmp148
	addq	$8, %rax	#, tmp149
	movsd	(%rax), %xmm5	# b_6(D)->e[0][j_1].imag, b0i
	movapd	%xmm5, %xmm9	# b0i, b0i
	.loc 1 43 0 discriminator 2
	movq	-24(%rbp), %rax	# a, tmp150
	movsd	48(%rax), %xmm4	# a_3(D)->e[1][0].real, a1r
	movq	-24(%rbp), %rax	# a, tmp151
	movsd	56(%rax), %xmm5	# a_3(D)->e[1][0].imag, a1i
	.loc 1 44 0 discriminator 2
	movq	-32(%rbp), %rax	# b, tmp152
	movl	-4(%rbp), %edx	# j, tmp154
	movslq	%edx, %rdx	# tmp154, tmp153
	addq	$3, %rdx	#, tmp155
	salq	$4, %rdx	#, tmp156
	addq	%rdx, %rax	# tmp156, tmp157
	movsd	(%rax), %xmm6	# b_6(D)->e[1][j_1].real, b1r
	movapd	%xmm6, %xmm10	# b1r, b1r
	movq	-32(%rbp), %rax	# b, tmp158
	movl	-4(%rbp), %edx	# j, tmp160
	movslq	%edx, %rdx	# tmp160, tmp159
	addq	$3, %rdx	#, tmp161
	salq	$4, %rdx	#, tmp162
	addq	%rdx, %rax	# tmp162, tmp163
	addq	$8, %rax	#, tmp164
	movsd	(%rax), %xmm6	# b_6(D)->e[1][j_1].imag, b1i
	movapd	%xmm6, %xmm11	# b1i, b1i
	.loc 1 45 0 discriminator 2
	movq	-24(%rbp), %rax	# a, tmp165
	movsd	96(%rax), %xmm6	# a_3(D)->e[2][0].real, a2r
	movq	-24(%rbp), %rax	# a, tmp166
	movsd	104(%rax), %xmm7	# a_3(D)->e[2][0].imag, a2i
	.loc 1 46 0 discriminator 2
	movq	-32(%rbp), %rax	# b, tmp167
	movl	-4(%rbp), %edx	# j, tmp169
	movslq	%edx, %rdx	# tmp169, tmp168
	addq	$6, %rdx	#, tmp170
	salq	$4, %rdx	#, tmp171
	addq	%rdx, %rax	# tmp171, tmp172
	movsd	(%rax), %xmm1	# b_6(D)->e[2][j_1].real, b2r
	movapd	%xmm1, %xmm12	# b2r, b2r
	movq	-32(%rbp), %rax	# b, tmp173
	movl	-4(%rbp), %edx	# j, tmp175
	movslq	%edx, %rdx	# tmp175, tmp174
	addq	$6, %rdx	#, tmp176
	salq	$4, %rdx	#, tmp177
	addq	%rdx, %rax	# tmp177, tmp178
	addq	$8, %rax	#, tmp179
	movsd	(%rax), %xmm1	# b_6(D)->e[2][j_1].imag, b2i
	movapd	%xmm1, %xmm13	# b2i, b2i
	.loc 1 48 0 discriminator 2
	movapd	%xmm2, %xmm1	# a0r, D.2250
	mulsd	%xmm8, %xmm1	# b0r, D.2250
	movapd	%xmm3, %xmm0	# a0i, D.2250
	mulsd	%xmm9, %xmm0	# b0i, D.2250
	addsd	%xmm0, %xmm1	# D.2250, D.2250
	movapd	%xmm4, %xmm0	# a1r, D.2250
	mulsd	%xmm10, %xmm0	# b1r, D.2250
	addsd	%xmm0, %xmm1	# D.2250, D.2250
	movapd	%xmm5, %xmm0	# a1i, D.2250
	mulsd	%xmm11, %xmm0	# b1i, D.2250
	addsd	%xmm0, %xmm1	# D.2250, D.2250
	movapd	%xmm6, %xmm0	# a2r, D.2250
	mulsd	%xmm12, %xmm0	# b2r, D.2250
	addsd	%xmm0, %xmm1	# D.2250, D.2250
	movapd	%xmm7, %xmm0	# a2i, D.2250
	mulsd	%xmm13, %xmm0	# b2i, D.2250
	addsd	%xmm1, %xmm0	# D.2250, D.2250
	movq	-40(%rbp), %rax	# c, tmp180
	movl	-4(%rbp), %edx	# j, tmp182
	movslq	%edx, %rdx	# tmp182, tmp181
	salq	$4, %rdx	#, tmp183
	addq	%rdx, %rax	# tmp183, tmp184
	movsd	%xmm0, (%rax)	# D.2250, c_28(D)->e[0][j_1].real
	.loc 1 49 0 discriminator 2
	mulsd	%xmm9, %xmm2	# b0i, D.2250
	movapd	%xmm2, %xmm0	# D.2250, D.2250
	mulsd	%xmm8, %xmm3	# b0r, D.2250
	movapd	%xmm3, %xmm1	# D.2250, D.2250
	subsd	%xmm1, %xmm0	# D.2250, D.2250
	movapd	%xmm0, %xmm1	# D.2250, D.2250
	movapd	%xmm4, %xmm0	# a1r, D.2250
	mulsd	%xmm11, %xmm0	# b1i, D.2250
	addsd	%xmm1, %xmm0	# D.2250, D.2250
	mulsd	%xmm10, %xmm5	# b1r, D.2250
	movapd	%xmm5, %xmm1	# D.2250, D.2250
	subsd	%xmm1, %xmm0	# D.2250, D.2250
	movapd	%xmm0, %xmm1	# D.2250, D.2250
	movapd	%xmm6, %xmm0	# a2r, D.2250
	mulsd	%xmm13, %xmm0	# b2i, D.2250
	addsd	%xmm1, %xmm0	# D.2250, D.2250
	mulsd	%xmm12, %xmm7	# b2r, D.2250
	movapd	%xmm7, %xmm1	# D.2250, D.2250
	subsd	%xmm1, %xmm0	# D.2250, D.2250
	movq	-40(%rbp), %rax	# c, tmp185
	movl	-4(%rbp), %edx	# j, tmp187
	movslq	%edx, %rdx	# tmp187, tmp186
	salq	$4, %rdx	#, tmp188
	addq	%rdx, %rax	# tmp188, tmp189
	addq	$8, %rax	#, tmp190
	movsd	%xmm0, (%rax)	# D.2250, c_28(D)->e[0][j_1].imag
	.loc 1 51 0 discriminator 2
	movq	-24(%rbp), %rax	# a, tmp191
	movsd	16(%rax), %xmm4	# a_3(D)->e[0][1].real, a0r
	movq	-24(%rbp), %rax	# a, tmp192
	movsd	24(%rax), %xmm6	# a_3(D)->e[0][1].imag, a0i
	.loc 1 52 0 discriminator 2
	movq	-32(%rbp), %rax	# b, tmp193
	movl	-4(%rbp), %edx	# j, tmp195
	movslq	%edx, %rdx	# tmp195, tmp194
	salq	$4, %rdx	#, tmp196
	addq	%rdx, %rax	# tmp196, tmp197
	movsd	(%rax), %xmm2	# b_6(D)->e[0][j_1].real, b0r
	movapd	%xmm2, %xmm14	# b0r, b0r
	movq	-32(%rbp), %rax	# b, tmp198
	movl	-4(%rbp), %edx	# j, tmp200
	movslq	%edx, %rdx	# tmp200, tmp199
	salq	$4, %rdx	#, tmp201
	addq	%rdx, %rax	# tmp201, tmp202
	addq	$8, %rax	#, tmp203
	movsd	(%rax), %xmm3	# b_6(D)->e[0][j_1].imag, b0i
	movapd	%xmm3, %xmm15	# b0i, b0i
	.loc 1 53 0 discriminator 2
	movq	-24(%rbp), %rax	# a, tmp204
	movsd	64(%rax), %xmm2	# a_3(D)->e[1][1].real, a1r
	movq	-24(%rbp), %rax	# a, tmp205
	movsd	72(%rax), %xmm3	# a_3(D)->e[1][1].imag, a1i
	.loc 1 54 0 discriminator 2
	movq	-32(%rbp), %rax	# b, tmp206
	movl	-4(%rbp), %edx	# j, tmp208
	movslq	%edx, %rdx	# tmp208, tmp207
	addq	$3, %rdx	#, tmp209
	salq	$4, %rdx	#, tmp210
	addq	%rdx, %rax	# tmp210, tmp211
	movsd	(%rax), %xmm5	# b_6(D)->e[1][j_1].real, b1r
	movapd	%xmm5, %xmm8	# b1r, b1r
	movq	-32(%rbp), %rax	# b, tmp212
	movl	-4(%rbp), %edx	# j, tmp214
	movslq	%edx, %rdx	# tmp214, tmp213
	addq	$3, %rdx	#, tmp215
	salq	$4, %rdx	#, tmp216
	addq	%rdx, %rax	# tmp216, tmp217
	addq	$8, %rax	#, tmp218
	movsd	(%rax), %xmm5	# b_6(D)->e[1][j_1].imag, b1i
	movapd	%xmm5, %xmm9	# b1i, b1i
	.loc 1 55 0 discriminator 2
	movq	-24(%rbp), %rax	# a, tmp219
	movsd	112(%rax), %xmm5	# a_3(D)->e[2][1].real, a2r
	movq	-24(%rbp), %rax	# a, tmp220
	movsd	120(%rax), %xmm7	# a_3(D)->e[2][1].imag, a2i
	.loc 1 56 0 discriminator 2
	movq	-32(%rbp), %rax	# b, tmp221
	movl	-4(%rbp), %edx	# j, tmp223
	movslq	%edx, %rdx	# tmp223, tmp222
	addq	$6, %rdx	#, tmp224
	salq	$4, %rdx	#, tmp225
	addq	%rdx, %rax	# tmp225, tmp226
	movsd	(%rax), %xmm1	# b_6(D)->e[2][j_1].real, b2r
	movapd	%xmm1, %xmm10	# b2r, b2r
	movq	-32(%rbp), %rax	# b, tmp227
	movl	-4(%rbp), %edx	# j, tmp229
	movslq	%edx, %rdx	# tmp229, tmp228
	addq	$6, %rdx	#, tmp230
	salq	$4, %rdx	#, tmp231
	addq	%rdx, %rax	# tmp231, tmp232
	addq	$8, %rax	#, tmp233
	movsd	(%rax), %xmm1	# b_6(D)->e[2][j_1].imag, b2i
	movapd	%xmm1, %xmm11	# b2i, b2i
	.loc 1 58 0 discriminator 2
	movapd	%xmm4, %xmm1	# a0r, D.2250
	mulsd	%xmm14, %xmm1	# b0r, D.2250
	movapd	%xmm6, %xmm0	# a0i, D.2250
	mulsd	%xmm15, %xmm0	# b0i, D.2250
	addsd	%xmm0, %xmm1	# D.2250, D.2250
	movapd	%xmm2, %xmm0	# a1r, D.2250
	mulsd	%xmm8, %xmm0	# b1r, D.2250
	addsd	%xmm0, %xmm1	# D.2250, D.2250
	movapd	%xmm3, %xmm0	# a1i, D.2250
	mulsd	%xmm9, %xmm0	# b1i, D.2250
	addsd	%xmm0, %xmm1	# D.2250, D.2250
	movapd	%xmm5, %xmm0	# a2r, D.2250
	mulsd	%xmm10, %xmm0	# b2r, D.2250
	addsd	%xmm0, %xmm1	# D.2250, D.2250
	movapd	%xmm7, %xmm0	# a2i, D.2250
	mulsd	%xmm11, %xmm0	# b2i, D.2250
	addsd	%xmm1, %xmm0	# D.2250, D.2250
	movq	-40(%rbp), %rax	# c, tmp234
	movl	-4(%rbp), %edx	# j, tmp236
	movslq	%edx, %rdx	# tmp236, tmp235
	addq	$3, %rdx	#, tmp237
	salq	$4, %rdx	#, tmp238
	addq	%rdx, %rax	# tmp238, tmp239
	movsd	%xmm0, (%rax)	# D.2250, c_28(D)->e[1][j_1].real
	.loc 1 59 0 discriminator 2
	mulsd	%xmm15, %xmm4	# b0i, D.2250
	movapd	%xmm4, %xmm0	# D.2250, D.2250
	mulsd	%xmm14, %xmm6	# b0r, D.2250
	movapd	%xmm6, %xmm1	# D.2250, D.2250
	subsd	%xmm1, %xmm0	# D.2250, D.2250
	movapd	%xmm0, %xmm1	# D.2250, D.2250
	movapd	%xmm2, %xmm0	# a1r, D.2250
	mulsd	%xmm9, %xmm0	# b1i, D.2250
	addsd	%xmm1, %xmm0	# D.2250, D.2250
	mulsd	%xmm8, %xmm3	# b1r, D.2250
	movapd	%xmm3, %xmm1	# D.2250, D.2250
	subsd	%xmm1, %xmm0	# D.2250, D.2250
	movapd	%xmm0, %xmm1	# D.2250, D.2250
	movapd	%xmm5, %xmm0	# a2r, D.2250
	mulsd	%xmm11, %xmm0	# b2i, D.2250
	addsd	%xmm1, %xmm0	# D.2250, D.2250
	mulsd	%xmm10, %xmm7	# b2r, D.2250
	movapd	%xmm7, %xmm1	# D.2250, D.2250
	subsd	%xmm1, %xmm0	# D.2250, D.2250
	movq	-40(%rbp), %rax	# c, tmp240
	movl	-4(%rbp), %edx	# j, tmp242
	movslq	%edx, %rdx	# tmp242, tmp241
	addq	$3, %rdx	#, tmp243
	salq	$4, %rdx	#, tmp244
	addq	%rdx, %rax	# tmp244, tmp245
	addq	$8, %rax	#, tmp246
	movsd	%xmm0, (%rax)	# D.2250, c_28(D)->e[1][j_1].imag
	.loc 1 61 0 discriminator 2
	movq	-24(%rbp), %rax	# a, tmp247
	movsd	32(%rax), %xmm2	# a_3(D)->e[0][2].real, a0r
	movq	-24(%rbp), %rax	# a, tmp248
	movsd	40(%rax), %xmm4	# a_3(D)->e[0][2].imag, a0i
	.loc 1 62 0 discriminator 2
	movq	-32(%rbp), %rax	# b, tmp249
	movl	-4(%rbp), %edx	# j, tmp251
	movslq	%edx, %rdx	# tmp251, tmp250
	salq	$4, %rdx	#, tmp252
	addq	%rdx, %rax	# tmp252, tmp253
	movsd	(%rax), %xmm3	# b_6(D)->e[0][j_1].real, b0r
	movapd	%xmm3, %xmm12	# b0r, b0r
	movq	-32(%rbp), %rax	# b, tmp254
	movl	-4(%rbp), %edx	# j, tmp256
	movslq	%edx, %rdx	# tmp256, tmp255
	salq	$4, %rdx	#, tmp257
	addq	%rdx, %rax	# tmp257, tmp258
	addq	$8, %rax	#, tmp259
	movsd	(%rax), %xmm7	# b_6(D)->e[0][j_1].imag, b0i
	movapd	%xmm7, %xmm13	# b0i, b0i
	.loc 1 63 0 discriminator 2
	movq	-24(%rbp), %rax	# a, tmp260
	movsd	80(%rax), %xmm5	# a_3(D)->e[1][2].real, a1r
	movq	-24(%rbp), %rax	# a, tmp261
	movsd	88(%rax), %xmm6	# a_3(D)->e[1][2].imag, a1i
	.loc 1 64 0 discriminator 2
	movq	-32(%rbp), %rax	# b, tmp262
	movl	-4(%rbp), %edx	# j, tmp264
	movslq	%edx, %rdx	# tmp264, tmp263
	addq	$3, %rdx	#, tmp265
	salq	$4, %rdx	#, tmp266
	addq	%rdx, %rax	# tmp266, tmp267
	movsd	(%rax), %xmm3	# b_6(D)->e[1][j_1].real, b1r
	movapd	%xmm3, %xmm14	# b1r, b1r
	movq	-32(%rbp), %rax	# b, tmp268
	movl	-4(%rbp), %edx	# j, tmp270
	movslq	%edx, %rdx	# tmp270, tmp269
	addq	$3, %rdx	#, tmp271
	salq	$4, %rdx	#, tmp272
	addq	%rdx, %rax	# tmp272, tmp273
	addq	$8, %rax	#, tmp274
	movsd	(%rax), %xmm7	# b_6(D)->e[1][j_1].imag, b1i
	movapd	%xmm7, %xmm15	# b1i, b1i
	.loc 1 65 0 discriminator 2
	movq	-24(%rbp), %rax	# a, tmp275
	movsd	128(%rax), %xmm3	# a_3(D)->e[2][2].real, a2r
	movq	-24(%rbp), %rax	# a, tmp276
	movsd	136(%rax), %xmm7	# a_3(D)->e[2][2].imag, a2i
	.loc 1 66 0 discriminator 2
	movq	-32(%rbp), %rax	# b, tmp277
	movl	-4(%rbp), %edx	# j, tmp279
	movslq	%edx, %rdx	# tmp279, tmp278
	addq	$6, %rdx	#, tmp280
	salq	$4, %rdx	#, tmp281
	addq	%rdx, %rax	# tmp281, tmp282
	movsd	(%rax), %xmm1	# b_6(D)->e[2][j_1].real, b2r
	movapd	%xmm1, %xmm8	# b2r, b2r
	movq	-32(%rbp), %rax	# b, tmp283
	movl	-4(%rbp), %edx	# j, tmp285
	movslq	%edx, %rdx	# tmp285, tmp284
	addq	$6, %rdx	#, tmp286
	salq	$4, %rdx	#, tmp287
	addq	%rdx, %rax	# tmp287, tmp288
	addq	$8, %rax	#, tmp289
	movsd	(%rax), %xmm1	# b_6(D)->e[2][j_1].imag, b2i
	movapd	%xmm1, %xmm9	# b2i, b2i
	.loc 1 68 0 discriminator 2
	movapd	%xmm2, %xmm1	# a0r, D.2250
	mulsd	%xmm12, %xmm1	# b0r, D.2250
	movapd	%xmm4, %xmm0	# a0i, D.2250
	mulsd	%xmm13, %xmm0	# b0i, D.2250
	addsd	%xmm0, %xmm1	# D.2250, D.2250
	movapd	%xmm5, %xmm0	# a1r, D.2250
	mulsd	%xmm14, %xmm0	# b1r, D.2250
	addsd	%xmm0, %xmm1	# D.2250, D.2250
	movapd	%xmm6, %xmm0	# a1i, D.2250
	mulsd	%xmm15, %xmm0	# b1i, D.2250
	addsd	%xmm0, %xmm1	# D.2250, D.2250
	movapd	%xmm3, %xmm0	# a2r, D.2250
	mulsd	%xmm8, %xmm0	# b2r, D.2250
	addsd	%xmm0, %xmm1	# D.2250, D.2250
	movapd	%xmm7, %xmm0	# a2i, D.2250
	mulsd	%xmm9, %xmm0	# b2i, D.2250
	addsd	%xmm1, %xmm0	# D.2250, D.2250
	movq	-40(%rbp), %rax	# c, tmp290
	movl	-4(%rbp), %edx	# j, tmp292
	movslq	%edx, %rdx	# tmp292, tmp291
	addq	$6, %rdx	#, tmp293
	salq	$4, %rdx	#, tmp294
	addq	%rdx, %rax	# tmp294, tmp295
	movsd	%xmm0, (%rax)	# D.2250, c_28(D)->e[2][j_1].real
	.loc 1 69 0 discriminator 2
	mulsd	%xmm13, %xmm2	# b0i, D.2250
	movapd	%xmm2, %xmm0	# D.2250, D.2250
	mulsd	%xmm12, %xmm4	# b0r, D.2250
	movapd	%xmm4, %xmm1	# D.2250, D.2250
	subsd	%xmm1, %xmm0	# D.2250, D.2250
	movapd	%xmm0, %xmm1	# D.2250, D.2250
	movapd	%xmm5, %xmm0	# a1r, D.2250
	mulsd	%xmm15, %xmm0	# b1i, D.2250
	addsd	%xmm1, %xmm0	# D.2250, D.2250
	mulsd	%xmm14, %xmm6	# b1r, D.2250
	movapd	%xmm6, %xmm1	# D.2250, D.2250
	subsd	%xmm1, %xmm0	# D.2250, D.2250
	movapd	%xmm0, %xmm1	# D.2250, D.2250
	movapd	%xmm3, %xmm0	# a2r, D.2250
	mulsd	%xmm9, %xmm0	# b2i, D.2250
	addsd	%xmm1, %xmm0	# D.2250, D.2250
	mulsd	%xmm8, %xmm7	# b2r, D.2250
	movapd	%xmm7, %xmm1	# D.2250, D.2250
	subsd	%xmm1, %xmm0	# D.2250, D.2250
	movq	-40(%rbp), %rax	# c, tmp296
	movl	-4(%rbp), %edx	# j, tmp298
	movslq	%edx, %rdx	# tmp298, tmp297
	addq	$6, %rdx	#, tmp299
	salq	$4, %rdx	#, tmp300
	addq	%rdx, %rax	# tmp300, tmp301
	addq	$8, %rax	#, tmp302
	movsd	%xmm0, (%rax)	# D.2250, c_28(D)->e[2][j_1].imag
	.loc 1 39 0 discriminator 2
	addl	$1, -4(%rbp)	#, j
.L2:
	.loc 1 39 0 is_stmt 0 discriminator 1
	cmpl	$2, -4(%rbp)	#, j
	jle	.L3	#,
	.loc 1 72 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	mult_su3_an, .-mult_su3_an
.Letext0:
	.file 2 "complex.h"
	.file 3 "su3.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x185
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
	.long	0x182
	.uleb128 0xb
	.string	"a"
	.byte	0x1
	.byte	0x1c
	.long	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"b"
	.byte	0x1
	.byte	0x1c
	.long	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"c"
	.byte	0x1
	.byte	0x1c
	.long	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.byte	0x1d
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"a0r"
	.byte	0x1
	.byte	0x23
	.long	0x4e
	.uleb128 0xd
	.string	"a0i"
	.byte	0x1
	.byte	0x23
	.long	0x4e
	.uleb128 0xd
	.string	"a1r"
	.byte	0x1
	.byte	0x23
	.long	0x4e
	.uleb128 0xd
	.string	"a1i"
	.byte	0x1
	.byte	0x23
	.long	0x4e
	.uleb128 0xd
	.string	"a2r"
	.byte	0x1
	.byte	0x23
	.long	0x4e
	.uleb128 0xd
	.string	"a2i"
	.byte	0x1
	.byte	0x23
	.long	0x4e
	.uleb128 0xd
	.string	"b0r"
	.byte	0x1
	.byte	0x24
	.long	0x4e
	.uleb128 0xd
	.string	"b0i"
	.byte	0x1
	.byte	0x24
	.long	0x4e
	.uleb128 0xd
	.string	"b1r"
	.byte	0x1
	.byte	0x24
	.long	0x4e
	.uleb128 0xd
	.string	"b1i"
	.byte	0x1
	.byte	0x24
	.long	0x4e
	.uleb128 0xd
	.string	"b2r"
	.byte	0x1
	.byte	0x24
	.long	0x4e
	.uleb128 0xd
	.string	"b2i"
	.byte	0x1
	.byte	0x24
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
.LASF3:
	.string	"long unsigned int"
.LASF11:
	.string	"mult_su3_an"
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
.LASF9:
	.string	"m_mat_an.c"
.LASF8:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
