	.file	"plan9.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 plan9.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"plan9.c"
.LC1:
	.string	"unnamed"
	.text
	.globl	P9AllocHMM
	.type	P9AllocHMM, @function
P9AllocHMM:
.LFB2:
	.file 1 "plan9.c"
	.loc 1 32 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# M, M
	.loc 1 35 0
	movl	$152, %edx	#,
	movl	$35, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp84, hmm
	.loc 1 36 0
	movl	-20(%rbp), %eax	# M, tmp85
	addl	$2, %eax	#, D.6573
	cltq
	imulq	$92, %rax, %rax	#, D.6574, D.6574
	movq	%rax, %rdx	# D.6574,
	movl	$36, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# hmm, tmp86
	movq	%rax, 8(%rdx)	# D.6575, hmm_1->ins
	.loc 1 37 0
	movl	-20(%rbp), %eax	# M, tmp87
	addl	$2, %eax	#, D.6573
	cltq
	imulq	$92, %rax, %rax	#, D.6574, D.6574
	movq	%rax, %rdx	# D.6574,
	movl	$37, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# hmm, tmp88
	movq	%rax, 24(%rdx)	# D.6575, hmm_1->del
	.loc 1 38 0
	movl	-20(%rbp), %eax	# M, tmp89
	addl	$2, %eax	#, D.6573
	cltq
	imulq	$92, %rax, %rax	#, D.6574, D.6574
	movq	%rax, %rdx	# D.6574,
	movl	$38, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# hmm, tmp90
	movq	%rax, 16(%rdx)	# D.6575, hmm_1->mat
	.loc 1 39 0
	movl	-20(%rbp), %eax	# M, tmp91
	addl	$2, %eax	#, D.6573
	cltq
	movq	%rax, %rdx	# D.6574,
	movl	$39, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# hmm, tmp92
	movq	%rax, 120(%rdx)	# D.6575, hmm_1->ref
	.loc 1 40 0
	movl	-20(%rbp), %eax	# M, tmp93
	addl	$2, %eax	#, D.6573
	cltq
	movq	%rax, %rdx	# D.6574,
	movl	$40, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# hmm, tmp94
	movq	%rax, 128(%rdx)	# D.6575, hmm_1->cs
	.loc 1 41 0
	movl	-20(%rbp), %eax	# M, tmp95
	addl	$2, %eax	#, D.6573
	cltq
	salq	$4, %rax	#, D.6574
	movq	%rax, %rdx	# D.6574,
	movl	$41, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# hmm, tmp96
	movq	%rax, 136(%rdx)	# D.6575, hmm_1->xray
	.loc 1 42 0
	movq	-8(%rbp), %rax	# hmm, tmp97
	movl	-20(%rbp), %edx	# M, tmp98
	movl	%edx, (%rax)	# tmp98, hmm_1->M
	.loc 1 43 0
	movl	$.LC1, %edi	#,
	call	Strdup	#
	movq	-8(%rbp), %rdx	# hmm, tmp99
	movq	%rax, 112(%rdx)	# D.6576, hmm_1->name
	.loc 1 45 0
	movq	-8(%rbp), %rax	# hmm, tmp100
	movl	$0, 144(%rax)	#, hmm_1->flags
	.loc 1 46 0
	movq	-8(%rbp), %rax	# hmm, tmp101
	movq	%rax, %rdi	# tmp101,
	call	P9ZeroHMM	#
	.loc 1 47 0
	movq	-8(%rbp), %rax	# hmm, D.6577
	.loc 1 48 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	P9AllocHMM, .-P9AllocHMM
	.globl	P9FreeHMM
	.type	P9FreeHMM, @function
P9FreeHMM:
.LFB3:
	.loc 1 51 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# hmm, hmm
	.loc 1 52 0
	cmpq	$0, -8(%rbp)	#, hmm
	jne	.L4	#,
	.loc 1 52 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6580
	jmp	.L5	#
