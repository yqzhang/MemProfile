	.file	"d_congrad5_fn.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# d_congrad5_fn.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	ttt,8,8
	.comm	cg_p,8,8
	.comm	resid,8,8
	.comm	t_dest,8,8
	.globl	first_congrad
	.data
	.align 4
	.type	first_congrad, @object
	.size	first_congrad, 4
first_congrad:
	.long	1
	.section	.rodata
	.align 8
.LC4:
	.string	"CG not converged after %d iterations, res. = %e wanted %e\n"
	.text
	.globl	ks_congrad
	.type	ks_congrad, @function
ks_congrad:
.LFB2:
	.file 1 "d_congrad5_fn.c"
	.loc 1 55 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$408, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -388(%rbp)	# src, src
	movl	%esi, -392(%rbp)	# dest, dest
	movsd	%xmm0, -400(%rbp)	# mass, mass
	movl	%edx, -404(%rbp)	# niter, niter
	movsd	%xmm1, -416(%rbp)	# rsqmin, rsqmin
	movl	%ecx, -408(%rbp)	# parity, parity
	movq	%r8, -424(%rbp)	# final_rsq_ptr, final_rsq_ptr
	.loc 1 88 0
	movabsq	$4652935296655032320, %rax	#, tmp276
	movq	%rax, -336(%rbp)	# tmp276, nflop
	.loc 1 89 0
	cmpl	$3, -408(%rbp)	#, parity
	jne	.L2	#,
	.loc 1 89 0 is_stmt 0 discriminator 1
	movsd	-336(%rbp), %xmm0	# nflop, tmp277
	addsd	%xmm0, %xmm0	# tmp277, tmp278
	movsd	%xmm0, -336(%rbp)	# tmp278, nflop
.L2:
	.loc 1 91 0 is_stmt 1
	movl	$0, -364(%rbp)	#, special_started
	.loc 1 93 0
	movl	-408(%rbp), %eax	# parity, parity
	cmpl	$2, %eax	#, parity
	je	.L4	#,
	cmpl	$3, %eax	#, parity
	je	.L5	#,
	cmpl	$1, %eax	#, parity
	je	.L6	#,
	jmp	.L3	#
.L4:
	.loc 1 94 0
	movl	$2, -372(%rbp)	#, l_parity
	movl	$1, -368(%rbp)	#, l_otherparity
	jmp	.L3	#
.L6:
	.loc 1 95 0
	movl	$1, -372(%rbp)	#, l_parity
	movl	$2, -368(%rbp)	#, l_otherparity
	jmp	.L3	#
.L5:
	.loc 1 96 0
	movl	$2, -372(%rbp)	#, l_parity
	movl	$1, -368(%rbp)	#, l_otherparity
	nop
.L3:
	.loc 1 98 0
	movsd	-400(%rbp), %xmm1	# mass, tmp280
	movsd	.LC1(%rip), %xmm0	#, tmp281
	mulsd	%xmm1, %xmm0	# tmp280, D.5497
	mulsd	-400(%rbp), %xmm0	# mass, tmp282
	movsd	%xmm0, -328(%rbp)	# tmp282, msq_x4
	.loc 1 99 0
	movl	$0, -376(%rbp)	#, iteration
	.loc 1 101 0
	movl	valid_longlinks(%rip), %eax	# valid_longlinks, valid_longlinks.0
	testl	%eax, %eax	# valid_longlinks.0
	jne	.L7	#,
	.loc 1 101 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#,
	call	load_longlinks	#
.L7:
	.loc 1 102 0 is_stmt 1
	movl	valid_fatlinks(%rip), %eax	# valid_fatlinks, valid_fatlinks.1
	testl	%eax, %eax	# valid_fatlinks.1
	jne	.L8	#,
	.loc 1 102 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#,
	call	load_fatlinks	#
.L8:
	.loc 1 108 0 is_stmt 1
	movl	first_congrad(%rip), %eax	# first_congrad, first_congrad.2
	testl	%eax, %eax	# first_congrad.2
	je	.L9	#,
	.loc 1 109 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.3
	cltq
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.5498,
	call	calloc	#
	movq	%rax, ttt(%rip)	# ttt.4, ttt
	.loc 1 110 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.5
	cltq
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.5498,
	call	calloc	#
	movq	%rax, cg_p(%rip)	# cg_p.6, cg_p
	.loc 1 111 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.7
	cltq
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.5498,
	call	calloc	#
	movq	%rax, resid(%rip)	# resid.8, resid
	.loc 1 112 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.9
	cltq
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.5498,
	call	calloc	#
	movq	%rax, t_dest(%rip)	# t_dest.10, t_dest
	.loc 1 113 0
	movl	$0, first_congrad(%rip)	#, first_congrad
.L9:
	.loc 1 123 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L10	#
.L11:
	.loc 1 124 0 discriminator 2
	movq	t_dest(%rip), %rcx	# t_dest, t_dest.11
	movslq	%ebx, %rdx	# i, D.5498
	movq	%rdx, %rax	# D.5498, tmp287
	addq	%rax, %rax	# tmp287
	addq	%rdx, %rax	# D.5498, tmp287
	salq	$4, %rax	#, tmp288
	addq	%rcx, %rax	# t_dest.11, D.5499
	movl	-392(%rbp), %edx	# dest, tmp289
	movslq	%edx, %rdx	# tmp289, D.5500
	addq	%r12, %rdx	# s, D.5499
	movq	(%rdx), %rcx	# *_79, tmp290
	movq	%rcx, (%rax)	# tmp290, *_76
	movq	8(%rdx), %rcx	# *_79, tmp291
	movq	%rcx, 8(%rax)	# tmp291, *_76
	movq	16(%rdx), %rcx	# *_79, tmp292
	movq	%rcx, 16(%rax)	# tmp292, *_76
	movq	24(%rdx), %rcx	# *_79, tmp293
	movq	%rcx, 24(%rax)	# tmp293, *_76
	movq	32(%rdx), %rcx	# *_79, tmp294
	movq	%rcx, 32(%rax)	# tmp294, *_76
	movq	40(%rdx), %rdx	# *_79, tmp295
	movq	%rdx, 40(%rax)	# tmp295, *_76
	.loc 1 123 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L10:
	.loc 1 123 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.12
	cmpl	%eax, %ebx	# sites_on_node.12, i
	jl	.L11	#,
.L12:
	.loc 1 136 0 is_stmt 1
	cmpl	$1, -364(%rbp)	#, special_started
	jne	.L13	#,
	.loc 1 137 0
	leaq	-160(%rbp), %rdx	#, tmp296
	leaq	-288(%rbp), %rax	#, tmp297
	movq	%rdx, %rsi	# tmp296,
	movq	%rax, %rdi	# tmp297,
	call	cleanup_gathers	#
	.loc 1 138 0
	movl	$0, -364(%rbp)	#, special_started
.L13:
	.loc 1 141 0
	movl	$0, %eax	#, tmp298
	movq	%rax, -344(%rbp)	# tmp298, source_norm
	movq	-344(%rbp), %rax	# source_norm, source_norm.13
	movq	%rax, -360(%rbp)	# source_norm.13, rsq
	.loc 1 143 0
	movq	ttt(%rip), %rsi	# ttt, ttt.14
	movq	t_dest(%rip), %rax	# t_dest, t_dest.15
	leaq	-160(%rbp), %rcx	#, tmp299
	movl	-368(%rbp), %edx	# l_otherparity, tmp300
	movl	$1, %r8d	#,
	movq	%rax, %rdi	# t_dest.15,
	call	dslash_fn_on_temp_special	#
	.loc 1 144 0
	movq	ttt(%rip), %rsi	# ttt, ttt.16
	movq	ttt(%rip), %rax	# ttt, ttt.17
	leaq	-288(%rbp), %rcx	#, tmp301
	movl	-372(%rbp), %edx	# l_parity, tmp302
	movl	$1, %r8d	#,
	movq	%rax, %rdi	# ttt.17,
	call	dslash_fn_on_temp_special	#
	.loc 1 145 0
	leaq	-160(%rbp), %rdx	#, tmp303
	leaq	-288(%rbp), %rax	#, tmp304
	movq	%rdx, %rsi	# tmp303,
	movq	%rax, %rdi	# tmp304,
	call	cleanup_gathers	#
.LBB2:
	.loc 1 152 0
	cmpl	$2, -372(%rbp)	#, l_parity
	jne	.L14	#,
	.loc 1 152 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.18
	jmp	.L15	#
.L14:
	.loc 1 152 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.18
.L15:
	.loc 1 152 0 discriminator 3
	movl	%eax, %r13d	# iftmp.18, loopend
	cmpl	$1, -372(%rbp)	#, l_parity
	jne	.L16	#,
	.loc 1 152 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.19
	jmp	.L17	#
.L16:
	.loc 1 152 0 discriminator 2
	movl	$0, %eax	#, iftmp.19
