	.file	"prior.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 prior.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"prior.c"
	.text
	.globl	P7AllocPrior
	.type	P7AllocPrior, @function
P7AllocPrior:
.LFB2:
	.file 1 "prior.c"
	.loc 1 37 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 37 0
	movl	$40016, %edx	#,
	movl	$37, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	P7AllocPrior, .-P7AllocPrior
	.globl	P7FreePrior
	.type	P7FreePrior, @function
P7FreePrior:
.LFB3:
	.loc 1 40 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pri, pri
	.loc 1 40 0
	movq	-8(%rbp), %rax	# pri, tmp59
	movq	%rax, %rdi	# tmp59,
	call	free	#
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	P7FreePrior, .-P7FreePrior
	.globl	P7LaplacePrior
	.type	P7LaplacePrior, @function
P7LaplacePrior:
.LFB4:
	.loc 1 54 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 57 0
	call	P7AllocPrior	#
	movq	%rax, -8(%rbp)	# tmp66, pri
	.loc 1 58 0
	movq	-8(%rbp), %rax	# pri, tmp67
	movl	$0, (%rax)	#, pri_1->strategy
	.loc 1 60 0
	movq	-8(%rbp), %rax	# pri, tmp68
	movl	$1, 4(%rax)	#, pri_1->tnum
	.loc 1 61 0
	movq	-8(%rbp), %rdx	# pri, tmp69
	movl	.LC1(%rip), %eax	#, tmp70
	movl	%eax, 8(%rdx)	# tmp70, pri_1->tq
	.loc 1 62 0
	movq	-8(%rbp), %rax	# pri, tmp71
	addq	$808, %rax	#, D.7131
	movss	.LC1(%rip), %xmm0	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7131,
	call	FSet	#
	.loc 1 64 0
	movq	-8(%rbp), %rax	# pri, tmp72
	movl	$1, 6408(%rax)	#, pri_1->mnum
	.loc 1 65 0
	movq	-8(%rbp), %rdx	# pri, tmp73
	movl	.LC1(%rip), %eax	#, tmp74
	movl	%eax, 6412(%rdx)	# tmp74, pri_1->mq
	.loc 1 66 0
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.0
	movq	-8(%rbp), %rdx	# pri, tmp75
	addq	$7212, %rdx	#, D.7132
	movss	.LC1(%rip), %xmm0	#,
	movl	%eax, %esi	# Alphabet_size.0,
	movq	%rdx, %rdi	# D.7132,
	call	FSet	#
	.loc 1 68 0
	movq	-8(%rbp), %rax	# pri, tmp76
	movl	$1, 23212(%rax)	#, pri_1->inum
	.loc 1 69 0
	movq	-8(%rbp), %rdx	# pri, tmp77
	movl	.LC1(%rip), %eax	#, tmp78
	movl	%eax, 23216(%rdx)	# tmp78, pri_1->iq
	.loc 1 70 0
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.1
	movq	-8(%rbp), %rdx	# pri, tmp79
	addq	$24016, %rdx	#, D.7132
	movss	.LC1(%rip), %xmm0	#,
	movl	%eax, %esi	# Alphabet_size.1,
	movq	%rdx, %rdi	# D.7132,
	call	FSet	#
	.loc 1 72 0
	movq	-8(%rbp), %rax	# pri, D.7133
	.loc 1 73 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	P7LaplacePrior, .-P7LaplacePrior
	.section	.rodata
	.align 8
.LC2:
	.string	"Can't set prior; alphabet type not set yet"
	.text
	.globl	P7DefaultPrior
	.type	P7DefaultPrior, @function
P7DefaultPrior:
.LFB5:
	.loc 1 82 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 83 0
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.2
	cmpl	$2, %eax	#, Alphabet_type.2
	je	.L8	#,
	cmpl	$3, %eax	#, Alphabet_type.2
	je	.L9	#,
	testl	%eax, %eax	# Alphabet_type.2
	je	.L10	#,
	jmp	.L7	#
.L9:
	.loc 1 84 0
	call	default_amino_prior	#
	jmp	.L11	#
.L8:
	.loc 1 85 0
	call	default_nucleic_prior	#
	jmp	.L11	#
.L10:
	.loc 1 86 0
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L7:
	.loc 1 89 0
	movl	$0, %eax	#, D.7134
.L11:
	.loc 1 90 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	P7DefaultPrior, .-P7DefaultPrior
	.section	.rodata
.LC3:
	.string	"r"
	.align 8
.LC4:
	.string	"Failed to open HMMER prior file %s\n"
.LC5:
	.string	"DIRICHLET"
	.align 8
.LC6:
	.string	"No such prior strategy %s; failed to parse file %s"
.LC7:
	.string	"AMINO"
	.align 8
.LC8:
	.string	"HMM and/or sequences are DNA/RNA; can't use protein prior %s"
.LC9:
	.string	"NUCLEIC"
	.align 8
.LC10:
	.string	"HMM and/or sequences are protein; can't use DNA/RNA prior %s"
	.align 8
.LC11:
	.string	"Alphabet \"%s\" in prior file %s isn't valid."
	.align 8
.LC12:
	.string	"%d is bad; need at least one state transition mixture component"
	.align 8
.LC13:
	.string	"%d is bad, too many transition components (MAXDCHLET = %d)\n"
	.align 8
.LC14:
	.string	"%d is bad; need at least one match emission mixture component"
	.align 8
.LC15:
	.string	"%d is bad; too many match components (MAXDCHLET = %d)\n"
	.align 8
.LC16:
	.string	"%d is bad; need at least one insert emission mixture component"
	.align 8
.LC17:
	.string	"%d is bad; too many insert components (MAXDCHLET = %d)\n"
	.text
	.globl	P7ReadPrior
	.type	P7ReadPrior, @function
P7ReadPrior:
.LFB6:
	.loc 1 98 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# prifile, prifile
	.loc 1 104 0
	movq	-40(%rbp), %rax	# prifile, tmp106
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp106,
	call	fopen	#
	movq	%rax, -24(%rbp)	# tmp107, fp
	cmpq	$0, -24(%rbp)	#, fp
	jne	.L13	#,
	.loc 1 105 0
	movq	-40(%rbp), %rax	# prifile, tmp108
	movq	%rax, %rsi	# tmp108,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L13:
	.loc 1 106 0
	call	P7AllocPrior	#
	movq	%rax, -16(%rbp)	# tmp109, pri
	.loc 1 111 0
	movq	-24(%rbp), %rax	# fp, tmp110
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	Getword	#
	movq	%rax, -8(%rbp)	# tmp111, sptr
	.loc 1 112 0
	movq	-8(%rbp), %rax	# sptr, tmp112
	movq	%rax, %rdi	# tmp112,
	call	s2upper	#
	.loc 1 113 0
	movq	-8(%rbp), %rax	# sptr, tmp113
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	strcmp	#
	testl	%eax, %eax	# D.7136
	jne	.L14	#,
	.loc 1 113 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# pri, tmp114
	movl	$0, (%rax)	#, pri_9->strategy
	jmp	.L15	#
.L14:
	.loc 1 114 0 is_stmt 1
	movq	-40(%rbp), %rdx	# prifile, tmp115
	movq	-8(%rbp), %rax	# sptr, tmp116
	movq	%rax, %rsi	# tmp116,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L15:
	.loc 1 119 0
	movq	-24(%rbp), %rax	# fp, tmp117
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp117,
	call	Getword	#
	movq	%rax, -8(%rbp)	# tmp118, sptr
	.loc 1 120 0
	movq	-8(%rbp), %rax	# sptr, tmp119
	movq	%rax, %rdi	# tmp119,
	call	s2upper	#
	.loc 1 121 0
	movq	-8(%rbp), %rax	# sptr, tmp120
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp120,
	call	strcmp	#
	testl	%eax, %eax	# D.7136
	jne	.L16	#,
	.loc 1 123 0
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.3
	cmpl	$3, %eax	#, Alphabet_type.3
	je	.L18	#,
	.loc 1 124 0
	movq	-40(%rbp), %rax	# prifile, tmp121
	movq	%rax, %rsi	# tmp121,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	jmp	.L18	#
.L16:
	.loc 1 126 0
	movq	-8(%rbp), %rax	# sptr, tmp122
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp122,
	call	strcmp	#
	testl	%eax, %eax	# D.7136
	jne	.L19	#,
	.loc 1 128 0
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.4
	cmpl	$2, %eax	#, Alphabet_type.4
	je	.L18	#,
	.loc 1 129 0
	movq	-40(%rbp), %rax	# prifile, tmp123
	movq	%rax, %rsi	# tmp123,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	jmp	.L18	#
.L19:
	.loc 1 132 0
	movq	-40(%rbp), %rdx	# prifile, tmp124
	movq	-8(%rbp), %rax	# sptr, tmp125
	movq	%rax, %rsi	# tmp125,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L18:
	.loc 1 140 0
	movq	-24(%rbp), %rax	# fp, tmp126
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp126,
	call	Getword	#
	movq	%rax, %rdi	# D.7137,
	call	atoi	#
	movq	-16(%rbp), %rdx	# pri, tmp127
	movl	%eax, 4(%rdx)	# D.7136, pri_9->tnum
	.loc 1 141 0
	movq	-16(%rbp), %rax	# pri, tmp128
	movl	4(%rax), %eax	# pri_9->tnum, D.7136
	testl	%eax, %eax	# D.7136
	jns	.L21	#,
	.loc 1 142 0
	movq	-16(%rbp), %rax	# pri, tmp129
	movl	4(%rax), %eax	# pri_9->tnum, D.7136
	movl	%eax, %esi	# D.7136,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L21:
	.loc 1 143 0
	movq	-16(%rbp), %rax	# pri, tmp130
	movl	4(%rax), %eax	# pri_9->tnum, D.7136
	cmpl	$200, %eax	#, D.7136
	jle	.L22	#,
	.loc 1 144 0
	movl	$200, %esi	#,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L22:
	.loc 1 145 0
	movl	$0, -32(%rbp)	#, q
	jmp	.L23	#
.L26:
	.loc 1 147 0
	movq	-24(%rbp), %rax	# fp, tmp131
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp131,
	call	Getword	#
	movq	%rax, %rdi	# D.7137,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.7138
	cvtpd2ps	%xmm0, %xmm0	# D.7138, D.7139
	movq	-16(%rbp), %rax	# pri, tmp132
	movl	-32(%rbp), %edx	# q, tmp134
	movslq	%edx, %rdx	# tmp134, tmp133
	movss	%xmm0, 8(%rax,%rdx,4)	# D.7139, pri_9->tq
	.loc 1 148 0
	movl	$0, -28(%rbp)	#, x
	jmp	.L24	#
.L25:
	.loc 1 149 0 discriminator 2
	movq	-24(%rbp), %rax	# fp, tmp135
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp135,
	call	Getword	#
	movq	%rax, %rdi	# D.7137,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.7138
	cvtpd2ps	%xmm0, %xmm0	# D.7138, D.7139
	movq	-16(%rbp), %rcx	# pri, tmp136
	movl	-28(%rbp), %eax	# x, tmp138
	movslq	%eax, %rsi	# tmp138, tmp137
	movl	-32(%rbp), %eax	# q, tmp140
	movslq	%eax, %rdx	# tmp140, tmp139
	movq	%rdx, %rax	# tmp139, tmp141
	salq	$3, %rax	#, tmp142
	subq	%rdx, %rax	# tmp139, tmp141
	addq	%rsi, %rax	# tmp137, tmp143
	addq	$200, %rax	#, tmp144
	movss	%xmm0, 8(%rcx,%rax,4)	# D.7139, pri_9->t
	.loc 1 148 0 discriminator 2
	addl	$1, -28(%rbp)	#, x
.L24:
	.loc 1 148 0 is_stmt 0 discriminator 1
	cmpl	$6, -28(%rbp)	#, x
	jle	.L25	#,
	.loc 1 145 0 is_stmt 1
	addl	$1, -32(%rbp)	#, q
.L23:
	.loc 1 145 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# pri, tmp145
	movl	4(%rax), %eax	# pri_9->tnum, D.7136
	cmpl	-32(%rbp), %eax	# q, D.7136
	jg	.L26	#,
	.loc 1 158 0 is_stmt 1
	movq	-24(%rbp), %rax	# fp, tmp146
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp146,
	call	Getword	#
	movq	%rax, %rdi	# D.7137,
	call	atoi	#
	movq	-16(%rbp), %rdx	# pri, tmp147
	movl	%eax, 6408(%rdx)	# D.7136, pri_9->mnum
	.loc 1 159 0
	movq	-16(%rbp), %rax	# pri, tmp148
	movl	6408(%rax), %eax	# pri_9->mnum, D.7136
	testl	%eax, %eax	# D.7136
	jns	.L27	#,
	.loc 1 160 0
	movq	-16(%rbp), %rax	# pri, tmp149
	movl	6408(%rax), %eax	# pri_9->mnum, D.7136
	movl	%eax, %esi	# D.7136,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L27:
	.loc 1 161 0
	movq	-16(%rbp), %rax	# pri, tmp150
	movl	6408(%rax), %eax	# pri_9->mnum, D.7136
	cmpl	$200, %eax	#, D.7136
	jle	.L28	#,
	.loc 1 162 0
	movq	-16(%rbp), %rax	# pri, tmp151
	movl	6408(%rax), %eax	# pri_9->mnum, D.7136
	movl	$200, %edx	#,
	movl	%eax, %esi	# D.7136,
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L28:
	.loc 1 164 0
	movl	$0, -32(%rbp)	#, q
	jmp	.L29	#
.L32:
	.loc 1 166 0
	movq	-24(%rbp), %rax	# fp, tmp152
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp152,
	call	Getword	#
	movq	%rax, %rdi	# D.7137,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.7138
	cvtpd2ps	%xmm0, %xmm0	# D.7138, D.7139
	movq	-16(%rbp), %rax	# pri, tmp153
	movl	-32(%rbp), %edx	# q, tmp155
	movslq	%edx, %rdx	# tmp155, tmp154
	addq	$1600, %rdx	#, tmp156
	movss	%xmm0, 12(%rax,%rdx,4)	# D.7139, pri_9->mq
	.loc 1 167 0
	movl	$0, -28(%rbp)	#, x
	jmp	.L30	#
.L31:
	.loc 1 168 0 discriminator 2
	movq	-24(%rbp), %rax	# fp, tmp157
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp157,
	call	Getword	#
	movq	%rax, %rdi	# D.7137,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.7138
	cvtpd2ps	%xmm0, %xmm0	# D.7138, D.7139
	movq	-16(%rbp), %rcx	# pri, tmp158
	movl	-28(%rbp), %eax	# x, tmp160
	movslq	%eax, %rsi	# tmp160, tmp159
	movl	-32(%rbp), %eax	# q, tmp162
	movslq	%eax, %rdx	# tmp162, tmp161
	movq	%rdx, %rax	# tmp161, tmp163
	salq	$2, %rax	#, tmp163
	addq	%rdx, %rax	# tmp161, tmp163
	salq	$2, %rax	#, tmp164
	addq	%rsi, %rax	# tmp159, tmp165
	addq	$1800, %rax	#, tmp166
	movss	%xmm0, 12(%rcx,%rax,4)	# D.7139, pri_9->m
	.loc 1 167 0 discriminator 2
	addl	$1, -28(%rbp)	#, x
.L30:
	.loc 1 167 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.5
	cmpl	%eax, -28(%rbp)	# Alphabet_size.5, x
	jl	.L31	#,
	.loc 1 164 0 is_stmt 1
	addl	$1, -32(%rbp)	#, q
.L29:
	.loc 1 164 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# pri, tmp167
	movl	6408(%rax), %eax	# pri_9->mnum, D.7136
	cmpl	-32(%rbp), %eax	# q, D.7136
	jg	.L32	#,
	.loc 1 177 0 is_stmt 1
	movq	-24(%rbp), %rax	# fp, tmp168
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp168,
	call	Getword	#
	movq	%rax, %rdi	# D.7137,
	call	atoi	#
	movq	-16(%rbp), %rdx	# pri, tmp169
	movl	%eax, 23212(%rdx)	# D.7136, pri_9->inum
	.loc 1 178 0
	movq	-16(%rbp), %rax	# pri, tmp170
	movl	23212(%rax), %eax	# pri_9->inum, D.7136
	testl	%eax, %eax	# D.7136
	jns	.L33	#,
	.loc 1 179 0
	movq	-16(%rbp), %rax	# pri, tmp171
	movl	23212(%rax), %eax	# pri_9->inum, D.7136
	movl	%eax, %esi	# D.7136,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L33:
	.loc 1 180 0
	movq	-16(%rbp), %rax	# pri, tmp172
	movl	23212(%rax), %eax	# pri_9->inum, D.7136
	cmpl	$200, %eax	#, D.7136
	jle	.L34	#,
	.loc 1 181 0
	movq	-16(%rbp), %rax	# pri, tmp173
	movl	23212(%rax), %eax	# pri_9->inum, D.7136
	movl	$200, %edx	#,
	movl	%eax, %esi	# D.7136,
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L34:
	.loc 1 182 0
	movl	$0, -32(%rbp)	#, q
	jmp	.L35	#
