	.file	"gaugefix2.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# gaugefix2.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	diffmatp,8,8
	.comm	sumvecp,8,8
	.comm	diffmat_offset,4,4
	.comm	sumvec_offset,4,4
	.globl	accum_gauge_hit
	.type	accum_gauge_hit, @function
accum_gauge_hit:
.LFB2:
	.file 1 "gaugefix2.c"
	.loc 1 84 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -52(%rbp)	# gauge_dir, gauge_dir
	movl	%esi, -56(%rbp)	# parity, parity
	.loc 1 98 0
	cmpl	$1, -56(%rbp)	#, parity
	jne	.L2	#,
	.loc 1 98 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.0
	jmp	.L3	#
.L2:
	.loc 1 98 0 discriminator 2
	movl	$0, %eax	#, iftmp.0
.L3:
	.loc 1 98 0 discriminator 3
	movl	%eax, %r12d	# iftmp.0, i
	movq	lattice(%rip), %rax	# lattice, lattice.1
	movslq	%r12d, %rdx	# i, D.5661
	salq	$11, %rdx	#, D.5661
	leaq	(%rax,%rdx), %r13	#, s
	jmp	.L4	#
.L11:
	.loc 1 100 0 is_stmt 1
	movl	diffmat_offset(%rip), %eax	# diffmat_offset, diffmat_offset.2
	testl	%eax, %eax	# diffmat_offset.2
	js	.L5	#,
	.loc 1 101 0
	movl	diffmat_offset(%rip), %eax	# diffmat_offset, diffmat_offset.3
	cltq
	addq	%r13, %rax	# s, D.5663
	movq	%rax, %rdi	# D.5663,
	call	clear_su3mat	#
	jmp	.L6	#
.L5:
	.loc 1 103 0
	movq	diffmatp(%rip), %rcx	# diffmatp, diffmatp.4
	movslq	%r12d, %rdx	# i, D.5661
	movq	%rdx, %rax	# D.5661, tmp212
	salq	$3, %rax	#, tmp212
	addq	%rdx, %rax	# D.5661, tmp212
	salq	$4, %rax	#, tmp213
	addq	%rcx, %rax	# diffmatp.4, D.5663
	movq	%rax, %rdi	# D.5663,
	call	clear_su3mat	#
.L6:
	.loc 1 104 0
	movl	sumvec_offset(%rip), %eax	# sumvec_offset, sumvec_offset.5
	testl	%eax, %eax	# sumvec_offset.5
	js	.L7	#,
	.loc 1 105 0
	movl	sumvec_offset(%rip), %eax	# sumvec_offset, sumvec_offset.6
	cltq
	addq	%r13, %rax	# s, D.5664
	movq	%rax, %rdi	# D.5664,
	call	clearvec	#
	jmp	.L8	#
.L7:
	.loc 1 107 0
	movq	sumvecp(%rip), %rcx	# sumvecp, sumvecp.7
	movslq	%r12d, %rdx	# i, D.5661
	movq	%rdx, %rax	# D.5661, tmp214
	addq	%rax, %rax	# tmp214
	addq	%rdx, %rax	# D.5661, tmp214
	salq	$4, %rax	#, tmp215
	addq	%rcx, %rax	# sumvecp.7, D.5664
	movq	%rax, %rdi	# D.5664,
	call	clearvec	#
.L8:
	.loc 1 98 0
	addl	$1, %r12d	#, i
	addq	$2048, %r13	#, s
.L4:
	.loc 1 98 0 is_stmt 0 discriminator 1
	cmpl	$2, -56(%rbp)	#, parity
	jne	.L9	#,
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.8
	jmp	.L10	#
.L9:
	.loc 1 98 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.8
.L10:
	.loc 1 98 0 discriminator 3
	cmpl	%r12d, %eax	# i, iftmp.8
	jg	.L11	#,
	.loc 1 112 0 is_stmt 1
	cmpl	$1, -56(%rbp)	#, parity
	jne	.L12	#,
	.loc 1 112 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.9
	jmp	.L13	#
.L12:
	.loc 1 112 0 discriminator 2
	movl	$0, %eax	#, iftmp.9
.L13:
	.loc 1 112 0 discriminator 3
	movl	%eax, %r12d	# iftmp.9, i
	movq	lattice(%rip), %rax	# lattice, lattice.10
	movslq	%r12d, %rdx	# i, D.5661
	salq	$11, %rdx	#, D.5661
	leaq	(%rax,%rdx), %r13	#, s
	jmp	.L14	#
.L27:
	.loc 1 114 0 is_stmt 1
	movl	$0, %r14d	#, dir
	jmp	.L15	#
.L24:
	.loc 1 114 0 is_stmt 0 discriminator 2
	cmpl	-52(%rbp), %r14d	# gauge_dir, dir
	je	.L16	#,
	.loc 1 117 0 is_stmt 1
	movslq	%r14d, %rdx	# dir, tmp216
	movq	%rdx, %rax	# tmp216, tmp217
	salq	$3, %rax	#, tmp217
	addq	%rdx, %rax	# tmp216, tmp217
	salq	$4, %rax	#, tmp218
	addq	$112, %rax	#, tmp219
	leaq	0(%r13,%rax), %r15	#, m1
	.loc 1 118 0
	movl	diffmat_offset(%rip), %eax	# diffmat_offset, diffmat_offset.11
	testl	%eax, %eax	# diffmat_offset.11
	js	.L17	#,
	.loc 1 119 0
	movl	diffmat_offset(%rip), %eax	# diffmat_offset, diffmat_offset.12
	cltq
	leaq	0(%r13,%rax), %rdx	#, D.5663
	movl	diffmat_offset(%rip), %eax	# diffmat_offset, diffmat_offset.13
	cltq
	addq	%r13, %rax	# s, D.5663
	movq	%r15, %rsi	# m1,
	movq	%rax, %rdi	# D.5663,
	call	sub_su3_matrix	#
	jmp	.L18	#
.L17:
	.loc 1 122 0
	movq	diffmatp(%rip), %rcx	# diffmatp, diffmatp.14
	movslq	%r12d, %rdx	# i, D.5661
	movq	%rdx, %rax	# D.5661, tmp220
	salq	$3, %rax	#, tmp220
	addq	%rdx, %rax	# D.5661, tmp220
	salq	$4, %rax	#, tmp221
	addq	%rax, %rcx	# D.5661, D.5663
	movq	diffmatp(%rip), %rsi	# diffmatp, diffmatp.15
	movslq	%r12d, %rdx	# i, D.5661
	movq	%rdx, %rax	# D.5661, tmp222
	salq	$3, %rax	#, tmp222
	addq	%rdx, %rax	# D.5661, tmp222
	salq	$4, %rax	#, tmp223
	addq	%rsi, %rax	# diffmatp.15, D.5663
	movq	%rcx, %rdx	# D.5663,
	movq	%r15, %rsi	# m1,
	movq	%rax, %rdi	# D.5663,
	call	sub_su3_matrix	#
.L18:
	.loc 1 124 0
	movl	sumvec_offset(%rip), %eax	# sumvec_offset, sumvec_offset.16
	testl	%eax, %eax	# sumvec_offset.16
	js	.L19	#,
	.loc 1 126 0
	movl	$0, %ebx	#, j
	jmp	.L20	#
.L21:
	.loc 1 126 0 is_stmt 0 discriminator 2
	movl	sumvec_offset(%rip), %eax	# sumvec_offset, sumvec_offset.17
	cltq
	leaq	0(%r13,%rax), %rdx	#, D.5664
	movl	sumvec_offset(%rip), %eax	# sumvec_offset, sumvec_offset.18
	cltq
	leaq	0(%r13,%rax), %rcx	#, D.5664
	movslq	%ebx, %rax	# j, tmp224
	salq	$4, %rax	#, tmp225
	addq	%rcx, %rax	# D.5664, tmp226
	movsd	(%rax), %xmm1	# _81->c[j_1].real, D.5665
	movslq	%ebx, %rax	# j, tmp227
	salq	$6, %rax	#, tmp228
	addq	%r15, %rax	# m1, tmp229
	movsd	(%rax), %xmm0	# m1_58->e[j_1][j_1].real, D.5665
	addsd	%xmm1, %xmm0	# D.5665, D.5665
	movslq	%ebx, %rax	# j, tmp230
	salq	$4, %rax	#, tmp231
	addq	%rdx, %rax	# D.5664, tmp232
	movsd	%xmm0, (%rax)	# D.5665, _78->c[j_1].real
	movl	sumvec_offset(%rip), %eax	# sumvec_offset, sumvec_offset.19
	cltq
	leaq	0(%r13,%rax), %rdx	#, D.5664
	movl	sumvec_offset(%rip), %eax	# sumvec_offset, sumvec_offset.20
	cltq
	leaq	0(%r13,%rax), %rcx	#, D.5664
	movslq	%ebx, %rax	# j, tmp233
	salq	$4, %rax	#, tmp234
	addq	%rcx, %rax	# D.5664, tmp235
	addq	$8, %rax	#, tmp236
	movsd	(%rax), %xmm1	# _90->c[j_1].imag, D.5665
	movslq	%ebx, %rax	# j, tmp237
	salq	$6, %rax	#, tmp238
	addq	%r15, %rax	# m1, tmp239
	addq	$8, %rax	#, tmp240
	movsd	(%rax), %xmm0	# m1_58->e[j_1][j_1].imag, D.5665
	addsd	%xmm1, %xmm0	# D.5665, D.5665
	movslq	%ebx, %rax	# j, tmp241
	salq	$4, %rax	#, tmp242
	addq	%rdx, %rax	# D.5664, tmp243
	addq	$8, %rax	#, tmp244
	movsd	%xmm0, (%rax)	# D.5665, _87->c[j_1].imag
	addl	$1, %ebx	#, j
.L20:
	.loc 1 126 0 discriminator 1
	cmpl	$2, %ebx	#, j
	jle	.L21	#,
	jmp	.L16	#
.L19:
	.loc 1 131 0 is_stmt 1
	movl	$0, %ebx	#, j
	jmp	.L22	#
.L23:
	.loc 1 131 0 is_stmt 0 discriminator 2
	movq	sumvecp(%rip), %rcx	# sumvecp, sumvecp.21
	movslq	%r12d, %rdx	# i, D.5661
	movq	%rdx, %rax	# D.5661, tmp245
	addq	%rax, %rax	# tmp245
	addq	%rdx, %rax	# D.5661, tmp245
	salq	$4, %rax	#, tmp246
	leaq	(%rcx,%rax), %rsi	#, D.5664
	movq	sumvecp(%rip), %rcx	# sumvecp, sumvecp.22
	movslq	%r12d, %rdx	# i, D.5661
	movq	%rdx, %rax	# D.5661, tmp247
	addq	%rax, %rax	# tmp247
	addq	%rdx, %rax	# D.5661, tmp247
	salq	$4, %rax	#, tmp248
	leaq	(%rcx,%rax), %rdx	#, D.5664
	movslq	%ebx, %rax	# j, tmp249
	salq	$4, %rax	#, tmp250
	addq	%rdx, %rax	# D.5664, tmp251
	movsd	(%rax), %xmm1	# _103->c[j_2].real, D.5665
	movslq	%ebx, %rax	# j, tmp252
	salq	$6, %rax	#, tmp253
	addq	%r15, %rax	# m1, tmp254
	movsd	(%rax), %xmm0	# m1_58->e[j_2][j_2].real, D.5665
	addsd	%xmm1, %xmm0	# D.5665, D.5665
	movslq	%ebx, %rax	# j, tmp255
	salq	$4, %rax	#, tmp256
	addq	%rsi, %rax	# D.5664, tmp257
	movsd	%xmm0, (%rax)	# D.5665, _99->c[j_2].real
	movq	sumvecp(%rip), %rcx	# sumvecp, sumvecp.23
	movslq	%r12d, %rdx	# i, D.5661
	movq	%rdx, %rax	# D.5661, tmp258
	addq	%rax, %rax	# tmp258
	addq	%rdx, %rax	# D.5661, tmp258
	salq	$4, %rax	#, tmp259
	leaq	(%rcx,%rax), %rsi	#, D.5664
	movq	sumvecp(%rip), %rcx	# sumvecp, sumvecp.24
	movslq	%r12d, %rdx	# i, D.5661
	movq	%rdx, %rax	# D.5661, tmp260
	addq	%rax, %rax	# tmp260
	addq	%rdx, %rax	# D.5661, tmp260
	salq	$4, %rax	#, tmp261
	leaq	(%rcx,%rax), %rdx	#, D.5664
	movslq	%ebx, %rax	# j, tmp262
	salq	$4, %rax	#, tmp263
	addq	%rdx, %rax	# D.5664, tmp264
	addq	$8, %rax	#, tmp265
	movsd	(%rax), %xmm1	# _114->c[j_2].imag, D.5665
	movslq	%ebx, %rax	# j, tmp266
	salq	$6, %rax	#, tmp267
	addq	%r15, %rax	# m1, tmp268
	addq	$8, %rax	#, tmp269
	movsd	(%rax), %xmm0	# m1_58->e[j_2][j_2].imag, D.5665
	addsd	%xmm1, %xmm0	# D.5665, D.5665
	movslq	%ebx, %rax	# j, tmp270
	salq	$4, %rax	#, tmp271
	addq	%rsi, %rax	# D.5664, tmp272
	addq	$8, %rax	#, tmp273
	movsd	%xmm0, (%rax)	# D.5665, _110->c[j_2].imag
	addl	$1, %ebx	#, j
.L22:
	.loc 1 131 0 discriminator 1
	cmpl	$2, %ebx	#, j
	jle	.L23	#,
.L16:
	.loc 1 114 0 is_stmt 1 discriminator 1
	addl	$1, %r14d	#, dir
.L15:
	cmpl	$3, %r14d	#, dir
	jle	.L24	#,
	.loc 1 112 0
	addl	$1, %r12d	#, i
	addq	$2048, %r13	#, s
.L14:
	.loc 1 112 0 is_stmt 0 discriminator 1
	cmpl	$2, -56(%rbp)	#, parity
	jne	.L25	#,
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.25
	jmp	.L26	#