.L17:
	.loc 1 152 0 discriminator 3
	movl	%eax, %ebx	# iftmp.19, i
	movq	lattice(%rip), %rax	# lattice, lattice.20
	movslq	%ebx, %rdx	# i, D.5498
	salq	$11, %rdx	#, D.5498
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L18	#
.L19:
	.loc 1 154 0 is_stmt 1 discriminator 2
	movq	ttt(%rip), %rcx	# ttt, ttt.21
	movslq	%ebx, %rdx	# i, D.5498
	.loc 1 155 0 discriminator 2
	movq	%rdx, %rax	# D.5498, tmp305
	addq	%rax, %rax	# tmp305
	addq	%rdx, %rax	# D.5498, tmp305
	salq	$4, %rax	#, tmp306
	.loc 1 154 0 discriminator 2
	leaq	(%rcx,%rax), %rsi	#, D.5499
	movsd	-328(%rbp), %xmm1	# msq_x4, tmp307
	movsd	.LC3(%rip), %xmm0	#, tmp308
	xorpd	%xmm1, %xmm0	# tmp307, D.5497
	movq	t_dest(%rip), %rcx	# t_dest, t_dest.22
	movslq	%ebx, %rdx	# i, D.5498
	movq	%rdx, %rax	# D.5498, tmp309
	addq	%rax, %rax	# tmp309
	addq	%rdx, %rax	# D.5498, tmp309
	salq	$4, %rax	#, tmp310
	addq	%rax, %rcx	# D.5498, D.5499
	movq	ttt(%rip), %rdi	# ttt, ttt.23
	movslq	%ebx, %rdx	# i, D.5498
	movq	%rdx, %rax	# D.5498, tmp311
	addq	%rax, %rax	# tmp311
	addq	%rdx, %rax	# D.5498, tmp311
	salq	$4, %rax	#, tmp312
	addq	%rdi, %rax	# ttt.23, D.5499
	movq	%rsi, %rdx	# D.5499,
	movq	%rcx, %rsi	# D.5499,
	movq	%rax, %rdi	# D.5499,
	call	scalar_mult_add_su3_vector	#
	.loc 1 157 0 discriminator 2
	movq	resid(%rip), %rcx	# resid, resid.24
	movslq	%ebx, %rdx	# i, D.5498
	.loc 1 158 0 discriminator 2
	movq	%rdx, %rax	# D.5498, tmp313
	addq	%rax, %rax	# tmp313
	addq	%rdx, %rax	# D.5498, tmp313
	salq	$4, %rax	#, tmp314
	.loc 1 157 0 discriminator 2
	leaq	(%rcx,%rax), %rsi	#, D.5499
	movq	ttt(%rip), %rcx	# ttt, ttt.25
	movslq	%ebx, %rdx	# i, D.5498
	.loc 1 158 0 discriminator 2
	movq	%rdx, %rax	# D.5498, tmp315
	addq	%rax, %rax	# tmp315
	addq	%rdx, %rax	# D.5498, tmp315
	salq	$4, %rax	#, tmp316
	.loc 1 157 0 discriminator 2
	addq	%rax, %rcx	# D.5498, D.5499
	movl	-388(%rbp), %eax	# src, tmp317
	cltq
	addq	%r12, %rax	# s, D.5499
	movq	%rsi, %rdx	# D.5499,
	movq	%rcx, %rsi	# D.5499,
	movq	%rax, %rdi	# D.5499,
	call	add_su3_vector	#
	.loc 1 160 0 discriminator 2
	movq	cg_p(%rip), %rcx	# cg_p, cg_p.26
	movslq	%ebx, %rdx	# i, D.5498
	movq	%rdx, %rax	# D.5498, tmp318
	addq	%rax, %rax	# tmp318
	addq	%rdx, %rax	# D.5498, tmp318
	salq	$4, %rax	#, tmp319
	leaq	(%rcx,%rax), %rdx	#, D.5499
	movq	resid(%rip), %rsi	# resid, resid.27
	movslq	%ebx, %rcx	# i, D.5498
	movq	%rcx, %rax	# D.5498, tmp320
	addq	%rax, %rax	# tmp320
	addq	%rcx, %rax	# D.5498, tmp320
	salq	$4, %rax	#, tmp321
	addq	%rsi, %rax	# resid.27, D.5499
	movq	(%rax), %rcx	# *_129, tmp322
	movq	%rcx, (%rdx)	# tmp322, *_125
	movq	8(%rax), %rcx	# *_129, tmp323
	movq	%rcx, 8(%rdx)	# tmp323, *_125
	movq	16(%rax), %rcx	# *_129, tmp324
	movq	%rcx, 16(%rdx)	# tmp324, *_125
	movq	24(%rax), %rcx	# *_129, tmp325
	movq	%rcx, 24(%rdx)	# tmp325, *_125
	movq	32(%rax), %rcx	# *_129, tmp326
	movq	%rcx, 32(%rdx)	# tmp326, *_125
	movq	40(%rax), %rax	# *_129, tmp327
	movq	%rax, 40(%rdx)	# tmp327, *_125
	.loc 1 162 0 discriminator 2
	movl	-388(%rbp), %eax	# src, tmp328
	cltq
	addq	%r12, %rax	# s, D.5499
	movq	%rax, %rdi	# D.5499,
	call	magsq_su3vec	#
	movsd	-344(%rbp), %xmm1	# source_norm, source_norm.28
	addsd	%xmm1, %xmm0	# source_norm.28, source_norm.29
	movsd	%xmm0, -344(%rbp)	# source_norm.29, source_norm
	.loc 1 163 0 discriminator 2
	movq	resid(%rip), %rcx	# resid, resid.30
	movslq	%ebx, %rdx	# i, D.5498
	movq	%rdx, %rax	# D.5498, tmp329
	addq	%rax, %rax	# tmp329
	addq	%rdx, %rax	# D.5498, tmp329
	salq	$4, %rax	#, tmp330
	addq	%rcx, %rax	# resid.30, D.5499
	movq	%rax, %rdi	# D.5499,
	call	magsq_su3vec	#
	movsd	-360(%rbp), %xmm1	# rsq, rsq.31
	addsd	%xmm1, %xmm0	# rsq.31, rsq.32
	movsd	%xmm0, -360(%rbp)	# rsq.32, rsq
	.loc 1 152 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L18:
	.loc 1 152 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %ebx	# loopend, i
	jl	.L19	#,
.LBE2:
	.loc 1 174 0 is_stmt 1
	leaq	-344(%rbp), %rax	#, tmp331
	movq	%rax, %rdi	# tmp331,
	call	g_doublesum	#
	.loc 1 175 0
	leaq	-360(%rbp), %rax	#, tmp332
	movq	%rax, %rdi	# tmp332,
	call	g_doublesum	#
	.loc 1 177 0
	addl	$1, -376(%rbp)	#, iteration
	.loc 1 179 0
	movl	total_iters(%rip), %eax	# total_iters, total_iters.33
	addl	$1, %eax	#, total_iters.34
	movl	%eax, total_iters(%rip)	# total_iters.34, total_iters
	.loc 1 180 0
	movsd	-344(%rbp), %xmm0	# source_norm, source_norm.35
	movsd	-416(%rbp), %xmm1	# rsqmin, tmp334
	mulsd	%xmm1, %xmm0	# tmp334, tmp333
	movsd	%xmm0, -320(%rbp)	# tmp333, rsqstop
	.loc 1 182 0
	movsd	-360(%rbp), %xmm1	# rsq, rsq.36
	movsd	-320(%rbp), %xmm0	# rsqstop, tmp335
	ucomisd	%xmm1, %xmm0	# rsq.36, tmp335
	jb	.L20	#,
	.loc 1 184 0
	cmpl	$3, -408(%rbp)	#, parity
	jne	.L22	#,
	.loc 1 185 0
	movl	$1, -372(%rbp)	#, l_parity
	movl	$2, -368(%rbp)	#, l_otherparity
	.loc 1 186 0
	movl	$2, -408(%rbp)	#, parity
	.loc 1 187 0
	movl	$0, -376(%rbp)	#, iteration
	.loc 1 189 0
	jmp	.L12	#
.L22:
	.loc 1 191 0
	movq	-360(%rbp), %rax	# rsq, rsq.37
	movq	-424(%rbp), %rdx	# final_rsq_ptr, tmp336
	movq	%rax, (%rdx)	# rsq.37, *final_rsq_ptr_156(D)
	.loc 1 193 0
	movl	-376(%rbp), %eax	# iteration, D.5496
	jmp	.L64	#
.L20:
	.loc 1 212 0
	movq	-360(%rbp), %rax	# rsq, tmp337
	movq	%rax, -312(%rbp)	# tmp337, oldrsq
	.loc 1 213 0
	movl	$0, %eax	#, tmp338
	movq	%rax, -352(%rbp)	# tmp338, pkp
	.loc 1 216 0
	cmpl	$0, -364(%rbp)	#, special_started
	jne	.L24	#,
	.loc 1 218 0
	movq	ttt(%rip), %rsi	# ttt, ttt.38
	movq	cg_p(%rip), %rax	# cg_p, cg_p.39
	leaq	-160(%rbp), %rcx	#, tmp339
	movl	-368(%rbp), %edx	# l_otherparity, tmp340
	movl	$1, %r8d	#,
	movq	%rax, %rdi	# cg_p.39,
	call	dslash_fn_on_temp_special	#
	.loc 1 219 0
	movq	ttt(%rip), %rsi	# ttt, ttt.40
	movq	ttt(%rip), %rax	# ttt, ttt.41
	leaq	-288(%rbp), %rcx	#, tmp341
	movl	-372(%rbp), %edx	# l_parity, tmp342
	movl	$1, %r8d	#,
	movq	%rax, %rdi	# ttt.41,
	call	dslash_fn_on_temp_special	#
	.loc 1 226 0
	movl	$1, -364(%rbp)	#, special_started
	jmp	.L25	#
.L24:
	.loc 1 230 0
	movq	ttt(%rip), %rsi	# ttt, ttt.42
	movq	cg_p(%rip), %rax	# cg_p, cg_p.43
	leaq	-160(%rbp), %rcx	#, tmp343
	movl	-368(%rbp), %edx	# l_otherparity, tmp344
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# cg_p.43,
	call	dslash_fn_on_temp_special	#
	.loc 1 231 0
	movq	ttt(%rip), %rsi	# ttt, ttt.44
	movq	ttt(%rip), %rax	# ttt, ttt.45
	leaq	-288(%rbp), %rcx	#, tmp345
	movl	-372(%rbp), %edx	# l_parity, tmp346
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# ttt.45,
	call	dslash_fn_on_temp_special	#
.L25:
	.loc 1 243 0
	movl	$0, %eax	#, tmp347
	movq	%rax, -352(%rbp)	# tmp347, pkp
.LBB3:
	.loc 1 244 0
	cmpl	$2, -372(%rbp)	#, l_parity
	jne	.L26	#,
	.loc 1 244 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.46
	jmp	.L27	#
.L26:
	.loc 1 244 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.46
.L27:
	.loc 1 244 0 discriminator 3
	movl	%eax, %r13d	# iftmp.46, loopend
	cmpl	$1, -372(%rbp)	#, l_parity
	jne	.L28	#,
	.loc 1 244 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.47
	jmp	.L29	#
.L28:
	.loc 1 244 0 discriminator 2
	movl	$0, %eax	#, iftmp.47
.L29:
	.loc 1 244 0 discriminator 3
	movl	%eax, %ebx	# iftmp.47, i
	movq	lattice(%rip), %rax	# lattice, lattice.48
	movslq	%ebx, %rdx	# i, D.5498
	salq	$11, %rdx	#, D.5498
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L30	#
.L31:
	.loc 1 246 0 is_stmt 1 discriminator 2
	movq	ttt(%rip), %rcx	# ttt, ttt.49
	movslq	%ebx, %rdx	# i, D.5498
	.loc 1 247 0 discriminator 2
	movq	%rdx, %rax	# D.5498, tmp348
	addq	%rax, %rax	# tmp348
	addq	%rdx, %rax	# D.5498, tmp348
	salq	$4, %rax	#, tmp349
	.loc 1 246 0 discriminator 2
	leaq	(%rcx,%rax), %rsi	#, D.5499
	movsd	-328(%rbp), %xmm1	# msq_x4, tmp350
	movsd	.LC3(%rip), %xmm0	#, tmp351
	xorpd	%xmm1, %xmm0	# tmp350, D.5497
	movq	cg_p(%rip), %rcx	# cg_p, cg_p.50
	movslq	%ebx, %rdx	# i, D.5498
	movq	%rdx, %rax	# D.5498, tmp352
	addq	%rax, %rax	# tmp352
	addq	%rdx, %rax	# D.5498, tmp352
	salq	$4, %rax	#, tmp353
	addq	%rax, %rcx	# D.5498, D.5499
	movq	ttt(%rip), %rdi	# ttt, ttt.51
	movslq	%ebx, %rdx	# i, D.5498
	movq	%rdx, %rax	# D.5498, tmp354
	addq	%rax, %rax	# tmp354
	addq	%rdx, %rax	# D.5498, tmp354
	salq	$4, %rax	#, tmp355
	addq	%rdi, %rax	# ttt.51, D.5499
	movq	%rsi, %rdx	# D.5499,
	movq	%rcx, %rsi	# D.5499,
	movq	%rax, %rdi	# D.5499,
	call	scalar_mult_add_su3_vector	#
	.loc 1 248 0 discriminator 2
	movq	ttt(%rip), %rcx	# ttt, ttt.52
	movslq	%ebx, %rdx	# i, D.5498
	movq	%rdx, %rax	# D.5498, tmp356
	addq	%rax, %rax	# tmp356
	addq	%rdx, %rax	# D.5498, tmp356
	salq	$4, %rax	#, tmp357
	addq	%rax, %rcx	# D.5498, D.5499
	movq	cg_p(%rip), %rsi	# cg_p, cg_p.53
	movslq	%ebx, %rdx	# i, D.5498
	movq	%rdx, %rax	# D.5498, tmp358
	addq	%rax, %rax	# tmp358
	addq	%rdx, %rax	# D.5498, tmp358
	salq	$4, %rax	#, tmp359
	addq	%rsi, %rax	# cg_p.53, D.5499
	movq	%rcx, %rsi	# D.5499,
	movq	%rax, %rdi	# D.5499,
	call	su3_rdot	#
	movsd	-352(%rbp), %xmm1	# pkp, pkp.54
	addsd	%xmm1, %xmm0	# pkp.54, pkp.55
	movsd	%xmm0, -352(%rbp)	# pkp.55, pkp
	.loc 1 244 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L30:
	.loc 1 244 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %ebx	# loopend, i
	jl	.L31	#,
