	.file	"lextree.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# lextree.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.section	.rodata
.LC0:
	.string	"lextree.c"
	.text
	.type	lextree_node_alloc, @function
lextree_node_alloc:
.LFB2:
	.file 1 "lextree.c"
	.loc 1 73 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# wid, wid
	movl	%esi, -24(%rbp)	# prob, prob
	movl	%edx, -28(%rbp)	# comp, comp
	movl	%ecx, -32(%rbp)	# ssid, ssid
	movl	%r8d, -36(%rbp)	# n_state, n_state
	movl	%r9d, -40(%rbp)	# ci, ci
	.loc 1 76 0
	movl	$76, %edx	#,
	movl	$.LC0, %esi	#,
	movl	$80, %edi	#,
	call	__mymalloc__	#
	movq	%rax, -8(%rbp)	# tmp66, ln
	.loc 1 77 0
	movq	-8(%rbp), %rax	# ln, tmp67
	movq	$0, 40(%rax)	#, ln_1->children
	.loc 1 78 0
	movq	-8(%rbp), %rax	# ln, tmp68
	movl	-20(%rbp), %edx	# wid, tmp69
	movl	%edx, 48(%rax)	# tmp69, ln_1->wid
	.loc 1 79 0
	movq	-8(%rbp), %rax	# ln, tmp70
	movl	-24(%rbp), %edx	# prob, tmp71
	movl	%edx, 52(%rax)	# tmp71, ln_1->prob
	.loc 1 80 0
	movq	-8(%rbp), %rax	# ln, tmp72
	movl	-32(%rbp), %edx	# ssid, tmp73
	movl	%edx, 56(%rax)	# tmp73, ln_1->ssid
	.loc 1 81 0
	movl	-40(%rbp), %eax	# ci, tmp74
	movl	%eax, %edx	# tmp74, D.7015
	movq	-8(%rbp), %rax	# ln, tmp75
	movb	%dl, 72(%rax)	# D.7015, ln_1->ci
	.loc 1 82 0
	movl	-28(%rbp), %eax	# comp, tmp76
	movl	%eax, %edx	# tmp76, D.7015
	movq	-8(%rbp), %rax	# ln, tmp77
	movb	%dl, 73(%rax)	# D.7015, ln_1->composite
	.loc 1 83 0
	movq	-8(%rbp), %rax	# ln, tmp78
	movw	$-1, 74(%rax)	#, ln_1->frame
	.loc 1 84 0
	movl	-36(%rbp), %eax	# n_state, tmp79
	cltq
	movl	$84, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7016,
	call	__ckd_calloc__	#
	movq	-8(%rbp), %rdx	# ln, tmp80
	movq	%rax, (%rdx)	# D.7017, ln_1->hmm.state
	.loc 1 86 0
	movq	-8(%rbp), %rax	# ln, D.7018
	movl	-36(%rbp), %edx	# n_state, tmp81
	movl	%edx, %esi	# tmp81,
	movq	%rax, %rdi	# D.7018,
	call	hmm_clear	#
	.loc 1 88 0
	movq	-8(%rbp), %rax	# ln, D.7019
	.loc 1 89 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	lextree_node_alloc, .-lextree_node_alloc
	.globl	lextree_build
	.type	lextree_build, @function
lextree_build:
.LFB3:
	.loc 1 93 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$200, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)	# kbc, kbc
	movq	%rsi, -192(%rbp)	# wordprob, wordprob
	movl	%edx, -196(%rbp)	# n_word, n_word
	movq	%rcx, -208(%rbp)	# lc, lc
	.loc 1 102 0
	movq	$0, -104(%rbp)	#, ln
	.loc 1 103 0
	movq	$0, -88(%rbp)	#, gn
	.loc 1 107 0
	movq	-184(%rbp), %rax	# kbc, tmp432
	movq	8(%rax), %rax	# kbc_61(D)->mdef, tmp433
	movq	%rax, -80(%rbp)	# tmp433, mdef
	.loc 1 108 0
	movq	-184(%rbp), %rax	# kbc, tmp434
	movq	16(%rax), %rax	# kbc_61(D)->dict, tmp435
	movq	%rax, -72(%rbp)	# tmp435, dict
	.loc 1 109 0
	movq	-184(%rbp), %rax	# kbc, tmp436
	movq	88(%rax), %rax	# kbc_61(D)->tmat, tmp437
	movq	%rax, -64(%rbp)	# tmp437, tmat
	.loc 1 110 0
	movq	-184(%rbp), %rax	# kbc, tmp438
	movq	24(%rax), %rax	# kbc_61(D)->dict2pid, tmp439
	movq	%rax, -56(%rbp)	# tmp439, d2p
	.loc 1 111 0
	movq	-80(%rbp), %rax	# mdef, tmp440
	movl	(%rax), %eax	# mdef_62->n_ciphone, tmp441
	movl	%eax, -148(%rbp)	# tmp441, n_ci
	.loc 1 112 0
	movq	-80(%rbp), %rax	# mdef, tmp442
	movl	56(%rax), %eax	# mdef_62->n_sseq, tmp443
	movl	%eax, -144(%rbp)	# tmp443, n_sseq
	.loc 1 113 0
	movq	-80(%rbp), %rax	# mdef, tmp444
	movl	8(%rax), %eax	# mdef_62->n_emit_state, tmp445
	movl	%eax, -140(%rbp)	# tmp445, n_st
	.loc 1 115 0
	movl	$115, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$64, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -48(%rbp)	# tmp446, lextree
	.loc 1 116 0
	movq	-48(%rbp), %rax	# lextree, tmp447
	movq	$0, 8(%rax)	#, lextree_69->root
	.loc 1 119 0
	movl	-144(%rbp), %eax	# n_sseq, tmp448
	cltq
	movl	$119, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7021,
	call	__ckd_calloc__	#
	movq	%rax, -40(%rbp)	# tmp449, ssid2ln
	.loc 1 122 0
	movl	-144(%rbp), %eax	# n_sseq, tmp450
	cltq
	movl	$122, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7021,
	call	__ckd_calloc__	#
	movq	%rax, -32(%rbp)	# tmp451, ssid_lc
	.loc 1 123 0
	movl	$0, -164(%rbp)	#, i
	jmp	.L4	#
.L5:
	.loc 1 124 0 discriminator 2
	movl	-164(%rbp), %eax	# i, tmp452
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-32(%rbp), %rax	# ssid_lc, tmp453
	leaq	(%rdx,%rax), %rbx	#, D.7022
	movl	-148(%rbp), %eax	# n_ci, tmp454
	addl	$31, %eax	#, D.7023
	sarl	$5, %eax	#, D.7023
	cltq
	movl	$124, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.7021,
	call	__ckd_calloc__	#
	movq	%rax, (%rbx)	# D.7024, *_77
	.loc 1 123 0 discriminator 2
	addl	$1, -164(%rbp)	#, i
.L4:
	.loc 1 123 0 is_stmt 0 discriminator 1
	movl	-164(%rbp), %eax	# i, tmp455
	cmpl	-144(%rbp), %eax	# n_sseq, tmp455
	jl	.L5	#,
	.loc 1 126 0 is_stmt 1
	movl	$0, -172(%rbp)	#, n_node
	.loc 1 129 0
	movl	$0, -176(%rbp)	#, n_lc
	.loc 1 130 0
	movq	$0, -112(%rbp)	#, lcroot
	.loc 1 131 0
	cmpq	$0, -208(%rbp)	#, lc
	jne	.L6	#,
	.loc 1 132 0
	movq	-48(%rbp), %rax	# lextree, tmp456
	movl	$0, 24(%rax)	#, lextree_69->n_lc
	.loc 1 133 0
	movq	-48(%rbp), %rax	# lextree, tmp457
	movq	$0, 16(%rax)	#, lextree_69->lcroot
	.loc 1 135 0
	movl	$135, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$8, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -96(%rbp)	# tmp458, parent
	jmp	.L7	#
.L6:
	.loc 1 137 0
	movl	$0, -176(%rbp)	#, n_lc
	jmp	.L8	#
.L9:
	.loc 1 137 0 is_stmt 0 discriminator 2
	addl	$1, -176(%rbp)	#, n_lc
.L8:
	.loc 1 137 0 discriminator 1
	movl	-176(%rbp), %eax	# n_lc, tmp459
	movslq	%eax, %rdx	# tmp459, D.7025
	movq	-208(%rbp), %rax	# lc, tmp460
	addq	%rdx, %rax	# D.7025, D.7026
	movzbl	(%rax), %eax	# *_90, D.7027
	testb	%al, %al	# D.7027
	jns	.L9	#,
	.loc 1 140 0 is_stmt 1
	movq	-48(%rbp), %rax	# lextree, tmp461
	movl	-176(%rbp), %edx	# n_lc, tmp462
	movl	%edx, 24(%rax)	# tmp462, lextree_69->n_lc
	.loc 1 141 0
	movl	-176(%rbp), %eax	# n_lc, tmp463
	cltq
	movl	$141, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.7021,
	call	__ckd_calloc__	#
	movq	%rax, -112(%rbp)	# tmp464, lcroot
	.loc 1 142 0
	movq	-48(%rbp), %rax	# lextree, tmp465
	movq	-112(%rbp), %rdx	# lcroot, tmp466
	movq	%rdx, 16(%rax)	# tmp466, lextree_69->lcroot
	.loc 1 144 0
	movl	$0, -164(%rbp)	#, i
	jmp	.L10	#
.L11:
	.loc 1 145 0 discriminator 2
	movl	-164(%rbp), %eax	# i, tmp467
	cltq
	salq	$4, %rax	#, D.7021
	movq	%rax, %rdx	# D.7021, D.7021
	movq	-112(%rbp), %rax	# lcroot, tmp468
	addq	%rax, %rdx	# tmp468, D.7028
	movl	-164(%rbp), %eax	# i, tmp469
	movslq	%eax, %rcx	# tmp469, D.7025
	movq	-208(%rbp), %rax	# lc, tmp470
	addq	%rcx, %rax	# D.7025, D.7026
	movzbl	(%rax), %eax	# *_100, D.7027
	movb	%al, (%rdx)	# D.7027, _98->lc
	.loc 1 146 0 discriminator 2
	movl	-164(%rbp), %eax	# i, tmp471
	cltq
	salq	$4, %rax	#, D.7021
	movq	%rax, %rdx	# D.7021, D.7021
	movq	-112(%rbp), %rax	# lcroot, tmp472
	addq	%rdx, %rax	# D.7021, D.7028
	movq	$0, 8(%rax)	#, _104->root
	.loc 1 144 0 discriminator 2
	addl	$1, -164(%rbp)	#, i
.L10:
	.loc 1 144 0 is_stmt 0 discriminator 1
	movl	-164(%rbp), %eax	# i, tmp473
	cmpl	-176(%rbp), %eax	# n_lc, tmp473
	jl	.L11	#,
	.loc 1 149 0 is_stmt 1
	movl	-176(%rbp), %eax	# n_lc, tmp474
	cltq
	movl	$149, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7021,
	call	__ckd_calloc__	#
	movq	%rax, -96(%rbp)	# tmp475, parent
.L7:
	.loc 1 171 0
	movl	$0, -164(%rbp)	#, i
	jmp	.L12	#
.L62:
	.loc 1 172 0
	movl	-164(%rbp), %eax	# i, tmp476
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-192(%rbp), %rax	# wordprob, tmp477
	addq	%rdx, %rax	# D.7021, D.7029
	movl	(%rax), %eax	# _113->wid, tmp478
	movl	%eax, -136(%rbp)	# tmp478, wid
	.loc 1 173 0
	movl	-164(%rbp), %eax	# i, tmp479
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-192(%rbp), %rax	# wordprob, tmp480
	addq	%rdx, %rax	# D.7021, D.7029
	movl	4(%rax), %eax	# _117->prob, tmp481
	movl	%eax, -132(%rbp)	# tmp481, prob
	.loc 1 175 0
	movq	-72(%rbp), %rax	# dict, tmp482
	movq	32(%rax), %rcx	# dict_63->word, D.7030
	movl	-136(%rbp), %eax	# wid, tmp483
	movslq	%eax, %rdx	# tmp483, D.7021
	movq	%rdx, %rax	# D.7021, tmp484
	salq	$2, %rax	#, tmp484
	addq	%rdx, %rax	# D.7021, tmp484
	salq	$3, %rax	#, tmp485
	addq	%rcx, %rax	# D.7030, D.7030
	movl	16(%rax), %eax	# _122->pronlen, tmp486
	movl	%eax, -128(%rbp)	# tmp486, pronlen
	.loc 1 177 0
	cmpl	$1, -128(%rbp)	#, pronlen
	jne	.L13	#,
	.loc 1 179 0
	movq	-72(%rbp), %rax	# dict, tmp487
	movq	32(%rax), %rcx	# dict_63->word, D.7030
	movl	-136(%rbp), %eax	# wid, tmp488
	movslq	%eax, %rdx	# tmp488, D.7021
	movq	%rdx, %rax	# D.7021, tmp489
	salq	$2, %rax	#, tmp489
	addq	%rdx, %rax	# D.7021, tmp489
	salq	$3, %rax	#, tmp490
	addq	%rcx, %rax	# D.7030, D.7030
	movq	8(%rax), %rax	# _127->ciphone, D.7026
	movzbl	(%rax), %eax	# *_128, D.7027
	movsbl	%al, %eax	# D.7027, tmp491
	movl	%eax, -124(%rbp)	# tmp491, ci
	.loc 1 180 0
	cmpq	$0, -208(%rbp)	#, lc
	jne	.L14	#,
	.loc 1 182 0
	movq	-72(%rbp), %rax	# dict, tmp492
	movq	32(%rax), %rcx	# dict_63->word, D.7030
	movl	-136(%rbp), %eax	# wid, tmp493
	movslq	%eax, %rdx	# tmp493, D.7021
	movq	%rdx, %rax	# D.7021, tmp494
	salq	$2, %rax	#, tmp494
	addq	%rdx, %rax	# D.7021, tmp494
	salq	$3, %rax	#, tmp495
	addq	%rcx, %rax	# D.7030, D.7030
	movq	8(%rax), %rax	# _134->ciphone, D.7026
	movzbl	(%rax), %eax	# *_135, D.7027
	.loc 1 181 0
	movsbl	%al, %edi	# D.7027, D.7023
	movq	-56(%rbp), %rax	# d2p, tmp496
	movq	(%rax), %rax	# d2p_65->internal, D.7031
	movl	-136(%rbp), %edx	# wid, tmp497
	movslq	%edx, %rdx	# tmp497, D.7021
	salq	$3, %rdx	#, D.7021
	addq	%rdx, %rax	# D.7021, D.7031
	movq	(%rax), %rax	# *_141, D.7032
	movl	(%rax), %edx	# *_142, D.7023
	movl	-140(%rbp), %ecx	# n_st, tmp498
	movl	-132(%rbp), %esi	# prob, tmp499
	movl	-136(%rbp), %eax	# wid, tmp500
	movl	%edi, %r9d	# D.7023,
	movl	%ecx, %r8d	# tmp498,
	movl	%edx, %ecx	# D.7023,
	movl	$1, %edx	#,
	movl	%eax, %edi	# tmp500,
	call	lextree_node_alloc	#
	movq	%rax, -104(%rbp)	# tmp501, ln
	.loc 1 183 0
	movq	-64(%rbp), %rax	# tmat, tmp502
	movq	(%rax), %rdx	# tmat_64->tp, D.7033
	movq	-80(%rbp), %rax	# mdef, tmp503
	movq	40(%rax), %rax	# mdef_62->phone, D.7034
	movl	-124(%rbp), %ecx	# ci, tmp504
	movslq	%ecx, %rcx	# tmp504, D.7021
	salq	$4, %rcx	#, D.7021
	addq	%rcx, %rax	# D.7021, D.7034
	movl	4(%rax), %eax	# _149->tmat, D.7023
	cltq
	salq	$3, %rax	#, D.7021
	addq	%rdx, %rax	# D.7033, D.7033
	movq	(%rax), %rdx	# *_153, D.7035
	movq	-104(%rbp), %rax	# ln, tmp505
	movq	%rdx, 24(%rax)	# D.7035, ln_144->hmm.tp
	.loc 1 185 0
	movq	-48(%rbp), %rax	# lextree, tmp506
	movq	8(%rax), %rax	# lextree_69->root, D.7036
	movq	-104(%rbp), %rdx	# ln, tmp507
	movq	%rdx, %rsi	# tmp507,
	movq	%rax, %rdi	# D.7036,
	call	glist_add_ptr	#
	movq	-48(%rbp), %rdx	# lextree, tmp508
	movq	%rax, 8(%rdx)	# D.7036, lextree_69->root
	.loc 1 186 0
	addl	$1, -172(%rbp)	#, n_node
	jmp	.L15	#
.L14:
	.loc 1 188 0
	movl	$0, -168(%rbp)	#, np
	.loc 1 189 0
	movl	$0, -160(%rbp)	#, j
	jmp	.L16	#
.L22:
	.loc 1 190 0
	movq	-56(%rbp), %rax	# d2p, tmp509
	movq	16(%rax), %rax	# d2p_65->single_lc, D.7031
	movl	-124(%rbp), %edx	# ci, tmp510
	movslq	%edx, %rdx	# tmp510, D.7021
	salq	$3, %rdx	#, D.7021
	addq	%rdx, %rax	# D.7021, D.7031
	movq	(%rax), %rax	# *_163, D.7032
	movl	-160(%rbp), %edx	# j, tmp511
	movslq	%edx, %rcx	# tmp511, D.7025
	movq	-208(%rbp), %rdx	# lc, tmp512
	addq	%rcx, %rdx	# D.7025, D.7026
	movzbl	(%rdx), %edx	# *_166, D.7027
	movsbq	%dl, %rdx	# D.7027, D.7021
	salq	$2, %rdx	#, D.7021
	addq	%rdx, %rax	# D.7021, D.7032
	movl	(%rax), %eax	# *_170, tmp513
	movl	%eax, -120(%rbp)	# tmp513, ssid
	.loc 1 193 0
	movl	$0, -156(%rbp)	#, k
	jmp	.L17	#
.L19:
	.loc 1 193 0 is_stmt 0 discriminator 1
	addl	$1, -156(%rbp)	#, k
.L17:
	movl	-156(%rbp), %eax	# k, tmp514
	cmpl	-168(%rbp), %eax	# np, tmp514
	jge	.L18	#,
	.loc 1 193 0 discriminator 2
	movl	-156(%rbp), %eax	# k, tmp515
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-96(%rbp), %rax	# parent, tmp516
	addq	%rdx, %rax	# D.7021, D.7037
	movq	(%rax), %rax	# *_175, D.7038
	movl	56(%rax), %eax	# _176->ssid, D.7023
	cmpl	-120(%rbp), %eax	# ssid, D.7023
	jne	.L19	#,
.L18:
	.loc 1 194 0 is_stmt 1
	movl	-156(%rbp), %eax	# k, tmp517
	cmpl	-168(%rbp), %eax	# np, tmp517
	jl	.L20	#,
	.loc 1 195 0
	movl	-124(%rbp), %edi	# ci, tmp518
	movl	-140(%rbp), %ecx	# n_st, tmp519
	movl	-120(%rbp), %edx	# ssid, tmp520
	movl	-132(%rbp), %esi	# prob, tmp521
	movl	-136(%rbp), %eax	# wid, tmp522
	movl	%edi, %r9d	# tmp518,
	movl	%ecx, %r8d	# tmp519,
	movl	%edx, %ecx	# tmp520,
	movl	$1, %edx	#,
	movl	%eax, %edi	# tmp522,
	call	lextree_node_alloc	#
	movq	%rax, -104(%rbp)	# tmp523, ln
	.loc 1 196 0
	movq	-64(%rbp), %rax	# tmat, tmp524
	movq	(%rax), %rdx	# tmat_64->tp, D.7033
	movq	-80(%rbp), %rax	# mdef, tmp525
	movq	40(%rax), %rax	# mdef_62->phone, D.7034
	movl	-124(%rbp), %ecx	# ci, tmp526
	movslq	%ecx, %rcx	# tmp526, D.7021
	salq	$4, %rcx	#, D.7021
	addq	%rcx, %rax	# D.7021, D.7034
	movl	4(%rax), %eax	# _184->tmat, D.7023
	cltq
	salq	$3, %rax	#, D.7021
	addq	%rdx, %rax	# D.7033, D.7033
	movq	(%rax), %rdx	# *_188, D.7035
	movq	-104(%rbp), %rax	# ln, tmp527
	movq	%rdx, 24(%rax)	# D.7035, ln_179->hmm.tp
	.loc 1 198 0
	movq	-48(%rbp), %rax	# lextree, tmp528
	movq	8(%rax), %rax	# lextree_69->root, D.7036
	movq	-104(%rbp), %rdx	# ln, tmp529
	movq	%rdx, %rsi	# tmp529,
	movq	%rax, %rdi	# D.7036,
	call	glist_add_ptr	#
	movq	-48(%rbp), %rdx	# lextree, tmp530
	movq	%rax, 8(%rdx)	# D.7036, lextree_69->root
	.loc 1 199 0
	addl	$1, -172(%rbp)	#, n_node
	.loc 1 201 0
	movl	-160(%rbp), %eax	# j, tmp531
	cltq
	salq	$4, %rax	#, D.7021
	movq	%rax, %rdx	# D.7021, D.7021
	movq	-112(%rbp), %rax	# lcroot, tmp532
	leaq	(%rdx,%rax), %rbx	#, D.7028
	movl	-160(%rbp), %eax	# j, tmp533
	cltq
	salq	$4, %rax	#, D.7021
	movq	%rax, %rdx	# D.7021, D.7021
	movq	-112(%rbp), %rax	# lcroot, tmp534
	addq	%rdx, %rax	# D.7021, D.7028
	movq	8(%rax), %rax	# _198->root, D.7036
	movq	-104(%rbp), %rdx	# ln, tmp535
	movq	%rdx, %rsi	# tmp535,
	movq	%rax, %rdi	# D.7036,
	call	glist_add_ptr	#
	movq	%rax, 8(%rbx)	# D.7036, _195->root
	.loc 1 202 0
	movl	-168(%rbp), %eax	# np, np.0
	leal	1(%rax), %edx	#, tmp536
	movl	%edx, -168(%rbp)	# tmp536, np
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-96(%rbp), %rax	# parent, tmp537
	addq	%rax, %rdx	# tmp537, D.7037
	movq	-104(%rbp), %rax	# ln, tmp538
	movq	%rax, (%rdx)	# tmp538, *_205
	jmp	.L21	#
.L20:
	.loc 1 204 0
	movl	-160(%rbp), %eax	# j, tmp539
	cltq
	salq	$4, %rax	#, D.7021
	movq	%rax, %rdx	# D.7021, D.7021
	movq	-112(%rbp), %rax	# lcroot, tmp540
	leaq	(%rdx,%rax), %rbx	#, D.7028
	movl	-156(%rbp), %eax	# k, tmp541
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-96(%rbp), %rax	# parent, tmp542
	addq	%rdx, %rax	# D.7021, D.7037
	movq	(%rax), %rdx	# *_211, D.7038
	movl	-160(%rbp), %eax	# j, tmp543
	cltq
	salq	$4, %rax	#, D.7021
	movq	%rax, %rcx	# D.7021, D.7021
	movq	-112(%rbp), %rax	# lcroot, tmp544
	addq	%rcx, %rax	# D.7021, D.7028
	movq	8(%rax), %rax	# _215->root, D.7036
	movq	%rdx, %rsi	# D.7038,
	movq	%rax, %rdi	# D.7036,
	call	glist_add_ptr	#
	movq	%rax, 8(%rbx)	# D.7036, _208->root
.L21:
	.loc 1 189 0
	addl	$1, -160(%rbp)	#, j
.L16:
	.loc 1 189 0 is_stmt 0 discriminator 1
	movl	-160(%rbp), %eax	# j, tmp545
	cmpl	-176(%rbp), %eax	# n_lc, tmp545
	jl	.L22	#,
	jmp	.L15	#
.L13:
	.loc 1 212 0 is_stmt 1
	cmpq	$0, -208(%rbp)	#, lc
	jne	.L23	#,
	.loc 1 213 0
	movq	-56(%rbp), %rax	# d2p, tmp546
	movq	(%rax), %rax	# d2p_65->internal, D.7031
	movl	-136(%rbp), %edx	# wid, tmp547
	movslq	%edx, %rdx	# tmp547, D.7021
	salq	$3, %rdx	#, D.7021
	addq	%rdx, %rax	# D.7021, D.7031
	movq	(%rax), %rax	# *_222, D.7032
	movl	(%rax), %eax	# *_223, tmp548
	movl	%eax, -120(%rbp)	# tmp548, ssid
	.loc 1 214 0
	movq	-72(%rbp), %rax	# dict, tmp549
	movq	32(%rax), %rcx	# dict_63->word, D.7030
	movl	-136(%rbp), %eax	# wid, tmp550
	movslq	%eax, %rdx	# tmp550, D.7021
	movq	%rdx, %rax	# D.7021, tmp551
	salq	$2, %rax	#, tmp551
	addq	%rdx, %rax	# D.7021, tmp551
	salq	$3, %rax	#, tmp552
	addq	%rcx, %rax	# D.7030, D.7030
	movq	8(%rax), %rax	# _228->ciphone, D.7026
	movzbl	(%rax), %eax	# *_229, D.7027
	movsbl	%al, %eax	# D.7027, tmp553
	movl	%eax, -124(%rbp)	# tmp553, ci
	.loc 1 217 0
	movq	-48(%rbp), %rax	# lextree, tmp554
	movq	8(%rax), %rax	# lextree_69->root, tmp555
	movq	%rax, -88(%rbp)	# tmp555, gn
	jmp	.L24	#
.L27:
	.loc 1 218 0
	movq	-88(%rbp), %rax	# gn, tmp556
	movq	(%rax), %rax	# gn_37->data.ptr, tmp557
	movq	%rax, -104(%rbp)	# tmp557, ln
	.loc 1 219 0
	movq	-104(%rbp), %rax	# ln, tmp558
	movl	56(%rax), %eax	# ln_233->ssid, D.7023
	cmpl	-120(%rbp), %eax	# ssid, D.7023
	jne	.L25	#,
	.loc 1 219 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# ln, tmp559
	movzbl	73(%rax), %eax	# ln_233->composite, D.7027
	testb	%al, %al	# D.7027
	je	.L25	#,
	movq	-104(%rbp), %rax	# ln, tmp560
	movl	48(%rax), %eax	# ln_233->wid, D.7023
	testl	%eax, %eax	# D.7023
	jns	.L25	#,
	.loc 1 220 0 is_stmt 1
	jmp	.L26	#