.L4:
	.loc 1 53 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp71
	movq	120(%rax), %rax	# hmm_2(D)->ref, D.6581
	movq	%rax, %rdi	# D.6581,
	call	free	#
	.loc 1 54 0
	movq	-8(%rbp), %rax	# hmm, tmp72
	movq	128(%rax), %rax	# hmm_2(D)->cs, D.6581
	movq	%rax, %rdi	# D.6581,
	call	free	#
	.loc 1 55 0
	movq	-8(%rbp), %rax	# hmm, tmp73
	movq	136(%rax), %rax	# hmm_2(D)->xray, D.6582
	movq	%rax, %rdi	# D.6582,
	call	free	#
	.loc 1 56 0
	movq	-8(%rbp), %rax	# hmm, tmp74
	movq	112(%rax), %rax	# hmm_2(D)->name, D.6581
	movq	%rax, %rdi	# D.6581,
	call	free	#
	.loc 1 57 0
	movq	-8(%rbp), %rax	# hmm, tmp75
	movq	16(%rax), %rax	# hmm_2(D)->mat, D.6583
	testq	%rax, %rax	# D.6583
	je	.L6	#,
	.loc 1 57 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp76
	movq	16(%rax), %rax	# hmm_2(D)->mat, D.6583
	movq	%rax, %rdi	# D.6583,
	call	free	#
.L6:
	.loc 1 58 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp77
	movq	8(%rax), %rax	# hmm_2(D)->ins, D.6583
	testq	%rax, %rax	# D.6583
	je	.L7	#,
	.loc 1 58 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp78
	movq	8(%rax), %rax	# hmm_2(D)->ins, D.6583
	movq	%rax, %rdi	# D.6583,
	call	free	#
.L7:
	.loc 1 59 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp79
	movq	24(%rax), %rax	# hmm_2(D)->del, D.6583
	testq	%rax, %rax	# D.6583
	je	.L8	#,
	.loc 1 59 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp80
	movq	24(%rax), %rax	# hmm_2(D)->del, D.6583
	movq	%rax, %rdi	# D.6583,
	call	free	#
.L8:
	.loc 1 60 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp81
	movq	%rax, %rdi	# tmp81,
	call	free	#
	.loc 1 61 0
	movl	$1, %eax	#, D.6580
.L5:
	.loc 1 62 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	P9FreeHMM, .-P9FreeHMM
	.globl	P9ZeroHMM
	.type	P9ZeroHMM, @function
P9ZeroHMM:
.LFB4:
	.loc 1 71 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# hmm, hmm
	.loc 1 74 0
	movl	$0, -12(%rbp)	#, k
	jmp	.L10	#
.L15:
	.loc 1 76 0
	movl	$0, -8(%rbp)	#, ts
	jmp	.L11	#
.L12:
	.loc 1 78 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp86
	movq	16(%rax), %rdx	# hmm_5(D)->mat, D.6585
	movl	-12(%rbp), %eax	# k, tmp87
	cltq
	imulq	$92, %rax, %rax	#, D.6586, D.6586
	leaq	(%rdx,%rax), %rcx	#, D.6585
	movl	-8(%rbp), %eax	# ts, tmp89
	movslq	%eax, %rdx	# tmp89, tmp88
	movl	.LC2(%rip), %eax	#, tmp90
	movl	%eax, (%rcx,%rdx,4)	# tmp90, _12->t
	.loc 1 79 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp91
	movq	8(%rax), %rdx	# hmm_5(D)->ins, D.6585
	movl	-12(%rbp), %eax	# k, tmp92
	cltq
	imulq	$92, %rax, %rax	#, D.6586, D.6586
	leaq	(%rdx,%rax), %rcx	#, D.6585
	movl	-8(%rbp), %eax	# ts, tmp94
	movslq	%eax, %rdx	# tmp94, tmp93
	movl	.LC2(%rip), %eax	#, tmp95
	movl	%eax, (%rcx,%rdx,4)	# tmp95, _16->t
	.loc 1 80 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp96
	movq	24(%rax), %rdx	# hmm_5(D)->del, D.6585
	movl	-12(%rbp), %eax	# k, tmp97
	cltq
	imulq	$92, %rax, %rax	#, D.6586, D.6586
	leaq	(%rdx,%rax), %rcx	#, D.6585
	movl	-8(%rbp), %eax	# ts, tmp99
	movslq	%eax, %rdx	# tmp99, tmp98
	movl	.LC2(%rip), %eax	#, tmp100
	movl	%eax, (%rcx,%rdx,4)	# tmp100, _20->t
	.loc 1 76 0 discriminator 2
	addl	$1, -8(%rbp)	#, ts
.L11:
	.loc 1 76 0 is_stmt 0 discriminator 1
	cmpl	$2, -8(%rbp)	#, ts
	jle	.L12	#,
	.loc 1 82 0 is_stmt 1
	movl	$0, -4(%rbp)	#, idx
	jmp	.L13	#