.LBE3:
	.loc 1 255 0 is_stmt 1
	leaq	-352(%rbp), %rax	#, tmp360
	movq	%rax, %rdi	# tmp360,
	call	g_doublesum	#
	.loc 1 256 0
	addl	$1, -376(%rbp)	#, iteration
	.loc 1 257 0
	movl	total_iters(%rip), %eax	# total_iters, total_iters.56
	addl	$1, %eax	#, total_iters.57
	movl	%eax, total_iters(%rip)	# total_iters.57, total_iters
	.loc 1 259 0
	movsd	-360(%rbp), %xmm1	# rsq, rsq.58
	movsd	.LC3(%rip), %xmm0	#, tmp361
	xorpd	%xmm1, %xmm0	# rsq.58, D.5497
	movsd	-352(%rbp), %xmm1	# pkp, pkp.59
	divsd	%xmm1, %xmm0	# pkp.59, tmp362
	movsd	%xmm0, -304(%rbp)	# tmp362, a
	.loc 1 263 0
	movl	$0, %eax	#, tmp363
	movq	%rax, -360(%rbp)	# tmp363, rsq
.LBB4:
	.loc 1 264 0
	cmpl	$2, -372(%rbp)	#, l_parity
	jne	.L32	#,
	.loc 1 264 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.60
	jmp	.L33	#
.L32:
	.loc 1 264 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.60
.L33:
	.loc 1 264 0 discriminator 3
	movl	%eax, %r13d	# iftmp.60, loopend
	cmpl	$1, -372(%rbp)	#, l_parity
	jne	.L34	#,
	.loc 1 264 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.61
	jmp	.L35	#
.L34:
	.loc 1 264 0 discriminator 2
	movl	$0, %eax	#, iftmp.61