.L38:
	.loc 1 184 0
	movq	-24(%rbp), %rax	# fp, tmp174
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp174,
	call	Getword	#
	movq	%rax, %rdi	# D.7137,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.7138
	cvtpd2ps	%xmm0, %xmm0	# D.7138, D.7139
	movq	-16(%rbp), %rax	# pri, tmp175
	movl	-32(%rbp), %edx	# q, tmp177
	movslq	%edx, %rdx	# tmp177, tmp176
	addq	$5804, %rdx	#, tmp178
	movss	%xmm0, (%rax,%rdx,4)	# D.7139, pri_9->iq
	.loc 1 185 0
	movl	$0, -28(%rbp)	#, x
	jmp	.L36	#
.L37:
	.loc 1 186 0 discriminator 2
	movq	-24(%rbp), %rax	# fp, tmp179
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp179,
	call	Getword	#
	movq	%rax, %rdi	# D.7137,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.7138
	cvtpd2ps	%xmm0, %xmm0	# D.7138, D.7139
	movq	-16(%rbp), %rcx	# pri, tmp180
	movl	-28(%rbp), %eax	# x, tmp182
	movslq	%eax, %rsi	# tmp182, tmp181
	movl	-32(%rbp), %eax	# q, tmp184
	movslq	%eax, %rdx	# tmp184, tmp183
	movq	%rdx, %rax	# tmp183, tmp185
	salq	$2, %rax	#, tmp185
	addq	%rdx, %rax	# tmp183, tmp185
	salq	$2, %rax	#, tmp186
	addq	%rsi, %rax	# tmp181, tmp187
	addq	$6004, %rax	#, tmp188
	movss	%xmm0, (%rcx,%rax,4)	# D.7139, pri_9->i
	.loc 1 185 0 discriminator 2
	addl	$1, -28(%rbp)	#, x
.L36:
	.loc 1 185 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.6
	cmpl	%eax, -28(%rbp)	# Alphabet_size.6, x
	jl	.L37	#,
	.loc 1 182 0 is_stmt 1
	addl	$1, -32(%rbp)	#, q
.L35:
	.loc 1 182 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# pri, tmp189
	movl	23212(%rax), %eax	# pri_9->inum, D.7136
	cmpl	-32(%rbp), %eax	# q, D.7136
	jg	.L38	#,
	.loc 1 189 0 is_stmt 1
	movq	-24(%rbp), %rax	# fp, tmp190
	movq	%rax, %rdi	# tmp190,
	call	fclose	#
	.loc 1 190 0
	movq	-16(%rbp), %rax	# pri, D.7140
	.loc 1 191 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	P7ReadPrior, .-P7ReadPrior
	.section	.rodata
	.align 8
.LC18:
	.string	"PAM prior is only valid for protein sequences"
	.align 8
.LC19:
	.string	"PAM prior may only be applied over an existing Dirichlet prior"
	.align 8
.LC20:
	.string	"PAM prior requires that the insert emissions be a single Dirichlet"
.LC21:
	.string	"aa"
.LC22:
	.string	"BLASTMAT"
	.align 8
.LC23:
	.string	"Failed to open PAM scoring matrix file %s"
	.align 8
.LC24:
	.string	"Failed to parse PAM scoring matrix file %s"
	.text
	.globl	PAMPrior
	.type	PAMPrior, @function
PAMPrior:
.LFB7:
	.loc 1 215 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# pamfile, pamfile
	movq	%rsi, -64(%rbp)	# pri, pri
	movss	%xmm0, -68(%rbp)	# wt, wt
	.loc 1 223 0
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.7
	cmpl	$3, %eax	#, Alphabet_type.7
	je	.L41	#,
	.loc 1 224 0
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L41:
	.loc 1 225 0
	movq	-64(%rbp), %rax	# pri, tmp97
	movl	(%rax), %eax	# pri_6(D)->strategy, D.7156
	testl	%eax, %eax	# D.7156
	je	.L42	#,
	.loc 1 226 0
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L42:
	.loc 1 227 0
	movq	-64(%rbp), %rax	# pri, tmp98
	movl	23212(%rax), %eax	# pri_6(D)->inum, D.7156
	cmpl	$1, %eax	#, D.7156
	je	.L52	#,
	.loc 1 228 0
	movl	$.LC20, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L52:
	.loc 1 232 0
	movq	-56(%rbp), %rax	# pamfile, tmp99
	movq	%rax, %rsi	# tmp99,
	movl	$.LC21, %edi	#,
	call	FileConcat	#
	movq	%rax, -8(%rbp)	# tmp100, blastpamfile
	.loc 1 234 0
	movq	-56(%rbp), %rax	# pamfile, tmp101
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	fopen	#
	movq	%rax, -16(%rbp)	# tmp102, fp
	cmpq	$0, -16(%rbp)	#, fp
	jne	.L44	#,
	.loc 1 234 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# pamfile, tmp103
	movl	$0, %edx	#,
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	EnvFileOpen	#
	movq	%rax, -16(%rbp)	# tmp104, fp
	cmpq	$0, -16(%rbp)	#, fp
	jne	.L44	#,
	.loc 1 235 0 is_stmt 1
	movq	-8(%rbp), %rax	# blastpamfile, tmp105
	movl	$0, %edx	#,
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp105,
	call	EnvFileOpen	#
	movq	%rax, -16(%rbp)	# tmp106, fp
	cmpq	$0, -16(%rbp)	#, fp
	jne	.L44	#,
	.loc 1 237 0
	movq	-56(%rbp), %rax	# pamfile, tmp107
	movq	%rax, %rsi	# tmp107,
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L44:
	.loc 1 238 0
	leaq	-44(%rbp), %rdx	#, tmp108
	leaq	-24(%rbp), %rcx	#, tmp109
	movq	-16(%rbp), %rax	# fp, tmp110
	movq	%rcx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	ParsePAMFile	#
	testl	%eax, %eax	# D.7156
	jne	.L45	#,
	.loc 1 239 0
	movq	-56(%rbp), %rax	# pamfile, tmp111
	movq	%rax, %rsi	# tmp111,
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L45:
	.loc 1 240 0
	movq	-16(%rbp), %rax	# fp, tmp112
	movq	%rax, %rdi	# tmp112,
	call	fclose	#
	.loc 1 241 0
	movq	-8(%rbp), %rax	# blastpamfile, tmp113
	movq	%rax, %rdi	# tmp113,
	call	free	#
	.loc 1 243 0
	movq	-64(%rbp), %rax	# pri, tmp114
	movl	$1, (%rax)	#, pri_6(D)->strategy
	.loc 1 244 0
	movq	-64(%rbp), %rax	# pri, tmp115
	movl	$20, 6408(%rax)	#, pri_6(D)->mnum
	.loc 1 249 0
	movl	$0, -40(%rbp)	#, xi
	jmp	.L46	#
.L49:
	.loc 1 250 0
	movl	$0, -36(%rbp)	#, xj
	jmp	.L47	#
.L48:
	.loc 1 252 0 discriminator 2
	movl	-40(%rbp), %eax	# xi, tmp117
	cltq
	movzbl	Alphabet(%rax), %eax	# Alphabet, D.7157
	movsbl	%al, %eax	# D.7157, D.7156
	subl	$65, %eax	#, tmp118
	movl	%eax, -32(%rbp)	# tmp118, idx1
	.loc 1 253 0 discriminator 2
	movl	-36(%rbp), %eax	# xj, tmp120
	cltq
	movzbl	Alphabet(%rax), %eax	# Alphabet, D.7157
	movsbl	%al, %eax	# D.7157, D.7156
	subl	$65, %eax	#, tmp121
	movl	%eax, -28(%rbp)	# tmp121, idx2
	.loc 1 254 0 discriminator 2
	movl	-36(%rbp), %eax	# xj, tmp123
	cltq
	movss	aafq(,%rax,4), %xmm0	# aafq, D.7158
	unpcklps	%xmm0, %xmm0	# D.7158, D.7158
	cvtps2pd	%xmm0, %xmm2	# D.7158, D.7159
	movsd	%xmm2, -80(%rbp)	# D.7159, %sfp
	movq	-24(%rbp), %rax	# pam, pam.8
	movl	-32(%rbp), %edx	# idx1, tmp124
	movslq	%edx, %rdx	# tmp124, D.7160
	salq	$3, %rdx	#, D.7160
	addq	%rdx, %rax	# D.7160, D.7161
	movq	(%rax), %rax	# *_30, D.7162
	movl	-28(%rbp), %edx	# idx2, tmp125
	movslq	%edx, %rdx	# tmp125, D.7160
	salq	$2, %rdx	#, D.7160
	addq	%rdx, %rax	# D.7160, D.7162
	movl	(%rax), %eax	# *_34, D.7156
	cvtsi2ss	%eax, %xmm0	# D.7156, D.7158
	movss	-44(%rbp), %xmm1	# scale, scale.9
	mulss	%xmm1, %xmm0	# scale.9, D.7158
	unpcklps	%xmm0, %xmm0	# D.7158, D.7158
	cvtps2pd	%xmm0, %xmm0	# D.7158, D.7159
	call	exp	#
	mulsd	-80(%rbp), %xmm0	# %sfp, D.7159
	unpcklpd	%xmm0, %xmm0	# D.7159
	cvtpd2ps	%xmm0, %xmm0	# D.7159, D.7158
	movq	-64(%rbp), %rcx	# pri, tmp126
	movl	-36(%rbp), %eax	# xj, tmp128
	movslq	%eax, %rsi	# tmp128, tmp127
	movl	-40(%rbp), %eax	# xi, tmp130
	movslq	%eax, %rdx	# tmp130, tmp129
	movq	%rdx, %rax	# tmp129, tmp131
	salq	$2, %rax	#, tmp131
	addq	%rdx, %rax	# tmp129, tmp131
	salq	$2, %rax	#, tmp132
	addq	%rsi, %rax	# tmp127, tmp133
	addq	$1800, %rax	#, tmp134
	movss	%xmm0, 12(%rcx,%rax,4)	# D.7158, pri_6(D)->m
	.loc 1 250 0 discriminator 2
	addl	$1, -36(%rbp)	#, xj
.L47:
	.loc 1 250 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.10
	cmpl	%eax, -36(%rbp)	# Alphabet_size.10, xj
	jl	.L48	#,
	.loc 1 249 0 is_stmt 1
	addl	$1, -40(%rbp)	#, xi
.L46:
	.loc 1 249 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.11
	cmpl	%eax, -40(%rbp)	# Alphabet_size.11, xi
	jl	.L49	#,
	.loc 1 260 0 is_stmt 1
	movl	$0, -40(%rbp)	#, xi
	jmp	.L50	#
.L51:
	.loc 1 262 0 discriminator 2
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.12
	cvtsi2sd	%eax, %xmm0	# Alphabet_size.12, D.7159
	movsd	.LC25(%rip), %xmm1	#, tmp135
	divsd	%xmm0, %xmm1	# D.7159, D.7159
	movapd	%xmm1, %xmm0	# D.7159, D.7159
	unpcklpd	%xmm0, %xmm0	# D.7159
	cvtpd2ps	%xmm0, %xmm0	# D.7159, D.7158
	movq	-64(%rbp), %rax	# pri, tmp136
	movl	-40(%rbp), %edx	# xi, tmp138
	movslq	%edx, %rdx	# tmp138, tmp137
	addq	$1600, %rdx	#, tmp139
	movss	%xmm0, 12(%rax,%rdx,4)	# D.7158, pri_6(D)->mq
	.loc 1 263 0 discriminator 2
	movl	Alphabet_size(%rip), %ecx	# Alphabet_size, Alphabet_size.13
	movl	-40(%rbp), %eax	# xi, tmp141
	movslq	%eax, %rdx	# tmp141, tmp140
	movq	%rdx, %rax	# tmp140, tmp142
	salq	$2, %rax	#, tmp142
	addq	%rdx, %rax	# tmp140, tmp142
	salq	$4, %rax	#, tmp143
	leaq	7200(%rax), %rdx	#, tmp144
	movq	-64(%rbp), %rax	# pri, tmp146
	addq	%rdx, %rax	# tmp144, tmp145
	addq	$12, %rax	#, D.7163
	movl	%ecx, %esi	# Alphabet_size.13,
	movq	%rax, %rdi	# D.7163,
	call	FNorm	#
	.loc 1 264 0 discriminator 2
	movl	Alphabet_size(%rip), %ecx	# Alphabet_size, Alphabet_size.14
	movl	-40(%rbp), %eax	# xi, tmp148
	movslq	%eax, %rdx	# tmp148, tmp147
	movq	%rdx, %rax	# tmp147, tmp149
	salq	$2, %rax	#, tmp149
	addq	%rdx, %rax	# tmp147, tmp149
	salq	$4, %rax	#, tmp150
	leaq	7200(%rax), %rdx	#, tmp151
	movq	-64(%rbp), %rax	# pri, tmp153
	addq	%rdx, %rax	# tmp151, tmp152
	leaq	12(%rax), %rdx	#, D.7163
	movl	-68(%rbp), %eax	# wt, tmp154
	movl	%eax, -80(%rbp)	# tmp154, %sfp
	movss	-80(%rbp), %xmm0	# %sfp,
	movl	%ecx, %esi	# Alphabet_size.14,
	movq	%rdx, %rdi	# D.7163,
	call	FScale	#
	.loc 1 260 0 discriminator 2
	addl	$1, -40(%rbp)	#, xi
.L50:
	.loc 1 260 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.15
	cmpl	%eax, -40(%rbp)	# Alphabet_size.15, xi
	jl	.L51	#,
	.loc 1 267 0 is_stmt 1
	movq	-24(%rbp), %rax	# pam, pam.16
	movl	$27, %esi	#,
	movq	%rax, %rdi	# pam.16,
	call	Free2DArray	#
	.loc 1 268 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	PAMPrior, .-PAMPrior
	.globl	P7DefaultNullModel
	.type	P7DefaultNullModel, @function
P7DefaultNullModel:
.LFB8:
	.loc 1 280 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# null, null
	movq	%rsi, -32(%rbp)	# ret_p1, ret_p1
	.loc 1 282 0
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.17
	cmpl	$3, %eax	#, Alphabet_type.17
	jne	.L54	#,
	.loc 1 283 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L55	#
.L56:
	.loc 1 284 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp72
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7172
	movq	-24(%rbp), %rax	# null, tmp73
	addq	%rax, %rdx	# tmp73, D.7173
	movl	-4(%rbp), %eax	# x, tmp75
	cltq
	movl	aafq(,%rax,4), %eax	# aafq, D.7174
	movl	%eax, (%rdx)	# D.7174, *_9
	.loc 1 283 0 discriminator 2
	addl	$1, -4(%rbp)	#, x
.L55:
	.loc 1 283 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.18
	cmpl	%eax, -4(%rbp)	# Alphabet_size.18, x
	jl	.L56	#,
	.loc 1 285 0 is_stmt 1
	movq	-32(%rbp), %rdx	# ret_p1, tmp76
	movl	.LC26(%rip), %eax	#, tmp77
	movl	%eax, (%rdx)	# tmp77, *ret_p1_12(D)
	jmp	.L53	#
.L54:
	.loc 1 287 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L58	#
.L59:
	.loc 1 288 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp78
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7172
	movq	-24(%rbp), %rax	# null, tmp79
	addq	%rax, %rdx	# tmp79, D.7173
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.19
	cvtsi2ss	%eax, %xmm0	# Alphabet_size.19, D.7174
	movss	.LC1(%rip), %xmm1	#, tmp80
	divss	%xmm0, %xmm1	# D.7174, D.7174
	movaps	%xmm1, %xmm0	# D.7174, D.7174
	movss	%xmm0, (%rdx)	# D.7174, *_17
	.loc 1 287 0 discriminator 2
	addl	$1, -4(%rbp)	#, x
.L58:
	.loc 1 287 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.20
	cmpl	%eax, -4(%rbp)	# Alphabet_size.20, x
	jl	.L59	#,
	.loc 1 289 0 is_stmt 1
	movq	-32(%rbp), %rdx	# ret_p1, tmp81
	movl	.LC27(%rip), %eax	#, tmp82
	movl	%eax, (%rdx)	# tmp82, *ret_p1_12(D)
.L53:
	.loc 1 291 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	P7DefaultNullModel, .-P7DefaultNullModel
	.section	.rodata
	.align 8
.LC28:
	.string	"Failed to open null model file %s\n"
	.align 8
.LC29:
	.string	"Alphabet type conflict; null model in %s is inappropriate\n"
	.align 8
.LC30:
	.string	"%s is not in HMMER null model file format"
	.text
	.globl	P7ReadNullModel
	.type	P7ReadNullModel, @function