.L25:
	.loc 1 217 0
	movq	-88(%rbp), %rax	# gn, tmp561
	movq	8(%rax), %rax	# gn_37->next, tmp562
	movq	%rax, -88(%rbp)	# tmp562, gn
.L24:
	.loc 1 217 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, gn
	jne	.L27	#,
.L26:
	.loc 1 222 0 is_stmt 1
	cmpq	$0, -88(%rbp)	#, gn
	jne	.L28	#,
	.loc 1 223 0
	movl	-124(%rbp), %esi	# ci, tmp563
	movl	-140(%rbp), %ecx	# n_st, tmp564
	movl	-120(%rbp), %edx	# ssid, tmp565
	movl	-132(%rbp), %eax	# prob, tmp566
	movl	%esi, %r9d	# tmp563,
	movl	%ecx, %r8d	# tmp564,
	movl	%edx, %ecx	# tmp565,
	movl	$1, %edx	#,
	movl	%eax, %esi	# tmp566,
	movl	$-1, %edi	#,
	call	lextree_node_alloc	#
	movq	%rax, -104(%rbp)	# tmp567, ln
	.loc 1 224 0
	movq	-64(%rbp), %rax	# tmat, tmp568
	movq	(%rax), %rdx	# tmat_64->tp, D.7033
	movq	-80(%rbp), %rax	# mdef, tmp569
	movq	40(%rax), %rax	# mdef_62->phone, D.7034
	movl	-124(%rbp), %ecx	# ci, tmp570
	movslq	%ecx, %rcx	# tmp570, D.7021
	salq	$4, %rcx	#, D.7021
	addq	%rcx, %rax	# D.7021, D.7034
	movl	4(%rax), %eax	# _243->tmat, D.7023
	cltq
	salq	$3, %rax	#, D.7021
	addq	%rdx, %rax	# D.7033, D.7033
	movq	(%rax), %rdx	# *_247, D.7035
	movq	-104(%rbp), %rax	# ln, tmp571
	movq	%rdx, 24(%rax)	# D.7035, ln_238->hmm.tp
	.loc 1 226 0
	movq	-48(%rbp), %rax	# lextree, tmp572
	movq	8(%rax), %rax	# lextree_69->root, D.7036
	movq	-104(%rbp), %rdx	# ln, tmp573
	movq	%rdx, %rsi	# tmp573,
	movq	%rax, %rdi	# D.7036,
	call	glist_add_ptr	#
	movq	-48(%rbp), %rdx	# lextree, tmp574
	movq	%rax, 8(%rdx)	# D.7036, lextree_69->root
	.loc 1 227 0
	addl	$1, -172(%rbp)	#, n_node
	jmp	.L29	#
.L28:
	.loc 1 229 0
	movq	-104(%rbp), %rax	# ln, tmp575
	movl	52(%rax), %eax	# ln_23->prob, D.7023
	cmpl	-132(%rbp), %eax	# prob, D.7023
	jge	.L29	#,
	.loc 1 230 0
	movq	-104(%rbp), %rax	# ln, tmp576
	movl	-132(%rbp), %edx	# prob, tmp577
	movl	%edx, 52(%rax)	# tmp577, ln_23->prob
.L29:
	.loc 1 232 0 discriminator 2
	movq	-96(%rbp), %rax	# parent, tmp578
	movq	-104(%rbp), %rdx	# ln, tmp579
	movq	%rdx, (%rax)	# tmp579, *parent_36
	.loc 1 233 0 discriminator 2
	movl	$1, -168(%rbp)	#, np
	jmp	.L30	#
.L23:
	.loc 1 235 0
	movq	-72(%rbp), %rax	# dict, tmp580
	movq	32(%rax), %rcx	# dict_63->word, D.7030
	movl	-136(%rbp), %eax	# wid, tmp581
	movslq	%eax, %rdx	# tmp581, D.7021
	movq	%rdx, %rax	# D.7021, tmp582
	salq	$2, %rax	#, tmp582
	addq	%rdx, %rax	# D.7021, tmp582
	salq	$3, %rax	#, tmp583
	addq	%rcx, %rax	# D.7030, D.7030
	movq	8(%rax), %rax	# _257->ciphone, D.7026
	movzbl	(%rax), %eax	# *_258, D.7027
	movsbl	%al, %eax	# D.7027, tmp584
	movl	%eax, -124(%rbp)	# tmp584, ci
	.loc 1 236 0
	movq	-72(%rbp), %rax	# dict, tmp585
	movq	32(%rax), %rcx	# dict_63->word, D.7030
	movl	-136(%rbp), %eax	# wid, tmp586
	movslq	%eax, %rdx	# tmp586, D.7021
	movq	%rdx, %rax	# D.7021, tmp587
	salq	$2, %rax	#, tmp587
	addq	%rdx, %rax	# D.7021, tmp587
	salq	$3, %rax	#, tmp588
	addq	%rcx, %rax	# D.7030, D.7030
	movq	8(%rax), %rax	# _264->ciphone, D.7026
	addq	$1, %rax	#, D.7026
	movzbl	(%rax), %eax	# *_266, D.7027
	movsbl	%al, %eax	# D.7027, tmp589
	movl	%eax, -116(%rbp)	# tmp589, rc
	.loc 1 237 0
	movq	-56(%rbp), %rax	# d2p, tmp590
	movq	8(%rax), %rax	# d2p_65->ldiph_lc, D.7039
	movl	-124(%rbp), %edx	# ci, tmp591
	movslq	%edx, %rdx	# tmp591, D.7021
	salq	$3, %rdx	#, D.7021
	addq	%rdx, %rax	# D.7021, D.7039
	movq	(%rax), %rax	# *_272, D.7031
	movl	-116(%rbp), %edx	# rc, tmp592
	movslq	%edx, %rdx	# tmp592, D.7021
	salq	$3, %rdx	#, D.7021
	addq	%rdx, %rax	# D.7021, D.7031
	movq	(%rax), %rax	# *_276, tmp593
	movq	%rax, -24(%rbp)	# tmp593, ldiph_lc
	.loc 1 239 0
	movl	$0, -168(%rbp)	#, np
	.loc 1 240 0
	movl	$0, -160(%rbp)	#, j
	jmp	.L31	#
.L39:
	.loc 1 241 0
	movl	-160(%rbp), %eax	# j, tmp594
	movslq	%eax, %rdx	# tmp594, D.7025
	movq	-208(%rbp), %rax	# lc, tmp595
	addq	%rdx, %rax	# D.7025, D.7026
	movzbl	(%rax), %eax	# *_281, D.7027
	movsbq	%al, %rax	# D.7027, D.7021
	leaq	0(,%rax,4), %rdx	#, D.7021
	movq	-24(%rbp), %rax	# ldiph_lc, tmp596
	addq	%rdx, %rax	# D.7021, D.7032
	movl	(%rax), %eax	# *_285, tmp597
	movl	%eax, -120(%rbp)	# tmp597, ssid
	.loc 1 244 0
	movl	-120(%rbp), %eax	# ssid, tmp598
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-40(%rbp), %rax	# ssid2ln, tmp599
	addq	%rdx, %rax	# D.7021, D.7037
	movq	(%rax), %rax	# *_289, tmp600
	movq	%rax, -104(%rbp)	# tmp600, ln
	.loc 1 245 0
	cmpq	$0, -104(%rbp)	#, ln
	jne	.L32	#,
	.loc 1 246 0
	movl	-124(%rbp), %esi	# ci, tmp601
	movl	-140(%rbp), %ecx	# n_st, tmp602
	movl	-120(%rbp), %edx	# ssid, tmp603
	movl	-132(%rbp), %eax	# prob, tmp604
	movl	%esi, %r9d	# tmp601,
	movl	%ecx, %r8d	# tmp602,
	movl	%edx, %ecx	# tmp603,
	movl	$0, %edx	#,
	movl	%eax, %esi	# tmp604,
	movl	$-1, %edi	#,
	call	lextree_node_alloc	#
	movq	%rax, -104(%rbp)	# tmp605, ln
	.loc 1 247 0
	movq	-64(%rbp), %rax	# tmat, tmp606
	movq	(%rax), %rdx	# tmat_64->tp, D.7033
	movq	-80(%rbp), %rax	# mdef, tmp607
	movq	40(%rax), %rax	# mdef_62->phone, D.7034
	movl	-124(%rbp), %ecx	# ci, tmp608
	movslq	%ecx, %rcx	# tmp608, D.7021
	salq	$4, %rcx	#, D.7021
	addq	%rcx, %rax	# D.7021, D.7034
	movl	4(%rax), %eax	# _296->tmat, D.7023
	cltq
	salq	$3, %rax	#, D.7021
	addq	%rdx, %rax	# D.7033, D.7033
	movq	(%rax), %rdx	# *_300, D.7035
	movq	-104(%rbp), %rax	# ln, tmp609
	movq	%rdx, 24(%rax)	# D.7035, ln_291->hmm.tp
	.loc 1 248 0
	movq	-48(%rbp), %rax	# lextree, tmp610
	movq	8(%rax), %rax	# lextree_69->root, D.7036
	movq	-104(%rbp), %rdx	# ln, tmp611
	movq	%rdx, %rsi	# tmp611,
	movq	%rax, %rdi	# D.7036,
	call	glist_add_ptr	#
	movq	-48(%rbp), %rdx	# lextree, tmp612
	movq	%rax, 8(%rdx)	# D.7036, lextree_69->root
	.loc 1 249 0
	addl	$1, -172(%rbp)	#, n_node
	.loc 1 251 0
	movl	-120(%rbp), %eax	# ssid, tmp613
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-40(%rbp), %rax	# ssid2ln, tmp614
	addq	%rax, %rdx	# tmp614, D.7037
	movq	-104(%rbp), %rax	# ln, tmp615
	movq	%rax, (%rdx)	# tmp615, *_307
	jmp	.L33	#
.L32:
	.loc 1 252 0
	movq	-104(%rbp), %rax	# ln, tmp616
	movl	52(%rax), %eax	# ln_290->prob, D.7023
	cmpl	-132(%rbp), %eax	# prob, D.7023
	jge	.L33	#,
	.loc 1 253 0
	movq	-104(%rbp), %rax	# ln, tmp617
	movl	-132(%rbp), %edx	# prob, tmp618
	movl	%edx, 52(%rax)	# tmp618, ln_290->prob
.L33:
	.loc 1 256 0
	movl	-120(%rbp), %eax	# ssid, tmp619
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-32(%rbp), %rax	# ssid_lc, tmp620
	addq	%rdx, %rax	# D.7021, D.7022
	movq	(%rax), %rax	# *_311, D.7040
	movl	-160(%rbp), %edx	# j, tmp621
	movslq	%edx, %rcx	# tmp621, D.7025
	movq	-208(%rbp), %rdx	# lc, tmp622
	addq	%rcx, %rdx	# D.7025, D.7026
	movzbl	(%rdx), %edx	# *_314, D.7027
	sarb	$5, %dl	#, D.7041
	movsbq	%dl, %rdx	# D.7041, D.7021
	salq	$2, %rdx	#, D.7021
	addq	%rdx, %rax	# D.7021, D.7040
	movl	(%rax), %edx	# *_319, D.7042
	movl	-160(%rbp), %eax	# j, tmp623
	movslq	%eax, %rcx	# tmp623, D.7025
	movq	-208(%rbp), %rax	# lc, tmp624
	addq	%rcx, %rax	# D.7025, D.7026
	movzbl	(%rax), %eax	# *_322, D.7027
	movsbl	%al, %eax	# D.7027, D.7023
	andl	$31, %eax	#, D.7023
	movl	$1, %esi	#, tmp625
	movl	%eax, %ecx	# D.7023, tmp760
	sall	%cl, %esi	# tmp760, D.7023
	movl	%esi, %eax	# D.7023, D.7023
	andl	%edx, %eax	# D.7042, D.7042
	testl	%eax, %eax	# D.7042
	jne	.L34	#,
	.loc 1 257 0
	movl	-160(%rbp), %eax	# j, tmp626
	cltq
	salq	$4, %rax	#, D.7021
	movq	%rax, %rdx	# D.7021, D.7021
	movq	-112(%rbp), %rax	# lcroot, tmp627
	leaq	(%rdx,%rax), %rbx	#, D.7028
	movl	-160(%rbp), %eax	# j, tmp628
	cltq
	salq	$4, %rax	#, D.7021
	movq	%rax, %rdx	# D.7021, D.7021
	movq	-112(%rbp), %rax	# lcroot, tmp629
	addq	%rdx, %rax	# D.7021, D.7028
	movq	8(%rax), %rax	# _334->root, D.7036
	movq	-104(%rbp), %rdx	# ln, tmp630
	movq	%rdx, %rsi	# tmp630,
	movq	%rax, %rdi	# D.7036,
	call	glist_add_ptr	#
	movq	%rax, 8(%rbx)	# D.7036, _331->root
	.loc 1 258 0
	movl	-120(%rbp), %eax	# ssid, tmp631
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-32(%rbp), %rax	# ssid_lc, tmp632
	addq	%rdx, %rax	# D.7021, D.7022
	movq	(%rax), %rax	# *_339, D.7040
	movl	-160(%rbp), %edx	# j, tmp633
	movslq	%edx, %rcx	# tmp633, D.7025
	movq	-208(%rbp), %rdx	# lc, tmp634
	addq	%rcx, %rdx	# D.7025, D.7026
	movzbl	(%rdx), %edx	# *_342, D.7027
	sarb	$5, %dl	#, D.7041
	movsbq	%dl, %rdx	# D.7041, D.7021
	salq	$2, %rdx	#, D.7021
	addq	%rdx, %rax	# D.7021, D.7040
	movl	-120(%rbp), %edx	# ssid, tmp635
	movslq	%edx, %rdx	# tmp635, D.7021
	leaq	0(,%rdx,8), %rcx	#, D.7021
	movq	-32(%rbp), %rdx	# ssid_lc, tmp636
	addq	%rcx, %rdx	# D.7021, D.7022
	movq	(%rdx), %rdx	# *_350, D.7040
	movl	-160(%rbp), %ecx	# j, tmp637
	movslq	%ecx, %rsi	# tmp637, D.7025
	movq	-208(%rbp), %rcx	# lc, tmp638
	addq	%rsi, %rcx	# D.7025, D.7026
	movzbl	(%rcx), %ecx	# *_353, D.7027
	sarb	$5, %cl	#, D.7041
	movsbq	%cl, %rcx	# D.7041, D.7021
	salq	$2, %rcx	#, D.7021
	addq	%rcx, %rdx	# D.7021, D.7040
	movl	(%rdx), %esi	# *_358, D.7042
	movl	-160(%rbp), %edx	# j, tmp639
	movslq	%edx, %rcx	# tmp639, D.7025
	movq	-208(%rbp), %rdx	# lc, tmp640
	addq	%rcx, %rdx	# D.7025, D.7026
	movzbl	(%rdx), %edx	# *_361, D.7027
	movsbl	%dl, %edx	# D.7027, D.7023
	andl	$31, %edx	#, D.7023
	movl	$1, %edi	#, tmp641
	movl	%edx, %ecx	# D.7023, tmp764
	sall	%cl, %edi	# tmp764, D.7023
	movl	%edi, %edx	# D.7023, D.7023
	orl	%esi, %edx	# D.7042, D.7042
	movl	%edx, (%rax)	# D.7042, *_347
.L34:
	.loc 1 262 0
	movl	$0, -156(%rbp)	#, k
	jmp	.L35	#
.L37:
	.loc 1 262 0 is_stmt 0 discriminator 1
	addl	$1, -156(%rbp)	#, k
.L35:
	movl	-156(%rbp), %eax	# k, tmp642
	cmpl	-168(%rbp), %eax	# np, tmp642
	jge	.L36	#,
	.loc 1 262 0 discriminator 2
	movl	-156(%rbp), %eax	# k, tmp643
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-96(%rbp), %rax	# parent, tmp644
	addq	%rdx, %rax	# D.7021, D.7037
	movq	(%rax), %rax	# *_371, D.7038
	movl	56(%rax), %eax	# _372->ssid, D.7023
	cmpl	-120(%rbp), %eax	# ssid, D.7023
	jne	.L37	#,
.L36:
	.loc 1 263 0 is_stmt 1
	movl	-156(%rbp), %eax	# k, tmp645
	cmpl	-168(%rbp), %eax	# np, tmp645
	jl	.L38	#,
	.loc 1 264 0
	movl	-168(%rbp), %eax	# np, np.1
	leal	1(%rax), %edx	#, tmp646
	movl	%edx, -168(%rbp)	# tmp646, np
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-96(%rbp), %rax	# parent, tmp647
	addq	%rax, %rdx	# tmp647, D.7037
	movq	-104(%rbp), %rax	# ln, tmp648
	movq	%rax, (%rdx)	# tmp648, *_379
.L38:
	.loc 1 240 0
	addl	$1, -160(%rbp)	#, j
.L31:
	.loc 1 240 0 is_stmt 0 discriminator 1
	movl	-160(%rbp), %eax	# j, tmp649
	cmpl	-176(%rbp), %eax	# n_lc, tmp649
	jl	.L39	#,
.L30:
	.loc 1 269 0 is_stmt 1
	movl	$1, -152(%rbp)	#, p
	jmp	.L40	#
.L59:
	.loc 1 270 0
	movq	-56(%rbp), %rax	# d2p, tmp650
	movq	(%rax), %rax	# d2p_65->internal, D.7031
	movl	-136(%rbp), %edx	# wid, tmp651
	movslq	%edx, %rdx	# tmp651, D.7021
	salq	$3, %rdx	#, D.7021
	addq	%rdx, %rax	# D.7021, D.7031
	movq	(%rax), %rax	# *_386, D.7032
	movl	-152(%rbp), %edx	# p, tmp652
	movslq	%edx, %rdx	# tmp652, D.7021
	salq	$2, %rdx	#, D.7021
	addq	%rdx, %rax	# D.7021, D.7032
	movl	(%rax), %eax	# *_390, tmp653
	movl	%eax, -120(%rbp)	# tmp653, ssid
	.loc 1 271 0
	movq	-72(%rbp), %rax	# dict, tmp654
	movq	32(%rax), %rcx	# dict_63->word, D.7030
	movl	-136(%rbp), %eax	# wid, tmp655
	movslq	%eax, %rdx	# tmp655, D.7021
	movq	%rdx, %rax	# D.7021, tmp656
	salq	$2, %rax	#, tmp656
	addq	%rdx, %rax	# D.7021, tmp656
	salq	$3, %rax	#, tmp657
	addq	%rcx, %rax	# D.7030, D.7030
	movq	8(%rax), %rdx	# _395->ciphone, D.7026
	movl	-152(%rbp), %eax	# p, tmp658
	cltq
	addq	%rdx, %rax	# D.7026, D.7026
	movzbl	(%rax), %eax	# *_398, D.7027
	movsbl	%al, %eax	# D.7027, tmp659
	movl	%eax, -124(%rbp)	# tmp659, ci
	.loc 1 274 0
	movl	$0, -160(%rbp)	#, j
	jmp	.L41	#
.L48:
	.loc 1 275 0
	movl	-160(%rbp), %eax	# j, tmp660
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-96(%rbp), %rax	# parent, tmp661
	addq	%rdx, %rax	# D.7021, D.7037
	movq	(%rax), %rax	# *_404, D.7038
	movq	40(%rax), %rax	# _405->children, tmp662
	movq	%rax, -88(%rbp)	# tmp662, gn
	jmp	.L42	#
.L45:
	.loc 1 276 0
	movq	-88(%rbp), %rax	# gn, tmp663
	movq	(%rax), %rax	# gn_39->data.ptr, tmp664
	movq	%rax, -104(%rbp)	# tmp664, ln
	.loc 1 278 0
	movq	-104(%rbp), %rax	# ln, tmp665
	movl	56(%rax), %eax	# ln_407->ssid, D.7023
	cmpl	-120(%rbp), %eax	# ssid, D.7023
	jne	.L43	#,
	.loc 1 278 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# ln, tmp666
	movzbl	73(%rax), %eax	# ln_407->composite, D.7027
	testb	%al, %al	# D.7027
	jne	.L43	#,
	.loc 1 280 0 is_stmt 1
	jmp	.L44	#
.L43:
	.loc 1 275 0
	movq	-88(%rbp), %rax	# gn, tmp667
	movq	8(%rax), %rax	# gn_39->next, tmp668
	movq	%rax, -88(%rbp)	# tmp668, gn
.L42:
	.loc 1 275 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, gn
	jne	.L45	#,
.L44:
	.loc 1 283 0 is_stmt 1
	cmpq	$0, -88(%rbp)	#, gn
	je	.L46	#,
	.loc 1 284 0
	jmp	.L47	#
.L46:
	.loc 1 274 0
	addl	$1, -160(%rbp)	#, j
.L41:
	.loc 1 274 0 is_stmt 0 discriminator 1
	movl	-160(%rbp), %eax	# j, tmp669
	cmpl	-168(%rbp), %eax	# np, tmp669
	jl	.L48	#,
.L47:
	.loc 1 287 0 is_stmt 1
	cmpq	$0, -88(%rbp)	#, gn
	jne	.L49	#,
	.loc 1 288 0
	movl	-124(%rbp), %esi	# ci, tmp670
	movl	-140(%rbp), %ecx	# n_st, tmp671
	movl	-120(%rbp), %edx	# ssid, tmp672
	movl	-132(%rbp), %eax	# prob, tmp673
	movl	%esi, %r9d	# tmp670,
	movl	%ecx, %r8d	# tmp671,
	movl	%edx, %ecx	# tmp672,
	movl	$0, %edx	#,
	movl	%eax, %esi	# tmp673,
	movl	$-1, %edi	#,
	call	lextree_node_alloc	#
	movq	%rax, -104(%rbp)	# tmp674, ln
	.loc 1 289 0
	movq	-64(%rbp), %rax	# tmat, tmp675
	movq	(%rax), %rdx	# tmat_64->tp, D.7033
	movq	-80(%rbp), %rax	# mdef, tmp676
	movq	40(%rax), %rax	# mdef_62->phone, D.7034
	movl	-124(%rbp), %ecx	# ci, tmp677
	movslq	%ecx, %rcx	# tmp677, D.7021
	salq	$4, %rcx	#, D.7021
	addq	%rcx, %rax	# D.7021, D.7034
	movl	4(%rax), %eax	# _417->tmat, D.7023
	cltq
	salq	$3, %rax	#, D.7021
	addq	%rdx, %rax	# D.7033, D.7033
	movq	(%rax), %rdx	# *_421, D.7035
	movq	-104(%rbp), %rax	# ln, tmp678
	movq	%rdx, 24(%rax)	# D.7035, ln_412->hmm.tp
	.loc 1 291 0
	movl	$0, -160(%rbp)	#, j
	jmp	.L50	#
.L51:
	.loc 1 292 0 discriminator 2
	movl	-160(%rbp), %eax	# j, tmp679
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-96(%rbp), %rax	# parent, tmp680
	addq	%rdx, %rax	# D.7021, D.7037
	movq	(%rax), %rbx	# *_426, D.7038
	movl	-160(%rbp), %eax	# j, tmp681
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-96(%rbp), %rax	# parent, tmp682
	addq	%rdx, %rax	# D.7021, D.7037
	movq	(%rax), %rax	# *_430, D.7038
	movq	40(%rax), %rax	# _431->children, D.7036
	movq	-104(%rbp), %rdx	# ln, tmp683
	movq	%rdx, %rsi	# tmp683,
	movq	%rax, %rdi	# D.7036,
	call	glist_add_ptr	#
	movq	%rax, 40(%rbx)	# D.7036, _427->children
	.loc 1 291 0 discriminator 2
	addl	$1, -160(%rbp)	#, j
.L50:
	.loc 1 291 0 is_stmt 0 discriminator 1
	movl	-160(%rbp), %eax	# j, tmp684
	cmpl	-168(%rbp), %eax	# np, tmp684
	jl	.L51	#,
	.loc 1 293 0 is_stmt 1
	addl	$1, -172(%rbp)	#, n_node
	jmp	.L52	#
.L49:
	.loc 1 295 0
	movq	-104(%rbp), %rax	# ln, tmp685
	movl	52(%rax), %eax	# ln_31->prob, D.7023
	cmpl	-132(%rbp), %eax	# prob, D.7023
	jge	.L53	#,
	.loc 1 296 0
	movq	-104(%rbp), %rax	# ln, tmp686
	movl	-132(%rbp), %edx	# prob, tmp687
	movl	%edx, 52(%rax)	# tmp687, ln_31->prob
.L53:
	.loc 1 298 0
	movl	-160(%rbp), %eax	# j, tmp688
	movl	%eax, -156(%rbp)	# tmp688, k
	.loc 1 301 0
	movl	$0, -160(%rbp)	#, j
	jmp	.L54	#
.L55:
	.loc 1 302 0 discriminator 2
	movl	-160(%rbp), %eax	# j, tmp689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-96(%rbp), %rax	# parent, tmp690
	addq	%rdx, %rax	# D.7021, D.7037
	movq	(%rax), %rbx	# *_441, D.7038
	movl	-160(%rbp), %eax	# j, tmp691
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-96(%rbp), %rax	# parent, tmp692
	addq	%rdx, %rax	# D.7021, D.7037
	movq	(%rax), %rax	# *_445, D.7038
	movq	40(%rax), %rax	# _446->children, D.7036
	movq	-104(%rbp), %rdx	# ln, tmp693
	movq	%rdx, %rsi	# tmp693,
	movq	%rax, %rdi	# D.7036,
	call	glist_add_ptr	#
	movq	%rax, 40(%rbx)	# D.7036, _442->children
	.loc 1 301 0 discriminator 2
	addl	$1, -160(%rbp)	#, j
.L54:
	.loc 1 301 0 is_stmt 0 discriminator 1
	movl	-160(%rbp), %eax	# j, tmp694
	cmpl	-156(%rbp), %eax	# k, tmp694
	jl	.L55	#,
	.loc 1 305 0 is_stmt 1
	movl	-156(%rbp), %eax	# k, tmp698
	addl	$1, %eax	#, tmp697
	movl	%eax, -160(%rbp)	# tmp697, j
	jmp	.L56	#