.L35:
	.loc 1 264 0 discriminator 3
	movl	%eax, %ebx	# iftmp.61, i
	movq	lattice(%rip), %rax	# lattice, lattice.62
	movslq	%ebx, %rdx	# i, D.5498
	salq	$11, %rdx	#, D.5498
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L36	#
.L37:
	.loc 1 266 0 is_stmt 1 discriminator 2
	movq	t_dest(%rip), %rcx	# t_dest, t_dest.63
	movslq	%ebx, %rdx	# i, D.5498
	movq	%rdx, %rax	# D.5498, tmp364
	addq	%rax, %rax	# tmp364
	addq	%rdx, %rax	# D.5498, tmp364
	salq	$4, %rax	#, tmp365
	leaq	(%rcx,%rax), %rdi	#, D.5499
	movq	cg_p(%rip), %rcx	# cg_p, cg_p.64
	movslq	%ebx, %rdx	# i, D.5498
	movq	%rdx, %rax	# D.5498, tmp366
	addq	%rax, %rax	# tmp366
	addq	%rdx, %rax	# D.5498, tmp366
	salq	$4, %rax	#, tmp367
	leaq	(%rcx,%rax), %rsi	#, D.5499
	movq	t_dest(%rip), %rcx	# t_dest, t_dest.65
	movslq	%ebx, %rdx	# i, D.5498
	movq	%rdx, %rax	# D.5498, tmp368
	addq	%rax, %rax	# tmp368
	addq	%rdx, %rax	# D.5498, tmp368
	salq	$4, %rax	#, tmp369
	addq	%rax, %rcx	# D.5498, D.5499
	movq	-304(%rbp), %rax	# a, tmp370
	movq	%rdi, %rdx	# D.5499,
	movq	%rax, -432(%rbp)	# tmp370, %sfp
	movsd	-432(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# D.5499,
	call	scalar_mult_add_su3_vector	#
	.loc 1 267 0 discriminator 2
	movq	resid(%rip), %rcx	# resid, resid.66
	movslq	%ebx, %rdx	# i, D.5498
	movq	%rdx, %rax	# D.5498, tmp371
	addq	%rax, %rax	# tmp371
	addq	%rdx, %rax	# D.5498, tmp371
	salq	$4, %rax	#, tmp372
	leaq	(%rcx,%rax), %rdi	#, D.5499
	movq	ttt(%rip), %rcx	# ttt, ttt.67
	movslq	%ebx, %rdx	# i, D.5498
	movq	%rdx, %rax	# D.5498, tmp373
	addq	%rax, %rax	# tmp373
	addq	%rdx, %rax	# D.5498, tmp373
	salq	$4, %rax	#, tmp374
	leaq	(%rcx,%rax), %rsi	#, D.5499
	movq	resid(%rip), %rcx	# resid, resid.68
	movslq	%ebx, %rdx	# i, D.5498
	movq	%rdx, %rax	# D.5498, tmp375
	addq	%rax, %rax	# tmp375
	addq	%rdx, %rax	# D.5498, tmp375
	salq	$4, %rax	#, tmp376
	addq	%rax, %rcx	# D.5498, D.5499
	movq	-304(%rbp), %rax	# a, tmp377
	movq	%rdi, %rdx	# D.5499,
	movq	%rax, -432(%rbp)	# tmp377, %sfp
	movsd	-432(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# D.5499,
	call	scalar_mult_add_su3_vector	#
	.loc 1 268 0 discriminator 2
	movq	resid(%rip), %rcx	# resid, resid.69
	movslq	%ebx, %rdx	# i, D.5498
	movq	%rdx, %rax	# D.5498, tmp378
	addq	%rax, %rax	# tmp378
	addq	%rdx, %rax	# D.5498, tmp378
	salq	$4, %rax	#, tmp379
	addq	%rcx, %rax	# resid.69, D.5499
	movq	%rax, %rdi	# D.5499,
	call	magsq_su3vec	#
	movsd	-360(%rbp), %xmm1	# rsq, rsq.70
	addsd	%xmm1, %xmm0	# rsq.70, rsq.71
	movsd	%xmm0, -360(%rbp)	# rsq.71, rsq
	.loc 1 264 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L36:
	.loc 1 264 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %ebx	# loopend, i
	jl	.L37	#,
.LBE4:
	.loc 1 276 0 is_stmt 1
	leaq	-360(%rbp), %rax	#, tmp380
	movq	%rax, %rdi	# tmp380,
	call	g_doublesum	#
	.loc 1 280 0
	movsd	-360(%rbp), %xmm1	# rsq, rsq.72
	movsd	-320(%rbp), %xmm0	# rsqstop, tmp381
	ucomisd	%xmm1, %xmm0	# rsq.72, tmp381
	jb	.L67	#,
.LBB5:
	.loc 1 283 0
	cmpl	$2, -372(%rbp)	#, l_parity
	jne	.L40	#,
	.loc 1 283 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.73
	jmp	.L41	#
.L40:
	.loc 1 283 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.73
.L41:
	.loc 1 283 0 discriminator 3
	movl	%eax, %r13d	# iftmp.73, loopend
	cmpl	$1, -372(%rbp)	#, l_parity
	jne	.L42	#,
	.loc 1 283 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.74
	jmp	.L43	#
.L42:
	.loc 1 283 0 discriminator 2
	movl	$0, %eax	#, iftmp.74
.L43:
	.loc 1 283 0 discriminator 3
	movl	%eax, %ebx	# iftmp.74, i
	movq	lattice(%rip), %rax	# lattice, lattice.75
	movslq	%ebx, %rdx	# i, D.5498
	salq	$11, %rdx	#, D.5498
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L44	#
.L45:
	.loc 1 284 0 is_stmt 1 discriminator 2
	movl	-392(%rbp), %eax	# dest, tmp382
	cltq
	leaq	(%r12,%rax), %rdx	#, D.5499
	movq	t_dest(%rip), %rsi	# t_dest, t_dest.76
	movslq	%ebx, %rcx	# i, D.5498
	movq	%rcx, %rax	# D.5498, tmp383
	addq	%rax, %rax	# tmp383
	addq	%rcx, %rax	# D.5498, tmp383
	salq	$4, %rax	#, tmp384
	addq	%rsi, %rax	# t_dest.76, D.5499
	movq	(%rax), %rcx	# *_270, tmp385
	movq	%rcx, (%rdx)	# tmp385, *_266
	movq	8(%rax), %rcx	# *_270, tmp386
	movq	%rcx, 8(%rdx)	# tmp386, *_266
	movq	16(%rax), %rcx	# *_270, tmp387
	movq	%rcx, 16(%rdx)	# tmp387, *_266
	movq	24(%rax), %rcx	# *_270, tmp388
	movq	%rcx, 24(%rdx)	# tmp388, *_266
	movq	32(%rax), %rcx	# *_270, tmp389
	movq	%rcx, 32(%rdx)	# tmp389, *_266
	movq	40(%rax), %rax	# *_270, tmp390
	movq	%rax, 40(%rdx)	# tmp390, *_266
	.loc 1 283 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L44:
	.loc 1 283 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %ebx	# loopend, i
	jl	.L45	#,
.LBE5:
	.loc 1 288 0 is_stmt 1
	cmpl	$3, -408(%rbp)	#, parity
	jne	.L46	#,
	.loc 1 289 0
	movl	$1, -372(%rbp)	#, l_parity
	movl	$2, -368(%rbp)	#, l_otherparity
	.loc 1 290 0
	movl	$2, -408(%rbp)	#, parity
	.loc 1 291 0
	movl	$0, -376(%rbp)	#, iteration
	.loc 1 293 0
	jmp	.L12	#
.L46:
	.loc 1 295 0
	movq	-360(%rbp), %rax	# rsq, rsq.77
	movq	-424(%rbp), %rdx	# final_rsq_ptr, tmp391
	movq	%rax, (%rdx)	# rsq.77, *final_rsq_ptr_156(D)
	.loc 1 296 0
	cmpl	$1, -364(%rbp)	#, special_started
	jne	.L47	#,
	.loc 1 297 0
	leaq	-160(%rbp), %rdx	#, tmp392
	leaq	-288(%rbp), %rax	#, tmp393
	movq	%rdx, %rsi	# tmp392,
	movq	%rax, %rdi	# tmp393,
	call	cleanup_gathers	#
	.loc 1 298 0
	movl	$0, -364(%rbp)	#, special_started
.L47:
	.loc 1 313 0
	movl	-376(%rbp), %eax	# iteration, D.5496
	jmp	.L64	#
.L67:
	.loc 1 316 0
	movsd	-360(%rbp), %xmm0	# rsq, rsq.78
	divsd	-312(%rbp), %xmm0	# oldrsq, tmp394
	movsd	%xmm0, -296(%rbp)	# tmp394, b
.LBB6:
	.loc 1 319 0
	cmpl	$2, -372(%rbp)	#, l_parity
	jne	.L48	#,
	.loc 1 319 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.79
	jmp	.L49	#
.L48:
	.loc 1 319 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.79
.L49:
	.loc 1 319 0 discriminator 3
	movl	%eax, %r13d	# iftmp.79, loopend
	cmpl	$1, -372(%rbp)	#, l_parity
	jne	.L50	#,
	.loc 1 319 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.80
	jmp	.L51	#
.L50:
	.loc 1 319 0 discriminator 2
	movl	$0, %eax	#, iftmp.80
.L51:
	.loc 1 319 0 discriminator 3
	movl	%eax, %ebx	# iftmp.80, i
	movq	lattice(%rip), %rax	# lattice, lattice.81
	movslq	%ebx, %rdx	# i, D.5498
	salq	$11, %rdx	#, D.5498
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L52	#
.L53:
	.loc 1 320 0 is_stmt 1 discriminator 2
	movq	cg_p(%rip), %rcx	# cg_p, cg_p.82
	movslq	%ebx, %rdx	# i, D.5498
	.loc 1 321 0 discriminator 2
	movq	%rdx, %rax	# D.5498, tmp395
	addq	%rax, %rax	# tmp395
	addq	%rdx, %rax	# D.5498, tmp395
	salq	$4, %rax	#, tmp396
	.loc 1 320 0 discriminator 2
	leaq	(%rcx,%rax), %rdi	#, D.5499
	movq	cg_p(%rip), %rcx	# cg_p, cg_p.83
	movslq	%ebx, %rdx	# i, D.5498
	.loc 1 321 0 discriminator 2
	movq	%rdx, %rax	# D.5498, tmp397
	addq	%rax, %rax	# tmp397
	addq	%rdx, %rax	# D.5498, tmp397
	salq	$4, %rax	#, tmp398
	.loc 1 320 0 discriminator 2
	leaq	(%rcx,%rax), %rsi	#, D.5499
	movq	resid(%rip), %rcx	# resid, resid.84
	movslq	%ebx, %rdx	# i, D.5498
	movq	%rdx, %rax	# D.5498, tmp399
	addq	%rax, %rax	# tmp399
	addq	%rdx, %rax	# D.5498, tmp399
	salq	$4, %rax	#, tmp400
	addq	%rax, %rcx	# D.5498, D.5499
	movq	-296(%rbp), %rax	# b, tmp401
	movq	%rdi, %rdx	# D.5499,
	movq	%rax, -432(%rbp)	# tmp401, %sfp
	movsd	-432(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# D.5499,
	call	scalar_mult_add_su3_vector	#
	.loc 1 319 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L52:
	.loc 1 319 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %ebx	# loopend, i
	jl	.L53	#,
.LBE6:
	.loc 1 328 0 is_stmt 1
	movl	-376(%rbp), %eax	# iteration, tmp402
	cltd
	idivl	-404(%rbp)	# niter
	movl	%edx, %eax	# tmp403, D.5496
	testl	%eax, %eax	# D.5496
	jne	.L20	#,
	.loc 1 330 0
	movl	-404(%rbp), %edx	# niter, tmp405
	movl	%edx, %eax	# tmp405, tmp406
	sall	$2, %eax	#, tmp406
	addl	%edx, %eax	# tmp405, D.5496
	cmpl	-376(%rbp), %eax	# iteration, D.5496
	jle	.L54	#,
	.loc 1 332 0
	jmp	.L12	#
.L54:
.LBB7:
	.loc 1 337 0
	cmpl	$2, -372(%rbp)	#, l_parity
	jne	.L55	#,
	.loc 1 337 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.85
	jmp	.L56	#
.L55:
	.loc 1 337 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.85
.L56:
	.loc 1 337 0 discriminator 3
	movl	%eax, %r13d	# iftmp.85, loopend
	cmpl	$1, -372(%rbp)	#, l_parity
	jne	.L57	#,
	.loc 1 337 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.86
	jmp	.L58	#
.L57:
	.loc 1 337 0 discriminator 2
	movl	$0, %eax	#, iftmp.86
.L58:
	.loc 1 337 0 discriminator 3
	movl	%eax, %ebx	# iftmp.86, i
	movq	lattice(%rip), %rax	# lattice, lattice.87
	movslq	%ebx, %rdx	# i, D.5498
	salq	$11, %rdx	#, D.5498
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L59	#
.L60:
	.loc 1 338 0 is_stmt 1 discriminator 2
	movl	-392(%rbp), %eax	# dest, tmp407
	cltq
	leaq	(%r12,%rax), %rdx	#, D.5499
	movq	t_dest(%rip), %rsi	# t_dest, t_dest.88
	movslq	%ebx, %rcx	# i, D.5498
	movq	%rcx, %rax	# D.5498, tmp408
	addq	%rax, %rax	# tmp408
	addq	%rcx, %rax	# D.5498, tmp408
	salq	$4, %rax	#, tmp409
	addq	%rsi, %rax	# t_dest.88, D.5499
	movq	(%rax), %rcx	# *_324, tmp410
	movq	%rcx, (%rdx)	# tmp410, *_320
	movq	8(%rax), %rcx	# *_324, tmp411
	movq	%rcx, 8(%rdx)	# tmp411, *_320
	movq	16(%rax), %rcx	# *_324, tmp412
	movq	%rcx, 16(%rdx)	# tmp412, *_320
	movq	24(%rax), %rcx	# *_324, tmp413
	movq	%rcx, 24(%rdx)	# tmp413, *_320
	movq	32(%rax), %rcx	# *_324, tmp414
	movq	%rcx, 32(%rdx)	# tmp414, *_320
	movq	40(%rax), %rax	# *_324, tmp415
	movq	%rax, 40(%rdx)	# tmp415, *_320
	.loc 1 337 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L59:
	.loc 1 337 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %ebx	# loopend, i
	jl	.L60	#,
.LBE7:
	.loc 1 343 0 is_stmt 1
	cmpl	$3, -408(%rbp)	#, parity
	jne	.L61	#,
	.loc 1 344 0
	movl	$1, -372(%rbp)	#, l_parity
	movl	$2, -368(%rbp)	#, l_otherparity
	.loc 1 345 0
	movl	$2, -408(%rbp)	#, parity
	.loc 1 346 0
	movl	$0, -376(%rbp)	#, iteration
	.loc 1 347 0
	jmp	.L12	#
.L61:
	.loc 1 350 0
	movq	-360(%rbp), %rax	# rsq, rsq.89
	movq	-424(%rbp), %rdx	# final_rsq_ptr, tmp416
	movq	%rax, (%rdx)	# rsq.89, *final_rsq_ptr_156(D)
	.loc 1 351 0
	cmpl	$1, -364(%rbp)	#, special_started
	jne	.L62	#,
	.loc 1 352 0
	leaq	-160(%rbp), %rdx	#, tmp417
	leaq	-288(%rbp), %rax	#, tmp418
	movq	%rdx, %rsi	# tmp417,
	movq	%rax, %rdi	# tmp418,
	call	cleanup_gathers	#
	.loc 1 353 0
	movl	$0, -364(%rbp)	#, special_started
.L62:
	.loc 1 355 0
	movl	this_node(%rip), %eax	# this_node, this_node.90
	testl	%eax, %eax	# this_node.90
	jne	.L63	#,
	.loc 1 355 0 is_stmt 0 discriminator 1
	movq	-360(%rbp), %rax	# rsq, rsq.91
	movq	-320(%rbp), %rdx	# rsqstop, tmp419
	movl	-376(%rbp), %ecx	# iteration, tmp420
	movq	%rdx, -432(%rbp)	# tmp419, %sfp
	movsd	-432(%rbp), %xmm1	# %sfp,
	movq	%rax, -432(%rbp)	# rsq.91, %sfp
	movsd	-432(%rbp), %xmm0	# %sfp,
	movl	%ecx, %esi	# tmp420,
	movl	$.LC4, %edi	#,
	movl	$2, %eax	#,
	call	printf	#
.L63:
	.loc 1 358 0 is_stmt 1
	movq	stdout(%rip), %rax	# stdout, stdout.92
	movq	%rax, %rdi	# stdout.92,
	call	fflush	#
	.loc 1 359 0
	movl	-376(%rbp), %eax	# iteration, D.5496
.L64:
	.loc 1 360 0
	addq	$408, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ks_congrad, .-ks_congrad
	.globl	clear_latvec
	.type	clear_latvec, @function
clear_latvec:
.LFB3:
	.loc 1 363 0
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
	movl	%edi, -36(%rbp)	# v, v
	movl	%esi, -40(%rbp)	# parity, parity
	.loc 1 367 0
	movl	-40(%rbp), %eax	# parity, parity
	cmpl	$2, %eax	#, parity
	je	.L70	#,
	cmpl	$3, %eax	#, parity
	je	.L71	#,
	cmpl	$1, %eax	#, parity
	je	.L72	#,
	jmp	.L68	#
.L70:
	.loc 1 368 0
	movl	$0, %r12d	#, i
	movq	lattice(%rip), %r13	# lattice, s
	jmp	.L73	#
.L76:
	.loc 1 369 0
	movl	-36(%rbp), %eax	# v, tmp76
	cltq
	leaq	0(%r13,%rax), %r14	#, vv
	.loc 1 370 0
	movl	$0, %ebx	#, j
	jmp	.L74	#
.L75:
	.loc 1 370 0 is_stmt 0 discriminator 2
	movslq	%ebx, %rax	# j, tmp77
	salq	$4, %rax	#, tmp78
	addq	%r14, %rax	# vv, tmp79
	leaq	8(%rax), %rdx	#, tmp80
	movl	$0, %eax	#, tmp81
	movq	%rax, (%rdx)	# tmp81, vv_16->c[j_4].imag
	movslq	%ebx, %rax	# j, tmp82
	salq	$4, %rax	#, tmp83
	addq	%r14, %rax	# vv, tmp84
	addq	$8, %rax	#, tmp85
	movq	(%rax), %rax	# vv_16->c[j_4].imag, D.5504
	movslq	%ebx, %rdx	# j, tmp86
	salq	$4, %rdx	#, tmp87
	addq	%r14, %rdx	# vv, tmp88
	movq	%rax, (%rdx)	# D.5504, vv_16->c[j_4].real
	addl	$1, %ebx	#, j
.L74:
	.loc 1 370 0 discriminator 1
	cmpl	$2, %ebx	#, j
	jle	.L75	#,
	.loc 1 368 0 is_stmt 1
	addl	$1, %r12d	#, i
	addq	$2048, %r13	#, s
.L73:
	.loc 1 368 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, even_sites_on_node.93
	cmpl	%eax, %r12d	# even_sites_on_node.93, i
	jl	.L76	#,
	.loc 1 371 0 is_stmt 1
	jmp	.L68	#
.L72:
	.loc 1 372 0
	movl	even_sites_on_node(%rip), %r12d	# even_sites_on_node, i
	movq	lattice(%rip), %rax	# lattice, lattice.94
	movslq	%r12d, %rdx	# i, D.5505
	salq	$11, %rdx	#, D.5505
	leaq	(%rax,%rdx), %r13	#, s
	jmp	.L77	#
.L80:
	.loc 1 373 0
	movl	-36(%rbp), %eax	# v, tmp89
	cltq
	leaq	0(%r13,%rax), %r14	#, vv
	.loc 1 374 0
	movl	$0, %ebx	#, j
	jmp	.L78	#
.L79:
	.loc 1 374 0 is_stmt 0 discriminator 2
	movslq	%ebx, %rax	# j, tmp90
	salq	$4, %rax	#, tmp91
	addq	%r14, %rax	# vv, tmp92
	leaq	8(%rax), %rdx	#, tmp93
	movl	$0, %eax	#, tmp94
	movq	%rax, (%rdx)	# tmp94, vv_29->c[j_5].imag
	movslq	%ebx, %rax	# j, tmp95
	salq	$4, %rax	#, tmp96
	addq	%r14, %rax	# vv, tmp97
	addq	$8, %rax	#, tmp98
	movq	(%rax), %rax	# vv_29->c[j_5].imag, D.5504
	movslq	%ebx, %rdx	# j, tmp99
	salq	$4, %rdx	#, tmp100
	addq	%r14, %rdx	# vv, tmp101
	movq	%rax, (%rdx)	# D.5504, vv_29->c[j_5].real
	addl	$1, %ebx	#, j
.L78:
	.loc 1 374 0 discriminator 1
	cmpl	$2, %ebx	#, j
	jle	.L79	#,
	.loc 1 372 0 is_stmt 1
	addl	$1, %r12d	#, i
	addq	$2048, %r13	#, s
.L77:
	.loc 1 372 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.95
	cmpl	%eax, %r12d	# sites_on_node.95, i
	jl	.L80	#,
	.loc 1 375 0 is_stmt 1
	jmp	.L68	#
.L71:
	.loc 1 376 0
	movl	$0, %r12d	#, i
	movq	lattice(%rip), %r13	# lattice, s
	jmp	.L81	#
.L84:
	.loc 1 377 0
	movl	-36(%rbp), %eax	# v, tmp102
	cltq
	leaq	0(%r13,%rax), %r14	#, vv
	.loc 1 378 0
	movl	$0, %ebx	#, j
	jmp	.L82	#
.L83:
	.loc 1 378 0 is_stmt 0 discriminator 2
	movslq	%ebx, %rax	# j, tmp103
	salq	$4, %rax	#, tmp104
	addq	%r14, %rax	# vv, tmp105
	leaq	8(%rax), %rdx	#, tmp106
	movl	$0, %eax	#, tmp107
	movq	%rax, (%rdx)	# tmp107, vv_39->c[j_6].imag
	movslq	%ebx, %rax	# j, tmp108
	salq	$4, %rax	#, tmp109
	addq	%r14, %rax	# vv, tmp110
	addq	$8, %rax	#, tmp111
	movq	(%rax), %rax	# vv_39->c[j_6].imag, D.5504
	movslq	%ebx, %rdx	# j, tmp112
	salq	$4, %rdx	#, tmp113
	addq	%r14, %rdx	# vv, tmp114
	movq	%rax, (%rdx)	# D.5504, vv_39->c[j_6].real
	addl	$1, %ebx	#, j
.L82:
	.loc 1 378 0 discriminator 1
	cmpl	$2, %ebx	#, j
	jle	.L83	#,
	.loc 1 376 0 is_stmt 1
	addl	$1, %r12d	#, i
	addq	$2048, %r13	#, s
.L81:
	.loc 1 376 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.96
	cmpl	%eax, %r12d	# sites_on_node.96, i
	jl	.L84	#,
	.loc 1 379 0 is_stmt 1
	nop
.L68:
	.loc 1 381 0
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	clear_latvec, .-clear_latvec
	.globl	copy_latvec
	.type	copy_latvec, @function
copy_latvec:
.LFB4:
	.loc 1 384 0
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
	movl	%edi, -36(%rbp)	# src, src
	movl	%esi, -40(%rbp)	# dest, dest
	movl	%edx, -44(%rbp)	# parity, parity
	.loc 1 388 0
	movl	-44(%rbp), %eax	# parity, parity
	cmpl	$2, %eax	#, parity
	je	.L87	#,
	cmpl	$3, %eax	#, parity
	je	.L88	#,
	cmpl	$1, %eax	#, parity
	je	.L89	#,
	jmp	.L85	#
.L87:
	.loc 1 389 0
	movl	$0, %r14d	#, i
	movq	lattice(%rip), %r13	# lattice, s
	jmp	.L90	#
.L91:
	.loc 1 390 0 discriminator 2
	movq	lattice(%rip), %rax	# lattice, lattice.97
	movslq	%r14d, %rdx	# i, D.5506
	salq	$11, %rdx	#, D.5506
	leaq	(%rax,%rdx), %r13	#, s
	.loc 1 391 0 discriminator 2
	movl	-36(%rbp), %eax	# src, tmp85
	cltq
	leaq	0(%r13,%rax), %r12	#, spt
	.loc 1 392 0 discriminator 2
	movl	-40(%rbp), %eax	# dest, tmp86
	cltq
	leaq	0(%r13,%rax), %rbx	#, dpt
	.loc 1 393 0 discriminator 2
	movq	(%r12), %rax	# *spt_14, tmp87
	movq	%rax, (%rbx)	# tmp87, *dpt_17
	movq	8(%r12), %rax	# *spt_14, tmp88
	movq	%rax, 8(%rbx)	# tmp88, *dpt_17
	movq	16(%r12), %rax	# *spt_14, tmp89
	movq	%rax, 16(%rbx)	# tmp89, *dpt_17
	movq	24(%r12), %rax	# *spt_14, tmp90
	movq	%rax, 24(%rbx)	# tmp90, *dpt_17
	movq	32(%r12), %rax	# *spt_14, tmp91
	movq	%rax, 32(%rbx)	# tmp91, *dpt_17
	movq	40(%r12), %rax	# *spt_14, tmp92
	movq	%rax, 40(%rbx)	# tmp92, *dpt_17
	.loc 1 389 0 discriminator 2
	addl	$1, %r14d	#, i
	addq	$2048, %r13	#, s
.L90:
	.loc 1 389 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, even_sites_on_node.98
	cmpl	%eax, %r14d	# even_sites_on_node.98, i
	jl	.L91	#,
	.loc 1 394 0 is_stmt 1
	jmp	.L85	#
.L89:
	.loc 1 395 0
	movl	even_sites_on_node(%rip), %r14d	# even_sites_on_node, i
	movq	lattice(%rip), %rax	# lattice, lattice.99
	movslq	%r14d, %rdx	# i, D.5506
	salq	$11, %rdx	#, D.5506
	leaq	(%rax,%rdx), %r13	#, s
	jmp	.L92	#
.L93:
	.loc 1 396 0 discriminator 2
	movq	lattice(%rip), %rax	# lattice, lattice.100
	movslq	%r14d, %rdx	# i, D.5506
	salq	$11, %rdx	#, D.5506
	leaq	(%rax,%rdx), %r13	#, s
	.loc 1 397 0 discriminator 2
	movl	-36(%rbp), %eax	# src, tmp93
	cltq
	leaq	0(%r13,%rax), %r12	#, spt
	.loc 1 398 0 discriminator 2
	movl	-40(%rbp), %eax	# dest, tmp94
	cltq
	leaq	0(%r13,%rax), %rbx	#, dpt
	.loc 1 399 0 discriminator 2
	movq	(%r12), %rax	# *spt_31, tmp95
	movq	%rax, (%rbx)	# tmp95, *dpt_33
	movq	8(%r12), %rax	# *spt_31, tmp96
	movq	%rax, 8(%rbx)	# tmp96, *dpt_33
	movq	16(%r12), %rax	# *spt_31, tmp97
	movq	%rax, 16(%rbx)	# tmp97, *dpt_33
	movq	24(%r12), %rax	# *spt_31, tmp98
	movq	%rax, 24(%rbx)	# tmp98, *dpt_33
	movq	32(%r12), %rax	# *spt_31, tmp99
	movq	%rax, 32(%rbx)	# tmp99, *dpt_33
	movq	40(%r12), %rax	# *spt_31, tmp100
	movq	%rax, 40(%rbx)	# tmp100, *dpt_33
	.loc 1 395 0 discriminator 2
	addl	$1, %r14d	#, i
	addq	$2048, %r13	#, s
.L92:
	.loc 1 395 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.101
	cmpl	%eax, %r14d	# sites_on_node.101, i
	jl	.L93	#,
	.loc 1 400 0 is_stmt 1
	jmp	.L85	#
.L88:
	.loc 1 401 0
	movl	$0, %r14d	#, i
	movq	lattice(%rip), %r13	# lattice, s
	jmp	.L94	#
.L95:
	.loc 1 402 0 discriminator 2
	movq	lattice(%rip), %rax	# lattice, lattice.102
	movslq	%r14d, %rdx	# i, D.5506
	salq	$11, %rdx	#, D.5506
	leaq	(%rax,%rdx), %r13	#, s
	.loc 1 403 0 discriminator 2
	movl	-36(%rbp), %eax	# src, tmp101
	cltq
	leaq	0(%r13,%rax), %r12	#, spt
	.loc 1 404 0 discriminator 2
	movl	-40(%rbp), %eax	# dest, tmp102
	cltq
	leaq	0(%r13,%rax), %rbx	#, dpt
	.loc 1 405 0 discriminator 2
	movq	(%r12), %rax	# *spt_44, tmp103
	movq	%rax, (%rbx)	# tmp103, *dpt_46
	movq	8(%r12), %rax	# *spt_44, tmp104
	movq	%rax, 8(%rbx)	# tmp104, *dpt_46
	movq	16(%r12), %rax	# *spt_44, tmp105
	movq	%rax, 16(%rbx)	# tmp105, *dpt_46
	movq	24(%r12), %rax	# *spt_44, tmp106
	movq	%rax, 24(%rbx)	# tmp106, *dpt_46
	movq	32(%r12), %rax	# *spt_44, tmp107
	movq	%rax, 32(%rbx)	# tmp107, *dpt_46
	movq	40(%r12), %rax	# *spt_44, tmp108
	movq	%rax, 40(%rbx)	# tmp108, *dpt_46
	.loc 1 401 0 discriminator 2
	addl	$1, %r14d	#, i
	addq	$2048, %r13	#, s
.L94:
	.loc 1 401 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.103
	cmpl	%eax, %r14d	# sites_on_node.103, i
	jl	.L95	#,
	.loc 1 406 0 is_stmt 1
	nop
.L85:
	.loc 1 408 0
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	copy_latvec, .-copy_latvec
	.globl	scalar_mult_add_latvec
	.type	scalar_mult_add_latvec, @function
scalar_mult_add_latvec:
.LFB5:
	.loc 1 413 0
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
	subq	$40, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -52(%rbp)	# src1, src1
	movl	%esi, -56(%rbp)	# src2, src2
	movsd	%xmm0, -64(%rbp)	# scalar, scalar
	movl	%edx, -68(%rbp)	# dest, dest
	movl	%ecx, -72(%rbp)	# parity, parity
.LBB8:
	.loc 1 417 0
	cmpl	$2, -72(%rbp)	#, parity
	jne	.L97	#,
	.loc 1 417 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.104
	jmp	.L98	#
.L97:
	.loc 1 417 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.104
.L98:
	.loc 1 417 0 discriminator 3
	movl	%eax, %r13d	# iftmp.104, loopend
	cmpl	$1, -72(%rbp)	#, parity
	jne	.L99	#,
	.loc 1 417 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.105
	jmp	.L100	#
.L99:
	.loc 1 417 0 discriminator 2
	movl	$0, %eax	#, iftmp.105
.L100:
	.loc 1 417 0 discriminator 3
	movl	%eax, %r12d	# iftmp.105, i
	movq	lattice(%rip), %rax	# lattice, lattice.106
	movslq	%r12d, %rdx	# i, D.5508
	salq	$11, %rdx	#, D.5508
	leaq	(%rax,%rdx), %rbx	#, s
	jmp	.L101	#
.L102:
	.loc 1 418 0 is_stmt 1 discriminator 2
	movl	-52(%rbp), %eax	# src1, tmp73
	cltq
	leaq	(%rbx,%rax), %r14	#, spt1
	.loc 1 419 0 discriminator 2
	movl	-56(%rbp), %eax	# src2, tmp74
	cltq
	leaq	(%rbx,%rax), %r15	#, spt2
	.loc 1 420 0 discriminator 2
	movl	-68(%rbp), %eax	# dest, tmp75
	cltq
	addq	%rbx, %rax	# s, dpt
	movq	%rax, %rdx	# dpt, dpt
	.loc 1 421 0 discriminator 2
	movq	-64(%rbp), %rax	# scalar, tmp76
	movq	%rax, -80(%rbp)	# tmp76, %sfp
	movsd	-80(%rbp), %xmm0	# %sfp,
	movq	%r15, %rsi	# spt2,
	movq	%r14, %rdi	# spt1,
	call	scalar_mult_add_su3_vector	#
	.loc 1 417 0 discriminator 2
	addl	$1, %r12d	#, i
	addq	$2048, %rbx	#, s
.L101:
	.loc 1 417 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %r12d	# loopend, i
	jl	.L102	#,
.LBE8:
	.loc 1 423 0 is_stmt 1
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	scalar_mult_add_latvec, .-scalar_mult_add_latvec
	.globl	scalar2_mult_add_su3_vector
	.type	scalar2_mult_add_su3_vector, @function
scalar2_mult_add_su3_vector:
.LFB6:
	.loc 1 427 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)	# a, a
	movsd	%xmm0, -24(%rbp)	# s1, s1
	movq	%rsi, -32(%rbp)	# b, b
	movsd	%xmm1, -40(%rbp)	# s2, s2
	movq	%rdx, -48(%rbp)	# c, c
	.loc 1 429 0
	movl	$0, %ebx	#, i
	jmp	.L104	#
.L105:
	.loc 1 430 0 discriminator 2
	movq	-16(%rbp), %rax	# a, tmp70
	movslq	%ebx, %rdx	# i, tmp71
	salq	$4, %rdx	#, tmp72
	addq	%rdx, %rax	# tmp72, tmp73
	movsd	(%rax), %xmm0	# a_3(D)->c[i_1].real, D.5510
	movapd	%xmm0, %xmm1	# D.5510, D.5510
	mulsd	-24(%rbp), %xmm1	# s1, D.5510
	movq	-32(%rbp), %rax	# b, tmp74
	movslq	%ebx, %rdx	# i, tmp75
	salq	$4, %rdx	#, tmp76
	addq	%rdx, %rax	# tmp76, tmp77
	movsd	(%rax), %xmm0	# b_7(D)->c[i_1].real, D.5510
	mulsd	-40(%rbp), %xmm0	# s2, D.5510
	addsd	%xmm1, %xmm0	# D.5510, D.5510
	movq	-48(%rbp), %rax	# c, tmp78
	movslq	%ebx, %rdx	# i, tmp79
	salq	$4, %rdx	#, tmp80
	addq	%rdx, %rax	# tmp80, tmp81
	movsd	%xmm0, (%rax)	# D.5510, c_12(D)->c[i_1].real
	.loc 1 431 0 discriminator 2
	movq	-16(%rbp), %rax	# a, tmp82
	movslq	%ebx, %rdx	# i, tmp83
	salq	$4, %rdx	#, tmp84
	addq	%rdx, %rax	# tmp84, tmp85
	addq	$8, %rax	#, tmp86
	movsd	(%rax), %xmm0	# a_3(D)->c[i_1].imag, D.5510
	movapd	%xmm0, %xmm1	# D.5510, D.5510
	mulsd	-24(%rbp), %xmm1	# s1, D.5510
	movq	-32(%rbp), %rax	# b, tmp87
	movslq	%ebx, %rdx	# i, tmp88
	salq	$4, %rdx	#, tmp89
	addq	%rdx, %rax	# tmp89, tmp90
	addq	$8, %rax	#, tmp91
	movsd	(%rax), %xmm0	# b_7(D)->c[i_1].imag, D.5510
	mulsd	-40(%rbp), %xmm0	# s2, D.5510
	addsd	%xmm1, %xmm0	# D.5510, D.5510
	movq	-48(%rbp), %rax	# c, tmp92
	movslq	%ebx, %rdx	# i, tmp93
	salq	$4, %rdx	#, tmp94
	addq	%rdx, %rax	# tmp94, tmp95
	addq	$8, %rax	#, tmp96
	movsd	%xmm0, (%rax)	# D.5510, c_12(D)->c[i_1].imag
	.loc 1 429 0 discriminator 2
	addl	$1, %ebx	#, i
.L104:
	.loc 1 429 0 is_stmt 0 discriminator 1
	cmpl	$2, %ebx	#, i
	jle	.L105	#,
	.loc 1 433 0 is_stmt 1
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	scalar2_mult_add_su3_vector, .-scalar2_mult_add_su3_vector
	.globl	scalar2_mult_add_latvec
	.type	scalar2_mult_add_latvec, @function
scalar2_mult_add_latvec:
.LFB7:
	.loc 1 439 0
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
	subq	$40, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -44(%rbp)	# src1, src1
	movsd	%xmm0, -56(%rbp)	# scalar1, scalar1
	movl	%esi, -48(%rbp)	# src2, src2
	movsd	%xmm1, -64(%rbp)	# scalar2, scalar2
	movl	%edx, -68(%rbp)	# dest, dest
	movl	%ecx, -72(%rbp)	# parity, parity
.LBB9:
	.loc 1 443 0
	cmpl	$2, -72(%rbp)	#, parity
	jne	.L107	#,
	.loc 1 443 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.107
	jmp	.L108	#
.L107:
	.loc 1 443 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.107
.L108:
	.loc 1 443 0 discriminator 3
	movl	%eax, %r13d	# iftmp.107, loopend
	cmpl	$1, -72(%rbp)	#, parity
	jne	.L109	#,
	.loc 1 443 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.108
	jmp	.L110	#
.L109:
	.loc 1 443 0 discriminator 2
	movl	$0, %eax	#, iftmp.108
.L110:
	.loc 1 443 0 discriminator 3
	movl	%eax, %r12d	# iftmp.108, i
	movq	lattice(%rip), %rax	# lattice, lattice.109
	movslq	%r12d, %rdx	# i, D.5511
	salq	$11, %rdx	#, D.5511
	leaq	(%rax,%rdx), %rbx	#, s
	jmp	.L111	#
.L112:
	.loc 1 444 0 is_stmt 1 discriminator 2
	movl	-44(%rbp), %eax	# src1, tmp73
	cltq
	leaq	(%rbx,%rax), %r14	#, spt1
	.loc 1 445 0 discriminator 2
	movl	-48(%rbp), %eax	# src2, tmp74
	cltq
	leaq	(%rbx,%rax), %r15	#, spt2
	.loc 1 446 0 discriminator 2
	movl	-68(%rbp), %eax	# dest, tmp75
	cltq
	addq	%rbx, %rax	# s, dpt
	movq	%rax, %rdx	# dpt, dpt
	.loc 1 447 0 discriminator 2
	movq	-64(%rbp), %rcx	# scalar2, tmp76
	movq	-56(%rbp), %rax	# scalar1, tmp77
	movq	%rcx, -80(%rbp)	# tmp76, %sfp
	movsd	-80(%rbp), %xmm1	# %sfp,
	movq	%r15, %rsi	# spt2,
	movq	%rax, -80(%rbp)	# tmp77, %sfp
	movsd	-80(%rbp), %xmm0	# %sfp,
	movq	%r14, %rdi	# spt1,
	call	scalar2_mult_add_su3_vector	#
	.loc 1 443 0 discriminator 2
	addl	$1, %r12d	#, i
	addq	$2048, %rbx	#, s
.L111:
	.loc 1 443 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %r12d	# loopend, i
	jl	.L112	#,
.LBE9:
	.loc 1 449 0 is_stmt 1
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	scalar2_mult_add_latvec, .-scalar2_mult_add_latvec
	.globl	scalar_mult_latvec
	.type	scalar_mult_latvec, @function
scalar_mult_latvec:
.LFB8:
	.loc 1 454 0
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
	subq	$32, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edi, -36(%rbp)	# src, src
	movsd	%xmm0, -48(%rbp)	# scalar, scalar
	movl	%esi, -40(%rbp)	# dest, dest
	movl	%edx, -52(%rbp)	# parity, parity
	.loc 1 458 0
	movl	-52(%rbp), %eax	# parity, parity
	cmpl	$2, %eax	#, parity
	je	.L115	#,
	cmpl	$3, %eax	#, parity
	je	.L116	#,
	cmpl	$1, %eax	#, parity
	je	.L117	#,
	jmp	.L113	#
.L115:
	.loc 1 459 0
	movl	$0, %r12d	#, i
	movq	lattice(%rip), %rbx	# lattice, s
	jmp	.L118	#
.L119:
	.loc 1 460 0 discriminator 2
	movl	-36(%rbp), %eax	# src, tmp76
	cltq
	leaq	(%rbx,%rax), %r13	#, spt
	.loc 1 461 0 discriminator 2
	movl	-40(%rbp), %eax	# dest, tmp77
	cltq
	leaq	(%rbx,%rax), %r14	#, dpt
	.loc 1 462 0 discriminator 2
	movq	-48(%rbp), %rax	# scalar, tmp78
	movq	%r14, %rsi	# dpt,
	movq	%rax, -64(%rbp)	# tmp78, %sfp
	movsd	-64(%rbp), %xmm0	# %sfp,
	movq	%r13, %rdi	# spt,
	call	scalar_mult_su3_vector	#
	.loc 1 459 0 discriminator 2
	addl	$1, %r12d	#, i
	addq	$2048, %rbx	#, s
.L118:
	.loc 1 459 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, even_sites_on_node.110
	cmpl	%eax, %r12d	# even_sites_on_node.110, i
	jl	.L119	#,
	.loc 1 463 0 is_stmt 1
	jmp	.L113	#
.L117:
	.loc 1 464 0
	movl	even_sites_on_node(%rip), %r12d	# even_sites_on_node, i
	movq	lattice(%rip), %rax	# lattice, lattice.111
	movslq	%r12d, %rdx	# i, D.5514
	salq	$11, %rdx	#, D.5514
	leaq	(%rax,%rdx), %rbx	#, s
	jmp	.L120	#
.L121:
	.loc 1 465 0 discriminator 2
	movl	-36(%rbp), %eax	# src, tmp79
	cltq
	leaq	(%rbx,%rax), %r13	#, spt
	.loc 1 466 0 discriminator 2
	movl	-40(%rbp), %eax	# dest, tmp80
	cltq
	leaq	(%rbx,%rax), %r14	#, dpt
	.loc 1 467 0 discriminator 2
	movq	-48(%rbp), %rax	# scalar, tmp81
	movq	%r14, %rsi	# dpt,
	movq	%rax, -64(%rbp)	# tmp81, %sfp
	movsd	-64(%rbp), %xmm0	# %sfp,
	movq	%r13, %rdi	# spt,
	call	scalar_mult_su3_vector	#
	.loc 1 464 0 discriminator 2
	addl	$1, %r12d	#, i
	addq	$2048, %rbx	#, s
.L120:
	.loc 1 464 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.112
	cmpl	%eax, %r12d	# sites_on_node.112, i
	jl	.L121	#,
	.loc 1 468 0 is_stmt 1
	jmp	.L113	#
.L116:
	.loc 1 469 0
	movl	$0, %r12d	#, i
	movq	lattice(%rip), %rbx	# lattice, s
	jmp	.L122	#
.L123:
	.loc 1 470 0 discriminator 2
	movl	-36(%rbp), %eax	# src, tmp82
	cltq
	leaq	(%rbx,%rax), %r13	#, spt
	.loc 1 471 0 discriminator 2
	movl	-40(%rbp), %eax	# dest, tmp83
	cltq
	leaq	(%rbx,%rax), %r14	#, dpt
	.loc 1 472 0 discriminator 2
	movq	-48(%rbp), %rax	# scalar, tmp84
	movq	%r14, %rsi	# dpt,
	movq	%rax, -64(%rbp)	# tmp84, %sfp
	movsd	-64(%rbp), %xmm0	# %sfp,
	movq	%r13, %rdi	# spt,
	call	scalar_mult_su3_vector	#
	.loc 1 469 0 discriminator 2
	addl	$1, %r12d	#, i
	addq	$2048, %rbx	#, s
.L122:
	.loc 1 469 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.113
	cmpl	%eax, %r12d	# sites_on_node.113, i
	jl	.L123	#,
	.loc 1 473 0 is_stmt 1
	nop
.L113:
	.loc 1 475 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	scalar_mult_latvec, .-scalar_mult_latvec
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1074790400
	.align 16
.LC3:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "random.h"
	.file 6 "./macros.h"
	.file 7 "./complex.h"
	.file 8 "./su3.h"
	.file 9 "./lattice.h"
	.file 10 "comdefs.h"
	.file 11 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xcb6
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF126
	.byte	0x1
	.long	.LASF127
	.long	.LASF128
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
	.long	.LASF129
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
	.byte	0x58
	.byte	0x5
	.byte	0x6
	.long	0x329
	.uleb128 0xe
	.string	"r0"
	.byte	0x5
	.byte	0x8
	.long	0x38
	.byte	0
	.uleb128 0xe
	.string	"r1"
	.byte	0x5
	.byte	0x8
	.long	0x38
	.byte	0x8
	.uleb128 0xe
	.string	"r2"
	.byte	0x5
	.byte	0x8
	.long	0x38
	.byte	0x10
	.uleb128 0xe
	.string	"r3"
	.byte	0x5
	.byte	0x8
	.long	0x38
	.byte	0x18
	.uleb128 0xe
	.string	"r4"
	.byte	0x5
	.byte	0x8
	.long	0x38
	.byte	0x20
	.uleb128 0xe
	.string	"r5"
	.byte	0x5
	.byte	0x8
	.long	0x38
	.byte	0x28
	.uleb128 0xe
	.string	"r6"
	.byte	0x5
	.byte	0x8
	.long	0x38
	.byte	0x30
	.uleb128 0x8
	.long	.LASF50
	.byte	0x5
	.byte	0x9
	.long	0x38
	.byte	0x38
	.uleb128 0x8
	.long	.LASF51
	.byte	0x5
	.byte	0x9
	.long	0x38
	.byte	0x40
	.uleb128 0x8
	.long	.LASF52
	.byte	0x5
	.byte	0x9
	.long	0x38
	.byte	0x48
	.uleb128 0x8
	.long	.LASF53
	.byte	0x5
	.byte	0xa
	.long	0x29c
	.byte	0x50
	.byte	0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x5
	.byte	0xb
	.long	0x2a3
	.uleb128 0x2
	.long	.LASF55
	.byte	0x6
	.byte	0x2a
	.long	0x62
	.uleb128 0xd
	.byte	0x10
	.byte	0x7
	.byte	0x49
	.long	0x360
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0x4a
	.long	0x29c
	.byte	0
	.uleb128 0x8
	.long	.LASF57
	.byte	0x7
	.byte	0x4b
	.long	0x29c
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x7
	.byte	0x4c
	.long	0x33f
	.uleb128 0xd
	.byte	0x90
	.byte	0x8
	.byte	0xe
	.long	0x37e
	.uleb128 0xe
	.string	"e"
	.byte	0x8
	.byte	0xe
	.long	0x37e
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x360
	.long	0x394
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x8
	.byte	0xe
	.long	0x36b
	.uleb128 0xd
	.byte	0x30
	.byte	0x8
	.byte	0xf
	.long	0x3b2
	.uleb128 0xe
	.string	"c"
	.byte	0x8
	.byte	0xf
	.long	0x3b2
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x360
	.long	0x3c2
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF60
	.byte	0x8
	.byte	0xf
	.long	0x39f
	.uleb128 0xd
	.byte	0x50
	.byte	0x8
	.byte	0x10
	.long	0x42a
	.uleb128 0xe
	.string	"m01"
	.byte	0x8
	.byte	0x11
	.long	0x360
	.byte	0
	.uleb128 0xe
	.string	"m02"
	.byte	0x8
	.byte	0x11
	.long	0x360
	.byte	0x10
	.uleb128 0xe
	.string	"m12"
	.byte	0x8
	.byte	0x11
	.long	0x360
	.byte	0x20
	.uleb128 0x8
	.long	.LASF61
	.byte	0x8
	.byte	0x11
	.long	0x29c
	.byte	0x30
	.uleb128 0x8
	.long	.LASF62
	.byte	0x8
	.byte	0x11
	.long	0x29c
	.byte	0x38
	.uleb128 0x8
	.long	.LASF63
	.byte	0x8
	.byte	0x11
	.long	0x29c
	.byte	0x40
	.uleb128 0x8
	.long	.LASF64
	.byte	0x8
	.byte	0x11
	.long	0x29c
	.byte	0x48
	.byte	0
	.uleb128 0x2
	.long	.LASF65
	.byte	0x8
	.byte	0x11
	.long	0x3cd
	.uleb128 0xb
	.long	0x3c2
	.long	0x445
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.value	0x800
	.byte	0x9
	.byte	0x1f
	.long	0x55c
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
	.long	.LASF66
	.byte	0x9
	.byte	0x24
	.long	0x95
	.byte	0x8
	.uleb128 0x8
	.long	.LASF67
	.byte	0x9
	.byte	0x26
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF68
	.byte	0x9
	.byte	0x29
	.long	0x329
	.byte	0x10
	.uleb128 0x8
	.long	.LASF69
	.byte	0x9
	.byte	0x2b
	.long	0x62
	.byte	0x68
	.uleb128 0x8
	.long	.LASF70
	.byte	0x9
	.byte	0x32
	.long	0x55c
	.byte	0x70
	.uleb128 0x10
	.string	"mom"
	.byte	0x9
	.byte	0x3e
	.long	0x56c
	.value	0x2b0
	.uleb128 0x11
	.long	.LASF71
	.byte	0x9
	.byte	0x42
	.long	0x57c
	.value	0x3f0
	.uleb128 0x10
	.string	"phi"
	.byte	0x9
	.byte	0x45
	.long	0x3c2
	.value	0x410
	.uleb128 0x11
	.long	.LASF72
	.byte	0x9
	.byte	0x46
	.long	0x3c2
	.value	0x440
	.uleb128 0x11
	.long	.LASF73
	.byte	0x9
	.byte	0x47
	.long	0x3c2
	.value	0x470
	.uleb128 0x10
	.string	"xxx"
	.byte	0x9
	.byte	0x48
	.long	0x3c2
	.value	0x4a0
	.uleb128 0x10
	.string	"ttt"
	.byte	0x9
	.byte	0x49
	.long	0x3c2
	.value	0x4d0
	.uleb128 0x11
	.long	.LASF74
	.byte	0x9
	.byte	0x4a
	.long	0x3c2
	.value	0x500
	.uleb128 0x11
	.long	.LASF75
	.byte	0x9
	.byte	0x5d
	.long	0x435
	.value	0x530
	.uleb128 0x11
	.long	.LASF76
	.byte	0x9
	.byte	0x5f
	.long	0x435
	.value	0x5f0
	.uleb128 0x11
	.long	.LASF77
	.byte	0x9
	.byte	0x60
	.long	0x3c2
	.value	0x6b0
	.uleb128 0x11
	.long	.LASF78
	.byte	0x9
	.byte	0x62
	.long	0x394
	.value	0x6e0
	.uleb128 0x11
	.long	.LASF79
	.byte	0x9
	.byte	0x62
	.long	0x394
	.value	0x770
	.byte	0
	.uleb128 0xb
	.long	0x394
	.long	0x56c
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x42a
	.long	0x57c
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x29c
	.long	0x58c
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF80
	.byte	0x9
	.byte	0x63
	.long	0x445
	.uleb128 0xd
	.byte	0x18
	.byte	0xa
	.byte	0x35
	.long	0x5d0
	.uleb128 0x8
	.long	.LASF81
	.byte	0xa
	.byte	0x37
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF82
	.byte	0xa
	.byte	0x39
	.long	0x62
	.byte	0x4
	.uleb128 0x8
	.long	.LASF83
	.byte	0xa
	.byte	0x3b
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF84
	.byte	0xa
	.byte	0x40
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.long	.LASF85
	.byte	0xa
	.byte	0x42
	.long	0x597
	.uleb128 0x12
	.long	.LASF130
	.byte	0x1
	.byte	0x36
	.long	0x62
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x83a
	.uleb128 0x13
	.string	"src"
	.byte	0x1
	.byte	0x36
	.long	0x334
	.uleb128 0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x14
	.long	.LASF86
	.byte	0x1
	.byte	0x36
	.long	0x334
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x14
	.long	.LASF87
	.byte	0x1
	.byte	0x36
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x14
	.long	.LASF88
	.byte	0x1
	.byte	0x37
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x14
	.long	.LASF89
	.byte	0x1
	.byte	0x37
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x14
	.long	.LASF66
	.byte	0x1
	.byte	0x37
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x14
	.long	.LASF90
	.byte	0x1
	.byte	0x37
	.long	0x83a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x38
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0x39
	.long	0x840
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x16
	.long	.LASF91
	.byte	0x1
	.byte	0x3a
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.byte	0x3b
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.byte	0x3b
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x15
	.string	"rsq"
	.byte	0x1
	.byte	0x3c
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x16
	.long	.LASF92
	.byte	0x1
	.byte	0x3c
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x15
	.string	"pkp"
	.byte	0x1
	.byte	0x3c
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x16
	.long	.LASF93
	.byte	0x1
	.byte	0x3d
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x16
	.long	.LASF94
	.byte	0x1
	.byte	0x3e
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x16
	.long	.LASF95
	.byte	0x1
	.byte	0x3f
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x16
	.long	.LASF96
	.byte	0x1
	.byte	0x40
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -388
	.uleb128 0x16
	.long	.LASF97
	.byte	0x1
	.byte	0x41
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x16
	.long	.LASF98
	.byte	0x1
	.byte	0x42
	.long	0x846
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x16
	.long	.LASF99
	.byte	0x1
	.byte	0x42
	.long	0x846
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x16
	.long	.LASF100
	.byte	0x1
	.byte	0x43
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x16
	.long	.LASF101
	.byte	0x1
	.byte	0x4e
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x17
	.long	.LASF131
	.byte	0x1
	.byte	0x81
	.quad	.L12
	.uleb128 0x18
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x78a
	.uleb128 0x16
	.long	.LASF102
	.byte	0x1
	.byte	0x98
	.long	0x62
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x18
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x7ad
	.uleb128 0x16
	.long	.LASF102
	.byte	0x1
	.byte	0xf4
	.long	0x62
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x18
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x7d1
	.uleb128 0x19
	.long	.LASF102
	.byte	0x1
	.value	0x108
	.long	0x62
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x18
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x7f5
	.uleb128 0x19
	.long	.LASF102
	.byte	0x1
	.value	0x11b
	.long	0x62
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x18
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x819
	.uleb128 0x19
	.long	.LASF102
	.byte	0x1
	.value	0x13f
	.long	0x62
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x1a
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x19
	.long	.LASF102
	.byte	0x1
	.value	0x151
	.long	0x62
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x29c
	.uleb128 0x6
	.byte	0x8
	.long	0x58c
	.uleb128 0xb
	.long	0x856
	.long	0x856
	.uleb128 0xc
	.long	0x86
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5d0
	.uleb128 0x1b
	.long	.LASF103
	.byte	0x1
	.value	0x16b
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c8
	.uleb128 0x1c
	.string	"v"
	.byte	0x1
	.value	0x16b
	.long	0x334
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.long	.LASF66
	.byte	0x1
	.value	0x16b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x16c
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1e
	.string	"j"
	.byte	0x1
	.value	0x16c
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x16d
	.long	0x840
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1e
	.string	"vv"
	.byte	0x1
	.value	0x16e
	.long	0x8c8
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3c2
	.uleb128 0x1b
	.long	.LASF104
	.byte	0x1
	.value	0x180
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x94e
	.uleb128 0x1c
	.string	"src"
	.byte	0x1
	.value	0x180
	.long	0x334
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.long	.LASF86
	.byte	0x1
	.value	0x180
	.long	0x334
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF66
	.byte	0x1
	.value	0x180
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x181
	.long	0x62
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x182
	.long	0x840
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1e
	.string	"spt"
	.byte	0x1
	.value	0x183
	.long	0x8c8
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1e
	.string	"dpt"
	.byte	0x1
	.value	0x183
	.long	0x8c8
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1f
	.long	.LASF105
	.byte	0x1
	.value	0x19b
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xa1d
	.uleb128 0x1d
	.long	.LASF106
	.byte	0x1
	.value	0x19b
	.long	0x334
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1d
	.long	.LASF107
	.byte	0x1
	.value	0x19b
	.long	0x334
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.long	.LASF108
	.byte	0x1
	.value	0x19c
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.long	.LASF86
	.byte	0x1
	.value	0x19c
	.long	0x334
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1d
	.long	.LASF66
	.byte	0x1
	.value	0x19c
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x19e
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x19f
	.long	0x840
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.long	.LASF109
	.byte	0x1
	.value	0x1a0
	.long	0x8c8
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x19
	.long	.LASF110
	.byte	0x1
	.value	0x1a0
	.long	0x8c8
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x20
	.string	"dpt"
	.byte	0x1
	.value	0x1a0
	.long	0x8c8
	.uleb128 0x1a
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x19
	.long	.LASF102
	.byte	0x1
	.value	0x1a1
	.long	0x62
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF111
	.byte	0x1
	.value	0x1aa
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xa8b
	.uleb128 0x1c
	.string	"a"
	.byte	0x1
	.value	0x1aa
	.long	0x8c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.string	"s1"
	.byte	0x1
	.value	0x1aa
	.long	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"b"
	.byte	0x1
	.value	0x1aa
	.long	0x8c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"s2"
	.byte	0x1
	.value	0x1ab
	.long	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"c"
	.byte	0x1
	.value	0x1ab
	.long	0x8c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x1ac
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1f
	.long	.LASF112
	.byte	0x1
	.value	0x1b4
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xb68
	.uleb128 0x1d
	.long	.LASF106
	.byte	0x1
	.value	0x1b4
	.long	0x334
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1d
	.long	.LASF113
	.byte	0x1
	.value	0x1b4
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.long	.LASF107
	.byte	0x1
	.value	0x1b5
	.long	0x334
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.LASF114
	.byte	0x1
	.value	0x1b5
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.long	.LASF86
	.byte	0x1
	.value	0x1b6
	.long	0x334
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1d
	.long	.LASF66
	.byte	0x1
	.value	0x1b6
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x1b8
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x1b9
	.long	0x840
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.long	.LASF109
	.byte	0x1
	.value	0x1ba
	.long	0x8c8
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x19
	.long	.LASF110
	.byte	0x1
	.value	0x1ba
	.long	0x8c8
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x20
	.string	"dpt"
	.byte	0x1
	.value	0x1ba
	.long	0x8c8
	.uleb128 0x1a
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x19
	.long	.LASF102
	.byte	0x1
	.value	0x1bb
	.long	0x62
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF115
	.byte	0x1
	.value	0x1c4
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xbf8
	.uleb128 0x1c
	.string	"src"
	.byte	0x1
	.value	0x1c4
	.long	0x334
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.long	.LASF108
	.byte	0x1
	.value	0x1c4
	.long	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.LASF86
	.byte	0x1
	.value	0x1c5
	.long	0x334
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF66
	.byte	0x1
	.value	0x1c5
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x1c7
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x1c8
	.long	0x840
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"spt"
	.byte	0x1
	.value	0x1c9
	.long	0x8c8
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1e
	.string	"dpt"
	.byte	0x1
	.value	0x1c9
	.long	0x8c8
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0x21
	.long	.LASF116
	.byte	0xb
	.byte	0xa9
	.long	0x25b
	.uleb128 0x21
	.long	.LASF117
	.byte	0x9
	.byte	0x80
	.long	0x62
	.uleb128 0x21
	.long	.LASF118
	.byte	0x9
	.byte	0x87
	.long	0x62
	.uleb128 0x21
	.long	.LASF119
	.byte	0x9
	.byte	0x88
	.long	0x62
	.uleb128 0x21
	.long	.LASF120
	.byte	0x9
	.byte	0x8b
	.long	0x62
	.uleb128 0x21
	.long	.LASF121
	.byte	0x9
	.byte	0x8e
	.long	0x62
	.uleb128 0x21
	.long	.LASF122
	.byte	0x9
	.byte	0x8f
	.long	0x62
	.uleb128 0x21
	.long	.LASF123
	.byte	0x9
	.byte	0x9a
	.long	0x840
	.uleb128 0x22
	.string	"ttt"
	.byte	0x1
	.byte	0x30
	.long	0x8c8
	.uleb128 0x9
	.byte	0x3
	.quad	ttt
	.uleb128 0x23
	.long	.LASF73
	.byte	0x1
	.byte	0x30
	.long	0x8c8
	.uleb128 0x9
	.byte	0x3
	.quad	cg_p
	.uleb128 0x23
	.long	.LASF72
	.byte	0x1
	.byte	0x31
	.long	0x8c8
	.uleb128 0x9
	.byte	0x3
	.quad	resid
	.uleb128 0x23
	.long	.LASF124
	.byte	0x1
	.byte	0x32
	.long	0x8c8
	.uleb128 0x9
	.byte	0x3
	.quad	t_dest
	.uleb128 0x23
	.long	.LASF125
	.byte	0x1
	.byte	0x33
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	first_congrad
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
.LASF104:
	.string	"copy_latvec"
.LASF31:
	.string	"_shortbuf"
.LASF129:
	.string	"_IO_lock_t"
.LASF125:
	.string	"first_congrad"
.LASF71:
	.string	"phase"
.LASF128:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF20:
	.string	"_IO_buf_end"
.LASF95:
	.string	"rsqstop"
.LASF124:
	.string	"t_dest"
.LASF113:
	.string	"scalar1"
.LASF18:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF12:
	.string	"_flags"
.LASF70:
	.string	"link"
.LASF24:
	.string	"_markers"
.LASF101:
	.string	"nflop"
.LASF102:
	.string	"loopend"
.LASF65:
	.string	"anti_hermitmat"
.LASF80:
	.string	"site"
.LASF123:
	.string	"lattice"
.LASF105:
	.string	"scalar_mult_add_latvec"
.LASF45:
	.string	"_pos"
.LASF116:
	.string	"stdout"
.LASF23:
	.string	"_IO_save_end"
.LASF48:
	.string	"float"
.LASF93:
	.string	"msq_x4"
.LASF67:
	.string	"index"
.LASF99:
	.string	"tags2"
.LASF117:
	.string	"total_iters"
.LASF47:
	.string	"long long unsigned int"
.LASF85:
	.string	"msg_tag"
.LASF100:
	.string	"special_started"
.LASF79:
	.string	"staple"
.LASF22:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_offset"
.LASF26:
	.string	"_fileno"
.LASF130:
	.string	"ks_congrad"
.LASF7:
	.string	"size_t"
.LASF52:
	.string	"ic_state"
.LASF74:
	.string	"g_rand"
.LASF15:
	.string	"_IO_read_base"
.LASF115:
	.string	"scalar_mult_latvec"
.LASF120:
	.string	"this_node"
.LASF43:
	.string	"_next"
.LASF66:
	.string	"parity"
.LASF121:
	.string	"valid_longlinks"
.LASF60:
	.string	"su3_vector"
.LASF103:
	.string	"clear_latvec"
.LASF11:
	.string	"char"
.LASF39:
	.string	"_mode"
.LASF83:
	.string	"msg_buf"
.LASF42:
	.string	"_IO_marker"
.LASF13:
	.string	"_IO_read_ptr"
.LASF111:
	.string	"scalar2_mult_add_su3_vector"
.LASF64:
	.string	"space"
.LASF75:
	.string	"tempvec"
.LASF94:
	.string	"source_norm"
.LASF51:
	.string	"addend"
.LASF16:
	.string	"_IO_write_base"
.LASF46:
	.string	"long long int"
.LASF82:
	.string	"msg_size"
.LASF21:
	.string	"_IO_save_base"
.LASF84:
	.string	"msg_id"
.LASF97:
	.string	"l_otherparity"
.LASF118:
	.string	"sites_on_node"
.LASF53:
	.string	"scale"
.LASF81:
	.string	"msg_node"
.LASF119:
	.string	"even_sites_on_node"
.LASF77:
	.string	"templongv1"
.LASF106:
	.string	"src1"
.LASF107:
	.string	"src2"
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
.LASF87:
	.string	"mass"
.LASF92:
	.string	"oldrsq"
.LASF30:
	.string	"_vtable_offset"
.LASF68:
	.string	"site_prn"
.LASF63:
	.string	"m22im"
.LASF126:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF14:
	.string	"_IO_read_end"
.LASF62:
	.string	"m11im"
.LASF5:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF76:
	.string	"templongvec"
.LASF61:
	.string	"m00im"
.LASF131:
	.string	"start"
.LASF58:
	.string	"complex"
.LASF56:
	.string	"real"
.LASF50:
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
.LASF112:
	.string	"scalar2_mult_add_latvec"
.LASF91:
	.string	"iteration"
.LASF44:
	.string	"_sbuf"
.LASF90:
	.string	"final_rsq_ptr"
.LASF98:
	.string	"tags1"
.LASF89:
	.string	"rsqmin"
.LASF1:
	.string	"unsigned char"
.LASF96:
	.string	"l_parity"
.LASF127:
	.string	"d_congrad5_fn.c"
.LASF78:
	.string	"tempmat1"
.LASF57:
	.string	"imag"
.LASF17:
	.string	"_IO_write_ptr"
.LASF55:
	.string	"field_offset"
.LASF73:
	.string	"cg_p"
.LASF54:
	.string	"double_prn"
.LASF109:
	.string	"spt1"
.LASF110:
	.string	"spt2"
.LASF108:
	.string	"scalar"
.LASF8:
	.string	"__off_t"
.LASF4:
	.string	"signed char"
.LASF114:
	.string	"scalar2"
.LASF2:
	.string	"short unsigned int"
.LASF88:
	.string	"niter"
.LASF49:
	.string	"double"
.LASF25:
	.string	"_chain"
.LASF122:
	.string	"valid_fatlinks"
.LASF27:
	.string	"_flags2"
.LASF29:
	.string	"_cur_column"
.LASF86:
	.string	"dest"
.LASF72:
	.string	"resid"
.LASF59:
	.string	"su3_matrix"
.LASF9:
	.string	"__off64_t"
.LASF40:
	.string	"_unused2"
.LASF19:
	.string	"_IO_buf_base"
.LASF69:
	.string	"space1"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