P7ReadNullModel:
.LFB9:
	.loc 1 295 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# rndfile, rndfile
	movq	%rsi, -64(%rbp)	# null, null
	movq	%rdx, -72(%rbp)	# ret_p1, ret_p1
	.loc 1 299 0
	movl	$0, -36(%rbp)	#, type
	.loc 1 301 0
	movq	-56(%rbp), %rax	# rndfile, tmp71
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp71,
	call	fopen	#
	movq	%rax, -32(%rbp)	# tmp72, fp
	cmpq	$0, -32(%rbp)	#, fp
	jne	.L61	#,
	.loc 1 302 0
	movq	-56(%rbp), %rax	# rndfile, tmp73
	movq	%rax, %rsi	# tmp73,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L61:
	.loc 1 303 0
	movq	-32(%rbp), %rax	# fp, tmp74
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp74,
	call	Getword	#
	movq	%rax, -24(%rbp)	# tmp75, s
	cmpq	$0, -24(%rbp)	#, s
	jne	.L62	#,
	.loc 1 303 0 is_stmt 0 discriminator 1
	jmp	.L63	#
.L62:
	.loc 1 304 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp76
	movq	%rax, %rdi	# tmp76,
	call	s2upper	#
	.loc 1 305 0
	movq	-24(%rbp), %rax	# s, tmp77
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp77,
	call	strcmp	#
	testl	%eax, %eax	# D.7175
	jne	.L64	#,
	.loc 1 305 0 is_stmt 0 discriminator 1
	movl	$2, -36(%rbp)	#, type
	jmp	.L65	#
.L64:
	.loc 1 306 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp78
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	strcmp	#
	testl	%eax, %eax	# D.7175
	jne	.L66	#,
	.loc 1 306 0 is_stmt 0 discriminator 1
	movl	$3, -36(%rbp)	#, type
	jmp	.L65	#
.L66:
	.loc 1 307 0 is_stmt 1
	jmp	.L63	#
.L65:
	.loc 1 309 0
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.21
	testl	%eax, %eax	# Alphabet_type.21
	jne	.L67	#,
	.loc 1 310 0
	movl	-36(%rbp), %eax	# type, tmp79
	movl	%eax, %edi	# tmp79,
	call	SetAlphabet	#
	jmp	.L68	#
.L67:
	.loc 1 311 0
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.22
	cmpl	-36(%rbp), %eax	# type, Alphabet_type.22
	je	.L68	#,
	.loc 1 312 0
	movq	-56(%rbp), %rax	# rndfile, tmp80
	movq	%rax, %rsi	# tmp80,
	movl	$.LC29, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L68:
	.loc 1 314 0
	movl	$0, -40(%rbp)	#, x
	jmp	.L69	#
.L71:
	.loc 1 315 0
	movq	-32(%rbp), %rax	# fp, tmp81
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp81,
	call	Getword	#
	movq	%rax, -24(%rbp)	# tmp82, s
	cmpq	$0, -24(%rbp)	#, s
	jne	.L70	#,
	.loc 1 315 0 is_stmt 0 discriminator 1
	jmp	.L63	#
.L70:
	.loc 1 316 0 is_stmt 1
	movl	-40(%rbp), %eax	# x, tmp83
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7176
	movq	-64(%rbp), %rax	# null, tmp84
	leaq	(%rdx,%rax), %rbx	#, D.7177
	movq	-24(%rbp), %rax	# s, tmp85
	movq	%rax, %rdi	# tmp85,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.7178
	cvtpd2ps	%xmm0, %xmm0	# D.7178, D.7179
	movss	%xmm0, (%rbx)	# D.7179, *_19
	.loc 1 314 0
	addl	$1, -40(%rbp)	#, x
.L69:
	.loc 1 314 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.23
	cmpl	%eax, -40(%rbp)	# Alphabet_size.23, x
	jl	.L71	#,
	.loc 1 318 0 is_stmt 1
	movq	-32(%rbp), %rax	# fp, tmp86
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp86,
	call	Getword	#
	movq	%rax, -24(%rbp)	# tmp87, s
	cmpq	$0, -24(%rbp)	#, s
	jne	.L72	#,
	.loc 1 318 0 is_stmt 0 discriminator 1
	jmp	.L63	#
.L72:
	.loc 1 319 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp88
	movq	%rax, %rdi	# tmp88,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.7178
	cvtpd2ps	%xmm0, %xmm0	# D.7178, D.7179
	movq	-72(%rbp), %rax	# ret_p1, tmp89
	movss	%xmm0, (%rax)	# D.7179, *ret_p1_26(D)
	.loc 1 321 0
	movq	-32(%rbp), %rax	# fp, tmp90
	movq	%rax, %rdi	# tmp90,
	call	fclose	#
	.loc 1 322 0
	jmp	.L60	#
.L63:
	.loc 1 325 0
	movq	-32(%rbp), %rax	# fp, tmp91
	movq	%rax, %rdi	# tmp91,
	call	fclose	#
	.loc 1 326 0
	movq	-56(%rbp), %rax	# rndfile, tmp92
	movq	%rax, %rsi	# tmp92,
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L60:
	.loc 1 327 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	P7ReadNullModel, .-P7ReadNullModel
	.section	.rodata
.LC33:
	.string	"X-PRT annotation out of range"
.LC34:
	.string	"X-PRM annotation out of range"
.LC35:
	.string	"X-PRI annotation out of range"
	.text
	.globl	P7PriorifyHMM
	.type	P7PriorifyHMM, @function
P7PriorifyHMM:
.LFB10:
	.loc 1 343 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$2432, %rsp	#,
	movq	%rdi, -2424(%rbp)	# hmm, hmm
	movq	%rsi, -2432(%rbp)	# pri, pri
	.loc 1 352 0
	movq	-2424(%rbp), %rax	# hmm, tmp204
	movl	136(%rax), %eax	# hmm_2(D)->M, D.7183
	leal	-1(%rax), %edx	#, D.7183
	movq	-2424(%rbp), %rax	# hmm, tmp205
	movq	208(%rax), %rax	# hmm_2(D)->begin, D.7184
	addq	$8, %rax	#, D.7184
	xorps	%xmm0, %xmm0	#
	movl	%edx, %esi	# D.7183,
	movq	%rax, %rdi	# D.7184,
	call	FSet	#
	.loc 1 353 0
	movq	-2424(%rbp), %rax	# hmm, tmp206
	movl	136(%rax), %eax	# hmm_2(D)->M, D.7183
	leal	-1(%rax), %edx	#, D.7183
	movq	-2424(%rbp), %rax	# hmm, tmp207
	movq	216(%rax), %rax	# hmm_2(D)->end, D.7184
	addq	$4, %rax	#, D.7184
	xorps	%xmm0, %xmm0	#
	movl	%edx, %esi	# D.7183,
	movq	%rax, %rdi	# D.7184,
	call	FSet	#
	.loc 1 354 0
	movq	-2424(%rbp), %rax	# hmm, tmp208
	movss	168(%rax), %xmm1	# hmm_2(D)->tbd1, D.7185
	movq	-2424(%rbp), %rax	# hmm, tmp209
	movq	208(%rax), %rax	# hmm_2(D)->begin, D.7184
	addq	$4, %rax	#, D.7184
	movss	(%rax), %xmm0	# *_13, D.7185
	addss	%xmm1, %xmm0	# D.7185, D.7185
	movss	.LC32(%rip), %xmm1	#, tmp211
	addss	%xmm1, %xmm0	# tmp211, tmp210
	movss	%xmm0, -2404(%rbp)	# tmp210, d
	.loc 1 355 0
	movq	-2424(%rbp), %rax	# hmm, tmp212
	movss	168(%rax), %xmm0	# hmm_2(D)->tbd1, D.7185
	unpcklps	%xmm0, %xmm0	# D.7185, D.7185
	cvtps2pd	%xmm0, %xmm0	# D.7185, D.7186
	movsd	.LC25(%rip), %xmm1	#, tmp213
	addsd	%xmm1, %xmm0	# tmp213, D.7186
	movss	-2404(%rbp), %xmm1	# d, D.7186
	cvtps2pd	%xmm1, %xmm1	# D.7186, D.7186
	divsd	%xmm1, %xmm0	# D.7186, D.7186
	unpcklpd	%xmm0, %xmm0	# D.7186
	cvtpd2ps	%xmm0, %xmm0	# D.7186, D.7185
	movq	-2424(%rbp), %rax	# hmm, tmp214
	movss	%xmm0, 168(%rax)	# D.7185, hmm_2(D)->tbd1
	.loc 1 356 0
	movq	-2424(%rbp), %rax	# hmm, tmp215
	movq	208(%rax), %rax	# hmm_2(D)->begin, D.7184
	leaq	4(%rax), %rdx	#, D.7184
	movq	-2424(%rbp), %rax	# hmm, tmp216
	movq	208(%rax), %rax	# hmm_2(D)->begin, D.7184
	addq	$4, %rax	#, D.7184
	movss	(%rax), %xmm0	# *_26, D.7185
	unpcklps	%xmm0, %xmm0	# D.7185, D.7185
	cvtps2pd	%xmm0, %xmm0	# D.7185, D.7186
	movsd	.LC25(%rip), %xmm1	#, tmp217
	addsd	%xmm1, %xmm0	# tmp217, D.7186
	movss	-2404(%rbp), %xmm1	# d, D.7186
	cvtps2pd	%xmm1, %xmm1	# D.7186, D.7186
	divsd	%xmm1, %xmm0	# D.7186, D.7186
	unpcklpd	%xmm0, %xmm0	# D.7186
	cvtpd2ps	%xmm0, %xmm0	# D.7186, D.7185
	movss	%xmm0, (%rdx)	# D.7185, *_24
	.loc 1 357 0
	movq	-2424(%rbp), %rax	# hmm, tmp218
	movq	216(%rax), %rdx	# hmm_2(D)->end, D.7184
	movq	-2424(%rbp), %rax	# hmm, tmp219
	movl	136(%rax), %eax	# hmm_2(D)->M, D.7183
	cltq
	salq	$2, %rax	#, D.7187
	addq	%rax, %rdx	# D.7187, D.7184
	movl	.LC1(%rip), %eax	#, tmp220
	movl	%eax, (%rdx)	# tmp220, *_37
	.loc 1 361 0
	movl	$1, -2408(%rbp)	#, k
	jmp	.L75	#
.L85:
	.loc 1 372 0
	movq	-2424(%rbp), %rax	# hmm, tmp221
	movq	88(%rax), %rax	# hmm_2(D)->tpri, D.7188
	testq	%rax, %rax	# D.7188
	je	.L76	#,
	.loc 1 372 0 is_stmt 0 discriminator 1
	movq	-2424(%rbp), %rax	# hmm, tmp222
	movq	88(%rax), %rax	# hmm_2(D)->tpri, D.7188
	movl	-2408(%rbp), %edx	# k, tmp223
	movslq	%edx, %rdx	# tmp223, D.7187
	salq	$2, %rdx	#, D.7187
	addq	%rdx, %rax	# D.7187, D.7188
	movl	(%rax), %eax	# *_44, D.7183
	testl	%eax, %eax	# D.7183
	js	.L76	#,
	.loc 1 374 0 is_stmt 1
	movq	-2424(%rbp), %rax	# hmm, tmp224
	movq	88(%rax), %rax	# hmm_2(D)->tpri, D.7188
	movl	-2408(%rbp), %edx	# k, tmp225
	movslq	%edx, %rdx	# tmp225, D.7187
	salq	$2, %rdx	#, D.7187
	addq	%rdx, %rax	# D.7187, D.7188
	movl	(%rax), %edx	# *_49, D.7183
	movq	-2432(%rbp), %rax	# pri, tmp226
	movl	4(%rax), %eax	# pri_51(D)->tnum, D.7183
	cmpl	%eax, %edx	# D.7183, D.7183
	jl	.L77	#,
	.loc 1 374 0 is_stmt 0 discriminator 1
	movl	$.LC33, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L77:
	.loc 1 375 0 is_stmt 1
	movq	-2432(%rbp), %rax	# pri, tmp227
	movl	4(%rax), %edx	# pri_51(D)->tnum, D.7183
	leaq	-2400(%rbp), %rax	#, tmp228
	xorps	%xmm0, %xmm0	#
	movl	%edx, %esi	# D.7183,
	movq	%rax, %rdi	# tmp228,
	call	FSet	#
	.loc 1 376 0
	movq	-2424(%rbp), %rax	# hmm, tmp229
	movq	88(%rax), %rax	# hmm_2(D)->tpri, D.7188
	movl	-2408(%rbp), %edx	# k, tmp230
	movslq	%edx, %rdx	# tmp230, D.7187
	salq	$2, %rdx	#, D.7187
	addq	%rdx, %rax	# D.7187, D.7188
	movl	(%rax), %eax	# *_57, D.7183
	movslq	%eax, %rdx	# D.7183, tmp231
	movl	.LC1(%rip), %eax	#, tmp232
	movl	%eax, -2400(%rbp,%rdx,4)	# tmp232, tq
	jmp	.L78	#
.L76:
	.loc 1 379 0
	movq	-2432(%rbp), %rax	# pri, tmp233
	movl	4(%rax), %edx	# pri_51(D)->tnum, D.7183
	movq	-2432(%rbp), %rax	# pri, tmp234
	leaq	8(%rax), %rcx	#, D.7189
	leaq	-2400(%rbp), %rax	#, tmp235
	movq	%rcx, %rsi	# D.7189,
	movq	%rax, %rdi	# tmp235,
	call	FCopy	#
.L78:
	.loc 1 380 0
	movq	-2424(%rbp), %rax	# hmm, tmp236
	movq	96(%rax), %rax	# hmm_2(D)->mpri, D.7188
	testq	%rax, %rax	# D.7188
	je	.L79	#,
	.loc 1 380 0 is_stmt 0 discriminator 1
	movq	-2424(%rbp), %rax	# hmm, tmp237
	movq	96(%rax), %rax	# hmm_2(D)->mpri, D.7188
	movl	-2408(%rbp), %edx	# k, tmp238
	movslq	%edx, %rdx	# tmp238, D.7187
	salq	$2, %rdx	#, D.7187
	addq	%rdx, %rax	# D.7187, D.7188
	movl	(%rax), %eax	# *_65, D.7183
	testl	%eax, %eax	# D.7183
	js	.L79	#,
	.loc 1 382 0 is_stmt 1
	movq	-2424(%rbp), %rax	# hmm, tmp239
	movq	96(%rax), %rax	# hmm_2(D)->mpri, D.7188
	movl	-2408(%rbp), %edx	# k, tmp240
	movslq	%edx, %rdx	# tmp240, D.7187
	salq	$2, %rdx	#, D.7187
	addq	%rdx, %rax	# D.7187, D.7188
	movl	(%rax), %edx	# *_70, D.7183
	movq	-2432(%rbp), %rax	# pri, tmp241
	movl	6408(%rax), %eax	# pri_51(D)->mnum, D.7183
	cmpl	%eax, %edx	# D.7183, D.7183
	jl	.L80	#,
	.loc 1 382 0 is_stmt 0 discriminator 1
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L80:
	.loc 1 383 0 is_stmt 1
	movq	-2432(%rbp), %rax	# pri, tmp242
	movl	6408(%rax), %edx	# pri_51(D)->mnum, D.7183
	leaq	-1600(%rbp), %rax	#, tmp243
	xorps	%xmm0, %xmm0	#
	movl	%edx, %esi	# D.7183,
	movq	%rax, %rdi	# tmp243,
	call	FSet	#
	.loc 1 384 0
	movq	-2424(%rbp), %rax	# hmm, tmp244
	movq	96(%rax), %rax	# hmm_2(D)->mpri, D.7188
	movl	-2408(%rbp), %edx	# k, tmp245
	movslq	%edx, %rdx	# tmp245, D.7187
	salq	$2, %rdx	#, D.7187
	addq	%rdx, %rax	# D.7187, D.7188
	movl	(%rax), %eax	# *_77, D.7183
	movslq	%eax, %rdx	# D.7183, tmp246
	movl	.LC1(%rip), %eax	#, tmp247
	movl	%eax, -1600(%rbp,%rdx,4)	# tmp247, mq
	jmp	.L81	#
.L79:
	.loc 1 387 0
	movq	-2432(%rbp), %rax	# pri, tmp248
	movl	6408(%rax), %edx	# pri_51(D)->mnum, D.7183
	movq	-2432(%rbp), %rax	# pri, tmp249
	leaq	6412(%rax), %rcx	#, D.7189
	leaq	-1600(%rbp), %rax	#, tmp250
	movq	%rcx, %rsi	# D.7189,
	movq	%rax, %rdi	# tmp250,
	call	FCopy	#