.L25:
	.loc 1 112 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.25
.L26:
	.loc 1 112 0 discriminator 3
	cmpl	%r12d, %eax	# i, iftmp.25
	jg	.L27	#,
	.loc 1 138 0 is_stmt 1
	cmpl	$1, -56(%rbp)	#, parity
	jne	.L28	#,
	.loc 1 138 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.26
	jmp	.L29	#
.L28:
	.loc 1 138 0 discriminator 2
	movl	$0, %eax	#, iftmp.26
.L29:
	.loc 1 138 0 discriminator 3
	movl	%eax, %r12d	# iftmp.26, i
	movq	lattice(%rip), %rax	# lattice, lattice.27
	movslq	%r12d, %rdx	# i, D.5661
	salq	$11, %rdx	#, D.5661
	leaq	(%rax,%rdx), %r13	#, s
	jmp	.L30	#
.L43:
	.loc 1 140 0 is_stmt 1
	movl	$0, %r14d	#, dir
	jmp	.L31	#
.L40:
	.loc 1 140 0 is_stmt 0 discriminator 2
	cmpl	-52(%rbp), %r14d	# gauge_dir, dir
	je	.L32	#,
	.loc 1 143 0 is_stmt 1
	movslq	%r14d, %rax	# dir, tmp274
	movq	gen_pt(,%rax,8), %rax	# gen_pt, D.5666
	movslq	%r12d, %rdx	# i, D.5661
	salq	$3, %rdx	#, D.5661
	addq	%rdx, %rax	# D.5661, D.5666
	movq	(%rax), %r15	# *_135, m2
	.loc 1 145 0
	movl	diffmat_offset(%rip), %eax	# diffmat_offset, diffmat_offset.28
	testl	%eax, %eax	# diffmat_offset.28
	js	.L33	#,
	.loc 1 146 0
	movl	diffmat_offset(%rip), %eax	# diffmat_offset, diffmat_offset.29
	cltq
	leaq	0(%r13,%rax), %rdx	#, D.5663
	movl	diffmat_offset(%rip), %eax	# diffmat_offset, diffmat_offset.30
	cltq
	addq	%r13, %rax	# s, D.5663
	movq	%r15, %rsi	# m2,
	movq	%rax, %rdi	# D.5663,
	call	add_su3_matrix	#
	jmp	.L34	#
.L33:
	.loc 1 149 0
	movq	diffmatp(%rip), %rcx	# diffmatp, diffmatp.31
	movslq	%r12d, %rdx	# i, D.5661
	movq	%rdx, %rax	# D.5661, tmp275
	salq	$3, %rax	#, tmp275
	addq	%rdx, %rax	# D.5661, tmp275
	salq	$4, %rax	#, tmp276
	addq	%rax, %rcx	# D.5661, D.5663
	movq	diffmatp(%rip), %rsi	# diffmatp, diffmatp.32
	movslq	%r12d, %rdx	# i, D.5661
	movq	%rdx, %rax	# D.5661, tmp277
	salq	$3, %rax	#, tmp277
	addq	%rdx, %rax	# D.5661, tmp277
	salq	$4, %rax	#, tmp278
	addq	%rsi, %rax	# diffmatp.32, D.5663
	movq	%rcx, %rdx	# D.5663,
	movq	%r15, %rsi	# m2,
	movq	%rax, %rdi	# D.5663,
	call	add_su3_matrix	#
.L34:
	.loc 1 151 0
	movl	sumvec_offset(%rip), %eax	# sumvec_offset, sumvec_offset.33
	testl	%eax, %eax	# sumvec_offset.33
	js	.L35	#,
	.loc 1 153 0
	movl	$0, %ebx	#, j
	jmp	.L36	#
.L37:
	.loc 1 153 0 is_stmt 0 discriminator 2
	movl	sumvec_offset(%rip), %eax	# sumvec_offset, sumvec_offset.34
	cltq
	leaq	0(%r13,%rax), %rdx	#, D.5664
	movl	sumvec_offset(%rip), %eax	# sumvec_offset, sumvec_offset.35
	cltq
	leaq	0(%r13,%rax), %rcx	#, D.5664
	movslq	%ebx, %rax	# j, tmp279
	salq	$4, %rax	#, tmp280
	addq	%rcx, %rax	# D.5664, tmp281
	movsd	(%rax), %xmm1	# _159->c[j_3].real, D.5665
	movslq	%ebx, %rax	# j, tmp282
	salq	$6, %rax	#, tmp283
	addq	%r15, %rax	# m2, tmp284
	movsd	(%rax), %xmm0	# m2_136->e[j_3][j_3].real, D.5665
	addsd	%xmm1, %xmm0	# D.5665, D.5665
	movslq	%ebx, %rax	# j, tmp285
	salq	$4, %rax	#, tmp286
	addq	%rdx, %rax	# D.5664, tmp287
	movsd	%xmm0, (%rax)	# D.5665, _156->c[j_3].real
	movl	sumvec_offset(%rip), %eax	# sumvec_offset, sumvec_offset.36
	cltq
	leaq	0(%r13,%rax), %rdx	#, D.5664
	movl	sumvec_offset(%rip), %eax	# sumvec_offset, sumvec_offset.37
	cltq
	leaq	0(%r13,%rax), %rcx	#, D.5664
	movslq	%ebx, %rax	# j, tmp288
	salq	$4, %rax	#, tmp289
	addq	%rcx, %rax	# D.5664, tmp290
	addq	$8, %rax	#, tmp291
	movsd	(%rax), %xmm1	# _168->c[j_3].imag, D.5665
	movslq	%ebx, %rax	# j, tmp292
	salq	$6, %rax	#, tmp293
	addq	%r15, %rax	# m2, tmp294
	addq	$8, %rax	#, tmp295
	movsd	(%rax), %xmm0	# m2_136->e[j_3][j_3].imag, D.5665
	addsd	%xmm1, %xmm0	# D.5665, D.5665
	movslq	%ebx, %rax	# j, tmp296
	salq	$4, %rax	#, tmp297
	addq	%rdx, %rax	# D.5664, tmp298
	addq	$8, %rax	#, tmp299
	movsd	%xmm0, (%rax)	# D.5665, _165->c[j_3].imag
	addl	$1, %ebx	#, j
.L36:
	.loc 1 153 0 discriminator 1
	cmpl	$2, %ebx	#, j
	jle	.L37	#,
	jmp	.L32	#
.L35:
	.loc 1 158 0 is_stmt 1
	movl	$0, %ebx	#, j
	jmp	.L38	#
.L39:
	.loc 1 158 0 is_stmt 0 discriminator 2
	movq	sumvecp(%rip), %rcx	# sumvecp, sumvecp.38
	movslq	%r12d, %rdx	# i, D.5661
	movq	%rdx, %rax	# D.5661, tmp300
	addq	%rax, %rax	# tmp300
	addq	%rdx, %rax	# D.5661, tmp300
	salq	$4, %rax	#, tmp301
	leaq	(%rcx,%rax), %rsi	#, D.5664
	movq	sumvecp(%rip), %rcx	# sumvecp, sumvecp.39
	movslq	%r12d, %rdx	# i, D.5661
	movq	%rdx, %rax	# D.5661, tmp302
	addq	%rax, %rax	# tmp302
	addq	%rdx, %rax	# D.5661, tmp302
	salq	$4, %rax	#, tmp303
	leaq	(%rcx,%rax), %rdx	#, D.5664
	movslq	%ebx, %rax	# j, tmp304
	salq	$4, %rax	#, tmp305
	addq	%rdx, %rax	# D.5664, tmp306
	movsd	(%rax), %xmm1	# _181->c[j_4].real, D.5665
	movslq	%ebx, %rax	# j, tmp307
	salq	$6, %rax	#, tmp308
	addq	%r15, %rax	# m2, tmp309
	movsd	(%rax), %xmm0	# m2_136->e[j_4][j_4].real, D.5665
	addsd	%xmm1, %xmm0	# D.5665, D.5665
	movslq	%ebx, %rax	# j, tmp310
	salq	$4, %rax	#, tmp311
	addq	%rsi, %rax	# D.5664, tmp312
	movsd	%xmm0, (%rax)	# D.5665, _177->c[j_4].real
	movq	sumvecp(%rip), %rcx	# sumvecp, sumvecp.40
	movslq	%r12d, %rdx	# i, D.5661
	movq	%rdx, %rax	# D.5661, tmp313
	addq	%rax, %rax	# tmp313
	addq	%rdx, %rax	# D.5661, tmp313
	salq	$4, %rax	#, tmp314
	leaq	(%rcx,%rax), %rsi	#, D.5664
	movq	sumvecp(%rip), %rcx	# sumvecp, sumvecp.41
	movslq	%r12d, %rdx	# i, D.5661
	movq	%rdx, %rax	# D.5661, tmp315
	addq	%rax, %rax	# tmp315
	addq	%rdx, %rax	# D.5661, tmp315
	salq	$4, %rax	#, tmp316
	leaq	(%rcx,%rax), %rdx	#, D.5664
	movslq	%ebx, %rax	# j, tmp317
	salq	$4, %rax	#, tmp318
	addq	%rdx, %rax	# D.5664, tmp319
	addq	$8, %rax	#, tmp320
	movsd	(%rax), %xmm1	# _192->c[j_4].imag, D.5665
	movslq	%ebx, %rax	# j, tmp321
	salq	$6, %rax	#, tmp322
	addq	%r15, %rax	# m2, tmp323
	addq	$8, %rax	#, tmp324
	movsd	(%rax), %xmm0	# m2_136->e[j_4][j_4].imag, D.5665
	addsd	%xmm1, %xmm0	# D.5665, D.5665
	movslq	%ebx, %rax	# j, tmp325
	salq	$4, %rax	#, tmp326
	addq	%rsi, %rax	# D.5664, tmp327
	addq	$8, %rax	#, tmp328
	movsd	%xmm0, (%rax)	# D.5665, _188->c[j_4].imag
	addl	$1, %ebx	#, j
.L38:
	.loc 1 158 0 discriminator 1
	cmpl	$2, %ebx	#, j
	jle	.L39	#,
.L32:
	.loc 1 140 0 is_stmt 1 discriminator 1
	addl	$1, %r14d	#, dir
.L31:
	cmpl	$3, %r14d	#, dir
	jle	.L40	#,
	.loc 1 138 0
	addl	$1, %r12d	#, i
	addq	$2048, %r13	#, s
.L30:
	.loc 1 138 0 is_stmt 0 discriminator 1
	cmpl	$2, -56(%rbp)	#, parity
	jne	.L41	#,
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.42
	jmp	.L42	#
.L41:
	.loc 1 138 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.42
.L42:
	.loc 1 138 0 discriminator 3
	cmpl	%r12d, %eax	# i, iftmp.42
	jg	.L43	#,
	.loc 1 164 0 is_stmt 1
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	accum_gauge_hit, .-accum_gauge_hit
	.globl	do_hit
	.type	do_hit, @function
do_hit:
.LFB3:
	.loc 1 171 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$344, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -324(%rbp)	# gauge_dir, gauge_dir
	movl	%esi, -328(%rbp)	# parity, parity
	movl	%edx, -332(%rbp)	# p, p
	movl	%ecx, -336(%rbp)	# q, q
	movsd	%xmm0, -344(%rbp)	# relax_boost, relax_boost
	movl	%r8d, -348(%rbp)	# nvector, nvector
	movq	%r9, -360(%rbp)	# vector_offset, vector_offset
	.loc 1 182 0
	movl	-328(%rbp), %edx	# parity, tmp202
	movl	-324(%rbp), %eax	# gauge_dir, tmp203
	movl	%edx, %esi	# tmp202,
	movl	%eax, %edi	# tmp203,
	call	accum_gauge_hit	#
	.loc 1 184 0
	cmpl	$1, -328(%rbp)	#, parity
	jne	.L45	#,
	.loc 1 184 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.43
	jmp	.L46	#
.L45:
	.loc 1 184 0 discriminator 2
	movl	$0, %eax	#, iftmp.43
.L46:
	.loc 1 184 0 discriminator 3
	movl	%eax, %r13d	# iftmp.43, i
	movq	lattice(%rip), %rax	# lattice, lattice.44
	movslq	%r13d, %rdx	# i, D.5667
	salq	$11, %rdx	#, D.5667
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L47	#
.L66:
	.loc 1 200 0 is_stmt 1
	movl	sumvec_offset(%rip), %eax	# sumvec_offset, sumvec_offset.45
	testl	%eax, %eax	# sumvec_offset.45
	js	.L48	#,
	.loc 1 201 0
	movl	sumvec_offset(%rip), %eax	# sumvec_offset, sumvec_offset.46
	cltq
	leaq	(%r12,%rax), %rdx	#, D.5669
	movl	-332(%rbp), %eax	# p, tmp205
	cltq
	salq	$4, %rax	#, tmp206
	addq	%rdx, %rax	# D.5669, tmp207
	movsd	(%rax), %xmm1	# _27->c[p_28(D)].real, D.5670
	.loc 1 202 0
	movl	sumvec_offset(%rip), %eax	# sumvec_offset, sumvec_offset.47
	cltq
	leaq	(%r12,%rax), %rdx	#, D.5669
	movl	-336(%rbp), %eax	# q, tmp209
	cltq
	salq	$4, %rax	#, tmp210
	addq	%rdx, %rax	# D.5669, tmp211
	movsd	(%rax), %xmm0	# _32->c[q_33(D)].real, D.5670
	.loc 1 201 0
	addsd	%xmm1, %xmm0	# D.5670, tmp212
	movsd	%xmm0, -312(%rbp)	# tmp212, a0
	jmp	.L49	#