.L14:
	.loc 1 84 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp101
	movq	16(%rax), %rdx	# hmm_5(D)->mat, D.6585
	movl	-12(%rbp), %eax	# k, tmp102
	cltq
	imulq	$92, %rax, %rax	#, D.6586, D.6586
	leaq	(%rdx,%rax), %rcx	#, D.6585
	movl	-4(%rbp), %eax	# idx, tmp104
	movslq	%eax, %rdx	# tmp104, tmp103
	movl	.LC2(%rip), %eax	#, tmp105
	movl	%eax, 12(%rcx,%rdx,4)	# tmp105, _27->p
	.loc 1 85 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp106
	movq	8(%rax), %rdx	# hmm_5(D)->ins, D.6585
	movl	-12(%rbp), %eax	# k, tmp107
	cltq
	imulq	$92, %rax, %rax	#, D.6586, D.6586
	leaq	(%rdx,%rax), %rcx	#, D.6585
	movl	-4(%rbp), %eax	# idx, tmp109
	movslq	%eax, %rdx	# tmp109, tmp108
	movl	.LC2(%rip), %eax	#, tmp110
	movl	%eax, 12(%rcx,%rdx,4)	# tmp110, _31->p
	.loc 1 86 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp111
	movq	24(%rax), %rdx	# hmm_5(D)->del, D.6585
	movl	-12(%rbp), %eax	# k, tmp112
	cltq
	imulq	$92, %rax, %rax	#, D.6586, D.6586
	leaq	(%rdx,%rax), %rcx	#, D.6585
	movl	-4(%rbp), %eax	# idx, tmp114
	movslq	%eax, %rdx	# tmp114, tmp113
	movl	.LC2(%rip), %eax	#, tmp115
	movl	%eax, 12(%rcx,%rdx,4)	# tmp115, _35->p
	.loc 1 82 0 discriminator 2
	addl	$1, -4(%rbp)	#, idx
.L13:
	.loc 1 82 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.0
	cmpl	%eax, -4(%rbp)	# Alphabet_size.0, idx
	jl	.L14	#,
	.loc 1 74 0 is_stmt 1
	addl	$1, -12(%rbp)	#, k
.L10:
	.loc 1 74 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp116
	movl	(%rax), %eax	# hmm_5(D)->M, D.6584
	addl	$1, %eax	#, D.6584
	cmpl	-12(%rbp), %eax	# k, D.6584
	jge	.L15	#,
	.loc 1 89 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	P9ZeroHMM, .-P9ZeroHMM
	.globl	P9Renormalize
	.type	P9Renormalize, @function
P9Renormalize:
.LFB5:
	.loc 1 105 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# hmm, hmm
	.loc 1 108 0
	movl	$0, -4(%rbp)	#, k
	jmp	.L17	#
.L20:
	.loc 1 111 0
	movq	-24(%rbp), %rax	# hmm, tmp87
	movq	16(%rax), %rdx	# hmm_3(D)->mat, D.6588
	movl	-4(%rbp), %eax	# k, tmp88
	cltq
	imulq	$92, %rax, %rax	#, D.6589, D.6589
	addq	%rdx, %rax	# D.6588, D.6588
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.6590,
	call	FNorm	#
	.loc 1 112 0
	movq	-24(%rbp), %rax	# hmm, tmp89
	movq	8(%rax), %rdx	# hmm_3(D)->ins, D.6588
	movl	-4(%rbp), %eax	# k, tmp90
	cltq
	imulq	$92, %rax, %rax	#, D.6589, D.6589
	addq	%rdx, %rax	# D.6588, D.6588
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.6590,
	call	FNorm	#
	.loc 1 113 0
	cmpl	$0, -4(%rbp)	#, k
	jle	.L18	#,
	.loc 1 113 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp91
	movq	24(%rax), %rdx	# hmm_3(D)->del, D.6588
	movl	-4(%rbp), %eax	# k, tmp92
	cltq
	imulq	$92, %rax, %rax	#, D.6589, D.6589
	addq	%rdx, %rax	# D.6588, D.6588
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.6590,
	call	FNorm	#