.L81:
	.loc 1 388 0
	movq	-2424(%rbp), %rax	# hmm, tmp251
	movq	104(%rax), %rax	# hmm_2(D)->ipri, D.7188
	testq	%rax, %rax	# D.7188
	je	.L82	#,
	.loc 1 388 0 is_stmt 0 discriminator 1
	movq	-2424(%rbp), %rax	# hmm, tmp252
	movq	104(%rax), %rax	# hmm_2(D)->ipri, D.7188
	movl	-2408(%rbp), %edx	# k, tmp253
	movslq	%edx, %rdx	# tmp253, D.7187
	salq	$2, %rdx	#, D.7187
	addq	%rdx, %rax	# D.7187, D.7188
	movl	(%rax), %eax	# *_85, D.7183
	testl	%eax, %eax	# D.7183
	js	.L82	#,
	.loc 1 390 0 is_stmt 1
	movq	-2424(%rbp), %rax	# hmm, tmp254
	movq	104(%rax), %rax	# hmm_2(D)->ipri, D.7188
	movl	-2408(%rbp), %edx	# k, tmp255
	movslq	%edx, %rdx	# tmp255, D.7187
	salq	$2, %rdx	#, D.7187
	addq	%rdx, %rax	# D.7187, D.7188
	movl	(%rax), %edx	# *_90, D.7183
	movq	-2432(%rbp), %rax	# pri, tmp256
	movl	23212(%rax), %eax	# pri_51(D)->inum, D.7183
	cmpl	%eax, %edx	# D.7183, D.7183
	jl	.L83	#,
	.loc 1 390 0 is_stmt 0 discriminator 1
	movl	$.LC35, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L83:
	.loc 1 391 0 is_stmt 1
	movq	-2432(%rbp), %rax	# pri, tmp257
	movl	23212(%rax), %edx	# pri_51(D)->inum, D.7183
	leaq	-800(%rbp), %rax	#, tmp258
	xorps	%xmm0, %xmm0	#
	movl	%edx, %esi	# D.7183,
	movq	%rax, %rdi	# tmp258,
	call	FSet	#
	.loc 1 392 0
	movq	-2424(%rbp), %rax	# hmm, tmp259
	movq	104(%rax), %rax	# hmm_2(D)->ipri, D.7188
	movl	-2408(%rbp), %edx	# k, tmp260
	movslq	%edx, %rdx	# tmp260, D.7187
	salq	$2, %rdx	#, D.7187
	addq	%rdx, %rax	# D.7187, D.7188
	movl	(%rax), %eax	# *_97, D.7183
	movslq	%eax, %rdx	# D.7183, tmp261
	movl	.LC1(%rip), %eax	#, tmp262
	movl	%eax, -800(%rbp,%rdx,4)	# tmp262, iq
	jmp	.L84	#
.L82:
	.loc 1 395 0
	movq	-2432(%rbp), %rax	# pri, tmp263
	movl	23212(%rax), %edx	# pri_51(D)->inum, D.7183
	movq	-2432(%rbp), %rax	# pri, tmp264
	leaq	23216(%rax), %rcx	#, D.7189
	leaq	-800(%rbp), %rax	#, tmp265
	movq	%rcx, %rsi	# D.7189,
	movq	%rax, %rdi	# tmp265,
	call	FCopy	#
.L84:
	.loc 1 399 0
	movq	-2424(%rbp), %rax	# hmm, tmp266
	movq	144(%rax), %rax	# hmm_2(D)->t, D.7190
	movl	-2408(%rbp), %edx	# k, tmp267
	movslq	%edx, %rdx	# tmp267, D.7187
	salq	$3, %rdx	#, D.7187
	addq	%rdx, %rax	# D.7187, D.7190
	movq	(%rax), %rax	# *_104, D.7184
	leaq	-2400(%rbp), %rdx	#, tmp268
	movq	-2432(%rbp), %rcx	# pri, tmp269
	movq	%rcx, %rsi	# tmp269,
	movq	%rax, %rdi	# D.7184,
	call	P7PriorifyTransitionVector	#
	.loc 1 400 0
	movq	-2432(%rbp), %rax	# pri, tmp270
	leaq	7212(%rax), %rdi	#, D.7191
	movq	-2432(%rbp), %rax	# pri, tmp271
	movl	6408(%rax), %edx	# pri_51(D)->mnum, D.7183
	movq	-2424(%rbp), %rax	# hmm, tmp272
	movq	152(%rax), %rax	# hmm_2(D)->mat, D.7190
	movl	-2408(%rbp), %ecx	# k, tmp273
	movslq	%ecx, %rcx	# tmp273, D.7187
	salq	$3, %rcx	#, D.7187
	addq	%rcx, %rax	# D.7187, D.7190
	movq	(%rax), %rax	# *_111, D.7184
	leaq	-1600(%rbp), %rcx	#, tmp274
	movq	-2432(%rbp), %rsi	# pri, tmp275
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# D.7191,
	movq	%rax, %rdi	# D.7184,
	call	P7PriorifyEmissionVector	#
	.loc 1 401 0
	movq	-2432(%rbp), %rax	# pri, tmp276
	leaq	24016(%rax), %rdi	#, D.7191
	movq	-2432(%rbp), %rax	# pri, tmp277
	movl	23212(%rax), %edx	# pri_51(D)->inum, D.7183
	movq	-2424(%rbp), %rax	# hmm, tmp278
	movq	160(%rax), %rax	# hmm_2(D)->ins, D.7190
	movl	-2408(%rbp), %ecx	# k, tmp279
	movslq	%ecx, %rcx	# tmp279, D.7187
	salq	$3, %rcx	#, D.7187
	addq	%rcx, %rax	# D.7187, D.7190
	movq	(%rax), %rax	# *_118, D.7184
	leaq	-800(%rbp), %rcx	#, tmp280
	movq	-2432(%rbp), %rsi	# pri, tmp281
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# D.7191,
	movq	%rax, %rdi	# D.7184,
	call	P7PriorifyEmissionVector	#
	.loc 1 361 0
	addl	$1, -2408(%rbp)	#, k
.L75:
	.loc 1 361 0 is_stmt 0 discriminator 1
	movq	-2424(%rbp), %rax	# hmm, tmp282
	movl	136(%rax), %eax	# hmm_2(D)->M, D.7183
	cmpl	-2408(%rbp), %eax	# k, D.7183
	jg	.L85	#,
	.loc 1 406 0 is_stmt 1
	movq	-2424(%rbp), %rax	# hmm, tmp283
	movq	96(%rax), %rax	# hmm_2(D)->mpri, D.7188
	testq	%rax, %rax	# D.7188
	je	.L86	#,
	.loc 1 406 0 is_stmt 0 discriminator 1
	movq	-2424(%rbp), %rax	# hmm, tmp284
	movq	96(%rax), %rdx	# hmm_2(D)->mpri, D.7188
	movq	-2424(%rbp), %rax	# hmm, tmp285
	movl	136(%rax), %eax	# hmm_2(D)->M, D.7183
	cltq
	salq	$2, %rax	#, D.7187
	addq	%rdx, %rax	# D.7188, D.7188
	movl	(%rax), %eax	# *_126, D.7183
	testl	%eax, %eax	# D.7183
	js	.L86	#,
	.loc 1 408 0 is_stmt 1
	movq	-2424(%rbp), %rax	# hmm, tmp286
	movq	96(%rax), %rdx	# hmm_2(D)->mpri, D.7188
	movq	-2424(%rbp), %rax	# hmm, tmp287
	movl	136(%rax), %eax	# hmm_2(D)->M, D.7183
	cltq
	salq	$2, %rax	#, D.7187
	addq	%rdx, %rax	# D.7188, D.7188
	movl	(%rax), %edx	# *_132, D.7183
	movq	-2432(%rbp), %rax	# pri, tmp288
	movl	6408(%rax), %eax	# pri_51(D)->mnum, D.7183
	cmpl	%eax, %edx	# D.7183, D.7183
	jl	.L87	#,
	.loc 1 408 0 is_stmt 0 discriminator 1
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L87:
	.loc 1 409 0 is_stmt 1
	movq	-2432(%rbp), %rax	# pri, tmp289
	movl	6408(%rax), %edx	# pri_51(D)->mnum, D.7183
	leaq	-1600(%rbp), %rax	#, tmp290
	xorps	%xmm0, %xmm0	#
	movl	%edx, %esi	# D.7183,
	movq	%rax, %rdi	# tmp290,
	call	FSet	#
	.loc 1 410 0
	movq	-2424(%rbp), %rax	# hmm, tmp291
	movq	96(%rax), %rdx	# hmm_2(D)->mpri, D.7188
	movq	-2424(%rbp), %rax	# hmm, tmp292
	movl	136(%rax), %eax	# hmm_2(D)->M, D.7183
	cltq
	salq	$2, %rax	#, D.7187
	addq	%rdx, %rax	# D.7188, D.7188
	movl	(%rax), %eax	# *_140, D.7183
	movslq	%eax, %rdx	# D.7183, tmp293
	movl	.LC1(%rip), %eax	#, tmp294
	movl	%eax, -1600(%rbp,%rdx,4)	# tmp294, mq
	jmp	.L88	#
.L86:
	.loc 1 413 0
	movq	-2432(%rbp), %rax	# pri, tmp295
	movl	6408(%rax), %edx	# pri_51(D)->mnum, D.7183
	movq	-2432(%rbp), %rax	# pri, tmp296
	leaq	6412(%rax), %rcx	#, D.7189
	leaq	-1600(%rbp), %rax	#, tmp297
	movq	%rcx, %rsi	# D.7189,
	movq	%rax, %rdi	# tmp297,
	call	FCopy	#
.L88:
	.loc 1 415 0
	movq	-2432(%rbp), %rax	# pri, tmp298
	leaq	7212(%rax), %rdi	#, D.7191
	movq	-2432(%rbp), %rax	# pri, tmp299
	movl	6408(%rax), %edx	# pri_51(D)->mnum, D.7183
	movq	-2424(%rbp), %rax	# hmm, tmp300
	movq	152(%rax), %rcx	# hmm_2(D)->mat, D.7190
	movq	-2424(%rbp), %rax	# hmm, tmp301
	movl	136(%rax), %eax	# hmm_2(D)->M, D.7183
	cltq
	salq	$3, %rax	#, D.7187
	addq	%rcx, %rax	# D.7190, D.7190
	movq	(%rax), %rax	# *_150, D.7184
	leaq	-1600(%rbp), %rcx	#, tmp302
	movq	-2432(%rbp), %rsi	# pri, tmp303
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# D.7191,
	movq	%rax, %rdi	# D.7184,
	call	P7PriorifyEmissionVector	#
	.loc 1 419 0
	movq	-2424(%rbp), %rax	# hmm, tmp304
	movq	%rax, %rdi	# tmp304,
	call	Plan7Renormalize	#
	.loc 1 420 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	P7PriorifyHMM, .-P7PriorifyHMM
	.globl	P7PriorifyEmissionVector
	.type	P7PriorifyEmissionVector, @function
P7PriorifyEmissionVector:
.LFB11:
	.loc 1 446 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$880, %rsp	#,
	movq	%rdi, -840(%rbp)	# vec, vec
	movq	%rsi, -848(%rbp)	# pri, pri
	movl	%edx, -852(%rbp)	# num, num
	movq	%rcx, -864(%rbp)	# eq, eq
	movq	%r8, -872(%rbp)	# e, e
	movq	%r9, -880(%rbp)	# ret_mix, ret_mix
	.loc 1 466 0
	movl	.LC1(%rip), %eax	#, tmp112
	movl	%eax, -800(%rbp)	# tmp112, mix
	.loc 1 467 0
	movq	-848(%rbp), %rax	# pri, tmp113
	movl	(%rax), %eax	# pri_8(D)->strategy, D.7195
	testl	%eax, %eax	# D.7195
	jne	.L90	#,
	.loc 1 467 0 is_stmt 0 discriminator 1
	cmpl	$1, -852(%rbp)	#, num
	jle	.L90	#,
	.loc 1 469 0 is_stmt 1
	movl	$0, -816(%rbp)	#, q
	jmp	.L91	#
.L95:
	.loc 1 471 0
	movl	-816(%rbp), %eax	# q, tmp114
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7196
	movq	-864(%rbp), %rax	# eq, tmp115
	addq	%rdx, %rax	# D.7196, D.7197
	movss	(%rax), %xmm0	# *_15, D.7198
	xorps	%xmm1, %xmm1	# tmp116
	ucomiss	%xmm1, %xmm0	# tmp116, D.7198
	jbe	.L107	#,
	.loc 1 471 0 is_stmt 0 discriminator 1
	movl	-816(%rbp), %eax	# q, tmp117
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7196
	movq	-864(%rbp), %rax	# eq, tmp118
	addq	%rdx, %rax	# D.7196, D.7197
	movss	(%rax), %xmm0	# *_19, D.7198
	unpcklps	%xmm0, %xmm0	# D.7198, D.7198
	cvtps2pd	%xmm0, %xmm0	# D.7198, D.7199
	call	log	#
	unpcklpd	%xmm0, %xmm0	# D.7199
	cvtpd2ps	%xmm0, %xmm3	# D.7199, iftmp.24
	movss	%xmm3, -856(%rbp)	# iftmp.24, %sfp
	movl	-856(%rbp), %eax	# %sfp, iftmp.24
	jmp	.L94	#
.L107:
	.loc 1 471 0 discriminator 2
	movl	.LC36(%rip), %eax	#, iftmp.24
.L94:
	.loc 1 471 0 discriminator 3
	movl	-816(%rbp), %edx	# q, tmp120
	movslq	%edx, %rdx	# tmp120, tmp119
	movl	%eax, -800(%rbp,%rdx,4)	# iftmp.24, mix
	.loc 1 472 0 is_stmt 1 discriminator 3
	movl	-816(%rbp), %eax	# q, tmp122
	cltq
	movss	-800(%rbp,%rax,4), %xmm4	# mix, D.7198
	movss	%xmm4, -856(%rbp)	# D.7198, %sfp
	movl	-816(%rbp), %eax	# q, tmp123
	movslq	%eax, %rdx	# tmp123, D.7196
	movq	%rdx, %rax	# D.7196, tmp124
	salq	$2, %rax	#, tmp124
	addq	%rdx, %rax	# D.7196, tmp124
	salq	$4, %rax	#, tmp125
	movq	%rax, %rdx	# tmp124, D.7196
	movq	-872(%rbp), %rax	# e, tmp126
	addq	%rax, %rdx	# tmp126, D.7197
	movl	Alphabet_size(%rip), %ecx	# Alphabet_size, Alphabet_size.25
	movq	-840(%rbp), %rax	# vec, tmp127
	movl	%ecx, %esi	# Alphabet_size.25,
	movq	%rax, %rdi	# tmp127,
	call	Logp_cvec	#
	addss	-856(%rbp), %xmm0	# %sfp, D.7198
	movl	-816(%rbp), %eax	# q, tmp129
	cltq
	movss	%xmm0, -800(%rbp,%rax,4)	# D.7198, mix
	.loc 1 469 0 discriminator 3
	addl	$1, -816(%rbp)	#, q
.L91:
	.loc 1 469 0 is_stmt 0 discriminator 1
	movl	-816(%rbp), %eax	# q, tmp130
	cmpl	-852(%rbp), %eax	# num, tmp130
	jl	.L95	#,
	.loc 1 474 0 is_stmt 1
	movl	-852(%rbp), %edx	# num, tmp131
	leaq	-800(%rbp), %rax	#, tmp132
	movl	%edx, %esi	# tmp131,
	movq	%rax, %rdi	# tmp132,
	call	LogNorm	#
	jmp	.L96	#
.L90:
	.loc 1 476 0
	movq	-848(%rbp), %rax	# pri, tmp133
	movl	(%rax), %eax	# pri_8(D)->strategy, D.7195
	cmpl	$1, %eax	#, D.7195
	jne	.L96	#,
	.loc 1 476 0 is_stmt 0 discriminator 1
	cmpl	$1, -852(%rbp)	#, num
	jle	.L96	#,
	.loc 1 478 0 is_stmt 1
	movl	$0, -816(%rbp)	#, q
	jmp	.L97	#
.L98:
	.loc 1 479 0 discriminator 2
	movl	-816(%rbp), %eax	# q, tmp134
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7196
	movq	-840(%rbp), %rax	# vec, tmp135
	addq	%rdx, %rax	# D.7196, D.7197
	movl	(%rax), %eax	# *_40, D.7198
	movl	-816(%rbp), %edx	# q, tmp137
	movslq	%edx, %rdx	# tmp137, tmp136
	movl	%eax, -800(%rbp,%rdx,4)	# D.7198, mix
	.loc 1 478 0 discriminator 2
	addl	$1, -816(%rbp)	#, q
.L97:
	.loc 1 478 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.26
	cmpl	%eax, -816(%rbp)	# Alphabet_size.26, q
	jl	.L98	#,
	.loc 1 480 0 is_stmt 1
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.27
	leaq	-800(%rbp), %rax	#, tmp138
	movl	%edx, %esi	# Alphabet_size.27,
	movq	%rax, %rdi	# tmp138,
	call	FNorm	#