.L48:
	.loc 1 204 0
	movq	sumvecp(%rip), %rcx	# sumvecp, sumvecp.48
	movslq	%r13d, %rdx	# i, D.5667
	movq	%rdx, %rax	# D.5667, tmp213
	addq	%rax, %rax	# tmp213
	addq	%rdx, %rax	# D.5667, tmp213
	salq	$4, %rax	#, tmp214
	leaq	(%rcx,%rax), %rdx	#, D.5669
	movl	-332(%rbp), %eax	# p, tmp216
	cltq
	salq	$4, %rax	#, tmp217
	addq	%rdx, %rax	# D.5669, tmp218
	movsd	(%rax), %xmm1	# _39->c[p_28(D)].real, D.5670
	movq	sumvecp(%rip), %rcx	# sumvecp, sumvecp.49
	movslq	%r13d, %rdx	# i, D.5667
	movq	%rdx, %rax	# D.5667, tmp219
	addq	%rax, %rax	# tmp219
	addq	%rdx, %rax	# D.5667, tmp219
	salq	$4, %rax	#, tmp220
	leaq	(%rcx,%rax), %rdx	#, D.5669
	movl	-336(%rbp), %eax	# q, tmp222
	cltq
	salq	$4, %rax	#, tmp223
	addq	%rdx, %rax	# D.5669, tmp224
	movsd	(%rax), %xmm0	# _44->c[q_33(D)].real, D.5670
	addsd	%xmm1, %xmm0	# D.5670, tmp225
	movsd	%xmm0, -312(%rbp)	# tmp225, a0
.L49:
	.loc 1 206 0
	movl	diffmat_offset(%rip), %eax	# diffmat_offset, diffmat_offset.50
	testl	%eax, %eax	# diffmat_offset.50
	js	.L50	#,
	.loc 1 208 0
	movl	diffmat_offset(%rip), %eax	# diffmat_offset, diffmat_offset.51
	cltq
	leaq	(%r12,%rax), %rsi	#, D.5671
	movl	-332(%rbp), %eax	# p, tmp227
	movslq	%eax, %rcx	# tmp227, tmp226
	movl	-336(%rbp), %eax	# q, tmp229
	movslq	%eax, %rdx	# tmp229, tmp228
	movq	%rdx, %rax	# tmp228, tmp230
	addq	%rax, %rax	# tmp230
	addq	%rdx, %rax	# tmp228, tmp230
	addq	%rcx, %rax	# tmp226, tmp231
	salq	$4, %rax	#, tmp232
	addq	%rsi, %rax	# D.5671, tmp233
	addq	$8, %rax	#, tmp234
	movsd	(%rax), %xmm1	# _50->e[q_33(D)][p_28(D)].imag, D.5670
	.loc 1 209 0
	movl	diffmat_offset(%rip), %eax	# diffmat_offset, diffmat_offset.52
	cltq
	leaq	(%r12,%rax), %rsi	#, D.5671
	movl	-336(%rbp), %eax	# q, tmp236
	movslq	%eax, %rcx	# tmp236, tmp235
	movl	-332(%rbp), %eax	# p, tmp238
	movslq	%eax, %rdx	# tmp238, tmp237
	movq	%rdx, %rax	# tmp237, tmp239
	addq	%rax, %rax	# tmp239
	addq	%rdx, %rax	# tmp237, tmp239
	addq	%rcx, %rax	# tmp235, tmp240
	salq	$4, %rax	#, tmp241
	addq	%rsi, %rax	# D.5671, tmp242
	addq	$8, %rax	#, tmp243
	movsd	(%rax), %xmm0	# _54->e[p_28(D)][q_33(D)].imag, D.5670
	.loc 1 208 0
	addsd	%xmm1, %xmm0	# D.5670, tmp244
	movsd	%xmm0, -304(%rbp)	# tmp244, a1
	.loc 1 211 0
	movl	diffmat_offset(%rip), %eax	# diffmat_offset, diffmat_offset.53
	cltq
	leaq	(%r12,%rax), %rsi	#, D.5671
	movl	-336(%rbp), %eax	# q, tmp246
	movslq	%eax, %rcx	# tmp246, tmp245
	movl	-332(%rbp), %eax	# p, tmp248
	movslq	%eax, %rdx	# tmp248, tmp247
	movq	%rdx, %rax	# tmp247, tmp249
	addq	%rax, %rax	# tmp249
	addq	%rdx, %rax	# tmp247, tmp249
	addq	%rcx, %rax	# tmp245, tmp250
	salq	$4, %rax	#, tmp251
	addq	%rsi, %rax	# D.5671, tmp252
	movsd	(%rax), %xmm0	# _59->e[p_28(D)][q_33(D)].real, D.5670
	.loc 1 210 0
	movl	diffmat_offset(%rip), %eax	# diffmat_offset, diffmat_offset.54
	cltq
	leaq	(%r12,%rax), %rsi	#, D.5671
	movl	-332(%rbp), %eax	# p, tmp254
	movslq	%eax, %rcx	# tmp254, tmp253
	movl	-336(%rbp), %eax	# q, tmp256
	movslq	%eax, %rdx	# tmp256, tmp255
	movq	%rdx, %rax	# tmp255, tmp257
	addq	%rax, %rax	# tmp257
	addq	%rdx, %rax	# tmp255, tmp257
	addq	%rcx, %rax	# tmp253, tmp258
	salq	$4, %rax	#, tmp259
	addq	%rsi, %rax	# D.5671, tmp260
	movsd	(%rax), %xmm1	# _63->e[q_33(D)][p_28(D)].real, D.5670
	subsd	%xmm1, %xmm0	# D.5670, tmp261
	movsd	%xmm0, -296(%rbp)	# tmp261, a2
	.loc 1 212 0
	movl	diffmat_offset(%rip), %eax	# diffmat_offset, diffmat_offset.55
	cltq
	leaq	(%r12,%rax), %rdx	#, D.5671
	movl	-332(%rbp), %eax	# p, tmp263
	cltq
	salq	$6, %rax	#, tmp264
	addq	%rdx, %rax	# D.5671, tmp265
	addq	$8, %rax	#, tmp266
	movsd	(%rax), %xmm0	# _68->e[p_28(D)][p_28(D)].imag, D.5670
	.loc 1 213 0
	movl	diffmat_offset(%rip), %eax	# diffmat_offset, diffmat_offset.56
	cltq
	leaq	(%r12,%rax), %rdx	#, D.5671
	movl	-336(%rbp), %eax	# q, tmp268
	cltq
	salq	$6, %rax	#, tmp269
	addq	%rdx, %rax	# D.5671, tmp270
	addq	$8, %rax	#, tmp271
	movsd	(%rax), %xmm1	# _72->e[q_33(D)][q_33(D)].imag, D.5670
	.loc 1 212 0
	subsd	%xmm1, %xmm0	# D.5670, tmp272
	movsd	%xmm0, -288(%rbp)	# tmp272, a3
	jmp	.L51	#
.L50:
	.loc 1 217 0
	movq	diffmatp(%rip), %rcx	# diffmatp, diffmatp.57
	movslq	%r13d, %rdx	# i, D.5667
	movq	%rdx, %rax	# D.5667, tmp273
	salq	$3, %rax	#, tmp273
	addq	%rdx, %rax	# D.5667, tmp273
	salq	$4, %rax	#, tmp274
	leaq	(%rcx,%rax), %rsi	#, D.5671
	movl	-332(%rbp), %eax	# p, tmp276
	movslq	%eax, %rcx	# tmp276, tmp275
	movl	-336(%rbp), %eax	# q, tmp278
	movslq	%eax, %rdx	# tmp278, tmp277
	movq	%rdx, %rax	# tmp277, tmp279
	addq	%rax, %rax	# tmp279
	addq	%rdx, %rax	# tmp277, tmp279
	addq	%rcx, %rax	# tmp275, tmp280
	salq	$4, %rax	#, tmp281
	addq	%rsi, %rax	# D.5671, tmp282
	addq	$8, %rax	#, tmp283
	movsd	(%rax), %xmm1	# _78->e[q_33(D)][p_28(D)].imag, D.5670
	movq	diffmatp(%rip), %rcx	# diffmatp, diffmatp.58
	movslq	%r13d, %rdx	# i, D.5667
	movq	%rdx, %rax	# D.5667, tmp284
	salq	$3, %rax	#, tmp284
	addq	%rdx, %rax	# D.5667, tmp284
	salq	$4, %rax	#, tmp285
	leaq	(%rcx,%rax), %rsi	#, D.5671
	movl	-336(%rbp), %eax	# q, tmp287
	movslq	%eax, %rcx	# tmp287, tmp286
	movl	-332(%rbp), %eax	# p, tmp289
	movslq	%eax, %rdx	# tmp289, tmp288
	movq	%rdx, %rax	# tmp288, tmp290
	addq	%rax, %rax	# tmp290
	addq	%rdx, %rax	# tmp288, tmp290
	addq	%rcx, %rax	# tmp286, tmp291
	salq	$4, %rax	#, tmp292
	addq	%rsi, %rax	# D.5671, tmp293
	addq	$8, %rax	#, tmp294
	movsd	(%rax), %xmm0	# _83->e[p_28(D)][q_33(D)].imag, D.5670
	addsd	%xmm1, %xmm0	# D.5670, tmp295
	movsd	%xmm0, -304(%rbp)	# tmp295, a1
	.loc 1 218 0
	movq	diffmatp(%rip), %rcx	# diffmatp, diffmatp.59
	movslq	%r13d, %rdx	# i, D.5667
	movq	%rdx, %rax	# D.5667, tmp296
	salq	$3, %rax	#, tmp296
	addq	%rdx, %rax	# D.5667, tmp296
	salq	$4, %rax	#, tmp297
	leaq	(%rcx,%rax), %rsi	#, D.5671
	movl	-336(%rbp), %eax	# q, tmp299
	movslq	%eax, %rcx	# tmp299, tmp298
	movl	-332(%rbp), %eax	# p, tmp301
	movslq	%eax, %rdx	# tmp301, tmp300
	movq	%rdx, %rax	# tmp300, tmp302
	addq	%rax, %rax	# tmp302
	addq	%rdx, %rax	# tmp300, tmp302
	addq	%rcx, %rax	# tmp298, tmp303
	salq	$4, %rax	#, tmp304
	addq	%rsi, %rax	# D.5671, tmp305
	movsd	(%rax), %xmm0	# _89->e[p_28(D)][q_33(D)].real, D.5670
	movq	diffmatp(%rip), %rcx	# diffmatp, diffmatp.60
	movslq	%r13d, %rdx	# i, D.5667
	movq	%rdx, %rax	# D.5667, tmp306
	salq	$3, %rax	#, tmp306
	addq	%rdx, %rax	# D.5667, tmp306
	salq	$4, %rax	#, tmp307
	leaq	(%rcx,%rax), %rsi	#, D.5671
	movl	-332(%rbp), %eax	# p, tmp309
	movslq	%eax, %rcx	# tmp309, tmp308
	movl	-336(%rbp), %eax	# q, tmp311
	movslq	%eax, %rdx	# tmp311, tmp310
	movq	%rdx, %rax	# tmp310, tmp312
	addq	%rax, %rax	# tmp312
	addq	%rdx, %rax	# tmp310, tmp312
	addq	%rcx, %rax	# tmp308, tmp313
	salq	$4, %rax	#, tmp314
	addq	%rsi, %rax	# D.5671, tmp315
	movsd	(%rax), %xmm1	# _94->e[q_33(D)][p_28(D)].real, D.5670
	subsd	%xmm1, %xmm0	# D.5670, tmp316
	movsd	%xmm0, -296(%rbp)	# tmp316, a2
	.loc 1 219 0
	movq	diffmatp(%rip), %rcx	# diffmatp, diffmatp.61
	movslq	%r13d, %rdx	# i, D.5667
	movq	%rdx, %rax	# D.5667, tmp317
	salq	$3, %rax	#, tmp317
	addq	%rdx, %rax	# D.5667, tmp317
	salq	$4, %rax	#, tmp318
	leaq	(%rcx,%rax), %rdx	#, D.5671
	movl	-332(%rbp), %eax	# p, tmp320
	cltq
	salq	$6, %rax	#, tmp321
	addq	%rdx, %rax	# D.5671, tmp322
	addq	$8, %rax	#, tmp323
	movsd	(%rax), %xmm0	# _100->e[p_28(D)][p_28(D)].imag, D.5670
	movq	diffmatp(%rip), %rcx	# diffmatp, diffmatp.62
	movslq	%r13d, %rdx	# i, D.5667
	movq	%rdx, %rax	# D.5667, tmp324
	salq	$3, %rax	#, tmp324
	addq	%rdx, %rax	# D.5667, tmp324
	salq	$4, %rax	#, tmp325
	leaq	(%rcx,%rax), %rdx	#, D.5671
	movl	-336(%rbp), %eax	# q, tmp327
	cltq
	salq	$6, %rax	#, tmp328
	addq	%rdx, %rax	# D.5671, tmp329
	addq	$8, %rax	#, tmp330
	movsd	(%rax), %xmm1	# _105->e[q_33(D)][q_33(D)].imag, D.5670
	subsd	%xmm1, %xmm0	# D.5670, tmp331
	movsd	%xmm0, -288(%rbp)	# tmp331, a3