.L18:
	.loc 1 115 0 is_stmt 1
	cmpl	$0, -4(%rbp)	#, k
	jle	.L19	#,
	.loc 1 115 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.1
	movq	-24(%rbp), %rdx	# hmm, tmp93
	movq	16(%rdx), %rcx	# hmm_3(D)->mat, D.6588
	movl	-4(%rbp), %edx	# k, tmp94
	movslq	%edx, %rdx	# tmp94, D.6589
	imulq	$92, %rdx, %rdx	#, D.6589, D.6589
	addq	%rcx, %rdx	# D.6588, D.6588
	addq	$12, %rdx	#, D.6591
	movl	%eax, %esi	# Alphabet_size.1,
	movq	%rdx, %rdi	# D.6591,
	call	FNorm	#
.L19:
	.loc 1 116 0 is_stmt 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.2
	movq	-24(%rbp), %rdx	# hmm, tmp95
	movq	8(%rdx), %rcx	# hmm_3(D)->ins, D.6588
	movl	-4(%rbp), %edx	# k, tmp96
	movslq	%edx, %rdx	# tmp96, D.6589
	imulq	$92, %rdx, %rdx	#, D.6589, D.6589
	addq	%rcx, %rdx	# D.6588, D.6588
	addq	$12, %rdx	#, D.6591
	movl	%eax, %esi	# Alphabet_size.2,
	movq	%rdx, %rdi	# D.6591,
	call	FNorm	#
	.loc 1 108 0
	addl	$1, -4(%rbp)	#, k
.L17:
	.loc 1 108 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp97
	movl	(%rax), %eax	# hmm_3(D)->M, D.6587
	cmpl	-4(%rbp), %eax	# k, D.6587
	jge	.L20	#,
	.loc 1 118 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	P9Renormalize, .-P9Renormalize
	.section	.rodata
	.align 8
.LC4:
	.string	"No support for non-protein, non-nucleic acid alphabets."
	.text
	.globl	P9DefaultNullModel
	.type	P9DefaultNullModel, @function
P9DefaultNullModel:
.LFB6:
	.loc 1 129 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# null, null
	.loc 1 131 0
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.3
	cmpl	$3, %eax	#, Alphabet_type.3
	jne	.L22	#,
	.loc 1 132 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L23	#
.L24:
	.loc 1 133 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp70
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6592
	movq	-24(%rbp), %rax	# null, tmp71
	addq	%rax, %rdx	# tmp71, D.6593
	movl	-4(%rbp), %eax	# x, tmp73
	cltq
	movl	aafq(,%rax,4), %eax	# aafq, D.6594
	movl	%eax, (%rdx)	# D.6594, *_9
	.loc 1 132 0 discriminator 2
	addl	$1, -4(%rbp)	#, x
.L23:
	.loc 1 132 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.4
	cmpl	%eax, -4(%rbp)	# Alphabet_size.4, x
	jl	.L24	#,
	jmp	.L21	#
.L22:
	.loc 1 134 0 is_stmt 1
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.5
	cmpl	$2, %eax	#, Alphabet_type.5
	jne	.L26	#,
	.loc 1 135 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L27	#
.L28:
	.loc 1 136 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp74
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6592
	movq	-24(%rbp), %rax	# null, tmp75
	addq	%rax, %rdx	# tmp75, D.6593
	movl	.LC3(%rip), %eax	#, tmp76
	movl	%eax, (%rdx)	# tmp76, *_17
	.loc 1 135 0 discriminator 2
	addl	$1, -4(%rbp)	#, x
.L27:
	.loc 1 135 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.6
	cmpl	%eax, -4(%rbp)	# Alphabet_size.6, x
	jl	.L28	#,
	jmp	.L21	#
.L26:
	.loc 1 138 0 is_stmt 1
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L21:
	.loc 1 139 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	P9DefaultNullModel, .-P9DefaultNullModel
	.section	.rodata
	.align 4
.LC2:
	.long	0
	.align 4
.LC3:
	.long	1048576000
	.text