.L96:
	.loc 1 485 0
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.28
	movq	-840(%rbp), %rax	# vec, tmp139
	movl	%edx, %esi	# Alphabet_size.28,
	movq	%rax, %rdi	# tmp139,
	call	FSum	#
	movss	%xmm0, -856(%rbp)	#, %sfp
	movl	-856(%rbp), %eax	# %sfp, tmp140
	movl	%eax, -808(%rbp)	# tmp140, totc
	.loc 1 486 0
	movl	$0, -820(%rbp)	#, x
	jmp	.L99	#
.L102:
	.loc 1 487 0
	movl	.LC31(%rip), %eax	#, tmp141
	movl	%eax, -812(%rbp)	# tmp141, xi
	.loc 1 488 0
	movl	$0, -816(%rbp)	#, q
	jmp	.L100	#
.L101:
	.loc 1 489 0 discriminator 2
	movl	Alphabet_size(%rip), %ecx	# Alphabet_size, Alphabet_size.29
	movl	-816(%rbp), %eax	# q, tmp142
	movslq	%eax, %rdx	# tmp142, D.7196
	movq	%rdx, %rax	# D.7196, tmp143
	salq	$2, %rax	#, tmp143
	addq	%rdx, %rax	# D.7196, tmp143
	salq	$4, %rax	#, tmp144
	movq	%rax, %rdx	# tmp143, D.7196
	movq	-872(%rbp), %rax	# e, tmp145
	addq	%rdx, %rax	# D.7196, D.7197
	movl	%ecx, %esi	# Alphabet_size.29,
	movq	%rax, %rdi	# D.7197,
	call	FSum	#
	movss	%xmm0, -856(%rbp)	#, %sfp
	movl	-856(%rbp), %eax	# %sfp, tmp146
	movl	%eax, -804(%rbp)	# tmp146, tota
	.loc 1 490 0 discriminator 2
	movl	-816(%rbp), %eax	# q, tmp148
	cltq
	movss	-800(%rbp,%rax,4), %xmm1	# mix, D.7198
	movl	-820(%rbp), %eax	# x, tmp149
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7196
	movq	-840(%rbp), %rax	# vec, tmp150
	addq	%rdx, %rax	# D.7196, D.7197
	movss	(%rax), %xmm2	# *_58, D.7198
	movl	-816(%rbp), %eax	# q, tmp151
	movslq	%eax, %rdx	# tmp151, D.7196
	movq	%rdx, %rax	# D.7196, tmp152
	salq	$2, %rax	#, tmp152
	addq	%rdx, %rax	# D.7196, tmp152
	salq	$4, %rax	#, tmp153
	movq	%rax, %rdx	# tmp152, D.7196
	movq	-872(%rbp), %rax	# e, tmp154
	addq	%rax, %rdx	# tmp154, D.7200
	movl	-820(%rbp), %eax	# x, tmp156
	cltq
	movss	(%rdx,%rax,4), %xmm0	# *_62, D.7198
	addss	%xmm2, %xmm0	# D.7198, D.7198
	mulss	%xmm1, %xmm0	# D.7198, D.7198
	movss	-808(%rbp), %xmm1	# totc, tmp157
	addss	-804(%rbp), %xmm1	# tota, D.7198
	divss	%xmm1, %xmm0	# D.7198, D.7198
	movss	-812(%rbp), %xmm1	# xi, tmp159
	addss	%xmm1, %xmm0	# tmp159, tmp158
	movss	%xmm0, -812(%rbp)	# tmp158, xi
	.loc 1 488 0 discriminator 2
	addl	$1, -816(%rbp)	#, q
.L100:
	.loc 1 488 0 is_stmt 0 discriminator 1
	movl	-816(%rbp), %eax	# q, tmp160
	cmpl	-852(%rbp), %eax	# num, tmp160
	jl	.L101	#,
	.loc 1 492 0 is_stmt 1
	movl	-820(%rbp), %eax	# x, tmp161
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7196
	movq	-840(%rbp), %rax	# vec, tmp162
	addq	%rax, %rdx	# tmp162, D.7197
	movl	-812(%rbp), %eax	# xi, tmp163
	movl	%eax, (%rdx)	# tmp163, *_72
	.loc 1 486 0
	addl	$1, -820(%rbp)	#, x
.L99:
	.loc 1 486 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.30
	cmpl	%eax, -820(%rbp)	# Alphabet_size.30, x
	jl	.L102	#,
	.loc 1 494 0 is_stmt 1
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.31
	movq	-840(%rbp), %rax	# vec, tmp164
	movl	%edx, %esi	# Alphabet_size.31,
	movq	%rax, %rdi	# tmp164,
	call	FNorm	#
	.loc 1 496 0
	cmpq	$0, -880(%rbp)	#, ret_mix
	je	.L89	#,
	.loc 1 497 0
	movl	$0, -816(%rbp)	#, q
	jmp	.L104	#
.L105:
	.loc 1 498 0 discriminator 2
	movl	-816(%rbp), %eax	# q, tmp165
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7196
	movq	-880(%rbp), %rax	# ret_mix, tmp166
	addq	%rax, %rdx	# tmp166, D.7197
	movl	-816(%rbp), %eax	# q, tmp168
	cltq
	movl	-800(%rbp,%rax,4), %eax	# mix, D.7198
	movl	%eax, (%rdx)	# D.7198, *_79
	.loc 1 497 0 discriminator 2
	addl	$1, -816(%rbp)	#, q
.L104:
	.loc 1 497 0 is_stmt 0 discriminator 1
	movl	-816(%rbp), %eax	# q, tmp169
	cmpl	-852(%rbp), %eax	# num, tmp169
	jl	.L105	#,
.L89:
	.loc 1 499 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	P7PriorifyEmissionVector, .-P7PriorifyEmissionVector
	.globl	P7PriorifyTransitionVector
	.type	P7PriorifyTransitionVector, @function
P7PriorifyTransitionVector:
.LFB12:
	.loc 1 522 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$864, %rsp	#,
	movq	%rdi, -840(%rbp)	# t, t
	movq	%rsi, -848(%rbp)	# prior, prior
	movq	%rdx, -856(%rbp)	# tq, tq
	.loc 1 529 0
	movl	.LC1(%rip), %eax	#, tmp143
	movl	%eax, -800(%rbp)	# tmp143, mix
	.loc 1 530 0
	movq	-848(%rbp), %rax	# prior, tmp144
	movl	(%rax), %eax	# prior_7(D)->strategy, D.7201
	testl	%eax, %eax	# D.7201
	je	.L109	#,
	.loc 1 530 0 is_stmt 0 discriminator 2
	movq	-848(%rbp), %rax	# prior, tmp145
	movl	(%rax), %eax	# prior_7(D)->strategy, D.7201
	cmpl	$1, %eax	#, D.7201
	jne	.L110	#,
.L109:
	.loc 1 530 0 discriminator 1
	movq	-848(%rbp), %rax	# prior, tmp146
	movl	6408(%rax), %eax	# prior_7(D)->mnum, D.7201
	cmpl	$1, %eax	#, D.7201
	jle	.L110	#,
	.loc 1 532 0 is_stmt 1
	movl	$0, -820(%rbp)	#, q
	jmp	.L111	#
.L115:
	.loc 1 534 0
	movl	-820(%rbp), %eax	# q, tmp147
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7202
	movq	-856(%rbp), %rax	# tq, tmp148
	addq	%rdx, %rax	# D.7202, D.7203
	movss	(%rax), %xmm0	# *_16, D.7204
	xorps	%xmm1, %xmm1	# tmp149
	ucomiss	%xmm1, %xmm0	# tmp149, D.7204
	jbe	.L126	#,
	.loc 1 534 0 is_stmt 0 discriminator 1
	movl	-820(%rbp), %eax	# q, tmp150
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7202
	movq	-856(%rbp), %rax	# tq, tmp151
	addq	%rdx, %rax	# D.7202, D.7203
	movss	(%rax), %xmm0	# *_20, D.7204
	unpcklps	%xmm0, %xmm0	# D.7204, D.7204
	cvtps2pd	%xmm0, %xmm0	# D.7204, D.7205
	call	log	#
	unpcklpd	%xmm0, %xmm0	# D.7205
	cvtpd2ps	%xmm0, %xmm3	# D.7205, iftmp.32
	movss	%xmm3, -860(%rbp)	# iftmp.32, %sfp
	movl	-860(%rbp), %eax	# %sfp, iftmp.32
	jmp	.L114	#
.L126:
	.loc 1 534 0 discriminator 2
	movl	.LC36(%rip), %eax	#, iftmp.32
.L114:
	.loc 1 534 0 discriminator 3
	movl	-820(%rbp), %edx	# q, tmp153
	movslq	%edx, %rdx	# tmp153, tmp152
	movl	%eax, -800(%rbp,%rdx,4)	# iftmp.32, mix
	.loc 1 535 0 is_stmt 1 discriminator 3
	movl	-820(%rbp), %eax	# q, tmp155
	cltq
	movss	-800(%rbp,%rax,4), %xmm4	# mix, D.7204
	movss	%xmm4, -860(%rbp)	# D.7204, %sfp
	movl	-820(%rbp), %eax	# q, tmp157
	cltq
	salq	$2, %rax	#, tmp159
	leaq	0(,%rax,8), %rdx	#, tmp160
	subq	%rax, %rdx	# tmp158, tmp160
	addq	$800, %rdx	#, tmp161
	movq	-848(%rbp), %rax	# prior, tmp163
	addq	%rdx, %rax	# tmp161, tmp162
	leaq	8(%rax), %rdx	#, D.7206
	movq	-840(%rbp), %rax	# t, tmp164
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp164,
	call	Logp_cvec	#
	addss	-860(%rbp), %xmm0	# %sfp, D.7204
	movl	-820(%rbp), %eax	# q, tmp166
	cltq
	movss	%xmm0, -800(%rbp,%rax,4)	# D.7204, mix
	.loc 1 536 0 discriminator 3
	movl	-820(%rbp), %eax	# q, tmp168
	cltq
	movss	-800(%rbp,%rax,4), %xmm5	# mix, D.7204
	movss	%xmm5, -860(%rbp)	# D.7204, %sfp
	movl	-820(%rbp), %eax	# q, tmp170
	cltq
	salq	$2, %rax	#, tmp172
	leaq	0(,%rax,8), %rdx	#, tmp173
	subq	%rax, %rdx	# tmp171, tmp173
	addq	$800, %rdx	#, tmp174
	movq	-848(%rbp), %rax	# prior, tmp176
	addq	%rdx, %rax	# tmp174, tmp175
	addq	$8, %rax	#, D.7206
	leaq	12(%rax), %rdx	#, D.7203
	movq	-840(%rbp), %rax	# t, tmp177
	addq	$12, %rax	#, D.7203
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.7203,
	call	Logp_cvec	#
	addss	-860(%rbp), %xmm0	# %sfp, D.7204
	movl	-820(%rbp), %eax	# q, tmp179
	cltq
	movss	%xmm0, -800(%rbp,%rax,4)	# D.7204, mix
	.loc 1 537 0 discriminator 3
	movl	-820(%rbp), %eax	# q, tmp181
	cltq
	movss	-800(%rbp,%rax,4), %xmm6	# mix, D.7204
	movss	%xmm6, -860(%rbp)	# D.7204, %sfp
	movl	-820(%rbp), %eax	# q, tmp183
	cltq
	salq	$2, %rax	#, tmp185
	leaq	0(,%rax,8), %rdx	#, tmp186
	subq	%rax, %rdx	# tmp184, tmp186
	addq	$800, %rdx	#, tmp187
	movq	-848(%rbp), %rax	# prior, tmp189
	addq	%rdx, %rax	# tmp187, tmp188
	addq	$8, %rax	#, D.7206
	leaq	20(%rax), %rdx	#, D.7203
	movq	-840(%rbp), %rax	# t, tmp190
	addq	$20, %rax	#, D.7203
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.7203,
	call	Logp_cvec	#
	addss	-860(%rbp), %xmm0	# %sfp, D.7204
	movl	-820(%rbp), %eax	# q, tmp192
	cltq
	movss	%xmm0, -800(%rbp,%rax,4)	# D.7204, mix
	.loc 1 532 0 discriminator 3
	addl	$1, -820(%rbp)	#, q
.L111:
	.loc 1 532 0 is_stmt 0 discriminator 1
	movq	-848(%rbp), %rax	# prior, tmp193
	movl	4(%rax), %eax	# prior_7(D)->tnum, D.7201
	cmpl	-820(%rbp), %eax	# q, D.7201
	jg	.L115	#,
	.loc 1 539 0 is_stmt 1
	movq	-848(%rbp), %rax	# prior, tmp194
	movl	4(%rax), %edx	# prior_7(D)->tnum, D.7201
	leaq	-800(%rbp), %rax	#, tmp195
	movl	%edx, %esi	# D.7201,
	movq	%rax, %rdi	# tmp195,
	call	LogNorm	#
.L110:
	.loc 1 542 0
	movq	-840(%rbp), %rax	# t, tmp196
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp196,
	call	FSum	#
	movss	%xmm0, -860(%rbp)	#, %sfp
	movl	-860(%rbp), %eax	# %sfp, tmp197
	movl	%eax, -812(%rbp)	# tmp197, totm
	.loc 1 543 0
	movq	-840(%rbp), %rax	# t, tmp198
	addq	$12, %rax	#, D.7203
	movss	(%rax), %xmm1	# *_46, D.7204
	movq	-840(%rbp), %rax	# t, tmp199
	addq	$16, %rax	#, D.7203
	movss	(%rax), %xmm0	# *_48, D.7204
	addss	%xmm1, %xmm0	# D.7204, tmp200
	movss	%xmm0, -808(%rbp)	# tmp200, toti
	.loc 1 544 0
	movq	-840(%rbp), %rax	# t, tmp201
	addq	$20, %rax	#, D.7203
	movss	(%rax), %xmm1	# *_51, D.7204
	movq	-840(%rbp), %rax	# t, tmp202
	addq	$24, %rax	#, D.7203
	movss	(%rax), %xmm0	# *_53, D.7204
	addss	%xmm1, %xmm0	# D.7204, tmp203
	movss	%xmm0, -804(%rbp)	# tmp203, totd
	.loc 1 546 0
	movl	$0, -824(%rbp)	#, ts
	jmp	.L116	#
.L124:
	.loc 1 548 0
	movl	.LC31(%rip), %eax	#, tmp204
	movl	%eax, -816(%rbp)	# tmp204, xi
	.loc 1 549 0
	movl	$0, -820(%rbp)	#, q
	jmp	.L117	#
.L123:
	.loc 1 551 0
	cmpl	$6, -824(%rbp)	#, ts
	ja	.L118	#,
	movl	-824(%rbp), %eax	# ts, tmp205
	movq	.L120(,%rax,8), %rax	#, tmp206
	jmp	*%rax	# tmp206
	.section	.rodata
	.align 8
	.align 4
.L120:
	.quad	.L119
	.quad	.L119
	.quad	.L119
	.quad	.L121
	.quad	.L121
	.quad	.L122
	.quad	.L122
	.text
.L119:
	.loc 1 553 0
	movl	-820(%rbp), %eax	# q, tmp208
	cltq
	movss	-800(%rbp,%rax,4), %xmm1	# mix, D.7204
	movl	-824(%rbp), %eax	# ts, tmp209
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7202
	movq	-840(%rbp), %rax	# t, tmp210
	addq	%rdx, %rax	# D.7202, D.7203
	movss	(%rax), %xmm2	# *_63, D.7204
	movq	-848(%rbp), %rcx	# prior, tmp211
	movl	-824(%rbp), %eax	# ts, tmp213
	movslq	%eax, %rsi	# tmp213, tmp212
	movl	-820(%rbp), %eax	# q, tmp215
	movslq	%eax, %rdx	# tmp215, tmp214
	movq	%rdx, %rax	# tmp214, tmp216
	salq	$3, %rax	#, tmp217
	subq	%rdx, %rax	# tmp214, tmp216
	addq	%rsi, %rax	# tmp212, tmp218
	addq	$200, %rax	#, tmp219
	movss	8(%rcx,%rax,4), %xmm0	# prior_7(D)->t, D.7204
	addss	%xmm2, %xmm0	# D.7204, D.7204
	mulss	%xmm0, %xmm1	# D.7204, D.7204
	movss	%xmm1, -860(%rbp)	# D.7204, %sfp
	.loc 1 554 0
	movl	-820(%rbp), %eax	# q, tmp221
	cltq
	salq	$2, %rax	#, tmp223
	leaq	0(,%rax,8), %rdx	#, tmp224
	subq	%rax, %rdx	# tmp222, tmp224
	addq	$800, %rdx	#, tmp225
	movq	-848(%rbp), %rax	# prior, tmp227
	addq	%rdx, %rax	# tmp225, tmp226
	addq	$8, %rax	#, D.7206
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.7206,
	call	FSum	#
	addss	-812(%rbp), %xmm0	# totm, D.7204
	.loc 1 553 0
	movss	-860(%rbp), %xmm1	# %sfp, D.7204
	divss	%xmm0, %xmm1	# D.7204, D.7204
	movaps	%xmm1, %xmm0	# D.7204, D.7204
	movss	-816(%rbp), %xmm1	# xi, tmp229
	addss	%xmm1, %xmm0	# tmp229, tmp228
	movss	%xmm0, -816(%rbp)	# tmp228, xi
	.loc 1 555 0
	jmp	.L118	#