.L51:
	.loc 1 228 0
	movsd	-304(%rbp), %xmm0	# a1, tmp332
	movapd	%xmm0, %xmm1	# tmp332, D.5670
	mulsd	-304(%rbp), %xmm1	# a1, D.5670
	movsd	-296(%rbp), %xmm0	# a2, tmp333
	mulsd	-296(%rbp), %xmm0	# a2, D.5670
	addsd	%xmm0, %xmm1	# D.5670, D.5670
	movsd	-288(%rbp), %xmm0	# a3, tmp334
	mulsd	-288(%rbp), %xmm0	# a3, D.5670
	addsd	%xmm1, %xmm0	# D.5670, tmp335
	movsd	%xmm0, -280(%rbp)	# tmp335, asq
	.loc 1 229 0
	movsd	-312(%rbp), %xmm0	# a0, tmp337
	mulsd	-312(%rbp), %xmm0	# a0, tmp336
	movsd	%xmm0, -272(%rbp)	# tmp336, a0sq
	.loc 1 230 0
	movsd	-344(%rbp), %xmm0	# relax_boost, tmp338
	mulsd	-272(%rbp), %xmm0	# a0sq, D.5670
	addsd	-280(%rbp), %xmm0	# asq, D.5670
	movsd	-272(%rbp), %xmm1	# a0sq, tmp339
	addsd	-280(%rbp), %xmm1	# asq, D.5670
	divsd	%xmm1, %xmm0	# D.5670, tmp340
	movsd	%xmm0, -264(%rbp)	# tmp340, x
	.loc 1 231 0
	movsd	-264(%rbp), %xmm0	# x, tmp341
	mulsd	-264(%rbp), %xmm0	# x, D.5670
	mulsd	-280(%rbp), %xmm0	# asq, D.5670
	addsd	-272(%rbp), %xmm0	# a0sq, D.5670
	call	sqrt	#
	movsd	%xmm0, -368(%rbp)	#, %sfp
	movq	-368(%rbp), %rax	# %sfp, tmp342
	movq	%rax, -256(%rbp)	# tmp342, r
	.loc 1 232 0
	movsd	-264(%rbp), %xmm0	# x, tmp344
	divsd	-256(%rbp), %xmm0	# r, tmp343
	movsd	%xmm0, -248(%rbp)	# tmp343, xdr
	.loc 1 234 0
	movsd	-312(%rbp), %xmm0	# a0, tmp346
	divsd	-256(%rbp), %xmm0	# r, tmp345
	movsd	%xmm0, -312(%rbp)	# tmp345, a0
	movsd	-304(%rbp), %xmm0	# a1, tmp348
	mulsd	-248(%rbp), %xmm0	# xdr, tmp347
	movsd	%xmm0, -304(%rbp)	# tmp347, a1
	movsd	-296(%rbp), %xmm0	# a2, tmp350
	mulsd	-248(%rbp), %xmm0	# xdr, tmp349
	movsd	%xmm0, -296(%rbp)	# tmp349, a2
	movsd	-288(%rbp), %xmm0	# a3, tmp352
	mulsd	-248(%rbp), %xmm0	# xdr, tmp351
	movsd	%xmm0, -288(%rbp)	# tmp351, a3
	.loc 1 238 0
	movq	-288(%rbp), %rdx	# a3, tmp353
	movq	-312(%rbp), %rax	# a0, tmp354
	movq	%rdx, -368(%rbp)	# tmp353, %sfp
	movsd	-368(%rbp), %xmm1	# %sfp,
	movq	%rax, -368(%rbp)	# tmp354, %sfp
	movsd	-368(%rbp), %xmm0	# %sfp,
	call	cmplx	#
	movsd	%xmm0, -368(%rbp)	#, %sfp
	movq	-368(%rbp), %rax	# %sfp, tmp355
	movsd	%xmm1, -368(%rbp)	#, %sfp
	movq	-368(%rbp), %rdx	# %sfp, tmp356
	movq	%rax, -240(%rbp)	# tmp355, u.e
	movq	%rdx, -232(%rbp)	# tmp356, u.e
	.loc 1 239 0
	movq	-304(%rbp), %rdx	# a1, tmp357
	movq	-296(%rbp), %rax	# a2, tmp358
	movq	%rdx, -368(%rbp)	# tmp357, %sfp
	movsd	-368(%rbp), %xmm1	# %sfp,
	movq	%rax, -368(%rbp)	# tmp358, %sfp
	movsd	-368(%rbp), %xmm0	# %sfp,
	call	cmplx	#
	movsd	%xmm0, -368(%rbp)	#, %sfp
	movq	-368(%rbp), %rax	# %sfp, tmp359
	movsd	%xmm1, -368(%rbp)	#, %sfp
	movq	-368(%rbp), %rdx	# %sfp, tmp360
	movq	%rax, -224(%rbp)	# tmp359, u.e
	movq	%rdx, -216(%rbp)	# tmp360, u.e
	.loc 1 240 0
	movsd	-296(%rbp), %xmm1	# a2, tmp361
	movsd	.LC0(%rip), %xmm0	#, tmp362
	xorpd	%xmm1, %xmm0	# tmp361, D.5670
	movq	-304(%rbp), %rax	# a1, tmp363
	movq	%rax, -368(%rbp)	# tmp363, %sfp
	movsd	-368(%rbp), %xmm1	# %sfp,
	call	cmplx	#
	movsd	%xmm0, -368(%rbp)	#, %sfp
	movq	-368(%rbp), %rax	# %sfp, tmp364
	movsd	%xmm1, -368(%rbp)	#, %sfp
	movq	-368(%rbp), %rdx	# %sfp, tmp365
	movq	%rax, -208(%rbp)	# tmp364, u.e
	movq	%rdx, -200(%rbp)	# tmp365, u.e
	.loc 1 241 0
	movsd	-288(%rbp), %xmm1	# a3, tmp366
	movsd	.LC0(%rip), %xmm0	#, tmp367
	xorpd	%xmm1, %xmm0	# tmp366, D.5670
	movq	-312(%rbp), %rax	# a0, tmp368
	movapd	%xmm0, %xmm1	# D.5670,
	movq	%rax, -368(%rbp)	# tmp368, %sfp
	movsd	-368(%rbp), %xmm0	# %sfp,
	call	cmplx	#
	movsd	%xmm0, -368(%rbp)	#, %sfp
	movq	-368(%rbp), %rax	# %sfp, tmp369
	movsd	%xmm1, -368(%rbp)	#, %sfp
	movq	-368(%rbp), %rdx	# %sfp, tmp370
	movq	%rax, -192(%rbp)	# tmp369, u.e
	movq	%rdx, -184(%rbp)	# tmp370, u.e
	.loc 1 246 0
	movl	$0, %ebx	#, dir
	jmp	.L52	#
.L53:
	.loc 1 247 0 discriminator 2
	movslq	%ebx, %rdx	# dir, tmp371
	movq	%rdx, %rax	# tmp371, tmp372
	salq	$3, %rax	#, tmp372
	addq	%rdx, %rax	# tmp371, tmp372
	salq	$4, %rax	#, tmp373
	addq	$112, %rax	#, tmp374
	leaq	(%r12,%rax), %rcx	#, D.5671
	movl	-336(%rbp), %edx	# q, tmp375
	movl	-332(%rbp), %esi	# p, tmp376
	leaq	-240(%rbp), %rax	#, tmp377
	movq	%rax, %rdi	# tmp377,
	call	left_su2_hit_n	#
	.loc 1 246 0 discriminator 2
	addl	$1, %ebx	#, dir
.L52:
	.loc 1 246 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L53	#,
	.loc 1 251 0 is_stmt 1
	movl	$0, %ebx	#, dir
	jmp	.L54	#
.L55:
	.loc 1 252 0 discriminator 2
	movslq	%ebx, %rax	# dir, tmp378
	movq	gen_pt(,%rax,8), %rax	# gen_pt, D.5672
	movslq	%r13d, %rdx	# i, D.5667
	salq	$3, %rdx	#, D.5667
	addq	%rdx, %rax	# D.5667, D.5672
	movq	(%rax), %rcx	# *_137, D.5673
	movl	-336(%rbp), %edx	# q, tmp379
	movl	-332(%rbp), %esi	# p, tmp380
	leaq	-240(%rbp), %rax	#, tmp381
	movq	%rax, %rdi	# tmp381,
	call	right_su2_hit_a	#
	.loc 1 251 0 discriminator 2
	addl	$1, %ebx	#, dir
.L54:
	.loc 1 251 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L55	#,
	.loc 1 256 0 is_stmt 1
	movl	$0, %ebx	#, j
	jmp	.L56	#
.L59:
	.loc 1 261 0
	movslq	%ebx, %rax	# j, D.5667
	leaq	0(,%rax,4), %rdx	#, D.5667
	movq	16(%rbp), %rax	# vector_parity, tmp382
	addq	%rdx, %rax	# D.5667, D.5674
	movl	(%rax), %eax	# *_145, D.5675
	cmpl	$3, %eax	#, D.5675
	je	.L57	#,
	.loc 1 261 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# j, D.5667
	leaq	0(,%rax,4), %rdx	#, D.5667
	movq	16(%rbp), %rax	# vector_parity, tmp383
	addq	%rdx, %rax	# D.5667, D.5674
	movl	(%rax), %eax	# *_149, D.5675
	cmpl	-328(%rbp), %eax	# parity, D.5675
	jne	.L58	#,
.L57:
	.loc 1 264 0 is_stmt 1
	movslq	%ebx, %rax	# j, D.5667
	leaq	0(,%rax,4), %rdx	#, D.5667
	movq	-360(%rbp), %rax	# vector_offset, tmp384
	addq	%rdx, %rax	# D.5667, D.5676
	movl	(%rax), %eax	# *_154, D.5675
	cltq
	leaq	(%r12,%rax), %rdx	#, D.5669
	.loc 1 262 0
	movl	-336(%rbp), %eax	# q, tmp386
	cltq
	salq	$4, %rax	#, tmp387
	addq	%rax, %rdx	# tmp387, D.5677
	.loc 1 263 0
	movslq	%ebx, %rax	# j, D.5667
	leaq	0(,%rax,4), %rcx	#, D.5667
	movq	-360(%rbp), %rax	# vector_offset, tmp388
	addq	%rcx, %rax	# D.5667, D.5676
	movl	(%rax), %eax	# *_161, D.5675
	cltq
	leaq	(%r12,%rax), %rcx	#, D.5669
	.loc 1 262 0
	movl	-332(%rbp), %eax	# p, tmp390
	cltq
	salq	$4, %rax	#, tmp391
	addq	%rax, %rcx	# tmp391, D.5677
	leaq	-240(%rbp), %rax	#, tmp392
	movq	%rcx, %rsi	# D.5677,
	movq	%rax, %rdi	# tmp392,
	call	mult_su2_mat_vec_elem_n	#
.L58:
	.loc 1 256 0
	addl	$1, %ebx	#, j
.L56:
	.loc 1 256 0 is_stmt 0 discriminator 1
	cmpl	-348(%rbp), %ebx	# nvector, j
	jl	.L59	#,
	.loc 1 268 0 is_stmt 1
	movl	$0, %ebx	#, j
	jmp	.L60	#
.L63:
	.loc 1 270 0
	movslq	%ebx, %rax	# j, D.5667
	leaq	0(,%rax,4), %rdx	#, D.5667
	movq	40(%rbp), %rax	# antiherm_parity, tmp393
	addq	%rdx, %rax	# D.5667, D.5674
	movl	(%rax), %eax	# *_172, D.5675
	cmpl	$3, %eax	#, D.5675
	je	.L61	#,
	.loc 1 270 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# j, D.5667
	leaq	0(,%rax,4), %rdx	#, D.5667
	movq	40(%rbp), %rax	# antiherm_parity, tmp394
	addq	%rdx, %rax	# D.5667, D.5674
	movl	(%rax), %eax	# *_176, D.5675
	cmpl	-328(%rbp), %eax	# parity, D.5675
	jne	.L62	#,
.L61:
	.loc 1 273 0 is_stmt 1
	movslq	%ebx, %rax	# j, D.5667
	leaq	0(,%rax,4), %rdx	#, D.5667
	movq	32(%rbp), %rax	# antiherm_offset, tmp395
	addq	%rdx, %rax	# D.5667, D.5676
	movl	(%rax), %eax	# *_181, D.5675
	.loc 1 272 0
	cltq
	leaq	(%r12,%rax), %rdx	#, D.5678
	leaq	-176(%rbp), %rax	#, tmp396
	movq	%rax, %rsi	# tmp396,
	movq	%rdx, %rdi	# D.5678,
	call	uncompress_anti_hermitian	#
	.loc 1 276 0
	leaq	-176(%rbp), %rcx	#, tmp397
	movl	-336(%rbp), %edx	# q, tmp398
	movl	-332(%rbp), %esi	# p, tmp399
	leaq	-240(%rbp), %rax	#, tmp400
	movq	%rax, %rdi	# tmp400,
	call	left_su2_hit_n	#
	.loc 1 277 0
	leaq	-176(%rbp), %rcx	#, tmp401
	movl	-336(%rbp), %edx	# q, tmp402
	movl	-332(%rbp), %esi	# p, tmp403
	leaq	-240(%rbp), %rax	#, tmp404
	movq	%rax, %rdi	# tmp404,
	call	right_su2_hit_a	#
	.loc 1 279 0
	movslq	%ebx, %rax	# j, D.5667
	leaq	0(,%rax,4), %rdx	#, D.5667
	movq	32(%rbp), %rax	# antiherm_offset, tmp405
	addq	%rdx, %rax	# D.5667, D.5676
	movl	(%rax), %eax	# *_187, D.5675
	.loc 1 278 0
	cltq
	leaq	(%r12,%rax), %rdx	#, D.5678
	leaq	-176(%rbp), %rax	#, tmp406
	movq	%rdx, %rsi	# D.5678,
	movq	%rax, %rdi	# tmp406,
	call	make_anti_hermitian	#
.L62:
	.loc 1 268 0
	addl	$1, %ebx	#, j
.L60:
	.loc 1 268 0 is_stmt 0 discriminator 1
	cmpl	24(%rbp), %ebx	# nantiherm, j
	jl	.L63	#,
	.loc 1 184 0 is_stmt 1
	addl	$1, %r13d	#, i
	addq	$2048, %r12	#, s
.L47:
	.loc 1 184 0 is_stmt 0 discriminator 1
	cmpl	$2, -328(%rbp)	#, parity
	jne	.L64	#,
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.63
	jmp	.L65	#
.L64:
	.loc 1 184 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.63
.L65:
	.loc 1 184 0 discriminator 3
	cmpl	%r13d, %eax	# i, iftmp.63
	jg	.L66	#,
	.loc 1 284 0 is_stmt 1
	addq	$344, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	do_hit, .-do_hit
	.globl	get_gauge_fix_action
	.type	get_gauge_fix_action, @function
get_gauge_fix_action:
.LFB4:
	.loc 1 287 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -84(%rbp)	# gauge_dir, gauge_dir
	movl	%esi, -88(%rbp)	# parity, parity
	.loc 1 299 0
	movl	$0, %eax	#, tmp93
	movq	%rax, -72(%rbp)	# tmp93, gauge_fix_action
	.loc 1 301 0
	cmpl	$1, -88(%rbp)	#, parity
	jne	.L68	#,
	.loc 1 301 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.64
	jmp	.L69	#