.L58:
	.loc 1 306 0
	movl	-160(%rbp), %eax	# j, tmp699
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-96(%rbp), %rax	# parent, tmp700
	addq	%rdx, %rax	# D.7021, D.7037
	movq	(%rax), %rax	# *_453, D.7038
	movq	40(%rax), %rax	# _454->children, D.7036
	movq	-104(%rbp), %rdx	# ln, tmp701
	movq	%rdx, %rsi	# tmp701,
	movq	%rax, %rdi	# D.7036,
	call	glist_chkdup_ptr	#
	testl	%eax, %eax	# D.7023
	jne	.L57	#,
	.loc 1 307 0
	movl	-160(%rbp), %eax	# j, tmp702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-96(%rbp), %rax	# parent, tmp703
	addq	%rdx, %rax	# D.7021, D.7037
	movq	(%rax), %rbx	# *_459, D.7038
	movl	-160(%rbp), %eax	# j, tmp704
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-96(%rbp), %rax	# parent, tmp705
	addq	%rdx, %rax	# D.7021, D.7037
	movq	(%rax), %rax	# *_463, D.7038
	movq	40(%rax), %rax	# _464->children, D.7036
	movq	-104(%rbp), %rdx	# ln, tmp706
	movq	%rdx, %rsi	# tmp706,
	movq	%rax, %rdi	# D.7036,
	call	glist_add_ptr	#
	movq	%rax, 40(%rbx)	# D.7036, _460->children
.L57:
	.loc 1 305 0
	addl	$1, -160(%rbp)	#, j
.L56:
	.loc 1 305 0 is_stmt 0 discriminator 1
	movl	-160(%rbp), %eax	# j, tmp707
	cmpl	-168(%rbp), %eax	# np, tmp707
	jl	.L58	#,
.L52:
	.loc 1 311 0 is_stmt 1
	movq	-96(%rbp), %rax	# parent, tmp708
	movq	-104(%rbp), %rdx	# ln, tmp709
	movq	%rdx, (%rax)	# tmp709, *parent_36
	.loc 1 312 0
	movl	$1, -168(%rbp)	#, np
	.loc 1 269 0
	addl	$1, -152(%rbp)	#, p
.L40:
	.loc 1 269 0 is_stmt 0 discriminator 1
	movl	-128(%rbp), %eax	# pronlen, tmp710
	subl	$1, %eax	#, D.7023
	cmpl	-152(%rbp), %eax	# p, D.7023
	jg	.L59	#,
	.loc 1 316 0 is_stmt 1
	movq	-56(%rbp), %rax	# d2p, tmp711
	movq	(%rax), %rax	# d2p_65->internal, D.7031
	movl	-136(%rbp), %edx	# wid, tmp712
	movslq	%edx, %rdx	# tmp712, D.7021
	salq	$3, %rdx	#, D.7021
	addq	%rdx, %rax	# D.7021, D.7031
	movq	(%rax), %rax	# *_473, D.7032
	movl	-152(%rbp), %edx	# p, tmp713
	movslq	%edx, %rdx	# tmp713, D.7021
	salq	$2, %rdx	#, D.7021
	addq	%rdx, %rax	# D.7021, D.7032
	movl	(%rax), %eax	# *_477, tmp714
	movl	%eax, -120(%rbp)	# tmp714, ssid
	.loc 1 317 0
	movq	-72(%rbp), %rax	# dict, tmp715
	movq	32(%rax), %rcx	# dict_63->word, D.7030
	movl	-136(%rbp), %eax	# wid, tmp716
	movslq	%eax, %rdx	# tmp716, D.7021
	movq	%rdx, %rax	# D.7021, tmp717
	salq	$2, %rax	#, tmp717
	addq	%rdx, %rax	# D.7021, tmp717
	salq	$3, %rax	#, tmp718
	addq	%rcx, %rax	# D.7030, D.7030
	movq	8(%rax), %rdx	# _482->ciphone, D.7026
	movl	-152(%rbp), %eax	# p, tmp719
	cltq
	addq	%rdx, %rax	# D.7026, D.7026
	movzbl	(%rax), %eax	# *_485, D.7027
	movsbl	%al, %eax	# D.7027, tmp720
	movl	%eax, -124(%rbp)	# tmp720, ci
	.loc 1 318 0
	movl	-124(%rbp), %edi	# ci, tmp721
	movl	-140(%rbp), %ecx	# n_st, tmp722
	movl	-120(%rbp), %edx	# ssid, tmp723
	movl	-132(%rbp), %esi	# prob, tmp724
	movl	-136(%rbp), %eax	# wid, tmp725
	movl	%edi, %r9d	# tmp721,
	movl	%ecx, %r8d	# tmp722,
	movl	%edx, %ecx	# tmp723,
	movl	$1, %edx	#,
	movl	%eax, %edi	# tmp725,
	call	lextree_node_alloc	#
	movq	%rax, -104(%rbp)	# tmp726, ln
	.loc 1 319 0
	movq	-64(%rbp), %rax	# tmat, tmp727
	movq	(%rax), %rdx	# tmat_64->tp, D.7033
	movq	-80(%rbp), %rax	# mdef, tmp728
	movq	40(%rax), %rax	# mdef_62->phone, D.7034
	movl	-124(%rbp), %ecx	# ci, tmp729
	movslq	%ecx, %rcx	# tmp729, D.7021
	salq	$4, %rcx	#, D.7021
	addq	%rcx, %rax	# D.7021, D.7034
	movl	4(%rax), %eax	# _493->tmat, D.7023
	cltq
	salq	$3, %rax	#, D.7021
	addq	%rdx, %rax	# D.7033, D.7033
	movq	(%rax), %rdx	# *_497, D.7035
	movq	-104(%rbp), %rax	# ln, tmp730
	movq	%rdx, 24(%rax)	# D.7035, ln_488->hmm.tp
	.loc 1 321 0
	movl	$0, -160(%rbp)	#, j
	jmp	.L60	#
.L61:
	.loc 1 322 0 discriminator 2
	movl	-160(%rbp), %eax	# j, tmp731
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-96(%rbp), %rax	# parent, tmp732
	addq	%rdx, %rax	# D.7021, D.7037
	movq	(%rax), %rbx	# *_502, D.7038
	movl	-160(%rbp), %eax	# j, tmp733
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-96(%rbp), %rax	# parent, tmp734
	addq	%rdx, %rax	# D.7021, D.7037
	movq	(%rax), %rax	# *_506, D.7038
	movq	40(%rax), %rax	# _507->children, D.7036
	movq	-104(%rbp), %rdx	# ln, tmp735
	movq	%rdx, %rsi	# tmp735,
	movq	%rax, %rdi	# D.7036,
	call	glist_add_ptr	#
	movq	%rax, 40(%rbx)	# D.7036, _503->children
	.loc 1 321 0 discriminator 2
	addl	$1, -160(%rbp)	#, j
.L60:
	.loc 1 321 0 is_stmt 0 discriminator 1
	movl	-160(%rbp), %eax	# j, tmp736
	cmpl	-168(%rbp), %eax	# np, tmp736
	jl	.L61	#,
	.loc 1 323 0 is_stmt 1
	addl	$1, -172(%rbp)	#, n_node
.L15:
	.loc 1 171 0
	addl	$1, -164(%rbp)	#, i
.L12:
	.loc 1 171 0 is_stmt 0 discriminator 1
	movl	-164(%rbp), %eax	# i, tmp737
	cmpl	-196(%rbp), %eax	# n_word, tmp737
	jl	.L62	#,
	.loc 1 327 0 is_stmt 1
	movq	-48(%rbp), %rax	# lextree, tmp738
	movl	-172(%rbp), %edx	# n_node, tmp739
	movl	%edx, 28(%rax)	# tmp739, lextree_69->n_node
	.loc 1 329 0
	movl	-172(%rbp), %eax	# n_node, tmp740
	cltq
	movl	$329, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7021,
	call	__ckd_calloc__	#
	movq	-48(%rbp), %rdx	# lextree, tmp741
	movq	%rax, 32(%rdx)	# D.7024, lextree_69->active
	.loc 1 330 0
	movl	-172(%rbp), %eax	# n_node, tmp742
	cltq
	movl	$330, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7021,
	call	__ckd_calloc__	#
	movq	-48(%rbp), %rdx	# lextree, tmp743
	movq	%rax, 40(%rdx)	# D.7024, lextree_69->next_active
	.loc 1 331 0
	movq	-48(%rbp), %rax	# lextree, tmp744
	movl	$0, 48(%rax)	#, lextree_69->n_active
	.loc 1 332 0
	movq	-48(%rbp), %rax	# lextree, tmp745
	movl	$0, 52(%rax)	#, lextree_69->n_next_active
	.loc 1 334 0
	movq	-40(%rbp), %rax	# ssid2ln, tmp746
	movq	%rax, %rdi	# tmp746,
	call	ckd_free	#
	.loc 1 335 0
	movl	$0, -164(%rbp)	#, i
	jmp	.L63	#
.L64:
	.loc 1 336 0 discriminator 2
	movl	-164(%rbp), %eax	# i, tmp747
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7021
	movq	-32(%rbp), %rax	# ssid_lc, tmp748
	addq	%rdx, %rax	# D.7021, D.7022
	movq	(%rax), %rax	# *_520, D.7040
	movq	%rax, %rdi	# D.7040,
	call	ckd_free	#
	.loc 1 335 0 discriminator 2
	addl	$1, -164(%rbp)	#, i
.L63:
	.loc 1 335 0 is_stmt 0 discriminator 1
	movl	-164(%rbp), %eax	# i, tmp749
	cmpl	-144(%rbp), %eax	# n_sseq, tmp749
	jl	.L64	#,
	.loc 1 337 0 is_stmt 1
	movq	-32(%rbp), %rax	# ssid_lc, tmp750
	movq	%rax, %rdi	# tmp750,
	call	ckd_free	#
	.loc 1 338 0
	movq	-96(%rbp), %rax	# parent, tmp751
	movq	%rax, %rdi	# tmp751,
	call	ckd_free	#
	.loc 1 340 0
	movq	-48(%rbp), %rax	# lextree, D.7043
	.loc 1 341 0
	addq	$200, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	lextree_build, .-lextree_build
	.type	lextree_subtree_free, @function
lextree_subtree_free:
.LFB4:
	.loc 1 345 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# ln, ln
	movl	%esi, -44(%rbp)	# level, level
	.loc 1 350 0
	movl	$0, -20(%rbp)	#, k
	.loc 1 353 0
	movq	-40(%rbp), %rax	# ln, tmp67
	movq	40(%rax), %rax	# ln_5(D)->children, tmp68
	movq	%rax, -16(%rbp)	# tmp68, gn
	jmp	.L67	#
.L68:
	.loc 1 354 0 discriminator 2
	movq	-16(%rbp), %rax	# gn, tmp69
	movq	(%rax), %rax	# gn_1->data.ptr, tmp70
	movq	%rax, -8(%rbp)	# tmp70, ln2
	.loc 1 355 0 discriminator 2
	movl	-44(%rbp), %eax	# level, tmp71
	leal	1(%rax), %edx	#, D.7044
	movq	-8(%rbp), %rax	# ln2, tmp72
	movl	%edx, %esi	# D.7044,
	movq	%rax, %rdi	# tmp72,
	call	lextree_subtree_free	#
	addl	%eax, -20(%rbp)	# D.7044, k
	.loc 1 353 0 discriminator 2
	movq	-16(%rbp), %rax	# gn, tmp73
	movq	8(%rax), %rax	# gn_1->next, tmp74
	movq	%rax, -16(%rbp)	# tmp74, gn
.L67:
	.loc 1 353 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, gn
	jne	.L68	#,
	.loc 1 357 0 is_stmt 1
	movq	-40(%rbp), %rax	# ln, tmp75
	movq	40(%rax), %rax	# ln_5(D)->children, D.7045
	movq	%rax, %rdi	# D.7045,
	call	glist_free	#
	.loc 1 358 0
	movq	-40(%rbp), %rax	# ln, tmp76
	movq	$0, 40(%rax)	#, ln_5(D)->children
	.loc 1 361 0
	cmpl	$1, -44(%rbp)	#, level
	jne	.L69	#,
	.loc 1 361 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# ln, tmp77
	movl	56(%rax), %eax	# ln_5(D)->ssid, D.7044
	leal	-1(%rax), %edx	#, D.7044
	movq	-40(%rbp), %rax	# ln, tmp78
	movl	%edx, 56(%rax)	# D.7044, ln_5(D)->ssid
	movq	-40(%rbp), %rax	# ln, tmp79
	movl	56(%rax), %eax	# ln_5(D)->ssid, D.7044
	testl	%eax, %eax	# D.7044
	jne	.L70	#,
.L69:
	.loc 1 362 0 is_stmt 1
	movq	-40(%rbp), %rax	# ln, tmp80
	movl	$362, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$80, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	__myfree__	#
	.loc 1 363 0
	addl	$1, -20(%rbp)	#, k
.L70:
	.loc 1 366 0
	movl	-20(%rbp), %eax	# k, D.7046
	.loc 1 367 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	lextree_subtree_free, .-lextree_subtree_free
	.section	.rodata
.LC1:
	.string	"ERROR"
	.align 8
.LC2:
	.string	"#Nodes allocated(%d) != #nodes freed(%d)\n"
	.text
	.globl	lextree_free
	.type	lextree_free, @function
lextree_free:
.LFB5:
	.loc 1 376 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# lextree, lextree
	.loc 1 381 0
	movq	-56(%rbp), %rax	# lextree, tmp76
	movl	24(%rax), %eax	# lextree_6(D)->n_lc, D.7047
	testl	%eax, %eax	# D.7047
	jle	.L73	#,
	.loc 1 382 0
	movl	$0, -40(%rbp)	#, i
	jmp	.L74	#
.L75:
	.loc 1 383 0 discriminator 2
	movq	-56(%rbp), %rax	# lextree, tmp77
	movq	16(%rax), %rax	# lextree_6(D)->lcroot, D.7048
	movl	-40(%rbp), %edx	# i, tmp78
	movslq	%edx, %rdx	# tmp78, D.7049
	salq	$4, %rdx	#, D.7049
	addq	%rdx, %rax	# D.7049, D.7048
	movq	8(%rax), %rax	# _13->root, D.7050
	movq	%rax, %rdi	# D.7050,
	call	glist_free	#
	.loc 1 382 0 discriminator 2
	addl	$1, -40(%rbp)	#, i
.L74:
	.loc 1 382 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# lextree, tmp79
	movl	24(%rax), %eax	# lextree_6(D)->n_lc, D.7047
	cmpl	-40(%rbp), %eax	# i, D.7047
	jg	.L75	#,
	.loc 1 385 0 is_stmt 1
	movq	-56(%rbp), %rax	# lextree, tmp80
	movq	16(%rax), %rax	# lextree_6(D)->lcroot, D.7048
	movq	%rax, %rdi	# D.7048,
	call	ckd_free	#
.L73:
	.loc 1 389 0
	movq	-56(%rbp), %rax	# lextree, tmp81
	movq	8(%rax), %rax	# lextree_6(D)->root, tmp82
	movq	%rax, -32(%rbp)	# tmp82, gn
	jmp	.L76	#
.L81:
	.loc 1 390 0
	movq	-32(%rbp), %rax	# gn, tmp83
	movq	(%rax), %rax	# gn_1->data.ptr, tmp84
	movq	%rax, -16(%rbp)	# tmp84, ln
	.loc 1 391 0
	movq	-16(%rbp), %rax	# ln, tmp85
	movq	40(%rax), %rax	# ln_18->children, tmp86
	movq	%rax, -24(%rbp)	# tmp86, gn2
	jmp	.L77	#
.L80:
	.loc 1 392 0
	movq	-24(%rbp), %rax	# gn2, tmp87
	movq	(%rax), %rax	# gn2_3->data.ptr, tmp88
	movq	%rax, -8(%rbp)	# tmp88, ln2
	.loc 1 393 0
	movq	-8(%rbp), %rax	# ln2, tmp89
	movzbl	73(%rax), %eax	# ln2_20->composite, D.7051
	testb	%al, %al	# D.7051
	js	.L78	#,
	.loc 1 394 0
	movq	-8(%rbp), %rax	# ln2, tmp90
	movb	$-1, 73(%rax)	#, ln2_20->composite
	.loc 1 395 0
	movq	-8(%rbp), %rax	# ln2, tmp91
	movl	$1, 56(%rax)	#, ln2_20->ssid
	jmp	.L79	#
.L78:
	.loc 1 397 0
	movq	-8(%rbp), %rax	# ln2, tmp92
	movl	56(%rax), %eax	# ln2_20->ssid, D.7047
	leal	1(%rax), %edx	#, D.7047
	movq	-8(%rbp), %rax	# ln2, tmp93
	movl	%edx, 56(%rax)	# D.7047, ln2_20->ssid
.L79:
	.loc 1 391 0
	movq	-24(%rbp), %rax	# gn2, tmp94
	movq	8(%rax), %rax	# gn2_3->next, tmp95
	movq	%rax, -24(%rbp)	# tmp95, gn2
.L77:
	.loc 1 391 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, gn2
	jne	.L80	#,
	.loc 1 389 0 is_stmt 1
	movq	-32(%rbp), %rax	# gn, tmp96
	movq	8(%rax), %rax	# gn_1->next, tmp97
	movq	%rax, -32(%rbp)	# tmp97, gn
.L76:
	.loc 1 389 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, gn
	jne	.L81	#,
	.loc 1 402 0 is_stmt 1
	movl	$0, -36(%rbp)	#, k
	.loc 1 403 0
	movq	-56(%rbp), %rax	# lextree, tmp98
	movq	8(%rax), %rax	# lextree_6(D)->root, tmp99
	movq	%rax, -32(%rbp)	# tmp99, gn
	jmp	.L82	#
.L83:
	.loc 1 404 0 discriminator 2
	movq	-32(%rbp), %rax	# gn, tmp100
	movq	(%rax), %rax	# gn_2->data.ptr, tmp101
	movq	%rax, -16(%rbp)	# tmp101, ln
	.loc 1 405 0 discriminator 2
	movq	-16(%rbp), %rax	# ln, tmp102
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	lextree_subtree_free	#
	addl	%eax, -36(%rbp)	# D.7047, k
	.loc 1 403 0 discriminator 2
	movq	-32(%rbp), %rax	# gn, tmp103
	movq	8(%rax), %rax	# gn_2->next, tmp104
	movq	%rax, -32(%rbp)	# tmp104, gn
.L82:
	.loc 1 403 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, gn
	jne	.L83	#,
	.loc 1 407 0 is_stmt 1
	movq	-56(%rbp), %rax	# lextree, tmp105
	movq	8(%rax), %rax	# lextree_6(D)->root, D.7050
	movq	%rax, %rdi	# D.7050,
	call	glist_free	#
	.loc 1 409 0
	movq	-56(%rbp), %rax	# lextree, tmp106
	movq	32(%rax), %rax	# lextree_6(D)->active, D.7052
	movq	%rax, %rdi	# D.7052,
	call	ckd_free	#
	.loc 1 410 0
	movq	-56(%rbp), %rax	# lextree, tmp107
	movq	40(%rax), %rax	# lextree_6(D)->next_active, D.7052
	movq	%rax, %rdi	# D.7052,
	call	ckd_free	#
	.loc 1 412 0
	movq	-56(%rbp), %rax	# lextree, tmp108
	movl	28(%rax), %eax	# lextree_6(D)->n_node, D.7047
	cmpl	-36(%rbp), %eax	# k, D.7047
	je	.L84	#,
	.loc 1 413 0
	movl	$.LC1, %edx	#,
	movl	$413, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movq	-56(%rbp), %rax	# lextree, tmp109
	movl	28(%rax), %eax	# lextree_6(D)->n_node, D.7047
	movl	-36(%rbp), %edx	# k, tmp110
	movl	%eax, %esi	# D.7047,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
.L84:
	.loc 1 415 0
	movq	-56(%rbp), %rax	# lextree, tmp111
	movq	%rax, %rdi	# tmp111,
	call	ckd_free	#
	.loc 1 416 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	lextree_free, .-lextree_free
	.globl	lextree_ci_active
	.type	lextree_ci_active, @function
lextree_ci_active:
.LFB6:
	.loc 1 420 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# lextree, lextree
	movq	%rsi, -48(%rbp)	# ci_active, ci_active
	.loc 1 424 0
	movq	-40(%rbp), %rax	# lextree, tmp80
	movq	32(%rax), %rax	# lextree_2(D)->active, tmp81
	movq	%rax, -16(%rbp)	# tmp81, list
	.loc 1 426 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L86	#
.L87:
	.loc 1 427 0 discriminator 2
	movl	-20(%rbp), %eax	# i, tmp82
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7056
	movq	-16(%rbp), %rax	# list, tmp83
	addq	%rdx, %rax	# D.7056, D.7057
	movq	(%rax), %rax	# *_8, tmp84
	movq	%rax, -8(%rbp)	# tmp84, ln
	.loc 1 428 0 discriminator 2
	movq	-8(%rbp), %rax	# ln, tmp85
	movzbl	72(%rax), %eax	# ln_9->ci, D.7058
	sarb	$5, %al	#, D.7059
	movsbq	%al, %rax	# D.7059, D.7056
	leaq	0(,%rax,4), %rdx	#, D.7056
	movq	-48(%rbp), %rax	# ci_active, tmp86
	addq	%rax, %rdx	# tmp86, D.7060
	movq	-8(%rbp), %rax	# ln, tmp87
	movzbl	72(%rax), %eax	# ln_9->ci, D.7058
	sarb	$5, %al	#, D.7059
	movsbq	%al, %rax	# D.7059, D.7056
	leaq	0(,%rax,4), %rcx	#, D.7056
	movq	-48(%rbp), %rax	# ci_active, tmp88
	addq	%rcx, %rax	# D.7056, D.7060
	movl	(%rax), %esi	# *_20, D.7061
	movq	-8(%rbp), %rax	# ln, tmp89
	movzbl	72(%rax), %eax	# ln_9->ci, D.7058
	movsbl	%al, %eax	# D.7058, D.7055
	andl	$31, %eax	#, D.7055
	movl	$1, %edi	#, tmp90
	movl	%eax, %ecx	# D.7055, tmp93
	sall	%cl, %edi	# tmp93, D.7055
	movl	%edi, %eax	# D.7055, D.7055
	orl	%esi, %eax	# D.7061, D.7061
	movl	%eax, (%rdx)	# D.7061, *_15
	.loc 1 426 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L86:
	.loc 1 426 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# lextree, tmp91
	movl	48(%rax), %eax	# lextree_2(D)->n_active, D.7055
	cmpl	-20(%rbp), %eax	# i, D.7055
	jg	.L87	#,
	.loc 1 430 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	lextree_ci_active, .-lextree_ci_active
	.globl	lextree_ssid_active
	.type	lextree_ssid_active, @function
lextree_ssid_active:
.LFB7:
	.loc 1 434 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# lextree, lextree
	movq	%rsi, -48(%rbp)	# ssid, ssid
	movq	%rdx, -56(%rbp)	# comssid, comssid
	.loc 1 438 0
	movq	-40(%rbp), %rax	# lextree, tmp72
	movq	32(%rax), %rax	# lextree_2(D)->active, tmp73
	movq	%rax, -16(%rbp)	# tmp73, list
	.loc 1 440 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L89	#
.L92:
	.loc 1 441 0
	movl	-20(%rbp), %eax	# i, tmp74
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7063
	movq	-16(%rbp), %rax	# list, tmp75
	addq	%rdx, %rax	# D.7063, D.7064
	movq	(%rax), %rax	# *_8, tmp76
	movq	%rax, -8(%rbp)	# tmp76, ln
	.loc 1 442 0
	movq	-8(%rbp), %rax	# ln, tmp77
	movzbl	73(%rax), %eax	# ln_9->composite, D.7065
	testb	%al, %al	# D.7065
	je	.L90	#,
	.loc 1 443 0
	movq	-8(%rbp), %rax	# ln, tmp78
	movl	56(%rax), %eax	# ln_9->ssid, D.7062
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7063
	movq	-56(%rbp), %rax	# comssid, tmp79
	addq	%rdx, %rax	# D.7063, D.7066
	movl	$1, (%rax)	#, *_15
	jmp	.L91	#
.L90:
	.loc 1 445 0
	movq	-8(%rbp), %rax	# ln, tmp80
	movl	56(%rax), %eax	# ln_9->ssid, D.7062
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7063
	movq	-48(%rbp), %rax	# ssid, tmp81
	addq	%rdx, %rax	# D.7063, D.7066
	movl	$1, (%rax)	#, *_20
.L91:
	.loc 1 440 0
	addl	$1, -20(%rbp)	#, i
.L89:
	.loc 1 440 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# lextree, tmp82
	movl	48(%rax), %eax	# lextree_2(D)->n_active, D.7062
	cmpl	-20(%rbp), %eax	# i, D.7062
	jg	.L92	#,
	.loc 1 447 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	lextree_ssid_active, .-lextree_ssid_active
	.globl	lextree_utt_end
	.type	lextree_utt_end, @function
lextree_utt_end:
.LFB8:
	.loc 1 451 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# l, l
	movq	%rsi, -48(%rbp)	# kbc, kbc
	.loc 1 456 0
	movq	-48(%rbp), %rax	# kbc, tmp66
	movq	8(%rax), %rax	# kbc_2(D)->mdef, tmp67
	movq	%rax, -16(%rbp)	# tmp67, mdef
	.loc 1 458 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L94	#