.L121:
	.loc 1 557 0
	movl	-820(%rbp), %eax	# q, tmp231
	cltq
	movss	-800(%rbp,%rax,4), %xmm1	# mix, D.7204
	movl	-824(%rbp), %eax	# ts, tmp232
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7202
	movq	-840(%rbp), %rax	# t, tmp233
	addq	%rdx, %rax	# D.7202, D.7203
	movss	(%rax), %xmm2	# *_76, D.7204
	movq	-848(%rbp), %rcx	# prior, tmp234
	movl	-824(%rbp), %eax	# ts, tmp236
	movslq	%eax, %rsi	# tmp236, tmp235
	movl	-820(%rbp), %eax	# q, tmp238
	movslq	%eax, %rdx	# tmp238, tmp237
	movq	%rdx, %rax	# tmp237, tmp239
	salq	$3, %rax	#, tmp240
	subq	%rdx, %rax	# tmp237, tmp239
	addq	%rsi, %rax	# tmp235, tmp241
	addq	$200, %rax	#, tmp242
	movss	8(%rcx,%rax,4), %xmm0	# prior_7(D)->t, D.7204
	addss	%xmm2, %xmm0	# D.7204, D.7204
	mulss	%xmm1, %xmm0	# D.7204, D.7204
	.loc 1 558 0
	movq	-848(%rbp), %rcx	# prior, tmp243
	movl	-820(%rbp), %eax	# q, tmp245
	cltq
	salq	$2, %rax	#, tmp247
	leaq	0(,%rax,8), %rdx	#, tmp248
	subq	%rax, %rdx	# tmp246, tmp248
	leaq	(%rcx,%rdx), %rax	#, tmp249
	addq	$820, %rax	#, tmp250
	movss	(%rax), %xmm1	# prior_7(D)->t, D.7204
	addss	-808(%rbp), %xmm1	# toti, D.7204
	movq	-848(%rbp), %rcx	# prior, tmp251
	movl	-820(%rbp), %eax	# q, tmp253
	cltq
	salq	$2, %rax	#, tmp255
	leaq	0(,%rax,8), %rdx	#, tmp256
	subq	%rax, %rdx	# tmp254, tmp256
	leaq	(%rcx,%rdx), %rax	#, tmp257
	addq	$824, %rax	#, tmp258
	movss	(%rax), %xmm2	# prior_7(D)->t, D.7204
	addss	%xmm2, %xmm1	# D.7204, D.7204
	.loc 1 557 0
	divss	%xmm1, %xmm0	# D.7204, D.7204
	movss	-816(%rbp), %xmm1	# xi, tmp260
	addss	%xmm1, %xmm0	# tmp260, tmp259
	movss	%xmm0, -816(%rbp)	# tmp259, xi
	.loc 1 559 0
	jmp	.L118	#
.L122:
	.loc 1 561 0
	movl	-820(%rbp), %eax	# q, tmp262
	cltq
	movss	-800(%rbp,%rax,4), %xmm1	# mix, D.7204
	movl	-824(%rbp), %eax	# ts, tmp263
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7202
	movq	-840(%rbp), %rax	# t, tmp264
	addq	%rdx, %rax	# D.7202, D.7203
	movss	(%rax), %xmm2	# *_90, D.7204
	movq	-848(%rbp), %rcx	# prior, tmp265
	movl	-824(%rbp), %eax	# ts, tmp267
	movslq	%eax, %rsi	# tmp267, tmp266
	movl	-820(%rbp), %eax	# q, tmp269
	movslq	%eax, %rdx	# tmp269, tmp268
	movq	%rdx, %rax	# tmp268, tmp270
	salq	$3, %rax	#, tmp271
	subq	%rdx, %rax	# tmp268, tmp270
	addq	%rsi, %rax	# tmp266, tmp272
	addq	$200, %rax	#, tmp273
	movss	8(%rcx,%rax,4), %xmm0	# prior_7(D)->t, D.7204
	addss	%xmm2, %xmm0	# D.7204, D.7204
	mulss	%xmm1, %xmm0	# D.7204, D.7204
	.loc 1 562 0
	movq	-848(%rbp), %rcx	# prior, tmp274
	movl	-820(%rbp), %eax	# q, tmp276
	cltq
	salq	$2, %rax	#, tmp278
	leaq	0(,%rax,8), %rdx	#, tmp279
	subq	%rax, %rdx	# tmp277, tmp279
	leaq	(%rcx,%rdx), %rax	#, tmp280
	addq	$828, %rax	#, tmp281
	movss	(%rax), %xmm1	# prior_7(D)->t, D.7204
	addss	-804(%rbp), %xmm1	# totd, D.7204
	movq	-848(%rbp), %rcx	# prior, tmp282
	movl	-820(%rbp), %eax	# q, tmp284
	cltq
	salq	$2, %rax	#, tmp286
	leaq	0(,%rax,8), %rdx	#, tmp287
	subq	%rax, %rdx	# tmp285, tmp287
	leaq	(%rcx,%rdx), %rax	#, tmp288
	addq	$832, %rax	#, tmp289
	movss	(%rax), %xmm2	# prior_7(D)->t, D.7204
	addss	%xmm2, %xmm1	# D.7204, D.7204
	.loc 1 561 0
	divss	%xmm1, %xmm0	# D.7204, D.7204
	movss	-816(%rbp), %xmm1	# xi, tmp291
	addss	%xmm1, %xmm0	# tmp291, tmp290
	movss	%xmm0, -816(%rbp)	# tmp290, xi
	.loc 1 563 0
	nop
.L118:
	.loc 1 549 0
	addl	$1, -820(%rbp)	#, q
.L117:
	.loc 1 549 0 is_stmt 0 discriminator 1
	movq	-848(%rbp), %rax	# prior, tmp292
	movl	4(%rax), %eax	# prior_7(D)->tnum, D.7201
	cmpl	-820(%rbp), %eax	# q, D.7201
	jg	.L123	#,
	.loc 1 566 0 is_stmt 1
	movl	-824(%rbp), %eax	# ts, tmp293
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7202
	movq	-840(%rbp), %rax	# t, tmp294
	addq	%rax, %rdx	# tmp294, D.7203
	movl	-816(%rbp), %eax	# xi, tmp295
	movl	%eax, (%rdx)	# tmp295, *_104
	.loc 1 546 0
	addl	$1, -824(%rbp)	#, ts
.L116:
	.loc 1 546 0 is_stmt 0 discriminator 1
	cmpl	$6, -824(%rbp)	#, ts
	jle	.L124	#,
	.loc 1 568 0 is_stmt 1
	movq	-840(%rbp), %rax	# t, tmp296
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp296,
	call	FNorm	#
	.loc 1 569 0
	movq	-840(%rbp), %rax	# t, tmp297
	addq	$12, %rax	#, D.7203
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.7203,
	call	FNorm	#
	.loc 1 570 0
	movq	-840(%rbp), %rax	# t, tmp298
	addq	$20, %rax	#, D.7203
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.7203,
	call	FNorm	#
	.loc 1 571 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	P7PriorifyTransitionVector, .-P7PriorifyTransitionVector
	.type	default_amino_prior, @function
default_amino_prior:
.LFB13:
	.loc 1 580 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 628 0
	call	P7AllocPrior	#
	movq	%rax, -8(%rbp)	# tmp64, pri
	.loc 1 629 0
	movq	-8(%rbp), %rax	# pri, tmp65
	movl	$0, (%rax)	#, pri_3->strategy
	.loc 1 634 0
	movq	-8(%rbp), %rax	# pri, tmp66
	movl	$1, 4(%rax)	#, pri_3->tnum
	.loc 1 635 0
	movq	-8(%rbp), %rdx	# pri, tmp67
	movl	.LC1(%rip), %eax	#, tmp68
	movl	%eax, 8(%rdx)	# tmp68, pri_3->tq
	.loc 1 636 0
	movq	-8(%rbp), %rdx	# pri, tmp69
	movl	.LC37(%rip), %eax	#, tmp70
	movl	%eax, 808(%rdx)	# tmp70, pri_3->t
	.loc 1 637 0
	movq	-8(%rbp), %rdx	# pri, tmp71
	movl	.LC38(%rip), %eax	#, tmp72
	movl	%eax, 812(%rdx)	# tmp72, pri_3->t
	.loc 1 638 0
	movq	-8(%rbp), %rdx	# pri, tmp73
	movl	.LC39(%rip), %eax	#, tmp74
	movl	%eax, 816(%rdx)	# tmp74, pri_3->t
	.loc 1 639 0
	movq	-8(%rbp), %rdx	# pri, tmp75
	movl	.LC40(%rip), %eax	#, tmp76
	movl	%eax, 820(%rdx)	# tmp76, pri_3->t
	.loc 1 640 0
	movq	-8(%rbp), %rdx	# pri, tmp77
	movl	.LC41(%rip), %eax	#, tmp78
	movl	%eax, 824(%rdx)	# tmp78, pri_3->t
	.loc 1 641 0
	movq	-8(%rbp), %rdx	# pri, tmp79
	movl	.LC42(%rip), %eax	#, tmp80
	movl	%eax, 828(%rdx)	# tmp80, pri_3->t
	.loc 1 642 0
	movq	-8(%rbp), %rdx	# pri, tmp81
	movl	.LC43(%rip), %eax	#, tmp82
	movl	%eax, 832(%rdx)	# tmp82, pri_3->t
	.loc 1 647 0
	movq	-8(%rbp), %rax	# pri, tmp83
	movl	$9, 6408(%rax)	#, pri_3->mnum
	.loc 1 648 0
	movl	$0, -16(%rbp)	#, q
	jmp	.L128	#
.L131:
	.loc 1 650 0
	movl	-16(%rbp), %eax	# q, tmp85
	cltq
	movl	defmq.6575(,%rax,4), %eax	# defmq, D.7208
	movq	-8(%rbp), %rdx	# pri, tmp86
	movl	-16(%rbp), %ecx	# q, tmp88
	movslq	%ecx, %rcx	# tmp88, tmp87
	addq	$1600, %rcx	#, tmp89
	movl	%eax, 12(%rdx,%rcx,4)	# D.7208, pri_3->mq
	.loc 1 651 0
	movl	$0, -12(%rbp)	#, x
	jmp	.L129	#
.L130:
	.loc 1 652 0 discriminator 2
	movl	-12(%rbp), %eax	# x, tmp91
	movslq	%eax, %rcx	# tmp91, tmp90
	movl	-16(%rbp), %eax	# q, tmp93
	movslq	%eax, %rdx	# tmp93, tmp92
	movq	%rdx, %rax	# tmp92, tmp94
	salq	$2, %rax	#, tmp94
	addq	%rdx, %rax	# tmp92, tmp94
	salq	$2, %rax	#, tmp95
	addq	%rcx, %rax	# tmp90, tmp96
	movl	defm.6576(,%rax,4), %edx	# defm, D.7208
	movq	-8(%rbp), %rsi	# pri, tmp97
	movl	-12(%rbp), %eax	# x, tmp99
	movslq	%eax, %rdi	# tmp99, tmp98
	movl	-16(%rbp), %eax	# q, tmp101
	movslq	%eax, %rcx	# tmp101, tmp100
	movq	%rcx, %rax	# tmp100, tmp102
	salq	$2, %rax	#, tmp102
	addq	%rcx, %rax	# tmp100, tmp102
	salq	$2, %rax	#, tmp103
	addq	%rdi, %rax	# tmp98, tmp104
	addq	$1800, %rax	#, tmp105
	movl	%edx, 12(%rsi,%rax,4)	# D.7208, pri_3->m
	.loc 1 651 0 discriminator 2
	addl	$1, -12(%rbp)	#, x
.L129:
	.loc 1 651 0 is_stmt 0 discriminator 1
	cmpl	$19, -12(%rbp)	#, x
	jle	.L130	#,
	.loc 1 648 0 is_stmt 1
	addl	$1, -16(%rbp)	#, q
.L128:
	.loc 1 648 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# pri, tmp106
	movl	6408(%rax), %eax	# pri_3->mnum, D.7207
	cmpl	-16(%rbp), %eax	# q, D.7207
	jg	.L131	#,
	.loc 1 661 0 is_stmt 1
	movq	-8(%rbp), %rax	# pri, tmp107
	movl	$1, 23212(%rax)	#, pri_3->inum
	.loc 1 662 0
	movq	-8(%rbp), %rdx	# pri, tmp108
	movl	.LC1(%rip), %eax	#, tmp109
	movl	%eax, 23216(%rdx)	# tmp109, pri_3->iq
	.loc 1 663 0
	movq	-8(%rbp), %rdx	# pri, tmp110
	movl	.LC44(%rip), %eax	#, tmp111
	movl	%eax, 24016(%rdx)	# tmp111, pri_3->i
	.loc 1 664 0
	movq	-8(%rbp), %rdx	# pri, tmp112
	movl	.LC45(%rip), %eax	#, tmp113
	movl	%eax, 24020(%rdx)	# tmp113, pri_3->i
	.loc 1 665 0
	movq	-8(%rbp), %rdx	# pri, tmp114
	movl	.LC46(%rip), %eax	#, tmp115
	movl	%eax, 24024(%rdx)	# tmp115, pri_3->i
	.loc 1 666 0
	movq	-8(%rbp), %rdx	# pri, tmp116
	movl	.LC47(%rip), %eax	#, tmp117
	movl	%eax, 24028(%rdx)	# tmp117, pri_3->i
	.loc 1 667 0
	movq	-8(%rbp), %rdx	# pri, tmp118
	movl	.LC48(%rip), %eax	#, tmp119
	movl	%eax, 24032(%rdx)	# tmp119, pri_3->i
	.loc 1 668 0
	movq	-8(%rbp), %rdx	# pri, tmp120
	movl	.LC49(%rip), %eax	#, tmp121
	movl	%eax, 24036(%rdx)	# tmp121, pri_3->i
	.loc 1 669 0
	movq	-8(%rbp), %rdx	# pri, tmp122
	movl	.LC50(%rip), %eax	#, tmp123
	movl	%eax, 24040(%rdx)	# tmp123, pri_3->i
	.loc 1 670 0
	movq	-8(%rbp), %rdx	# pri, tmp124
	movl	.LC51(%rip), %eax	#, tmp125
	movl	%eax, 24044(%rdx)	# tmp125, pri_3->i
	.loc 1 671 0
	movq	-8(%rbp), %rdx	# pri, tmp126
	movl	.LC52(%rip), %eax	#, tmp127
	movl	%eax, 24048(%rdx)	# tmp127, pri_3->i
	.loc 1 672 0
	movq	-8(%rbp), %rdx	# pri, tmp128
	movl	.LC53(%rip), %eax	#, tmp129
	movl	%eax, 24052(%rdx)	# tmp129, pri_3->i
	.loc 1 673 0
	movq	-8(%rbp), %rdx	# pri, tmp130
	movl	.LC54(%rip), %eax	#, tmp131
	movl	%eax, 24056(%rdx)	# tmp131, pri_3->i
	.loc 1 674 0
	movq	-8(%rbp), %rdx	# pri, tmp132
	movl	.LC55(%rip), %eax	#, tmp133
	movl	%eax, 24060(%rdx)	# tmp133, pri_3->i
	.loc 1 675 0
	movq	-8(%rbp), %rdx	# pri, tmp134
	movl	.LC56(%rip), %eax	#, tmp135
	movl	%eax, 24064(%rdx)	# tmp135, pri_3->i
	.loc 1 676 0
	movq	-8(%rbp), %rdx	# pri, tmp136
	movl	.LC57(%rip), %eax	#, tmp137
	movl	%eax, 24068(%rdx)	# tmp137, pri_3->i
	.loc 1 677 0
	movq	-8(%rbp), %rdx	# pri, tmp138
	movl	.LC58(%rip), %eax	#, tmp139
	movl	%eax, 24072(%rdx)	# tmp139, pri_3->i
	.loc 1 678 0
	movq	-8(%rbp), %rdx	# pri, tmp140
	movl	.LC59(%rip), %eax	#, tmp141
	movl	%eax, 24076(%rdx)	# tmp141, pri_3->i
	.loc 1 679 0
	movq	-8(%rbp), %rdx	# pri, tmp142
	movl	.LC46(%rip), %eax	#, tmp143
	movl	%eax, 24080(%rdx)	# tmp143, pri_3->i
	.loc 1 680 0
	movq	-8(%rbp), %rdx	# pri, tmp144
	movl	.LC60(%rip), %eax	#, tmp145
	movl	%eax, 24084(%rdx)	# tmp145, pri_3->i
	.loc 1 681 0
	movq	-8(%rbp), %rdx	# pri, tmp146
	movl	.LC61(%rip), %eax	#, tmp147
	movl	%eax, 24088(%rdx)	# tmp147, pri_3->i
	.loc 1 682 0
	movq	-8(%rbp), %rdx	# pri, tmp148
	movl	.LC62(%rip), %eax	#, tmp149
	movl	%eax, 24092(%rdx)	# tmp149, pri_3->i
	.loc 1 684 0
	movq	-8(%rbp), %rax	# pri, D.7209
	.loc 1 685 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	default_amino_prior, .-default_amino_prior
	.type	default_nucleic_prior, @function