.L68:
	.loc 1 301 0 discriminator 2
	movl	$0, %eax	#, iftmp.64
.L69:
	.loc 1 301 0 discriminator 3
	movl	%eax, %r12d	# iftmp.64, i
	movq	lattice(%rip), %rax	# lattice, lattice.65
	movslq	%r12d, %rdx	# i, D.5680
	salq	$11, %rdx	#, D.5680
	leaq	(%rax,%rdx), %r13	#, s
	jmp	.L70	#
.L76:
	.loc 1 303 0 is_stmt 1
	movl	$0, %ebx	#, dir
	jmp	.L71	#
.L73:
	.loc 1 303 0 is_stmt 0 discriminator 2
	cmpl	-84(%rbp), %ebx	# gauge_dir, dir
	je	.L72	#,
	.loc 1 305 0 is_stmt 1
	movslq	%ebx, %rdx	# dir, tmp94
	movq	%rdx, %rax	# tmp94, tmp95
	salq	$3, %rax	#, tmp95
	addq	%rdx, %rax	# tmp94, tmp95
	salq	$4, %rax	#, tmp96
	addq	$112, %rax	#, tmp97
	leaq	0(%r13,%rax), %r15	#, m1
	.loc 1 306 0
	movslq	%ebx, %rax	# dir, tmp98
	movq	gen_pt(,%rax,8), %rax	# gen_pt, D.5681
	movslq	%r12d, %rdx	# i, D.5680
	salq	$3, %rdx	#, D.5680
	addq	%rdx, %rax	# D.5680, D.5681
	movq	(%rax), %r14	# *_25, m2
	.loc 1 308 0
	movq	%r15, %rdi	# m1,
	call	trace_su3	#
	movsd	%xmm0, -96(%rbp)	#, %sfp
	movq	-96(%rbp), %rax	# %sfp, tmp99
	movsd	%xmm1, -96(%rbp)	#, %sfp
	movq	-96(%rbp), %rdx	# %sfp, tmp100
	movq	%rax, -64(%rbp)	# tmp99, trace
	movq	%rdx, -56(%rbp)	# tmp100, trace
	.loc 1 309 0
	movsd	-64(%rbp), %xmm1	# trace.real, D.5682
	movsd	-72(%rbp), %xmm0	# gauge_fix_action, gauge_fix_action.66
	addsd	%xmm1, %xmm0	# D.5682, gauge_fix_action.67
	movsd	%xmm0, -72(%rbp)	# gauge_fix_action.67, gauge_fix_action
	.loc 1 311 0
	movq	%r14, %rdi	# m2,
	call	trace_su3	#
	movsd	%xmm0, -96(%rbp)	#, %sfp
	movq	-96(%rbp), %rax	# %sfp, tmp101
	movsd	%xmm1, -96(%rbp)	#, %sfp
	movq	-96(%rbp), %rdx	# %sfp, tmp102
	movq	%rax, -64(%rbp)	# tmp101, trace
	movq	%rdx, -56(%rbp)	# tmp102, trace
	.loc 1 312 0
	movsd	-64(%rbp), %xmm1	# trace.real, D.5682
	movsd	-72(%rbp), %xmm0	# gauge_fix_action, gauge_fix_action.68
	addsd	%xmm1, %xmm0	# D.5682, gauge_fix_action.69
	movsd	%xmm0, -72(%rbp)	# gauge_fix_action.69, gauge_fix_action
.L72:
	.loc 1 303 0 discriminator 1
	addl	$1, %ebx	#, dir
.L71:
	cmpl	$3, %ebx	#, dir
	jle	.L73	#,
	.loc 1 301 0
	addl	$1, %r12d	#, i
	addq	$2048, %r13	#, s
.L70:
	.loc 1 301 0 is_stmt 0 discriminator 1
	cmpl	$2, -88(%rbp)	#, parity
	jne	.L74	#,
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.70
	jmp	.L75	#
.L74:
	.loc 1 301 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.70
.L75:
	.loc 1 301 0 discriminator 3
	cmpl	%r12d, %eax	# i, iftmp.70
	jg	.L76	#,
	.loc 1 317 0 is_stmt 1
	movl	$0, %r12d	#, ndir
	movl	$0, %ebx	#, dir
	jmp	.L77	#
.L79:
	.loc 1 317 0 is_stmt 0 discriminator 2
	cmpl	-84(%rbp), %ebx	# gauge_dir, dir
	je	.L78	#,
	.loc 1 317 0 discriminator 1
	addl	$1, %r12d	#, ndir
.L78:
	.loc 1 317 0 discriminator 2
	addl	$1, %ebx	#, dir
.L77:
	.loc 1 317 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L79	#,
	.loc 1 320 0 is_stmt 1
	leaq	-72(%rbp), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	g_doublesum	#
	.loc 1 323 0
	movsd	-72(%rbp), %xmm1	# gauge_fix_action, gauge_fix_action.71
	movl	%r12d, %eax	# ndir, tmp104
	addl	%eax, %eax	# tmp104
	addl	%r12d, %eax	# ndir, tmp104
	addl	%eax, %eax	# tmp105
	movl	%eax, %edx	# tmp104, D.5683
	movl	nx(%rip), %eax	# nx, nx.72
	imull	%eax, %edx	# nx.72, D.5683
	movl	ny(%rip), %eax	# ny, ny.73
	imull	%eax, %edx	# ny.73, D.5683
	movl	nz(%rip), %eax	# nz, nz.74
	imull	%eax, %edx	# nz.74, D.5683
	movl	nt(%rip), %eax	# nt, nt.75
	imull	%edx, %eax	# D.5683, D.5683
	cvtsi2sd	%eax, %xmm0	# D.5683, D.5682
	divsd	%xmm0, %xmm1	# D.5682, D.5682
	movapd	%xmm1, %xmm0	# D.5682, D.5682
	movsd	%xmm0, -96(%rbp)	# D.5682, %sfp
	movq	-96(%rbp), %rax	# %sfp, <retval>
	.loc 1 324 0
	movq	%rax, -96(%rbp)	# <retval>, %sfp
	movsd	-96(%rbp), %xmm0	# %sfp,
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	get_gauge_fix_action, .-get_gauge_fix_action
	.globl	gaugefixstep
	.type	gaugefixstep, @function
gaugefixstep:
.LFB5:
	.loc 1 330 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$184, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -116(%rbp)	# gauge_dir, gauge_dir
	movq	%rsi, -128(%rbp)	# av_gauge_fix_action, av_gauge_fix_action
	movsd	%xmm0, -136(%rbp)	# relax_boost, relax_boost
	movl	%edx, -120(%rbp)	# nvector, nvector
	movq	%rcx, -144(%rbp)	# vector_offset, vector_offset
	movq	%r8, -152(%rbp)	# vector_parity, vector_parity
	movl	%r9d, -156(%rbp)	# nantiherm, nantiherm
	.loc 1 340 0
	movq	-128(%rbp), %rdx	# av_gauge_fix_action, tmp122
	movl	$0, %eax	#, tmp123
	movq	%rax, (%rdx)	# tmp123, *av_gauge_fix_action_13(D)
	.loc 1 341 0
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 342 0
	movq	stdout(%rip), %rax	# stdout, stdout.76
	movq	%rax, %rdi	# stdout.76,
	call	fflush	#
	.loc 1 344 0
	movl	$1, -108(%rbp)	#, parity
	jmp	.L82	#
.L105:
	.loc 1 348 0
	movl	$0, %ebx	#, dir
	jmp	.L83	#
.L84:
	.loc 1 350 0 discriminator 2
	movslq	%ebx, %rax	# dir, tmp124
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.5684
	movl	$7, %eax	#, tmp125
	subl	%ebx, %eax	# dir, D.5685
	movl	%eax, %esi	# D.5685, D.5685
	movq	lattice(%rip), %rdi	# lattice, lattice.77
	movslq	%ebx, %rdx	# dir, tmp126
	movq	%rdx, %rax	# tmp126, tmp127
	salq	$3, %rax	#, tmp127
	addq	%rdx, %rax	# tmp126, tmp127
	salq	$4, %rax	#, tmp128
	addq	$112, %rax	#, tmp129
	addq	%rdi, %rax	# lattice.77, D.5686
	movq	%rax, %rdx	# D.5686, D.5687
	movq	lattice(%rip), %rax	# lattice, lattice.78
	subq	%rax, %rdx	# lattice.79, D.5687
	movq	%rdx, %rax	# D.5687, D.5687
	movl	-108(%rbp), %edx	# parity, tmp130
	movq	%rcx, %r8	# D.5684,
	movl	%edx, %ecx	# tmp130,
	movl	%esi, %edx	# D.5685,
	movl	$144, %esi	#,
	movl	%eax, %edi	# D.5685,
	call	start_gather	#
	movslq	%ebx, %rdx	# dir, tmp131
	movq	%rax, -96(%rbp,%rdx,8)	# D.5688, mtag
	.loc 1 348 0 discriminator 2
	addl	$1, %ebx	#, dir
.L83:
	.loc 1 348 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L84	#,
	.loc 1 356 0 is_stmt 1
	movl	$0, %ebx	#, dir
	jmp	.L85	#
.L86:
	.loc 1 358 0 discriminator 2
	movslq	%ebx, %rax	# dir, tmp132
	movq	-96(%rbp,%rax,8), %rax	# mtag, D.5688
	movq	%rax, %rdi	# D.5688,
	call	wait_gather	#
	.loc 1 356 0 discriminator 2
	addl	$1, %ebx	#, dir
.L85:
	.loc 1 356 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L86	#,
	.loc 1 362 0 is_stmt 1
	movl	-108(%rbp), %edx	# parity, tmp133
	movl	-116(%rbp), %eax	# gauge_dir, tmp134
	movl	%edx, %esi	# tmp133,
	movl	%eax, %edi	# tmp134,
	call	get_gauge_fix_action	#
	movsd	%xmm0, -168(%rbp)	#, %sfp
	movq	-168(%rbp), %rax	# %sfp, tmp135
	movq	%rax, -104(%rbp)	# tmp135, gauge_fix_action
	.loc 1 366 0
	movq	-144(%rbp), %r8	# vector_offset, tmp136
	movl	-120(%rbp), %ecx	# nvector, tmp137
	movq	-136(%rbp), %rax	# relax_boost, tmp138
	movl	-108(%rbp), %esi	# parity, tmp139
	movl	-116(%rbp), %edi	# gauge_dir, tmp140
	movq	24(%rbp), %rdx	# antiherm_parity, tmp141
	movq	%rdx, 24(%rsp)	# tmp141,
	movq	16(%rbp), %rdx	# antiherm_offset, tmp142
	movq	%rdx, 16(%rsp)	# tmp142,
	movl	-156(%rbp), %edx	# nantiherm, tmp143
	movl	%edx, 8(%rsp)	# tmp143,
	movq	-152(%rbp), %rdx	# vector_parity, tmp144
	movq	%rdx, (%rsp)	# tmp144,
	movq	%r8, %r9	# tmp136,
	movl	%ecx, %r8d	# tmp137,
	movq	%rax, -168(%rbp)	# tmp138, %sfp
	movsd	-168(%rbp), %xmm0	# %sfp,
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	call	do_hit	#
	.loc 1 369 0
	movq	-144(%rbp), %r8	# vector_offset, tmp145
	movl	-120(%rbp), %ecx	# nvector, tmp146
	movq	-136(%rbp), %rax	# relax_boost, tmp147
	movl	-108(%rbp), %esi	# parity, tmp148
	movl	-116(%rbp), %edi	# gauge_dir, tmp149
	movq	24(%rbp), %rdx	# antiherm_parity, tmp150
	movq	%rdx, 24(%rsp)	# tmp150,
	movq	16(%rbp), %rdx	# antiherm_offset, tmp151
	movq	%rdx, 16(%rsp)	# tmp151,
	movl	-156(%rbp), %edx	# nantiherm, tmp152
	movl	%edx, 8(%rsp)	# tmp152,
	movq	-152(%rbp), %rdx	# vector_parity, tmp153
	movq	%rdx, (%rsp)	# tmp153,
	movq	%r8, %r9	# tmp145,
	movl	%ecx, %r8d	# tmp146,
	movq	%rax, -168(%rbp)	# tmp147, %sfp
	movsd	-168(%rbp), %xmm0	# %sfp,
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	call	do_hit	#
	.loc 1 372 0
	movq	-144(%rbp), %r8	# vector_offset, tmp154
	movl	-120(%rbp), %ecx	# nvector, tmp155
	movq	-136(%rbp), %rax	# relax_boost, tmp156
	movl	-108(%rbp), %esi	# parity, tmp157
	movl	-116(%rbp), %edi	# gauge_dir, tmp158
	movq	24(%rbp), %rdx	# antiherm_parity, tmp159
	movq	%rdx, 24(%rsp)	# tmp159,
	movq	16(%rbp), %rdx	# antiherm_offset, tmp160
	movq	%rdx, 16(%rsp)	# tmp160,
	movl	-156(%rbp), %edx	# nantiherm, tmp161
	movl	%edx, 8(%rsp)	# tmp161,
	movq	-152(%rbp), %rdx	# vector_parity, tmp162
	movq	%rdx, (%rsp)	# tmp162,
	movq	%r8, %r9	# tmp154,
	movl	%ecx, %r8d	# tmp155,
	movq	%rax, -168(%rbp)	# tmp156, %sfp
	movsd	-168(%rbp), %xmm0	# %sfp,
	movl	$0, %ecx	#,
	movl	$2, %edx	#,
	call	do_hit	#
	.loc 1 377 0
	movl	-108(%rbp), %edx	# parity, tmp163
	movl	-116(%rbp), %eax	# gauge_dir, tmp164
	movl	%edx, %esi	# tmp163,
	movl	%eax, %edi	# tmp164,
	call	get_gauge_fix_action	#
	movsd	%xmm0, -168(%rbp)	#, %sfp
	movq	-168(%rbp), %rax	# %sfp, tmp165
	movq	%rax, -104(%rbp)	# tmp165, gauge_fix_action
	.loc 1 379 0
	movq	-128(%rbp), %rax	# av_gauge_fix_action, tmp166
	movsd	(%rax), %xmm0	# *av_gauge_fix_action_13(D), D.5689
	addsd	-104(%rbp), %xmm0	# gauge_fix_action, D.5689
	movq	-128(%rbp), %rax	# av_gauge_fix_action, tmp167
	movsd	%xmm0, (%rax)	# D.5689, *av_gauge_fix_action_13(D)
	.loc 1 384 0
	movl	$0, %ebx	#, dir
	jmp	.L87	#