.L95:
	.loc 1 459 0 discriminator 2
	movq	-40(%rbp), %rax	# l, tmp68
	movq	32(%rax), %rax	# l_5(D)->active, D.7068
	movl	-20(%rbp), %edx	# i, tmp69
	movslq	%edx, %rdx	# tmp69, D.7069
	salq	$3, %rdx	#, D.7069
	addq	%rdx, %rax	# D.7069, D.7068
	movq	(%rax), %rax	# *_10, tmp70
	movq	%rax, -8(%rbp)	# tmp70, ln
	.loc 1 461 0 discriminator 2
	movq	-8(%rbp), %rax	# ln, tmp71
	movw	$-1, 74(%rax)	#, ln_11->frame
	.loc 1 462 0 discriminator 2
	movq	-16(%rbp), %rax	# mdef, tmp72
	movl	8(%rax), %edx	# mdef_3->n_emit_state, D.7067
	movq	-8(%rbp), %rax	# ln, D.7070
	movl	%edx, %esi	# D.7067,
	movq	%rax, %rdi	# D.7070,
	call	hmm_clear	#
	.loc 1 458 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L94:
	.loc 1 458 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# l, tmp73
	movl	48(%rax), %eax	# l_5(D)->n_active, D.7067
	cmpl	-20(%rbp), %eax	# i, D.7067
	jg	.L95	#,
	.loc 1 465 0 is_stmt 1
	movq	-40(%rbp), %rax	# l, tmp74
	movl	$0, 48(%rax)	#, l_5(D)->n_active
	.loc 1 466 0
	movq	-40(%rbp), %rax	# l, tmp75
	movl	$0, 52(%rax)	#, l_5(D)->n_next_active
	.loc 1 467 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	lextree_utt_end, .-lextree_utt_end
	.section	.rodata
.LC3:
	.string	"wid(%d)pr(%d)com(%d)ss(%d)"
	.text
	.type	lextree_node_print, @function
lextree_node_print:
.LFB9:
	.loc 1 471 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# ln, ln
	movq	%rsi, -16(%rbp)	# dict, dict
	movq	%rdx, -24(%rbp)	# fp, fp
	.loc 1 472 0
	movq	-8(%rbp), %rax	# ln, tmp71
	movl	56(%rax), %edi	# ln_1(D)->ssid, D.7071
	movq	-8(%rbp), %rax	# ln, tmp72
	movzbl	73(%rax), %eax	# ln_1(D)->composite, D.7072
	movsbl	%al, %esi	# D.7072, D.7071
	movq	-8(%rbp), %rax	# ln, tmp73
	movl	52(%rax), %ecx	# ln_1(D)->prob, D.7071
	movq	-8(%rbp), %rax	# ln, tmp74
	movl	48(%rax), %edx	# ln_1(D)->wid, D.7071
	movq	-24(%rbp), %rax	# fp, tmp75
	movl	%edi, %r9d	# D.7071,
	movl	%esi, %r8d	# D.7071,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp75,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 473 0
	movq	-8(%rbp), %rax	# ln, tmp76
	movl	48(%rax), %eax	# ln_1(D)->wid, D.7071
	testl	%eax, %eax	# D.7071
	js	.L97	#,
	.loc 1 474 0
	movq	-16(%rbp), %rax	# dict, tmp77
	movq	32(%rax), %rcx	# dict_9(D)->word, D.7073
	movq	-8(%rbp), %rax	# ln, tmp78
	movl	48(%rax), %eax	# ln_1(D)->wid, D.7071
	movslq	%eax, %rdx	# D.7071, D.7074
	movq	%rdx, %rax	# D.7074, tmp79
	salq	$2, %rax	#, tmp79
	addq	%rdx, %rax	# D.7074, tmp79
	salq	$3, %rax	#, tmp80
	addq	%rcx, %rax	# D.7073, D.7073
	movq	(%rax), %rax	# _14->word, D.7075
	movq	-24(%rbp), %rdx	# fp, tmp81
	movq	%rdx, %rsi	# tmp81,
	movq	%rax, %rdi	# D.7075,
	call	fputs	#
.L97:
	.loc 1 475 0
	movq	-24(%rbp), %rax	# fp, tmp82
	movq	%rax, %rsi	# tmp82,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 476 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	lextree_node_print, .-lextree_node_print
	.section	.rodata
.LC4:
	.string	"    "
	.text
	.type	lextree_subtree_print, @function
lextree_subtree_print:
.LFB10:
	.loc 1 480 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# ln, ln
	movl	%esi, -28(%rbp)	# level, level
	movq	%rdx, -40(%rbp)	# dict, dict
	movq	%rcx, -48(%rbp)	# fp, fp
	.loc 1 484 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L99	#
.L100:
	.loc 1 485 0 discriminator 2
	movq	-48(%rbp), %rax	# fp, tmp60
	movq	%rax, %rcx	# tmp60,
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC4, %edi	#,
	call	fwrite	#
	.loc 1 484 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L99:
	.loc 1 484 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp61
	cmpl	-28(%rbp), %eax	# level, tmp61
	jl	.L100	#,
	.loc 1 486 0 is_stmt 1
	movq	-48(%rbp), %rdx	# fp, tmp62
	movq	-40(%rbp), %rcx	# dict, tmp63
	movq	-24(%rbp), %rax	# ln, tmp64
	movq	%rcx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	lextree_node_print	#
	.loc 1 488 0
	movq	-24(%rbp), %rax	# ln, tmp65
	movq	40(%rax), %rax	# ln_7(D)->children, tmp66
	movq	%rax, -8(%rbp)	# tmp66, gn
	jmp	.L101	#
.L102:
	.loc 1 489 0 discriminator 2
	movq	-8(%rbp), %rax	# gn, tmp67
	movq	(%rax), %rax	# gn_2->data.ptr, tmp68
	movq	%rax, -24(%rbp)	# tmp68, ln
	.loc 1 490 0 discriminator 2
	movl	-28(%rbp), %eax	# level, tmp69
	leal	1(%rax), %esi	#, D.7077
	movq	-48(%rbp), %rcx	# fp, tmp70
	movq	-40(%rbp), %rdx	# dict, tmp71
	movq	-24(%rbp), %rax	# ln, tmp72
	movq	%rax, %rdi	# tmp72,
	call	lextree_subtree_print	#
	.loc 1 488 0 discriminator 2
	movq	-8(%rbp), %rax	# gn, tmp73
	movq	8(%rax), %rax	# gn_2->next, tmp74
	movq	%rax, -8(%rbp)	# tmp74, gn
.L101:
	.loc 1 488 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, gn
	jne	.L102	#,
	.loc 1 492 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	lextree_subtree_print, .-lextree_subtree_print
	.section	.rodata
.LC5:
	.string	"lcroot %d\n"
	.text
	.globl	lextree_dump
	.type	lextree_dump, @function
lextree_dump:
.LFB11:
	.loc 1 496 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# lextree, lextree
	movq	%rsi, -48(%rbp)	# dict, dict
	movq	%rdx, -56(%rbp)	# fp, fp
	.loc 1 501 0
	movq	-40(%rbp), %rax	# lextree, tmp71
	movq	8(%rax), %rax	# lextree_4(D)->root, tmp72
	movq	%rax, -16(%rbp)	# tmp72, gn
	jmp	.L104	#
.L105:
	.loc 1 502 0 discriminator 2
	movq	-16(%rbp), %rax	# gn, tmp73
	movq	(%rax), %rax	# gn_1->data.ptr, tmp74
	movq	%rax, -8(%rbp)	# tmp74, ln
	.loc 1 503 0 discriminator 2
	movq	-56(%rbp), %rcx	# fp, tmp75
	movq	-48(%rbp), %rdx	# dict, tmp76
	movq	-8(%rbp), %rax	# ln, tmp77
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp77,
	call	lextree_subtree_print	#
	.loc 1 501 0 discriminator 2
	movq	-16(%rbp), %rax	# gn, tmp78
	movq	8(%rax), %rax	# gn_1->next, tmp79
	movq	%rax, -16(%rbp)	# tmp79, gn
.L104:
	.loc 1 501 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, gn
	jne	.L105	#,
	.loc 1 506 0 is_stmt 1
	movq	-40(%rbp), %rax	# lextree, tmp80
	movl	24(%rax), %eax	# lextree_4(D)->n_lc, D.7079
	testl	%eax, %eax	# D.7079
	jle	.L103	#,
	.loc 1 507 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L107	#
.L110:
	.loc 1 508 0
	movq	-40(%rbp), %rax	# lextree, tmp81
	movq	16(%rax), %rax	# lextree_4(D)->lcroot, D.7080
	movl	-20(%rbp), %edx	# i, tmp82
	movslq	%edx, %rdx	# tmp82, D.7081
	salq	$4, %rdx	#, D.7081
	addq	%rdx, %rax	# D.7081, D.7080
	movzbl	(%rax), %eax	# _16->lc, D.7082
	movsbl	%al, %edx	# D.7082, D.7079
	movq	-56(%rbp), %rax	# fp, tmp83
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp83,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 509 0
	movq	-40(%rbp), %rax	# lextree, tmp84
	movq	16(%rax), %rax	# lextree_4(D)->lcroot, D.7080
	movl	-20(%rbp), %edx	# i, tmp85
	movslq	%edx, %rdx	# tmp85, D.7081
	salq	$4, %rdx	#, D.7081
	addq	%rdx, %rax	# D.7081, D.7080
	movq	8(%rax), %rax	# _22->root, tmp86
	movq	%rax, -16(%rbp)	# tmp86, gn
	jmp	.L108	#
.L109:
	.loc 1 510 0 discriminator 2
	movq	-16(%rbp), %rax	# gn, tmp87
	movq	(%rax), %rax	# gn_2->data.ptr, tmp88
	movq	%rax, -8(%rbp)	# tmp88, ln
	.loc 1 511 0 discriminator 2
	movq	-56(%rbp), %rdx	# fp, tmp89
	movq	-48(%rbp), %rcx	# dict, tmp90
	movq	-8(%rbp), %rax	# ln, tmp91
	movq	%rcx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	lextree_node_print	#
	.loc 1 509 0 discriminator 2
	movq	-16(%rbp), %rax	# gn, tmp92
	movq	8(%rax), %rax	# gn_2->next, tmp93
	movq	%rax, -16(%rbp)	# tmp93, gn
.L108:
	.loc 1 509 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, gn
	jne	.L109	#,
	.loc 1 507 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i
.L107:
	.loc 1 507 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# lextree, tmp94
	movl	24(%rax), %eax	# lextree_4(D)->n_lc, D.7079
	cmpl	-20(%rbp), %eax	# i, D.7079
	jg	.L110	#,
.L103:
	.loc 1 515 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	lextree_dump, .-lextree_dump
	.globl	lextree_enter
	.type	lextree_enter, @function
lextree_enter:
.LFB12:
	.loc 1 520 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)	# lextree, lextree
	movl	%esi, %eax	# lc, tmp80
	movl	%edx, -64(%rbp)	# cf, cf
	movl	%ecx, -68(%rbp)	# inscore, inscore
	movl	%r8d, -72(%rbp)	# inhist, inhist
	movl	%r9d, -76(%rbp)	# thresh, thresh
	movb	%al, -60(%rbp)	# tmp80, lc
	.loc 1 528 0
	movl	-64(%rbp), %eax	# cf, tmp84
	addl	$1, %eax	#, tmp83
	movl	%eax, -40(%rbp)	# tmp83, nf
	.loc 1 531 0
	movq	-56(%rbp), %rax	# lextree, tmp85
	movl	24(%rax), %eax	# lextree_8(D)->n_lc, D.7084
	testl	%eax, %eax	# D.7084
	jne	.L112	#,
	.loc 1 533 0
	movq	-56(%rbp), %rax	# lextree, tmp86
	movq	8(%rax), %rax	# lextree_8(D)->root, tmp87
	movq	%rax, -32(%rbp)	# tmp87, root
	jmp	.L113	#
.L112:
	.loc 1 535 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L114	#
.L116:
	.loc 1 535 0 is_stmt 0 discriminator 1
	addl	$1, -48(%rbp)	#, i
.L114:
	movq	-56(%rbp), %rax	# lextree, tmp88
	movl	24(%rax), %eax	# lextree_8(D)->n_lc, D.7084
	cmpl	-48(%rbp), %eax	# i, D.7084
	jle	.L115	#,
	.loc 1 535 0 discriminator 2
	movq	-56(%rbp), %rax	# lextree, tmp89
	movq	16(%rax), %rax	# lextree_8(D)->lcroot, D.7085
	movl	-48(%rbp), %edx	# i, tmp90
	movslq	%edx, %rdx	# tmp90, D.7086
	salq	$4, %rdx	#, D.7086
	addq	%rdx, %rax	# D.7086, D.7085
	movzbl	(%rax), %eax	# _16->lc, D.7087
	cmpb	-60(%rbp), %al	# lc, D.7087
	jne	.L116	#,
.L115:
	.loc 1 538 0 is_stmt 1
	movq	-56(%rbp), %rax	# lextree, tmp91
	movq	16(%rax), %rax	# lextree_8(D)->lcroot, D.7085
	movl	-48(%rbp), %edx	# i, tmp92
	movslq	%edx, %rdx	# tmp92, D.7086
	salq	$4, %rdx	#, D.7086
	addq	%rdx, %rax	# D.7086, D.7085
	movq	8(%rax), %rax	# _23->root, tmp93
	movq	%rax, -32(%rbp)	# tmp93, root
.L113:
	.loc 1 542 0
	movq	-56(%rbp), %rax	# lextree, tmp94
	movl	52(%rax), %eax	# lextree_8(D)->n_next_active, tmp95
	movl	%eax, -44(%rbp)	# tmp95, n
	.loc 1 543 0
	movq	-32(%rbp), %rax	# root, tmp96
	movq	%rax, -24(%rbp)	# tmp96, gn
	jmp	.L117	#
.L119:
	.loc 1 544 0
	movq	-24(%rbp), %rax	# gn, tmp97
	movq	(%rax), %rax	# gn_2->data.ptr, tmp98
	movq	%rax, -16(%rbp)	# tmp98, ln
	.loc 1 546 0
	movq	-16(%rbp), %rax	# ln, tmp99
	movq	%rax, -8(%rbp)	# tmp99, hmm
	.loc 1 548 0
	movq	-16(%rbp), %rax	# ln, tmp100
	movl	52(%rax), %edx	# ln_27->prob, D.7084
	movl	-68(%rbp), %eax	# inscore, tmp104
	addl	%edx, %eax	# D.7084, tmp103
	movl	%eax, -36(%rbp)	# tmp103, scr
	.loc 1 549 0
	movl	-36(%rbp), %eax	# scr, tmp105
	cmpl	-76(%rbp), %eax	# thresh, tmp105
	jl	.L118	#,
	.loc 1 549 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp106
	movl	8(%rax), %eax	# hmm_28->in.score, D.7084
	cmpl	-36(%rbp), %eax	# scr, D.7084
	jge	.L118	#,
	.loc 1 550 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp107
	movl	-36(%rbp), %edx	# scr, tmp108
	movl	%edx, 8(%rax)	# tmp108, hmm_28->in.score
	.loc 1 551 0
	movq	-8(%rbp), %rax	# hmm, tmp109
	movl	-72(%rbp), %edx	# inhist, tmp110
	movl	%edx, 12(%rax)	# tmp110, hmm_28->in.history
	.loc 1 553 0
	movq	-16(%rbp), %rax	# ln, tmp111
	movzwl	74(%rax), %eax	# ln_27->frame, D.7088
	cwtl
	cmpl	-40(%rbp), %eax	# nf, D.7084
	je	.L118	#,
	.loc 1 554 0
	movl	-40(%rbp), %eax	# nf, tmp112
	movl	%eax, %edx	# tmp112, D.7088
	movq	-16(%rbp), %rax	# ln, tmp113
	movw	%dx, 74(%rax)	# D.7088, ln_27->frame
	.loc 1 555 0
	movq	-56(%rbp), %rax	# lextree, tmp114
	movq	40(%rax), %rcx	# lextree_8(D)->next_active, D.7089
	movl	-44(%rbp), %eax	# n, n.2
	leal	1(%rax), %edx	#, tmp115
	movl	%edx, -44(%rbp)	# tmp115, n
	cltq
	salq	$3, %rax	#, D.7086
	leaq	(%rcx,%rax), %rdx	#, D.7089
	movq	-16(%rbp), %rax	# ln, tmp116
	movq	%rax, (%rdx)	# tmp116, *_43
.L118:
	.loc 1 543 0
	movq	-24(%rbp), %rax	# gn, tmp117
	movq	8(%rax), %rax	# gn_2->next, tmp118
	movq	%rax, -24(%rbp)	# tmp118, gn
.L117:
	.loc 1 543 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, gn
	jne	.L119	#,
	.loc 1 559 0 is_stmt 1
	movq	-56(%rbp), %rax	# lextree, tmp119
	movl	-44(%rbp), %edx	# n, tmp120
	movl	%edx, 52(%rax)	# tmp120, lextree_8(D)->n_next_active
	.loc 1 560 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	lextree_enter, .-lextree_enter
	.globl	lextree_active_swap
	.type	lextree_active_swap, @function
lextree_active_swap:
.LFB13:
	.loc 1 564 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# lextree, lextree
	.loc 1 567 0
	movq	-24(%rbp), %rax	# lextree, tmp61
	movq	32(%rax), %rax	# lextree_1(D)->active, tmp62
	movq	%rax, -8(%rbp)	# tmp62, t
	.loc 1 568 0
	movq	-24(%rbp), %rax	# lextree, tmp63
	movq	40(%rax), %rdx	# lextree_1(D)->next_active, D.7090
	movq	-24(%rbp), %rax	# lextree, tmp64
	movq	%rdx, 32(%rax)	# D.7090, lextree_1(D)->active
	.loc 1 569 0
	movq	-24(%rbp), %rax	# lextree, tmp65
	movq	-8(%rbp), %rdx	# t, tmp66
	movq	%rdx, 40(%rax)	# tmp66, lextree_1(D)->next_active
	.loc 1 570 0
	movq	-24(%rbp), %rax	# lextree, tmp67
	movl	52(%rax), %edx	# lextree_1(D)->n_next_active, D.7091
	movq	-24(%rbp), %rax	# lextree, tmp68
	movl	%edx, 48(%rax)	# D.7091, lextree_1(D)->n_active
	.loc 1 571 0
	movq	-24(%rbp), %rax	# lextree, tmp69
	movl	$0, 52(%rax)	#, lextree_1(D)->n_next_active
	.loc 1 572 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	lextree_active_swap, .-lextree_active_swap
	.section	.rodata
.LC6:
	.string	"FATAL_ERROR"
.LC7:
	.string	"#State= %d unsupported\n"
	.align 8
.LC8:
	.string	"Fr %d  #active %d  best %d  wbest %d\n"
	.text
	.globl	lextree_hmm_eval
	.type	lextree_hmm_eval, @function
lextree_hmm_eval:
.LFB14:
	.loc 1 576 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -72(%rbp)	# lextree, lextree
	movq	%rsi, -80(%rbp)	# kbc, kbc
	movq	%rdx, -88(%rbp)	# ascr, ascr
	movl	%ecx, -92(%rbp)	# frm, frm
	movq	%r8, -104(%rbp)	# fp, fp
	.loc 1 583 0
	movq	-80(%rbp), %rax	# kbc, tmp129
	movq	8(%rax), %rax	# kbc_21(D)->mdef, tmp130
	movq	%rax, -32(%rbp)	# tmp130, mdef
	.loc 1 584 0
	movq	-80(%rbp), %rax	# kbc, tmp131
	movq	24(%rax), %rax	# kbc_21(D)->dict2pid, tmp132
	movq	%rax, -24(%rbp)	# tmp132, d2p
	.loc 1 585 0
	movq	-32(%rbp), %rax	# mdef, tmp133
	movl	8(%rax), %eax	# mdef_22->n_emit_state, tmp134
	movl	%eax, -36(%rbp)	# tmp134, n_st
	.loc 1 587 0
	movq	-72(%rbp), %rax	# lextree, tmp135
	movq	32(%rax), %rax	# lextree_25(D)->active, tmp136
	movq	%rax, -16(%rbp)	# tmp136, list
	.loc 1 588 0
	movl	$-2147483648, -52(%rbp)	#, best
	.loc 1 589 0
	movl	$-2147483648, -48(%rbp)	#, wbest
	.loc 1 591 0
	cmpq	$0, -104(%rbp)	#, fp
	je	.L122	#,
	.loc 1 592 0
	movl	$0, -44(%rbp)	#, i
	jmp	.L123	#
.L128:
	.loc 1 593 0
	movl	-44(%rbp), %eax	# i, tmp137
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7093
	movq	-16(%rbp), %rax	# list, tmp138
	addq	%rdx, %rax	# D.7093, D.7094
	movq	(%rax), %rax	# *_34, tmp139
	movq	%rax, -8(%rbp)	# tmp139, ln
	.loc 1 596 0
	movq	-80(%rbp), %rax	# kbc, tmp140
	movq	16(%rax), %rcx	# kbc_21(D)->dict, D.7095
	movq	-104(%rbp), %rdx	# fp, tmp141
	movq	-8(%rbp), %rax	# ln, tmp142
	movq	%rcx, %rsi	# D.7095,
	movq	%rax, %rdi	# tmp142,
	call	lextree_node_print	#
	.loc 1 598 0
	movq	-8(%rbp), %rax	# ln, tmp143
	movzbl	73(%rax), %eax	# ln_35->composite, D.7096
	testb	%al, %al	# D.7096
	jne	.L124	#,
	.loc 1 599 0
	movq	-88(%rbp), %rax	# ascr, tmp144
	movq	(%rax), %rcx	# ascr_38(D)->sen, D.7097
	.loc 1 600 0
	movq	-32(%rbp), %rax	# mdef, tmp145
	movq	48(%rax), %rdx	# mdef_22->sseq, D.7098
	movq	-8(%rbp), %rax	# ln, tmp146
	movl	56(%rax), %eax	# ln_35->ssid, D.7092
	cltq
	salq	$3, %rax	#, D.7093
	addq	%rdx, %rax	# D.7098, D.7098
	.loc 1 599 0
	movq	(%rax), %rdx	# *_44, D.7099
	movq	-8(%rbp), %rax	# ln, D.7100
	movq	-104(%rbp), %rdi	# fp, tmp147
	movl	-36(%rbp), %esi	# n_st, tmp148
	movq	%rdi, %r8	# tmp147,
	movq	%rax, %rdi	# D.7100,
	call	hmm_dump_vit_eval	#
	movl	%eax, -40(%rbp)	# tmp149, k
	jmp	.L125	#
.L124:
	.loc 1 602 0
	movq	-88(%rbp), %rax	# ascr, tmp150
	movq	8(%rax), %rcx	# ascr_38(D)->comsen, D.7097
	.loc 1 603 0
	movq	-24(%rbp), %rax	# d2p, tmp151
	movq	32(%rax), %rdx	# d2p_23->comsseq, D.7098
	movq	-8(%rbp), %rax	# ln, tmp152
	movl	56(%rax), %eax	# ln_35->ssid, D.7092
	cltq
	salq	$3, %rax	#, D.7093
	addq	%rdx, %rax	# D.7098, D.7098
	.loc 1 602 0
	movq	(%rax), %rdx	# *_53, D.7099
	movq	-8(%rbp), %rax	# ln, D.7100
	movq	-104(%rbp), %rdi	# fp, tmp153
	movl	-36(%rbp), %esi	# n_st, tmp154
	movq	%rdi, %r8	# tmp153,
	movq	%rax, %rdi	# D.7100,
	call	hmm_dump_vit_eval	#
	movl	%eax, -40(%rbp)	# tmp155, k
.L125:
	.loc 1 605 0
	movl	-52(%rbp), %eax	# best, tmp156
	cmpl	-40(%rbp), %eax	# k, tmp156
	jge	.L126	#,
	.loc 1 606 0
	movl	-40(%rbp), %eax	# k, tmp157
	movl	%eax, -52(%rbp)	# tmp157, best
.L126:
	.loc 1 608 0
	movq	-8(%rbp), %rax	# ln, tmp158
	movl	48(%rax), %eax	# ln_35->wid, D.7092
	testl	%eax, %eax	# D.7092
	js	.L127	#,
	.loc 1 609 0
	movl	-48(%rbp), %eax	# wbest, tmp159
	cmpl	-40(%rbp), %eax	# k, tmp159
	jge	.L127	#,
	.loc 1 610 0
	movl	-40(%rbp), %eax	# k, tmp160
	movl	%eax, -48(%rbp)	# tmp160, wbest
.L127:
	.loc 1 592 0
	addl	$1, -44(%rbp)	#, i
.L123:
	.loc 1 592 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# lextree, tmp161
	movl	48(%rax), %eax	# lextree_25(D)->n_active, D.7092
	cmpl	-44(%rbp), %eax	# i, D.7092
	jg	.L128	#,
	jmp	.L129	#
.L122:
	.loc 1 614 0 is_stmt 1
	cmpl	$3, -36(%rbp)	#, n_st
	jne	.L130	#,
	.loc 1 615 0
	movl	$0, -44(%rbp)	#, i
	jmp	.L131	#
.L136:
	.loc 1 616 0
	movl	-44(%rbp), %eax	# i, tmp162
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7093
	movq	-16(%rbp), %rax	# list, tmp163
	addq	%rdx, %rax	# D.7093, D.7094
	movq	(%rax), %rax	# *_65, tmp164
	movq	%rax, -8(%rbp)	# tmp164, ln
	.loc 1 619 0
	movq	-8(%rbp), %rax	# ln, tmp165
	movzbl	73(%rax), %eax	# ln_66->composite, D.7096
	testb	%al, %al	# D.7096
	jne	.L132	#,
	.loc 1 622 0
	movq	-88(%rbp), %rax	# ascr, tmp166
	movq	(%rax), %rdx	# ascr_38(D)->sen, D.7097
	movq	-32(%rbp), %rax	# mdef, tmp167
	movq	48(%rax), %rcx	# mdef_22->sseq, D.7098
	movq	-8(%rbp), %rax	# ln, tmp168
	movl	56(%rax), %eax	# ln_66->ssid, D.7092
	cltq
	salq	$3, %rax	#, D.7093
	addq	%rcx, %rax	# D.7098, D.7098
	movq	(%rax), %rcx	# *_73, D.7099
	movq	-8(%rbp), %rax	# ln, D.7100
	movq	%rcx, %rsi	# D.7099,
	movq	%rax, %rdi	# D.7100,
	call	hmm_vit_eval_3st	#
	movl	%eax, -40(%rbp)	# tmp169, k
	jmp	.L133	#
.L132:
	.loc 1 626 0
	movq	-88(%rbp), %rax	# ascr, tmp170
	movq	8(%rax), %rdx	# ascr_38(D)->comsen, D.7097
	movq	-24(%rbp), %rax	# d2p, tmp171
	movq	32(%rax), %rcx	# d2p_23->comsseq, D.7098
	movq	-8(%rbp), %rax	# ln, tmp172
	movl	56(%rax), %eax	# ln_66->ssid, D.7092
	cltq
	salq	$3, %rax	#, D.7093
	addq	%rcx, %rax	# D.7098, D.7098
	movq	(%rax), %rcx	# *_82, D.7099
	movq	-8(%rbp), %rax	# ln, D.7100
	movq	%rcx, %rsi	# D.7099,
	movq	%rax, %rdi	# D.7100,
	call	hmm_vit_eval_3st	#
	movl	%eax, -40(%rbp)	# tmp173, k