default_nucleic_prior:
.LFB14:
	.loc 1 694 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 697 0
	call	P7AllocPrior	#
	movq	%rax, -8(%rbp)	# tmp65, pri
	.loc 1 698 0
	movq	-8(%rbp), %rax	# pri, tmp66
	movl	$0, (%rax)	#, pri_1->strategy
	.loc 1 706 0
	movq	-8(%rbp), %rax	# pri, tmp67
	movl	$1, 4(%rax)	#, pri_1->tnum
	.loc 1 707 0
	movq	-8(%rbp), %rdx	# pri, tmp68
	movl	.LC1(%rip), %eax	#, tmp69
	movl	%eax, 8(%rdx)	# tmp69, pri_1->tq
	.loc 1 708 0
	movq	-8(%rbp), %rdx	# pri, tmp70
	movl	.LC37(%rip), %eax	#, tmp71
	movl	%eax, 808(%rdx)	# tmp71, pri_1->t
	.loc 1 709 0
	movq	-8(%rbp), %rdx	# pri, tmp72
	movl	.LC38(%rip), %eax	#, tmp73
	movl	%eax, 812(%rdx)	# tmp73, pri_1->t
	.loc 1 710 0
	movq	-8(%rbp), %rdx	# pri, tmp74
	movl	.LC39(%rip), %eax	#, tmp75
	movl	%eax, 816(%rdx)	# tmp75, pri_1->t
	.loc 1 711 0
	movq	-8(%rbp), %rdx	# pri, tmp76
	movl	.LC40(%rip), %eax	#, tmp77
	movl	%eax, 820(%rdx)	# tmp77, pri_1->t
	.loc 1 712 0
	movq	-8(%rbp), %rdx	# pri, tmp78
	movl	.LC41(%rip), %eax	#, tmp79
	movl	%eax, 824(%rdx)	# tmp79, pri_1->t
	.loc 1 713 0
	movq	-8(%rbp), %rdx	# pri, tmp80
	movl	.LC42(%rip), %eax	#, tmp81
	movl	%eax, 828(%rdx)	# tmp81, pri_1->t
	.loc 1 714 0
	movq	-8(%rbp), %rdx	# pri, tmp82
	movl	.LC43(%rip), %eax	#, tmp83
	movl	%eax, 832(%rdx)	# tmp83, pri_1->t
	.loc 1 716 0
	movq	-8(%rbp), %rax	# pri, tmp84
	movl	$1, 6408(%rax)	#, pri_1->mnum
	.loc 1 717 0
	movq	-8(%rbp), %rdx	# pri, tmp85
	movl	.LC1(%rip), %eax	#, tmp86
	movl	%eax, 6412(%rdx)	# tmp86, pri_1->mq
	.loc 1 718 0
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.33
	movq	-8(%rbp), %rdx	# pri, tmp87
	addq	$7212, %rdx	#, D.7210
	movss	.LC1(%rip), %xmm0	#,
	movl	%eax, %esi	# Alphabet_size.33,
	movq	%rdx, %rdi	# D.7210,
	call	FSet	#
	.loc 1 720 0
	movq	-8(%rbp), %rax	# pri, tmp88
	movl	$1, 23212(%rax)	#, pri_1->inum
	.loc 1 721 0
	movq	-8(%rbp), %rdx	# pri, tmp89
	movl	.LC1(%rip), %eax	#, tmp90
	movl	%eax, 23216(%rdx)	# tmp90, pri_1->iq
	.loc 1 722 0
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.34
	movq	-8(%rbp), %rdx	# pri, tmp91
	addq	$24016, %rdx	#, D.7210
	movss	.LC1(%rip), %xmm0	#,
	movl	%eax, %esi	# Alphabet_size.34,
	movq	%rdx, %rdi	# D.7210,
	call	FSet	#
	.loc 1 724 0
	movq	-8(%rbp), %rax	# pri, D.7211
	.loc 1 725 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	default_nucleic_prior, .-default_nucleic_prior
	.data
	.align 32
	.type	defmq.6575, @object
	.size	defmq.6575, 36
defmq.6575:
	.long	1043750269
	.long	1030212599
	.long	1036297641
	.long	1033895708
	.long	1034617048
	.long	1035545109
	.long	1038773811
	.long	1032565597
	.long	1047541517
	.align 32
	.type	defm.6576, @object
	.size	defm.6576, 720
defm.6576:
	.long	1049269604
	.long	1025718184
	.long	1016069003
	.long	1015445696
	.long	1013564500
	.long	1040651517
	.long	1011549087
	.long	1018765706
	.long	1017562578
	.long	1023129393
	.long	1014688708
	.long	1027986464
	.long	1029464201
	.long	1017725787
	.long	1019309556
	.long	1046304164
	.long	1041678954
	.long	1032193116
	.long	997607623
	.long	1008574822
	.long	1018156894
	.long	1009303893
	.long	1010851155
	.long	1009929884
	.long	1053127692
	.long	1015446233
	.long	1033637030
	.long	1024505124
	.long	1013191912
	.long	1035961815
	.long	1018462374
	.long	1021983710
	.long	1012295338
	.long	1018986897
	.long	1016761567
	.long	1022285968
	.long	1016378778
	.long	1024712088
	.long	1033042982
	.long	1054268207
	.long	1057995719
	.long	1027221423
	.long	1054896514
	.long	1061396595
	.long	1035135974
	.long	1048881815
	.long	1046223163
	.long	1041591846
	.long	1061363661
	.long	1048396148
	.long	1039336720
	.long	1055003821
	.long	1043530890
	.long	1057482017
	.long	1055807953
	.long	1058363861
	.long	1055138777
	.long	1047035852
	.long	1022476021
	.long	1039662601
	.long	1032824610
	.long	1010205836
	.long	1017090668
	.long	1036114823
	.long	1012376942
	.long	1027916670
	.long	1033744941
	.long	1023863563
	.long	1058250397
	.long	1033113178
	.long	1021794195
	.long	1034197523
	.long	1025131116
	.long	1044216407
	.long	1057078408
	.long	1033306318
	.long	1033018420
	.long	1026438665
	.long	1010328242
	.long	1022053503
	.long	1026055071
	.long	1014129289
	.long	1001903127
	.long	1009213698
	.long	1042106840
	.long	1006599674
	.long	1005263939
	.long	1050241474
	.long	1009893377
	.long	1065343921
	.long	1045904329
	.long	1003013376
	.long	1012225544
	.long	1017261930
	.long	1013823272
	.long	1011181867
	.long	1024631289
	.long	1043884084
	.long	1011928118
	.long	1020841786
	.long	1038926685
	.long	1025055954
	.long	1011573783
	.long	1016392736
	.long	1028920619
	.long	1015896668
	.long	1000402036
	.long	1061945461
	.long	1015799494
	.long	1049779195
	.long	1033585356
	.long	1013865148
	.long	1014449264
	.long	1010465681
	.long	1011876578
	.long	1021415701
	.long	1035266031
	.long	1064419396
	.long	999246690
	.long	1015620716
	.long	1035954299
	.long	1000028374
	.long	1053181413
	.long	1051858999
	.long	1009864386
	.long	1037620746
	.long	1028383211
	.long	1014310751
	.long	1036063687
	.long	1021537033
	.long	1009024720
	.long	1044406459
	.long	1028448173
	.long	1038179361
	.long	1025401430
	.long	1039445302
	.long	1032241971
	.long	1020285587
	.long	995275456
	.long	1016694995
	.long	1055359733
	.long	1038793272
	.long	1031788047
	.long	1038939436
	.long	1049725105
	.long	1041207715
	.long	1036879999
	.long	1057807328
	.long	1041462125
	.long	1060330940
	.long	1049467877
	.long	1039324238
	.long	1036492378
	.long	1040299665
	.long	1041437899
	.long	1049548508
	.long	1052216052
	.long	1059678323
	.long	1031539207
	.long	1045178480
	.long	1001007627
	.long	998529430
	.long	1004291129
	.long	1003000491
	.long	996362083
	.long	1015722721
	.long	997130882
	.long	990847345
	.long	1000633964
	.long	1002719171
	.long	985731502
	.long	998784981
	.long	1007967084
	.long	997057867
	.long	1003992629
	.long	995090772
	.long	997315565
	.long	994210304
	.long	993372785
	.long	993003418
	.section	.rodata
	.align 4
.LC1:
	.long	1065353216
	.align 8
.LC25:
	.long	0
	.long	1072693248
	.align 4
.LC26:
	.long	1065305418
	.align 4
.LC27:
	.long	1065336456
	.align 4
.LC31:
	.long	0
	.align 4
.LC32:
	.long	1073741824
	.align 4
.LC36:
	.long	3296313344
	.align 4
.LC37:
	.long	1061895432
	.align 4
.LC38:
	.long	1021557971
	.align 4
.LC39:
	.long	1012739867
	.align 4
.LC40:
	.long	1042207369
	.align 4
.LC41:
	.long	1040730974
	.align 4
.LC42:
	.long	1063678850
	.align 4
.LC43:
	.long	1058021573
	.align 4
.LC44:
	.long	1143619584
	.align 4
.LC45:
	.long	1123024896
	.align 4
.LC46:
	.long	1142669312
	.align 4
.LC47:
	.long	1143128064
	.align 4
.LC48:
	.long	1134329856
	.align 4
.LC49:
	.long	1147240448
	.align 4
.LC50:
	.long	1131479040
	.align 4
.LC51:
	.long	1136230400
	.align 4
.LC52:
	.long	1143717888
	.align 4
.LC53:
	.long	1143537664
	.align 4
.LC54:
	.long	1125056512
	.align 4
.LC55:
	.long	1141440512
	.align 4
.LC56:
	.long	1143062528
	.align 4
.LC57:
	.long	1137672192
	.align 4
.LC58:
	.long	1141489664
	.align 4
.LC59:
	.long	1147633664
	.align 4
.LC60:
	.long	1140621312
	.align 4
.LC61:
	.long	1120665600
	.align 4