.L104:
	.loc 1 389 0
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 394 0
	cmpl	$1, -108(%rbp)	#, parity
	jne	.L88	#,
	.loc 1 394 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.80
	jmp	.L89	#
.L88:
	.loc 1 394 0 discriminator 2
	movl	$0, %eax	#, iftmp.80
.L89:
	.loc 1 394 0 discriminator 3
	movl	%eax, %r12d	# iftmp.80, i
	movq	lattice(%rip), %rax	# lattice, lattice.81
	movslq	%r12d, %rdx	# i, D.5690
	salq	$11, %rdx	#, D.5690
	leaq	(%rax,%rdx), %r13	#, s
	jmp	.L90	#
.L95:
	.loc 1 396 0 is_stmt 1
	movl	diffmat_offset(%rip), %eax	# diffmat_offset, diffmat_offset.82
	testl	%eax, %eax	# diffmat_offset.82
	js	.L91	#,
	.loc 1 397 0
	movl	diffmat_offset(%rip), %eax	# diffmat_offset, diffmat_offset.83
	cltq
	leaq	0(%r13,%rax), %rdx	#, D.5686
	movslq	%ebx, %rax	# dir, tmp168
	movq	gen_pt(,%rax,8), %rax	# gen_pt, D.5684
	movslq	%r12d, %rcx	# i, D.5690
	salq	$3, %rcx	#, D.5690
	addq	%rcx, %rax	# D.5690, D.5684
	movq	(%rax), %rax	# *_60, D.5692
	movq	%rdx, %rsi	# D.5686,
	movq	%rax, %rdi	# D.5692,
	call	su3mat_copy	#
	jmp	.L92	#
.L91:
	.loc 1 399 0
	movq	diffmatp(%rip), %rcx	# diffmatp, diffmatp.84
	movslq	%r12d, %rdx	# i, D.5690
	movq	%rdx, %rax	# D.5690, tmp169
	salq	$3, %rax	#, tmp169
	addq	%rdx, %rax	# D.5690, tmp169
	salq	$4, %rax	#, tmp170
	leaq	(%rcx,%rax), %rdx	#, D.5686
	movslq	%ebx, %rax	# dir, tmp171
	movq	gen_pt(,%rax,8), %rax	# gen_pt, D.5684
	movslq	%r12d, %rcx	# i, D.5690
	salq	$3, %rcx	#, D.5690
	addq	%rcx, %rax	# D.5690, D.5684
	movq	(%rax), %rax	# *_69, D.5692
	movq	%rdx, %rsi	# D.5686,
	movq	%rax, %rdi	# D.5692,
	call	su3mat_copy	#
.L92:
	.loc 1 394 0
	addl	$1, %r12d	#, i
	addq	$2048, %r13	#, s
.L90:
	.loc 1 394 0 is_stmt 0 discriminator 1
	cmpl	$2, -108(%rbp)	#, parity
	jne	.L93	#,
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.85
	jmp	.L94	#
.L93:
	.loc 1 394 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.85
.L94:
	.loc 1 394 0 discriminator 3
	cmpl	%r12d, %eax	# i, iftmp.85
	jg	.L95	#,
	.loc 1 403 0 is_stmt 1
	movslq	%ebx, %rax	# dir, tmp172
	movq	-96(%rbp,%rax,8), %rax	# mtag, D.5688
	movq	%rax, %rdi	# D.5688,
	call	cleanup_gather	#
	.loc 1 407 0
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 410 0
	movl	diffmat_offset(%rip), %eax	# diffmat_offset, diffmat_offset.86
	testl	%eax, %eax	# diffmat_offset.86
	js	.L96	#,
	.loc 1 411 0
	movslq	%ebx, %rax	# dir, tmp173
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.5684
	movl	-108(%rbp), %eax	# parity, tmp174
	xorl	$3, %eax	#, D.5685
	movl	%eax, %edx	# D.5685, D.5685
	movl	diffmat_offset(%rip), %eax	# diffmat_offset, diffmat_offset.87
	movq	%rcx, %r8	# D.5684,
	movl	%edx, %ecx	# D.5685,
	movl	%ebx, %edx	# dir,
	movl	$144, %esi	#,
	movl	%eax, %edi	# diffmat_offset.87,
	call	start_gather	#
	movslq	%ebx, %rdx	# dir, tmp175
	movq	%rax, -96(%rbp,%rdx,8)	# D.5688, mtag
	jmp	.L97	#
.L96:
	.loc 1 414 0
	movslq	%ebx, %rax	# dir, tmp176
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.5684
	movl	-108(%rbp), %eax	# parity, tmp177
	xorl	$3, %eax	#, D.5685
	movl	%eax, %edx	# D.5685, D.5685
	movq	diffmatp(%rip), %rax	# diffmatp, diffmatp.88
	movq	%rcx, %r8	# D.5684,
	movl	%edx, %ecx	# D.5685,
	movl	%ebx, %edx	# dir,
	movl	$144, %esi	#,
	movq	%rax, %rdi	# diffmatp.88,
	call	start_gather_from_temp	#
	movslq	%ebx, %rdx	# dir, tmp178
	movq	%rax, -96(%rbp,%rdx,8)	# D.5688, mtag
.L97:
	.loc 1 417 0
	movslq	%ebx, %rax	# dir, tmp179
	movq	-96(%rbp,%rax,8), %rax	# mtag, D.5688
	movq	%rax, %rdi	# D.5688,
	call	wait_gather	#
	.loc 1 421 0
	cmpl	$2, -108(%rbp)	#, parity
	jne	.L98	#,
	.loc 1 421 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.89
	jmp	.L99	#
.L98:
	.loc 1 421 0 discriminator 2
	movl	$0, %eax	#, iftmp.89
.L99:
	.loc 1 421 0 discriminator 3
	movl	%eax, %r12d	# iftmp.89, i
	movq	lattice(%rip), %rax	# lattice, lattice.90
	movslq	%r12d, %rdx	# i, D.5690
	salq	$11, %rdx	#, D.5690
	leaq	(%rax,%rdx), %r13	#, s
	jmp	.L100	#
.L103:
	.loc 1 422 0 is_stmt 1 discriminator 2
	movslq	%ebx, %rdx	# dir, tmp180
	movq	%rdx, %rax	# tmp180, tmp181
	salq	$3, %rax	#, tmp181
	addq	%rdx, %rax	# tmp180, tmp181
	salq	$4, %rax	#, tmp182
	addq	$112, %rax	#, tmp183
	leaq	0(%r13,%rax), %rdx	#, D.5686
	movslq	%ebx, %rax	# dir, tmp184
	movq	gen_pt(,%rax,8), %rax	# gen_pt, D.5684
	movslq	%r12d, %rcx	# i, D.5690
	salq	$3, %rcx	#, D.5690
	addq	%rcx, %rax	# D.5690, D.5684
	movq	(%rax), %rax	# *_97, D.5692
	movq	%rdx, %rsi	# D.5686,
	movq	%rax, %rdi	# D.5692,
	call	su3mat_copy	#
	.loc 1 421 0 discriminator 2
	addl	$1, %r12d	#, i
	addq	$2048, %r13	#, s
.L100:
	.loc 1 421 0 is_stmt 0 discriminator 1
	cmpl	$1, -108(%rbp)	#, parity
	jne	.L101	#,
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.91
	jmp	.L102	#
.L101:
	.loc 1 421 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.91
.L102:
	.loc 1 421 0 discriminator 3
	cmpl	%r12d, %eax	# i, iftmp.91
	jg	.L103	#,
	.loc 1 424 0 is_stmt 1
	movslq	%ebx, %rax	# dir, tmp185
	movq	-96(%rbp,%rax,8), %rax	# mtag, D.5688
	movq	%rax, %rdi	# D.5688,
	call	cleanup_gather	#
	.loc 1 384 0
	addl	$1, %ebx	#, dir
.L87:
	.loc 1 384 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L104	#,
	.loc 1 344 0 is_stmt 1
	addl	$1, -108(%rbp)	#, parity
.L82:
	.loc 1 344 0 is_stmt 0 discriminator 1
	cmpl	$2, -108(%rbp)	#, parity
	jle	.L105	#,
	.loc 1 428 0 is_stmt 1
	addq	$184, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	gaugefixstep, .-gaugefixstep
	.section	.rodata
	.align 8
.LC2:
	.string	"gaugefix: Can't malloc diffmat"
.LC3:
	.string	"gaugefix: Can't malloc sumvec"
	.text
	.globl	gaugefixscratch
	.type	gaugefixscratch, @function
gaugefixscratch:
.LFB6:
	.loc 1 431 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# diffmat, diffmat
	movl	%esi, -8(%rbp)	# sumvec, sumvec
	.loc 1 432 0
	movl	-4(%rbp), %eax	# diffmat, tmp73
	movl	%eax, diffmat_offset(%rip)	# tmp73, diffmat_offset
	.loc 1 433 0
	movq	$0, diffmatp(%rip)	#, diffmatp
	.loc 1 434 0
	movl	diffmat_offset(%rip), %eax	# diffmat_offset, diffmat_offset.92
	testl	%eax, %eax	# diffmat_offset.92
	jns	.L107	#,
	.loc 1 436 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.93
	cltq
	movl	$144, %esi	#,
	movq	%rax, %rdi	# D.5693,
	call	calloc	#
	movq	%rax, diffmatp(%rip)	# diffmatp.94, diffmatp
	.loc 1 437 0
	movq	diffmatp(%rip), %rax	# diffmatp, diffmatp.95
	testq	%rax, %rax	# diffmatp.95
	jne	.L107	#,
	.loc 1 439 0
	movl	this_node(%rip), %eax	# this_node, this_node.96
	testl	%eax, %eax	# this_node.96
	jne	.L108	#,
	.loc 1 439 0 is_stmt 0 discriminator 1
	movl	$.LC2, %edi	#,
	call	puts	#
.L108:
	.loc 1 440 0 is_stmt 1
	movq	stdout(%rip), %rax	# stdout, stdout.97
	movq	%rax, %rdi	# stdout.97,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L107:
	.loc 1 444 0
	movl	-8(%rbp), %eax	# sumvec, tmp75
	movl	%eax, sumvec_offset(%rip)	# tmp75, sumvec_offset
	.loc 1 445 0
	movq	$0, sumvecp(%rip)	#, sumvecp
	.loc 1 446 0
	movl	sumvec_offset(%rip), %eax	# sumvec_offset, sumvec_offset.98
	testl	%eax, %eax	# sumvec_offset.98
	jns	.L106	#,
	.loc 1 448 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.99
	cltq
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.5693,
	call	calloc	#
	movq	%rax, sumvecp(%rip)	# sumvecp.100, sumvecp
	.loc 1 449 0
	movq	sumvecp(%rip), %rax	# sumvecp, sumvecp.101
	testq	%rax, %rax	# sumvecp.101
	jne	.L106	#,
	.loc 1 451 0
	movl	this_node(%rip), %eax	# this_node, this_node.102
	testl	%eax, %eax	# this_node.102
	jne	.L110	#,
	.loc 1 451 0 is_stmt 0 discriminator 1
	movl	$.LC3, %edi	#,
	call	puts	#
.L110:
	.loc 1 452 0 is_stmt 1
	movq	stdout(%rip), %rax	# stdout, stdout.103
	movq	%rax, %rdi	# stdout.103,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L106:
	.loc 1 455 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	gaugefixscratch, .-gaugefixscratch
	.section	.rodata
	.align 8
.LC5:
	.string	"GFIX: Ended at step %d. Av gf action %.8e, delta %.3e\n"
	.text
	.globl	gaugefix
	.type	gaugefix, @function
gaugefix:
.LFB7:
	.loc 1 462 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movl	%edi, -36(%rbp)	# gauge_dir, gauge_dir
	movsd	%xmm0, -48(%rbp)	# relax_boost, relax_boost
	movl	%esi, -40(%rbp)	# max_gauge_iter, max_gauge_iter
	movsd	%xmm1, -56(%rbp)	# gauge_fix_tol, gauge_fix_tol
	movl	%edx, -60(%rbp)	# diffmat, diffmat
	movl	%ecx, -64(%rbp)	# sumvec, sumvec
	movl	%r8d, -68(%rbp)	# nvector, nvector
	movq	%r9, -80(%rbp)	# vector_offset, vector_offset
	.loc 1 476 0
	movl	-64(%rbp), %edx	# sumvec, tmp69
	movl	-60(%rbp), %eax	# diffmat, tmp70
	movl	%edx, %esi	# tmp69,
	movl	%eax, %edi	# tmp70,
	call	gaugefixscratch	#
	.loc 1 481 0
	movl	$0, -28(%rbp)	#, gauge_iter
	jmp	.L112	#