.L133:
	.loc 1 629 0
	movl	-52(%rbp), %eax	# best, tmp174
	cmpl	-40(%rbp), %eax	# k, tmp174
	jge	.L134	#,
	.loc 1 630 0
	movl	-40(%rbp), %eax	# k, tmp175
	movl	%eax, -52(%rbp)	# tmp175, best
.L134:
	.loc 1 632 0
	movq	-8(%rbp), %rax	# ln, tmp176
	movl	48(%rax), %eax	# ln_66->wid, D.7092
	testl	%eax, %eax	# D.7092
	js	.L135	#,
	.loc 1 633 0
	movl	-48(%rbp), %eax	# wbest, tmp177
	cmpl	-40(%rbp), %eax	# k, tmp177
	jge	.L135	#,
	.loc 1 634 0
	movl	-40(%rbp), %eax	# k, tmp178
	movl	%eax, -48(%rbp)	# tmp178, wbest
.L135:
	.loc 1 615 0
	addl	$1, -44(%rbp)	#, i
.L131:
	.loc 1 615 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# lextree, tmp179
	movl	48(%rax), %eax	# lextree_25(D)->n_active, D.7092
	cmpl	-44(%rbp), %eax	# i, D.7092
	jg	.L136	#,
	jmp	.L129	#
.L130:
	.loc 1 637 0 is_stmt 1
	cmpl	$5, -36(%rbp)	#, n_st
	jne	.L137	#,
	.loc 1 638 0
	movl	$0, -44(%rbp)	#, i
	jmp	.L138	#
.L143:
	.loc 1 639 0
	movl	-44(%rbp), %eax	# i, tmp180
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7093
	movq	-16(%rbp), %rax	# list, tmp181
	addq	%rdx, %rax	# D.7093, D.7094
	movq	(%rax), %rax	# *_94, tmp182
	movq	%rax, -8(%rbp)	# tmp182, ln
	.loc 1 642 0
	movq	-8(%rbp), %rax	# ln, tmp183
	movzbl	73(%rax), %eax	# ln_95->composite, D.7096
	testb	%al, %al	# D.7096
	jne	.L139	#,
	.loc 1 643 0
	movq	-88(%rbp), %rax	# ascr, tmp184
	movq	(%rax), %rdx	# ascr_38(D)->sen, D.7097
	movq	-32(%rbp), %rax	# mdef, tmp185
	movq	48(%rax), %rcx	# mdef_22->sseq, D.7098
	movq	-8(%rbp), %rax	# ln, tmp186
	movl	56(%rax), %eax	# ln_95->ssid, D.7092
	cltq
	salq	$3, %rax	#, D.7093
	addq	%rcx, %rax	# D.7098, D.7098
	movq	(%rax), %rcx	# *_102, D.7099
	movq	-8(%rbp), %rax	# ln, D.7100
	movq	%rcx, %rsi	# D.7099,
	movq	%rax, %rdi	# D.7100,
	call	hmm_vit_eval_5st	#
	movl	%eax, -40(%rbp)	# tmp187, k
	jmp	.L140	#
.L139:
	.loc 1 645 0
	movq	-88(%rbp), %rax	# ascr, tmp188
	movq	8(%rax), %rdx	# ascr_38(D)->comsen, D.7097
	movq	-24(%rbp), %rax	# d2p, tmp189
	movq	32(%rax), %rcx	# d2p_23->comsseq, D.7098
	movq	-8(%rbp), %rax	# ln, tmp190
	movl	56(%rax), %eax	# ln_95->ssid, D.7092
	cltq
	salq	$3, %rax	#, D.7093
	addq	%rcx, %rax	# D.7098, D.7098
	movq	(%rax), %rcx	# *_111, D.7099
	movq	-8(%rbp), %rax	# ln, D.7100
	movq	%rcx, %rsi	# D.7099,
	movq	%rax, %rdi	# D.7100,
	call	hmm_vit_eval_5st	#
	movl	%eax, -40(%rbp)	# tmp191, k
.L140:
	.loc 1 647 0
	movl	-52(%rbp), %eax	# best, tmp192
	cmpl	-40(%rbp), %eax	# k, tmp192
	jge	.L141	#,
	.loc 1 648 0
	movl	-40(%rbp), %eax	# k, tmp193
	movl	%eax, -52(%rbp)	# tmp193, best
.L141:
	.loc 1 650 0
	movq	-8(%rbp), %rax	# ln, tmp194
	movl	48(%rax), %eax	# ln_95->wid, D.7092
	testl	%eax, %eax	# D.7092
	js	.L142	#,
	.loc 1 651 0
	movl	-48(%rbp), %eax	# wbest, tmp195
	cmpl	-40(%rbp), %eax	# k, tmp195
	jge	.L142	#,
	.loc 1 652 0
	movl	-40(%rbp), %eax	# k, tmp196
	movl	%eax, -48(%rbp)	# tmp196, wbest
.L142:
	.loc 1 638 0
	addl	$1, -44(%rbp)	#, i
.L138:
	.loc 1 638 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# lextree, tmp197
	movl	48(%rax), %eax	# lextree_25(D)->n_active, D.7092
	cmpl	-44(%rbp), %eax	# i, D.7092
	jg	.L143	#,
	jmp	.L129	#
.L137:
	.loc 1 656 0 is_stmt 1
	movl	$.LC6, %edx	#,
	movl	$656, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movl	-36(%rbp), %eax	# n_st, tmp198
	movl	%eax, %esi	# tmp198,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L129:
	.loc 1 659 0
	movq	-72(%rbp), %rax	# lextree, tmp199
	movl	-52(%rbp), %edx	# best, tmp200
	movl	%edx, 56(%rax)	# tmp200, lextree_25(D)->best
	.loc 1 660 0
	movq	-72(%rbp), %rax	# lextree, tmp201
	movl	-48(%rbp), %edx	# wbest, tmp202
	movl	%edx, 60(%rax)	# tmp202, lextree_25(D)->wbest
	.loc 1 662 0
	cmpq	$0, -104(%rbp)	#, fp
	je	.L144	#,
	.loc 1 663 0
	movq	-72(%rbp), %rax	# lextree, tmp203
	movl	48(%rax), %ecx	# lextree_25(D)->n_active, D.7092
	movl	-48(%rbp), %edi	# wbest, tmp204
	movl	-52(%rbp), %esi	# best, tmp205
	movl	-92(%rbp), %edx	# frm, tmp206
	movq	-104(%rbp), %rax	# fp, tmp207
	movl	%edi, %r9d	# tmp204,
	movl	%esi, %r8d	# tmp205,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp207,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 665 0
	movq	-104(%rbp), %rax	# fp, tmp208
	movq	%rax, %rdi	# tmp208,
	call	fflush	#
.L144:
	.loc 1 668 0
	movl	-52(%rbp), %eax	# best, D.7101
	.loc 1 669 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	lextree_hmm_eval, .-lextree_hmm_eval
	.globl	lextree_hmm_histbin
	.type	lextree_hmm_histbin, @function
lextree_hmm_histbin:
.LFB15:
	.loc 1 673 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# lextree, lextree
	movl	%esi, -76(%rbp)	# bestscr, bestscr
	movq	%rdx, -88(%rbp)	# bin, bin
	movl	%ecx, -80(%rbp)	# nbin, nbin
	movl	%r8d, -92(%rbp)	# bw, bw
	.loc 1 680 0
	movl	-80(%rbp), %eax	# nbin, tmp90
	cltq
	movl	$680, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7105,
	call	__ckd_calloc__	#
	movq	%rax, -48(%rbp)	# tmp91, binln
	.loc 1 682 0
	movq	-72(%rbp), %rax	# lextree, tmp92
	movq	32(%rax), %rax	# lextree_10(D)->active, tmp93
	movq	%rax, -40(%rbp)	# tmp93, list
	.loc 1 684 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L147	#