.LC62:
	.long	1132888064
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "structs.h"
	.file 7 "squid.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc05
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF116
	.byte	0x1
	.long	.LASF117
	.long	.LASF118
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF9
	.byte	0x2
	.byte	0xd4
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x8c
	.long	0x77
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x8d
	.long	0x77
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x54
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
	.long	0x4d
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xfc
	.long	0x96
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xfd
	.long	0x96
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfe
	.long	0x96
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xff
	.long	0x96
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.value	0x100
	.long	0x96
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x101
	.long	0x96
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x102
	.long	0x96
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x103
	.long	0x96
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x105
	.long	0x96
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x106
	.long	0x96
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x107
	.long	0x96
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
	.long	0x4d
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x111
	.long	0x4d
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x113
	.long	0x7e
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
	.long	0x69
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
	.long	0x89
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x12f
	.long	0x94
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x130
	.long	0x94
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x131
	.long	0x94
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x132
	.long	0x94
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
	.long	0x4d
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x137
	.long	0x282
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF119
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
	.long	0x4d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22f
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0xb
	.long	0x54
	.long	0x27c
	.uleb128 0xc
	.long	0x3f
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x228
	.uleb128 0xb
	.long	0x54
	.long	0x292
	.uleb128 0xc
	.long	0x3f
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF48
	.uleb128 0x6
	.byte	0x8
	.long	0x4d
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF50
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x292
	.uleb128 0xd
	.long	.LASF51
	.value	0x1d0
	.byte	0x6
	.byte	0x65
	.long	0x517
	.uleb128 0x8
	.long	.LASF52
	.byte	0x6
	.byte	0x71
	.long	0x96
	.byte	0
	.uleb128 0xe
	.string	"acc"
	.byte	0x6
	.byte	0x72
	.long	0x96
	.byte	0x8
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x73
	.long	0x96
	.byte	0x10
	.uleb128 0xe
	.string	"rf"
	.byte	0x6
	.byte	0x74
	.long	0x96
	.byte	0x18
	.uleb128 0xe
	.string	"cs"
	.byte	0x6
	.byte	0x75
	.long	0x96
	.byte	0x20
	.uleb128 0xe
	.string	"ca"
	.byte	0x6
	.byte	0x76
	.long	0x96
	.byte	0x28
	.uleb128 0x8
	.long	.LASF54
	.byte	0x6
	.byte	0x77
	.long	0x96
	.byte	0x30
	.uleb128 0x8
	.long	.LASF55
	.byte	0x6
	.byte	0x78
	.long	0x4d
	.byte	0x38
	.uleb128 0x8
	.long	.LASF56
	.byte	0x6
	.byte	0x79
	.long	0x96
	.byte	0x40
	.uleb128 0xe
	.string	"map"
	.byte	0x6
	.byte	0x7a
	.long	0x2a0
	.byte	0x48
	.uleb128 0x8
	.long	.LASF57
	.byte	0x6
	.byte	0x7b
	.long	0x4d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF58
	.byte	0x6
	.byte	0x86
	.long	0x2a0
	.byte	0x58
	.uleb128 0x8
	.long	.LASF59
	.byte	0x6
	.byte	0x87
	.long	0x2a0
	.byte	0x60
	.uleb128 0x8
	.long	.LASF60
	.byte	0x6
	.byte	0x88
	.long	0x2a0
	.byte	0x68
	.uleb128 0xe
	.string	"ga1"
	.byte	0x6
	.byte	0x90
	.long	0x292
	.byte	0x70
	.uleb128 0xe
	.string	"ga2"
	.byte	0x6
	.byte	0x90
	.long	0x292
	.byte	0x74
	.uleb128 0xe
	.string	"tc1"
	.byte	0x6
	.byte	0x91
	.long	0x292
	.byte	0x78
	.uleb128 0xe
	.string	"tc2"
	.byte	0x6
	.byte	0x91
	.long	0x292
	.byte	0x7c
	.uleb128 0xe
	.string	"nc1"
	.byte	0x6
	.byte	0x92
	.long	0x292
	.byte	0x80
	.uleb128 0xe
	.string	"nc2"
	.byte	0x6
	.byte	0x92
	.long	0x292
	.byte	0x84
	.uleb128 0xe
	.string	"M"
	.byte	0x6
	.byte	0x9b
	.long	0x4d
	.byte	0x88
	.uleb128 0xe
	.string	"t"
	.byte	0x6
	.byte	0x9c
	.long	0x517
	.byte	0x90
	.uleb128 0xe
	.string	"mat"
	.byte	0x6
	.byte	0x9d
	.long	0x517
	.byte	0x98
	.uleb128 0xe
	.string	"ins"
	.byte	0x6
	.byte	0x9e
	.long	0x517
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF61
	.byte	0x6
	.byte	0x9f
	.long	0x292
	.byte	0xa8
	.uleb128 0xe
	.string	"xt"
	.byte	0x6
	.byte	0xa8
	.long	0x51d
	.byte	0xac
	.uleb128 0x8
	.long	.LASF62
	.byte	0x6
	.byte	0xa9
	.long	0x2ba
	.byte	0xd0
	.uleb128 0xe
	.string	"end"
	.byte	0x6
	.byte	0xaa
	.long	0x2ba
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF63
	.byte	0x6
	.byte	0xae
	.long	0x533
	.byte	0xe0
	.uleb128 0xf
	.string	"p1"
	.byte	0x6
	.byte	0xaf
	.long	0x292
	.value	0x130
	.uleb128 0xf
	.string	"tsc"
	.byte	0x6
	.byte	0xc5
	.long	0x543
	.value	0x138
	.uleb128 0xf
	.string	"msc"
	.byte	0x6
	.byte	0xc6
	.long	0x543
	.value	0x140
	.uleb128 0xf
	.string	"isc"
	.byte	0x6
	.byte	0xc7
	.long	0x543
	.value	0x148
	.uleb128 0xf
	.string	"xsc"
	.byte	0x6
	.byte	0xc8
	.long	0x549
	.value	0x150
	.uleb128 0xf
	.string	"bsc"
	.byte	0x6
	.byte	0xc9
	.long	0x2a0
	.value	0x170
	.uleb128 0xf
	.string	"esc"
	.byte	0x6
	.byte	0xca
	.long	0x2a0
	.value	0x178
	.uleb128 0x10
	.long	.LASF64
	.byte	0x6
	.byte	0xcb
	.long	0x2a0
	.value	0x180
	.uleb128 0x10
	.long	.LASF65
	.byte	0x6
	.byte	0xcb
	.long	0x2a0
	.value	0x188
	.uleb128 0x10
	.long	.LASF66
	.byte	0x6
	.byte	0xcb
	.long	0x2a0
	.value	0x190
	.uleb128 0x10
	.long	.LASF67
	.byte	0x6
	.byte	0xcb
	.long	0x2a0
	.value	0x198
	.uleb128 0x10
	.long	.LASF68
	.byte	0x6
	.byte	0xcb
	.long	0x2a0
	.value	0x1a0
	.uleb128 0x10
	.long	.LASF69
	.byte	0x6
	.byte	0xd6
	.long	0x543
	.value	0x1a8
	.uleb128 0x10
	.long	.LASF70
	.byte	0x6
	.byte	0xd7
	.long	0x543
	.value	0x1b0
	.uleb128 0x10
	.long	.LASF71
	.byte	0x6
	.byte	0xd8
	.long	0x4d
	.value	0x1b8
	.uleb128 0x10
	.long	.LASF72
	.byte	0x6
	.byte	0xd9
	.long	0x4d
	.value	0x1bc
	.uleb128 0xf
	.string	"mu"
	.byte	0x6
	.byte	0xde
	.long	0x292
	.value	0x1c0
	.uleb128 0x10
	.long	.LASF73
	.byte	0x6
	.byte	0xdf
	.long	0x292
	.value	0x1c4
	.uleb128 0x10
	.long	.LASF74
	.byte	0x6
	.byte	0xe1
	.long	0x4d
	.value	0x1c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2ba
	.uleb128 0xb
	.long	0x292
	.long	0x533
	.uleb128 0xc
	.long	0x3f
	.byte	0x3
	.uleb128 0xc
	.long	0x3f
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.long	0x292
	.long	0x543
	.uleb128 0xc
	.long	0x3f
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2a0
	.uleb128 0xb
	.long	0x4d
	.long	0x55f
	.uleb128 0xc
	.long	0x3f
	.byte	0x3
	.uleb128 0xc
	.long	0x3f
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2c0
	.uleb128 0x11
	.long	.LASF75
	.value	0x9c50
	.byte	0x6
	.value	0x181
	.long	0x5f4
	.uleb128 0x9
	.long	.LASF76
	.byte	0x6
	.value	0x182
	.long	0x4d
	.byte	0
	.uleb128 0x9
	.long	.LASF77
	.byte	0x6
	.value	0x184
	.long	0x4d
	.byte	0x4
	.uleb128 0x12
	.string	"tq"
	.byte	0x6
	.value	0x185
	.long	0x5f4
	.byte	0x8
	.uleb128 0x13
	.string	"t"
	.byte	0x6
	.value	0x186
	.long	0x604
	.value	0x328
	.uleb128 0x14
	.long	.LASF78
	.byte	0x6
	.value	0x188
	.long	0x4d
	.value	0x1908
	.uleb128 0x13
	.string	"mq"
	.byte	0x6
	.value	0x189
	.long	0x5f4
	.value	0x190c
	.uleb128 0x13
	.string	"m"
	.byte	0x6
	.value	0x18a
	.long	0x61a
	.value	0x1c2c
	.uleb128 0x14
	.long	.LASF79
	.byte	0x6
	.value	0x18c
	.long	0x4d
	.value	0x5aac
	.uleb128 0x13
	.string	"iq"
	.byte	0x6
	.value	0x18d
	.long	0x5f4
	.value	0x5ab0
	.uleb128 0x13
	.string	"i"
	.byte	0x6
	.value	0x18e
	.long	0x61a
	.value	0x5dd0
	.byte	0
	.uleb128 0xb
	.long	0x292
	.long	0x604
	.uleb128 0xc
	.long	0x3f
	.byte	0xc7
	.byte	0
	.uleb128 0xb
	.long	0x292
	.long	0x61a
	.uleb128 0xc
	.long	0x3f
	.byte	0xc7
	.uleb128 0xc
	.long	0x3f
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.long	0x292
	.long	0x630
	.uleb128 0xc
	.long	0x3f
	.byte	0xc7
	.uleb128 0xc
	.long	0x3f
	.byte	0x13
	.byte	0
	.uleb128 0x15
	.long	.LASF80
	.byte	0x1
	.byte	0x24
	.long	0x64d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x565
	.uleb128 0x16
	.long	.LASF86
	.byte	0x1
	.byte	0x27
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x67f
	.uleb128 0x17
	.string	"pri"
	.byte	0x1
	.byte	0x27
	.long	0x64d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF82
	.byte	0x1
	.byte	0x35
	.long	0x64d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x6af
	.uleb128 0x19
	.string	"pri"
	.byte	0x1
	.byte	0x37
	.long	0x64d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.long	.LASF81
	.byte	0x1
	.byte	0x51
	.long	0x64d
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.long	.LASF83
	.byte	0x1
	.byte	0x61
	.long	0x64d
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x73d
	.uleb128 0x1a
	.long	.LASF84
	.byte	0x1
	.byte	0x61
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.string	"fp"
	.byte	0x1
	.byte	0x63
	.long	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.string	"pri"
	.byte	0x1
	.byte	0x64
	.long	0x64d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.long	.LASF85
	.byte	0x1
	.byte	0x65
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.string	"q"
	.byte	0x1
	.byte	0x66
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.byte	0x66
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x16
	.long	.LASF87
	.byte	0x1
	.byte	0xd6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x7f4
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.byte	0xd6
	.long	0x96
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.string	"pri"
	.byte	0x1
	.byte	0xd6
	.long	0x64d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"wt"
	.byte	0x1
	.byte	0xd6
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x19
	.string	"fp"
	.byte	0x1
	.byte	0xd8
	.long	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.long	.LASF89
	.byte	0x1
	.byte	0xd9
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.string	"pam"
	.byte	0x1
	.byte	0xda
	.long	0x543
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF90
	.byte	0x1
	.byte	0xdb
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x19
	.string	"xi"
	.byte	0x1
	.byte	0xdc
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.string	"xj"
	.byte	0x1
	.byte	0xdc
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.long	.LASF91
	.byte	0x1
	.byte	0xdd
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	.LASF92
	.byte	0x1
	.byte	0xdd
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1c
	.long	.LASF93
	.byte	0x1
	.value	0x117
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x83e
	.uleb128 0x1d
	.long	.LASF63
	.byte	0x1
	.value	0x117
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF94
	.byte	0x1
	.value	0x117
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.value	0x119
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.long	.LASF95
	.byte	0x1
	.value	0x126
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x8d4
	.uleb128 0x1d
	.long	.LASF96
	.byte	0x1
	.value	0x126
	.long	0x96
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.long	.LASF63
	.byte	0x1
	.value	0x126
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.long	.LASF94
	.byte	0x1
	.value	0x126
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.string	"fp"
	.byte	0x1
	.value	0x128
	.long	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x129
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.value	0x12a
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF97
	.byte	0x1
	.value	0x12b
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x21
	.long	.LASF120
	.byte	0x1
	.value	0x144
	.quad	.L63
	.byte	0
	.uleb128 0x1f
	.long	.LASF98
	.byte	0x1
	.value	0x156
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x95c
	.uleb128 0x22
	.string	"hmm"
	.byte	0x1
	.value	0x156
	.long	0x55f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2440
	.uleb128 0x22
	.string	"pri"
	.byte	0x1
	.value	0x156
	.long	0x64d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2448
	.uleb128 0x1e
	.string	"k"
	.byte	0x1
	.value	0x158
	.long	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2424
	.uleb128 0x1e
	.string	"d"
	.byte	0x1
	.value	0x159
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2420
	.uleb128 0x1e
	.string	"tq"
	.byte	0x1
	.value	0x15a
	.long	0x5f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2416
	.uleb128 0x1e
	.string	"mq"
	.byte	0x1
	.value	0x15b
	.long	0x5f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1616
	.uleb128 0x1e
	.string	"iq"
	.byte	0x1
	.value	0x15c
	.long	0x5f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.byte	0
	.uleb128 0x1f
	.long	.LASF99
	.byte	0x1
	.value	0x1bb
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xa33
	.uleb128 0x22
	.string	"vec"
	.byte	0x1
	.value	0x1bb
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -856
	.uleb128 0x22
	.string	"pri"
	.byte	0x1
	.value	0x1bb
	.long	0x64d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -864
	.uleb128 0x22
	.string	"num"
	.byte	0x1
	.value	0x1bc
	.long	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -868
	.uleb128 0x22
	.string	"eq"
	.byte	0x1
	.value	0x1bc
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -880
	.uleb128 0x22
	.string	"e"
	.byte	0x1
	.value	0x1bc
	.long	0xa33
	.uleb128 0x3
	.byte	0x91
	.sleb128 -888
	.uleb128 0x1d
	.long	.LASF100
	.byte	0x1
	.value	0x1bd
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -896
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.value	0x1bf
	.long	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -836
	.uleb128 0x1e
	.string	"q"
	.byte	0x1
	.value	0x1c0
	.long	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -832
	.uleb128 0x1e
	.string	"mix"
	.byte	0x1
	.value	0x1c1
	.long	0x5f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.uleb128 0x20
	.long	.LASF101
	.byte	0x1
	.value	0x1c2
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -824
	.uleb128 0x20
	.long	.LASF102
	.byte	0x1
	.value	0x1c3
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -820
	.uleb128 0x1e
	.string	"xi"
	.byte	0x1
	.value	0x1c4
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -828
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x533
	.uleb128 0x1f
	.long	.LASF103
	.byte	0x1
	.value	0x208
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xaf1
	.uleb128 0x22
	.string	"t"
	.byte	0x1
	.value	0x208
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -856
	.uleb128 0x1d
	.long	.LASF104
	.byte	0x1
	.value	0x208
	.long	0x64d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -864
	.uleb128 0x22
	.string	"tq"
	.byte	0x1
	.value	0x209
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -872
	.uleb128 0x1e
	.string	"ts"
	.byte	0x1
	.value	0x20b
	.long	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -840
	.uleb128 0x1e
	.string	"q"
	.byte	0x1
	.value	0x20c
	.long	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -836
	.uleb128 0x1e
	.string	"mix"
	.byte	0x1
	.value	0x20d
	.long	0x5f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.uleb128 0x20
	.long	.LASF105
	.byte	0x1
	.value	0x20e
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -828
	.uleb128 0x20
	.long	.LASF106
	.byte	0x1
	.value	0x20e
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -820
	.uleb128 0x20
	.long	.LASF107
	.byte	0x1
	.value	0x20e
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -824
	.uleb128 0x1e
	.string	"xi"
	.byte	0x1
	.value	0x20f
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -832
	.byte	0
	.uleb128 0x23
	.long	.LASF110
	.byte	0x1
	.value	0x243
	.long	0x64d
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xb69
	.uleb128 0x1e
	.string	"pri"
	.byte	0x1
	.value	0x245
	.long	0x64d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"q"
	.byte	0x1
	.value	0x246
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.value	0x246
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.long	.LASF108
	.byte	0x1
	.value	0x248
	.long	0xb69
	.uleb128 0x9
	.byte	0x3
	.quad	defmq.6575
	.uleb128 0x20
	.long	.LASF109
	.byte	0x1
	.value	0x24d
	.long	0xb79
	.uleb128 0x9
	.byte	0x3
	.quad	defm.6576
	.byte	0
	.uleb128 0xb
	.long	0x292
	.long	0xb79
	.uleb128 0xc
	.long	0x3f
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x292
	.long	0xb8f
	.uleb128 0xc
	.long	0x3f
	.byte	0x8
	.uleb128 0xc
	.long	0x3f
	.byte	0x13
	.byte	0
	.uleb128 0x23
	.long	.LASF111
	.byte	0x1
	.value	0x2b5
	.long	0x64d
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xbc1
	.uleb128 0x1e
	.string	"pri"
	.byte	0x1
	.value	0x2b7
	.long	0x64d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	0x292
	.long	0xbcc
	.uleb128 0x24
	.byte	0
	.uleb128 0x25
	.long	.LASF112
	.byte	0x7
	.byte	0x81
	.long	0xbc1
	.uleb128 0xb
	.long	0x54
	.long	0xbe7
	.uleb128 0xc
	.long	0x3f
	.byte	0x18
	.byte	0
	.uleb128 0x25
	.long	.LASF113
	.byte	0x6
	.byte	0x39
	.long	0xbd7
	.uleb128 0x25
	.long	.LASF114
	.byte	0x6
	.byte	0x3a
	.long	0x4d
	.uleb128 0x25
	.long	.LASF115
	.byte	0x6
	.byte	0x3b
	.long	0x4d
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
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x21
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
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
.LASF10:
	.string	"__off_t"
.LASF90:
	.string	"scale"
.LASF14:
	.string	"_IO_read_ptr"
.LASF9:
	.string	"size_t"
.LASF57:
	.string	"checksum"
.LASF32:
	.string	"_shortbuf"
.LASF101:
	.string	"totc"
.LASF66:
	.string	"isc_mem"
.LASF97:
	.string	"type"
.LASF68:
	.string	"esc_mem"
.LASF55:
	.string	"nseq"
.LASF50:
	.string	"long long unsigned int"
.LASF95:
	.string	"P7ReadNullModel"
.LASF98:
	.string	"P7PriorifyHMM"
.LASF64:
	.string	"tsc_mem"
.LASF15:
	.string	"_IO_read_end"
.LASF73:
	.string	"lambda"
.LASF49:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF27:
	.string	"_fileno"
.LASF88:
	.string	"pamfile"
.LASF93:
	.string	"P7DefaultNullModel"
.LASF8:
	.string	"long int"
.LASF78:
	.string	"mnum"
.LASF70:
	.string	"dnai"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF80:
	.string	"P7AllocPrior"
.LASF48:
	.string	"double"
.LASF81:
	.string	"P7DefaultPrior"
.LASF94:
	.string	"ret_p1"
.LASF34:
	.string	"_offset"
.LASF103:
	.string	"P7PriorifyTransitionVector"
.LASF35:
	.string	"__pad1"
.LASF108:
	.string	"defmq"
.LASF43:
	.string	"_IO_marker"
.LASF5:
	.string	"unsigned int"
.LASF62:
	.string	"begin"
.LASF0:
	.string	"long unsigned int"
.LASF85:
	.string	"sptr"
.LASF104:
	.string	"prior"
.LASF18:
	.string	"_IO_write_ptr"
.LASF52:
	.string	"name"
.LASF111:
	.string	"default_nucleic_prior"
.LASF45:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF120:
	.string	"FAILURE"
.LASF100:
	.string	"ret_mix"
.LASF106:
	.string	"totd"
.LASF99:
	.string	"P7PriorifyEmissionVector"
.LASF22:
	.string	"_IO_save_base"
.LASF105:
	.string	"totm"
.LASF59:
	.string	"mpri"
.LASF33:
	.string	"_lock"
.LASF40:
	.string	"_mode"
.LASF114:
	.string	"Alphabet_type"
.LASF56:
	.string	"ctime"
.LASF87:
	.string	"PAMPrior"
.LASF117:
	.string	"prior.c"
.LASF65:
	.string	"msc_mem"
.LASF1:
	.string	"sizetype"
.LASF75:
	.string	"p7prior_s"
.LASF67:
	.string	"bsc_mem"
.LASF76:
	.string	"strategy"
.LASF61:
	.string	"tbd1"
.LASF53:
	.string	"desc"
.LASF84:
	.string	"prifile"
.LASF69:
	.string	"dnam"
.LASF119:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF54:
	.string	"comlog"
.LASF47:
	.string	"float"
.LASF46:
	.string	"_pos"
.LASF29:
	.string	"_old_offset"
.LASF25:
	.string	"_markers"
.LASF82:
	.string	"P7LaplacePrior"
.LASF63:
	.string	"null"
.LASF79:
	.string	"inum"
.LASF110:
	.string	"default_amino_prior"
.LASF96:
	.string	"rndfile"
.LASF71:
	.string	"dna2"
.LASF51:
	.string	"plan7_s"
.LASF7:
	.string	"short int"
.LASF26:
	.string	"_chain"
.LASF28:
	.string	"_flags2"
.LASF12:
	.string	"FILE"
.LASF102:
	.string	"tota"
.LASF91:
	.string	"idx1"
.LASF92:
	.string	"idx2"
.LASF77:
	.string	"tnum"
.LASF107:
	.string	"toti"
.LASF3:
	.string	"char"
.LASF115:
	.string	"Alphabet_size"
.LASF44:
	.string	"_next"
.LASF11:
	.string	"__off64_t"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF4:
	.string	"unsigned char"
.LASF109:
	.string	"defm"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF19:
	.string	"_IO_write_end"
.LASF41:
	.string	"_unused2"
.LASF83:
	.string	"P7ReadPrior"
.LASF60:
	.string	"ipri"
.LASF72:
	.string	"dna4"
.LASF116:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF112:
	.string	"aafq"
.LASF23:
	.string	"_IO_backup_base"
.LASF74:
	.string	"flags"
.LASF31:
	.string	"_vtable_offset"
.LASF86:
	.string	"P7FreePrior"
.LASF113:
	.string	"Alphabet"
.LASF118:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF58:
	.string	"tpri"
.LASF17:
	.string	"_IO_write_base"
.LASF20:
	.string	"_IO_buf_base"
.LASF89:
	.string	"blastpamfile"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