.L117:
	.loc 1 483 0
	movl	24(%rbp), %r9d	# nantiherm, tmp71
	movq	-80(%rbp), %rcx	# vector_offset, tmp72
	movl	-68(%rbp), %edx	# nvector, tmp73
	movq	-48(%rbp), %rax	# relax_boost, tmp74
	leaq	-24(%rbp), %rsi	#, tmp75
	movl	-36(%rbp), %edi	# gauge_dir, tmp76
	movq	40(%rbp), %r8	# antiherm_parity, tmp77
	movq	%r8, 8(%rsp)	# tmp77,
	movq	32(%rbp), %r8	# antiherm_offset, tmp78
	movq	%r8, (%rsp)	# tmp78,
	movq	16(%rbp), %r8	# vector_parity,
	movq	%rax, -88(%rbp)	# tmp74, %sfp
	movsd	-88(%rbp), %xmm0	# %sfp,
	call	gaugefixstep	#
	.loc 1 487 0
	cmpl	$0, -28(%rbp)	#, gauge_iter
	je	.L113	#,
	.loc 1 489 0
	movsd	-24(%rbp), %xmm0	# current_av, current_av.105
	subsd	-16(%rbp), %xmm0	# old_av, tmp79
	movsd	%xmm0, -8(%rbp)	# tmp79, del_av
	.loc 1 490 0
	movsd	-8(%rbp), %xmm1	# del_av, tmp80
	movsd	.LC4(%rip), %xmm0	#, tmp81
	andpd	%xmm1, %xmm0	# tmp80, D.5696
	movsd	-56(%rbp), %xmm1	# gauge_fix_tol, tmp82
	ucomisd	%xmm0, %xmm1	# D.5696, tmp82
	jbe	.L113	#,
	.loc 1 490 0 is_stmt 0 discriminator 1
	jmp	.L115	#
.L113:
	.loc 1 492 0 is_stmt 1
	movq	-24(%rbp), %rax	# current_av, tmp83
	movq	%rax, -16(%rbp)	# tmp83, old_av
	.loc 1 495 0
	movl	-28(%rbp), %ecx	# gauge_iter, tmp84
	movl	$1717986919, %edx	#, tmp86
	movl	%ecx, %eax	# tmp84, tmp101
	imull	%edx	# tmp86
	sarl	$3, %edx	#, tmp87
	movl	%ecx, %eax	# tmp84, tmp88
	sarl	$31, %eax	#, tmp88
	subl	%eax, %edx	# tmp88, D.5697
	movl	%edx, %eax	# D.5697, tmp89
	sall	$2, %eax	#, tmp89
	addl	%edx, %eax	# D.5697, tmp89
	sall	$2, %eax	#, tmp90
	subl	%eax, %ecx	# tmp89, D.5697
	movl	%ecx, %edx	# D.5697, D.5697
	cmpl	$19, %edx	#, D.5697
	jne	.L116	#,
	.loc 1 499 0
	call	reunitarize	#
.L116:
	.loc 1 481 0
	addl	$1, -28(%rbp)	#, gauge_iter
.L112:
	.loc 1 481 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# gauge_iter, tmp91
	cmpl	-40(%rbp), %eax	# max_gauge_iter, tmp91
	jl	.L117	#,
.L115:
	.loc 1 503 0 is_stmt 1
	movl	-28(%rbp), %ecx	# gauge_iter, tmp92
	movl	$1717986919, %edx	#, tmp94
	movl	%ecx, %eax	# tmp92, tmp102
	imull	%edx	# tmp94
	sarl	$3, %edx	#, tmp95
	movl	%ecx, %eax	# tmp92, tmp96
	sarl	$31, %eax	#, tmp96
	subl	%eax, %edx	# tmp96, D.5697
	movl	%edx, %eax	# D.5697, tmp97
	sall	$2, %eax	#, tmp97
	addl	%edx, %eax	# D.5697, tmp97
	sall	$2, %eax	#, tmp98
	subl	%eax, %ecx	# tmp97, D.5697
	movl	%ecx, %edx	# D.5697, D.5697
	testl	%edx, %edx	# D.5697
	je	.L118	#,
	.loc 1 504 0
	call	reunitarize	#
.L118:
	.loc 1 507 0
	movl	diffmat_offset(%rip), %eax	# diffmat_offset, diffmat_offset.106
	testl	%eax, %eax	# diffmat_offset.106
	jns	.L119	#,
	.loc 1 507 0 is_stmt 0 discriminator 1
	movq	diffmatp(%rip), %rax	# diffmatp, diffmatp.107
	movq	%rax, %rdi	# diffmatp.107,
	call	free	#
.L119:
	.loc 1 508 0 is_stmt 1
	movl	sumvec_offset(%rip), %eax	# sumvec_offset, sumvec_offset.108
	testl	%eax, %eax	# sumvec_offset.108
	jns	.L120	#,
	.loc 1 508 0 is_stmt 0 discriminator 1
	movq	sumvecp(%rip), %rax	# sumvecp, sumvecp.109
	movq	%rax, %rdi	# sumvecp.109,
	call	free	#
.L120:
	.loc 1 510 0 is_stmt 1
	movl	this_node(%rip), %eax	# this_node, this_node.110
	testl	%eax, %eax	# this_node.110
	jne	.L111	#,
	.loc 1 511 0
	movq	-24(%rbp), %rax	# current_av, current_av.111
	movq	-8(%rbp), %rdx	# del_av, tmp99
	movl	-28(%rbp), %ecx	# gauge_iter, tmp100
	movq	%rdx, -88(%rbp)	# tmp99, %sfp
	movsd	-88(%rbp), %xmm1	# %sfp,
	movq	%rax, -88(%rbp)	# current_av.111, %sfp
	movsd	-88(%rbp), %xmm0	# %sfp,
	movl	%ecx, %esi	# tmp100,
	movl	$.LC5, %edi	#,
	movl	$2, %eax	#,
	call	printf	#
.L111:
	.loc 1 513 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	gaugefix, .-gaugefix
	.section	.rodata
	.align 16
.LC0:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 16
.LC4:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "complex.h"
	.file 6 "random.h"
	.file 7 "su3.h"
	.file 8 "macros.h"
	.file 9 "./lattice.h"
	.file 10 "comdefs.h"
	.file 11 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc25
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF125
	.byte	0x1
	.long	.LASF126
	.long	.LASF127
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd4
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x8c
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x8d
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	.LASF41
	.byte	0xd8
	.byte	0x4
	.byte	0xf6
	.long	0x21d
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x109
	.long	0x255
	.byte	0x60
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x10b
	.long	0x25b
	.byte	0x68
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x119
	.long	0x261
	.byte	0x83
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x11d
	.long	0x271
	.byte	0x88
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x137
	.long	0x277
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF128
	.byte	0x4
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF42
	.byte	0x18
	.byte	0x4
	.byte	0xa1
	.long	0x255
	.uleb128 0x8
	.long	.LASF43
	.byte	0x4
	.byte	0xa2
	.long	0x255
	.byte	0
	.uleb128 0x8
	.long	.LASF44
	.byte	0x4
	.byte	0xa3
	.long	0x25b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x224
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.long	0x95
	.long	0x271
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21d
	.uleb128 0xb
	.long	0x95
	.long	0x287
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF48
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF49
	.uleb128 0xd
	.byte	0x10
	.byte	0x5
	.byte	0x49
	.long	0x2ca
	.uleb128 0x8
	.long	.LASF50
	.byte	0x5
	.byte	0x4a
	.long	0x2a2
	.byte	0
	.uleb128 0x8
	.long	.LASF51
	.byte	0x5
	.byte	0x4b
	.long	0x2a2
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF52
	.byte	0x5
	.byte	0x4c
	.long	0x2a9
	.uleb128 0xd
	.byte	0x58
	.byte	0x6
	.byte	0x6
	.long	0x35b
	.uleb128 0xe
	.string	"r0"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0
	.uleb128 0xe
	.string	"r1"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x8
	.uleb128 0xe
	.string	"r2"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x10
	.uleb128 0xe
	.string	"r3"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x18
	.uleb128 0xe
	.string	"r4"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x20
	.uleb128 0xe
	.string	"r5"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x28
	.uleb128 0xe
	.string	"r6"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x30
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x9
	.long	0x38
	.byte	0x38
	.uleb128 0x8
	.long	.LASF54
	.byte	0x6
	.byte	0x9
	.long	0x38
	.byte	0x40
	.uleb128 0x8
	.long	.LASF55
	.byte	0x6
	.byte	0x9
	.long	0x38
	.byte	0x48
	.uleb128 0x8
	.long	.LASF56
	.byte	0x6
	.byte	0xa
	.long	0x2a2
	.byte	0x50
	.byte	0
	.uleb128 0x2
	.long	.LASF57
	.byte	0x6
	.byte	0xb
	.long	0x2d5
	.uleb128 0xd
	.byte	0x90
	.byte	0x7
	.byte	0xe
	.long	0x379
	.uleb128 0xe
	.string	"e"
	.byte	0x7
	.byte	0xe
	.long	0x379
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x2ca
	.long	0x38f
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x7
	.byte	0xe
	.long	0x366
	.uleb128 0xd
	.byte	0x30
	.byte	0x7
	.byte	0xf
	.long	0x3ad
	.uleb128 0xe
	.string	"c"
	.byte	0x7
	.byte	0xf
	.long	0x3ad
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x2ca
	.long	0x3bd
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x7
	.byte	0xf
	.long	0x39a
	.uleb128 0xd
	.byte	0x50
	.byte	0x7
	.byte	0x10
	.long	0x425
	.uleb128 0xe
	.string	"m01"
	.byte	0x7
	.byte	0x11
	.long	0x2ca
	.byte	0
	.uleb128 0xe
	.string	"m02"
	.byte	0x7
	.byte	0x11
	.long	0x2ca
	.byte	0x10
	.uleb128 0xe
	.string	"m12"
	.byte	0x7
	.byte	0x11
	.long	0x2ca
	.byte	0x20
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x11
	.long	0x2a2
	.byte	0x30
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0x11
	.long	0x2a2
	.byte	0x38
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0x11
	.long	0x2a2
	.byte	0x40
	.uleb128 0x8
	.long	.LASF63
	.byte	0x7
	.byte	0x11
	.long	0x2a2
	.byte	0x48
	.byte	0
	.uleb128 0x2
	.long	.LASF64
	.byte	0x7
	.byte	0x11
	.long	0x3c8
	.uleb128 0xd
	.byte	0x40
	.byte	0x7
	.byte	0x14
	.long	0x443
	.uleb128 0xe
	.string	"e"
	.byte	0x7
	.byte	0x14
	.long	0x443
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x2ca
	.long	0x459
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF65
	.byte	0x7
	.byte	0x14
	.long	0x430
	.uleb128 0xb
	.long	0x3bd
	.long	0x474
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF66
	.byte	0x8
	.byte	0x2a
	.long	0x62
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0xf
	.value	0x800
	.byte	0x9
	.byte	0x1f
	.long	0x59c
	.uleb128 0xe
	.string	"x"
	.byte	0x9
	.byte	0x22
	.long	0x5b
	.byte	0
	.uleb128 0xe
	.string	"y"
	.byte	0x9
	.byte	0x22
	.long	0x5b
	.byte	0x2
	.uleb128 0xe
	.string	"z"
	.byte	0x9
	.byte	0x22
	.long	0x5b
	.byte	0x4
	.uleb128 0xe
	.string	"t"
	.byte	0x9
	.byte	0x22
	.long	0x5b
	.byte	0x6
	.uleb128 0x8
	.long	.LASF67
	.byte	0x9
	.byte	0x24
	.long	0x95
	.byte	0x8
	.uleb128 0x8
	.long	.LASF68
	.byte	0x9
	.byte	0x26
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF69
	.byte	0x9
	.byte	0x29
	.long	0x35b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF70
	.byte	0x9
	.byte	0x2b
	.long	0x62
	.byte	0x68
	.uleb128 0x8
	.long	.LASF71
	.byte	0x9
	.byte	0x32
	.long	0x59c
	.byte	0x70
	.uleb128 0x10
	.string	"mom"
	.byte	0x9
	.byte	0x3e
	.long	0x5ac
	.value	0x2b0
	.uleb128 0x11
	.long	.LASF72
	.byte	0x9
	.byte	0x42
	.long	0x5bc
	.value	0x3f0
	.uleb128 0x10
	.string	"phi"
	.byte	0x9
	.byte	0x45
	.long	0x3bd
	.value	0x410
	.uleb128 0x11
	.long	.LASF73
	.byte	0x9
	.byte	0x46
	.long	0x3bd
	.value	0x440
	.uleb128 0x11
	.long	.LASF74
	.byte	0x9
	.byte	0x47
	.long	0x3bd
	.value	0x470
	.uleb128 0x10
	.string	"xxx"
	.byte	0x9
	.byte	0x48
	.long	0x3bd
	.value	0x4a0
	.uleb128 0x10
	.string	"ttt"
	.byte	0x9
	.byte	0x49
	.long	0x3bd
	.value	0x4d0
	.uleb128 0x11
	.long	.LASF75
	.byte	0x9
	.byte	0x4a
	.long	0x3bd
	.value	0x500
	.uleb128 0x11
	.long	.LASF76
	.byte	0x9
	.byte	0x5d
	.long	0x464
	.value	0x530
	.uleb128 0x11
	.long	.LASF77
	.byte	0x9
	.byte	0x5f
	.long	0x464
	.value	0x5f0
	.uleb128 0x11
	.long	.LASF78
	.byte	0x9
	.byte	0x60
	.long	0x3bd
	.value	0x6b0
	.uleb128 0x11
	.long	.LASF79
	.byte	0x9
	.byte	0x62
	.long	0x38f
	.value	0x6e0
	.uleb128 0x11
	.long	.LASF80
	.byte	0x9
	.byte	0x62
	.long	0x38f
	.value	0x770
	.byte	0
	.uleb128 0xb
	.long	0x38f
	.long	0x5ac
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x425
	.long	0x5bc
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x2a2
	.long	0x5cc
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF81
	.byte	0x9
	.byte	0x63
	.long	0x485
	.uleb128 0xd
	.byte	0x18
	.byte	0xa
	.byte	0x35
	.long	0x610
	.uleb128 0x8
	.long	.LASF82
	.byte	0xa
	.byte	0x37
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF83
	.byte	0xa
	.byte	0x39
	.long	0x62
	.byte	0x4
	.uleb128 0x8
	.long	.LASF84
	.byte	0xa
	.byte	0x3b
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF85
	.byte	0xa
	.byte	0x40
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.long	.LASF86
	.byte	0xa
	.byte	0x42
	.long	0x5d7
	.uleb128 0x12
	.long	.LASF88
	.byte	0x1
	.byte	0x53
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x69d
	.uleb128 0x13
	.long	.LASF87
	.byte	0x1
	.byte	0x53
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x13
	.long	.LASF67
	.byte	0x1
	.byte	0x53
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"j"
	.byte	0x1
	.byte	0x5b
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"m1"
	.byte	0x1
	.byte	0x5c
	.long	0x69d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x14
	.string	"m2"
	.byte	0x1
	.byte	0x5c
	.long	0x69d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x14
	.string	"dir"
	.byte	0x1
	.byte	0x5d
	.long	0x62
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x5d
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0x5e
	.long	0x6a3
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x38f
	.uleb128 0x6
	.byte	0x8
	.long	0x5cc
	.uleb128 0x12
	.long	.LASF89
	.byte	0x1
	.byte	0xa7
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x82d
	.uleb128 0x13
	.long	.LASF87
	.byte	0x1
	.byte	0xa7
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x13
	.long	.LASF67
	.byte	0x1
	.byte	0xa7
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0xa7
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x15
	.string	"q"
	.byte	0x1
	.byte	0xa7
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x13
	.long	.LASF90
	.byte	0x1
	.byte	0xa7
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x13
	.long	.LASF91
	.byte	0x1
	.byte	0xa8
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x13
	.long	.LASF92
	.byte	0x1
	.byte	0xa8
	.long	0x82d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x13
	.long	.LASF93
	.byte	0x1
	.byte	0xa8
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.long	.LASF94
	.byte	0x1
	.byte	0xa9
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.long	.LASF95
	.byte	0x1
	.byte	0xa9
	.long	0x82d
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x13
	.long	.LASF96
	.byte	0x1
	.byte	0xaa
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x14
	.string	"a0"
	.byte	0x1
	.byte	0xae
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x14
	.string	"a1"
	.byte	0x1
	.byte	0xae
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x14
	.string	"a2"
	.byte	0x1
	.byte	0xae
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x14
	.string	"a3"
	.byte	0x1
	.byte	0xae
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x14
	.string	"asq"
	.byte	0x1
	.byte	0xae
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x16
	.long	.LASF97
	.byte	0x1
	.byte	0xae
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x14
	.string	"x"
	.byte	0x1
	.byte	0xae
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x14
	.string	"r"
	.byte	0x1
	.byte	0xae
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x14
	.string	"xdr"
	.byte	0x1
	.byte	0xae
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x14
	.string	"dir"
	.byte	0x1
	.byte	0xaf
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0xaf
	.long	0x62
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x14
	.string	"j"
	.byte	0x1
	.byte	0xaf
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0xb0
	.long	0x6a3
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x14
	.string	"u"
	.byte	0x1
	.byte	0xb1
	.long	0x459
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x16
	.long	.LASF98
	.byte	0x1
	.byte	0xb2
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x474
	.uleb128 0x17
	.long	.LASF129
	.byte	0x1
	.value	0x11e
	.long	0x2a2
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e4
	.uleb128 0x18
	.long	.LASF87
	.byte	0x1
	.value	0x11e
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x18
	.long	.LASF67
	.byte	0x1
	.value	0x11e
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x19
	.string	"dir"
	.byte	0x1
	.value	0x125
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.value	0x125
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1a
	.long	.LASF99
	.byte	0x1
	.value	0x125
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.value	0x126
	.long	0x6a3
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x19
	.string	"m1"
	.byte	0x1
	.value	0x127
	.long	0x69d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x19
	.string	"m2"
	.byte	0x1
	.value	0x127
	.long	0x69d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.value	0x128
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1a
	.long	.LASF101
	.byte	0x1
	.value	0x129
	.long	0x2ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x1b
	.long	.LASF102
	.byte	0x1
	.value	0x146
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x9e7
	.uleb128 0x18
	.long	.LASF87
	.byte	0x1
	.value	0x146
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x18
	.long	.LASF103
	.byte	0x1
	.value	0x146
	.long	0x9e7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x18
	.long	.LASF90
	.byte	0x1
	.value	0x146
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x18
	.long	.LASF91
	.byte	0x1
	.value	0x147
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x18
	.long	.LASF92
	.byte	0x1
	.value	0x147
	.long	0x82d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x18
	.long	.LASF93
	.byte	0x1
	.value	0x147
	.long	0x287
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x18
	.long	.LASF94
	.byte	0x1
	.value	0x148
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x18
	.long	.LASF95
	.byte	0x1
	.value	0x148
	.long	0x82d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF96
	.byte	0x1
	.value	0x149
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF67
	.byte	0x1
	.value	0x14d
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1a
	.long	.LASF104
	.byte	0x1
	.value	0x14e
	.long	0x9ed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.value	0x14f
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x19
	.string	"dir"
	.byte	0x1
	.value	0x150
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.value	0x150
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.value	0x151
	.long	0x6a3
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2a2
	.uleb128 0xb
	.long	0x9fd
	.long	0x9fd
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x610
	.uleb128 0x1b
	.long	.LASF105
	.byte	0x1
	.value	0x1ae
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xa40
	.uleb128 0x18
	.long	.LASF106
	.byte	0x1
	.value	0x1ae
	.long	0x474
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.long	.LASF107
	.byte	0x1
	.value	0x1ae
	.long	0x474
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF108
	.byte	0x1
	.value	0x1c9
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xb54
	.uleb128 0x18
	.long	.LASF87
	.byte	0x1
	.value	0x1c9
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.long	.LASF90
	.byte	0x1
	.value	0x1c9
	.long	0x2a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.long	.LASF109
	.byte	0x1
	.value	0x1c9
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF110
	.byte	0x1
	.value	0x1ca
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.long	.LASF106
	.byte	0x1
	.value	0x1ca
	.long	0x474
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x18
	.long	.LASF107
	.byte	0x1
	.value	0x1ca
	.long	0x474
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.long	.LASF91
	.byte	0x1
	.value	0x1cb
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x18
	.long	.LASF92
	.byte	0x1
	.value	0x1cb
	.long	0x82d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x18
	.long	.LASF93
	.byte	0x1
	.value	0x1cb
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF94
	.byte	0x1
	.value	0x1cc
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.long	.LASF95
	.byte	0x1
	.value	0x1cc
	.long	0x82d
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x18
	.long	.LASF96
	.byte	0x1
	.value	0x1cd
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1a
	.long	.LASF111
	.byte	0x1
	.value	0x1cf
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x1
	.value	0x1d0
	.long	0x2a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x1
	.value	0x1d0
	.long	0x2a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.long	.LASF114
	.byte	0x1
	.value	0x1d0
	.long	0x2a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF115
	.byte	0xb
	.byte	0xa9
	.long	0x25b
	.uleb128 0x1d
	.string	"nx"
	.byte	0x9
	.byte	0x74
	.long	0x62
	.uleb128 0x1d
	.string	"ny"
	.byte	0x9
	.byte	0x74
	.long	0x62
	.uleb128 0x1d
	.string	"nz"
	.byte	0x9
	.byte	0x74
	.long	0x62
	.uleb128 0x1d
	.string	"nt"
	.byte	0x9
	.byte	0x74
	.long	0x62
	.uleb128 0x1c
	.long	.LASF116
	.byte	0x9
	.byte	0x87
	.long	0x62
	.uleb128 0x1c
	.long	.LASF117
	.byte	0x9
	.byte	0x88
	.long	0x62
	.uleb128 0x1c
	.long	.LASF118
	.byte	0x9
	.byte	0x8b
	.long	0x62
	.uleb128 0x1c
	.long	.LASF119
	.byte	0x9
	.byte	0x9a
	.long	0x6a3
	.uleb128 0xb
	.long	0x47f
	.long	0xbc3
	.uleb128 0xc
	.long	0x86
	.byte	0xf
	.byte	0
	.uleb128 0x1c
	.long	.LASF120
	.byte	0x9
	.byte	0x9f
	.long	0xbb3
	.uleb128 0x1e
	.long	.LASF121
	.byte	0x1
	.byte	0x4f
	.long	0x69d
	.uleb128 0x9
	.byte	0x3
	.quad	diffmatp
	.uleb128 0x1e
	.long	.LASF122
	.byte	0x1
	.byte	0x50
	.long	0xbf8
	.uleb128 0x9
	.byte	0x3
	.quad	sumvecp
	.uleb128 0x6
	.byte	0x8
	.long	0x3bd
	.uleb128 0x1e
	.long	.LASF123
	.byte	0x1
	.byte	0x51
	.long	0x474
	.uleb128 0x9
	.byte	0x3
	.quad	diffmat_offset
	.uleb128 0x1e
	.long	.LASF124
	.byte	0x1
	.byte	0x51
	.long	0x474
	.uleb128 0x9
	.byte	0x3
	.quad	sumvec_offset
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x34
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
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
.LASF31:
	.string	"_shortbuf"