.L149:
	.loc 1 685 0
	movl	-64(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7105
	movq	-40(%rbp), %rax	# list, tmp95
	addq	%rdx, %rax	# D.7105, D.7107
	movq	(%rax), %rax	# *_16, tmp96
	movq	%rax, -32(%rbp)	# tmp96, ln
	.loc 1 686 0
	movq	-32(%rbp), %rax	# ln, tmp97
	movq	%rax, -24(%rbp)	# tmp97, hmm
	.loc 1 688 0
	movq	-24(%rbp), %rax	# hmm, tmp98
	movl	32(%rax), %eax	# hmm_18->bestscore, D.7106
	movl	-76(%rbp), %edx	# bestscr, tmp99
	subl	%eax, %edx	# D.7106, D.7106
	movl	%edx, %eax	# D.7106, D.7106
	cltd
	idivl	-92(%rbp)	# bw
	movl	%eax, -60(%rbp)	# tmp101, k
	.loc 1 689 0
	movl	-60(%rbp), %eax	# k, tmp103
	cmpl	-80(%rbp), %eax	# nbin, tmp103
	jl	.L148	#,
	.loc 1 690 0
	movl	-80(%rbp), %eax	# nbin, tmp107
	subl	$1, %eax	#, tmp106
	movl	%eax, -60(%rbp)	# tmp106, k
.L148:
	.loc 1 693 0
	movl	-60(%rbp), %eax	# k, tmp108
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7105
	movq	-88(%rbp), %rax	# bin, tmp109
	addq	%rdx, %rax	# D.7105, D.7108
	movl	(%rax), %edx	# *_28, D.7106
	addl	$1, %edx	#, D.7106
	movl	%edx, (%rax)	# D.7106, *_28
	.loc 1 694 0
	movl	-60(%rbp), %eax	# k, tmp110
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7105
	movq	-48(%rbp), %rax	# binln, tmp111
	leaq	(%rdx,%rax), %rbx	#, D.7109
	movl	-60(%rbp), %eax	# k, tmp112
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7105
	movq	-48(%rbp), %rax	# binln, tmp113
	addq	%rdx, %rax	# D.7105, D.7109
	movq	(%rax), %rax	# *_36, D.7110
	movq	-32(%rbp), %rdx	# ln, tmp114
	movq	%rdx, %rsi	# tmp114,
	movq	%rax, %rdi	# D.7110,
	call	glist_add_ptr	#
	movq	%rax, (%rbx)	# D.7110, *_33
	.loc 1 684 0
	addl	$1, -64(%rbp)	#, i
.L147:
	.loc 1 684 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# lextree, tmp115
	movl	48(%rax), %eax	# lextree_10(D)->n_active, D.7106
	cmpl	-64(%rbp), %eax	# i, D.7106
	jg	.L149	#,
	.loc 1 698 0 is_stmt 1
	movl	$0, -60(%rbp)	#, k
	.loc 1 699 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L150	#
.L153:
	.loc 1 700 0
	movl	-64(%rbp), %eax	# i, tmp116
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7105
	movq	-48(%rbp), %rax	# binln, tmp117
	addq	%rdx, %rax	# D.7105, D.7109
	movq	(%rax), %rax	# *_44, tmp118
	movq	%rax, -56(%rbp)	# tmp118, gn
	jmp	.L151	#
.L152:
	.loc 1 701 0 discriminator 2
	movq	-56(%rbp), %rax	# gn, tmp119
	movq	(%rax), %rax	# gn_6->data.ptr, tmp120
	movq	%rax, -32(%rbp)	# tmp120, ln
	.loc 1 702 0 discriminator 2
	movl	-60(%rbp), %eax	# k, k.3
	leal	1(%rax), %edx	#, tmp121
	movl	%edx, -60(%rbp)	# tmp121, k
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7105
	movq	-40(%rbp), %rax	# list, tmp122
	addq	%rax, %rdx	# tmp122, D.7107
	movq	-32(%rbp), %rax	# ln, tmp123
	movq	%rax, (%rdx)	# tmp123, *_51
	.loc 1 700 0 discriminator 2
	movq	-56(%rbp), %rax	# gn, tmp124
	movq	8(%rax), %rax	# gn_6->next, tmp125
	movq	%rax, -56(%rbp)	# tmp125, gn
.L151:
	.loc 1 700 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, gn
	jne	.L152	#,
	.loc 1 704 0 is_stmt 1
	movl	-64(%rbp), %eax	# i, tmp126
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7105
	movq	-48(%rbp), %rax	# binln, tmp127
	addq	%rdx, %rax	# D.7105, D.7109
	movq	(%rax), %rax	# *_55, D.7110
	movq	%rax, %rdi	# D.7110,
	call	glist_free	#
	.loc 1 699 0
	addl	$1, -64(%rbp)	#, i
.L150:
	.loc 1 699 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# i, tmp128
	cmpl	-80(%rbp), %eax	# nbin, tmp128
	jl	.L153	#,
	.loc 1 708 0 is_stmt 1
	movq	-48(%rbp), %rax	# binln, tmp129
	movq	%rax, %rdi	# tmp129,
	call	ckd_free	#
	.loc 1 709 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	lextree_hmm_histbin, .-lextree_hmm_histbin
	.section	.rodata
	.align 8
.LC9:
	.string	"Hmm->out.history equals to -1 with score %d and active idx %d, lextree->type\n"
	.text
	.globl	lextree_hmm_propagate
	.type	lextree_hmm_propagate, @function
lextree_hmm_propagate:
.LFB16:
	.loc 1 714 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -88(%rbp)	# lextree, lextree
	movq	%rsi, -96(%rbp)	# kbc, kbc
	movq	%rdx, -104(%rbp)	# vh, vh
	movl	%ecx, -108(%rbp)	# cf, cf
	movl	%r8d, -112(%rbp)	# th, th
	movl	%r9d, -116(%rbp)	# pth, pth
	.loc 1 727 0
	movq	-96(%rbp), %rax	# kbc, tmp117
	movq	8(%rax), %rax	# kbc_12(D)->mdef, tmp118
	movq	%rax, -48(%rbp)	# tmp118, mdef
	.loc 1 729 0
	movl	-108(%rbp), %eax	# cf, tmp122
	addl	$1, %eax	#, tmp121
	movl	%eax, -68(%rbp)	# tmp121, nf
	.loc 1 731 0
	movq	-88(%rbp), %rax	# lextree, tmp123
	movq	32(%rax), %rax	# lextree_16(D)->active, tmp124
	movq	%rax, -40(%rbp)	# tmp124, list
	.loc 1 733 0
	movq	-88(%rbp), %rax	# lextree, tmp125
	movl	52(%rax), %eax	# lextree_16(D)->n_next_active, tmp126
	movl	%eax, -76(%rbp)	# tmp126, n
	.loc 1 735 0
	movl	$0, -80(%rbp)	#, i
	jmp	.L155	#
.L172:
	.loc 1 736 0
	movl	-80(%rbp), %eax	# i, tmp127
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7112
	movq	-40(%rbp), %rax	# list, tmp128
	addq	%rdx, %rax	# D.7112, D.7113
	movq	(%rax), %rax	# *_24, tmp129
	movq	%rax, -32(%rbp)	# tmp129, ln
	.loc 1 737 0
	movq	-32(%rbp), %rax	# ln, tmp130
	movq	%rax, -24(%rbp)	# tmp130, hmm
	.loc 1 739 0
	movq	-32(%rbp), %rax	# ln, tmp131
	movzwl	74(%rax), %eax	# ln_25->frame, D.7114
	cwtl
	cmpl	-68(%rbp), %eax	# nf, D.7111
	jge	.L156	#,
	.loc 1 740 0
	movq	-24(%rbp), %rax	# hmm, tmp132
	movl	32(%rax), %eax	# hmm_26->bestscore, D.7111
	cmpl	-112(%rbp), %eax	# th, D.7111
	jl	.L157	#,
	.loc 1 741 0
	movl	-68(%rbp), %eax	# nf, tmp133
	movl	%eax, %edx	# tmp133, D.7114
	movq	-32(%rbp), %rax	# ln, tmp134
	movw	%dx, 74(%rax)	# D.7114, ln_25->frame
	.loc 1 742 0
	movq	-88(%rbp), %rax	# lextree, tmp135
	movq	40(%rax), %rcx	# lextree_16(D)->next_active, D.7113
	movl	-76(%rbp), %eax	# n, n.4
	leal	1(%rax), %edx	#, tmp136
	movl	%edx, -76(%rbp)	# tmp136, n
	cltq
	salq	$3, %rax	#, D.7112
	leaq	(%rcx,%rax), %rdx	#, D.7113
	movq	-32(%rbp), %rax	# ln, tmp137
	movq	%rax, (%rdx)	# tmp137, *_37
	jmp	.L156	#
.L157:
	.loc 1 744 0
	movq	-32(%rbp), %rax	# ln, tmp138
	movw	$-1, 74(%rax)	#, ln_25->frame
	.loc 1 745 0
	movq	-48(%rbp), %rax	# mdef, tmp139
	movl	8(%rax), %edx	# mdef_13->n_emit_state, D.7111
	movq	-24(%rbp), %rax	# hmm, tmp140
	movl	%edx, %esi	# D.7111,
	movq	%rax, %rdi	# tmp140,
	call	hmm_clear	#
.L156:
	.loc 1 749 0
	movq	-32(%rbp), %rax	# ln, tmp141
	movl	48(%rax), %eax	# ln_25->wid, D.7111
	testl	%eax, %eax	# D.7111
	jns	.L158	#,
	.loc 1 754 0
	movq	-24(%rbp), %rax	# hmm, tmp142
	movl	16(%rax), %eax	# hmm_26->out.score, D.7111
	cmpl	-116(%rbp), %eax	# pth, D.7111
	jge	.L159	#,
	.loc 1 755 0
	jmp	.L160	#
.L159:
	.loc 1 757 0
	cmpl	$0, 40(%rbp)	#, heur_type
	jle	.L161	#,
	.loc 1 758 0
	movl	lastfrm.6187(%rip), %eax	# lastfrm, lastfrm.5
	cmpl	%eax, -108(%rbp)	# lastfrm.5, cf
	je	.L162	#,
	.loc 1 759 0
	movl	-108(%rbp), %eax	# cf, tmp143
	movl	%eax, lastfrm.6187(%rip)	# tmp143, lastfrm
	.loc 1 760 0
	movl	$-2147483648, maxNewHeurScore.6186(%rip)	#, maxNewHeurScore
.L162:
	.loc 1 762 0
	movq	-32(%rbp), %rax	# ln, tmp144
	movq	40(%rax), %rax	# ln_25->children, tmp145
	movq	%rax, -56(%rbp)	# tmp145, gn
	jmp	.L163	#
.L165:
	.loc 1 763 0
	movq	-56(%rbp), %rax	# gn, tmp146
	movq	(%rax), %rax	# gn_1->data.ptr, tmp147
	movq	%rax, -16(%rbp)	# tmp147, ln2
	.loc 1 765 0
	movq	-24(%rbp), %rax	# hmm, tmp148
	movl	16(%rax), %edx	# hmm_26->out.score, D.7111
	movq	-16(%rbp), %rax	# ln2, tmp149
	movl	52(%rax), %ecx	# ln2_45->prob, D.7111
	movq	-32(%rbp), %rax	# ln, tmp150
	movl	52(%rax), %eax	# ln_25->prob, D.7111
	subl	%eax, %ecx	# D.7111, D.7111
	movl	%ecx, %eax	# D.7111, D.7111
	addl	%eax, %edx	# D.7111, D.7111
	movq	-16(%rbp), %rax	# ln2, tmp151
	movzbl	72(%rax), %eax	# ln2_45->ci, D.7115
	movsbq	%al, %rax	# D.7115, D.7112
	leaq	0(,%rax,4), %rcx	#, D.7112
	movq	24(%rbp), %rax	# phn_heur_list, tmp152
	addq	%rcx, %rax	# D.7112, D.7116
	movl	(%rax), %eax	# *_55, D.7111
	addl	%edx, %eax	# D.7111, tmp153
	movl	%eax, -64(%rbp)	# tmp153, newHeurScore
	.loc 1 766 0
	movl	maxNewHeurScore.6186(%rip), %eax	# maxNewHeurScore, maxNewHeurScore.6
	cmpl	-64(%rbp), %eax	# newHeurScore, maxNewHeurScore.6
	jge	.L164	#,
	.loc 1 766 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# newHeurScore, tmp154
	movl	%eax, maxNewHeurScore.6186(%rip)	# tmp154, maxNewHeurScore
.L164:
	.loc 1 762 0 is_stmt 1
	movq	-56(%rbp), %rax	# gn, tmp155
	movq	8(%rax), %rax	# gn_1->next, tmp156
	movq	%rax, -56(%rbp)	# tmp156, gn
.L163:
	.loc 1 762 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, gn
	jne	.L165	#,
	.loc 1 768 0 is_stmt 1
	movl	maxNewHeurScore.6186(%rip), %edx	# maxNewHeurScore, maxNewHeurScore.7
	movl	32(%rbp), %eax	# heur_beam, tmp160
	addl	%edx, %eax	# maxNewHeurScore.7, tmp159
	movl	%eax, -72(%rbp)	# tmp159, hth
.L161:
	.loc 1 772 0
	movq	-32(%rbp), %rax	# ln, tmp161
	movq	40(%rax), %rax	# ln_25->children, tmp162
	movq	%rax, -56(%rbp)	# tmp162, gn
	jmp	.L166	#
.L169:
	.loc 1 773 0
	movq	-56(%rbp), %rax	# gn, tmp163
	movq	(%rax), %rax	# gn_2->data.ptr, tmp164
	movq	%rax, -16(%rbp)	# tmp164, ln2
	.loc 1 774 0
	movq	-16(%rbp), %rax	# ln2, tmp165
	movq	%rax, -8(%rbp)	# tmp165, hmm2
	.loc 1 776 0
	movq	-24(%rbp), %rax	# hmm, tmp166
	movl	16(%rax), %edx	# hmm_26->out.score, D.7111
	movq	-16(%rbp), %rax	# ln2, tmp167
	movl	52(%rax), %ecx	# ln2_64->prob, D.7111
	movq	-32(%rbp), %rax	# ln, tmp168
	movl	52(%rax), %eax	# ln_25->prob, D.7111
	subl	%eax, %ecx	# D.7111, D.7111
	movl	%ecx, %eax	# D.7111, D.7111
	addl	%edx, %eax	# D.7111, tmp169
	movl	%eax, -60(%rbp)	# tmp169, newscore
	.loc 1 777 0
	movq	-16(%rbp), %rax	# ln2, tmp170
	movzbl	72(%rax), %eax	# ln2_64->ci, D.7115
	movsbq	%al, %rax	# D.7115, D.7112
	leaq	0(,%rax,4), %rdx	#, D.7112
	movq	24(%rbp), %rax	# phn_heur_list, tmp171
	addq	%rdx, %rax	# D.7112, D.7116
	movl	(%rax), %edx	# *_74, D.7111
	movl	-60(%rbp), %eax	# newscore, tmp175
	addl	%edx, %eax	# D.7111, tmp174
	movl	%eax, -64(%rbp)	# tmp174, newHeurScore
	.loc 1 783 0
	cmpl	$0, 40(%rbp)	#, heur_type
	je	.L167	#,
	.loc 1 783 0 is_stmt 0 discriminator 1
	cmpl	$0, 40(%rbp)	#, heur_type
	jle	.L168	#,
	.loc 1 785 0 is_stmt 1
	movl	-64(%rbp), %eax	# newHeurScore, tmp176
	cmpl	-72(%rbp), %eax	# hth, tmp176
	jl	.L168	#,
.L167:
	.loc 1 785 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# newscore, tmp177
	cmpl	-112(%rbp), %eax	# th, tmp177
	jl	.L168	#,
	.loc 1 789 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm2, tmp178
	movl	8(%rax), %eax	# hmm2_65->in.score, D.7111
	.loc 1 787 0
	cmpl	-60(%rbp), %eax	# newscore, D.7111
	jge	.L168	#,
	.loc 1 791 0
	movq	-8(%rbp), %rax	# hmm2, tmp179
	movl	-60(%rbp), %edx	# newscore, tmp180
	movl	%edx, 8(%rax)	# tmp180, hmm2_65->in.score
	.loc 1 792 0
	movq	-24(%rbp), %rax	# hmm, tmp181
	movl	20(%rax), %edx	# hmm_26->out.history, D.7111
	movq	-8(%rbp), %rax	# hmm2, tmp182
	movl	%edx, 12(%rax)	# D.7111, hmm2_65->in.history
	.loc 1 794 0
	movq	-16(%rbp), %rax	# ln2, tmp183
	movzwl	74(%rax), %eax	# ln2_64->frame, D.7114
	cwtl
	cmpl	-68(%rbp), %eax	# nf, D.7111
	je	.L168	#,
	.loc 1 795 0
	movl	-68(%rbp), %eax	# nf, tmp184
	movl	%eax, %edx	# tmp184, D.7114
	movq	-16(%rbp), %rax	# ln2, tmp185
	movw	%dx, 74(%rax)	# D.7114, ln2_64->frame
	.loc 1 796 0
	movq	-88(%rbp), %rax	# lextree, tmp186
	movq	40(%rax), %rcx	# lextree_16(D)->next_active, D.7113
	movl	-76(%rbp), %eax	# n, n.8
	leal	1(%rax), %edx	#, tmp187
	movl	%edx, -76(%rbp)	# tmp187, n
	cltq
	salq	$3, %rax	#, D.7112
	leaq	(%rcx,%rax), %rdx	#, D.7113
	movq	-16(%rbp), %rax	# ln2, tmp188
	movq	%rax, (%rdx)	# tmp188, *_87
.L168:
	.loc 1 772 0
	movq	-56(%rbp), %rax	# gn, tmp189
	movq	8(%rax), %rax	# gn_2->next, tmp190
	movq	%rax, -56(%rbp)	# tmp190, gn
.L166:
	.loc 1 772 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, gn
	jne	.L169	#,
	jmp	.L160	#
.L158:
	.loc 1 801 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp191
	movl	16(%rax), %eax	# hmm_26->out.score, D.7111
	cmpl	16(%rbp), %eax	# wth, D.7111
	jge	.L170	#,
	.loc 1 802 0
	jmp	.L160	#
.L170:
	.loc 1 804 0
	movq	-24(%rbp), %rax	# hmm, tmp192
	movl	20(%rax), %eax	# hmm_26->out.history, D.7111
	cmpl	$-1, %eax	#, D.7111
	jne	.L171	#,
	.loc 1 805 0
	movl	$.LC1, %edx	#,
	movl	$805, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movq	-88(%rbp), %rax	# lextree, tmp193
	movl	(%rax), %ecx	# lextree_16(D)->type, D.7111
	movq	-24(%rbp), %rax	# hmm, tmp194
	movl	16(%rax), %eax	# hmm_26->out.score, D.7111
	movl	-80(%rbp), %edx	# i, tmp195
	movl	%eax, %esi	# D.7111,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
.L171:
	.loc 1 808 0
	movq	-88(%rbp), %rax	# lextree, tmp196
	movl	(%rax), %edi	# lextree_16(D)->type, D.7111
	movq	-24(%rbp), %rax	# hmm, tmp197
	movl	20(%rax), %r8d	# hmm_26->out.history, D.7111
	.loc 1 809 0
	movq	-24(%rbp), %rax	# hmm, tmp198
	movl	16(%rax), %edx	# hmm_26->out.score, D.7111
	movq	-32(%rbp), %rax	# ln, tmp199
	movl	52(%rax), %eax	# ln_25->prob, D.7111
	.loc 1 808 0
	subl	%eax, %edx	# D.7111, D.7111
	movl	%edx, %r10d	# D.7111, D.7111
	movq	-32(%rbp), %rax	# ln, tmp200
	movl	48(%rax), %edx	# ln_25->wid, D.7111
	movl	-108(%rbp), %ecx	# cf, tmp201
	movq	-96(%rbp), %rsi	# kbc, tmp202
	movq	-104(%rbp), %rax	# vh, tmp203
	movl	%edi, (%rsp)	# D.7111,
	movl	%r8d, %r9d	# D.7111,
	movl	%r10d, %r8d	# D.7111,
	movq	%rax, %rdi	# tmp203,
	call	vithist_rescore	#
.L160:
	.loc 1 735 0
	addl	$1, -80(%rbp)	#, i
.L155:
	.loc 1 735 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# lextree, tmp204
	movl	48(%rax), %eax	# lextree_16(D)->n_active, D.7111
	cmpl	-80(%rbp), %eax	# i, D.7111
	jg	.L172	#,
	.loc 1 813 0 is_stmt 1
	movq	-88(%rbp), %rax	# lextree, tmp205
	movl	-76(%rbp), %edx	# n, tmp206
	movl	%edx, 52(%rax)	# tmp206, lextree_16(D)->n_next_active
	.loc 1 814 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	lextree_hmm_propagate, .-lextree_hmm_propagate
	.data
	.align 4
	.type	lastfrm.6187, @object
	.size	lastfrm.6187, 4
lastfrm.6187:
	.long	-1
	.align 4
	.type	maxNewHeurScore.6186, @object
	.size	maxNewHeurScore.6186, 4
maxNewHeurScore.6186:
	.long	-2147483648
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "./libutil/bitvec.h"
	.file 8 "./libutil/glist.h"
	.file 9 "./libutil/hash.h"
	.file 10 "feat.h"
	.file 11 "cont_mgau.h"
	.file 12 "s3types.h"
	.file 13 "mdef.h"
	.file 14 "dict.h"
	.file 15 "dict2pid.h"
	.file 16 "fillpen.h"
	.file 17 "lmclass.h"
	.file 18 "lm.h"
	.file 19 "tmat.h"
	.file 20 "vector.h"
	.file 21 "subvq.h"
	.file 22 "gs.h"
	.file 23 "kbcore.h"
	.file 24 "hmm.h"
	.file 25 "vithist.h"
	.file 26 "ascr.h"
	.file 27 "lextree.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x209d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF343
	.byte	0x1
	.long	.LASF344
	.long	.LASF345
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
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x30
	.long	0xa7
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x228
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x109
	.long	0x260
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x10b
	.long	0x266
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x119
	.long	0x26c
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x11d
	.long	0x27c
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x137
	.long	0x282
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF346
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x260
	.uleb128 0x8
	.long	.LASF44
	.byte	0x5
	.byte	0xa2
	.long	0x260
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0xa3
	.long	0x266
	.byte	0x8
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22f
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0xb
	.long	0x95
	.long	0x27c
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x228
	.uleb128 0xb
	.long	0x95
	.long	0x292
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x298
	.uleb128 0xd
	.long	0x95
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF50
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x3f
	.long	0x62
	.uleb128 0x2
	.long	.LASF52
	.byte	0x6
	.byte	0x40
	.long	0x5b
	.uleb128 0x2
	.long	.LASF53
	.byte	0x6
	.byte	0x41
	.long	0x95
	.uleb128 0x2
	.long	.LASF54
	.byte	0x6
	.byte	0x42
	.long	0x4d
	.uleb128 0x2
	.long	.LASF55
	.byte	0x6
	.byte	0x43
	.long	0x46
	.uleb128 0x2
	.long	.LASF56
	.byte	0x6
	.byte	0x44
	.long	0x3f
	.uleb128 0x2
	.long	.LASF57
	.byte	0x6
	.byte	0x45
	.long	0x2ab
	.uleb128 0x2
	.long	.LASF58
	.byte	0x6
	.byte	0x46
	.long	0x2b2
	.uleb128 0xe
	.long	.LASF347
	.byte	0x8
	.byte	0x6
	.byte	0x48
	.long	0x355
	.uleb128 0xf
	.string	"ptr"
	.byte	0x6
	.byte	0x49
	.long	0x8d
	.uleb128 0x10
	.long	.LASF51
	.byte	0x6
	.byte	0x4a
	.long	0x2b9
	.uleb128 0x10
	.long	.LASF54
	.byte	0x6
	.byte	0x4b
	.long	0x2da
	.uleb128 0x10
	.long	.LASF57
	.byte	0x6
	.byte	0x4c
	.long	0x2fb
	.uleb128 0x10
	.long	.LASF58
	.byte	0x6
	.byte	0x4d
	.long	0x306
	.byte	0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x6
	.byte	0x4e
	.long	0x311
	.uleb128 0x2
	.long	.LASF60
	.byte	0x7
	.byte	0x43
	.long	0x36b
	.uleb128 0x6
	.byte	0x8
	.long	0x2da
	.uleb128 0x7
	.long	.LASF61
	.byte	0x10
	.byte	0x8
	.byte	0x4c
	.long	0x396
	.uleb128 0x8
	.long	.LASF62
	.byte	0x8
	.byte	0x4d
	.long	0x355
	.byte	0
	.uleb128 0x8
	.long	.LASF63
	.byte	0x8
	.byte	0x4e
	.long	0x396
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x371
	.uleb128 0x2
	.long	.LASF64
	.byte	0x8
	.byte	0x4f
	.long	0x371
	.uleb128 0x2
	.long	.LASF65
	.byte	0x8
	.byte	0x50
	.long	0x3b2
	.uleb128 0x6
	.byte	0x8
	.long	0x39c
	.uleb128 0x7
	.long	.LASF66
	.byte	0x18
	.byte	0x9
	.byte	0x58
	.long	0x3f5
	.uleb128 0x11
	.string	"key"
	.byte	0x9
	.byte	0x59
	.long	0x292
	.byte	0
	.uleb128 0x11
	.string	"len"
	.byte	0x9
	.byte	0x5c
	.long	0x2b9
	.byte	0x8
	.uleb128 0x11
	.string	"val"
	.byte	0x9
	.byte	0x5e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF63
	.byte	0x9
	.byte	0x5f
	.long	0x3f5
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3b8
	.uleb128 0x2
	.long	.LASF67
	.byte	0x9
	.byte	0x60
	.long	0x3b8
	.uleb128 0x12
	.byte	0x10
	.byte	0x9
	.byte	0x62
	.long	0x433
	.uleb128 0x8
	.long	.LASF68
	.byte	0x9
	.byte	0x63
	.long	0x433
	.byte	0
	.uleb128 0x8
	.long	.LASF69
	.byte	0x9
	.byte	0x64
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF70
	.byte	0x9
	.byte	0x67
	.long	0x2f0
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3fb
	.uleb128 0x2
	.long	.LASF71
	.byte	0x9
	.byte	0x68
	.long	0x406
	.uleb128 0x7
	.long	.LASF72
	.byte	0x38
	.byte	0xa
	.byte	0x48
	.long	0x4c9
	.uleb128 0x8
	.long	.LASF73
	.byte	0xa
	.byte	0x49
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF74
	.byte	0xa
	.byte	0x4a
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF75
	.byte	0xa
	.byte	0x4b
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF76
	.byte	0xa
	.byte	0x4c
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF77
	.byte	0xa
	.byte	0x4d
	.long	0x4c9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF78
	.byte	0xa
	.byte	0x4e
	.long	0x2b9
	.byte	0x20
	.uleb128 0x11
	.string	"cmn"
	.byte	0xa
	.byte	0x50
	.long	0x2b9
	.byte	0x24
	.uleb128 0x8
	.long	.LASF79
	.byte	0xa
	.byte	0x51
	.long	0x2b9
	.byte	0x28
	.uleb128 0x11
	.string	"agc"
	.byte	0xa
	.byte	0x53
	.long	0x2b9
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF80
	.byte	0xa
	.byte	0x54
	.long	0x4f6
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b9
	.uleb128 0x13
	.long	0x4e4
	.uleb128 0x14
	.long	0x4e4
	.uleb128 0x14
	.long	0x4ea
	.uleb128 0x14
	.long	0x4ea
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x444
	.uleb128 0x6
	.byte	0x8
	.long	0x4f0
	.uleb128 0x6
	.byte	0x8
	.long	0x2fb
	.uleb128 0x6
	.byte	0x8
	.long	0x4cf
	.uleb128 0x2
	.long	.LASF81
	.byte	0xa
	.byte	0x5a
	.long	0x444
	.uleb128 0x12
	.byte	0x28
	.byte	0xb
	.byte	0x5f
	.long	0x54c
	.uleb128 0x8
	.long	.LASF82
	.byte	0xb
	.byte	0x60
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF83
	.byte	0xb
	.byte	0x62
	.long	0x4ea
	.byte	0x8
	.uleb128 0x11
	.string	"var"
	.byte	0xb
	.byte	0x63
	.long	0x4ea
	.byte	0x10
	.uleb128 0x11
	.string	"lrd"
	.byte	0xb
	.byte	0x66
	.long	0x4f0
	.byte	0x18
	.uleb128 0x8
	.long	.LASF84
	.byte	0xb
	.byte	0x69
	.long	0x4c9
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF85
	.byte	0xb
	.byte	0x6c
	.long	0x507
	.uleb128 0x12
	.byte	0x30
	.byte	0xb
	.byte	0x74
	.long	0x5c0
	.uleb128 0x8
	.long	.LASF86
	.byte	0xb
	.byte	0x75
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF87
	.byte	0xb
	.byte	0x76
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF88
	.byte	0xb
	.byte	0x77
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0xb
	.byte	0x78
	.long	0x5c0
	.byte	0x10
	.uleb128 0x8
	.long	.LASF90
	.byte	0xb
	.byte	0x79
	.long	0x306
	.byte	0x18
	.uleb128 0x8
	.long	.LASF91
	.byte	0xb
	.byte	0x7c
	.long	0x2b9
	.byte	0x20
	.uleb128 0x8
	.long	.LASF92
	.byte	0xb
	.byte	0x7d
	.long	0x2b9
	.byte	0x24
	.uleb128 0x8
	.long	.LASF93
	.byte	0xb
	.byte	0x7e
	.long	0x2b9
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x54c
	.uleb128 0x2
	.long	.LASF94
	.byte	0xb
	.byte	0x81
	.long	0x557
	.uleb128 0x2
	.long	.LASF95
	.byte	0xc
	.byte	0x4b
	.long	0x2cf
	.uleb128 0x2
	.long	.LASF96
	.byte	0xc
	.byte	0x51
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF97
	.byte	0xc
	.byte	0x57
	.long	0x5dc
	.uleb128 0x2
	.long	.LASF98
	.byte	0xc
	.byte	0x5d
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF99
	.byte	0xc
	.byte	0x63
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF100
	.byte	0xc
	.byte	0x69
	.long	0x2e5
	.uleb128 0x2
	.long	.LASF101
	.byte	0xc
	.byte	0x75
	.long	0x2c4
	.uleb128 0x2
	.long	.LASF102
	.byte	0xc
	.byte	0x7b
	.long	0x2c4
	.uleb128 0x15
	.byte	0x4
	.byte	0xd
	.byte	0x48
	.long	0x650
	.uleb128 0x16
	.long	.LASF103
	.sleb128 0
	.uleb128 0x16
	.long	.LASF104
	.sleb128 1
	.uleb128 0x16
	.long	.LASF105
	.sleb128 2
	.uleb128 0x16
	.long	.LASF106
	.sleb128 3
	.uleb128 0x16
	.long	.LASF107
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.long	.LASF108
	.byte	0xd
	.byte	0x4e
	.long	0x629
	.uleb128 0x12
	.byte	0x10
	.byte	0xd
	.byte	0x54
	.long	0x67c
	.uleb128 0x8
	.long	.LASF73
	.byte	0xd
	.byte	0x55
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF109
	.byte	0xd
	.byte	0x56
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF110
	.byte	0xd
	.byte	0x58
	.long	0x65b
	.uleb128 0x12
	.byte	0x10
	.byte	0xd
	.byte	0x5e
	.long	0x6d5
	.uleb128 0x8
	.long	.LASF111
	.byte	0xd
	.byte	0x5f
	.long	0x5e7
	.byte	0
	.uleb128 0x8
	.long	.LASF112
	.byte	0xd
	.byte	0x62
	.long	0x5f2
	.byte	0x4
	.uleb128 0x11
	.string	"ci"
	.byte	0xd
	.byte	0x63
	.long	0x5d1
	.byte	0x8
	.uleb128 0x11
	.string	"lc"
	.byte	0xd
	.byte	0x63
	.long	0x5d1
	.byte	0x9
	.uleb128 0x11
	.string	"rc"
	.byte	0xd
	.byte	0x63
	.long	0x5d1
	.byte	0xa
	.uleb128 0x8
	.long	.LASF113
	.byte	0xd
	.byte	0x64
	.long	0x650
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF114
	.byte	0xd
	.byte	0x65
	.long	0x687
	.uleb128 0x7
	.long	.LASF115
	.byte	0x10
	.byte	0xd
	.byte	0x6c
	.long	0x710
	.uleb128 0x11
	.string	"rc"
	.byte	0xd
	.byte	0x6d
	.long	0x5d1
	.byte	0
	.uleb128 0x11
	.string	"pid"
	.byte	0xd
	.byte	0x6e
	.long	0x5dc
	.byte	0x4
	.uleb128 0x8
	.long	.LASF63
	.byte	0xd
	.byte	0x6f
	.long	0x710
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6e0
	.uleb128 0x2
	.long	.LASF116
	.byte	0xd
	.byte	0x70
	.long	0x6e0
	.uleb128 0x7
	.long	.LASF117
	.byte	0x18
	.byte	0xd
	.byte	0x72
	.long	0x751
	.uleb128 0x11
	.string	"lc"
	.byte	0xd
	.byte	0x73
	.long	0x5d1
	.byte	0
	.uleb128 0x8
	.long	.LASF118
	.byte	0xd
	.byte	0x74
	.long	0x751
	.byte	0x8
	.uleb128 0x8
	.long	.LASF63
	.byte	0xd
	.byte	0x75
	.long	0x757
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x716
	.uleb128 0x6
	.byte	0x8
	.long	0x721
	.uleb128 0x2
	.long	.LASF119
	.byte	0xd
	.byte	0x76
	.long	0x721
	.uleb128 0x12
	.byte	0x68
	.byte	0xd
	.byte	0x7a
	.long	0x831
	.uleb128 0x8
	.long	.LASF120
	.byte	0xd
	.byte	0x7b
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF121
	.byte	0xd
	.byte	0x7c
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF122
	.byte	0xd
	.byte	0x7d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF123
	.byte	0xd
	.byte	0x7e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF124
	.byte	0xd
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF125
	.byte	0xd
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF126
	.byte	0xd
	.byte	0x82
	.long	0x831
	.byte	0x18
	.uleb128 0x8
	.long	.LASF127
	.byte	0xd
	.byte	0x83
	.long	0x837
	.byte	0x20
	.uleb128 0x8
	.long	.LASF128
	.byte	0xd
	.byte	0x84
	.long	0x83d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF129
	.byte	0xd
	.byte	0x85
	.long	0x843
	.byte	0x30
	.uleb128 0x8
	.long	.LASF130
	.byte	0xd
	.byte	0x87
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF131
	.byte	0xd
	.byte	0x89
	.long	0x849
	.byte	0x40
	.uleb128 0x8
	.long	.LASF132
	.byte	0xd
	.byte	0x8c
	.long	0x84f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF133
	.byte	0xd
	.byte	0x8d
	.long	0x4c9
	.byte	0x50
	.uleb128 0x11
	.string	"sil"
	.byte	0xd
	.byte	0x8f
	.long	0x5d1
	.byte	0x58
	.uleb128 0x8
	.long	.LASF134
	.byte	0xd
	.byte	0x91
	.long	0x855
	.byte	0x60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x439
	.uleb128 0x6
	.byte	0x8
	.long	0x67c
	.uleb128 0x6
	.byte	0x8
	.long	0x6d5
	.uleb128 0x6
	.byte	0x8
	.long	0x849
	.uleb128 0x6
	.byte	0x8
	.long	0x61e
	.uleb128 0x6
	.byte	0x8
	.long	0x5d1
	.uleb128 0x6
	.byte	0x8
	.long	0x85b
	.uleb128 0x6
	.byte	0x8
	.long	0x861
	.uleb128 0x6
	.byte	0x8
	.long	0x75d
	.uleb128 0x2
	.long	.LASF135
	.byte	0xd
	.byte	0x96
	.long	0x768
	.uleb128 0x12
	.byte	0x28
	.byte	0xe
	.byte	0x47
	.long	0x8cf
	.uleb128 0x8
	.long	.LASF136
	.byte	0xe
	.byte	0x48
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF127
	.byte	0xe
	.byte	0x49
	.long	0x84f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF137
	.byte	0xe
	.byte	0x4a
	.long	0x2b9
	.byte	0x10
	.uleb128 0x11
	.string	"alt"
	.byte	0xe
	.byte	0x4b
	.long	0x5fd
	.byte	0x14
	.uleb128 0x8
	.long	.LASF138
	.byte	0xe
	.byte	0x4c
	.long	0x5fd
	.byte	0x18
	.uleb128 0x8
	.long	.LASF82
	.byte	0xe
	.byte	0x4d
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF139
	.byte	0xe
	.byte	0x51
	.long	0x8cf
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5fd
	.uleb128 0x2
	.long	.LASF140
	.byte	0xe
	.byte	0x52
	.long	0x872
	.uleb128 0x12
	.byte	0x58
	.byte	0xe
	.byte	0x54
	.long	0x990
	.uleb128 0x8
	.long	.LASF141
	.byte	0xe
	.byte	0x55
	.long	0x990
	.byte	0
	.uleb128 0x11
	.string	"pht"
	.byte	0xe
	.byte	0x56
	.long	0x831
	.byte	0x8
	.uleb128 0x8
	.long	.LASF142
	.byte	0xe
	.byte	0x57
	.long	0x996
	.byte	0x10
	.uleb128 0x8
	.long	.LASF120
	.byte	0xe
	.byte	0x58
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF136
	.byte	0xe
	.byte	0x59
	.long	0x99c
	.byte	0x20
	.uleb128 0x11
	.string	"ht"
	.byte	0xe
	.byte	0x5a
	.long	0x831
	.byte	0x28
	.uleb128 0x8
	.long	.LASF143
	.byte	0xe
	.byte	0x5b
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF144
	.byte	0xe
	.byte	0x5c
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF145
	.byte	0xe
	.byte	0x5d
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF146
	.byte	0xe
	.byte	0x5e
	.long	0x2b9
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF147
	.byte	0xe
	.byte	0x5f
	.long	0x8cf
	.byte	0x40
	.uleb128 0x8
	.long	.LASF148
	.byte	0xe
	.byte	0x62
	.long	0x5fd
	.byte	0x48
	.uleb128 0x8
	.long	.LASF149
	.byte	0xe
	.byte	0x63
	.long	0x5fd
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF150
	.byte	0xe
	.byte	0x64
	.long	0x5fd
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x867
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0x8d5
	.uleb128 0x2
	.long	.LASF151
	.byte	0xe
	.byte	0x65
	.long	0x8e0
	.uleb128 0x12
	.byte	0x38
	.byte	0xf
	.byte	0x63
	.long	0xa16
	.uleb128 0x8
	.long	.LASF152
	.byte	0xf
	.byte	0x64
	.long	0xa16
	.byte	0
	.uleb128 0x8
	.long	.LASF153
	.byte	0xf
	.byte	0x67
	.long	0xa22
	.byte	0x8
	.uleb128 0x8
	.long	.LASF154
	.byte	0xf
	.byte	0x69
	.long	0xa16
	.byte	0x10
	.uleb128 0x8
	.long	.LASF155
	.byte	0xf
	.byte	0x6c
	.long	0x843
	.byte	0x18
	.uleb128 0x8
	.long	.LASF156
	.byte	0xf
	.byte	0x6e
	.long	0x843
	.byte	0x20
	.uleb128 0x8
	.long	.LASF157
	.byte	0xf
	.byte	0x70
	.long	0x4c9
	.byte	0x28
	.uleb128 0x8
	.long	.LASF158
	.byte	0xf
	.byte	0x72
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF159
	.byte	0xf
	.byte	0x73
	.long	0x2b9
	.byte	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa1c
	.uleb128 0x6
	.byte	0x8
	.long	0x5e7
	.uleb128 0x6
	.byte	0x8
	.long	0xa16
	.uleb128 0x2
	.long	.LASF160
	.byte	0xf
	.byte	0x74
	.long	0x9ad
	.uleb128 0x12
	.byte	0x20
	.byte	0x10
	.byte	0x3e
	.long	0xa6b
	.uleb128 0x8
	.long	.LASF161
	.byte	0x10
	.byte	0x3f
	.long	0xa6b
	.byte	0
	.uleb128 0x8
	.long	.LASF162
	.byte	0x10
	.byte	0x41
	.long	0x4c9
	.byte	0x8
	.uleb128 0x11
	.string	"lw"
	.byte	0x10
	.byte	0x43
	.long	0x306
	.byte	0x10
	.uleb128 0x11
	.string	"wip"
	.byte	0x10
	.byte	0x44
	.long	0x306
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9a2
	.uleb128 0x2
	.long	.LASF163
	.byte	0x10
	.byte	0x45
	.long	0xa33
	.uleb128 0x7
	.long	.LASF164
	.byte	0x18
	.byte	0x11
	.byte	0x42
	.long	0xab9
	.uleb128 0x8
	.long	.LASF136
	.byte	0x11
	.byte	0x43
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF165
	.byte	0x11
	.byte	0x44
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF166
	.byte	0x11
	.byte	0x46
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF63
	.byte	0x11
	.byte	0x47
	.long	0xab9
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa7c
	.uleb128 0x2
	.long	.LASF167
	.byte	0x11
	.byte	0x49
	.long	0xab9
	.uleb128 0x7
	.long	.LASF168
	.byte	0x18
	.byte	0x11
	.byte	0x4f
	.long	0xafb
	.uleb128 0x8
	.long	.LASF73
	.byte	0x11
	.byte	0x50
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF169
	.byte	0x11
	.byte	0x51
	.long	0xabf
	.byte	0x8
	.uleb128 0x8
	.long	.LASF63
	.byte	0x11
	.byte	0x52
	.long	0xafb
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xaca
	.uleb128 0x2
	.long	.LASF170
	.byte	0x11
	.byte	0x54
	.long	0xafb
	.uleb128 0x17
	.byte	0x4
	.byte	0x12
	.byte	0x4d
	.long	0xb27
	.uleb128 0xf
	.string	"f"
	.byte	0x12
	.byte	0x4e
	.long	0x2fb
	.uleb128 0xf
	.string	"l"
	.byte	0x12
	.byte	0x4f
	.long	0x2b9
	.byte	0
	.uleb128 0x2
	.long	.LASF171
	.byte	0x12
	.byte	0x50
	.long	0xb0c
	.uleb128 0x12
	.byte	0x10
	.byte	0x12
	.byte	0x52
	.long	0xb6b
	.uleb128 0x8
	.long	.LASF165
	.byte	0x12
	.byte	0x53
	.long	0x5fd
	.byte	0
	.uleb128 0x8
	.long	.LASF162
	.byte	0x12
	.byte	0x57
	.long	0xb27
	.byte	0x4
	.uleb128 0x8
	.long	.LASF172
	.byte	0x12
	.byte	0x58
	.long	0xb27
	.byte	0x8
	.uleb128 0x8
	.long	.LASF173
	.byte	0x12
	.byte	0x59
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF174
	.byte	0x12
	.byte	0x5a
	.long	0xb32
	.uleb128 0x12
	.byte	0x8
	.byte	0x12
	.byte	0x5c
	.long	0xbaf
	.uleb128 0x11
	.string	"wid"
	.byte	0x12
	.byte	0x5d
	.long	0x608
	.byte	0
	.uleb128 0x8
	.long	.LASF175
	.byte	0x12
	.byte	0x5e
	.long	0x2e5
	.byte	0x2
	.uleb128 0x8
	.long	.LASF176
	.byte	0x12
	.byte	0x5f
	.long	0x2e5
	.byte	0x4
	.uleb128 0x8
	.long	.LASF177
	.byte	0x12
	.byte	0x60
	.long	0x2e5
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF178
	.byte	0x12
	.byte	0x61
	.long	0xb76
	.uleb128 0x12
	.byte	0x4
	.byte	0x12
	.byte	0x63
	.long	0xbdb
	.uleb128 0x11
	.string	"wid"
	.byte	0x12
	.byte	0x64
	.long	0x608
	.byte	0
	.uleb128 0x8
	.long	.LASF175
	.byte	0x12
	.byte	0x65
	.long	0x2e5
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF179
	.byte	0x12
	.byte	0x66
	.long	0xbba
	.uleb128 0x12
	.byte	0x10
	.byte	0x12
	.byte	0x6c
	.long	0xc06
	.uleb128 0x11
	.string	"bg"
	.byte	0x12
	.byte	0x6d
	.long	0xc06
	.byte	0
	.uleb128 0x8
	.long	.LASF180
	.byte	0x12
	.byte	0x6e
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbaf
	.uleb128 0x2
	.long	.LASF181
	.byte	0x12
	.byte	0x70
	.long	0xbe6
	.uleb128 0x7
	.long	.LASF182
	.byte	0x20
	.byte	0x12
	.byte	0x7a
	.long	0xc6a
	.uleb128 0x11
	.string	"w1"
	.byte	0x12
	.byte	0x7b
	.long	0x608
	.byte	0
	.uleb128 0x8
	.long	.LASF183
	.byte	0x12
	.byte	0x7d
	.long	0x2b9
	.byte	0x4
	.uleb128 0x11
	.string	"tg"
	.byte	0x12
	.byte	0x7e
	.long	0xc6a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF172
	.byte	0x12
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF180
	.byte	0x12
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF63
	.byte	0x12
	.byte	0x81
	.long	0xc70
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbdb
	.uleb128 0x6
	.byte	0x8
	.long	0xc17
	.uleb128 0x2
	.long	.LASF184
	.byte	0x12
	.byte	0x82
	.long	0xc17
	.uleb128 0x12
	.byte	0xc
	.byte	0x12
	.byte	0x88
	.long	0xca2
	.uleb128 0x8
	.long	.LASF185
	.byte	0x12
	.byte	0x89
	.long	0xca2
	.byte	0
	.uleb128 0x8
	.long	.LASF186
	.byte	0x12
	.byte	0x8a
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x608
	.long	0xcb2
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF187
	.byte	0x12
	.byte	0x8b
	.long	0xc81
	.uleb128 0x7
	.long	.LASF188
	.byte	0xf8
	.byte	0x12
	.byte	0xb4
	.long	0xec9
	.uleb128 0x8
	.long	.LASF189
	.byte	0x12
	.byte	0xb5
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF190
	.byte	0x12
	.byte	0xb6
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF183
	.byte	0x12
	.byte	0xb7
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF191
	.byte	0x12
	.byte	0xb8
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF192
	.byte	0x12
	.byte	0xba
	.long	0x996
	.byte	0x10
	.uleb128 0x8
	.long	.LASF193
	.byte	0x12
	.byte	0xbc
	.long	0x608
	.byte	0x18
	.uleb128 0x8
	.long	.LASF194
	.byte	0x12
	.byte	0xbd
	.long	0x608
	.byte	0x1a
	.uleb128 0x8
	.long	.LASF195
	.byte	0x12
	.byte	0xbf
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF196
	.byte	0x12
	.byte	0xc0
	.long	0x2b9
	.byte	0x20
	.uleb128 0x11
	.string	"ug"
	.byte	0x12
	.byte	0xc2
	.long	0xec9
	.byte	0x28
	.uleb128 0x11
	.string	"bg"
	.byte	0x12
	.byte	0xc3
	.long	0xc06
	.byte	0x30
	.uleb128 0x11
	.string	"tg"
	.byte	0x12
	.byte	0xc4
	.long	0xc6a
	.byte	0x38
	.uleb128 0x8
	.long	.LASF197
	.byte	0x12
	.byte	0xc5
	.long	0xecf
	.byte	0x40
	.uleb128 0x8
	.long	.LASF198
	.byte	0x12
	.byte	0xc6
	.long	0xed5
	.byte	0x48
	.uleb128 0x8
	.long	.LASF199
	.byte	0x12
	.byte	0xc8
	.long	0xee1
	.byte	0x50
	.uleb128 0x8
	.long	.LASF200
	.byte	0x12
	.byte	0xc9
	.long	0xee1
	.byte	0x58
	.uleb128 0x8
	.long	.LASF201
	.byte	0x12
	.byte	0xca
	.long	0xee1
	.byte	0x60
	.uleb128 0x8
	.long	.LASF202
	.byte	0x12
	.byte	0xcb
	.long	0x4c9
	.byte	0x68
	.uleb128 0x8
	.long	.LASF203
	.byte	0x12
	.byte	0xcd
	.long	0x2b9
	.byte	0x70
	.uleb128 0x8
	.long	.LASF204
	.byte	0x12
	.byte	0xce
	.long	0x2b9
	.byte	0x74
	.uleb128 0x8
	.long	.LASF205
	.byte	0x12
	.byte	0xcf
	.long	0x2b9
	.byte	0x78
	.uleb128 0x11
	.string	"fp"
	.byte	0x12
	.byte	0xd1
	.long	0xee7
	.byte	0x80
	.uleb128 0x8
	.long	.LASF206
	.byte	0x12
	.byte	0xd2
	.long	0x2b9
	.byte	0x88
	.uleb128 0x8
	.long	.LASF207
	.byte	0x12
	.byte	0xd3
	.long	0x2b9
	.byte	0x8c
	.uleb128 0x8
	.long	.LASF208
	.byte	0x12
	.byte	0xd4
	.long	0x2b9
	.byte	0x90
	.uleb128 0x11
	.string	"lw"
	.byte	0x12
	.byte	0xd6
	.long	0x2fb
	.byte	0x94
	.uleb128 0x11
	.string	"wip"
	.byte	0x12
	.byte	0xd7
	.long	0x2b9
	.byte	0x98
	.uleb128 0x8
	.long	.LASF209
	.byte	0x12
	.byte	0xdd
	.long	0xeed
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF210
	.byte	0x12
	.byte	0xe0
	.long	0x2b9
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF211
	.byte	0x12
	.byte	0xe1
	.long	0x2b9
	.byte	0xac
	.uleb128 0x8
	.long	.LASF212
	.byte	0x12
	.byte	0xe2
	.long	0x2b9
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF213
	.byte	0x12
	.byte	0xe3
	.long	0x2b9
	.byte	0xb4
	.uleb128 0x8
	.long	.LASF214
	.byte	0x12
	.byte	0xe4
	.long	0x2b9
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF215
	.byte	0x12
	.byte	0xe5
	.long	0x2b9
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF216
	.byte	0x12
	.byte	0xe6
	.long	0x2b9
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF217
	.byte	0x12
	.byte	0xe7
	.long	0x2b9
	.byte	0xc4
	.uleb128 0x8
	.long	.LASF218
	.byte	0x12
	.byte	0xe8
	.long	0x2b9
	.byte	0xc8
	.uleb128 0x8
	.long	.LASF219
	.byte	0x12
	.byte	0xea
	.long	0x2b9
	.byte	0xcc
	.uleb128 0x8
	.long	.LASF220
	.byte	0x12
	.byte	0xef
	.long	0xef3
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF221
	.byte	0x12
	.byte	0xf2
	.long	0x2b9
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF222
	.byte	0x12
	.byte	0xf4
	.long	0xef9
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF223
	.byte	0x12
	.byte	0xf5
	.long	0x2b9
	.byte	0xe8
	.uleb128 0x8
	.long	.LASF224
	.byte	0x12
	.byte	0xf6
	.long	0x4c9
	.byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb6b
	.uleb128 0x6
	.byte	0x8
	.long	0xc0c
	.uleb128 0x6
	.byte	0x8
	.long	0xedb
	.uleb128 0x6
	.byte	0x8
	.long	0xc76
	.uleb128 0x6
	.byte	0x8
	.long	0xb27
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0xcb2
	.uleb128 0x6
	.byte	0x8
	.long	0x608
	.uleb128 0x6
	.byte	0x8
	.long	0xb01
	.uleb128 0x2
	.long	.LASF225
	.byte	0x12
	.byte	0xf8
	.long	0xcbd
	.uleb128 0x7
	.long	.LASF226
	.byte	0x10
	.byte	0x12
	.byte	0xfb
	.long	0xf2e
	.uleb128 0x8
	.long	.LASF73
	.byte	0x12
	.byte	0xfc
	.long	0x8f
	.byte	0
	.uleb128 0x11
	.string	"lm"
	.byte	0x12
	.byte	0xfd
	.long	0xf2e
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xeff
	.uleb128 0x2
	.long	.LASF227
	.byte	0x12
	.byte	0xfe
	.long	0xf0a
	.uleb128 0x18
	.byte	0x8
	.byte	0x12
	.value	0x10c
	.long	0xf63
	.uleb128 0x19
	.string	"wid"
	.byte	0x12
	.value	0x10d
	.long	0x5fd
	.byte	0
	.uleb128 0x9
	.long	.LASF162
	.byte	0x12
	.value	0x10e
	.long	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x1a
	.long	.LASF228
	.byte	0x12
	.value	0x10f
	.long	0xf3f
	.uleb128 0x12
	.byte	0x10
	.byte	0x13
	.byte	0x4a
	.long	0xf9b
	.uleb128 0x11
	.string	"tp"
	.byte	0x13
	.byte	0x4b
	.long	0xf9b
	.byte	0
	.uleb128 0x8
	.long	.LASF125
	.byte	0x13
	.byte	0x4d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF229
	.byte	0x13
	.byte	0x4e
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfa1
	.uleb128 0x6
	.byte	0x8
	.long	0x4c9
	.uleb128 0x2
	.long	.LASF230
	.byte	0x13
	.byte	0x50
	.long	0xf6f
	.uleb128 0x12
	.byte	0x8
	.byte	0x14
	.byte	0x47
	.long	0xfcf
	.uleb128 0x11
	.string	"r"
	.byte	0x14
	.byte	0x48
	.long	0x2b9
	.byte	0
	.uleb128 0x11
	.string	"c"
	.byte	0x14
	.byte	0x49
	.long	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF231
	.byte	0x14
	.byte	0x4a
	.long	0xfb2
	.uleb128 0x12
	.byte	0x28
	.byte	0x14
	.byte	0xf0
	.long	0x102b
	.uleb128 0x8
	.long	.LASF232
	.byte	0x14
	.byte	0xf1
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF88
	.byte	0x14
	.byte	0xf2
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF83
	.byte	0x14
	.byte	0xf3
	.long	0x4ea
	.byte	0x8
	.uleb128 0x11
	.string	"var"
	.byte	0x14
	.byte	0xf4
	.long	0x4ea
	.byte	0x10
	.uleb128 0x11
	.string	"lrd"
	.byte	0x14
	.byte	0xf5
	.long	0x4f0
	.byte	0x18
	.uleb128 0x8
	.long	.LASF90
	.byte	0x14
	.byte	0xf6
	.long	0x306
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF233
	.byte	0x14
	.byte	0xf8
	.long	0xfda
	.uleb128 0x12
	.byte	0x48
	.byte	0x15
	.byte	0x52
	.long	0x10b7
	.uleb128 0x8
	.long	.LASF234
	.byte	0x15
	.byte	0x53
	.long	0xfcf
	.byte	0
	.uleb128 0x8
	.long	.LASF235
	.byte	0x15
	.byte	0x55
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF236
	.byte	0x15
	.byte	0x56
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF237
	.byte	0x15
	.byte	0x57
	.long	0xfa1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF238
	.byte	0x15
	.byte	0x58
	.long	0x10b7
	.byte	0x18
	.uleb128 0x11
	.string	"map"
	.byte	0x15
	.byte	0x59
	.long	0xf9b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF239
	.byte	0x15
	.byte	0x60
	.long	0x4f0
	.byte	0x28
	.uleb128 0x8
	.long	.LASF240
	.byte	0x15
	.byte	0x61
	.long	0xfa1
	.byte	0x30
	.uleb128 0x8
	.long	.LASF241
	.byte	0x15
	.byte	0x63
	.long	0x4c9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF242
	.byte	0x15
	.byte	0x64
	.long	0x4c9
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x102b
	.uleb128 0x2
	.long	.LASF243
	.byte	0x15
	.byte	0x65
	.long	0x1036
	.uleb128 0x7
	.long	.LASF244
	.byte	0x38
	.byte	0x16
	.byte	0x3c
	.long	0x114c
	.uleb128 0x8
	.long	.LASF86
	.byte	0x16
	.byte	0x3d
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF245
	.byte	0x16
	.byte	0x3e
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF246
	.byte	0x16
	.byte	0x3f
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF247
	.byte	0x16
	.byte	0x40
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF248
	.byte	0x16
	.byte	0x41
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF249
	.byte	0x16
	.byte	0x42
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF250
	.byte	0x16
	.byte	0x43
	.long	0x4ea
	.byte	0x18
	.uleb128 0x8
	.long	.LASF251
	.byte	0x16
	.byte	0x44
	.long	0x114c
	.byte	0x20
	.uleb128 0x11
	.string	"fp"
	.byte	0x16
	.byte	0x45
	.long	0xee7
	.byte	0x28
	.uleb128 0x8
	.long	.LASF242
	.byte	0x16
	.byte	0x46
	.long	0x4c9
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1152
	.uleb128 0x6
	.byte	0x8
	.long	0x36b
	.uleb128 0x2
	.long	.LASF252
	.byte	0x16
	.byte	0x47
	.long	0x10c8
	.uleb128 0x12
	.byte	0x68
	.byte	0x17
	.byte	0x50
	.long	0x1212
	.uleb128 0x11
	.string	"fcb"
	.byte	0x17
	.byte	0x51
	.long	0x1212
	.byte	0
	.uleb128 0x8
	.long	.LASF141
	.byte	0x17
	.byte	0x52
	.long	0x990
	.byte	0x8
	.uleb128 0x8
	.long	.LASF161
	.byte	0x17
	.byte	0x53
	.long	0xa6b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF253
	.byte	0x17
	.byte	0x54
	.long	0x1218
	.byte	0x18
	.uleb128 0x11
	.string	"lm"
	.byte	0x17
	.byte	0x55
	.long	0xf2e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF254
	.byte	0x17
	.byte	0x56
	.long	0x121e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF255
	.byte	0x17
	.byte	0x57
	.long	0x1224
	.byte	0x30
	.uleb128 0x8
	.long	.LASF220
	.byte	0x17
	.byte	0x58
	.long	0xef3
	.byte	0x38
	.uleb128 0x8
	.long	.LASF89
	.byte	0x17
	.byte	0x59
	.long	0x122a
	.byte	0x40
	.uleb128 0x11
	.string	"svq"
	.byte	0x17
	.byte	0x5a
	.long	0x1230
	.byte	0x48
	.uleb128 0x11
	.string	"gs"
	.byte	0x17
	.byte	0x5b
	.long	0x1236
	.byte	0x50
	.uleb128 0x8
	.long	.LASF112
	.byte	0x17
	.byte	0x5c
	.long	0x123c
	.byte	0x58
	.uleb128 0x8
	.long	.LASF256
	.byte	0x17
	.byte	0x5d
	.long	0x2b9
	.byte	0x60
	.uleb128 0x8
	.long	.LASF257
	.byte	0x17
	.byte	0x5e
	.long	0x2b9
	.byte	0x64
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4fc
	.uleb128 0x6
	.byte	0x8
	.long	0xa28
	.uleb128 0x6
	.byte	0x8
	.long	0xf34
	.uleb128 0x6
	.byte	0x8
	.long	0xa71
	.uleb128 0x6
	.byte	0x8
	.long	0x5c6
	.uleb128 0x6
	.byte	0x8
	.long	0x10bd
	.uleb128 0x6
	.byte	0x8
	.long	0x1158
	.uleb128 0x6
	.byte	0x8
	.long	0xfa7
	.uleb128 0x2
	.long	.LASF258
	.byte	0x17
	.byte	0x5f
	.long	0x1163
	.uleb128 0x12
	.byte	0x8
	.byte	0x18
	.byte	0x69
	.long	0x126e
	.uleb128 0x8
	.long	.LASF259
	.byte	0x18
	.byte	0x6a
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF260
	.byte	0x18
	.byte	0x6b
	.long	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF261
	.byte	0x18
	.byte	0x6c
	.long	0x124d
	.uleb128 0x12
	.byte	0x28
	.byte	0x18
	.byte	0x6e
	.long	0x12bc
	.uleb128 0x8
	.long	.LASF262
	.byte	0x18
	.byte	0x6f
	.long	0x12bc
	.byte	0
	.uleb128 0x11
	.string	"in"
	.byte	0x18
	.byte	0x70
	.long	0x126e
	.byte	0x8
	.uleb128 0x11
	.string	"out"
	.byte	0x18
	.byte	0x71
	.long	0x126e
	.byte	0x10
	.uleb128 0x11
	.string	"tp"
	.byte	0x18
	.byte	0x72
	.long	0xfa1
	.byte	0x18
	.uleb128 0x8
	.long	.LASF263
	.byte	0x18
	.byte	0x73
	.long	0x2b9
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x126e
	.uleb128 0x2
	.long	.LASF264
	.byte	0x18
	.byte	0x74
	.long	0x1279
	.uleb128 0x12
	.byte	0x4
	.byte	0x19
	.byte	0x50
	.long	0x12e2
	.uleb128 0x8
	.long	.LASF185
	.byte	0x19
	.byte	0x51
	.long	0x12e2
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x608
	.long	0x12f2
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x19
	.byte	0x4f
	.long	0x1306
	.uleb128 0x10
	.long	.LASF265
	.byte	0x19
	.byte	0x52
	.long	0x12cd
	.byte	0
	.uleb128 0x2
	.long	.LASF266
	.byte	0x19
	.byte	0x53
	.long	0x12f2
	.uleb128 0x12
	.byte	0x24
	.byte	0x19
	.byte	0x59
	.long	0x1390
	.uleb128 0x11
	.string	"wid"
	.byte	0x19
	.byte	0x5a
	.long	0x5fd
	.byte	0
	.uleb128 0x11
	.string	"sf"
	.byte	0x19
	.byte	0x5b
	.long	0x613
	.byte	0x4
	.uleb128 0x11
	.string	"ef"
	.byte	0x19
	.byte	0x5b
	.long	0x613
	.byte	0x6
	.uleb128 0x8
	.long	.LASF267
	.byte	0x19
	.byte	0x5c
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF186
	.byte	0x19
	.byte	0x5d
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF259
	.byte	0x19
	.byte	0x5e
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF268
	.byte	0x19
	.byte	0x5f
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF269
	.byte	0x19
	.byte	0x60
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF270
	.byte	0x19
	.byte	0x61
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF271
	.byte	0x19
	.byte	0x62
	.long	0x1306
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF272
	.byte	0x19
	.byte	0x63
	.long	0x1311
	.uleb128 0x12
	.byte	0x18
	.byte	0x19
	.byte	0x79
	.long	0x13d3
	.uleb128 0x8
	.long	.LASF262
	.byte	0x19
	.byte	0x7a
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF273
	.byte	0x19
	.byte	0x7b
	.long	0x2b9
	.byte	0x4
	.uleb128 0x11
	.string	"ve"
	.byte	0x19
	.byte	0x7c
	.long	0x13d3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF274
	.byte	0x19
	.byte	0x7d
	.long	0x3a7
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1390
	.uleb128 0x2
	.long	.LASF275
	.byte	0x19
	.byte	0x7f
	.long	0x139b
	.uleb128 0x12
	.byte	0x40
	.byte	0x19
	.byte	0x88
	.long	0x1465
	.uleb128 0x8
	.long	.LASF276
	.byte	0x19
	.byte	0x89
	.long	0x1465
	.byte	0
	.uleb128 0x8
	.long	.LASF277
	.byte	0x19
	.byte	0x8a
	.long	0x4c9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF278
	.byte	0x19
	.byte	0x8c
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF279
	.byte	0x19
	.byte	0x8d
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF280
	.byte	0x19
	.byte	0x8f
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF281
	.byte	0x19
	.byte	0x92
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF263
	.byte	0x19
	.byte	0x94
	.long	0x4c9
	.byte	0x20
	.uleb128 0x8
	.long	.LASF282
	.byte	0x19
	.byte	0x95
	.long	0x4c9
	.byte	0x28
	.uleb128 0x8
	.long	.LASF283
	.byte	0x19
	.byte	0x97
	.long	0x146b
	.byte	0x30
	.uleb128 0x8
	.long	.LASF284
	.byte	0x19
	.byte	0x98
	.long	0x3a7
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x13d3
	.uleb128 0x6
	.byte	0x8
	.long	0x1471
	.uleb128 0x6
	.byte	0x8
	.long	0x13d9
	.uleb128 0x2
	.long	.LASF285
	.byte	0x19
	.byte	0x99
	.long	0x13e4
	.uleb128 0x12
	.byte	0x10
	.byte	0x1a
	.byte	0x40
	.long	0x14a3
	.uleb128 0x11
	.string	"sen"
	.byte	0x1a
	.byte	0x41
	.long	0x4c9
	.byte	0
	.uleb128 0x8
	.long	.LASF286
	.byte	0x1a
	.byte	0x42
	.long	0x4c9
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF287
	.byte	0x1a
	.byte	0x43
	.long	0x1482
	.uleb128 0x12
	.byte	0x50
	.byte	0x1b
	.byte	0x5e
	.long	0x1522
	.uleb128 0x11
	.string	"hmm"
	.byte	0x1b
	.byte	0x5f
	.long	0x12c2
	.byte	0
	.uleb128 0x8
	.long	.LASF274
	.byte	0x1b
	.byte	0x60
	.long	0x3a7
	.byte	0x28
	.uleb128 0x11
	.string	"wid"
	.byte	0x1b
	.byte	0x61
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF162
	.byte	0x1b
	.byte	0x62
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF111
	.byte	0x1b
	.byte	0x63
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF288
	.byte	0x1b
	.byte	0x64
	.long	0xa1c
	.byte	0x40
	.uleb128 0x11
	.string	"ci"
	.byte	0x1b
	.byte	0x66
	.long	0x5d1
	.byte	0x48
	.uleb128 0x8
	.long	.LASF289
	.byte	0x1b
	.byte	0x67
	.long	0x2cf
	.byte	0x49
	.uleb128 0x8
	.long	.LASF290
	.byte	0x1b
	.byte	0x68
	.long	0x613
	.byte	0x4a
	.byte	0
	.uleb128 0x2
	.long	.LASF291
	.byte	0x1b
	.byte	0x69
	.long	0x14ae
	.uleb128 0x12
	.byte	0x10
	.byte	0x1b
	.byte	0x76
	.long	0x154d
	.uleb128 0x11
	.string	"lc"
	.byte	0x1b
	.byte	0x77
	.long	0x5d1
	.byte	0
	.uleb128 0x8
	.long	.LASF292
	.byte	0x1b
	.byte	0x78
	.long	0x3a7
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF293
	.byte	0x1b
	.byte	0x7a
	.long	0x152d
	.uleb128 0x12
	.byte	0x40
	.byte	0x1b
	.byte	0x7f
	.long	0x15e5
	.uleb128 0x8
	.long	.LASF269
	.byte	0x1b
	.byte	0x80
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF292
	.byte	0x1b
	.byte	0x82
	.long	0x3a7
	.byte	0x8
	.uleb128 0x8
	.long	.LASF294
	.byte	0x1b
	.byte	0x83
	.long	0x15e5
	.byte	0x10
	.uleb128 0x8
	.long	.LASF295
	.byte	0x1b
	.byte	0x85
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF296
	.byte	0x1b
	.byte	0x86
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF297
	.byte	0x1b
	.byte	0x87
	.long	0x15eb
	.byte	0x20
	.uleb128 0x8
	.long	.LASF298
	.byte	0x1b
	.byte	0x88
	.long	0x15eb
	.byte	0x28
	.uleb128 0x8
	.long	.LASF299
	.byte	0x1b
	.byte	0x8a
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF300
	.byte	0x1b
	.byte	0x8b
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF301
	.byte	0x1b
	.byte	0x8d
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF302
	.byte	0x1b
	.byte	0x8e
	.long	0x2b9
	.byte	0x3c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x154d
	.uleb128 0x6
	.byte	0x8
	.long	0x15f1
	.uleb128 0x6
	.byte	0x8
	.long	0x1522
	.uleb128 0x2
	.long	.LASF303
	.byte	0x1b
	.byte	0x8f
	.long	0x1558
	.uleb128 0x1b
	.long	.LASF310
	.byte	0x1
	.byte	0x47
	.long	0x15f1
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1684
	.uleb128 0x1c
	.string	"wid"
	.byte	0x1
	.byte	0x47
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.long	.LASF162
	.byte	0x1
	.byte	0x47
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF139
	.byte	0x1
	.byte	0x48
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.long	.LASF111
	.byte	0x1
	.byte	0x48
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF229
	.byte	0x1
	.byte	0x48
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.string	"ci"
	.byte	0x1
	.byte	0x48
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.string	"ln"
	.byte	0x1
	.byte	0x4a
	.long	0x15f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF328
	.byte	0x1
	.byte	0x5c
	.long	0x1874
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1874
	.uleb128 0x1c
	.string	"kbc"
	.byte	0x1
	.byte	0x5c
	.long	0x187a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1d
	.long	.LASF304
	.byte	0x1
	.byte	0x5c
	.long	0x1880
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1d
	.long	.LASF144
	.byte	0x1
	.byte	0x5c
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x1c
	.string	"lc"
	.byte	0x1
	.byte	0x5c
	.long	0x84f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x20
	.long	.LASF141
	.byte	0x1
	.byte	0x5e
	.long	0x990
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.long	.LASF161
	.byte	0x1
	.byte	0x5f
	.long	0xa6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.long	.LASF112
	.byte	0x1
	.byte	0x60
	.long	0x123c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.string	"d2p"
	.byte	0x1
	.byte	0x61
	.long	0x1218
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF153
	.byte	0x1
	.byte	0x62
	.long	0xa1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF305
	.byte	0x1
	.byte	0x63
	.long	0x1874
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF294
	.byte	0x1
	.byte	0x64
	.long	0x15e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x20
	.long	.LASF295
	.byte	0x1
	.byte	0x65
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x20
	.long	.LASF296
	.byte	0x1
	.byte	0x65
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x20
	.long	.LASF306
	.byte	0x1
	.byte	0x65
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x20
	.long	.LASF130
	.byte	0x1
	.byte	0x65
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x20
	.long	.LASF137
	.byte	0x1
	.byte	0x65
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x20
	.long	.LASF111
	.byte	0x1
	.byte	0x65
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x20
	.long	.LASF162
	.byte	0x1
	.byte	0x65
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x1e
	.string	"ci"
	.byte	0x1
	.byte	0x65
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x1e
	.string	"rc"
	.byte	0x1
	.byte	0x65
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1e
	.string	"wid"
	.byte	0x1
	.byte	0x65
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1e
	.string	"np"
	.byte	0x1
	.byte	0x65
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x20
	.long	.LASF307
	.byte	0x1
	.byte	0x65
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x1e
	.string	"ln"
	.byte	0x1
	.byte	0x66
	.long	0x15f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x20
	.long	.LASF308
	.byte	0x1
	.byte	0x66
	.long	0x15eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x20
	.long	.LASF309
	.byte	0x1
	.byte	0x66
	.long	0x15eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.string	"gn"
	.byte	0x1
	.byte	0x67
	.long	0x3b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x20
	.long	.LASF288
	.byte	0x1
	.byte	0x68
	.long	0x1886
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0x69
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x1e
	.string	"j"
	.byte	0x1
	.byte	0x69
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1e
	.string	"k"
	.byte	0x1
	.byte	0x69
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x1e
	.string	"p"
	.byte	0x1
	.byte	0x69
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x15f7
	.uleb128 0x6
	.byte	0x8
	.long	0x1242
	.uleb128 0x6
	.byte	0x8
	.long	0xf63
	.uleb128 0x6
	.byte	0x8
	.long	0x360
	.uleb128 0x21
	.long	.LASF311
	.byte	0x1
	.value	0x158
	.long	0x2b9
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x18f6
	.uleb128 0x22
	.string	"ln"
	.byte	0x1
	.value	0x158
	.long	0x15f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF312
	.byte	0x1
	.value	0x158
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.string	"gn"
	.byte	0x1
	.value	0x15a
	.long	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"ln2"
	.byte	0x1
	.value	0x15b
	.long	0x15f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"k"
	.byte	0x1
	.value	0x15c
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x25
	.long	.LASF313
	.byte	0x1
	.value	0x177
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1979
	.uleb128 0x23
	.long	.LASF305
	.byte	0x1
	.value	0x177
	.long	0x1874
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.string	"gn"
	.byte	0x1
	.value	0x179
	.long	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"gn2"
	.byte	0x1
	.value	0x179
	.long	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"ln"
	.byte	0x1
	.value	0x17a
	.long	0x15f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"ln2"
	.byte	0x1
	.value	0x17a
	.long	0x15f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x17b
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"k"
	.byte	0x1
	.value	0x17b
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x26
	.long	.LASF314
	.byte	0x1
	.value	0x1a3
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x19e0
	.uleb128 0x23
	.long	.LASF305
	.byte	0x1
	.value	0x1a3
	.long	0x1874
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF315
	.byte	0x1
	.value	0x1a3
	.long	0x360
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF316
	.byte	0x1
	.value	0x1a5
	.long	0x15eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"ln"
	.byte	0x1
	.value	0x1a5
	.long	0x15f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x1a6
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x26
	.long	.LASF317
	.byte	0x1
	.value	0x1b1
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a57
	.uleb128 0x23
	.long	.LASF305
	.byte	0x1
	.value	0x1b1
	.long	0x1874
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF111
	.byte	0x1
	.value	0x1b1
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF318
	.byte	0x1
	.value	0x1b1
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF316
	.byte	0x1
	.value	0x1b3
	.long	0x15eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"ln"
	.byte	0x1
	.value	0x1b3
	.long	0x15f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x1b4
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x25
	.long	.LASF319
	.byte	0x1
	.value	0x1c2
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1abc
	.uleb128 0x22
	.string	"l"
	.byte	0x1
	.value	0x1c2
	.long	0x1874
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"kbc"
	.byte	0x1
	.value	0x1c2
	.long	0x187a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF141
	.byte	0x1
	.value	0x1c4
	.long	0x990
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"ln"
	.byte	0x1
	.value	0x1c5
	.long	0x15f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x1c6
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x28
	.long	.LASF320
	.byte	0x1
	.value	0x1d6
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b06
	.uleb128 0x22
	.string	"ln"
	.byte	0x1
	.value	0x1d6
	.long	0x15f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF161
	.byte	0x1
	.value	0x1d6
	.long	0xa6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"fp"
	.byte	0x1
	.value	0x1d6
	.long	0xee7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x28
	.long	.LASF321
	.byte	0x1
	.value	0x1df
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b7a
	.uleb128 0x22
	.string	"ln"
	.byte	0x1
	.value	0x1df
	.long	0x15f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF312
	.byte	0x1
	.value	0x1df
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.long	.LASF161
	.byte	0x1
	.value	0x1df
	.long	0xa6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"fp"
	.byte	0x1
	.value	0x1df
	.long	0xee7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x1e1
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.string	"gn"
	.byte	0x1
	.value	0x1e2
	.long	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF322
	.byte	0x1
	.value	0x1ef
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bef
	.uleb128 0x23
	.long	.LASF305
	.byte	0x1
	.value	0x1ef
	.long	0x1874
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF161
	.byte	0x1
	.value	0x1ef
	.long	0xa6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"fp"
	.byte	0x1
	.value	0x1ef
	.long	0xee7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.string	"gn"
	.byte	0x1
	.value	0x1f1
	.long	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"ln"
	.byte	0x1
	.value	0x1f2
	.long	0x15f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x1f3
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x26
	.long	.LASF323
	.byte	0x1
	.value	0x206
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cdd
	.uleb128 0x23
	.long	.LASF305
	.byte	0x1
	.value	0x206
	.long	0x1874
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"lc"
	.byte	0x1
	.value	0x206
	.long	0x5d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x22
	.string	"cf"
	.byte	0x1
	.value	0x206
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.long	.LASF324
	.byte	0x1
	.value	0x207
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x23
	.long	.LASF325
	.byte	0x1
	.value	0x207
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF326
	.byte	0x1
	.value	0x207
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x27
	.long	.LASF292
	.byte	0x1
	.value	0x209
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"gn"
	.byte	0x1
	.value	0x20a
	.long	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"ln"
	.byte	0x1
	.value	0x20b
	.long	0x15f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"nf"
	.byte	0x1
	.value	0x20c
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"scr"
	.byte	0x1
	.value	0x20c
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x20d
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.string	"n"
	.byte	0x1
	.value	0x20d
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.string	"hmm"
	.byte	0x1
	.value	0x20e
	.long	0x1cdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x12c2
	.uleb128 0x26
	.long	.LASF327
	.byte	0x1
	.value	0x233
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d1e
	.uleb128 0x23
	.long	.LASF305
	.byte	0x1
	.value	0x233
	.long	0x1874
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"t"
	.byte	0x1
	.value	0x235
	.long	0x15eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF329
	.byte	0x1
	.value	0x23f
	.long	0x2b9
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e13
	.uleb128 0x23
	.long	.LASF305
	.byte	0x1
	.value	0x23f
	.long	0x1874
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.string	"kbc"
	.byte	0x1
	.value	0x23f
	.long	0x187a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.long	.LASF267
	.byte	0x1
	.value	0x23f
	.long	0x1e13
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.string	"frm"
	.byte	0x1
	.value	0x23f
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x22
	.string	"fp"
	.byte	0x1
	.value	0x23f
	.long	0xee7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.long	.LASF301
	.byte	0x1
	.value	0x241
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.long	.LASF302
	.byte	0x1
	.value	0x241
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF307
	.byte	0x1
	.value	0x241
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x242
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.string	"k"
	.byte	0x1
	.value	0x242
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF316
	.byte	0x1
	.value	0x243
	.long	0x15eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"ln"
	.byte	0x1
	.value	0x243
	.long	0x15f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF141
	.byte	0x1
	.value	0x244
	.long	0x990
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"d2p"
	.byte	0x1
	.value	0x245
	.long	0x1218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x14a3
	.uleb128 0x25
	.long	.LASF330
	.byte	0x1
	.value	0x2a0
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1eed
	.uleb128 0x23
	.long	.LASF305
	.byte	0x1
	.value	0x2a0
	.long	0x1874
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF331
	.byte	0x1
	.value	0x2a0
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x22
	.string	"bin"
	.byte	0x1
	.value	0x2a0
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.long	.LASF332
	.byte	0x1
	.value	0x2a0
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.string	"bw"
	.byte	0x1
	.value	0x2a0
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x27
	.long	.LASF316
	.byte	0x1
	.value	0x2a2
	.long	0x15eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"ln"
	.byte	0x1
	.value	0x2a2
	.long	0x15f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"hmm"
	.byte	0x1
	.value	0x2a3
	.long	0x1cdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x2a4
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"k"
	.byte	0x1
	.value	0x2a4
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.long	.LASF333
	.byte	0x1
	.value	0x2a5
	.long	0x1eed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.string	"gn"
	.byte	0x1
	.value	0x2a6
	.long	0x3b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3a7
	.uleb128 0x25
	.long	.LASF334
	.byte	0x1
	.value	0x2c8
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x209a
	.uleb128 0x23
	.long	.LASF305
	.byte	0x1
	.value	0x2c8
	.long	0x1874
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.string	"kbc"
	.byte	0x1
	.value	0x2c8
	.long	0x187a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x22
	.string	"vh"
	.byte	0x1
	.value	0x2c8
	.long	0x209a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x22
	.string	"cf"
	.byte	0x1
	.value	0x2c9
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x22
	.string	"th"
	.byte	0x1
	.value	0x2c9
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x22
	.string	"pth"
	.byte	0x1
	.value	0x2c9
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x22
	.string	"wth"
	.byte	0x1
	.value	0x2c9
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	.LASF335
	.byte	0x1
	.value	0x2c9
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.long	.LASF336
	.byte	0x1
	.value	0x2c9
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x23
	.long	.LASF337
	.byte	0x1
	.value	0x2c9
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x27
	.long	.LASF141
	.byte	0x1
	.value	0x2cb
	.long	0x990
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.string	"nf"
	.byte	0x1
	.value	0x2cc
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x27
	.long	.LASF338
	.byte	0x1
	.value	0x2cc
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.long	.LASF339
	.byte	0x1
	.value	0x2cc
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	.LASF316
	.byte	0x1
	.value	0x2cd
	.long	0x15eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"ln"
	.byte	0x1
	.value	0x2cd
	.long	0x15f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"ln2"
	.byte	0x1
	.value	0x2cd
	.long	0x15f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"hmm"
	.byte	0x1
	.value	0x2ce
	.long	0x1cdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF340
	.byte	0x1
	.value	0x2ce
	.long	0x1cdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"gn"
	.byte	0x1
	.value	0x2cf
	.long	0x3b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x2d0
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.string	"n"
	.byte	0x1
	.value	0x2d0
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x27
	.long	.LASF341
	.byte	0x1
	.value	0x2d3
	.long	0x2b9
	.uleb128 0x9
	.byte	0x3
	.quad	maxNewHeurScore.6186
	.uleb128 0x27
	.long	.LASF342
	.byte	0x1
	.value	0x2d4
	.long	0x2b9
	.uleb128 0x9
	.byte	0x3
	.quad	lastfrm.6187
	.uleb128 0x24
	.string	"hth"
	.byte	0x1
	.value	0x2d5
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1477
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x17
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
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1a
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x29
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
.LASF312:
	.string	"level"
.LASF60:
	.string	"bitvec_t"
.LASF7:
	.string	"size_t"
.LASF246:
	.string	"n_code"
.LASF10:
	.string	"sizetype"
.LASF129:
	.string	"sseq"
.LASF291:
	.string	"lextree_node_t"
.LASF200:
	.string	"tgprob"
.LASF180:
	.string	"used"
.LASF138:
	.string	"basewid"
.LASF102:
	.string	"s3senid_t"
.LASF135:
	.string	"mdef_t"
.LASF292:
	.string	"root"
.LASF161:
	.string	"dict"
.LASF24:
	.string	"_IO_save_end"
.LASF251:
	.string	"codemap"
.LASF54:
	.string	"uint32"
.LASF202:
	.string	"tg_segbase"
.LASF311:
	.string	"lextree_subtree_free"
.LASF124:
	.string	"n_sen"
.LASF286:
	.string	"comsen"
.LASF319:
	.string	"lextree_utt_end"
.LASF156:
	.string	"comsseq"
.LASF17:
	.string	"_IO_write_base"
.LASF306:
	.string	"n_ci"
.LASF139:
	.string	"comp"
.LASF262:
	.string	"state"
.LASF33:
	.string	"_lock"
.LASF212:
	.string	"n_bg_score"
.LASF269:
	.string	"type"
.LASF236:
	.string	"vqsize"
.LASF185:
	.string	"lwid"
.LASF22:
	.string	"_IO_save_base"
.LASF103:
	.string	"WORD_POSN_BEGIN"
.LASF94:
	.string	"mgau_model_t"
.LASF53:
	.string	"int8"
.LASF78:
	.string	"window_size"
.LASF26:
	.string	"_chain"
.LASF210:
	.string	"n_bg_fill"
.LASF341:
	.string	"maxNewHeurScore"
.LASF274:
	.string	"children"
.LASF281:
	.string	"wbeam"
.LASF30:
	.string	"_cur_column"
.LASF89:
	.string	"mgau"
.LASF310:
	.string	"lextree_node_alloc"
.LASF222:
	.string	"lmclass"
.LASF299:
	.string	"n_active"
.LASF336:
	.string	"heur_beam"
.LASF160:
	.string	"dict2pid_t"
.LASF74:
	.string	"cepsize"
.LASF86:
	.string	"n_mgau"
.LASF302:
	.string	"wbest"
.LASF111:
	.string	"ssid"
.LASF243:
	.string	"subvq_t"
.LASF6:
	.string	"long int"
.LASF87:
	.string	"max_comp"
.LASF307:
	.string	"n_st"
.LASF238:
	.string	"gautbl"
.LASF142:
	.string	"ciphone_str"
.LASF317:
	.string	"lextree_ssid_active"
.LASF71:
	.string	"hash_table_t"
.LASF340:
	.string	"hmm2"
.LASF257:
	.string	"n_alloclm"
.LASF43:
	.string	"_IO_marker"
.LASF57:
	.string	"float32"
.LASF260:
	.string	"history"
.LASF207:
	.string	"bgoff"
.LASF127:
	.string	"ciphone"
.LASF112:
	.string	"tmat"
.LASF100:
	.string	"s3lmwid_t"
.LASF216:
	.string	"n_tg_score"
.LASF318:
	.string	"comssid"
.LASF149:
	.string	"finishwid"
.LASF333:
	.string	"binln"
.LASF76:
	.string	"n_stream"
.LASF309:
	.string	"ssid2ln"
.LASF320:
	.string	"lextree_node_print"
.LASF217:
	.string	"n_tg_bo"
.LASF4:
	.string	"signed char"
.LASF261:
	.string	"hmm_state_t"
.LASF288:
	.string	"ssid_lc"
.LASF42:
	.string	"_IO_FILE"
.LASF334:
	.string	"lextree_hmm_propagate"
.LASF241:
	.string	"gauscore"
.LASF298:
	.string	"next_active"
.LASF114:
	.string	"phone_t"
.LASF266:
	.string	"vh_lmstate_t"
.LASF1:
	.string	"unsigned char"
.LASF157:
	.string	"comwt"
.LASF330:
	.string	"lextree_hmm_histbin"
.LASF179:
	.string	"tg_t"
.LASF181:
	.string	"membg_t"
.LASF158:
	.string	"n_comstate"
.LASF218:
	.string	"n_tgcache_hit"
.LASF259:
	.string	"score"
.LASF109:
	.string	"filler"
.LASF148:
	.string	"startwid"
.LASF196:
	.string	"bg_seg_sz"
.LASF68:
	.string	"table"
.LASF11:
	.string	"char"
.LASF173:
	.string	"firstbg"
.LASF99:
	.string	"s3wid_t"
.LASF248:
	.string	"n_featlen"
.LASF84:
	.string	"mixw"
.LASF169:
	.string	"wordlist"
.LASF234:
	.string	"origsize"
.LASF226:
	.string	"lmset_s"
.LASF227:
	.string	"lmset_t"
.LASF346:
	.string	"_IO_lock_t"
.LASF145:
	.string	"filler_start"
.LASF344:
	.string	"lextree.c"
.LASF119:
	.string	"ph_lc_t"
.LASF240:
	.string	"vqdist"
.LASF289:
	.string	"composite"
.LASF159:
	.string	"n_comsseq"
.LASF162:
	.string	"prob"
.LASF293:
	.string	"lextree_lcroot_t"
.LASF265:
	.string	"lm3g"
.LASF14:
	.string	"_IO_read_ptr"
.LASF155:
	.string	"comstate"
.LASF130:
	.string	"n_sseq"
.LASF46:
	.string	"_pos"
.LASF115:
	.string	"ph_rc_s"
.LASF116:
	.string	"ph_rc_t"
.LASF321:
	.string	"lextree_subtree_print"
.LASF284:
	.string	"lwidlist"
.LASF91:
	.string	"frm_sen_eval"
.LASF146:
	.string	"filler_end"
.LASF25:
	.string	"_markers"
.LASF117:
	.string	"ph_lc_s"
.LASF154:
	.string	"single_lc"
.LASF131:
	.string	"cd2cisen"
.LASF324:
	.string	"inscore"
.LASF163:
	.string	"fillpen_t"
.LASF199:
	.string	"bgprob"
.LASF96:
	.string	"s3pid_t"
.LASF223:
	.string	"n_lmclass"
.LASF295:
	.string	"n_lc"
.LASF297:
	.string	"active"
.LASF211:
	.string	"n_bg_inmem"
.LASF347:
	.string	"anytype_s"
.LASF59:
	.string	"anytype_t"
.LASF256:
	.string	"n_lm"
.LASF34:
	.string	"_offset"
.LASF338:
	.string	"newscore"
.LASF214:
	.string	"n_tg_fill"
.LASF198:
	.string	"tginfo"
.LASF326:
	.string	"thresh"
.LASF331:
	.string	"bestscr"
.LASF230:
	.string	"tmat_t"
.LASF191:
	.string	"max_ug"
.LASF0:
	.string	"long unsigned int"
.LASF174:
	.string	"ug_t"
.LASF120:
	.string	"n_ciphone"
.LASF228:
	.string	"wordprob_t"
.LASF28:
	.string	"_flags2"
.LASF329:
	.string	"lextree_hmm_eval"
.LASF182:
	.string	"tginfo_s"
.LASF184:
	.string	"tginfo_t"
.LASF16:
	.string	"_IO_read_base"
.LASF287:
	.string	"ascr_t"
.LASF140:
	.string	"dictword_t"
.LASF244:
	.string	"gs_s"
.LASF252:
	.string	"gs_t"
.LASF41:
	.string	"_unused2"
.LASF273:
	.string	"vhid"
.LASF254:
	.string	"lmset"
.LASF98:
	.string	"s3tmatid_t"
.LASF221:
	.string	"dict_size"
.LASF29:
	.string	"_old_offset"
.LASF215:
	.string	"n_tg_inmem"
.LASF108:
	.string	"word_posn_t"
.LASF325:
	.string	"inhist"
.LASF205:
	.string	"n_tgbowt"
.LASF296:
	.string	"n_node"
.LASF164:
	.string	"lmclass_word_s"
.LASF167:
	.string	"lmclass_word_t"
.LASF47:
	.string	"long long int"
.LASF322:
	.string	"lextree_dump"
.LASF232:
	.string	"n_gau"
.LASF50:
	.string	"double"
.LASF152:
	.string	"internal"
.LASF134:
	.string	"wpos_ci_lclist"
.LASF19:
	.string	"_IO_write_end"
.LASF192:
	.string	"wordstr"
.LASF308:
	.string	"parent"
.LASF93:
	.string	"gau_type"
.LASF267:
	.string	"ascr"
.LASF264:
	.string	"hmm_t"
.LASF49:
	.string	"float"
.LASF132:
	.string	"sen2cimap"
.LASF247:
	.string	"n_density"
.LASF314:
	.string	"lextree_ci_active"
.LASF20:
	.string	"_IO_buf_base"
.LASF237:
	.string	"featdim"
.LASF3:
	.string	"unsigned int"
.LASF106:
	.string	"WORD_POSN_INTERNAL"
.LASF323:
	.string	"lextree_enter"
.LASF339:
	.string	"newHeurScore"
.LASF151:
	.string	"dict_t"
.LASF104:
	.string	"WORD_POSN_END"
.LASF327:
	.string	"lextree_active_swap"
.LASF187:
	.string	"lm_tgcache_entry_t"
.LASF328:
	.string	"lextree_build"
.LASF249:
	.string	"n_mbyte"
.LASF290:
	.string	"frame"
.LASF85:
	.string	"mgau_t"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF313:
	.string	"lextree_free"
.LASF45:
	.string	"_sbuf"
.LASF242:
	.string	"mgau_sl"
.LASF285:
	.string	"vithist_t"
.LASF345:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF126:
	.string	"ciphone_ht"
.LASF275:
	.string	"vh_lms2vh_t"
.LASF13:
	.string	"_flags"
.LASF235:
	.string	"n_sv"
.LASF175:
	.string	"probid"
.LASF280:
	.string	"bghist"
.LASF316:
	.string	"list"
.LASF40:
	.string	"_mode"
.LASF343:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF201:
	.string	"tgbowt"
.LASF186:
	.string	"lscr"
.LASF105:
	.string	"WORD_POSN_SINGLE"
.LASF303:
	.string	"lextree_t"
.LASF183:
	.string	"n_tg"
.LASF141:
	.string	"mdef"
.LASF239:
	.string	"subvec"
.LASF231:
	.string	"arraysize_t"
.LASF136:
	.string	"word"
.LASF125:
	.string	"n_tmat"
.LASF12:
	.string	"FILE"
.LASF75:
	.string	"cepsize_used"
.LASF189:
	.string	"n_ug"
.LASF66:
	.string	"hash_entry_s"
.LASF67:
	.string	"hash_entry_t"
.LASF209:
	.string	"tgcache"
.LASF276:
	.string	"entry"
.LASF77:
	.string	"stream_len"
.LASF150:
	.string	"silwid"
.LASF253:
	.string	"dict2pid"
.LASF69:
	.string	"size"
.LASF48:
	.string	"long long unsigned int"
.LASF82:
	.string	"n_comp"
.LASF90:
	.string	"distfloor"
.LASF233:
	.string	"vector_gautbl_t"
.LASF8:
	.string	"__off_t"
.LASF315:
	.string	"ci_active"
.LASF219:
	.string	"access_type"
.LASF95:
	.string	"s3cipid_t"
.LASF83:
	.string	"mean"
.LASF110:
	.string	"ciphone_t"
.LASF208:
	.string	"tgoff"
.LASF271:
	.string	"lmstate"
.LASF118:
	.string	"rclist"
.LASF65:
	.string	"glist_t"
.LASF72:
	.string	"feat_s"
.LASF81:
	.string	"feat_t"
.LASF277:
	.string	"frame_start"
.LASF79:
	.string	"varnorm"
.LASF61:
	.string	"gnode_s"
.LASF64:
	.string	"gnode_t"
.LASF337:
	.string	"heur_type"
.LASF190:
	.string	"n_bg"
.LASF23:
	.string	"_IO_backup_base"
.LASF301:
	.string	"best"
.LASF32:
	.string	"_shortbuf"
.LASF342:
	.string	"lastfrm"
.LASF188:
	.string	"lm_s"
.LASF225:
	.string	"lm_t"
.LASF165:
	.string	"dictwid"
.LASF153:
	.string	"ldiph_lc"
.LASF300:
	.string	"n_next_active"
.LASF113:
	.string	"wpos"
.LASF80:
	.string	"compute_feat"
.LASF44:
	.string	"_next"
.LASF272:
	.string	"vithist_entry_t"
.LASF9:
	.string	"__off64_t"
.LASF128:
	.string	"phone"
.LASF195:
	.string	"log_bg_seg_sz"
.LASF147:
	.string	"comp_head"
.LASF123:
	.string	"n_ci_sen"
.LASF177:
	.string	"firsttg"
.LASF88:
	.string	"veclen"
.LASF21:
	.string	"_IO_buf_end"
.LASF193:
	.string	"startlwid"
.LASF245:
	.string	"n_feat"
.LASF171:
	.string	"lmlog_t"
.LASF73:
	.string	"name"
.LASF92:
	.string	"frm_gau_eval"
.LASF56:
	.string	"uint8"
.LASF278:
	.string	"n_entry"
.LASF5:
	.string	"short int"
.LASF176:
	.string	"bowtid"
.LASF166:
	.string	"LOGprob"
.LASF133:
	.string	"ciphone2n_cd_sen"
.LASF283:
	.string	"lms2vh_root"
.LASF282:
	.string	"bestvh"
.LASF101:
	.string	"s3frmid_t"
.LASF122:
	.string	"n_emit_state"
.LASF31:
	.string	"_vtable_offset"
.LASF250:
	.string	"codeword"
.LASF279:
	.string	"n_frm"
.LASF270:
	.string	"valid"
.LASF203:
	.string	"n_bgprob"
.LASF332:
	.string	"nbin"
.LASF52:
	.string	"int16"
.LASF97:
	.string	"s3ssid_t"
.LASF255:
	.string	"fillpen"
.LASF15:
	.string	"_IO_read_end"
.LASF204:
	.string	"n_tgprob"
.LASF224:
	.string	"inclass_ugscore"
.LASF172:
	.string	"bowt"
.LASF229:
	.string	"n_state"
.LASF70:
	.string	"nocase"
.LASF168:
	.string	"lmclass_s"
.LASF170:
	.string	"lmclass_t"
.LASF27:
	.string	"_fileno"
.LASF107:
	.string	"WORD_POSN_UNDEFINED"
.LASF143:
	.string	"max_words"
.LASF263:
	.string	"bestscore"
.LASF58:
	.string	"float64"
.LASF220:
	.string	"dict2lmwid"
.LASF121:
	.string	"n_phone"
.LASF2:
	.string	"short unsigned int"
.LASF197:
	.string	"membg"
.LASF294:
	.string	"lcroot"
.LASF51:
	.string	"int32"
.LASF206:
	.string	"byteswap"
.LASF18:
	.string	"_IO_write_ptr"
.LASF178:
	.string	"bg_t"
.LASF194:
	.string	"finishlwid"
.LASF144:
	.string	"n_word"
.LASF137:
	.string	"pronlen"
.LASF258:
	.string	"kbcore_t"
.LASF335:
	.string	"phn_heur_list"
.LASF304:
	.string	"wordprob"
.LASF268:
	.string	"pred"
.LASF63:
	.string	"next"
.LASF213:
	.string	"n_bg_bo"
.LASF62:
	.string	"data"
.LASF305:
	.string	"lextree"
.LASF55:
	.string	"uint16"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