.Letext0:
	.file 2 "structs.h"
	.file 3 "squid.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2d0
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF27
	.byte	0x1
	.long	.LASF28
	.long	.LASF29
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.byte	0x8
	.long	0x72
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF12
	.uleb128 0x4
	.byte	0x8
	.long	0x87
	.uleb128 0x5
	.long	0x87
	.long	0xab
	.uleb128 0x6
	.long	0x65
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	0x87
	.long	0xbb
	.uleb128 0x6
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF13
	.byte	0x5c
	.byte	0x2
	.value	0x230
	.long	0xdf
	.uleb128 0x8
	.string	"t"
	.byte	0x2
	.value	0x231
	.long	0xab
	.byte	0
	.uleb128 0x8
	.string	"p"
	.byte	0x2
	.value	0x232
	.long	0x9b
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.long	.LASF14
	.byte	0x98
	.byte	0x2
	.value	0x237
	.long	0x16c
	.uleb128 0x8
	.string	"M"
	.byte	0x2
	.value	0x238
	.long	0x57
	.byte	0
	.uleb128 0x8
	.string	"ins"
	.byte	0x2
	.value	0x239
	.long	0x16c
	.byte	0x8
	.uleb128 0x8
	.string	"mat"
	.byte	0x2
	.value	0x23a
	.long	0x16c
	.byte	0x10
	.uleb128 0x8
	.string	"del"
	.byte	0x2
	.value	0x23b
	.long	0x16c
	.byte	0x18
	.uleb128 0x9
	.long	.LASF15
	.byte	0x2
	.value	0x23d
	.long	0x9b
	.byte	0x20
	.uleb128 0x9
	.long	.LASF16
	.byte	0x2
	.value	0x241
	.long	0x6c
	.byte	0x70
	.uleb128 0x8
	.string	"ref"
	.byte	0x2
	.value	0x242
	.long	0x6c
	.byte	0x78
	.uleb128 0x8
	.string	"cs"
	.byte	0x2
	.value	0x243
	.long	0x6c
	.byte	0x80
	.uleb128 0x9
	.long	.LASF17
	.byte	0x2
	.value	0x244
	.long	0x95
	.byte	0x88
	.uleb128 0x9
	.long	.LASF18
	.byte	0x2
	.value	0x246
	.long	0x57
	.byte	0x90
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xbb
	.uleb128 0xa
	.long	.LASF19
	.byte	0x1
	.byte	0x1f
	.long	0x1ae
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ae
	.uleb128 0xb
	.string	"M"
	.byte	0x1
	.byte	0x1f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"hmm"
	.byte	0x1
	.byte	0x21
	.long	0x1ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xdf
	.uleb128 0xa
	.long	.LASF20
	.byte	0x1
	.byte	0x32
	.long	0x57
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e4
	.uleb128 0xb
	.string	"hmm"
	.byte	0x1
	.byte	0x32
	.long	0x1ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.long	.LASF21
	.byte	0x1
	.byte	0x46
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x237
	.uleb128 0xb
	.string	"hmm"
	.byte	0x1
	.byte	0x46
	.long	0x1ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"k"
	.byte	0x1
	.byte	0x48
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.string	"ts"
	.byte	0x1
	.byte	0x48
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"idx"
	.byte	0x1
	.byte	0x48
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF22
	.byte	0x1
	.byte	0x68
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x26f
	.uleb128 0xb
	.string	"hmm"
	.byte	0x1
	.byte	0x68
	.long	0x1ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"k"
	.byte	0x1
	.byte	0x6a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF23
	.byte	0x1
	.byte	0x80
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a7
	.uleb128 0xf
	.long	.LASF15
	.byte	0x1
	.byte	0x80
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"x"
	.byte	0x1
	.byte	0x82
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.long	0x87
	.long	0x2b2
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.long	.LASF24
	.byte	0x3
	.byte	0x81
	.long	0x2a7
	.uleb128 0x11
	.long	.LASF25
	.byte	0x2
	.byte	0x3a
	.long	0x57
	.uleb128 0x11
	.long	.LASF26
	.byte	0x2
	.byte	0x3b
	.long	0x57
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
.LASF19:
	.string	"P9AllocHMM"
.LASF12:
	.string	"double"
.LASF15:
	.string	"null"
.LASF11:
	.string	"float"
.LASF10:
	.string	"long long unsigned int"
.LASF26:
	.string	"Alphabet_size"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"basic_state"
.LASF0:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF24:
	.string	"aafq"
.LASF21:
	.string	"P9ZeroHMM"
.LASF17:
	.string	"xray"
.LASF29:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF20:
	.string	"P9FreeHMM"
.LASF3:
	.string	"unsigned int"
.LASF18:
	.string	"flags"
.LASF7:
	.string	"sizetype"
.LASF28:
	.string	"plan9.c"
.LASF9:
	.string	"long long int"
.LASF8:
	.string	"char"
.LASF25:
	.string	"Alphabet_type"
.LASF27:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF4:
	.string	"signed char"
.LASF23:
	.string	"P9DefaultNullModel"
.LASF14:
	.string	"plan9_s"
.LASF16:
	.string	"name"
.LASF22:
	.string	"P9Renormalize"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