.LASF128:
	.string	"_IO_lock_t"
.LASF72:
	.string	"phase"
.LASF127:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF20:
	.string	"_IO_buf_end"
.LASF117:
	.string	"even_sites_on_node"
.LASF18:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF124:
	.string	"sumvec_offset"
.LASF12:
	.string	"_flags"
.LASF71:
	.string	"link"
.LASF24:
	.string	"_markers"
.LASF102:
	.string	"gaugefixstep"
.LASF112:
	.string	"current_av"
.LASF101:
	.string	"trace"
.LASF64:
	.string	"anti_hermitmat"
.LASF81:
	.string	"site"
.LASF122:
	.string	"sumvecp"
.LASF119:
	.string	"lattice"
.LASF123:
	.string	"diffmat_offset"
.LASF45:
	.string	"_pos"
.LASF90:
	.string	"relax_boost"
.LASF115:
	.string	"stdout"
.LASF23:
	.string	"_IO_save_end"
.LASF48:
	.string	"float"
.LASF97:
	.string	"a0sq"
.LASF68:
	.string	"index"
.LASF47:
	.string	"long long unsigned int"
.LASF86:
	.string	"msg_tag"
.LASF80:
	.string	"staple"
.LASF109:
	.string	"max_gauge_iter"
.LASF22:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_offset"
.LASF120:
	.string	"gen_pt"
.LASF26:
	.string	"_fileno"
.LASF7:
	.string	"size_t"
.LASF55:
	.string	"ic_state"
.LASF75:
	.string	"g_rand"
.LASF15:
	.string	"_IO_read_base"
.LASF114:
	.string	"del_av"
.LASF118:
	.string	"this_node"
.LASF43:
	.string	"_next"
.LASF67:
	.string	"parity"
.LASF105:
	.string	"gaugefixscratch"
.LASF88:
	.string	"accum_gauge_hit"
.LASF59:
	.string	"su3_vector"
.LASF11:
	.string	"char"
.LASF39:
	.string	"_mode"
.LASF84:
	.string	"msg_buf"
.LASF42:
	.string	"_IO_marker"
.LASF13:
	.string	"_IO_read_ptr"
.LASF63:
	.string	"space"
.LASF76:
	.string	"tempvec"
.LASF94:
	.string	"nantiherm"
.LASF54:
	.string	"addend"
.LASF16:
	.string	"_IO_write_base"
.LASF46:
	.string	"long long int"
.LASF111:
	.string	"gauge_iter"
.LASF83:
	.string	"msg_size"
.LASF21:
	.string	"_IO_save_base"
.LASF103:
	.string	"av_gauge_fix_action"
.LASF85:
	.string	"msg_id"
.LASF95:
	.string	"antiherm_offset"
.LASF96:
	.string	"antiherm_parity"
.LASF116:
	.string	"sites_on_node"
.LASF56:
	.string	"scale"
.LASF92:
	.string	"vector_offset"
.LASF82:
	.string	"msg_node"
.LASF91:
	.string	"nvector"
.LASF78:
	.string	"templongv1"
.LASF108:
	.string	"gaugefix"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF121:
	.string	"diffmatp"
.LASF30:
	.string	"_vtable_offset"
.LASF65:
	.string	"su2_matrix"
.LASF69:
	.string	"site_prn"
.LASF62:
	.string	"m22im"
.LASF87:
	.string	"gauge_dir"
.LASF126:
	.string	"gaugefix2.c"
.LASF125:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF100:
	.string	"gauge_fix_action"
.LASF14:
	.string	"_IO_read_end"
.LASF61:
	.string	"m11im"
.LASF5:
	.string	"short int"
.LASF89:
	.string	"do_hit"
.LASF6:
	.string	"long int"
.LASF77:
	.string	"templongvec"
.LASF60:
	.string	"m00im"
.LASF99:
	.string	"ndir"
.LASF110:
	.string	"gauge_fix_tol"
.LASF107:
	.string	"sumvec"
.LASF52:
	.string	"complex"
.LASF50:
	.string	"real"
.LASF93:
	.string	"vector_parity"
.LASF53:
	.string	"multiplier"
.LASF32:
	.string	"_lock"
.LASF10:
	.string	"sizetype"
.LASF0:
	.string	"long unsigned int"
.LASF28:
	.string	"_old_offset"
.LASF41:
	.string	"_IO_FILE"
.LASF129:
	.string	"get_gauge_fix_action"
.LASF1:
	.string	"unsigned char"
.LASF106:
	.string	"diffmat"
.LASF44:
	.string	"_sbuf"
.LASF79:
	.string	"tempmat1"
.LASF51:
	.string	"imag"
.LASF17:
	.string	"_IO_write_ptr"
.LASF66:
	.string	"field_offset"
.LASF74:
	.string	"cg_p"
.LASF113:
	.string	"old_av"
.LASF57:
	.string	"double_prn"
.LASF8:
	.string	"__off_t"
.LASF4:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF104:
	.string	"mtag"
.LASF49:
	.string	"double"
.LASF98:
	.string	"htemp"
.LASF25:
	.string	"_chain"
.LASF27:
	.string	"_flags2"
.LASF29:
	.string	"_cur_column"
.LASF73:
	.string	"resid"
.LASF58:
	.string	"su3_matrix"
.LASF9:
	.string	"__off64_t"
.LASF40:
	.string	"_unused2"
.LASF19:
	.string	"_IO_buf_base"
.LASF70:
	.string	"space1"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
