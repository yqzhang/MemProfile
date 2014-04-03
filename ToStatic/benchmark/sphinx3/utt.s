	.file	"utt.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64 utt.c
# -mtune=generic -march=x86-64 -g -fverbose-asm -fno-strict-aliasing
# -fstack-protector -Wformat -Wformat-security
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
	.globl	tot_considered
	.bss
	.align 8
	.type	tot_considered, @object
	.size	tot_considered, 8
tot_considered:
	.zero	8
	.comm	confp,8,8
	.globl	confp_open
	.align 4
	.type	confp_open, @object
	.size	confp_open, 4
confp_open:
	.zero	4
	.text
	.type	NO_UFLOW_ADD, @function
NO_UFLOW_ADD:
.LFB2:
	.file 1 "utt.c"
	.loc 1 86 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# a, a
	movl	%esi, -24(%rbp)	# b, b
	.loc 1 89 0
	movl	-24(%rbp), %eax	# b, tmp66
	movl	-20(%rbp), %edx	# a, tmp67
	addl	%edx, %eax	# tmp67, tmp65
	movl	%eax, -4(%rbp)	# tmp65, c
	.loc 1 90 0
	cmpl	$0, -4(%rbp)	#, c
	jle	.L2	#,
	.loc 1 90 0 is_stmt 0 discriminator 2
	cmpl	$0, -20(%rbp)	#, a
	jns	.L2	#,
	.loc 1 90 0 discriminator 1
	cmpl	$0, -24(%rbp)	#, b
	js	.L3	#,
.L2:
	movl	-4(%rbp), %eax	# c, iftmp.0
	jmp	.L4	#
.L3:
	movl	$-2147483648, %eax	#, iftmp.0
.L4:
	.loc 1 90 0 discriminator 3
	movl	%eax, -4(%rbp)	# iftmp.0, c
	.loc 1 94 0 is_stmt 1 discriminator 3
	movl	-4(%rbp), %eax	# c, D.7324
	.loc 1 95 0 discriminator 3
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	NO_UFLOW_ADD, .-NO_UFLOW_ADD
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"%s%s S 0 T %d A %d L %d"
.LC2:
	.string	" %d %d %d %s"
.LC3:
	.string	" %d\n"
	.text
	.globl	matchseg_write
	.type	matchseg_write, @function
matchseg_write:
.LFB3:
	.loc 1 98 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# fp, fp
	movq	%rsi, -48(%rbp)	# kb, kb
	movq	%rdx, -56(%rbp)	# hyp, hyp
	movq	%rcx, -64(%rbp)	# hdr, hdr
	.loc 1 104 0
	movl	$0, -32(%rbp)	#, ascr
	.loc 1 105 0
	movl	$0, -28(%rbp)	#, lscr
	.loc 1 107 0
	movq	-56(%rbp), %rax	# hyp, tmp76
	movq	%rax, -24(%rbp)	# tmp76, gn
	jmp	.L7	#
.L8:
	.loc 1 108 0 discriminator 2
	movq	-24(%rbp), %rax	# gn, tmp77
	movq	(%rax), %rax	# gn_1->data.ptr, tmp78
	movq	%rax, -16(%rbp)	# tmp78, h
	.loc 1 109 0 discriminator 2
	movq	-16(%rbp), %rax	# h, tmp79
	movl	16(%rax), %eax	# h_10->ascr, D.7325
	addl	%eax, -32(%rbp)	# D.7325, ascr
	.loc 1 110 0 discriminator 2
	movq	-16(%rbp), %rax	# h, tmp80
	movl	20(%rax), %eax	# h_10->lscr, D.7325
	addl	%eax, -28(%rbp)	# D.7325, lscr
	.loc 1 107 0 discriminator 2
	movq	-24(%rbp), %rax	# gn, tmp81
	movq	8(%rax), %rax	# gn_1->next, tmp82
	movq	%rax, -24(%rbp)	# tmp82, gn
.L7:
	.loc 1 107 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, gn
	jne	.L8	#,
	.loc 1 113 0 is_stmt 1
	movq	-48(%rbp), %rax	# kb, tmp83
	movq	(%rax), %rax	# kb_16(D)->kbcore, D.7326
	movq	16(%rax), %rax	# _17->dict, tmp84
	movq	%rax, -8(%rbp)	# tmp84, dict
	.loc 1 115 0
	movl	-28(%rbp), %eax	# lscr, tmp85
	movl	-32(%rbp), %edx	# ascr, tmp86
	leal	(%rdx,%rax), %r8d	#, D.7325
	movq	-48(%rbp), %rax	# kb, tmp87
	movq	208(%rax), %rdx	# kb_16(D)->uttid, D.7327
	cmpq	$0, -64(%rbp)	#, hdr
	je	.L9	#,
	.loc 1 115 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# hdr, iftmp.1
	jmp	.L10	#
.L9:
	.loc 1 115 0 discriminator 2
	movl	$.LC0, %eax	#, iftmp.1
.L10:
	.loc 1 115 0 discriminator 3
	movl	-32(%rbp), %esi	# ascr, tmp88
	movq	-40(%rbp), %rdi	# fp, tmp89
	movl	-28(%rbp), %ecx	# lscr, tmp90
	movl	%ecx, (%rsp)	# tmp90,
	movl	%esi, %r9d	# tmp88,
	movq	%rdx, %rcx	# D.7327,
	movq	%rax, %rdx	# iftmp.1,
	movl	$.LC1, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 118 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# hyp, tmp91
	movq	%rax, -24(%rbp)	# tmp91, gn
	jmp	.L11	#
.L13:
	.loc 1 119 0 discriminator 1
	movq	-24(%rbp), %rax	# gn, tmp92
	movq	(%rax), %rax	# gn_2->data.ptr, tmp93
	movq	%rax, -16(%rbp)	# tmp93, h
	.loc 1 121 0 discriminator 1
	movq	-8(%rbp), %rax	# dict, tmp94
	movq	32(%rax), %rcx	# dict_18->word, D.7329
	movq	-16(%rbp), %rax	# h, tmp95
	movl	(%rax), %eax	# h_27->id, D.7325
	movslq	%eax, %rdx	# D.7325, D.7330
	movq	%rdx, %rax	# D.7330, tmp96
	salq	$2, %rax	#, tmp96
	addq	%rdx, %rax	# D.7330, tmp96
	salq	$3, %rax	#, tmp97
	addq	%rcx, %rax	# D.7329, D.7329
	.loc 1 120 0 discriminator 1
	movq	(%rax), %rdi	# _32->word, D.7327
	movq	-16(%rbp), %rax	# h, tmp98
	movl	20(%rax), %esi	# h_27->lscr, D.7325
	movq	-16(%rbp), %rax	# h, tmp99
	movl	16(%rax), %ecx	# h_27->ascr, D.7325
	movq	-16(%rbp), %rax	# h, tmp100
	movl	8(%rax), %edx	# h_27->sf, D.7325
	movq	-40(%rbp), %rax	# fp, tmp101
	movq	%rdi, %r9	# D.7327,
	movl	%esi, %r8d	# D.7325,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp101,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 118 0 discriminator 1
	movq	-24(%rbp), %rax	# gn, tmp102
	movq	8(%rax), %rax	# gn_2->next, tmp103
	movq	%rax, -24(%rbp)	# tmp103, gn
.L11:
	cmpq	$0, -24(%rbp)	#, gn
	je	.L12	#,
	.loc 1 118 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# gn, tmp104
	movq	8(%rax), %rax	# gn_2->next, D.7328
	testq	%rax, %rax	# D.7328
	jne	.L13	#,
.L12:
	.loc 1 123 0 is_stmt 1
	movq	-48(%rbp), %rax	# kb, tmp105
	movl	64(%rax), %edx	# kb_16(D)->nfr, D.7325
	movq	-40(%rbp), %rax	# fp, tmp106
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp106,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 124 0
	movq	-40(%rbp), %rax	# fp, tmp107
	movq	%rax, %rdi	# tmp107,
	call	fflush	#
	.loc 1 125 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	matchseg_write, .-matchseg_write
	.section	.rodata
.LC4:
	.string	"%s "
.LC5:
	.string	"(%s)\n"
	.text
	.globl	match_write
	.type	match_write, @function
match_write:
.LFB4:
	.loc 1 128 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# fp, fp
	movq	%rsi, -48(%rbp)	# kb, kb
	movq	%rdx, -56(%rbp)	# hyp, hyp
	movq	%rcx, -64(%rbp)	# hdr, hdr
	.loc 1 132 0
	movl	$0, -28(%rbp)	#, counter
	.loc 1 134 0
	movq	-48(%rbp), %rax	# kb, tmp77
	movq	(%rax), %rax	# kb_4(D)->kbcore, D.7335
	movq	16(%rax), %rax	# _5->dict, tmp78
	movq	%rax, -16(%rbp)	# tmp78, dict
	.loc 1 136 0
	movq	-56(%rbp), %rax	# hyp, tmp79
	movq	%rax, -24(%rbp)	# tmp79, gn
	jmp	.L15	#
.L18:
	.loc 1 137 0
	movq	-24(%rbp), %rax	# gn, tmp80
	movq	(%rax), %rax	# gn_1->data.ptr, tmp81
	movq	%rax, -8(%rbp)	# tmp81, h
	.loc 1 138 0
	movq	-8(%rbp), %rax	# h, tmp82
	movl	(%rax), %edx	# h_10->id, D.7337
	movq	-16(%rbp), %rax	# dict, tmp83
	movl	%edx, %esi	# D.7337,
	movq	%rax, %rdi	# tmp83,
	call	dict_filler_word	#
	testl	%eax, %eax	# D.7337
	jne	.L16	#,
	.loc 1 138 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# h, tmp84
	movl	(%rax), %edx	# h_10->id, D.7337
	movq	-16(%rbp), %rax	# dict, tmp85
	movl	76(%rax), %eax	# dict_6->finishwid, D.7337
	cmpl	%eax, %edx	# D.7337, D.7337
	je	.L16	#,
	.loc 1 139 0 is_stmt 1
	movq	-16(%rbp), %rax	# dict, tmp86
	movq	32(%rax), %rcx	# dict_6->word, D.7338
	movq	-16(%rbp), %rax	# dict, tmp87
	movq	32(%rax), %rsi	# dict_6->word, D.7338
	movq	-8(%rbp), %rax	# h, tmp88
	movl	(%rax), %eax	# h_10->id, D.7337
	movslq	%eax, %rdx	# D.7337, D.7339
	movq	%rdx, %rax	# D.7339, tmp89
	salq	$2, %rax	#, tmp89
	addq	%rdx, %rax	# D.7339, tmp89
	salq	$3, %rax	#, tmp90
	addq	%rsi, %rax	# D.7338, D.7338
	movl	24(%rax), %eax	# _20->basewid, D.7337
	movslq	%eax, %rdx	# D.7337, D.7339
	movq	%rdx, %rax	# D.7339, tmp91
	salq	$2, %rax	#, tmp91
	addq	%rdx, %rax	# D.7339, tmp91
	salq	$3, %rax	#, tmp92
	addq	%rcx, %rax	# D.7338, D.7338
	movq	(%rax), %rdx	# _24->word, D.7340
	movq	-40(%rbp), %rax	# fp, tmp93
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp93,
	movl	$0, %eax	#,
	call	fprintf	#
.L16:
	.loc 1 140 0
	addl	$1, -28(%rbp)	#, counter
	.loc 1 136 0
	movq	-24(%rbp), %rax	# gn, tmp94
	movq	8(%rax), %rax	# gn_1->next, tmp95
	movq	%rax, -24(%rbp)	# tmp95, gn
.L15:
	.loc 1 136 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, gn
	je	.L17	#,
	.loc 1 136 0 discriminator 2
	movq	-24(%rbp), %rax	# gn, tmp96
	movq	8(%rax), %rax	# gn_1->next, D.7336
	testq	%rax, %rax	# D.7336
	jne	.L18	#,
.L17:
	.loc 1 142 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, counter
	jne	.L19	#,
	.loc 1 142 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# fp, tmp97
	movq	%rax, %rsi	# tmp97,
	movl	$32, %edi	#,
	call	fputc	#
.L19:
	.loc 1 143 0 is_stmt 1
	movq	-48(%rbp), %rax	# kb, tmp98
	movq	208(%rax), %rdx	# kb_4(D)->uttid, D.7340
	movq	-40(%rbp), %rax	# fp, tmp99
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp99,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 144 0
	movq	-40(%rbp), %rax	# fp, tmp100
	movq	%rax, %rdi	# tmp100,
	call	fflush	#
	.loc 1 145 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	match_write, .-match_write
	.globl	utt_begin
	.type	utt_begin, @function
utt_begin:
.LFB5:
	.loc 1 152 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# kb, kb
	.loc 1 156 0
	movq	-24(%rbp), %rax	# kb, tmp75
	movq	(%rax), %rax	# kb_1(D)->kbcore, tmp76
	movq	%rax, -8(%rbp)	# tmp76, kbc
	.loc 1 159 0
	movq	-24(%rbp), %rax	# kb, tmp77
	movq	48(%rax), %rax	# kb_1(D)->vithist, D.7343
	movq	-8(%rbp), %rdx	# kbc, tmp78
	movq	%rdx, %rsi	# tmp78,
	movq	%rax, %rdi	# D.7343,
	call	vithist_utt_begin	#
	movl	%eax, -16(%rbp)	# tmp79, pred
	.loc 1 163 0
	movq	-24(%rbp), %rax	# kb, tmp80
	movq	16(%rax), %rax	# kb_1(D)->ugtree, D.7344
	movq	(%rax), %rax	# *_5, D.7345
	movl	52(%rax), %eax	# _6->n_next_active, tmp81
	movl	%eax, -12(%rbp)	# tmp81, n
	.loc 1 166 0
	movq	-24(%rbp), %rax	# kb, tmp82
	movq	160(%rax), %rax	# kb_1(D)->beam, D.7346
	.loc 1 165 0
	movl	4(%rax), %ecx	# _8->hmm, D.7347
	movq	-8(%rbp), %rax	# kbc, tmp83
	movq	8(%rax), %rax	# kbc_2->mdef, D.7348
	movzbl	88(%rax), %eax	# _10->sil, D.7349
	movsbl	%al, %esi	# D.7349, D.7347
	movq	-24(%rbp), %rax	# kb, tmp84
	movq	16(%rax), %rax	# kb_1(D)->ugtree, D.7344
	movq	(%rax), %rax	# *_13, D.7345
	movl	-16(%rbp), %edx	# pred, tmp85
	movl	%ecx, %r9d	# D.7347,
	movl	%edx, %r8d	# tmp85,
	movl	$0, %ecx	#,
	movl	$-1, %edx	#,
	movq	%rax, %rdi	# D.7345,
	call	lextree_enter	#
	.loc 1 169 0
	movq	-24(%rbp), %rax	# kb, tmp86
	movq	32(%rax), %rax	# kb_1(D)->fillertree, D.7344
	movq	(%rax), %rax	# *_15, D.7345
	movl	52(%rax), %eax	# _16->n_next_active, tmp87
	movl	%eax, -12(%rbp)	# tmp87, n
	.loc 1 171 0
	movq	-24(%rbp), %rax	# kb, tmp88
	movq	160(%rax), %rax	# kb_1(D)->beam, D.7346
	movl	4(%rax), %ecx	# _18->hmm, D.7347
	movq	-24(%rbp), %rax	# kb, tmp89
	movq	32(%rax), %rax	# kb_1(D)->fillertree, D.7344
	movq	(%rax), %rax	# *_20, D.7345
	movl	-16(%rbp), %edx	# pred, tmp90
	movl	%ecx, %r9d	# D.7347,
	movl	%edx, %r8d	# tmp90,
	movl	$0, %ecx	#,
	movl	$-1, %edx	#,
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.7345,
	call	lextree_enter	#
	.loc 1 173 0
	movq	-24(%rbp), %rax	# kb, tmp91
	movl	$1, 40(%rax)	#, kb_1(D)->n_lextrans
	.loc 1 175 0
	movq	-24(%rbp), %rax	# kb, tmp92
	movq	%rax, %rdi	# tmp92,
	call	kb_lextree_active_swap	#
	.loc 1 176 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	utt_begin, .-utt_begin
	.section	.rodata
.LC6:
	.string	"-bptbldir"
.LC7:
	.string	"%s/%s.bpt"
.LC8:
	.string	"w"
.LC9:
	.string	"ERROR"
.LC10:
	.string	"utt.c"
	.align 8
.LC11:
	.string	"fopen(%s,w) failed; using stdout\n"
.LC12:
	.string	"\nBacktrace(%s)\n"
.LC13:
	.string	"AScr"
.LC14:
	.string	"EFrm"
.LC15:
	.string	"SFrm"
.LC16:
	.string	"LatID"
.LC17:
	.string	"%6s %5s %5s %11s %8s %4s\n"
.LC18:
	.string	"Type"
.LC19:
	.string	"LScr"
.LC20:
	.string	"%6d %5d %5d %11d %8d %4d %s\n"
	.align 8
.LC21:
	.string	"       %5d %5d %11d %8d (Total)\n"
.LC22:
	.string	"\nFWDVIT: "
.LC23:
	.string	"'%s' (%s)\n\n"
.LC24:
	.string	"FWDXCT: "
.LC25:
	.string	"considered.out"
.LC26:
	.string	"FATAL_ERROR"
.LC27:
	.string	"fopen considered.out failed\n"
	.align 8
.LC28:
	.string	"%22d considered for utterance %s\n"
.LC29:
	.string	"-outlatdir"
.LC30:
	.string	"-latext"
.LC31:
	.string	"%s/%s.%s"
.LC32:
	.string	"INFO"
.LC33:
	.string	"Writing lattice file: %s\n"
.LC34:
	.string	"fopen_comp (%s,w) failed\n"
.LC35:
	.string	"# getcwd: %s\n"
.LC36:
	.string	"-logbase"
.LC37:
	.string	"# -logbase %e\n"
.LC38:
	.string	"-dict"
.LC39:
	.string	"# -dict %s\n"
.LC40:
	.string	"-fdict"
.LC41:
	.string	"# -fdict %s\n"
.LC42:
	.string	"-lm"
.LC43:
	.string	"# -lm %s\n"
.LC44:
	.string	"-mdef"
.LC45:
	.string	"# -mdef %s\n"
.LC46:
	.string	"-mean"
.LC47:
	.string	"# -mean %s\n"
.LC48:
	.string	"-var"
.LC49:
	.string	"# -var %s\n"
.LC50:
	.string	"-mixw"
.LC51:
	.string	"# -mixw %s\n"
.LC52:
	.string	"-tmat"
.LC53:
	.string	"# -tmat %s\n"
.LC54:
	.string	"#\n"
.LC55:
	.string	"Frames %d\n"
.LC56:
	.string	"-outlatoldfmt"
.LC57:
	.string	"%s: No recognition\n\n"
	.align 8
.LC58:
	.string	"%4d frm;  %4d sen, %5d gau/fr, Sen %4.2f CPU %4.2f Clk [Ovrhd %4.2f CPU %4.2f Clk];  %5d hmm, %3d wd/fr, %4.2f CPU %4.2f Clk (%s)\n"
.LC60:
	.string	"HMMHist[0..%d](%s):"
.LC61:
	.string	" %d(%d)"
	.text
	.globl	utt_end
	.type	utt_end, @function
utt_end:
.LFB6:
	.loc 1 179 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$16544, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -16520(%rbp)	# kb, kb
	.loc 1 179 0
	movq	%fs:40, %rax	#, tmp472
	movq	%rax, -24(%rbp)	# tmp472, D.7370
	xorl	%eax, %eax	# tmp472
	.loc 1 189 0
	movq	stdout(%rip), %rax	# stdout, tmp266
	movq	%rax, -16456(%rbp)	# tmp266, fp
	.loc 1 190 0
	movq	-16520(%rbp), %rax	# kb, tmp267
	movq	(%rax), %rax	# kb_14(D)->kbcore, D.7350
	movq	16(%rax), %rax	# _15->dict, tmp268
	movq	%rax, -16448(%rbp)	# tmp268, dict
	.loc 1 191 0
	movq	-16520(%rbp), %rax	# kb, tmp269
	movq	%rax, %rdi	# tmp269,
	call	kb_freehyps	#
	.loc 1 193 0
	movq	-16520(%rbp), %rax	# kb, tmp270
	movq	(%rax), %rdx	# kb_14(D)->kbcore, D.7350
	movq	-16520(%rbp), %rax	# kb, tmp271
	movq	48(%rax), %rax	# kb_14(D)->vithist, D.7351
	movq	%rdx, %rsi	# D.7350,
	movq	%rax, %rdi	# D.7351,
	call	vithist_utt_end	#
	movl	%eax, -16484(%rbp)	# tmp272, id
	cmpl	$0, -16484(%rbp)	#, id
	js	.L22	#,
	.loc 1 194 0
	movl	$.LC6, %edi	#,
	call	cmd_ln_access	#
	testq	%rax, %rax	# D.7352
	je	.L23	#,
.LBB2:
	.loc 1 197 0
	movq	-16520(%rbp), %rax	# kb, tmp273
	movq	208(%rax), %rbx	# kb_14(D)->uttid, D.7353
	movl	$.LC6, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, %rdx	#, D.7352
	leaq	-16416(%rbp), %rax	#, tmp274
	movq	%rbx, %rcx	# D.7353,
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp274,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 198 0
	leaq	-16416(%rbp), %rax	#, tmp275
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp275,
	call	fopen	#
	movq	%rax, -16472(%rbp)	# tmp276, latfp
	cmpq	$0, -16472(%rbp)	#, latfp
	jne	.L24	#,
	.loc 1 199 0
	movl	$.LC9, %edx	#,
	movl	$199, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	leaq	-16416(%rbp), %rax	#, tmp277
	movq	%rax, %rsi	# tmp277,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 200 0
	movq	stdout(%rip), %rax	# stdout, tmp278
	movq	%rax, -16472(%rbp)	# tmp278, latfp
.L24:
	.loc 1 203 0
	movq	-16520(%rbp), %rax	# kb, tmp279
	movq	(%rax), %rdx	# kb_14(D)->kbcore, D.7350
	movq	-16520(%rbp), %rax	# kb, tmp280
	movq	48(%rax), %rax	# kb_14(D)->vithist, D.7351
	movq	-16472(%rbp), %rcx	# latfp, tmp281
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.7351,
	call	vithist_dump	#
	.loc 1 204 0
	movq	stdout(%rip), %rax	# stdout, stdout.2
	cmpq	%rax, -16472(%rbp)	# stdout.2, latfp
	je	.L23	#,
	.loc 1 205 0
	movq	-16472(%rbp), %rax	# latfp, tmp282
	movq	%rax, %rdi	# tmp282,
	call	fclose	#
.L23:
.LBE2:
	.loc 1 208 0
	movq	-16520(%rbp), %rax	# kb, tmp283
	movq	48(%rax), %rax	# kb_14(D)->vithist, D.7351
	movl	-16484(%rbp), %edx	# id, tmp284
	movl	%edx, %esi	# tmp284,
	movq	%rax, %rdi	# D.7351,
	call	vithist_backtrace	#
	movq	%rax, -16440(%rbp)	# tmp285, hyp
	.loc 1 211 0
	movq	-16520(%rbp), %rax	# kb, tmp286
	movq	208(%rax), %rdx	# kb_14(D)->uttid, D.7353
	movq	-16456(%rbp), %rax	# fp, tmp287
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp287,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 212 0
	movq	-16456(%rbp), %rax	# fp, tmp288
	movq	$.LC18, 8(%rsp)	#,
	movq	$.LC19, (%rsp)	#,
	movl	$.LC13, %r9d	#,
	movl	$.LC14, %r8d	#,
	movl	$.LC15, %ecx	#,
	movl	$.LC16, %edx	#,
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp288,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 215 0
	movl	$0, -16504(%rbp)	#, ascr
	.loc 1 216 0
	movl	$0, -16500(%rbp)	#, lscr
	.loc 1 218 0
	movq	-16440(%rbp), %rax	# hyp, tmp289
	movq	%rax, -16480(%rbp)	# tmp289, gn
	jmp	.L26	#
.L28:
	.loc 1 219 0
	movq	-16480(%rbp), %rax	# gn, tmp290
	movq	(%rax), %rax	# gn_3->data.ptr, tmp291
	movq	%rax, -16432(%rbp)	# tmp291, h
	.loc 1 222 0
	movq	-16448(%rbp), %rax	# dict, tmp292
	movq	32(%rax), %rcx	# dict_16->word, D.7354
	movq	-16432(%rbp), %rax	# h, tmp293
	movl	(%rax), %eax	# h_34->id, D.7355
	movslq	%eax, %rdx	# D.7355, D.7356
	movq	%rdx, %rax	# D.7356, tmp294
	salq	$2, %rax	#, tmp294
	addq	%rdx, %rax	# D.7356, tmp294
	salq	$3, %rax	#, tmp295
	addq	%rcx, %rax	# D.7354, D.7354
	.loc 1 220 0
	movq	(%rax), %r8	# _39->word, D.7353
	movq	-16432(%rbp), %rax	# h, tmp296
	movl	24(%rax), %edi	# h_34->type, D.7355
	movq	-16432(%rbp), %rax	# h, tmp297
	movl	20(%rax), %esi	# h_34->lscr, D.7355
	movq	-16432(%rbp), %rax	# h, tmp298
	movl	16(%rax), %r9d	# h_34->ascr, D.7355
	movq	-16432(%rbp), %rax	# h, tmp299
	movl	12(%rax), %r10d	# h_34->ef, D.7355
	movq	-16432(%rbp), %rax	# h, tmp300
	movl	8(%rax), %ecx	# h_34->sf, D.7355
	movq	-16432(%rbp), %rax	# h, tmp301
	movl	4(%rax), %edx	# h_34->vhid, D.7355
	movq	-16456(%rbp), %rax	# fp, tmp302
	movq	%r8, 16(%rsp)	# D.7353,
	movl	%edi, 8(%rsp)	# D.7355,
	movl	%esi, (%rsp)	# D.7355,
	movl	%r10d, %r8d	# D.7355,
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp302,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 224 0
	movq	-16432(%rbp), %rax	# h, tmp303
	movl	16(%rax), %eax	# h_34->ascr, D.7355
	addl	%eax, -16504(%rbp)	# D.7355, ascr
	.loc 1 225 0
	movq	-16432(%rbp), %rax	# h, tmp304
	movl	20(%rax), %eax	# h_34->lscr, D.7355
	addl	%eax, -16500(%rbp)	# D.7355, lscr
	.loc 1 226 0
	movq	-16520(%rbp), %rax	# kb, tmp305
	movl	480(%rax), %eax	# kb_14(D)->hyp_seglen, D.7355
	leal	1(%rax), %edx	#, D.7355
	movq	-16520(%rbp), %rax	# kb, tmp306
	movl	%edx, 480(%rax)	# D.7355, kb_14(D)->hyp_seglen
	.loc 1 227 0
	movq	-16432(%rbp), %rax	# h, tmp307
	movl	(%rax), %edx	# h_34->id, D.7355
	movq	-16448(%rbp), %rax	# dict, tmp308
	movl	%edx, %esi	# D.7355,
	movq	%rax, %rdi	# tmp308,
	call	dict_filler_word	#
	testl	%eax, %eax	# D.7355
	jne	.L27	#,
	.loc 1 227 0 is_stmt 0 discriminator 1
	movq	-16432(%rbp), %rax	# h, tmp309
	movl	(%rax), %edx	# h_34->id, D.7355
	movq	-16448(%rbp), %rax	# dict, tmp310
	movl	76(%rax), %eax	# dict_16->finishwid, D.7355
	cmpl	%eax, %edx	# D.7355, D.7355
	je	.L27	#,
	.loc 1 228 0 is_stmt 1
	movq	-16520(%rbp), %rax	# kb, tmp311
	movl	496(%rax), %eax	# kb_14(D)->hyp_strlen, D.7355
	movl	%eax, %ebx	# D.7355, D.7357
	.loc 1 229 0
	movq	-16448(%rbp), %rax	# dict, tmp312
	movq	32(%rax), %rcx	# dict_16->word, D.7354
	movq	-16448(%rbp), %rax	# dict, tmp313
	movq	32(%rax), %rsi	# dict_16->word, D.7354
	movq	-16432(%rbp), %rax	# h, tmp314
	movl	(%rax), %eax	# h_34->id, D.7355
	movslq	%eax, %rdx	# D.7355, D.7356
	movq	%rdx, %rax	# D.7356, tmp315
	salq	$2, %rax	#, tmp315
	addq	%rdx, %rax	# D.7356, tmp315
	salq	$3, %rax	#, tmp316
	addq	%rsi, %rax	# D.7354, D.7354
	movl	24(%rax), %eax	# _64->basewid, D.7355
	movslq	%eax, %rdx	# D.7355, D.7356
	movq	%rdx, %rax	# D.7356, tmp317
	salq	$2, %rax	#, tmp317
	addq	%rdx, %rax	# D.7356, tmp317
	salq	$3, %rax	#, tmp318
	addq	%rcx, %rax	# D.7354, D.7354
	movq	(%rax), %rax	# _68->word, D.7353
	movq	%rax, %rdi	# D.7353,
	call	strlen	#
	.loc 1 228 0
	addl	%ebx, %eax	# D.7357, D.7357
	addl	$1, %eax	#, D.7357
	movl	%eax, %edx	# D.7357, D.7355
	movq	-16520(%rbp), %rax	# kb, tmp319
	movl	%edx, 496(%rax)	# D.7355, kb_14(D)->hyp_strlen
.L27:
	.loc 1 218 0
	movq	-16480(%rbp), %rax	# gn, tmp320
	movq	8(%rax), %rax	# gn_3->next, tmp321
	movq	%rax, -16480(%rbp)	# tmp321, gn
.L26:
	.loc 1 218 0 is_stmt 0 discriminator 1
	cmpq	$0, -16480(%rbp)	#, gn
	jne	.L28	#,
	.loc 1 232 0 is_stmt 1
	movq	-16520(%rbp), %rax	# kb, tmp322
	movl	64(%rax), %edx	# kb_14(D)->nfr, D.7355
	movl	-16500(%rbp), %esi	# lscr, tmp323
	movl	-16504(%rbp), %ecx	# ascr, tmp324
	movq	-16456(%rbp), %rax	# fp, tmp325
	movl	%esi, %r9d	# tmp323,
	movl	%ecx, %r8d	# tmp324,
	movl	%edx, %ecx	# D.7355,
	movl	$0, %edx	#,
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# tmp325,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 234 0
	movq	-16520(%rbp), %rax	# kb, tmp326
	movl	480(%rax), %eax	# kb_14(D)->hyp_seglen, D.7355
	cltq
	movl	$234, %ecx	#,
	movl	$.LC10, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7356,
	call	__ckd_calloc__	#
	movq	-16520(%rbp), %rdx	# kb, tmp327
	movq	%rax, 472(%rdx)	# D.7358, kb_14(D)->hyp_segs
	.loc 1 235 0
	movq	-16520(%rbp), %rax	# kb, tmp328
	movl	496(%rax), %eax	# kb_14(D)->hyp_strlen, D.7355
	addl	$1, %eax	#, D.7355
	cltq
	movl	$235, %ecx	#,
	movl	$.LC10, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.7356,
	call	__ckd_calloc__	#
	movq	-16520(%rbp), %rdx	# kb, tmp329
	movq	%rax, 488(%rdx)	# D.7358, kb_14(D)->hyp_str
	.loc 1 236 0
	movq	-16520(%rbp), %rax	# kb, tmp330
	movq	488(%rax), %rax	# kb_14(D)->hyp_str, tmp331
	movq	%rax, -16464(%rbp)	# tmp331, hyp_strptr
	.loc 1 239 0
	movq	-16456(%rbp), %rax	# fp, tmp332
	movq	%rax, %rcx	# tmp332,
	movl	$9, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC22, %edi	#,
	call	fwrite	#
	.loc 1 240 0
	movl	$0, -16496(%rbp)	#, i
	.loc 1 241 0
	movq	-16440(%rbp), %rax	# hyp, tmp333
	movq	%rax, -16480(%rbp)	# tmp333, gn
	jmp	.L29	#
.L31:
	.loc 1 242 0
	movq	-16480(%rbp), %rax	# gn, tmp334
	movq	(%rax), %rax	# gn_4->data.ptr, tmp335
	movq	%rax, -16432(%rbp)	# tmp335, h
	.loc 1 243 0
	movq	-16520(%rbp), %rax	# kb, tmp336
	movq	472(%rax), %rcx	# kb_14(D)->hyp_segs, D.7359
	movl	-16496(%rbp), %eax	# i, i.3
	leal	1(%rax), %edx	#, tmp337
	movl	%edx, -16496(%rbp)	# tmp337, i
	cltq
	salq	$3, %rax	#, D.7356
	leaq	(%rcx,%rax), %rdx	#, D.7359
	movq	-16432(%rbp), %rax	# h, tmp338
	movq	%rax, (%rdx)	# tmp338, *_93
	.loc 1 244 0
	movq	-16432(%rbp), %rax	# h, tmp339
	movl	(%rax), %edx	# h_87->id, D.7355
	movq	-16448(%rbp), %rax	# dict, tmp340
	movl	%edx, %esi	# D.7355,
	movq	%rax, %rdi	# tmp340,
	call	dict_filler_word	#
	testl	%eax, %eax	# D.7355
	jne	.L30	#,
	.loc 1 244 0 is_stmt 0 discriminator 1
	movq	-16432(%rbp), %rax	# h, tmp341
	movl	(%rax), %edx	# h_87->id, D.7355
	movq	-16448(%rbp), %rax	# dict, tmp342
	movl	76(%rax), %eax	# dict_16->finishwid, D.7355
	cmpl	%eax, %edx	# D.7355, D.7355
	je	.L30	#,
	.loc 1 245 0 is_stmt 1
	movq	-16448(%rbp), %rax	# dict, tmp343
	movq	32(%rax), %rcx	# dict_16->word, D.7354
	movq	-16448(%rbp), %rax	# dict, tmp344
	movq	32(%rax), %rsi	# dict_16->word, D.7354
	movq	-16432(%rbp), %rax	# h, tmp345
	movl	(%rax), %eax	# h_87->id, D.7355
	movslq	%eax, %rdx	# D.7355, D.7356
	movq	%rdx, %rax	# D.7356, tmp346
	salq	$2, %rax	#, tmp346
	addq	%rdx, %rax	# D.7356, tmp346
	salq	$3, %rax	#, tmp347
	addq	%rsi, %rax	# D.7354, D.7354
	movl	24(%rax), %eax	# _103->basewid, D.7355
	movslq	%eax, %rdx	# D.7355, D.7356
	movq	%rdx, %rax	# D.7356, tmp348
	salq	$2, %rax	#, tmp348
	addq	%rdx, %rax	# D.7356, tmp348
	salq	$3, %rax	#, tmp349
	addq	%rcx, %rax	# D.7354, D.7354
	movq	(%rax), %rdx	# _107->word, D.7353
	movq	-16464(%rbp), %rax	# hyp_strptr, tmp350
	movq	%rdx, %rsi	# D.7353,
	movq	%rax, %rdi	# tmp350,
	call	strcat	#
	.loc 1 246 0
	movq	-16464(%rbp), %rax	# hyp_strptr, tmp351
	movq	%rax, %rdi	# tmp351,
	call	strlen	#
	addq	%rax, -16464(%rbp)	# D.7356, hyp_strptr
	.loc 1 247 0
	movq	-16464(%rbp), %rax	# hyp_strptr, tmp352
	movq	$-1, %rcx	#, tmp356
	movq	%rax, %rdx	# tmp352, tmp355
	movl	$0, %eax	#, tmp357
	movq	%rdx, %rdi	# tmp355, tmp355
	repnz scasb
	movq	%rcx, %rax	# tmp353, tmp353
	notq	%rax	# tmp354
	leaq	-1(%rax), %rdx	#, D.7356
	movq	-16464(%rbp), %rax	# hyp_strptr, tmp358
	addq	%rdx, %rax	# D.7356, D.7353
	movw	$32, (%rax)	#, MEM[(void *)_112]
	.loc 1 248 0
	addq	$1, -16464(%rbp)	#, hyp_strptr
.L30:
	.loc 1 241 0
	movq	-16480(%rbp), %rax	# gn, tmp359
	movq	8(%rax), %rax	# gn_4->next, tmp360
	movq	%rax, -16480(%rbp)	# tmp360, gn
.L29:
	.loc 1 241 0 is_stmt 0 discriminator 1
	cmpq	$0, -16480(%rbp)	#, gn
	jne	.L31	#,
	.loc 1 255 0 is_stmt 1
	movq	-16520(%rbp), %rax	# kb, tmp361
	movq	488(%rax), %rdx	# kb_14(D)->hyp_str, D.7353
	movq	-16520(%rbp), %rax	# kb, tmp362
	movl	496(%rax), %eax	# kb_14(D)->hyp_strlen, D.7355
	cltq
	addq	%rdx, %rax	# D.7353, D.7353
	movb	$0, (%rax)	#, *_118
	.loc 1 256 0
	movq	-16520(%rbp), %rax	# kb, tmp363
	movq	208(%rax), %rcx	# kb_14(D)->uttid, D.7353
	movq	-16520(%rbp), %rax	# kb, tmp364
	movq	488(%rax), %rdx	# kb_14(D)->hyp_str, D.7353
	movq	-16456(%rbp), %rax	# fp, tmp365
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# tmp365,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 259 0
	movq	-16520(%rbp), %rax	# kb, tmp366
	movq	464(%rax), %rax	# kb_14(D)->matchsegfp, D.7361
	testq	%rax, %rax	# D.7361
	je	.L32	#,
	.loc 1 260 0
	movq	-16520(%rbp), %rax	# kb, tmp367
	movq	464(%rax), %rax	# kb_14(D)->matchsegfp, D.7361
	movq	-16440(%rbp), %rdx	# hyp, tmp368
	movq	-16520(%rbp), %rsi	# kb, tmp369
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.7361,
	call	matchseg_write	#
.L32:
	.loc 1 261 0
	movq	-16440(%rbp), %rdx	# hyp, tmp370
	movq	-16520(%rbp), %rsi	# kb, tmp371
	movq	-16456(%rbp), %rax	# fp, tmp372
	movl	$.LC24, %ecx	#,
	movq	%rax, %rdi	# tmp372,
	call	matchseg_write	#
	.loc 1 262 0
	movq	-16456(%rbp), %rax	# fp, tmp373
	movq	%rax, %rsi	# tmp373,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 267 0
	movl	confp_open(%rip), %eax	# confp_open, confp_open.4
	testl	%eax, %eax	# confp_open.4
	jne	.L33	#,
	.loc 1 268 0
	movl	$.LC8, %esi	#,
	movl	$.LC25, %edi	#,
	call	fopen	#
	movq	%rax, confp(%rip)	# confp.5, confp
	movq	confp(%rip), %rax	# confp, confp.6
	testq	%rax, %rax	# confp.6
	jne	.L34	#,
	.loc 1 269 0
	movl	$.LC26, %edx	#,
	movl	$269, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movl	$.LC27, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L34:
	.loc 1 271 0
	movl	$1, confp_open(%rip)	#, confp_open
.L33:
	.loc 1 273 0
	movq	-16520(%rbp), %rax	# kb, tmp374
	movq	208(%rax), %rcx	# kb_14(D)->uttid, D.7353
	movq	considered(%rip), %rdx	# considered, considered.7
	movq	confp(%rip), %rax	# confp, confp.8
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# confp.8,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 274 0
	movq	tot_considered(%rip), %rdx	# tot_considered, tot_considered.9
	movq	considered(%rip), %rax	# considered, considered.10
	addq	%rdx, %rax	# tot_considered.9, tot_considered.11
	movq	%rax, tot_considered(%rip)	# tot_considered.11, tot_considered
	.loc 1 275 0
	movq	$0, considered(%rip)	#, considered
	.loc 1 278 0
	movq	-16520(%rbp), %rax	# kb, tmp375
	movq	456(%rax), %rax	# kb_14(D)->matchfp, D.7361
	testq	%rax, %rax	# D.7361
	je	.L35	#,
	.loc 1 279 0
	movq	-16520(%rbp), %rax	# kb, tmp376
	movq	456(%rax), %rax	# kb_14(D)->matchfp, D.7361
	movq	-16440(%rbp), %rdx	# hyp, tmp377
	movq	-16520(%rbp), %rsi	# kb, tmp378
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.7361,
	call	match_write	#
.L35:
	.loc 1 282 0
	movl	$.LC29, %edi	#,
	call	cmd_ln_access	#
	testq	%rax, %rax	# D.7352
	je	.L36	#,
.LBB3:
	.loc 1 288 0
	movl	$.LC30, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, %r12	#, D.7352
	.loc 1 287 0
	movq	-16520(%rbp), %rax	# kb, tmp379
	movq	208(%rax), %rbx	# kb_14(D)->uttid, D.7353
	.loc 1 288 0
	movl	$.LC29, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, %rdx	#, D.7352
	.loc 1 287 0
	leaq	-16416(%rbp), %rax	#, tmp380
	movq	%r12, %r8	# D.7352,
	movq	%rbx, %rcx	# D.7353,
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# tmp380,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 289 0
	movl	$.LC32, %edx	#,
	movl	$289, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_info_header	#
	leaq	-16416(%rbp), %rax	#, tmp381
	movq	%rax, %rsi	# tmp381,
	movl	$.LC33, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 291 0
	leaq	-16508(%rbp), %rdx	#, tmp382
	leaq	-16416(%rbp), %rax	#, tmp383
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp383,
	call	fopen_comp	#
	movq	%rax, -16472(%rbp)	# tmp384, latfp
	cmpq	$0, -16472(%rbp)	#, latfp
	jne	.L37	#,
	.loc 1 292 0
	movl	$.LC9, %edx	#,
	movl	$292, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	leaq	-16416(%rbp), %rax	#, tmp385
	movq	%rax, %rsi	# tmp385,
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	jmp	.L36	#
.L37:
	.loc 1 295 0
	leaq	-16416(%rbp), %rax	#, tmp386
	movl	$16384, %esi	#,
	movq	%rax, %rdi	# tmp386,
	call	getcwd	#
	.loc 1 296 0
	leaq	-16416(%rbp), %rdx	#, tmp387
	movq	-16472(%rbp), %rax	# latfp, tmp388
	movl	$.LC35, %esi	#,
	movq	%rax, %rdi	# tmp388,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 300 0
	movl	$.LC36, %edi	#,
	call	cmd_ln_access	#
	movss	(%rax), %xmm0	# MEM[(float32 *)_139], D.7362
	unpcklps	%xmm0, %xmm0	# D.7362, D.7362
	cvtps2pd	%xmm0, %xmm6	# D.7362, tmp476
	movsd	%xmm6, -16424(%rbp)	# tmp476, logbase
	.loc 1 301 0
	movq	-16424(%rbp), %rax	# logbase, tmp389
	movq	-16472(%rbp), %rdx	# latfp, tmp390
	movq	%rax, -16528(%rbp)	# tmp389, %sfp
	movsd	-16528(%rbp), %xmm0	# %sfp,
	movl	$.LC37, %esi	#,
	movq	%rdx, %rdi	# tmp390,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 303 0
	movl	$.LC38, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, %rdx	#, D.7352
	movq	-16472(%rbp), %rax	# latfp, tmp391
	movl	$.LC39, %esi	#,
	movq	%rax, %rdi	# tmp391,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 304 0
	movl	$.LC40, %edi	#,
	call	cmd_ln_access	#
	testq	%rax, %rax	# D.7352
	je	.L39	#,
	.loc 1 305 0
	movl	$.LC40, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, %rdx	#, D.7352
	movq	-16472(%rbp), %rax	# latfp, tmp392
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# tmp392,
	movl	$0, %eax	#,
	call	fprintf	#
.L39:
	.loc 1 306 0
	movl	$.LC42, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, %rdx	#, D.7352
	movq	-16472(%rbp), %rax	# latfp, tmp393
	movl	$.LC43, %esi	#,
	movq	%rax, %rdi	# tmp393,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 307 0
	movl	$.LC44, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, %rdx	#, D.7352
	movq	-16472(%rbp), %rax	# latfp, tmp394
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# tmp394,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 308 0
	movl	$.LC46, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, %rdx	#, D.7352
	movq	-16472(%rbp), %rax	# latfp, tmp395
	movl	$.LC47, %esi	#,
	movq	%rax, %rdi	# tmp395,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 309 0
	movl	$.LC48, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, %rdx	#, D.7352
	movq	-16472(%rbp), %rax	# latfp, tmp396
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# tmp396,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 310 0
	movl	$.LC50, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, %rdx	#, D.7352
	movq	-16472(%rbp), %rax	# latfp, tmp397
	movl	$.LC51, %esi	#,
	movq	%rax, %rdi	# tmp397,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 311 0
	movl	$.LC52, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, %rdx	#, D.7352
	movq	-16472(%rbp), %rax	# latfp, tmp398
	movl	$.LC53, %esi	#,
	movq	%rax, %rdi	# tmp398,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 312 0
	movq	-16472(%rbp), %rax	# latfp, tmp399
	movq	%rax, %rcx	# tmp399,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC54, %edi	#,
	call	fwrite	#
	.loc 1 314 0
	movq	-16520(%rbp), %rax	# kb, tmp400
	movl	64(%rax), %edx	# kb_14(D)->nfr, D.7355
	movq	-16472(%rbp), %rax	# latfp, tmp401
	movl	$.LC55, %esi	#,
	movq	%rax, %rdi	# tmp401,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 315 0
	movq	-16472(%rbp), %rax	# latfp, tmp402
	movq	%rax, %rcx	# tmp402,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC54, %edi	#,
	call	fwrite	#
	.loc 1 318 0
	movl	$.LC56, %edi	#,
	call	cmd_ln_access	#
	.loc 1 317 0
	movl	(%rax), %ecx	# MEM[(int32 *)_152], D.7355
	movq	-16520(%rbp), %rax	# kb, tmp403
	movq	48(%rax), %rax	# kb_14(D)->vithist, D.7351
	movq	-16472(%rbp), %rdi	# latfp, tmp404
	movq	-16448(%rbp), %rdx	# dict, tmp405
	movq	-16440(%rbp), %rsi	# hyp, tmp406
	movq	%rdi, %r8	# tmp404,
	movq	%rax, %rdi	# D.7351,
	call	vithist_dag_write	#
	.loc 1 319 0
	movl	-16508(%rbp), %edx	# ispipe, ispipe.12
	movq	-16472(%rbp), %rax	# latfp, tmp407
	movl	%edx, %esi	# ispipe.12,
	movq	%rax, %rdi	# tmp407,
	call	fclose_comp	#
.L36:
.LBE3:
	.loc 1 326 0 discriminator 2
	movq	-16440(%rbp), %rax	# hyp, tmp408
	movq	%rax, %rdi	# tmp408,
	call	glist_free	#
	jmp	.L40	#
.L22:
	.loc 1 328 0
	movl	$.LC9, %edx	#,
	movl	$328, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-16520(%rbp), %rax	# kb, tmp409
	movq	208(%rax), %rax	# kb_14(D)->uttid, D.7353
	movq	%rax, %rsi	# D.7353,
	movl	$.LC57, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
.L40:
	.loc 1 337 0
	movl	$.LC32, %edx	#,
	movl	$337, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_info_header	#
	movq	-16520(%rbp), %rax	# kb, tmp410
	movq	208(%rax), %rsi	# kb_14(D)->uttid, D.7353
	.loc 1 348 0
	movq	-16520(%rbp), %rax	# kb, tmp411
	movq	48(%rax), %rax	# kb_14(D)->vithist, D.7351
	movl	16(%rax), %edx	# _158->n_entry, D.7355
	movq	-16520(%rbp), %rax	# kb, tmp412
	movl	64(%rax), %eax	# kb_14(D)->nfr, D.7355
	sarl	%eax	# D.7355
	leal	(%rdx,%rax), %ecx	#, D.7355
	movq	-16520(%rbp), %rax	# kb, tmp413
	movl	64(%rax), %ebx	# kb_14(D)->nfr, D.7355
	.loc 1 337 0
	movl	%ecx, %eax	# D.7355, tmp414
	cltd
	idivl	%ebx	# D.7355
	movl	%eax, %r8d	# tmp414, D.7355
	.loc 1 347 0
	movq	-16520(%rbp), %rax	# kb, tmp416
	movl	216(%rax), %edx	# kb_14(D)->utt_hmm_eval, D.7355
	movq	-16520(%rbp), %rax	# kb, tmp417
	movl	64(%rax), %eax	# kb_14(D)->nfr, D.7355
	sarl	%eax	# D.7355
	leal	(%rdx,%rax), %ecx	#, D.7355
	movq	-16520(%rbp), %rax	# kb, tmp418
	movl	64(%rax), %ebx	# kb_14(D)->nfr, D.7355
	.loc 1 337 0
	movl	%ecx, %eax	# D.7355, tmp419
	cltd
	idivl	%ebx	# D.7355
	movl	%eax, %edi	# tmp419, D.7355
	.loc 1 340 0
	movq	-16520(%rbp), %rax	# kb, tmp421
	movl	224(%rax), %edx	# kb_14(D)->utt_gau_eval, D.7355
	movq	-16520(%rbp), %rax	# kb, tmp422
	movl	64(%rax), %eax	# kb_14(D)->nfr, D.7355
	sarl	%eax	# D.7355
	leal	(%rdx,%rax), %ecx	#, D.7355
	movq	-16520(%rbp), %rax	# kb, tmp423
	movl	64(%rax), %ebx	# kb_14(D)->nfr, D.7355
	.loc 1 337 0
	movl	%ecx, %eax	# D.7355, tmp424
	cltd
	idivl	%ebx	# D.7355
	movl	%eax, %ecx	# tmp424, D.7355
	.loc 1 339 0
	movq	-16520(%rbp), %rax	# kb, tmp426
	movl	220(%rax), %edx	# kb_14(D)->utt_sen_eval, D.7355
	movq	-16520(%rbp), %rax	# kb, tmp427
	movl	64(%rax), %eax	# kb_14(D)->nfr, D.7355
	sarl	%eax	# D.7355
	leal	(%rdx,%rax), %r9d	#, D.7355
	movq	-16520(%rbp), %rax	# kb, tmp428
	movl	64(%rax), %ebx	# kb_14(D)->nfr, D.7355
	.loc 1 337 0
	movl	%r9d, %eax	# D.7355, tmp429
	cltd
	idivl	%ebx	# D.7355
	movl	%eax, %edx	# tmp429, D.7355
	movq	-16520(%rbp), %rax	# kb, tmp431
	movl	64(%rax), %eax	# kb_14(D)->nfr, D.7355
	movq	%rsi, (%rsp)	# D.7353,
	xorpd	%xmm5, %xmm5	#
	xorpd	%xmm4, %xmm4	#
	movl	%r8d, %r9d	# D.7355,
	movl	%edi, %r8d	# D.7355,
	xorpd	%xmm3, %xmm3	#
	xorpd	%xmm2, %xmm2	#
	xorpd	%xmm1, %xmm1	#
	xorpd	%xmm0, %xmm0	#
	movl	%eax, %esi	# D.7355,
	movl	$.LC58, %edi	#,
	movl	$6, %eax	#,
	call	_E__pr_info	#
.LBB4:
	.loc 1 374 0
	movq	-16520(%rbp), %rax	# kb, tmp432
	movl	240(%rax), %eax	# kb_14(D)->hmm_hist_bins, D.7355
	subl	$1, %eax	#, tmp433
	movl	%eax, -16492(%rbp)	# tmp433, j
	jmp	.L41	#
.L43:
	.loc 1 374 0 is_stmt 0 discriminator 1
	subl	$1, -16492(%rbp)	#, j
.L41:
	cmpl	$0, -16492(%rbp)	#, j
	js	.L42	#,
	.loc 1 374 0 discriminator 2
	movq	-16520(%rbp), %rax	# kb, tmp434
	movq	232(%rax), %rax	# kb_14(D)->hmm_hist, D.7363
	movl	-16492(%rbp), %edx	# j, tmp435
	movslq	%edx, %rdx	# tmp435, D.7356
	salq	$2, %rdx	#, D.7356
	addq	%rdx, %rax	# D.7356, D.7363
	movl	(%rax), %eax	# *_189, D.7355
	testl	%eax, %eax	# D.7355
	je	.L43	#,
.L42:
	.loc 1 375 0 is_stmt 1
	movl	$.LC32, %edx	#,
	movl	$375, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_info_header	#
	movq	-16520(%rbp), %rax	# kb, tmp436
	movq	208(%rax), %rdx	# kb_14(D)->uttid, D.7353
	movl	-16492(%rbp), %eax	# j, tmp437
	movl	%eax, %esi	# tmp437,
	movl	$.LC60, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 376 0
	movl	$0, -16496(%rbp)	#, i
	movl	$0, -16488(%rbp)	#, k
	jmp	.L44	#
.L45:
	.loc 1 377 0 discriminator 2
	movq	-16520(%rbp), %rax	# kb, tmp438
	movq	232(%rax), %rax	# kb_14(D)->hmm_hist, D.7363
	movl	-16496(%rbp), %edx	# i, tmp439
	movslq	%edx, %rdx	# tmp439, D.7356
	salq	$2, %rdx	#, D.7356
	addq	%rdx, %rax	# D.7356, D.7363
	movl	(%rax), %eax	# *_198, D.7355
	addl	%eax, -16488(%rbp)	# D.7355, k
	.loc 1 378 0 discriminator 2
	movl	-16488(%rbp), %eax	# k, tmp440
	imull	$100, %eax, %eax	#, tmp440, D.7355
	movq	-16520(%rbp), %rdx	# kb, tmp441
	movl	64(%rdx), %ebx	# kb_14(D)->nfr, D.7355
	cltd
	idivl	%ebx	# D.7355
	movl	%eax, %ecx	# tmp442, D.7355
	movq	-16520(%rbp), %rax	# kb, tmp444
	movq	232(%rax), %rax	# kb_14(D)->hmm_hist, D.7363
	movl	-16496(%rbp), %edx	# i, tmp445
	movslq	%edx, %rdx	# tmp445, D.7356
	salq	$2, %rdx	#, D.7356
	addq	%rdx, %rax	# D.7356, D.7363
	movl	(%rax), %edx	# *_207, D.7355
	movq	stdout(%rip), %rax	# stdout, stdout.13
	movl	$.LC61, %esi	#,
	movq	%rax, %rdi	# stdout.13,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 376 0 discriminator 2
	addl	$1, -16496(%rbp)	#, i
.L44:
	.loc 1 376 0 is_stmt 0 discriminator 1
	movl	-16496(%rbp), %eax	# i, tmp446
	cmpl	-16492(%rbp), %eax	# j, tmp446
	jle	.L45	#,
	.loc 1 380 0 is_stmt 1
	movq	stdout(%rip), %rax	# stdout, stdout.14
	movq	%rax, %rsi	# stdout.14,
	movl	$10, %edi	#,
	call	fputc	#
.LBE4:
	.loc 1 384 0
	movq	-16520(%rbp), %rax	# kb, tmp447
	movsd	424(%rax), %xmm1	# kb_14(D)->tot_sen_eval, D.7364
	movq	-16520(%rbp), %rax	# kb, tmp448
	movl	220(%rax), %eax	# kb_14(D)->utt_sen_eval, D.7355
	cvtsi2sd	%eax, %xmm0	# D.7355, D.7364
	addsd	%xmm1, %xmm0	# D.7364, D.7364
	movq	-16520(%rbp), %rax	# kb, tmp449
	movsd	%xmm0, 424(%rax)	# D.7364, kb_14(D)->tot_sen_eval
	.loc 1 385 0
	movq	-16520(%rbp), %rax	# kb, tmp450
	movsd	432(%rax), %xmm1	# kb_14(D)->tot_gau_eval, D.7364
	movq	-16520(%rbp), %rax	# kb, tmp451
	movl	224(%rax), %eax	# kb_14(D)->utt_gau_eval, D.7355
	cvtsi2sd	%eax, %xmm0	# D.7355, D.7364
	addsd	%xmm1, %xmm0	# D.7364, D.7364
	movq	-16520(%rbp), %rax	# kb, tmp452
	movsd	%xmm0, 432(%rax)	# D.7364, kb_14(D)->tot_gau_eval
	.loc 1 386 0
	movq	-16520(%rbp), %rax	# kb, tmp453
	movsd	440(%rax), %xmm1	# kb_14(D)->tot_hmm_eval, D.7364
	movq	-16520(%rbp), %rax	# kb, tmp454
	movl	216(%rax), %eax	# kb_14(D)->utt_hmm_eval, D.7355
	cvtsi2sd	%eax, %xmm0	# D.7355, D.7364
	addsd	%xmm1, %xmm0	# D.7364, D.7364
	movq	-16520(%rbp), %rax	# kb, tmp455
	movsd	%xmm0, 440(%rax)	# D.7364, kb_14(D)->tot_hmm_eval
	.loc 1 387 0
	movq	-16520(%rbp), %rax	# kb, tmp456
	movsd	448(%rax), %xmm1	# kb_14(D)->tot_wd_exit, D.7364
	movq	-16520(%rbp), %rax	# kb, tmp457
	movq	48(%rax), %rax	# kb_14(D)->vithist, D.7351
	movl	16(%rax), %eax	# _225->n_entry, D.7355
	cvtsi2sd	%eax, %xmm0	# D.7355, D.7364
	addsd	%xmm1, %xmm0	# D.7364, D.7364
	movq	-16520(%rbp), %rax	# kb, tmp458
	movsd	%xmm0, 448(%rax)	# D.7364, kb_14(D)->tot_wd_exit
	.loc 1 389 0
	movq	-16520(%rbp), %rax	# kb, tmp459
	addq	$248, %rax	#, D.7365
	movq	%rax, %rdi	# D.7365,
	call	ptmr_reset	#
	.loc 1 390 0
	movq	-16520(%rbp), %rax	# kb, tmp460
	addq	$304, %rax	#, D.7365
	movq	%rax, %rdi	# D.7365,
	call	ptmr_reset	#
	.loc 1 391 0
	movq	-16520(%rbp), %rax	# kb, tmp461
	addq	$360, %rax	#, D.7365
	movq	%rax, %rdi	# D.7365,
	call	ptmr_reset	#
	.loc 1 400 0
	movl	$0, -16496(%rbp)	#, i
	jmp	.L46	#
.L47:
	.loc 1 401 0 discriminator 2
	movq	-16520(%rbp), %rax	# kb, tmp462
	movq	(%rax), %rdx	# kb_14(D)->kbcore, D.7350
	movq	-16520(%rbp), %rax	# kb, tmp463
	movq	16(%rax), %rax	# kb_14(D)->ugtree, D.7366
	movl	-16496(%rbp), %ecx	# i, tmp464
	movslq	%ecx, %rcx	# tmp464, D.7356
	salq	$3, %rcx	#, D.7356
	addq	%rcx, %rax	# D.7356, D.7366
	movq	(%rax), %rax	# *_238, D.7367
	movq	%rdx, %rsi	# D.7350,
	movq	%rax, %rdi	# D.7367,
	call	lextree_utt_end	#
	.loc 1 402 0 discriminator 2
	movq	-16520(%rbp), %rax	# kb, tmp465
	movq	(%rax), %rdx	# kb_14(D)->kbcore, D.7350
	movq	-16520(%rbp), %rax	# kb, tmp466
	movq	32(%rax), %rax	# kb_14(D)->fillertree, D.7366
	movl	-16496(%rbp), %ecx	# i, tmp467
	movslq	%ecx, %rcx	# tmp467, D.7356
	salq	$3, %rcx	#, D.7356
	addq	%rcx, %rax	# D.7356, D.7366
	movq	(%rax), %rax	# *_244, D.7367
	movq	%rdx, %rsi	# D.7350,
	movq	%rax, %rdi	# D.7367,
	call	lextree_utt_end	#
	.loc 1 400 0 discriminator 2
	addl	$1, -16496(%rbp)	#, i
.L46:
	.loc 1 400 0 is_stmt 0 discriminator 1
	movq	-16520(%rbp), %rax	# kb, tmp468
	movl	8(%rax), %eax	# kb_14(D)->n_lextree, D.7355
	cmpl	-16496(%rbp), %eax	# i, D.7355
	jg	.L47	#,
	.loc 1 405 0 is_stmt 1
	movq	-16520(%rbp), %rax	# kb, tmp469
	movq	48(%rax), %rax	# kb_14(D)->vithist, D.7351
	movq	%rax, %rdi	# D.7351,
	call	vithist_utt_reset	#
	.loc 1 407 0
	movq	-16520(%rbp), %rax	# kb, tmp470
	movq	(%rax), %rax	# kb_14(D)->kbcore, D.7350
	movq	32(%rax), %rax	# _248->lm, D.7368
	movq	%rax, %rdi	# D.7368,
	call	lm_cache_stats_dump	#
	.loc 1 408 0
	movq	-16520(%rbp), %rax	# kb, tmp471
	movq	(%rax), %rax	# kb_14(D)->kbcore, D.7350
	movq	32(%rax), %rax	# _250->lm, D.7368
	movq	%rax, %rdi	# D.7368,
	call	lm_cache_reset	#
	.loc 1 409 0
	movq	-24(%rbp), %rax	# D.7370, tmp473
	xorq	%fs:40, %rax	#, tmp473
	je	.L48	#,
	call	__stack_chk_fail	#
.L48:
	addq	$16544, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	utt_end, .-utt_end
	.section	.rodata
.LC62:
	.string	"-epl"
	.text
	.globl	utt_word_trans
	.type	utt_word_trans, @function
utt_word_trans:
.LFB7:
	.loc 1 413 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# kb, kb
	movl	%esi, -108(%rbp)	# cf, cf
	.loc 1 424 0
	movl	$-2147483648, -80(%rbp)	#, maxpscore
	.loc 1 427 0
	movq	-104(%rbp), %rax	# kb, tmp176
	movq	48(%rax), %rax	# kb_8(D)->vithist, tmp177
	movq	%rax, -48(%rbp)	# tmp177, vh
	.loc 1 428 0
	movq	-104(%rbp), %rax	# kb, tmp178
	movl	140(%rax), %edx	# kb_8(D)->bestscore, D.7429
	movq	-104(%rbp), %rax	# kb, tmp179
	movq	160(%rax), %rax	# kb_8(D)->beam, D.7430
	movl	4(%rax), %eax	# _11->hmm, D.7429
	addl	%edx, %eax	# D.7429, tmp180
	movl	%eax, -72(%rbp)	# tmp180, th
	.loc 1 430 0
	movq	-48(%rbp), %rax	# vh, tmp181
	movq	40(%rax), %rax	# vh_9->bestvh, D.7431
	movl	-108(%rbp), %edx	# cf, tmp182
	movslq	%edx, %rdx	# tmp182, D.7432
	salq	$2, %rdx	#, D.7432
	addq	%rdx, %rax	# D.7432, D.7431
	movl	(%rax), %eax	# *_18, D.7429
	testl	%eax, %eax	# D.7429
	jns	.L50	#,
	.loc 1 431 0
	jmp	.L49	#
.L50:
	.loc 1 433 0
	movq	-104(%rbp), %rax	# kb, tmp183
	movq	(%rax), %rax	# kb_8(D)->kbcore, D.7433
	movq	16(%rax), %rax	# _20->dict, tmp184
	movq	%rax, -40(%rbp)	# tmp184, dict
	.loc 1 434 0
	movq	-104(%rbp), %rax	# kb, tmp185
	movq	(%rax), %rax	# kb_8(D)->kbcore, D.7433
	movq	8(%rax), %rax	# _22->mdef, tmp186
	movq	%rax, -32(%rbp)	# tmp186, mdef
	.loc 1 435 0
	movq	-32(%rbp), %rax	# mdef, tmp187
	movl	(%rax), %eax	# mdef_23->n_ciphone, tmp188
	movl	%eax, -68(%rbp)	# tmp188, n_ci
	.loc 1 438 0
	movq	bs.6184(%rip), %rax	# bs, bs.15
	testq	%rax, %rax	# bs.15
	jne	.L52	#,
	.loc 1 439 0
	movl	-68(%rbp), %eax	# n_ci, tmp189
	cltq
	movl	$439, %ecx	#,
	movl	$.LC10, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.7432,
	call	__ckd_calloc__	#
	movq	%rax, bs.6184(%rip)	# bs.16, bs
	.loc 1 440 0
	movl	-68(%rbp), %eax	# n_ci, tmp190
	cltq
	movl	$440, %ecx	#,
	movl	$.LC10, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.7432,
	call	__ckd_calloc__	#
	movq	%rax, bv.6185(%rip)	# bv.17, bv
	.loc 1 441 0
	movl	$.LC62, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %eax	# MEM[(int32 *)_30], epl.18
	movl	%eax, epl.6186(%rip)	# epl.18, epl
.L52:
	.loc 1 443 0
	movl	$0, -76(%rbp)	#, p
	jmp	.L53	#
.L54:
	.loc 1 444 0 discriminator 2
	movq	bs.6184(%rip), %rax	# bs, bs.19
	movl	-76(%rbp), %edx	# p, tmp191
	movslq	%edx, %rdx	# tmp191, D.7432
	salq	$2, %rdx	#, D.7432
	addq	%rdx, %rax	# D.7432, D.7431
	movl	$-2147483648, (%rax)	#, *_36
	.loc 1 445 0 discriminator 2
	movq	bv.6185(%rip), %rax	# bv, bv.20
	movl	-76(%rbp), %edx	# p, tmp192
	movslq	%edx, %rdx	# tmp192, D.7432
	salq	$2, %rdx	#, D.7432
	addq	%rdx, %rax	# D.7432, D.7431
	movl	$-1, (%rax)	#, *_40
	.loc 1 443 0 discriminator 2
	addl	$1, -76(%rbp)	#, p
.L53:
	.loc 1 443 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# p, tmp193
	cmpl	-68(%rbp), %eax	# n_ci, tmp193
	jl	.L54	#,
	.loc 1 449 0 is_stmt 1
	movq	-48(%rbp), %rax	# vh, tmp194
	movq	8(%rax), %rax	# vh_9->frame_start, D.7431
	movl	-108(%rbp), %edx	# cf, tmp195
	movslq	%edx, %rdx	# tmp195, D.7432
	salq	$2, %rdx	#, D.7432
	addq	%rdx, %rax	# D.7432, D.7431
	movl	(%rax), %eax	# *_45, tmp196
	movl	%eax, -84(%rbp)	# tmp196, vhid
	.loc 1 450 0
	movq	-48(%rbp), %rax	# vh, tmp197
	movl	16(%rax), %eax	# vh_9->n_entry, D.7429
	subl	$1, %eax	#, tmp198
	movl	%eax, -64(%rbp)	# tmp198, le
	.loc 1 451 0
	jmp	.L55	#
.L59:
	.loc 1 452 0
	movl	-84(%rbp), %edx	# vhid, tmp199
	movq	-48(%rbp), %rax	# vh, tmp200
	movl	%edx, %esi	# tmp199,
	movq	%rax, %rdi	# tmp200,
	call	vithist_id2entry	#
	movq	%rax, -24(%rbp)	# tmp201, ve
	.loc 1 453 0
	movq	-24(%rbp), %rax	# ve, tmp202
	movl	28(%rax), %eax	# ve_49->valid, D.7429
	testl	%eax, %eax	# D.7429
	jne	.L56	#,
	.loc 1 454 0
	jmp	.L57	#
.L56:
	.loc 1 456 0
	movq	-24(%rbp), %rax	# ve, tmp203
	movl	(%rax), %eax	# ve_49->wid, tmp204
	movl	%eax, -60(%rbp)	# tmp204, wid
	.loc 1 457 0
	movq	-40(%rbp), %rax	# dict, tmp205
	movq	32(%rax), %rcx	# dict_21->word, D.7435
	movl	-60(%rbp), %eax	# wid, tmp206
	movslq	%eax, %rdx	# tmp206, D.7432
	movq	%rdx, %rax	# D.7432, tmp207
	salq	$2, %rax	#, tmp207
	addq	%rdx, %rax	# D.7432, tmp207
	salq	$3, %rax	#, tmp208
	addq	%rcx, %rax	# D.7435, D.7435
	movq	8(%rax), %rcx	# _55->ciphone, D.7436
	movq	-40(%rbp), %rax	# dict, tmp209
	movq	32(%rax), %rsi	# dict_21->word, D.7435
	movl	-60(%rbp), %eax	# wid, tmp210
	movslq	%eax, %rdx	# tmp210, D.7432
	movq	%rdx, %rax	# D.7432, tmp211
	salq	$2, %rax	#, tmp211
	addq	%rdx, %rax	# D.7432, tmp211
	salq	$3, %rax	#, tmp212
	addq	%rsi, %rax	# D.7435, D.7435
	movl	16(%rax), %eax	# _60->pronlen, D.7429
	cltq
	subq	$1, %rax	#, D.7437
	addq	%rcx, %rax	# D.7436, D.7436
	movzbl	(%rax), %eax	# *_64, D.7438
	movsbl	%al, %eax	# D.7438, tmp213
	movl	%eax, -76(%rbp)	# tmp213, p
	.loc 1 458 0
	movq	-32(%rbp), %rax	# mdef, tmp214
	movq	32(%rax), %rax	# mdef_23->ciphone, D.7439
	movl	-76(%rbp), %edx	# p, tmp215
	movslq	%edx, %rdx	# tmp215, D.7432
	salq	$4, %rdx	#, D.7432
	addq	%rdx, %rax	# D.7432, D.7439
	movl	8(%rax), %eax	# _70->filler, D.7429
	testl	%eax, %eax	# D.7429
	je	.L58	#,
	.loc 1 459 0
	movq	-32(%rbp), %rax	# mdef, tmp216
	movzbl	88(%rax), %eax	# mdef_23->sil, D.7438
	movsbl	%al, %eax	# D.7438, tmp217
	movl	%eax, -76(%rbp)	# tmp217, p
.L58:
	.loc 1 461 0
	movq	-24(%rbp), %rax	# ve, tmp218
	movl	16(%rax), %eax	# ve_49->score, tmp219
	movl	%eax, -56(%rbp)	# tmp219, score
	.loc 1 462 0
	movq	bs.6184(%rip), %rax	# bs, bs.21
	movl	-76(%rbp), %edx	# p, tmp220
	movslq	%edx, %rdx	# tmp220, D.7432
	salq	$2, %rdx	#, D.7432
	addq	%rdx, %rax	# D.7432, D.7431
	movl	(%rax), %eax	# *_78, D.7429
	cmpl	-56(%rbp), %eax	# score, D.7429
	jge	.L57	#,
	.loc 1 463 0
	movq	bs.6184(%rip), %rax	# bs, bs.22
	movl	-76(%rbp), %edx	# p, tmp221
	movslq	%edx, %rdx	# tmp221, D.7432
	salq	$2, %rdx	#, D.7432
	addq	%rax, %rdx	# bs.22, D.7431
	movl	-56(%rbp), %eax	# score, tmp222
	movl	%eax, (%rdx)	# tmp222, *_83
	.loc 1 464 0
	movq	bv.6185(%rip), %rax	# bv, bv.23
	movl	-76(%rbp), %edx	# p, tmp223
	movslq	%edx, %rdx	# tmp223, D.7432
	salq	$2, %rdx	#, D.7432
	addq	%rax, %rdx	# bv.23, D.7431
	movl	-84(%rbp), %eax	# vhid, tmp224
	movl	%eax, (%rdx)	# tmp224, *_87
	.loc 1 465 0
	movl	-80(%rbp), %eax	# maxpscore, tmp225
	cmpl	-56(%rbp), %eax	# score, tmp225
	jge	.L57	#,
	.loc 1 467 0
	movl	-56(%rbp), %eax	# score, tmp226
	movl	%eax, -80(%rbp)	# tmp226, maxpscore
.L57:
	.loc 1 451 0
	addl	$1, -84(%rbp)	#, vhid
.L55:
	.loc 1 451 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# vhid, tmp227
	cmpl	-64(%rbp), %eax	# le, tmp227
	jle	.L59	#,
	.loc 1 474 0 is_stmt 1
	movq	-104(%rbp), %rax	# kb, tmp228
	movl	40(%rax), %eax	# kb_8(D)->n_lextrans, D.7429
	leal	1(%rax), %ecx	#, D.7429
	movq	-104(%rbp), %rdx	# kb, tmp229
	movl	%ecx, 40(%rdx)	# D.7429, kb_8(D)->n_lextrans
	movl	%eax, -52(%rbp)	# k.24, k
	.loc 1 475 0
	movq	-104(%rbp), %rax	# kb, tmp230
	movl	8(%rax), %edx	# kb_8(D)->n_lextree, D.7429
	movl	epl.6186(%rip), %eax	# epl, epl.25
	movl	%edx, %ecx	# D.7429, D.7429
	imull	%eax, %ecx	# epl.25, D.7429
	movl	-52(%rbp), %eax	# k, tmp231
	cltd
	idivl	%ecx	# D.7429
	movl	%edx, %eax	# tmp232, D.7429
	movl	epl.6186(%rip), %ebx	# epl, epl.26
	cltd
	idivl	%ebx	# epl.26
	movl	%eax, -52(%rbp)	# tmp234, k
	.loc 1 478 0
	movl	$0, -76(%rbp)	#, p
	jmp	.L60	#
.L63:
	.loc 1 479 0
	movq	bv.6185(%rip), %rax	# bv, bv.27
	movl	-76(%rbp), %edx	# p, tmp236
	movslq	%edx, %rdx	# tmp236, D.7432
	salq	$2, %rdx	#, D.7432
	addq	%rdx, %rax	# D.7432, D.7431
	movl	(%rax), %eax	# *_104, D.7429
	testl	%eax, %eax	# D.7429
	js	.L61	#,
	.loc 1 480 0
	movq	-104(%rbp), %rax	# kb, tmp237
	movl	204(%rax), %eax	# kb_8(D)->wend_beam, D.7429
	testl	%eax, %eax	# D.7429
	je	.L62	#,
	.loc 1 480 0 is_stmt 0 discriminator 1
	movq	bs.6184(%rip), %rax	# bs, bs.28
	movl	-76(%rbp), %edx	# p, tmp238
	movslq	%edx, %rdx	# tmp238, D.7432
	salq	$2, %rdx	#, D.7432
	addq	%rdx, %rax	# D.7432, D.7431
	movl	(%rax), %edx	# *_110, D.7429
	movq	-104(%rbp), %rax	# kb, tmp239
	movl	204(%rax), %eax	# kb_8(D)->wend_beam, D.7429
	movl	-80(%rbp), %ecx	# maxpscore, tmp240
	subl	%eax, %ecx	# D.7429, D.7429
	movl	%ecx, %eax	# D.7429, D.7429
	cmpl	%eax, %edx	# D.7429, D.7429
	jle	.L61	#,
.L62:
	.loc 1 483 0 is_stmt 1
	movq	bv.6185(%rip), %rax	# bv, bv.29
	movl	-76(%rbp), %edx	# p, tmp241
	movslq	%edx, %rdx	# tmp241, D.7432
	salq	$2, %rdx	#, D.7432
	addq	%rdx, %rax	# D.7432, D.7431
	movl	(%rax), %edi	# *_117, D.7429
	movq	bs.6184(%rip), %rax	# bs, bs.30
	movl	-76(%rbp), %edx	# p, tmp242
	movslq	%edx, %rdx	# tmp242, D.7432
	salq	$2, %rdx	#, D.7432
	addq	%rdx, %rax	# D.7432, D.7431
	movl	(%rax), %ecx	# *_122, D.7429
	movl	-76(%rbp), %eax	# p, tmp243
	movsbl	%al, %esi	# D.7438, D.7429
	movq	-104(%rbp), %rax	# kb, tmp244
	movq	16(%rax), %rax	# kb_8(D)->ugtree, D.7440
	movl	-52(%rbp), %edx	# k, tmp245
	movslq	%edx, %rdx	# tmp245, D.7432
	salq	$3, %rdx	#, D.7432
	addq	%rdx, %rax	# D.7432, D.7440
	movq	(%rax), %rax	# *_129, D.7441
	movl	-72(%rbp), %r8d	# th, tmp246
	movl	-108(%rbp), %edx	# cf, tmp247
	movl	%r8d, %r9d	# tmp246,
	movl	%edi, %r8d	# D.7429,
	movq	%rax, %rdi	# D.7441,
	call	lextree_enter	#
.L61:
	.loc 1 478 0
	addl	$1, -76(%rbp)	#, p
.L60:
	.loc 1 478 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# p, tmp248
	cmpl	-68(%rbp), %eax	# n_ci, tmp248
	jl	.L63	#,
	.loc 1 490 0 is_stmt 1
	movq	-48(%rbp), %rax	# vh, tmp249
	movq	40(%rax), %rax	# vh_9->bestvh, D.7431
	movl	-108(%rbp), %edx	# cf, tmp250
	movslq	%edx, %rdx	# tmp250, D.7432
	salq	$2, %rdx	#, D.7432
	addq	%rdx, %rax	# D.7432, D.7431
	.loc 1 489 0
	movl	(%rax), %esi	# *_135, D.7429
	movq	-48(%rbp), %rax	# vh, tmp251
	movq	32(%rax), %rax	# vh_9->bestscore, D.7431
	movl	-108(%rbp), %edx	# cf, tmp252
	movslq	%edx, %rdx	# tmp252, D.7432
	salq	$2, %rdx	#, D.7432
	addq	%rdx, %rax	# D.7432, D.7431
	movl	(%rax), %ecx	# *_140, D.7429
	movq	-104(%rbp), %rax	# kb, tmp253
	movq	32(%rax), %rax	# kb_8(D)->fillertree, D.7440
	movl	-52(%rbp), %edx	# k, tmp254
	movslq	%edx, %rdx	# tmp254, D.7432
	salq	$3, %rdx	#, D.7432
	addq	%rdx, %rax	# D.7432, D.7440
	movq	(%rax), %rax	# *_145, D.7441
	movl	-72(%rbp), %edi	# th, tmp255
	movl	-108(%rbp), %edx	# cf, tmp256
	movl	%edi, %r9d	# tmp255,
	movl	%esi, %r8d	# D.7429,
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.7441,
	call	lextree_enter	#
.L49:
	.loc 1 491 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	utt_word_trans, .-utt_word_trans
	.globl	computePhnHeur
	.type	computePhnHeur, @function
computePhnHeur:
.LFB8:
	.loc 1 495 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -48(%rbp)	# md, md
	movq	%rsi, -56(%rbp)	# kb, kb
	movl	%edx, -60(%rbp)	# heutype, heutype
	.loc 1 500 0
	movq	-48(%rbp), %rax	# md, tmp225
	movl	8(%rax), %eax	# md_17(D)->n_emit_state, tmp226
	movl	%eax, -12(%rbp)	# tmp226, nState
	.loc 1 503 0
	movl	$0, -24(%rbp)	#, j
	jmp	.L65	#
.L66:
	.loc 1 504 0 discriminator 2
	movq	-48(%rbp), %rax	# md, tmp227
	movq	72(%rax), %rdx	# md_17(D)->sen2cimap, D.7447
	movl	-24(%rbp), %eax	# j, tmp228
	cltq
	addq	%rdx, %rax	# D.7447, D.7447
	movzbl	(%rax), %eax	# *_28, D.7449
	movsbl	%al, %eax	# D.7449, tmp229
	movl	%eax, -20(%rbp)	# tmp229, curPhn
	.loc 1 505 0 discriminator 2
	movq	-56(%rbp), %rax	# kb, tmp230
	movq	128(%rax), %rax	# kb_31(D)->phn_heur_list, D.7450
	movl	-20(%rbp), %edx	# curPhn, tmp231
	movslq	%edx, %rdx	# tmp231, D.7444
	salq	$2, %rdx	#, D.7444
	addq	%rdx, %rax	# D.7444, D.7450
	movl	$0, (%rax)	#, *_35
	.loc 1 503 0 discriminator 2
	addl	$1, -24(%rbp)	#, j
.L65:
	.loc 1 503 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# md, tmp232
	movq	64(%rax), %rax	# md_17(D)->cd2cisen, D.7443
	movl	-24(%rbp), %edx	# j, tmp233
	movslq	%edx, %rdx	# tmp233, D.7444
	addq	%rdx, %rdx	# D.7444
	addq	%rdx, %rax	# D.7444, D.7443
	movzwl	(%rax), %eax	# *_23, D.7445
	cwtl
	cmpl	-24(%rbp), %eax	# j, D.7446
	je	.L66	#,
	.loc 1 515 0 is_stmt 1
	cmpl	$1, -60(%rbp)	#, heutype
	jne	.L67	#,
	.loc 1 516 0
	movq	-56(%rbp), %rax	# kb, tmp234
	movl	192(%rax), %eax	# kb_31(D)->pl_window_start, tmp235
	movl	%eax, -28(%rbp)	# tmp235, i
	jmp	.L68	#
.L73:
	.loc 1 517 0
	movl	$0, -20(%rbp)	#, curPhn
	.loc 1 518 0
	movl	$-2147483648, -16(%rbp)	#, curFrmPhnVar
	.loc 1 519 0
	movl	$0, -24(%rbp)	#, j
	jmp	.L69	#
.L72:
	.loc 1 520 0
	movq	-56(%rbp), %rax	# kb, tmp236
	movq	112(%rax), %rax	# kb_31(D)->cache_ci_senscr, D.7451
	movl	-28(%rbp), %edx	# i, tmp237
	movslq	%edx, %rdx	# tmp237, D.7444
	salq	$3, %rdx	#, D.7444
	addq	%rdx, %rax	# D.7444, D.7451
	movq	(%rax), %rax	# *_52, D.7450
	movl	-24(%rbp), %edx	# j, tmp238
	movslq	%edx, %rdx	# tmp238, D.7444
	salq	$2, %rdx	#, D.7444
	addq	%rdx, %rax	# D.7444, D.7450
	movl	(%rax), %eax	# *_56, D.7446
	cmpl	-16(%rbp), %eax	# curFrmPhnVar, D.7446
	jle	.L70	#,
	.loc 1 521 0
	movq	-56(%rbp), %rax	# kb, tmp239
	movq	112(%rax), %rax	# kb_31(D)->cache_ci_senscr, D.7451
	movl	-28(%rbp), %edx	# i, tmp240
	movslq	%edx, %rdx	# tmp240, D.7444
	salq	$3, %rdx	#, D.7444
	addq	%rdx, %rax	# D.7444, D.7451
	movq	(%rax), %rax	# *_61, D.7450
	movl	-24(%rbp), %edx	# j, tmp241
	movslq	%edx, %rdx	# tmp241, D.7444
	salq	$2, %rdx	#, D.7444
	addq	%rdx, %rax	# D.7444, D.7450
	movl	(%rax), %eax	# *_65, tmp242
	movl	%eax, -16(%rbp)	# tmp242, curFrmPhnVar
.L70:
	.loc 1 523 0
	movq	-48(%rbp), %rax	# md, tmp243
	movq	72(%rax), %rdx	# md_17(D)->sen2cimap, D.7447
	movl	-24(%rbp), %eax	# j, tmp244
	cltq
	addq	%rdx, %rax	# D.7447, D.7447
	movzbl	(%rax), %eax	# *_69, D.7449
	movsbl	%al, %eax	# D.7449, tmp245
	movl	%eax, -20(%rbp)	# tmp245, curPhn
	.loc 1 525 0
	movq	-48(%rbp), %rax	# md, tmp246
	movq	72(%rax), %rax	# md_17(D)->sen2cimap, D.7447
	movl	-24(%rbp), %edx	# j, tmp247
	movslq	%edx, %rdx	# tmp247, D.7448
	addq	$1, %rdx	#, D.7448
	addq	%rdx, %rax	# D.7448, D.7447
	movzbl	(%rax), %eax	# *_75, D.7449
	movsbl	%al, %eax	# D.7449, D.7446
	cmpl	-20(%rbp), %eax	# curPhn, D.7446
	je	.L71	#,
	.loc 1 526 0
	movq	-56(%rbp), %rax	# kb, tmp248
	movq	128(%rax), %rax	# kb_31(D)->phn_heur_list, D.7450
	movl	-20(%rbp), %edx	# curPhn, tmp249
	movslq	%edx, %rdx	# tmp249, D.7444
	salq	$2, %rdx	#, D.7444
	leaq	(%rax,%rdx), %rbx	#, D.7450
	movq	-56(%rbp), %rax	# kb, tmp250
	movq	128(%rax), %rax	# kb_31(D)->phn_heur_list, D.7450
	movl	-20(%rbp), %edx	# curPhn, tmp251
	movslq	%edx, %rdx	# tmp251, D.7444
	salq	$2, %rdx	#, D.7444
	addq	%rdx, %rax	# D.7444, D.7450
	movl	(%rax), %eax	# *_85, D.7446
	movl	-16(%rbp), %edx	# curFrmPhnVar, tmp252
	movl	%edx, %esi	# tmp252,
	movl	%eax, %edi	# D.7446,
	call	NO_UFLOW_ADD	#
	movl	%eax, (%rbx)	# D.7446, *_81
	.loc 1 527 0
	movl	$-2147483648, -16(%rbp)	#, curFrmPhnVar
.L71:
	.loc 1 519 0
	addl	$1, -24(%rbp)	#, j
.L69:
	.loc 1 519 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# md, tmp253
	movq	64(%rax), %rax	# md_17(D)->cd2cisen, D.7443
	movl	-24(%rbp), %edx	# j, tmp254
	movslq	%edx, %rdx	# tmp254, D.7444
	addq	%rdx, %rdx	# D.7444
	addq	%rdx, %rax	# D.7444, D.7443
	movzwl	(%rax), %eax	# *_46, D.7445
	cwtl
	cmpl	-24(%rbp), %eax	# j, D.7446
	je	.L72	#,
	.loc 1 516 0 is_stmt 1
	addl	$1, -28(%rbp)	#, i
.L68:
	.loc 1 516 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# kb, tmp255
	movl	196(%rax), %eax	# kb_31(D)->pl_window_effective, D.7446
	cmpl	-28(%rbp), %eax	# i, D.7446
	jg	.L73	#,
	jmp	.L64	#
.L67:
	.loc 1 531 0 is_stmt 1
	cmpl	$2, -60(%rbp)	#, heutype
	jne	.L75	#,
	.loc 1 532 0
	movq	-56(%rbp), %rax	# kb, tmp256
	movl	192(%rax), %eax	# kb_31(D)->pl_window_start, tmp257
	movl	%eax, -28(%rbp)	# tmp257, i
	jmp	.L76	#
.L80:
	.loc 1 533 0
	movl	$0, -20(%rbp)	#, curPhn
	.loc 1 534 0
	movl	$-2147483648, -16(%rbp)	#, curFrmPhnVar
	.loc 1 535 0
	movl	$0, -24(%rbp)	#, j
	jmp	.L77	#
.L79:
	.loc 1 536 0
	movq	-56(%rbp), %rax	# kb, tmp258
	movq	112(%rax), %rax	# kb_31(D)->cache_ci_senscr, D.7451
	movl	-28(%rbp), %edx	# i, tmp259
	movslq	%edx, %rdx	# tmp259, D.7444
	salq	$3, %rdx	#, D.7444
	addq	%rdx, %rax	# D.7444, D.7451
	movq	(%rax), %rax	# *_105, D.7450
	movl	-24(%rbp), %edx	# j, tmp260
	movslq	%edx, %rdx	# tmp260, D.7444
	salq	$2, %rdx	#, D.7444
	addq	%rdx, %rax	# D.7444, D.7450
	movl	(%rax), %eax	# *_109, D.7446
	movl	-16(%rbp), %edx	# curFrmPhnVar, tmp261
	movl	%edx, %esi	# tmp261,
	movl	%eax, %edi	# D.7446,
	call	NO_UFLOW_ADD	#
	movl	%eax, -16(%rbp)	# tmp262, curFrmPhnVar
	.loc 1 537 0
	movq	-48(%rbp), %rax	# md, tmp263
	movq	72(%rax), %rdx	# md_17(D)->sen2cimap, D.7447
	movl	-24(%rbp), %eax	# j, tmp264
	cltq
	addq	%rdx, %rax	# D.7447, D.7447
	movzbl	(%rax), %eax	# *_114, D.7449
	movsbl	%al, %eax	# D.7449, tmp265
	movl	%eax, -20(%rbp)	# tmp265, curPhn
	.loc 1 540 0
	movq	-48(%rbp), %rax	# md, tmp266
	movq	72(%rax), %rax	# md_17(D)->sen2cimap, D.7447
	movl	-24(%rbp), %edx	# j, tmp267
	movslq	%edx, %rdx	# tmp267, D.7448
	addq	$1, %rdx	#, D.7448
	addq	%rdx, %rax	# D.7448, D.7447
	movzbl	(%rax), %eax	# *_120, D.7449
	movsbl	%al, %eax	# D.7449, D.7446
	cmpl	-20(%rbp), %eax	# curPhn, D.7446
	je	.L78	#,
	.loc 1 541 0
	movl	-16(%rbp), %eax	# curFrmPhnVar, tmp271
	cltd
	idivl	-12(%rbp)	# nState
	movl	%eax, -16(%rbp)	# tmp269, curFrmPhnVar
	.loc 1 542 0
	movq	-56(%rbp), %rax	# kb, tmp272
	movq	128(%rax), %rax	# kb_31(D)->phn_heur_list, D.7450
	movl	-20(%rbp), %edx	# curPhn, tmp273
	movslq	%edx, %rdx	# tmp273, D.7444
	salq	$2, %rdx	#, D.7444
	leaq	(%rax,%rdx), %rbx	#, D.7450
	movq	-56(%rbp), %rax	# kb, tmp274
	movq	128(%rax), %rax	# kb_31(D)->phn_heur_list, D.7450
	movl	-20(%rbp), %edx	# curPhn, tmp275
	movslq	%edx, %rdx	# tmp275, D.7444
	salq	$2, %rdx	#, D.7444
	addq	%rdx, %rax	# D.7444, D.7450
	movl	(%rax), %eax	# *_131, D.7446
	movl	-16(%rbp), %edx	# curFrmPhnVar, tmp276
	movl	%edx, %esi	# tmp276,
	movl	%eax, %edi	# D.7446,
	call	NO_UFLOW_ADD	#
	movl	%eax, (%rbx)	# D.7446, *_127
	.loc 1 544 0
	movl	$-2147483648, -16(%rbp)	#, curFrmPhnVar
.L78:
	.loc 1 535 0
	addl	$1, -24(%rbp)	#, j
.L77:
	.loc 1 535 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# md, tmp277
	movq	64(%rax), %rax	# md_17(D)->cd2cisen, D.7443
	movl	-24(%rbp), %edx	# j, tmp278
	movslq	%edx, %rdx	# tmp278, D.7444
	addq	%rdx, %rdx	# D.7444
	addq	%rdx, %rax	# D.7444, D.7443
	movzwl	(%rax), %eax	# *_99, D.7445
	cwtl
	cmpl	-24(%rbp), %eax	# j, D.7446
	je	.L79	#,
	.loc 1 532 0 is_stmt 1
	addl	$1, -28(%rbp)	#, i
.L76:
	.loc 1 532 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# kb, tmp279
	movl	196(%rax), %eax	# kb_31(D)->pl_window_effective, D.7446
	cmpl	-28(%rbp), %eax	# i, D.7446
	jg	.L80	#,
	jmp	.L64	#
.L75:
	.loc 1 548 0 is_stmt 1
	cmpl	$3, -60(%rbp)	#, heutype
	jne	.L64	#,
	.loc 1 549 0
	movq	-56(%rbp), %rax	# kb, tmp280
	movl	192(%rax), %eax	# kb_31(D)->pl_window_start, tmp281
	movl	%eax, -28(%rbp)	# tmp281, i
	jmp	.L81	#
.L88:
	.loc 1 550 0
	movl	$0, -20(%rbp)	#, curPhn
	.loc 1 551 0
	movl	$-2147483648, -16(%rbp)	#, curFrmPhnVar
	.loc 1 552 0
	movl	$0, -24(%rbp)	#, j
	jmp	.L82	#
.L87:
	.loc 1 553 0
	cmpl	$0, -20(%rbp)	#, curPhn
	je	.L83	#,
	.loc 1 553 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# md, tmp282
	movq	72(%rax), %rax	# md_17(D)->sen2cimap, D.7447
	movl	-24(%rbp), %edx	# j, tmp283
	movslq	%edx, %rdx	# tmp283, D.7448
	subq	$1, %rdx	#, D.7448
	addq	%rdx, %rax	# D.7448, D.7447
	movzbl	(%rax), %eax	# *_151, D.7449
	movsbl	%al, %eax	# D.7449, D.7446
	cmpl	-20(%rbp), %eax	# curPhn, D.7446
	je	.L84	#,
.L83:
	.loc 1 554 0 is_stmt 1
	movq	-56(%rbp), %rax	# kb, tmp284
	movq	128(%rax), %rax	# kb_31(D)->phn_heur_list, D.7450
	movl	-20(%rbp), %edx	# curPhn, tmp285
	movslq	%edx, %rdx	# tmp285, D.7444
	salq	$2, %rdx	#, D.7444
	leaq	(%rax,%rdx), %rbx	#, D.7450
	movq	-56(%rbp), %rax	# kb, tmp286
	movq	112(%rax), %rax	# kb_31(D)->cache_ci_senscr, D.7451
	movl	-28(%rbp), %edx	# i, tmp287
	movslq	%edx, %rdx	# tmp287, D.7444
	salq	$3, %rdx	#, D.7444
	addq	%rdx, %rax	# D.7444, D.7451
	movq	(%rax), %rax	# *_161, D.7450
	movl	-24(%rbp), %edx	# j, tmp288
	movslq	%edx, %rdx	# tmp288, D.7444
	salq	$2, %rdx	#, D.7444
	addq	%rdx, %rax	# D.7444, D.7450
	movl	(%rax), %edx	# *_165, D.7446
	movq	-56(%rbp), %rax	# kb, tmp289
	movq	128(%rax), %rax	# kb_31(D)->phn_heur_list, D.7450
	movl	-20(%rbp), %ecx	# curPhn, tmp290
	movslq	%ecx, %rcx	# tmp290, D.7444
	salq	$2, %rcx	#, D.7444
	addq	%rcx, %rax	# D.7444, D.7450
	movl	(%rax), %eax	# *_170, D.7446
	movl	%edx, %esi	# D.7446,
	movl	%eax, %edi	# D.7446,
	call	NO_UFLOW_ADD	#
	movl	%eax, (%rbx)	# D.7446, *_157
.L84:
	.loc 1 556 0
	movq	-48(%rbp), %rax	# md, tmp291
	movq	72(%rax), %rdx	# md_17(D)->sen2cimap, D.7447
	movl	-24(%rbp), %eax	# j, tmp292
	cltq
	addq	%rdx, %rax	# D.7447, D.7447
	movzbl	(%rax), %eax	# *_175, D.7449
	movsbl	%al, %eax	# D.7449, tmp293
	movl	%eax, -20(%rbp)	# tmp293, curPhn
	.loc 1 558 0
	movq	-56(%rbp), %rax	# kb, tmp294
	movq	112(%rax), %rax	# kb_31(D)->cache_ci_senscr, D.7451
	movl	-28(%rbp), %edx	# i, tmp295
	movslq	%edx, %rdx	# tmp295, D.7444
	salq	$3, %rdx	#, D.7444
	addq	%rdx, %rax	# D.7444, D.7451
	movq	(%rax), %rax	# *_181, D.7450
	movl	-24(%rbp), %edx	# j, tmp296
	movslq	%edx, %rdx	# tmp296, D.7444
	salq	$2, %rdx	#, D.7444
	addq	%rdx, %rax	# D.7444, D.7450
	movl	(%rax), %eax	# *_185, D.7446
	cmpl	-16(%rbp), %eax	# curFrmPhnVar, D.7446
	jle	.L85	#,
	.loc 1 559 0
	movq	-56(%rbp), %rax	# kb, tmp297
	movq	112(%rax), %rax	# kb_31(D)->cache_ci_senscr, D.7451
	movl	-28(%rbp), %edx	# i, tmp298
	movslq	%edx, %rdx	# tmp298, D.7444
	salq	$3, %rdx	#, D.7444
	addq	%rdx, %rax	# D.7444, D.7451
	movq	(%rax), %rax	# *_190, D.7450
	movl	-24(%rbp), %edx	# j, tmp299
	movslq	%edx, %rdx	# tmp299, D.7444
	salq	$2, %rdx	#, D.7444
	addq	%rdx, %rax	# D.7444, D.7450
	movl	(%rax), %eax	# *_194, tmp300
	movl	%eax, -16(%rbp)	# tmp300, curFrmPhnVar
.L85:
	.loc 1 562 0
	movq	-48(%rbp), %rax	# md, tmp301
	movq	72(%rax), %rdx	# md_17(D)->sen2cimap, D.7447
	movl	-24(%rbp), %eax	# j, tmp302
	cltq
	addq	%rdx, %rax	# D.7447, D.7447
	movzbl	(%rax), %edx	# *_198, D.7449
	movq	-48(%rbp), %rax	# md, tmp303
	movq	72(%rax), %rax	# md_17(D)->sen2cimap, D.7447
	movl	-24(%rbp), %ecx	# j, tmp304
	movslq	%ecx, %rcx	# tmp304, D.7448
	addq	$1, %rcx	#, D.7448
	addq	%rcx, %rax	# D.7448, D.7447
	movzbl	(%rax), %eax	# *_203, D.7449
	cmpb	%al, %dl	# D.7449, D.7449
	je	.L86	#,
	.loc 1 563 0
	movq	-56(%rbp), %rax	# kb, tmp305
	movq	128(%rax), %rax	# kb_31(D)->phn_heur_list, D.7450
	movl	-20(%rbp), %edx	# curPhn, tmp306
	movslq	%edx, %rdx	# tmp306, D.7444
	salq	$2, %rdx	#, D.7444
	leaq	(%rax,%rdx), %rbx	#, D.7450
	movq	-56(%rbp), %rax	# kb, tmp307
	movq	128(%rax), %rax	# kb_31(D)->phn_heur_list, D.7450
	movl	-20(%rbp), %edx	# curPhn, tmp308
	movslq	%edx, %rdx	# tmp308, D.7444
	salq	$2, %rdx	#, D.7444
	addq	%rdx, %rax	# D.7444, D.7450
	movl	(%rax), %eax	# *_212, D.7446
	movl	-16(%rbp), %edx	# curFrmPhnVar, tmp309
	movl	%edx, %esi	# tmp309,
	movl	%eax, %edi	# D.7446,
	call	NO_UFLOW_ADD	#
	movl	%eax, (%rbx)	# D.7446, *_208
	.loc 1 564 0
	movl	$-2147483648, -16(%rbp)	#, curFrmPhnVar
.L86:
	.loc 1 552 0
	addl	$1, -24(%rbp)	#, j
.L82:
	.loc 1 552 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# md, tmp310
	movq	64(%rax), %rax	# md_17(D)->cd2cisen, D.7443
	movl	-24(%rbp), %edx	# j, tmp311
	movslq	%edx, %rdx	# tmp311, D.7444
	addq	%rdx, %rdx	# D.7444
	addq	%rdx, %rax	# D.7444, D.7443
	movzwl	(%rax), %eax	# *_145, D.7445
	cwtl
	cmpl	-24(%rbp), %eax	# j, D.7446
	je	.L87	#,
	.loc 1 549 0 is_stmt 1
	addl	$1, -28(%rbp)	#, i
.L81:
	.loc 1 549 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# kb, tmp312
	movl	196(%rax), %eax	# kb_31(D)->pl_window_effective, D.7446
	cmpl	-28(%rbp), %eax	# i, D.7446
	jg	.L88	#,
.L64:
	.loc 1 577 0 is_stmt 1
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	computePhnHeur, .-computePhnHeur
	.section	.rodata
.LC63:
	.string	"-pheurtype"
.LC64:
	.string	"Fr %d Lextree %d #HMM %d\n"
	.align 8
.LC65:
	.string	"***ERROR*** Fr %d, best HMM score > 0 (%d); int32 wraparound?\n"
	.text
	.globl	utt_decode_block
	.type	utt_decode_block, @function
utt_decode_block:
.LFB9:
	.loc 1 902 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$232, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)	# block_feat, block_feat
	movl	%esi, -172(%rbp)	# block_nfeatvec, block_nfeatvec
	movq	%rdx, -184(%rbp)	# curfrm, curfrm
	movq	%rcx, -192(%rbp)	# kb, kb
	movl	%r8d, -176(%rbp)	# maxwpf, maxwpf
	movl	%r9d, -196(%rbp)	# maxhistpf, maxhistpf
	.loc 1 919 0
	movl	$.LC63, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %eax	# MEM[(int32 *)_31], tmp389
	movl	%eax, -112(%rbp)	# tmp389, pheurtype
	.loc 1 921 0
	movq	-192(%rbp), %rax	# kb, tmp390
	movq	(%rax), %rax	# kb_33(D)->kbcore, tmp391
	movq	%rax, -88(%rbp)	# tmp391, kbcore
	.loc 1 922 0
	movq	-88(%rbp), %rax	# kbcore, tmp392
	movq	8(%rax), %rax	# kbcore_34->mdef, tmp393
	movq	%rax, -80(%rbp)	# tmp393, mdef
	.loc 1 923 0
	movq	-88(%rbp), %rax	# kbcore, tmp394
	movq	16(%rax), %rax	# kbcore_34->dict, tmp395
	movq	%rax, -72(%rbp)	# tmp395, dict
	.loc 1 924 0
	movq	-88(%rbp), %rax	# kbcore, tmp396
	movq	24(%rax), %rax	# kbcore_34->dict2pid, tmp397
	movq	%rax, -64(%rbp)	# tmp397, d2p
	.loc 1 925 0
	movq	-88(%rbp), %rax	# kbcore, tmp398
	movq	64(%rax), %rax	# kbcore_34->mgau, tmp399
	movq	%rax, -56(%rbp)	# tmp399, mgau
	.loc 1 926 0
	movq	-88(%rbp), %rax	# kbcore, tmp400
	movq	72(%rax), %rax	# kbcore_34->svq, tmp401
	movq	%rax, -48(%rbp)	# tmp401, svq
	.loc 1 927 0
	movq	-88(%rbp), %rax	# kbcore, tmp402
	movq	80(%rax), %rax	# kbcore_34->gs, tmp403
	movq	%rax, -40(%rbp)	# tmp403, gs
	.loc 1 929 0
	movq	-184(%rbp), %rax	# curfrm, tmp404
	movl	(%rax), %eax	# *curfrm_41(D), tmp405
	movl	%eax, -136(%rbp)	# tmp405, frmno
	.loc 1 931 0
	movl	$0, -152(%rbp)	#, i
	jmp	.L90	#
.L91:
	.loc 1 932 0 discriminator 2
	movq	-192(%rbp), %rax	# kb, tmp406
	movq	232(%rax), %rax	# kb_33(D)->hmm_hist, D.7454
	movl	-152(%rbp), %edx	# i, tmp407
	movslq	%edx, %rdx	# tmp407, D.7455
	salq	$2, %rdx	#, D.7455
	addq	%rdx, %rax	# D.7455, D.7454
	movl	$0, (%rax)	#, *_48
	.loc 1 931 0 discriminator 2
	addl	$1, -152(%rbp)	#, i
.L90:
	.loc 1 931 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# kb, tmp408
	movl	240(%rax), %eax	# kb_33(D)->hmm_hist_bins, D.7453
	cmpl	-152(%rbp), %eax	# i, D.7453
	jg	.L91	#,
	.loc 1 933 0 is_stmt 1
	movl	$0, -140(%rbp)	#, n_hmm_eval
	.loc 1 935 0
	movq	-192(%rbp), %rax	# kb, tmp409
	addq	$248, %rax	#, D.7456
	movq	%rax, %rdi	# D.7456,
	call	ptmr_start	#
	.loc 1 938 0
	movq	-192(%rbp), %rax	# kb, tmp410
	movl	188(%rax), %edx	# kb_33(D)->pl_window, D.7453
	movl	-172(%rbp), %eax	# block_nfeatvec, tmp411
	cmpl	%eax, %edx	# tmp411, D.7453
	cmovg	%eax, %edx	# D.7453,, tmp411, D.7453
	movq	-192(%rbp), %rax	# kb, tmp412
	movl	%edx, 196(%rax)	# D.7453, kb_33(D)->pl_window_effective
	.loc 1 939 0
	movq	-192(%rbp), %rax	# kb, tmp413
	movl	$0, 192(%rax)	#, kb_33(D)->pl_window_start
	.loc 1 941 0
	movl	$0, -116(%rbp)	#, f
	jmp	.L92	#
.L96:
	.loc 1 943 0
	movq	-192(%rbp), %rax	# kb, tmp414
	movq	120(%rax), %rax	# kb_33(D)->cache_best_list, D.7454
	movl	-116(%rbp), %edx	# f, tmp415
	movslq	%edx, %rdx	# tmp415, D.7455
	salq	$2, %rdx	#, D.7455
	addq	%rdx, %rax	# D.7455, D.7454
	movl	$-2147483648, (%rax)	#, *_60
	.loc 1 944 0
	movq	-192(%rbp), %rax	# kb, tmp416
	movq	112(%rax), %rax	# kb_33(D)->cache_ci_senscr, D.7457
	movl	-116(%rbp), %edx	# f, tmp417
	movslq	%edx, %rdx	# tmp417, D.7455
	salq	$3, %rdx	#, D.7455
	addq	%rdx, %rax	# D.7455, D.7457
	movq	(%rax), %rdx	# *_64, D.7454
	movl	-116(%rbp), %eax	# f, tmp418
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7455
	movq	-168(%rbp), %rax	# block_feat, tmp419
	addq	%rcx, %rax	# D.7455, D.7458
	movq	(%rax), %rax	# *_69, D.7459
	movq	(%rax), %rsi	# *_70, D.7460
	movq	-192(%rbp), %rcx	# kb, tmp420
	movq	-56(%rbp), %rax	# mgau, tmp421
	movq	%rax, %rdi	# tmp421,
	call	approx_cont_mgau_ci_eval	#
	.loc 1 946 0
	movl	$0, -152(%rbp)	#, i
	jmp	.L93	#
.L95:
	.loc 1 947 0
	movq	-192(%rbp), %rax	# kb, tmp422
	movq	112(%rax), %rax	# kb_33(D)->cache_ci_senscr, D.7457
	movl	-116(%rbp), %edx	# f, tmp423
	movslq	%edx, %rdx	# tmp423, D.7455
	salq	$3, %rdx	#, D.7455
	addq	%rdx, %rax	# D.7455, D.7457
	movq	(%rax), %rax	# *_82, D.7454
	movl	-152(%rbp), %edx	# i, tmp424
	movslq	%edx, %rdx	# tmp424, D.7455
	salq	$2, %rdx	#, D.7455
	addq	%rdx, %rax	# D.7455, D.7454
	movl	(%rax), %edx	# *_86, D.7453
	movq	-192(%rbp), %rax	# kb, tmp425
	movq	120(%rax), %rax	# kb_33(D)->cache_best_list, D.7454
	movl	-116(%rbp), %ecx	# f, tmp426
	movslq	%ecx, %rcx	# tmp426, D.7455
	salq	$2, %rcx	#, D.7455
	addq	%rcx, %rax	# D.7455, D.7454
	movl	(%rax), %eax	# *_91, D.7453
	cmpl	%eax, %edx	# D.7453, D.7453
	jle	.L94	#,
	.loc 1 948 0
	movq	-192(%rbp), %rax	# kb, tmp427
	movq	120(%rax), %rax	# kb_33(D)->cache_best_list, D.7454
	movl	-116(%rbp), %edx	# f, tmp428
	movslq	%edx, %rdx	# tmp428, D.7455
	salq	$2, %rdx	#, D.7455
	addq	%rax, %rdx	# D.7454, D.7454
	movq	-192(%rbp), %rax	# kb, tmp429
	movq	112(%rax), %rax	# kb_33(D)->cache_ci_senscr, D.7457
	movl	-116(%rbp), %ecx	# f, tmp430
	movslq	%ecx, %rcx	# tmp430, D.7455
	salq	$3, %rcx	#, D.7455
	addq	%rcx, %rax	# D.7455, D.7457
	movq	(%rax), %rax	# *_100, D.7454
	movl	-152(%rbp), %ecx	# i, tmp431
	movslq	%ecx, %rcx	# tmp431, D.7455
	salq	$2, %rcx	#, D.7455
	addq	%rcx, %rax	# D.7455, D.7454
	movl	(%rax), %eax	# *_104, D.7453
	movl	%eax, (%rdx)	# D.7453, *_96
.L94:
	.loc 1 946 0
	addl	$1, -152(%rbp)	#, i
.L93:
	.loc 1 946 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# mdef, tmp432
	movq	64(%rax), %rax	# mdef_35->cd2cisen, D.7461
	movl	-152(%rbp), %edx	# i, tmp433
	movslq	%edx, %rdx	# tmp433, D.7455
	addq	%rdx, %rdx	# D.7455
	addq	%rdx, %rax	# D.7455, D.7461
	movzwl	(%rax), %eax	# *_76, D.7462
	cwtl
	cmpl	-152(%rbp), %eax	# i, D.7453
	je	.L95	#,
	.loc 1 941 0 is_stmt 1
	addl	$1, -116(%rbp)	#, f
.L92:
	.loc 1 941 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# kb, tmp434
	movl	196(%rax), %eax	# kb_33(D)->pl_window_effective, D.7453
	cmpl	-116(%rbp), %eax	# f, D.7453
	jg	.L96	#,
	.loc 1 952 0 is_stmt 1
	movq	-192(%rbp), %rax	# kb, tmp435
	addq	$248, %rax	#, D.7456
	movq	%rax, %rdi	# D.7456,
	call	ptmr_stop	#
	.loc 1 956 0
	movl	$0, -144(%rbp)	#, t
	jmp	.L97	#
.L142:
	.loc 1 959 0
	movq	-192(%rbp), %rax	# kb, tmp436
	addq	$248, %rax	#, D.7456
	movq	%rax, %rdi	# D.7456,
	call	ptmr_start	#
	.loc 1 964 0
	movq	-192(%rbp), %rax	# kb, tmp437
	movq	88(%rax), %rax	# kb_33(D)->sen_active, D.7454
	testq	%rax, %rax	# D.7454
	je	.L98	#,
	.loc 1 965 0
	movq	-80(%rbp), %rax	# mdef, tmp438
	movl	56(%rax), %eax	# mdef_35->n_sseq, D.7453
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7455
	movq	-192(%rbp), %rax	# kb, tmp439
	movq	72(%rax), %rax	# kb_33(D)->ssid_active, D.7454
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.7454,
	call	memset	#
	.loc 1 966 0
	movq	-64(%rbp), %rax	# d2p, tmp440
	movl	52(%rax), %eax	# d2p_37->n_comsseq, D.7453
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7455
	movq	-192(%rbp), %rax	# kb, tmp441
	movq	80(%rax), %rax	# kb_33(D)->comssid_active, D.7454
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.7454,
	call	memset	#
	.loc 1 968 0
	movl	$0, -152(%rbp)	#, i
	jmp	.L99	#
.L102:
	.loc 1 969 0
	movq	-192(%rbp), %rax	# kb, tmp442
	movl	8(%rax), %eax	# kb_33(D)->n_lextree, D.7453
	cmpl	-152(%rbp), %eax	# i, D.7453
	jle	.L100	#,
	.loc 1 969 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# kb, tmp443
	movq	16(%rax), %rax	# kb_33(D)->ugtree, D.7463
	movl	-152(%rbp), %edx	# i, tmp444
	movslq	%edx, %rdx	# tmp444, D.7455
	salq	$3, %rdx	#, D.7455
	addq	%rdx, %rax	# D.7455, D.7463
	movq	(%rax), %rax	# *_127, iftmp.31
	jmp	.L101	#
.L100:
	.loc 1 970 0 is_stmt 1 discriminator 2
	movq	-192(%rbp), %rax	# kb, tmp445
	movq	32(%rax), %rdx	# kb_33(D)->fillertree, D.7463
	movq	-192(%rbp), %rax	# kb, tmp446
	movl	8(%rax), %eax	# kb_33(D)->n_lextree, D.7453
	movl	-152(%rbp), %ecx	# i, tmp447
	subl	%eax, %ecx	# D.7453, D.7453
	movl	%ecx, %eax	# D.7453, D.7453
	cltq
	salq	$3, %rax	#, D.7455
	addq	%rdx, %rax	# D.7463, D.7463
	.loc 1 969 0 discriminator 2
	movq	(%rax), %rax	# *_134, iftmp.31
.L101:
	.loc 1 969 0 is_stmt 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.31, lextree
	.loc 1 971 0 is_stmt 1 discriminator 3
	movq	-192(%rbp), %rax	# kb, tmp448
	movq	80(%rax), %rdx	# kb_33(D)->comssid_active, D.7454
	movq	-192(%rbp), %rax	# kb, tmp449
	movq	72(%rax), %rcx	# kb_33(D)->ssid_active, D.7454
	movq	-32(%rbp), %rax	# lextree, tmp450
	movq	%rcx, %rsi	# D.7454,
	movq	%rax, %rdi	# tmp450,
	call	lextree_ssid_active	#
	.loc 1 968 0 discriminator 3
	addl	$1, -152(%rbp)	#, i
.L99:
	.loc 1 968 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# kb, tmp451
	movl	8(%rax), %eax	# kb_33(D)->n_lextree, D.7453
	addl	%eax, %eax	# D.7453
	cmpl	-152(%rbp), %eax	# i, D.7453
	jg	.L102	#,
	.loc 1 975 0 is_stmt 1
	movq	-80(%rbp), %rax	# mdef, tmp452
	movl	16(%rax), %eax	# mdef_35->n_sen, D.7453
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7455
	movq	-192(%rbp), %rax	# kb, tmp453
	movq	88(%rax), %rax	# kb_33(D)->sen_active, D.7454
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.7454,
	call	memset	#
	.loc 1 976 0
	movq	-192(%rbp), %rax	# kb, tmp454
	movq	88(%rax), %rdx	# kb_33(D)->sen_active, D.7454
	movq	-192(%rbp), %rax	# kb, tmp455
	movq	72(%rax), %rcx	# kb_33(D)->ssid_active, D.7454
	movq	-80(%rbp), %rax	# mdef, tmp456
	movq	%rcx, %rsi	# D.7454,
	movq	%rax, %rdi	# tmp456,
	call	mdef_sseq2sen_active	#
	.loc 1 979 0
	movq	-192(%rbp), %rax	# kb, tmp457
	movq	88(%rax), %rcx	# kb_33(D)->sen_active, D.7454
	movq	-192(%rbp), %rax	# kb, tmp458
	movq	80(%rax), %rdx	# kb_33(D)->comssid_active, D.7454
	movq	-80(%rbp), %rsi	# mdef, tmp459
	movq	-64(%rbp), %rax	# d2p, tmp460
	movq	%rax, %rdi	# tmp460,
	call	dict2pid_comsseq2sen_active	#
.L98:
	.loc 1 986 0
	movq	-192(%rbp), %rax	# kb, tmp461
	movq	112(%rax), %rdx	# kb_33(D)->cache_ci_senscr, D.7457
	movq	-192(%rbp), %rax	# kb, tmp462
	movl	192(%rax), %eax	# kb_33(D)->pl_window_start, D.7453
	cltq
	salq	$3, %rax	#, D.7455
	addq	%rdx, %rax	# D.7457, D.7457
	movq	(%rax), %r8	# *_152, D.7454
	movq	-192(%rbp), %rax	# kb, tmp463
	movq	152(%rax), %rax	# kb_33(D)->ascr, D.7464
	movq	(%rax), %rdi	# _154->sen, D.7454
	movq	-192(%rbp), %rax	# kb, tmp464
	movq	88(%rax), %r11	# kb_33(D)->sen_active, D.7454
	movl	-144(%rbp), %eax	# t, tmp465
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7455
	movq	-168(%rbp), %rax	# block_feat, tmp466
	addq	%rdx, %rax	# D.7455, D.7458
	movq	(%rax), %rax	# *_159, D.7459
	movq	(%rax), %r10	# *_160, D.7460
	movq	-192(%rbp), %rax	# kb, tmp467
	movq	160(%rax), %rax	# kb_33(D)->beam, D.7465
	movl	(%rax), %ecx	# _162->subvq, D.7453
	movq	-48(%rbp), %rdx	# svq, tmp468
	movq	-40(%rbp), %rsi	# gs, tmp469
	movq	-56(%rbp), %rax	# mgau, tmp470
	movl	-144(%rbp), %r9d	# t, tmp471
	movl	%r9d, 24(%rsp)	# tmp471,
	movq	-192(%rbp), %r9	# kb, tmp472
	movq	%r9, 16(%rsp)	# tmp472,
	movq	%r8, 8(%rsp)	# D.7454,
	movq	%rdi, (%rsp)	# D.7454,
	movq	%r11, %r9	# D.7454,
	movq	%r10, %r8	# D.7460,
	movq	%rax, %rdi	# tmp470,
	call	approx_cont_mgau_frame_eval	#
	.loc 1 987 0
	movq	-192(%rbp), %rax	# kb, tmp473
	movl	220(%rax), %edx	# kb_33(D)->utt_sen_eval, D.7453
	movq	-56(%rbp), %rax	# mgau, tmp474
	movl	32(%rax), %eax	# mgau_38->frm_sen_eval, D.7453
	addl	%eax, %edx	# D.7453, D.7453
	movq	-192(%rbp), %rax	# kb, tmp475
	movl	%edx, 220(%rax)	# D.7453, kb_33(D)->utt_sen_eval
	.loc 1 988 0
	movq	-192(%rbp), %rax	# kb, tmp476
	movl	224(%rax), %edx	# kb_33(D)->utt_gau_eval, D.7453
	movq	-56(%rbp), %rax	# mgau, tmp477
	movl	36(%rax), %eax	# mgau_38->frm_gau_eval, D.7453
	addl	%eax, %edx	# D.7453, D.7453
	movq	-192(%rbp), %rax	# kb, tmp478
	movl	%edx, 224(%rax)	# D.7453, kb_33(D)->utt_gau_eval
	.loc 1 991 0
	movq	-192(%rbp), %rax	# kb, tmp479
	movq	152(%rax), %rax	# kb_33(D)->ascr, D.7464
	movq	8(%rax), %rdx	# _170->comsen, D.7454
	movq	-192(%rbp), %rax	# kb, tmp480
	movq	152(%rax), %rax	# kb_33(D)->ascr, D.7464
	movq	(%rax), %rcx	# _172->sen, D.7454
	movq	-88(%rbp), %rax	# kbcore, tmp481
	movq	24(%rax), %rax	# kbcore_34->dict2pid, D.7466
	movq	%rcx, %rsi	# D.7454,
	movq	%rax, %rdi	# D.7466,
	call	dict2pid_comsenscr	#
	.loc 1 992 0
	movq	-192(%rbp), %rax	# kb, tmp482
	addq	$248, %rax	#, D.7456
	movq	%rax, %rdi	# D.7456,
	call	ptmr_stop	#
	.loc 1 995 0
	movq	-192(%rbp), %rax	# kb, tmp483
	addq	$304, %rax	#, D.7456
	movq	%rax, %rdi	# D.7456,
	call	ptmr_start	#
	.loc 1 1002 0
	cmpl	$0, -112(%rbp)	#, pheurtype
	je	.L103	#,
	.loc 1 1003 0
	movl	-112(%rbp), %edx	# pheurtype, tmp484
	movq	-192(%rbp), %rcx	# kb, tmp485
	movq	-80(%rbp), %rax	# mdef, tmp486
	movq	%rcx, %rsi	# tmp485,
	movq	%rax, %rdi	# tmp486,
	call	computePhnHeur	#
.L103:
	.loc 1 1020 0
	movl	$-2147483648, -160(%rbp)	#, besthmmscr
	.loc 1 1021 0
	movl	$-2147483648, -156(%rbp)	#, bestwordscr
	.loc 1 1022 0
	movl	$0, -132(%rbp)	#, frm_nhmm
	.loc 1 1023 0
	movl	$0, -152(%rbp)	#, i
	jmp	.L104	#
.L110:
	.loc 1 1024 0
	movq	-192(%rbp), %rax	# kb, tmp487
	movl	8(%rax), %eax	# kb_33(D)->n_lextree, D.7453
	cmpl	-152(%rbp), %eax	# i, D.7453
	jle	.L105	#,
	.loc 1 1024 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# kb, tmp488
	movq	16(%rax), %rax	# kb_33(D)->ugtree, D.7463
	movl	-152(%rbp), %edx	# i, tmp489
	movslq	%edx, %rdx	# tmp489, D.7455
	salq	$3, %rdx	#, D.7455
	addq	%rdx, %rax	# D.7455, D.7463
	movq	(%rax), %rax	# *_187, iftmp.32
	jmp	.L106	#
.L105:
	.loc 1 1025 0 is_stmt 1 discriminator 2
	movq	-192(%rbp), %rax	# kb, tmp490
	movq	32(%rax), %rdx	# kb_33(D)->fillertree, D.7463
	movq	-192(%rbp), %rax	# kb, tmp491
	movl	8(%rax), %eax	# kb_33(D)->n_lextree, D.7453
	movl	-152(%rbp), %ecx	# i, tmp492
	subl	%eax, %ecx	# D.7453, D.7453
	movl	%ecx, %eax	# D.7453, D.7453
	cltq
	salq	$3, %rax	#, D.7455
	addq	%rdx, %rax	# D.7463, D.7463
	.loc 1 1024 0 discriminator 2
	movq	(%rax), %rax	# *_194, iftmp.32
.L106:
	.loc 1 1024 0 is_stmt 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.32, lextree
	.loc 1 1027 0 is_stmt 1 discriminator 3
	cmpq	$0, 32(%rbp)	#, hmmdumpfp
	je	.L107	#,
	.loc 1 1028 0
	movq	-32(%rbp), %rax	# lextree, tmp493
	movl	48(%rax), %esi	# lextree_196->n_active, D.7453
	movl	-152(%rbp), %ecx	# i, tmp494
	movl	-136(%rbp), %edx	# frmno, tmp495
	movq	32(%rbp), %rax	# hmmdumpfp, tmp496
	movl	%esi, %r8d	# D.7453,
	movl	$.LC64, %esi	#,
	movq	%rax, %rdi	# tmp496,
	movl	$0, %eax	#,
	call	fprintf	#
.L107:
	.loc 1 1030 0
	movq	-192(%rbp), %rax	# kb, tmp497
	movq	152(%rax), %rdx	# kb_33(D)->ascr, D.7464
	movq	32(%rbp), %rdi	# hmmdumpfp, tmp498
	movl	-136(%rbp), %ecx	# frmno, tmp499
	movq	-88(%rbp), %rsi	# kbcore, tmp500
	movq	-32(%rbp), %rax	# lextree, tmp501
	movq	%rdi, %r8	# tmp498,
	movq	%rax, %rdi	# tmp501,
	call	lextree_hmm_eval	#
	.loc 1 1032 0
	movq	-32(%rbp), %rax	# lextree, tmp502
	movl	56(%rax), %eax	# lextree_196->best, D.7453
	cmpl	-160(%rbp), %eax	# besthmmscr, D.7453
	jle	.L108	#,
	.loc 1 1033 0
	movq	-32(%rbp), %rax	# lextree, tmp503
	movl	56(%rax), %eax	# lextree_196->best, tmp504
	movl	%eax, -160(%rbp)	# tmp504, besthmmscr
.L108:
	.loc 1 1034 0
	movq	-32(%rbp), %rax	# lextree, tmp505
	movl	60(%rax), %eax	# lextree_196->wbest, D.7453
	cmpl	-156(%rbp), %eax	# bestwordscr, D.7453
	jle	.L109	#,
	.loc 1 1035 0
	movq	-32(%rbp), %rax	# lextree, tmp506
	movl	60(%rax), %eax	# lextree_196->wbest, tmp507
	movl	%eax, -156(%rbp)	# tmp507, bestwordscr
.L109:
	.loc 1 1037 0
	movq	-32(%rbp), %rax	# lextree, tmp508
	movl	48(%rax), %eax	# lextree_196->n_active, D.7453
	addl	%eax, -140(%rbp)	# D.7453, n_hmm_eval
	.loc 1 1038 0
	movq	-32(%rbp), %rax	# lextree, tmp509
	movl	48(%rax), %eax	# lextree_196->n_active, D.7453
	addl	%eax, -132(%rbp)	# D.7453, frm_nhmm
	.loc 1 1023 0
	addl	$1, -152(%rbp)	#, i
.L104:
	.loc 1 1023 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# kb, tmp510
	movl	8(%rax), %eax	# kb_33(D)->n_lextree, D.7453
	addl	%eax, %eax	# D.7453
	cmpl	-152(%rbp), %eax	# i, D.7453
	jg	.L110	#,
	.loc 1 1040 0 is_stmt 1
	cmpl	$0, -160(%rbp)	#, besthmmscr
	jle	.L111	#,
	.loc 1 1041 0
	movl	$.LC9, %edx	#,
	movl	$1041, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movl	-160(%rbp), %edx	# besthmmscr, tmp511
	movl	-136(%rbp), %eax	# frmno, tmp512
	movl	%eax, %esi	# tmp512,
	movl	$.LC65, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
.L111:
	.loc 1 1045 0
	movq	-192(%rbp), %rax	# kb, tmp513
	movq	232(%rax), %rcx	# kb_33(D)->hmm_hist, D.7454
	movq	-192(%rbp), %rax	# kb, tmp514
	movl	244(%rax), %ebx	# kb_33(D)->hmm_hist_binsize, D.7453
	movl	-132(%rbp), %eax	# frm_nhmm, tmp517
	cltd
	idivl	%ebx	# D.7453
	cltq
	salq	$2, %rax	#, D.7455
	addq	%rcx, %rax	# D.7454, D.7454
	movl	(%rax), %edx	# *_214, D.7453
	addl	$1, %edx	#, D.7453
	movl	%edx, (%rax)	# D.7453, *_214
	.loc 1 1050 0
	movl	16(%rbp), %eax	# maxhmmpf, tmp518
	sarl	%eax	# D.7453
	movl	%eax, %edx	# D.7453, D.7453
	movl	16(%rbp), %eax	# maxhmmpf, tmp519
	addl	%edx, %eax	# D.7453, D.7453
	cmpl	-132(%rbp), %eax	# frm_nhmm, D.7453
	jge	.L112	#,
.LBB5:
	.loc 1 1054 0
	movl	$1000, -108(%rbp)	#, nbin
	.loc 1 1055 0
	movq	-192(%rbp), %rax	# kb, tmp520
	movq	160(%rax), %rax	# kb_33(D)->beam, D.7465
	movl	4(%rax), %eax	# _221->hmm, D.7453
	negl	%eax	# D.7453
	cltd
	idivl	-108(%rbp)	# nbin
	movl	%eax, -104(%rbp)	# tmp522, bw
	.loc 1 1056 0
	movl	-108(%rbp), %eax	# nbin, tmp524
	cltq
	movl	$1056, %ecx	#,
	movl	$.LC10, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.7455,
	call	__ckd_calloc__	#
	movq	%rax, -24(%rbp)	# tmp525, bin
	.loc 1 1058 0
	movl	$0, -152(%rbp)	#, i
	jmp	.L113	#
.L116:
	.loc 1 1059 0
	movq	-192(%rbp), %rax	# kb, tmp526
	movl	8(%rax), %eax	# kb_33(D)->n_lextree, D.7453
	.loc 1 1060 0
	cmpl	-152(%rbp), %eax	# i, D.7453
	jle	.L114	#,
	.loc 1 1060 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# kb, tmp527
	movq	16(%rax), %rax	# kb_33(D)->ugtree, D.7463
	movl	-152(%rbp), %edx	# i, tmp528
	movslq	%edx, %rdx	# tmp528, D.7455
	salq	$3, %rdx	#, D.7455
	addq	%rdx, %rax	# D.7455, D.7463
	movq	(%rax), %rax	# *_234, iftmp.33
	jmp	.L115	#
.L114:
	.loc 1 1060 0 discriminator 2
	movq	-192(%rbp), %rax	# kb, tmp529
	movq	32(%rax), %rdx	# kb_33(D)->fillertree, D.7463
	movq	-192(%rbp), %rax	# kb, tmp530
	movl	8(%rax), %eax	# kb_33(D)->n_lextree, D.7453
	movl	-152(%rbp), %ecx	# i, tmp531
	subl	%eax, %ecx	# D.7453, D.7453
	movl	%ecx, %eax	# D.7453, D.7453
	cltq
	salq	$3, %rax	#, D.7455
	addq	%rdx, %rax	# D.7463, D.7463
	movq	(%rax), %rax	# *_241, iftmp.33
.L115:
	.loc 1 1059 0 is_stmt 1
	movq	%rax, -32(%rbp)	# iftmp.33, lextree
	.loc 1 1062 0
	movl	-104(%rbp), %edi	# bw, tmp532
	movl	-108(%rbp), %ecx	# nbin, tmp533
	movq	-24(%rbp), %rdx	# bin, tmp534
	movl	-160(%rbp), %esi	# besthmmscr, tmp535
	movq	-32(%rbp), %rax	# lextree, tmp536
	movl	%edi, %r8d	# tmp532,
	movq	%rax, %rdi	# tmp536,
	call	lextree_hmm_histbin	#
	.loc 1 1058 0
	addl	$1, -152(%rbp)	#, i
.L113:
	.loc 1 1058 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# kb, tmp537
	movl	8(%rax), %eax	# kb_33(D)->n_lextree, D.7453
	addl	%eax, %eax	# D.7453
	cmpl	-152(%rbp), %eax	# i, D.7453
	jg	.L116	#,
	.loc 1 1065 0 is_stmt 1
	movl	$0, -152(%rbp)	#, i
	movl	$0, -148(%rbp)	#, j
	jmp	.L117	#
.L119:
	.loc 1 1065 0 is_stmt 0 discriminator 1
	addl	$1, -152(%rbp)	#, i
	movl	-152(%rbp), %eax	# i, tmp538
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7455
	movq	-24(%rbp), %rax	# bin, tmp539
	addq	%rdx, %rax	# D.7455, D.7454
	movl	(%rax), %eax	# *_250, D.7453
	addl	%eax, -148(%rbp)	# D.7453, j
.L117:
	movl	-152(%rbp), %eax	# i, tmp540
	cmpl	-108(%rbp), %eax	# nbin, tmp540
	jge	.L118	#,
	.loc 1 1065 0 discriminator 2
	movl	-148(%rbp), %eax	# j, tmp541
	cmpl	16(%rbp), %eax	# maxhmmpf, tmp541
	jl	.L119	#,
.L118:
	.loc 1 1066 0 is_stmt 1
	movq	-24(%rbp), %rax	# bin, tmp542
	movq	%rax, %rdi	# tmp542,
	call	ckd_free	#
	.loc 1 1069 0
	movl	-152(%rbp), %eax	# i, tmp543
	imull	-104(%rbp), %eax	# bw, D.7453
	negl	%eax	# tmp544
	movl	%eax, -128(%rbp)	# tmp544, hb
	.loc 1 1070 0
	movq	-192(%rbp), %rax	# kb, tmp545
	movq	160(%rax), %rax	# kb_33(D)->beam, D.7465
	movl	8(%rax), %edx	# _255->ptrans, D.7453
	movl	-128(%rbp), %eax	# hb, tmp547
	cmpl	%eax, %edx	# tmp547, D.7453
	cmovge	%edx, %eax	# D.7453,, tmp546
	movl	%eax, -124(%rbp)	# tmp546, pb
	.loc 1 1071 0
	movq	-192(%rbp), %rax	# kb, tmp548
	movq	160(%rax), %rax	# kb_33(D)->beam, D.7465
	movl	12(%rax), %edx	# _258->word, D.7453
	movl	-128(%rbp), %eax	# hb, tmp550
	cmpl	%eax, %edx	# tmp550, D.7453
	cmovge	%edx, %eax	# D.7453,, tmp549
	movl	%eax, -120(%rbp)	# tmp549, wb
.LBE5:
	jmp	.L120	#
.L112:
	.loc 1 1073 0
	movq	-192(%rbp), %rax	# kb, tmp551
	movq	160(%rax), %rax	# kb_33(D)->beam, D.7465
	movl	4(%rax), %eax	# _261->hmm, tmp552
	movl	%eax, -128(%rbp)	# tmp552, hb
	.loc 1 1074 0
	movq	-192(%rbp), %rax	# kb, tmp553
	movq	160(%rax), %rax	# kb_33(D)->beam, D.7465
	movl	8(%rax), %eax	# _263->ptrans, tmp554
	movl	%eax, -124(%rbp)	# tmp554, pb
	.loc 1 1075 0
	movq	-192(%rbp), %rax	# kb, tmp555
	movq	160(%rax), %rax	# kb_33(D)->beam, D.7465
	movl	12(%rax), %eax	# _265->word, tmp556
	movl	%eax, -120(%rbp)	# tmp556, wb
.L120:
	.loc 1 1078 0
	movq	-192(%rbp), %rax	# kb, tmp557
	movl	-160(%rbp), %edx	# besthmmscr, tmp558
	movl	%edx, 140(%rax)	# tmp558, kb_33(D)->bestscore
	.loc 1 1079 0
	movq	-192(%rbp), %rax	# kb, tmp559
	movl	-156(%rbp), %edx	# bestwordscr, tmp560
	movl	%edx, 144(%rax)	# tmp560, kb_33(D)->bestwordscore
	.loc 1 1080 0
	movq	-192(%rbp), %rax	# kb, tmp561
	movl	140(%rax), %edx	# kb_33(D)->bestscore, D.7453
	movl	-128(%rbp), %eax	# hb, tmp565
	addl	%edx, %eax	# D.7453, tmp564
	movl	%eax, -100(%rbp)	# tmp564, th
	.loc 1 1081 0
	movq	-192(%rbp), %rax	# kb, tmp566
	movl	140(%rax), %edx	# kb_33(D)->bestscore, D.7453
	movl	-124(%rbp), %eax	# pb, tmp570
	addl	%edx, %eax	# D.7453, tmp569
	movl	%eax, -96(%rbp)	# tmp569, pth
	.loc 1 1082 0
	movq	-192(%rbp), %rax	# kb, tmp571
	movl	144(%rax), %edx	# kb_33(D)->bestwordscore, D.7453
	movl	-120(%rbp), %eax	# wb, tmp575
	addl	%edx, %eax	# D.7453, tmp574
	movl	%eax, -92(%rbp)	# tmp574, wth
	.loc 1 1093 0
	cmpl	$0, 24(%rbp)	#, ptranskip
	jne	.L121	#,
	.loc 1 1094 0
	movl	$0, -152(%rbp)	#, i
	jmp	.L122	#
.L125:
	.loc 1 1095 0
	movq	-192(%rbp), %rax	# kb, tmp576
	movl	8(%rax), %eax	# kb_33(D)->n_lextree, D.7453
	cmpl	-152(%rbp), %eax	# i, D.7453
	jle	.L123	#,
	.loc 1 1095 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# kb, tmp577
	movq	16(%rax), %rax	# kb_33(D)->ugtree, D.7463
	movl	-152(%rbp), %edx	# i, tmp578
	movslq	%edx, %rdx	# tmp578, D.7455
	salq	$3, %rdx	#, D.7455
	addq	%rdx, %rax	# D.7455, D.7463
	movq	(%rax), %rax	# *_281, iftmp.34
	jmp	.L124	#
.L123:
	.loc 1 1095 0 discriminator 2
	movq	-192(%rbp), %rax	# kb, tmp579
	movq	32(%rax), %rdx	# kb_33(D)->fillertree, D.7463
	movq	-192(%rbp), %rax	# kb, tmp580
	movl	8(%rax), %eax	# kb_33(D)->n_lextree, D.7453
	movl	-152(%rbp), %ecx	# i, tmp581
	subl	%eax, %ecx	# D.7453, D.7453
	movl	%ecx, %eax	# D.7453, D.7453
	cltq
	salq	$3, %rax	#, D.7455
	addq	%rdx, %rax	# D.7463, D.7463
	movq	(%rax), %rax	# *_288, iftmp.34
.L124:
	.loc 1 1095 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.34, lextree
	.loc 1 1096 0 is_stmt 1 discriminator 3
	movq	-192(%rbp), %rax	# kb, tmp582
	movl	200(%rax), %r8d	# kb_33(D)->pl_beam, D.7453
	movq	-192(%rbp), %rax	# kb, tmp583
	movq	128(%rax), %rdi	# kb_33(D)->phn_heur_list, D.7454
	movq	-192(%rbp), %rax	# kb, tmp584
	movq	48(%rax), %rdx	# kb_33(D)->vithist, D.7467
	movl	-96(%rbp), %r11d	# pth, tmp585
	movl	-100(%rbp), %r10d	# th, tmp586
	movl	-136(%rbp), %ecx	# frmno, tmp587
	movq	-88(%rbp), %rsi	# kbcore, tmp588
	movq	-32(%rbp), %rax	# lextree, tmp589
	movl	-112(%rbp), %r9d	# pheurtype, tmp590
	movl	%r9d, 24(%rsp)	# tmp590,
	movl	%r8d, 16(%rsp)	# D.7453,
	movq	%rdi, 8(%rsp)	# D.7454,
	movl	-92(%rbp), %edi	# wth, tmp591
	movl	%edi, (%rsp)	# tmp591,
	movl	%r11d, %r9d	# tmp585,
	movl	%r10d, %r8d	# tmp586,
	movq	%rax, %rdi	# tmp589,
	call	lextree_hmm_propagate	#
	.loc 1 1094 0 discriminator 3
	addl	$1, -152(%rbp)	#, i
.L122:
	.loc 1 1094 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# kb, tmp592
	movl	8(%rax), %eax	# kb_33(D)->n_lextree, D.7453
	addl	%eax, %eax	# D.7453
	cmpl	-152(%rbp), %eax	# i, D.7453
	jg	.L125	#,
	jmp	.L126	#
.L121:
	.loc 1 1100 0 is_stmt 1
	movl	$0, -152(%rbp)	#, i
	jmp	.L127	#
.L132:
	.loc 1 1101 0
	movq	-192(%rbp), %rax	# kb, tmp593
	movl	8(%rax), %eax	# kb_33(D)->n_lextree, D.7453
	cmpl	-152(%rbp), %eax	# i, D.7453
	jle	.L128	#,
	.loc 1 1101 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# kb, tmp594
	movq	16(%rax), %rax	# kb_33(D)->ugtree, D.7463
	movl	-152(%rbp), %edx	# i, tmp595
	movslq	%edx, %rdx	# tmp595, D.7455
	salq	$3, %rdx	#, D.7455
	addq	%rdx, %rax	# D.7455, D.7463
	movq	(%rax), %rax	# *_302, iftmp.35
	jmp	.L129	#
.L128:
	.loc 1 1101 0 discriminator 2
	movq	-192(%rbp), %rax	# kb, tmp596
	movq	32(%rax), %rdx	# kb_33(D)->fillertree, D.7463
	movq	-192(%rbp), %rax	# kb, tmp597
	movl	8(%rax), %eax	# kb_33(D)->n_lextree, D.7453
	movl	-152(%rbp), %ecx	# i, tmp598
	subl	%eax, %ecx	# D.7453, D.7453
	movl	%ecx, %eax	# D.7453, D.7453
	cltq
	salq	$3, %rax	#, D.7455
	addq	%rdx, %rax	# D.7463, D.7463
	movq	(%rax), %rax	# *_309, iftmp.35
.L129:
	.loc 1 1101 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.35, lextree
	.loc 1 1103 0 is_stmt 1 discriminator 3
	movl	-136(%rbp), %eax	# frmno, tmp599
	cltd
	idivl	24(%rbp)	# ptranskip
	movl	%edx, %eax	# tmp600, D.7453
	testl	%eax, %eax	# D.7453
	je	.L130	#,
	.loc 1 1104 0
	movq	-192(%rbp), %rax	# kb, tmp602
	movl	200(%rax), %r8d	# kb_33(D)->pl_beam, D.7453
	movq	-192(%rbp), %rax	# kb, tmp603
	movq	128(%rax), %rdi	# kb_33(D)->phn_heur_list, D.7454
	movq	-192(%rbp), %rax	# kb, tmp604
	movq	48(%rax), %rdx	# kb_33(D)->vithist, D.7467
	movl	-96(%rbp), %r11d	# pth, tmp605
	movl	-100(%rbp), %r10d	# th, tmp606
	movl	-136(%rbp), %ecx	# frmno, tmp607
	movq	-88(%rbp), %rsi	# kbcore, tmp608
	movq	-32(%rbp), %rax	# lextree, tmp609
	movl	-112(%rbp), %r9d	# pheurtype, tmp610
	movl	%r9d, 24(%rsp)	# tmp610,
	movl	%r8d, 16(%rsp)	# D.7453,
	movq	%rdi, 8(%rsp)	# D.7454,
	movl	-92(%rbp), %edi	# wth, tmp611
	movl	%edi, (%rsp)	# tmp611,
	movl	%r11d, %r9d	# tmp605,
	movl	%r10d, %r8d	# tmp606,
	movq	%rax, %rdi	# tmp609,
	call	lextree_hmm_propagate	#
	jmp	.L131	#
.L130:
	.loc 1 1107 0
	movq	-192(%rbp), %rax	# kb, tmp612
	movl	200(%rax), %r8d	# kb_33(D)->pl_beam, D.7453
	movq	-192(%rbp), %rax	# kb, tmp613
	movq	128(%rax), %rdi	# kb_33(D)->phn_heur_list, D.7454
	movq	-192(%rbp), %rax	# kb, tmp614
	movq	48(%rax), %rdx	# kb_33(D)->vithist, D.7467
	movl	-92(%rbp), %r11d	# wth, tmp615
	movl	-100(%rbp), %r10d	# th, tmp616
	movl	-136(%rbp), %ecx	# frmno, tmp617
	movq	-88(%rbp), %rsi	# kbcore, tmp618
	movq	-32(%rbp), %rax	# lextree, tmp619
	movl	-112(%rbp), %r9d	# pheurtype, tmp620
	movl	%r9d, 24(%rsp)	# tmp620,
	movl	%r8d, 16(%rsp)	# D.7453,
	movq	%rdi, 8(%rsp)	# D.7454,
	movl	-92(%rbp), %edi	# wth, tmp621
	movl	%edi, (%rsp)	# tmp621,
	movl	%r11d, %r9d	# tmp615,
	movl	%r10d, %r8d	# tmp616,
	movq	%rax, %rdi	# tmp619,
	call	lextree_hmm_propagate	#
.L131:
	.loc 1 1100 0
	addl	$1, -152(%rbp)	#, i
.L127:
	.loc 1 1100 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# kb, tmp622
	movl	8(%rax), %eax	# kb_33(D)->n_lextree, D.7453
	addl	%eax, %eax	# D.7453
	cmpl	-152(%rbp), %eax	# i, D.7453
	jg	.L132	#,
.L126:
	.loc 1 1113 0 is_stmt 1
	movq	-192(%rbp), %rax	# kb, tmp623
	movl	196(%rax), %eax	# kb_33(D)->pl_window_effective, D.7453
	movl	-172(%rbp), %edx	# block_nfeatvec, tmp624
	subl	%eax, %edx	# D.7453, D.7453
	movl	%edx, %eax	# D.7453, D.7453
	cmpl	-144(%rbp), %eax	# t, D.7453
	jle	.L133	#,
	.loc 1 1114 0
	movl	$0, -152(%rbp)	#, i
	jmp	.L134	#
.L137:
	.loc 1 1115 0
	movq	-192(%rbp), %rax	# kb, tmp625
	movq	120(%rax), %rax	# kb_33(D)->cache_best_list, D.7454
	movl	-152(%rbp), %edx	# i, tmp626
	movslq	%edx, %rdx	# tmp626, D.7455
	salq	$2, %rdx	#, D.7455
	addq	%rax, %rdx	# D.7454, D.7454
	movq	-192(%rbp), %rax	# kb, tmp627
	movq	120(%rax), %rax	# kb_33(D)->cache_best_list, D.7454
	movl	-152(%rbp), %ecx	# i, tmp628
	movslq	%ecx, %rcx	# tmp628, D.7468
	addq	$1, %rcx	#, D.7468
	salq	$2, %rcx	#, D.7468
	addq	%rcx, %rax	# D.7468, D.7454
	movl	(%rax), %eax	# *_333, D.7453
	movl	%eax, (%rdx)	# D.7453, *_328
	.loc 1 1116 0
	movl	$0, -148(%rbp)	#, j
	jmp	.L135	#
.L136:
	.loc 1 1117 0 discriminator 2
	movq	-192(%rbp), %rax	# kb, tmp629
	movq	112(%rax), %rax	# kb_33(D)->cache_ci_senscr, D.7457
	movl	-152(%rbp), %edx	# i, tmp630
	movslq	%edx, %rdx	# tmp630, D.7455
	salq	$3, %rdx	#, D.7455
	addq	%rdx, %rax	# D.7455, D.7457
	movq	(%rax), %rax	# *_345, D.7454
	movl	-148(%rbp), %edx	# j, tmp631
	movslq	%edx, %rdx	# tmp631, D.7455
	salq	$2, %rdx	#, D.7455
	addq	%rax, %rdx	# D.7454, D.7454
	movq	-192(%rbp), %rax	# kb, tmp632
	movq	112(%rax), %rax	# kb_33(D)->cache_ci_senscr, D.7457
	movl	-152(%rbp), %ecx	# i, tmp633
	movslq	%ecx, %rcx	# tmp633, D.7468
	addq	$1, %rcx	#, D.7468
	salq	$3, %rcx	#, D.7468
	addq	%rcx, %rax	# D.7468, D.7457
	movq	(%rax), %rax	# *_354, D.7454
	movl	-148(%rbp), %ecx	# j, tmp634
	movslq	%ecx, %rcx	# tmp634, D.7455
	salq	$2, %rcx	#, D.7455
	addq	%rcx, %rax	# D.7455, D.7454
	movl	(%rax), %eax	# *_358, D.7453
	movl	%eax, (%rdx)	# D.7453, *_349
	.loc 1 1116 0 discriminator 2
	addl	$1, -148(%rbp)	#, j
.L135:
	.loc 1 1116 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# mdef, tmp635
	movq	64(%rax), %rax	# mdef_35->cd2cisen, D.7461
	movl	-148(%rbp), %edx	# j, tmp636
	movslq	%edx, %rdx	# tmp636, D.7455
	addq	%rdx, %rdx	# D.7455
	addq	%rdx, %rax	# D.7455, D.7461
	movzwl	(%rax), %eax	# *_339, D.7462
	cwtl
	cmpl	-148(%rbp), %eax	# j, D.7453
	je	.L136	#,
	.loc 1 1114 0 is_stmt 1
	addl	$1, -152(%rbp)	#, i
.L134:
	.loc 1 1114 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# kb, tmp637
	movl	196(%rax), %eax	# kb_33(D)->pl_window_effective, D.7453
	subl	$1, %eax	#, D.7453
	cmpl	-152(%rbp), %eax	# i, D.7453
	jg	.L137	#,
	.loc 1 1121 0 is_stmt 1
	movq	-192(%rbp), %rax	# kb, tmp638
	movq	112(%rax), %rdx	# kb_33(D)->cache_ci_senscr, D.7457
	movq	-192(%rbp), %rax	# kb, tmp639
	movl	196(%rax), %eax	# kb_33(D)->pl_window_effective, D.7453
	cltq
	salq	$3, %rax	#, D.7455
	subq	$8, %rax	#, D.7468
	addq	%rdx, %rax	# D.7457, D.7457
	movq	(%rax), %rdx	# *_367, D.7454
	movq	-192(%rbp), %rax	# kb, tmp640
	movl	196(%rax), %ecx	# kb_33(D)->pl_window_effective, D.7453
	movl	-144(%rbp), %eax	# t, tmp641
	addl	%ecx, %eax	# D.7453, D.7453
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7455
	movq	-168(%rbp), %rax	# block_feat, tmp642
	addq	%rcx, %rax	# D.7455, D.7458
	movq	(%rax), %rax	# *_373, D.7459
	movq	(%rax), %rsi	# *_374, D.7460
	movq	-192(%rbp), %rcx	# kb, tmp643
	movq	-56(%rbp), %rax	# mgau, tmp644
	movq	%rax, %rdi	# tmp644,
	call	approx_cont_mgau_ci_eval	#
	.loc 1 1123 0
	movq	-192(%rbp), %rax	# kb, tmp645
	movq	120(%rax), %rdx	# kb_33(D)->cache_best_list, D.7454
	movq	-192(%rbp), %rax	# kb, tmp646
	movl	196(%rax), %eax	# kb_33(D)->pl_window_effective, D.7453
	cltq
	salq	$2, %rax	#, D.7455
	subq	$4, %rax	#, D.7468
	addq	%rdx, %rax	# D.7454, D.7454
	movl	$-2147483648, (%rax)	#, *_381
	.loc 1 1124 0
	movl	$0, -152(%rbp)	#, i
	jmp	.L138	#
.L140:
	.loc 1 1125 0
	movq	-192(%rbp), %rax	# kb, tmp647
	movq	112(%rax), %rdx	# kb_33(D)->cache_ci_senscr, D.7457
	movq	-192(%rbp), %rax	# kb, tmp648
	movl	196(%rax), %eax	# kb_33(D)->pl_window_effective, D.7453
	cltq
	salq	$3, %rax	#, D.7455
	subq	$8, %rax	#, D.7468
	addq	%rdx, %rax	# D.7457, D.7457
	movq	(%rax), %rax	# *_394, D.7454
	movl	-152(%rbp), %edx	# i, tmp649
	movslq	%edx, %rdx	# tmp649, D.7455
	salq	$2, %rdx	#, D.7455
	addq	%rdx, %rax	# D.7455, D.7454
	movl	(%rax), %edx	# *_398, D.7453
	movq	-192(%rbp), %rax	# kb, tmp650
	movq	120(%rax), %rcx	# kb_33(D)->cache_best_list, D.7454
	movq	-192(%rbp), %rax	# kb, tmp651
	movl	196(%rax), %eax	# kb_33(D)->pl_window_effective, D.7453
	cltq
	salq	$2, %rax	#, D.7455
	subq	$4, %rax	#, D.7468
	addq	%rcx, %rax	# D.7454, D.7454
	movl	(%rax), %eax	# *_405, D.7453
	cmpl	%eax, %edx	# D.7453, D.7453
	jle	.L139	#,
	.loc 1 1126 0
	movq	-192(%rbp), %rax	# kb, tmp652
	movq	120(%rax), %rdx	# kb_33(D)->cache_best_list, D.7454
	movq	-192(%rbp), %rax	# kb, tmp653
	movl	196(%rax), %eax	# kb_33(D)->pl_window_effective, D.7453
	cltq
	salq	$2, %rax	#, D.7455
	subq	$4, %rax	#, D.7468
	addq	%rax, %rdx	# D.7468, D.7454
	movq	-192(%rbp), %rax	# kb, tmp654
	movq	112(%rax), %rcx	# kb_33(D)->cache_ci_senscr, D.7457
	movq	-192(%rbp), %rax	# kb, tmp655
	movl	196(%rax), %eax	# kb_33(D)->pl_window_effective, D.7453
	cltq
	salq	$3, %rax	#, D.7455
	subq	$8, %rax	#, D.7468
	addq	%rcx, %rax	# D.7457, D.7457
	movq	(%rax), %rax	# *_418, D.7454
	movl	-152(%rbp), %ecx	# i, tmp656
	movslq	%ecx, %rcx	# tmp656, D.7455
	salq	$2, %rcx	#, D.7455
	addq	%rcx, %rax	# D.7455, D.7454
	movl	(%rax), %eax	# *_422, D.7453
	movl	%eax, (%rdx)	# D.7453, *_412
.L139:
	.loc 1 1124 0
	addl	$1, -152(%rbp)	#, i
.L138:
	.loc 1 1124 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# mdef, tmp657
	movq	64(%rax), %rax	# mdef_35->cd2cisen, D.7461
	movl	-152(%rbp), %edx	# i, tmp658
	movslq	%edx, %rdx	# tmp658, D.7455
	addq	%rdx, %rdx	# D.7455
	addq	%rdx, %rax	# D.7455, D.7461
	movzwl	(%rax), %eax	# *_386, D.7462
	cwtl
	cmpl	-152(%rbp), %eax	# i, D.7453
	je	.L140	#,
	jmp	.L141	#
.L133:
	.loc 1 1130 0 is_stmt 1
	movq	-192(%rbp), %rax	# kb, tmp659
	movl	192(%rax), %eax	# kb_33(D)->pl_window_start, D.7453
	leal	1(%rax), %edx	#, D.7453
	movq	-192(%rbp), %rax	# kb, tmp660
	movl	%edx, 192(%rax)	# D.7453, kb_33(D)->pl_window_start
.L141:
	.loc 1 1134 0
	movq	-192(%rbp), %rax	# kb, tmp661
	movq	48(%rax), %rax	# kb_33(D)->vithist, D.7467
	movl	-120(%rbp), %r8d	# wb, tmp662
	movl	-196(%rbp), %edi	# maxhistpf, tmp663
	movl	-176(%rbp), %ecx	# maxwpf, tmp664
	movl	-136(%rbp), %edx	# frmno, tmp665
	movq	-72(%rbp), %rsi	# dict, tmp666
	movl	%r8d, %r9d	# tmp662,
	movl	%edi, %r8d	# tmp663,
	movq	%rax, %rdi	# D.7467,
	call	vithist_prune	#
	.loc 1 1137 0
	movl	-136(%rbp), %edx	# frmno, tmp667
	movq	-192(%rbp), %rax	# kb, tmp668
	movl	%edx, %esi	# tmp667,
	movq	%rax, %rdi	# tmp668,
	call	utt_word_trans	#
	.loc 1 1140 0
	movq	-192(%rbp), %rax	# kb, tmp669
	movq	48(%rax), %rax	# kb_33(D)->vithist, D.7467
	movq	-88(%rbp), %rdx	# kbcore, tmp670
	movl	-136(%rbp), %esi	# frmno, tmp671
	movq	%rdx, %rcx	# tmp670,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.7467,
	call	vithist_frame_windup	#
	.loc 1 1142 0
	movq	-192(%rbp), %rax	# kb, tmp672
	movq	%rax, %rdi	# tmp672,
	call	kb_lextree_active_swap	#
	.loc 1 1144 0
	movq	-192(%rbp), %rax	# kb, tmp673
	addq	$304, %rax	#, D.7456
	movq	%rax, %rdi	# D.7456,
	call	ptmr_stop	#
	.loc 1 956 0
	addl	$1, -144(%rbp)	#, t
	addl	$1, -136(%rbp)	#, frmno
.L97:
	.loc 1 956 0 is_stmt 0 discriminator 1
	movl	-144(%rbp), %eax	# t, tmp674
	cmpl	-172(%rbp), %eax	# block_nfeatvec, tmp674
	jl	.L142	#,
	.loc 1 1147 0 is_stmt 1
	movq	-192(%rbp), %rax	# kb, tmp675
	movl	216(%rax), %edx	# kb_33(D)->utt_hmm_eval, D.7453
	movl	-140(%rbp), %eax	# n_hmm_eval, tmp676
	addl	%eax, %edx	# tmp676, D.7453
	movq	-192(%rbp), %rax	# kb, tmp677
	movl	%edx, 216(%rax)	# D.7453, kb_33(D)->utt_hmm_eval
	.loc 1 1148 0
	movq	-192(%rbp), %rax	# kb, tmp678
	movl	64(%rax), %edx	# kb_33(D)->nfr, D.7453
	movl	-172(%rbp), %eax	# block_nfeatvec, tmp679
	addl	%eax, %edx	# tmp679, D.7453
	movq	-192(%rbp), %rax	# kb, tmp680
	movl	%edx, 64(%rax)	# D.7453, kb_33(D)->nfr
	.loc 1 1150 0
	movq	-184(%rbp), %rax	# curfrm, tmp681
	movl	-136(%rbp), %edx	# frmno, tmp682
	movl	%edx, (%rax)	# tmp682, *curfrm_41(D)
	.loc 1 1151 0
	addq	$232, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	utt_decode_block, .-utt_decode_block
	.local	bs.6184
	.comm	bs.6184,8,8
	.local	bv.6185
	.comm	bv.6185,8,8
	.local	epl.6186
	.comm	epl.6186,4,4
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "./libutil/glist.h"
	.file 8 "./libutil/hash.h"
	.file 9 "./libutil/profile.h"
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
	.file 25 "hyp.h"
	.file 26 "vithist.h"
	.file 27 "ascr.h"
	.file 28 "lextree.h"
	.file 29 "beam.h"
	.file 30 "kb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x21a5
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF405
	.byte	0x1
	.long	.LASF406
	.long	.LASF407
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
	.long	.LASF408
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
	.long	.LASF409
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
	.uleb128 0x6
	.byte	0x8
	.long	0x2da
	.uleb128 0x7
	.long	.LASF60
	.byte	0x10
	.byte	0x7
	.byte	0x4c
	.long	0x38b
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0x4d
	.long	0x355
	.byte	0
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0x4e
	.long	0x38b
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x366
	.uleb128 0x2
	.long	.LASF63
	.byte	0x7
	.byte	0x4f
	.long	0x366
	.uleb128 0x2
	.long	.LASF64
	.byte	0x7
	.byte	0x50
	.long	0x3a7
	.uleb128 0x6
	.byte	0x8
	.long	0x391
	.uleb128 0x7
	.long	.LASF65
	.byte	0x18
	.byte	0x8
	.byte	0x58
	.long	0x3ea
	.uleb128 0x11
	.string	"key"
	.byte	0x8
	.byte	0x59
	.long	0x292
	.byte	0
	.uleb128 0x11
	.string	"len"
	.byte	0x8
	.byte	0x5c
	.long	0x2b9
	.byte	0x8
	.uleb128 0x11
	.string	"val"
	.byte	0x8
	.byte	0x5e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF62
	.byte	0x8
	.byte	0x5f
	.long	0x3ea
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3ad
	.uleb128 0x2
	.long	.LASF66
	.byte	0x8
	.byte	0x60
	.long	0x3ad
	.uleb128 0x12
	.byte	0x10
	.byte	0x8
	.byte	0x62
	.long	0x428
	.uleb128 0x8
	.long	.LASF67
	.byte	0x8
	.byte	0x63
	.long	0x428
	.byte	0
	.uleb128 0x8
	.long	.LASF68
	.byte	0x8
	.byte	0x64
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.byte	0x67
	.long	0x2f0
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3f0
	.uleb128 0x2
	.long	.LASF70
	.byte	0x8
	.byte	0x68
	.long	0x3fb
	.uleb128 0x12
	.byte	0x38
	.byte	0x9
	.byte	0x53
	.long	0x496
	.uleb128 0x8
	.long	.LASF71
	.byte	0x9
	.byte	0x54
	.long	0x292
	.byte	0
	.uleb128 0x8
	.long	.LASF72
	.byte	0x9
	.byte	0x56
	.long	0x306
	.byte	0x8
	.uleb128 0x8
	.long	.LASF73
	.byte	0x9
	.byte	0x57
	.long	0x306
	.byte	0x10
	.uleb128 0x8
	.long	.LASF74
	.byte	0x9
	.byte	0x58
	.long	0x306
	.byte	0x18
	.uleb128 0x8
	.long	.LASF75
	.byte	0x9
	.byte	0x59
	.long	0x306
	.byte	0x20
	.uleb128 0x8
	.long	.LASF76
	.byte	0x9
	.byte	0x5a
	.long	0x306
	.byte	0x28
	.uleb128 0x8
	.long	.LASF77
	.byte	0x9
	.byte	0x5b
	.long	0x306
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.long	.LASF78
	.byte	0x9
	.byte	0x5c
	.long	0x439
	.uleb128 0x7
	.long	.LASF79
	.byte	0x38
	.byte	0xa
	.byte	0x48
	.long	0x526
	.uleb128 0x8
	.long	.LASF71
	.byte	0xa
	.byte	0x49
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF80
	.byte	0xa
	.byte	0x4a
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF81
	.byte	0xa
	.byte	0x4b
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF82
	.byte	0xa
	.byte	0x4c
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF83
	.byte	0xa
	.byte	0x4d
	.long	0x526
	.byte	0x18
	.uleb128 0x8
	.long	.LASF84
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
	.long	.LASF85
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
	.long	.LASF86
	.byte	0xa
	.byte	0x54
	.long	0x553
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b9
	.uleb128 0x13
	.long	0x541
	.uleb128 0x14
	.long	0x541
	.uleb128 0x14
	.long	0x547
	.uleb128 0x14
	.long	0x547
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4a1
	.uleb128 0x6
	.byte	0x8
	.long	0x54d
	.uleb128 0x6
	.byte	0x8
	.long	0x2fb
	.uleb128 0x6
	.byte	0x8
	.long	0x52c
	.uleb128 0x2
	.long	.LASF87
	.byte	0xa
	.byte	0x5a
	.long	0x4a1
	.uleb128 0x12
	.byte	0x28
	.byte	0xb
	.byte	0x5f
	.long	0x5a9
	.uleb128 0x8
	.long	.LASF88
	.byte	0xb
	.byte	0x60
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF89
	.byte	0xb
	.byte	0x62
	.long	0x547
	.byte	0x8
	.uleb128 0x11
	.string	"var"
	.byte	0xb
	.byte	0x63
	.long	0x547
	.byte	0x10
	.uleb128 0x11
	.string	"lrd"
	.byte	0xb
	.byte	0x66
	.long	0x54d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF90
	.byte	0xb
	.byte	0x69
	.long	0x526
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF91
	.byte	0xb
	.byte	0x6c
	.long	0x564
	.uleb128 0x12
	.byte	0x30
	.byte	0xb
	.byte	0x74
	.long	0x61d
	.uleb128 0x8
	.long	.LASF92
	.byte	0xb
	.byte	0x75
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF93
	.byte	0xb
	.byte	0x76
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF94
	.byte	0xb
	.byte	0x77
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF95
	.byte	0xb
	.byte	0x78
	.long	0x61d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF96
	.byte	0xb
	.byte	0x79
	.long	0x306
	.byte	0x18
	.uleb128 0x8
	.long	.LASF97
	.byte	0xb
	.byte	0x7c
	.long	0x2b9
	.byte	0x20
	.uleb128 0x8
	.long	.LASF98
	.byte	0xb
	.byte	0x7d
	.long	0x2b9
	.byte	0x24
	.uleb128 0x8
	.long	.LASF99
	.byte	0xb
	.byte	0x7e
	.long	0x2b9
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5a9
	.uleb128 0x2
	.long	.LASF100
	.byte	0xb
	.byte	0x81
	.long	0x5b4
	.uleb128 0x2
	.long	.LASF101
	.byte	0xc
	.byte	0x4b
	.long	0x2cf
	.uleb128 0x2
	.long	.LASF102
	.byte	0xc
	.byte	0x51
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF103
	.byte	0xc
	.byte	0x57
	.long	0x639
	.uleb128 0x2
	.long	.LASF104
	.byte	0xc
	.byte	0x5d
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF105
	.byte	0xc
	.byte	0x63
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF106
	.byte	0xc
	.byte	0x69
	.long	0x2e5
	.uleb128 0x2
	.long	.LASF107
	.byte	0xc
	.byte	0x75
	.long	0x2c4
	.uleb128 0x2
	.long	.LASF108
	.byte	0xc
	.byte	0x7b
	.long	0x2c4
	.uleb128 0x15
	.byte	0x4
	.byte	0xd
	.byte	0x48
	.long	0x6ad
	.uleb128 0x16
	.long	.LASF109
	.sleb128 0
	.uleb128 0x16
	.long	.LASF110
	.sleb128 1
	.uleb128 0x16
	.long	.LASF111
	.sleb128 2
	.uleb128 0x16
	.long	.LASF112
	.sleb128 3
	.uleb128 0x16
	.long	.LASF113
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.long	.LASF114
	.byte	0xd
	.byte	0x4e
	.long	0x686
	.uleb128 0x12
	.byte	0x10
	.byte	0xd
	.byte	0x54
	.long	0x6d9
	.uleb128 0x8
	.long	.LASF71
	.byte	0xd
	.byte	0x55
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF115
	.byte	0xd
	.byte	0x56
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF116
	.byte	0xd
	.byte	0x58
	.long	0x6b8
	.uleb128 0x12
	.byte	0x10
	.byte	0xd
	.byte	0x5e
	.long	0x732
	.uleb128 0x8
	.long	.LASF117
	.byte	0xd
	.byte	0x5f
	.long	0x644
	.byte	0
	.uleb128 0x8
	.long	.LASF118
	.byte	0xd
	.byte	0x62
	.long	0x64f
	.byte	0x4
	.uleb128 0x11
	.string	"ci"
	.byte	0xd
	.byte	0x63
	.long	0x62e
	.byte	0x8
	.uleb128 0x11
	.string	"lc"
	.byte	0xd
	.byte	0x63
	.long	0x62e
	.byte	0x9
	.uleb128 0x11
	.string	"rc"
	.byte	0xd
	.byte	0x63
	.long	0x62e
	.byte	0xa
	.uleb128 0x8
	.long	.LASF119
	.byte	0xd
	.byte	0x64
	.long	0x6ad
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF120
	.byte	0xd
	.byte	0x65
	.long	0x6e4
	.uleb128 0x7
	.long	.LASF121
	.byte	0x10
	.byte	0xd
	.byte	0x6c
	.long	0x76d
	.uleb128 0x11
	.string	"rc"
	.byte	0xd
	.byte	0x6d
	.long	0x62e
	.byte	0
	.uleb128 0x11
	.string	"pid"
	.byte	0xd
	.byte	0x6e
	.long	0x639
	.byte	0x4
	.uleb128 0x8
	.long	.LASF62
	.byte	0xd
	.byte	0x6f
	.long	0x76d
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x73d
	.uleb128 0x2
	.long	.LASF122
	.byte	0xd
	.byte	0x70
	.long	0x73d
	.uleb128 0x7
	.long	.LASF123
	.byte	0x18
	.byte	0xd
	.byte	0x72
	.long	0x7ae
	.uleb128 0x11
	.string	"lc"
	.byte	0xd
	.byte	0x73
	.long	0x62e
	.byte	0
	.uleb128 0x8
	.long	.LASF124
	.byte	0xd
	.byte	0x74
	.long	0x7ae
	.byte	0x8
	.uleb128 0x8
	.long	.LASF62
	.byte	0xd
	.byte	0x75
	.long	0x7b4
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x773
	.uleb128 0x6
	.byte	0x8
	.long	0x77e
	.uleb128 0x2
	.long	.LASF125
	.byte	0xd
	.byte	0x76
	.long	0x77e
	.uleb128 0x12
	.byte	0x68
	.byte	0xd
	.byte	0x7a
	.long	0x88e
	.uleb128 0x8
	.long	.LASF126
	.byte	0xd
	.byte	0x7b
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF127
	.byte	0xd
	.byte	0x7c
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF128
	.byte	0xd
	.byte	0x7d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF129
	.byte	0xd
	.byte	0x7e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF130
	.byte	0xd
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF131
	.byte	0xd
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF132
	.byte	0xd
	.byte	0x82
	.long	0x88e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF133
	.byte	0xd
	.byte	0x83
	.long	0x894
	.byte	0x20
	.uleb128 0x8
	.long	.LASF134
	.byte	0xd
	.byte	0x84
	.long	0x89a
	.byte	0x28
	.uleb128 0x8
	.long	.LASF135
	.byte	0xd
	.byte	0x85
	.long	0x8a0
	.byte	0x30
	.uleb128 0x8
	.long	.LASF136
	.byte	0xd
	.byte	0x87
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF137
	.byte	0xd
	.byte	0x89
	.long	0x8a6
	.byte	0x40
	.uleb128 0x8
	.long	.LASF138
	.byte	0xd
	.byte	0x8c
	.long	0x8ac
	.byte	0x48
	.uleb128 0x8
	.long	.LASF139
	.byte	0xd
	.byte	0x8d
	.long	0x526
	.byte	0x50
	.uleb128 0x11
	.string	"sil"
	.byte	0xd
	.byte	0x8f
	.long	0x62e
	.byte	0x58
	.uleb128 0x8
	.long	.LASF140
	.byte	0xd
	.byte	0x91
	.long	0x8b2
	.byte	0x60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x42e
	.uleb128 0x6
	.byte	0x8
	.long	0x6d9
	.uleb128 0x6
	.byte	0x8
	.long	0x732
	.uleb128 0x6
	.byte	0x8
	.long	0x8a6
	.uleb128 0x6
	.byte	0x8
	.long	0x67b
	.uleb128 0x6
	.byte	0x8
	.long	0x62e
	.uleb128 0x6
	.byte	0x8
	.long	0x8b8
	.uleb128 0x6
	.byte	0x8
	.long	0x8be
	.uleb128 0x6
	.byte	0x8
	.long	0x7ba
	.uleb128 0x2
	.long	.LASF141
	.byte	0xd
	.byte	0x96
	.long	0x7c5
	.uleb128 0x12
	.byte	0x28
	.byte	0xe
	.byte	0x47
	.long	0x92c
	.uleb128 0x8
	.long	.LASF142
	.byte	0xe
	.byte	0x48
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF133
	.byte	0xe
	.byte	0x49
	.long	0x8ac
	.byte	0x8
	.uleb128 0x8
	.long	.LASF143
	.byte	0xe
	.byte	0x4a
	.long	0x2b9
	.byte	0x10
	.uleb128 0x11
	.string	"alt"
	.byte	0xe
	.byte	0x4b
	.long	0x65a
	.byte	0x14
	.uleb128 0x8
	.long	.LASF144
	.byte	0xe
	.byte	0x4c
	.long	0x65a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF88
	.byte	0xe
	.byte	0x4d
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF145
	.byte	0xe
	.byte	0x51
	.long	0x92c
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x65a
	.uleb128 0x2
	.long	.LASF146
	.byte	0xe
	.byte	0x52
	.long	0x8cf
	.uleb128 0x12
	.byte	0x58
	.byte	0xe
	.byte	0x54
	.long	0x9ed
	.uleb128 0x8
	.long	.LASF147
	.byte	0xe
	.byte	0x55
	.long	0x9ed
	.byte	0
	.uleb128 0x11
	.string	"pht"
	.byte	0xe
	.byte	0x56
	.long	0x88e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF148
	.byte	0xe
	.byte	0x57
	.long	0x9f3
	.byte	0x10
	.uleb128 0x8
	.long	.LASF126
	.byte	0xe
	.byte	0x58
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF142
	.byte	0xe
	.byte	0x59
	.long	0x9f9
	.byte	0x20
	.uleb128 0x11
	.string	"ht"
	.byte	0xe
	.byte	0x5a
	.long	0x88e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF149
	.byte	0xe
	.byte	0x5b
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF150
	.byte	0xe
	.byte	0x5c
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF151
	.byte	0xe
	.byte	0x5d
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF152
	.byte	0xe
	.byte	0x5e
	.long	0x2b9
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF153
	.byte	0xe
	.byte	0x5f
	.long	0x92c
	.byte	0x40
	.uleb128 0x8
	.long	.LASF154
	.byte	0xe
	.byte	0x62
	.long	0x65a
	.byte	0x48
	.uleb128 0x8
	.long	.LASF155
	.byte	0xe
	.byte	0x63
	.long	0x65a
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF156
	.byte	0xe
	.byte	0x64
	.long	0x65a
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8c4
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0x932
	.uleb128 0x2
	.long	.LASF157
	.byte	0xe
	.byte	0x65
	.long	0x93d
	.uleb128 0x12
	.byte	0x38
	.byte	0xf
	.byte	0x63
	.long	0xa73
	.uleb128 0x8
	.long	.LASF158
	.byte	0xf
	.byte	0x64
	.long	0xa73
	.byte	0
	.uleb128 0x8
	.long	.LASF159
	.byte	0xf
	.byte	0x67
	.long	0xa7f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF160
	.byte	0xf
	.byte	0x69
	.long	0xa73
	.byte	0x10
	.uleb128 0x8
	.long	.LASF161
	.byte	0xf
	.byte	0x6c
	.long	0x8a0
	.byte	0x18
	.uleb128 0x8
	.long	.LASF162
	.byte	0xf
	.byte	0x6e
	.long	0x8a0
	.byte	0x20
	.uleb128 0x8
	.long	.LASF163
	.byte	0xf
	.byte	0x70
	.long	0x526
	.byte	0x28
	.uleb128 0x8
	.long	.LASF164
	.byte	0xf
	.byte	0x72
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF165
	.byte	0xf
	.byte	0x73
	.long	0x2b9
	.byte	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa79
	.uleb128 0x6
	.byte	0x8
	.long	0x644
	.uleb128 0x6
	.byte	0x8
	.long	0xa73
	.uleb128 0x2
	.long	.LASF166
	.byte	0xf
	.byte	0x74
	.long	0xa0a
	.uleb128 0x12
	.byte	0x20
	.byte	0x10
	.byte	0x3e
	.long	0xac8
	.uleb128 0x8
	.long	.LASF167
	.byte	0x10
	.byte	0x3f
	.long	0xac8
	.byte	0
	.uleb128 0x8
	.long	.LASF168
	.byte	0x10
	.byte	0x41
	.long	0x526
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
	.long	0x9ff
	.uleb128 0x2
	.long	.LASF169
	.byte	0x10
	.byte	0x45
	.long	0xa90
	.uleb128 0x7
	.long	.LASF170
	.byte	0x18
	.byte	0x11
	.byte	0x42
	.long	0xb16
	.uleb128 0x8
	.long	.LASF142
	.byte	0x11
	.byte	0x43
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF171
	.byte	0x11
	.byte	0x44
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF172
	.byte	0x11
	.byte	0x46
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF62
	.byte	0x11
	.byte	0x47
	.long	0xb16
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xad9
	.uleb128 0x2
	.long	.LASF173
	.byte	0x11
	.byte	0x49
	.long	0xb16
	.uleb128 0x7
	.long	.LASF174
	.byte	0x18
	.byte	0x11
	.byte	0x4f
	.long	0xb58
	.uleb128 0x8
	.long	.LASF71
	.byte	0x11
	.byte	0x50
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF175
	.byte	0x11
	.byte	0x51
	.long	0xb1c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF62
	.byte	0x11
	.byte	0x52
	.long	0xb58
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb27
	.uleb128 0x2
	.long	.LASF176
	.byte	0x11
	.byte	0x54
	.long	0xb58
	.uleb128 0x17
	.byte	0x4
	.byte	0x12
	.byte	0x4d
	.long	0xb84
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
	.long	.LASF177
	.byte	0x12
	.byte	0x50
	.long	0xb69
	.uleb128 0x12
	.byte	0x10
	.byte	0x12
	.byte	0x52
	.long	0xbc8
	.uleb128 0x8
	.long	.LASF171
	.byte	0x12
	.byte	0x53
	.long	0x65a
	.byte	0
	.uleb128 0x8
	.long	.LASF168
	.byte	0x12
	.byte	0x57
	.long	0xb84
	.byte	0x4
	.uleb128 0x8
	.long	.LASF178
	.byte	0x12
	.byte	0x58
	.long	0xb84
	.byte	0x8
	.uleb128 0x8
	.long	.LASF179
	.byte	0x12
	.byte	0x59
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF180
	.byte	0x12
	.byte	0x5a
	.long	0xb8f
	.uleb128 0x12
	.byte	0x8
	.byte	0x12
	.byte	0x5c
	.long	0xc0c
	.uleb128 0x11
	.string	"wid"
	.byte	0x12
	.byte	0x5d
	.long	0x665
	.byte	0
	.uleb128 0x8
	.long	.LASF181
	.byte	0x12
	.byte	0x5e
	.long	0x2e5
	.byte	0x2
	.uleb128 0x8
	.long	.LASF182
	.byte	0x12
	.byte	0x5f
	.long	0x2e5
	.byte	0x4
	.uleb128 0x8
	.long	.LASF183
	.byte	0x12
	.byte	0x60
	.long	0x2e5
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF184
	.byte	0x12
	.byte	0x61
	.long	0xbd3
	.uleb128 0x12
	.byte	0x4
	.byte	0x12
	.byte	0x63
	.long	0xc38
	.uleb128 0x11
	.string	"wid"
	.byte	0x12
	.byte	0x64
	.long	0x665
	.byte	0
	.uleb128 0x8
	.long	.LASF181
	.byte	0x12
	.byte	0x65
	.long	0x2e5
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF185
	.byte	0x12
	.byte	0x66
	.long	0xc17
	.uleb128 0x12
	.byte	0x10
	.byte	0x12
	.byte	0x6c
	.long	0xc63
	.uleb128 0x11
	.string	"bg"
	.byte	0x12
	.byte	0x6d
	.long	0xc63
	.byte	0
	.uleb128 0x8
	.long	.LASF186
	.byte	0x12
	.byte	0x6e
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc0c
	.uleb128 0x2
	.long	.LASF187
	.byte	0x12
	.byte	0x70
	.long	0xc43
	.uleb128 0x7
	.long	.LASF188
	.byte	0x20
	.byte	0x12
	.byte	0x7a
	.long	0xcc7
	.uleb128 0x11
	.string	"w1"
	.byte	0x12
	.byte	0x7b
	.long	0x665
	.byte	0
	.uleb128 0x8
	.long	.LASF189
	.byte	0x12
	.byte	0x7d
	.long	0x2b9
	.byte	0x4
	.uleb128 0x11
	.string	"tg"
	.byte	0x12
	.byte	0x7e
	.long	0xcc7
	.byte	0x8
	.uleb128 0x8
	.long	.LASF178
	.byte	0x12
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF186
	.byte	0x12
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF62
	.byte	0x12
	.byte	0x81
	.long	0xccd
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc38
	.uleb128 0x6
	.byte	0x8
	.long	0xc74
	.uleb128 0x2
	.long	.LASF190
	.byte	0x12
	.byte	0x82
	.long	0xc74
	.uleb128 0x12
	.byte	0xc
	.byte	0x12
	.byte	0x88
	.long	0xcff
	.uleb128 0x8
	.long	.LASF191
	.byte	0x12
	.byte	0x89
	.long	0xcff
	.byte	0
	.uleb128 0x8
	.long	.LASF192
	.byte	0x12
	.byte	0x8a
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x665
	.long	0xd0f
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF193
	.byte	0x12
	.byte	0x8b
	.long	0xcde
	.uleb128 0x7
	.long	.LASF194
	.byte	0xf8
	.byte	0x12
	.byte	0xb4
	.long	0xf26
	.uleb128 0x8
	.long	.LASF195
	.byte	0x12
	.byte	0xb5
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF196
	.byte	0x12
	.byte	0xb6
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF189
	.byte	0x12
	.byte	0xb7
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF197
	.byte	0x12
	.byte	0xb8
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF198
	.byte	0x12
	.byte	0xba
	.long	0x9f3
	.byte	0x10
	.uleb128 0x8
	.long	.LASF199
	.byte	0x12
	.byte	0xbc
	.long	0x665
	.byte	0x18
	.uleb128 0x8
	.long	.LASF200
	.byte	0x12
	.byte	0xbd
	.long	0x665
	.byte	0x1a
	.uleb128 0x8
	.long	.LASF201
	.byte	0x12
	.byte	0xbf
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF202
	.byte	0x12
	.byte	0xc0
	.long	0x2b9
	.byte	0x20
	.uleb128 0x11
	.string	"ug"
	.byte	0x12
	.byte	0xc2
	.long	0xf26
	.byte	0x28
	.uleb128 0x11
	.string	"bg"
	.byte	0x12
	.byte	0xc3
	.long	0xc63
	.byte	0x30
	.uleb128 0x11
	.string	"tg"
	.byte	0x12
	.byte	0xc4
	.long	0xcc7
	.byte	0x38
	.uleb128 0x8
	.long	.LASF203
	.byte	0x12
	.byte	0xc5
	.long	0xf2c
	.byte	0x40
	.uleb128 0x8
	.long	.LASF204
	.byte	0x12
	.byte	0xc6
	.long	0xf32
	.byte	0x48
	.uleb128 0x8
	.long	.LASF205
	.byte	0x12
	.byte	0xc8
	.long	0xf3e
	.byte	0x50
	.uleb128 0x8
	.long	.LASF206
	.byte	0x12
	.byte	0xc9
	.long	0xf3e
	.byte	0x58
	.uleb128 0x8
	.long	.LASF207
	.byte	0x12
	.byte	0xca
	.long	0xf3e
	.byte	0x60
	.uleb128 0x8
	.long	.LASF208
	.byte	0x12
	.byte	0xcb
	.long	0x526
	.byte	0x68
	.uleb128 0x8
	.long	.LASF209
	.byte	0x12
	.byte	0xcd
	.long	0x2b9
	.byte	0x70
	.uleb128 0x8
	.long	.LASF210
	.byte	0x12
	.byte	0xce
	.long	0x2b9
	.byte	0x74
	.uleb128 0x8
	.long	.LASF211
	.byte	0x12
	.byte	0xcf
	.long	0x2b9
	.byte	0x78
	.uleb128 0x11
	.string	"fp"
	.byte	0x12
	.byte	0xd1
	.long	0xf44
	.byte	0x80
	.uleb128 0x8
	.long	.LASF212
	.byte	0x12
	.byte	0xd2
	.long	0x2b9
	.byte	0x88
	.uleb128 0x8
	.long	.LASF213
	.byte	0x12
	.byte	0xd3
	.long	0x2b9
	.byte	0x8c
	.uleb128 0x8
	.long	.LASF214
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
	.long	.LASF215
	.byte	0x12
	.byte	0xdd
	.long	0xf4a
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF216
	.byte	0x12
	.byte	0xe0
	.long	0x2b9
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF217
	.byte	0x12
	.byte	0xe1
	.long	0x2b9
	.byte	0xac
	.uleb128 0x8
	.long	.LASF218
	.byte	0x12
	.byte	0xe2
	.long	0x2b9
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF219
	.byte	0x12
	.byte	0xe3
	.long	0x2b9
	.byte	0xb4
	.uleb128 0x8
	.long	.LASF220
	.byte	0x12
	.byte	0xe4
	.long	0x2b9
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF221
	.byte	0x12
	.byte	0xe5
	.long	0x2b9
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF222
	.byte	0x12
	.byte	0xe6
	.long	0x2b9
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF223
	.byte	0x12
	.byte	0xe7
	.long	0x2b9
	.byte	0xc4
	.uleb128 0x8
	.long	.LASF224
	.byte	0x12
	.byte	0xe8
	.long	0x2b9
	.byte	0xc8
	.uleb128 0x8
	.long	.LASF225
	.byte	0x12
	.byte	0xea
	.long	0x2b9
	.byte	0xcc
	.uleb128 0x8
	.long	.LASF226
	.byte	0x12
	.byte	0xef
	.long	0xf50
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF227
	.byte	0x12
	.byte	0xf2
	.long	0x2b9
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF228
	.byte	0x12
	.byte	0xf4
	.long	0xf56
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF229
	.byte	0x12
	.byte	0xf5
	.long	0x2b9
	.byte	0xe8
	.uleb128 0x8
	.long	.LASF230
	.byte	0x12
	.byte	0xf6
	.long	0x526
	.byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbc8
	.uleb128 0x6
	.byte	0x8
	.long	0xc69
	.uleb128 0x6
	.byte	0x8
	.long	0xf38
	.uleb128 0x6
	.byte	0x8
	.long	0xcd3
	.uleb128 0x6
	.byte	0x8
	.long	0xb84
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0xd0f
	.uleb128 0x6
	.byte	0x8
	.long	0x665
	.uleb128 0x6
	.byte	0x8
	.long	0xb5e
	.uleb128 0x2
	.long	.LASF231
	.byte	0x12
	.byte	0xf8
	.long	0xd1a
	.uleb128 0x7
	.long	.LASF232
	.byte	0x10
	.byte	0x12
	.byte	0xfb
	.long	0xf8b
	.uleb128 0x8
	.long	.LASF71
	.byte	0x12
	.byte	0xfc
	.long	0x8f
	.byte	0
	.uleb128 0x11
	.string	"lm"
	.byte	0x12
	.byte	0xfd
	.long	0xf8b
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf5c
	.uleb128 0x2
	.long	.LASF233
	.byte	0x12
	.byte	0xfe
	.long	0xf67
	.uleb128 0x12
	.byte	0x10
	.byte	0x13
	.byte	0x4a
	.long	0xfc8
	.uleb128 0x11
	.string	"tp"
	.byte	0x13
	.byte	0x4b
	.long	0xfc8
	.byte	0
	.uleb128 0x8
	.long	.LASF131
	.byte	0x13
	.byte	0x4d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF234
	.byte	0x13
	.byte	0x4e
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfce
	.uleb128 0x6
	.byte	0x8
	.long	0x526
	.uleb128 0x2
	.long	.LASF235
	.byte	0x13
	.byte	0x50
	.long	0xf9c
	.uleb128 0x12
	.byte	0x8
	.byte	0x14
	.byte	0x47
	.long	0xffc
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
	.long	.LASF236
	.byte	0x14
	.byte	0x4a
	.long	0xfdf
	.uleb128 0x12
	.byte	0x28
	.byte	0x14
	.byte	0xf0
	.long	0x1058
	.uleb128 0x8
	.long	.LASF237
	.byte	0x14
	.byte	0xf1
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF94
	.byte	0x14
	.byte	0xf2
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF89
	.byte	0x14
	.byte	0xf3
	.long	0x547
	.byte	0x8
	.uleb128 0x11
	.string	"var"
	.byte	0x14
	.byte	0xf4
	.long	0x547
	.byte	0x10
	.uleb128 0x11
	.string	"lrd"
	.byte	0x14
	.byte	0xf5
	.long	0x54d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF96
	.byte	0x14
	.byte	0xf6
	.long	0x306
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF238
	.byte	0x14
	.byte	0xf8
	.long	0x1007
	.uleb128 0x12
	.byte	0x48
	.byte	0x15
	.byte	0x52
	.long	0x10e4
	.uleb128 0x8
	.long	.LASF239
	.byte	0x15
	.byte	0x53
	.long	0xffc
	.byte	0
	.uleb128 0x8
	.long	.LASF240
	.byte	0x15
	.byte	0x55
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF241
	.byte	0x15
	.byte	0x56
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF242
	.byte	0x15
	.byte	0x57
	.long	0xfce
	.byte	0x10
	.uleb128 0x8
	.long	.LASF243
	.byte	0x15
	.byte	0x58
	.long	0x10e4
	.byte	0x18
	.uleb128 0x11
	.string	"map"
	.byte	0x15
	.byte	0x59
	.long	0xfc8
	.byte	0x20
	.uleb128 0x8
	.long	.LASF244
	.byte	0x15
	.byte	0x60
	.long	0x54d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF245
	.byte	0x15
	.byte	0x61
	.long	0xfce
	.byte	0x30
	.uleb128 0x8
	.long	.LASF246
	.byte	0x15
	.byte	0x63
	.long	0x526
	.byte	0x38
	.uleb128 0x8
	.long	.LASF247
	.byte	0x15
	.byte	0x64
	.long	0x526
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1058
	.uleb128 0x2
	.long	.LASF248
	.byte	0x15
	.byte	0x65
	.long	0x1063
	.uleb128 0x7
	.long	.LASF249
	.byte	0x38
	.byte	0x16
	.byte	0x3c
	.long	0x1179
	.uleb128 0x8
	.long	.LASF92
	.byte	0x16
	.byte	0x3d
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF250
	.byte	0x16
	.byte	0x3e
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF251
	.byte	0x16
	.byte	0x3f
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF252
	.byte	0x16
	.byte	0x40
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF253
	.byte	0x16
	.byte	0x41
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF254
	.byte	0x16
	.byte	0x42
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF255
	.byte	0x16
	.byte	0x43
	.long	0x547
	.byte	0x18
	.uleb128 0x8
	.long	.LASF256
	.byte	0x16
	.byte	0x44
	.long	0x1179
	.byte	0x20
	.uleb128 0x11
	.string	"fp"
	.byte	0x16
	.byte	0x45
	.long	0xf44
	.byte	0x28
	.uleb128 0x8
	.long	.LASF247
	.byte	0x16
	.byte	0x46
	.long	0x526
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x117f
	.uleb128 0x6
	.byte	0x8
	.long	0x360
	.uleb128 0x2
	.long	.LASF257
	.byte	0x16
	.byte	0x47
	.long	0x10f5
	.uleb128 0x12
	.byte	0x68
	.byte	0x17
	.byte	0x50
	.long	0x123f
	.uleb128 0x11
	.string	"fcb"
	.byte	0x17
	.byte	0x51
	.long	0x123f
	.byte	0
	.uleb128 0x8
	.long	.LASF147
	.byte	0x17
	.byte	0x52
	.long	0x9ed
	.byte	0x8
	.uleb128 0x8
	.long	.LASF167
	.byte	0x17
	.byte	0x53
	.long	0xac8
	.byte	0x10
	.uleb128 0x8
	.long	.LASF258
	.byte	0x17
	.byte	0x54
	.long	0x1245
	.byte	0x18
	.uleb128 0x11
	.string	"lm"
	.byte	0x17
	.byte	0x55
	.long	0xf8b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF259
	.byte	0x17
	.byte	0x56
	.long	0x124b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF260
	.byte	0x17
	.byte	0x57
	.long	0x1251
	.byte	0x30
	.uleb128 0x8
	.long	.LASF226
	.byte	0x17
	.byte	0x58
	.long	0xf50
	.byte	0x38
	.uleb128 0x8
	.long	.LASF95
	.byte	0x17
	.byte	0x59
	.long	0x1257
	.byte	0x40
	.uleb128 0x11
	.string	"svq"
	.byte	0x17
	.byte	0x5a
	.long	0x125d
	.byte	0x48
	.uleb128 0x11
	.string	"gs"
	.byte	0x17
	.byte	0x5b
	.long	0x1263
	.byte	0x50
	.uleb128 0x8
	.long	.LASF118
	.byte	0x17
	.byte	0x5c
	.long	0x1269
	.byte	0x58
	.uleb128 0x8
	.long	.LASF261
	.byte	0x17
	.byte	0x5d
	.long	0x2b9
	.byte	0x60
	.uleb128 0x8
	.long	.LASF262
	.byte	0x17
	.byte	0x5e
	.long	0x2b9
	.byte	0x64
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x559
	.uleb128 0x6
	.byte	0x8
	.long	0xa85
	.uleb128 0x6
	.byte	0x8
	.long	0xf91
	.uleb128 0x6
	.byte	0x8
	.long	0xace
	.uleb128 0x6
	.byte	0x8
	.long	0x623
	.uleb128 0x6
	.byte	0x8
	.long	0x10ea
	.uleb128 0x6
	.byte	0x8
	.long	0x1185
	.uleb128 0x6
	.byte	0x8
	.long	0xfd4
	.uleb128 0x2
	.long	.LASF263
	.byte	0x17
	.byte	0x5f
	.long	0x1190
	.uleb128 0x12
	.byte	0x8
	.byte	0x18
	.byte	0x69
	.long	0x129b
	.uleb128 0x8
	.long	.LASF264
	.byte	0x18
	.byte	0x6a
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF265
	.byte	0x18
	.byte	0x6b
	.long	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF266
	.byte	0x18
	.byte	0x6c
	.long	0x127a
	.uleb128 0x12
	.byte	0x28
	.byte	0x18
	.byte	0x6e
	.long	0x12e9
	.uleb128 0x8
	.long	.LASF267
	.byte	0x18
	.byte	0x6f
	.long	0x12e9
	.byte	0
	.uleb128 0x11
	.string	"in"
	.byte	0x18
	.byte	0x70
	.long	0x129b
	.byte	0x8
	.uleb128 0x11
	.string	"out"
	.byte	0x18
	.byte	0x71
	.long	0x129b
	.byte	0x10
	.uleb128 0x11
	.string	"tp"
	.byte	0x18
	.byte	0x72
	.long	0xfce
	.byte	0x18
	.uleb128 0x8
	.long	.LASF268
	.byte	0x18
	.byte	0x73
	.long	0x2b9
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x129b
	.uleb128 0x2
	.long	.LASF269
	.byte	0x18
	.byte	0x74
	.long	0x12a6
	.uleb128 0x12
	.byte	0x1c
	.byte	0x19
	.byte	0x3c
	.long	0x1354
	.uleb128 0x11
	.string	"id"
	.byte	0x19
	.byte	0x3d
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF270
	.byte	0x19
	.byte	0x3e
	.long	0x2b9
	.byte	0x4
	.uleb128 0x11
	.string	"sf"
	.byte	0x19
	.byte	0x3f
	.long	0x2b9
	.byte	0x8
	.uleb128 0x11
	.string	"ef"
	.byte	0x19
	.byte	0x3f
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF271
	.byte	0x19
	.byte	0x40
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF192
	.byte	0x19
	.byte	0x41
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF272
	.byte	0x19
	.byte	0x42
	.long	0x2b9
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.long	.LASF273
	.byte	0x19
	.byte	0x43
	.long	0x12fa
	.uleb128 0x12
	.byte	0x4
	.byte	0x1a
	.byte	0x50
	.long	0x1374
	.uleb128 0x8
	.long	.LASF191
	.byte	0x1a
	.byte	0x51
	.long	0x1374
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x665
	.long	0x1384
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x1a
	.byte	0x4f
	.long	0x1398
	.uleb128 0x10
	.long	.LASF274
	.byte	0x1a
	.byte	0x52
	.long	0x135f
	.byte	0
	.uleb128 0x2
	.long	.LASF275
	.byte	0x1a
	.byte	0x53
	.long	0x1384
	.uleb128 0x12
	.byte	0x24
	.byte	0x1a
	.byte	0x59
	.long	0x1422
	.uleb128 0x11
	.string	"wid"
	.byte	0x1a
	.byte	0x5a
	.long	0x65a
	.byte	0
	.uleb128 0x11
	.string	"sf"
	.byte	0x1a
	.byte	0x5b
	.long	0x670
	.byte	0x4
	.uleb128 0x11
	.string	"ef"
	.byte	0x1a
	.byte	0x5b
	.long	0x670
	.byte	0x6
	.uleb128 0x8
	.long	.LASF271
	.byte	0x1a
	.byte	0x5c
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF192
	.byte	0x1a
	.byte	0x5d
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF264
	.byte	0x1a
	.byte	0x5e
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF276
	.byte	0x1a
	.byte	0x5f
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF272
	.byte	0x1a
	.byte	0x60
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF277
	.byte	0x1a
	.byte	0x61
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF278
	.byte	0x1a
	.byte	0x62
	.long	0x1398
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF279
	.byte	0x1a
	.byte	0x63
	.long	0x13a3
	.uleb128 0x12
	.byte	0x18
	.byte	0x1a
	.byte	0x79
	.long	0x1465
	.uleb128 0x8
	.long	.LASF267
	.byte	0x1a
	.byte	0x7a
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF270
	.byte	0x1a
	.byte	0x7b
	.long	0x2b9
	.byte	0x4
	.uleb128 0x11
	.string	"ve"
	.byte	0x1a
	.byte	0x7c
	.long	0x1465
	.byte	0x8
	.uleb128 0x8
	.long	.LASF280
	.byte	0x1a
	.byte	0x7d
	.long	0x39c
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1422
	.uleb128 0x2
	.long	.LASF281
	.byte	0x1a
	.byte	0x7f
	.long	0x142d
	.uleb128 0x12
	.byte	0x40
	.byte	0x1a
	.byte	0x88
	.long	0x14f7
	.uleb128 0x8
	.long	.LASF282
	.byte	0x1a
	.byte	0x89
	.long	0x14f7
	.byte	0
	.uleb128 0x8
	.long	.LASF283
	.byte	0x1a
	.byte	0x8a
	.long	0x526
	.byte	0x8
	.uleb128 0x8
	.long	.LASF284
	.byte	0x1a
	.byte	0x8c
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF285
	.byte	0x1a
	.byte	0x8d
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF286
	.byte	0x1a
	.byte	0x8f
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF287
	.byte	0x1a
	.byte	0x92
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF268
	.byte	0x1a
	.byte	0x94
	.long	0x526
	.byte	0x20
	.uleb128 0x8
	.long	.LASF288
	.byte	0x1a
	.byte	0x95
	.long	0x526
	.byte	0x28
	.uleb128 0x8
	.long	.LASF289
	.byte	0x1a
	.byte	0x97
	.long	0x14fd
	.byte	0x30
	.uleb128 0x8
	.long	.LASF290
	.byte	0x1a
	.byte	0x98
	.long	0x39c
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1465
	.uleb128 0x6
	.byte	0x8
	.long	0x1503
	.uleb128 0x6
	.byte	0x8
	.long	0x146b
	.uleb128 0x2
	.long	.LASF291
	.byte	0x1a
	.byte	0x99
	.long	0x1476
	.uleb128 0x12
	.byte	0x10
	.byte	0x1b
	.byte	0x40
	.long	0x1535
	.uleb128 0x11
	.string	"sen"
	.byte	0x1b
	.byte	0x41
	.long	0x526
	.byte	0
	.uleb128 0x8
	.long	.LASF292
	.byte	0x1b
	.byte	0x42
	.long	0x526
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF293
	.byte	0x1b
	.byte	0x43
	.long	0x1514
	.uleb128 0x12
	.byte	0x50
	.byte	0x1c
	.byte	0x5e
	.long	0x15b4
	.uleb128 0x11
	.string	"hmm"
	.byte	0x1c
	.byte	0x5f
	.long	0x12ef
	.byte	0
	.uleb128 0x8
	.long	.LASF280
	.byte	0x1c
	.byte	0x60
	.long	0x39c
	.byte	0x28
	.uleb128 0x11
	.string	"wid"
	.byte	0x1c
	.byte	0x61
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF168
	.byte	0x1c
	.byte	0x62
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF117
	.byte	0x1c
	.byte	0x63
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF294
	.byte	0x1c
	.byte	0x64
	.long	0xa79
	.byte	0x40
	.uleb128 0x11
	.string	"ci"
	.byte	0x1c
	.byte	0x66
	.long	0x62e
	.byte	0x48
	.uleb128 0x8
	.long	.LASF295
	.byte	0x1c
	.byte	0x67
	.long	0x2cf
	.byte	0x49
	.uleb128 0x8
	.long	.LASF296
	.byte	0x1c
	.byte	0x68
	.long	0x670
	.byte	0x4a
	.byte	0
	.uleb128 0x2
	.long	.LASF297
	.byte	0x1c
	.byte	0x69
	.long	0x1540
	.uleb128 0x12
	.byte	0x10
	.byte	0x1c
	.byte	0x76
	.long	0x15df
	.uleb128 0x11
	.string	"lc"
	.byte	0x1c
	.byte	0x77
	.long	0x62e
	.byte	0
	.uleb128 0x8
	.long	.LASF298
	.byte	0x1c
	.byte	0x78
	.long	0x39c
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF299
	.byte	0x1c
	.byte	0x7a
	.long	0x15bf
	.uleb128 0x12
	.byte	0x40
	.byte	0x1c
	.byte	0x7f
	.long	0x1677
	.uleb128 0x8
	.long	.LASF272
	.byte	0x1c
	.byte	0x80
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF298
	.byte	0x1c
	.byte	0x82
	.long	0x39c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF300
	.byte	0x1c
	.byte	0x83
	.long	0x1677
	.byte	0x10
	.uleb128 0x8
	.long	.LASF301
	.byte	0x1c
	.byte	0x85
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF302
	.byte	0x1c
	.byte	0x86
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF303
	.byte	0x1c
	.byte	0x87
	.long	0x167d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF304
	.byte	0x1c
	.byte	0x88
	.long	0x167d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF305
	.byte	0x1c
	.byte	0x8a
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF306
	.byte	0x1c
	.byte	0x8b
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF307
	.byte	0x1c
	.byte	0x8d
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF308
	.byte	0x1c
	.byte	0x8e
	.long	0x2b9
	.byte	0x3c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x15df
	.uleb128 0x6
	.byte	0x8
	.long	0x1683
	.uleb128 0x6
	.byte	0x8
	.long	0x15b4
	.uleb128 0x2
	.long	.LASF309
	.byte	0x1c
	.byte	0x8f
	.long	0x15ea
	.uleb128 0x12
	.byte	0x10
	.byte	0x1d
	.byte	0x40
	.long	0x16cd
	.uleb128 0x8
	.long	.LASF310
	.byte	0x1d
	.byte	0x41
	.long	0x2b9
	.byte	0
	.uleb128 0x11
	.string	"hmm"
	.byte	0x1d
	.byte	0x42
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF311
	.byte	0x1d
	.byte	0x43
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF142
	.byte	0x1d
	.byte	0x44
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF312
	.byte	0x1d
	.byte	0x45
	.long	0x1694
	.uleb128 0x18
	.value	0x1f8
	.byte	0x1e
	.byte	0x56
	.long	0x1977
	.uleb128 0x8
	.long	.LASF313
	.byte	0x1e
	.byte	0x57
	.long	0x1977
	.byte	0
	.uleb128 0x8
	.long	.LASF314
	.byte	0x1e
	.byte	0x58
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF315
	.byte	0x1e
	.byte	0x59
	.long	0x197d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF316
	.byte	0x1e
	.byte	0x5a
	.long	0x197d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF317
	.byte	0x1e
	.byte	0x5b
	.long	0x197d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF318
	.byte	0x1e
	.byte	0x5c
	.long	0x2b9
	.byte	0x28
	.uleb128 0x8
	.long	.LASF319
	.byte	0x1e
	.byte	0x5e
	.long	0x1989
	.byte	0x30
	.uleb128 0x8
	.long	.LASF320
	.byte	0x1e
	.byte	0x60
	.long	0x198f
	.byte	0x38
	.uleb128 0x11
	.string	"nfr"
	.byte	0x1e
	.byte	0x61
	.long	0x2b9
	.byte	0x40
	.uleb128 0x8
	.long	.LASF321
	.byte	0x1e
	.byte	0x63
	.long	0x526
	.byte	0x48
	.uleb128 0x8
	.long	.LASF322
	.byte	0x1e
	.byte	0x64
	.long	0x526
	.byte	0x50
	.uleb128 0x8
	.long	.LASF323
	.byte	0x1e
	.byte	0x65
	.long	0x526
	.byte	0x58
	.uleb128 0x8
	.long	.LASF324
	.byte	0x1e
	.byte	0x66
	.long	0x526
	.byte	0x60
	.uleb128 0x8
	.long	.LASF325
	.byte	0x1e
	.byte	0x67
	.long	0x2b9
	.byte	0x68
	.uleb128 0x8
	.long	.LASF326
	.byte	0x1e
	.byte	0x68
	.long	0x2b9
	.byte	0x6c
	.uleb128 0x8
	.long	.LASF327
	.byte	0x1e
	.byte	0x6a
	.long	0xfce
	.byte	0x70
	.uleb128 0x8
	.long	.LASF328
	.byte	0x1e
	.byte	0x6b
	.long	0x526
	.byte	0x78
	.uleb128 0x8
	.long	.LASF329
	.byte	0x1e
	.byte	0x6c
	.long	0x526
	.byte	0x80
	.uleb128 0x8
	.long	.LASF330
	.byte	0x1e
	.byte	0x6d
	.long	0x2b9
	.byte	0x88
	.uleb128 0x8
	.long	.LASF268
	.byte	0x1e
	.byte	0x6e
	.long	0x2b9
	.byte	0x8c
	.uleb128 0x8
	.long	.LASF331
	.byte	0x1e
	.byte	0x6f
	.long	0x2b9
	.byte	0x90
	.uleb128 0x8
	.long	.LASF271
	.byte	0x1e
	.byte	0x71
	.long	0x1995
	.byte	0x98
	.uleb128 0x8
	.long	.LASF332
	.byte	0x1e
	.byte	0x72
	.long	0x199b
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF333
	.byte	0x1e
	.byte	0x73
	.long	0x2b9
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF334
	.byte	0x1e
	.byte	0x74
	.long	0x2b9
	.byte	0xac
	.uleb128 0x8
	.long	.LASF335
	.byte	0x1e
	.byte	0x78
	.long	0x2b9
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF336
	.byte	0x1e
	.byte	0x7a
	.long	0x2b9
	.byte	0xb4
	.uleb128 0x8
	.long	.LASF337
	.byte	0x1e
	.byte	0x7c
	.long	0x2b9
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF338
	.byte	0x1e
	.byte	0x7f
	.long	0x2b9
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF339
	.byte	0x1e
	.byte	0x80
	.long	0x2b9
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF340
	.byte	0x1e
	.byte	0x81
	.long	0x2b9
	.byte	0xc4
	.uleb128 0x8
	.long	.LASF341
	.byte	0x1e
	.byte	0x82
	.long	0x2b9
	.byte	0xc8
	.uleb128 0x8
	.long	.LASF342
	.byte	0x1e
	.byte	0x83
	.long	0x2b9
	.byte	0xcc
	.uleb128 0x8
	.long	.LASF343
	.byte	0x1e
	.byte	0x84
	.long	0x8f
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF344
	.byte	0x1e
	.byte	0x86
	.long	0x2b9
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF345
	.byte	0x1e
	.byte	0x87
	.long	0x2b9
	.byte	0xdc
	.uleb128 0x8
	.long	.LASF346
	.byte	0x1e
	.byte	0x88
	.long	0x2b9
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF347
	.byte	0x1e
	.byte	0x89
	.long	0x526
	.byte	0xe8
	.uleb128 0x8
	.long	.LASF348
	.byte	0x1e
	.byte	0x8a
	.long	0x2b9
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF349
	.byte	0x1e
	.byte	0x8b
	.long	0x2b9
	.byte	0xf4
	.uleb128 0x8
	.long	.LASF350
	.byte	0x1e
	.byte	0x8d
	.long	0x496
	.byte	0xf8
	.uleb128 0x19
	.long	.LASF351
	.byte	0x1e
	.byte	0x8e
	.long	0x496
	.value	0x130
	.uleb128 0x19
	.long	.LASF352
	.byte	0x1e
	.byte	0x8f
	.long	0x496
	.value	0x168
	.uleb128 0x19
	.long	.LASF353
	.byte	0x1e
	.byte	0x90
	.long	0x2b9
	.value	0x1a0
	.uleb128 0x19
	.long	.LASF354
	.byte	0x1e
	.byte	0x91
	.long	0x306
	.value	0x1a8
	.uleb128 0x19
	.long	.LASF355
	.byte	0x1e
	.byte	0x92
	.long	0x306
	.value	0x1b0
	.uleb128 0x19
	.long	.LASF356
	.byte	0x1e
	.byte	0x93
	.long	0x306
	.value	0x1b8
	.uleb128 0x19
	.long	.LASF357
	.byte	0x1e
	.byte	0x94
	.long	0x306
	.value	0x1c0
	.uleb128 0x19
	.long	.LASF358
	.byte	0x1e
	.byte	0x95
	.long	0xf44
	.value	0x1c8
	.uleb128 0x19
	.long	.LASF359
	.byte	0x1e
	.byte	0x96
	.long	0xf44
	.value	0x1d0
	.uleb128 0x19
	.long	.LASF360
	.byte	0x1e
	.byte	0x98
	.long	0x19a1
	.value	0x1d8
	.uleb128 0x19
	.long	.LASF361
	.byte	0x1e
	.byte	0x99
	.long	0x2b9
	.value	0x1e0
	.uleb128 0x19
	.long	.LASF362
	.byte	0x1e
	.byte	0x9a
	.long	0x8f
	.value	0x1e8
	.uleb128 0x19
	.long	.LASF363
	.byte	0x1e
	.byte	0x9b
	.long	0x2b9
	.value	0x1f0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x126f
	.uleb128 0x6
	.byte	0x8
	.long	0x1983
	.uleb128 0x6
	.byte	0x8
	.long	0x1689
	.uleb128 0x6
	.byte	0x8
	.long	0x1509
	.uleb128 0x6
	.byte	0x8
	.long	0x547
	.uleb128 0x6
	.byte	0x8
	.long	0x1535
	.uleb128 0x6
	.byte	0x8
	.long	0x16cd
	.uleb128 0x6
	.byte	0x8
	.long	0x19a7
	.uleb128 0x6
	.byte	0x8
	.long	0x1354
	.uleb128 0x2
	.long	.LASF364
	.byte	0x1e
	.byte	0x9c
	.long	0x16d8
	.uleb128 0x1a
	.long	.LASF410
	.byte	0x1
	.byte	0x55
	.long	0x2b9
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x19fe
	.uleb128 0x1b
	.string	"a"
	.byte	0x1
	.byte	0x55
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.string	"b"
	.byte	0x1
	.byte	0x55
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"c"
	.byte	0x1
	.byte	0x57
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.long	.LASF365
	.byte	0x1
	.byte	0x61
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a97
	.uleb128 0x1b
	.string	"fp"
	.byte	0x1
	.byte	0x61
	.long	0xf44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"kb"
	.byte	0x1
	.byte	0x61
	.long	0x1a97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.string	"hyp"
	.byte	0x1
	.byte	0x61
	.long	0x39c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.string	"hdr"
	.byte	0x1
	.byte	0x61
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.string	"gn"
	.byte	0x1
	.byte	0x63
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"h"
	.byte	0x1
	.byte	0x64
	.long	0x19a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF271
	.byte	0x1
	.byte	0x65
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF192
	.byte	0x1
	.byte	0x65
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.long	.LASF167
	.byte	0x1
	.byte	0x66
	.long	0xac8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x19ad
	.uleb128 0x1d
	.long	.LASF366
	.byte	0x1
	.byte	0x7f
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b28
	.uleb128 0x1b
	.string	"fp"
	.byte	0x1
	.byte	0x7f
	.long	0xf44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"kb"
	.byte	0x1
	.byte	0x7f
	.long	0x1a97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.string	"hyp"
	.byte	0x1
	.byte	0x7f
	.long	0x39c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.string	"hdr"
	.byte	0x1
	.byte	0x7f
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.string	"gn"
	.byte	0x1
	.byte	0x81
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"h"
	.byte	0x1
	.byte	0x82
	.long	0x19a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF167
	.byte	0x1
	.byte	0x83
	.long	0xac8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF367
	.byte	0x1
	.byte	0x84
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1d
	.long	.LASF368
	.byte	0x1
	.byte	0x97
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b7b
	.uleb128 0x1b
	.string	"kb"
	.byte	0x1
	.byte	0x97
	.long	0x1a97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"kbc"
	.byte	0x1
	.byte	0x99
	.long	0x1977
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"n"
	.byte	0x1
	.byte	0x9a
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.long	.LASF276
	.byte	0x1
	.byte	0x9a
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1d
	.long	.LASF369
	.byte	0x1
	.byte	0xb2
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cf0
	.uleb128 0x1b
	.string	"kb"
	.byte	0x1
	.byte	0xb2
	.long	0x1a97
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16536
	.uleb128 0x1c
	.string	"id"
	.byte	0x1
	.byte	0xb4
	.long	0x2b9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16500
	.uleb128 0x1e
	.long	.LASF271
	.byte	0x1
	.byte	0xb4
	.long	0x2b9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16520
	.uleb128 0x1e
	.long	.LASF192
	.byte	0x1
	.byte	0xb4
	.long	0x2b9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16516
	.uleb128 0x1c
	.string	"hyp"
	.byte	0x1
	.byte	0xb5
	.long	0x39c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16456
	.uleb128 0x1c
	.string	"gn"
	.byte	0x1
	.byte	0xb6
	.long	0x3a7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16496
	.uleb128 0x1c
	.string	"h"
	.byte	0x1
	.byte	0xb7
	.long	0x19a7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16448
	.uleb128 0x1c
	.string	"fp"
	.byte	0x1
	.byte	0xb8
	.long	0xf44
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16472
	.uleb128 0x1e
	.long	.LASF370
	.byte	0x1
	.byte	0xb8
	.long	0xf44
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16488
	.uleb128 0x1e
	.long	.LASF167
	.byte	0x1
	.byte	0xb9
	.long	0xac8
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16464
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0xba
	.long	0x2b9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16512
	.uleb128 0x1e
	.long	.LASF371
	.byte	0x1
	.byte	0xbb
	.long	0x8f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16480
	.uleb128 0x1f
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1c76
	.uleb128 0x1e
	.long	.LASF372
	.byte	0x1
	.byte	0xc3
	.long	0x1cf0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16432
	.byte	0
	.uleb128 0x1f
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x1cbf
	.uleb128 0x20
	.string	"str"
	.byte	0x1
	.value	0x11b
	.long	0x1d01
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16432
	.uleb128 0x21
	.long	.LASF373
	.byte	0x1
	.value	0x11c
	.long	0x2b9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16524
	.uleb128 0x21
	.long	.LASF374
	.byte	0x1
	.value	0x11d
	.long	0x306
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16440
	.byte	0
	.uleb128 0x22
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.value	0x174
	.long	0x2b9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16508
	.uleb128 0x20
	.string	"k"
	.byte	0x1
	.value	0x174
	.long	0x2b9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16504
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x1d01
	.uleb128 0x23
	.long	0x86
	.value	0x1fff
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x1d12
	.uleb128 0x23
	.long	0x86
	.value	0x3fff
	.byte	0
	.uleb128 0x24
	.long	.LASF375
	.byte	0x1
	.value	0x19c
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e53
	.uleb128 0x25
	.string	"kb"
	.byte	0x1
	.value	0x19c
	.long	0x1a97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.string	"cf"
	.byte	0x1
	.value	0x19c
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x20
	.string	"k"
	.byte	0x1
	.value	0x19e
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x20
	.string	"th"
	.byte	0x1
	.value	0x19e
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.string	"vh"
	.byte	0x1
	.value	0x19f
	.long	0x1989
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.string	"ve"
	.byte	0x1
	.value	0x1a0
	.long	0x1465
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF270
	.byte	0x1
	.value	0x1a1
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x20
	.string	"le"
	.byte	0x1
	.value	0x1a1
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF376
	.byte	0x1
	.value	0x1a1
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x21
	.long	.LASF264
	.byte	0x1
	.value	0x1a1
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.long	.LASF377
	.byte	0x1
	.value	0x1a2
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.string	"bs"
	.byte	0x1
	.value	0x1a3
	.long	0x526
	.uleb128 0x9
	.byte	0x3
	.quad	bs.6184
	.uleb128 0x20
	.string	"bv"
	.byte	0x1
	.value	0x1a3
	.long	0x526
	.uleb128 0x9
	.byte	0x3
	.quad	bv.6185
	.uleb128 0x20
	.string	"epl"
	.byte	0x1
	.value	0x1a3
	.long	0x2b9
	.uleb128 0x9
	.byte	0x3
	.quad	epl.6186
	.uleb128 0x20
	.string	"wid"
	.byte	0x1
	.value	0x1a4
	.long	0x65a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.value	0x1a5
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x21
	.long	.LASF167
	.byte	0x1
	.value	0x1a6
	.long	0xac8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF147
	.byte	0x1
	.value	0x1a7
	.long	0x9ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x24
	.long	.LASF378
	.byte	0x1
	.value	0x1ee
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ee6
	.uleb128 0x25
	.string	"md"
	.byte	0x1
	.value	0x1ee
	.long	0x9ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"kb"
	.byte	0x1
	.value	0x1ee
	.long	0x1a97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF379
	.byte	0x1
	.value	0x1ee
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x21
	.long	.LASF380
	.byte	0x1
	.value	0x1f0
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x1f1
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.value	0x1f1
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF381
	.byte	0x1
	.value	0x1f2
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.long	.LASF382
	.byte	0x1
	.value	0x1f2
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x24
	.long	.LASF383
	.byte	0x1
	.value	0x37a
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2141
	.uleb128 0x26
	.long	.LASF384
	.byte	0x1
	.value	0x37a
	.long	0x2141
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x26
	.long	.LASF385
	.byte	0x1
	.value	0x37b
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x26
	.long	.LASF386
	.byte	0x1
	.value	0x37c
	.long	0x526
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x25
	.string	"kb"
	.byte	0x1
	.value	0x37e
	.long	0x1a97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x26
	.long	.LASF387
	.byte	0x1
	.value	0x380
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x26
	.long	.LASF388
	.byte	0x1
	.value	0x381
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x26
	.long	.LASF389
	.byte	0x1
	.value	0x382
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF390
	.byte	0x1
	.value	0x383
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.long	.LASF391
	.byte	0x1
	.value	0x385
	.long	0xf44
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x21
	.long	.LASF313
	.byte	0x1
	.value	0x387
	.long	0x1977
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.long	.LASF147
	.byte	0x1
	.value	0x388
	.long	0x9ed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.long	.LASF167
	.byte	0x1
	.value	0x389
	.long	0xac8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.string	"d2p"
	.byte	0x1
	.value	0x38a
	.long	0x1245
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF95
	.byte	0x1
	.value	0x38b
	.long	0x1257
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.string	"svq"
	.byte	0x1
	.value	0x38c
	.long	0x125d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.string	"gs"
	.byte	0x1
	.value	0x38d
	.long	0x1263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF392
	.byte	0x1
	.value	0x38e
	.long	0x1983
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF393
	.byte	0x1
	.value	0x38f
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.long	.LASF394
	.byte	0x1
	.value	0x38f
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x20
	.string	"th"
	.byte	0x1
	.value	0x38f
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x20
	.string	"pth"
	.byte	0x1
	.value	0x38f
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x20
	.string	"wth"
	.byte	0x1
	.value	0x38f
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x390
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.value	0x390
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.value	0x390
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x21
	.long	.LASF395
	.byte	0x1
	.value	0x391
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x21
	.long	.LASF396
	.byte	0x1
	.value	0x392
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x21
	.long	.LASF397
	.byte	0x1
	.value	0x393
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x20
	.string	"hb"
	.byte	0x1
	.value	0x393
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x20
	.string	"pb"
	.byte	0x1
	.value	0x393
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x20
	.string	"wb"
	.byte	0x1
	.value	0x393
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x20
	.string	"f"
	.byte	0x1
	.value	0x394
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x21
	.long	.LASF398
	.byte	0x1
	.value	0x396
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x22
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x20
	.string	"bin"
	.byte	0x1
	.value	0x41b
	.long	0x526
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF399
	.byte	0x1
	.value	0x41b
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x20
	.string	"bw"
	.byte	0x1
	.value	0x41b
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2147
	.uleb128 0x6
	.byte	0x8
	.long	0x214d
	.uleb128 0x6
	.byte	0x8
	.long	0x2ab
	.uleb128 0x27
	.long	.LASF400
	.byte	0x4
	.byte	0xa9
	.long	0x266
	.uleb128 0x27
	.long	.LASF401
	.byte	0x1
	.byte	0x4f
	.long	0x69
	.uleb128 0x28
	.long	.LASF402
	.byte	0x1
	.byte	0x50
	.long	0x69
	.uleb128 0x9
	.byte	0x3
	.quad	tot_considered
	.uleb128 0x28
	.long	.LASF403
	.byte	0x1
	.byte	0x51
	.long	0xf44
	.uleb128 0x9
	.byte	0x3
	.quad	confp
	.uleb128 0x28
	.long	.LASF404
	.byte	0x1
	.byte	0x52
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	confp_open
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
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
.LASF374:
	.string	"logbase"
.LASF402:
	.string	"tot_considered"
.LASF346:
	.string	"utt_gau_eval"
.LASF7:
	.string	"size_t"
.LASF251:
	.string	"n_code"
.LASF10:
	.string	"sizetype"
.LASF379:
	.string	"heutype"
.LASF356:
	.string	"tot_hmm_eval"
.LASF135:
	.string	"sseq"
.LASF297:
	.string	"lextree_node_t"
.LASF385:
	.string	"block_nfeatvec"
.LASF206:
	.string	"tgprob"
.LASF186:
	.string	"used"
.LASF144:
	.string	"basewid"
.LASF371:
	.string	"hyp_strptr"
.LASF364:
	.string	"kb_t"
.LASF108:
	.string	"s3senid_t"
.LASF141:
	.string	"mdef_t"
.LASF298:
	.string	"root"
.LASF167:
	.string	"dict"
.LASF24:
	.string	"_IO_save_end"
.LASF256:
	.string	"codemap"
.LASF54:
	.string	"uint32"
.LASF208:
	.string	"tg_segbase"
.LASF322:
	.string	"comssid_active"
.LASF130:
	.string	"n_sen"
.LASF292:
	.string	"comsen"
.LASF351:
	.string	"tm_srch"
.LASF162:
	.string	"comsseq"
.LASF357:
	.string	"tot_wd_exit"
.LASF17:
	.string	"_IO_write_base"
.LASF376:
	.string	"n_ci"
.LASF145:
	.string	"comp"
.LASF267:
	.string	"state"
.LASF33:
	.string	"_lock"
.LASF387:
	.string	"maxwpf"
.LASF218:
	.string	"n_bg_score"
.LASF272:
	.string	"type"
.LASF241:
	.string	"vqsize"
.LASF191:
	.string	"lwid"
.LASF22:
	.string	"_IO_save_base"
.LASF109:
	.string	"WORD_POSN_BEGIN"
.LASF340:
	.string	"pl_window_effective"
.LASF100:
	.string	"mgau_model_t"
.LASF324:
	.string	"rec_sen_active"
.LASF53:
	.string	"int8"
.LASF84:
	.string	"window_size"
.LASF26:
	.string	"_chain"
.LASF216:
	.string	"n_bg_fill"
.LASF280:
	.string	"children"
.LASF287:
	.string	"wbeam"
.LASF30:
	.string	"_cur_column"
.LASF95:
	.string	"mgau"
.LASF228:
	.string	"lmclass"
.LASF305:
	.string	"n_active"
.LASF318:
	.string	"n_lextrans"
.LASF166:
	.string	"dict2pid_t"
.LASF80:
	.string	"cepsize"
.LASF92:
	.string	"n_mgau"
.LASF308:
	.string	"wbest"
.LASF117:
	.string	"ssid"
.LASF248:
	.string	"subvq_t"
.LASF6:
	.string	"long int"
.LASF93:
	.string	"max_comp"
.LASF332:
	.string	"beam"
.LASF243:
	.string	"gautbl"
.LASF148:
	.string	"ciphone_str"
.LASF70:
	.string	"hash_table_t"
.LASF262:
	.string	"n_alloclm"
.LASF43:
	.string	"_IO_marker"
.LASF57:
	.string	"float32"
.LASF265:
	.string	"history"
.LASF320:
	.string	"feat"
.LASF213:
	.string	"bgoff"
.LASF133:
	.string	"ciphone"
.LASF118:
	.string	"tmat"
.LASF106:
	.string	"s3lmwid_t"
.LASF222:
	.string	"n_tg_score"
.LASF78:
	.string	"ptmr_t"
.LASF155:
	.string	"finishwid"
.LASF82:
	.string	"n_stream"
.LASF223:
	.string	"n_tg_bo"
.LASF4:
	.string	"signed char"
.LASF266:
	.string	"hmm_state_t"
.LASF294:
	.string	"ssid_lc"
.LASF365:
	.string	"matchseg_write"
.LASF42:
	.string	"_IO_FILE"
.LASF314:
	.string	"n_lextree"
.LASF246:
	.string	"gauscore"
.LASF304:
	.string	"next_active"
.LASF120:
	.string	"phone_t"
.LASF275:
	.string	"vh_lmstate_t"
.LASF1:
	.string	"unsigned char"
.LASF163:
	.string	"comwt"
.LASF329:
	.string	"phn_heur_list"
.LASF185:
	.string	"tg_t"
.LASF187:
	.string	"membg_t"
.LASF164:
	.string	"n_comstate"
.LASF348:
	.string	"hmm_hist_bins"
.LASF224:
	.string	"n_tgcache_hit"
.LASF264:
	.string	"score"
.LASF115:
	.string	"filler"
.LASF154:
	.string	"startwid"
.LASF202:
	.string	"bg_seg_sz"
.LASF336:
	.string	"svq4svq"
.LASF67:
	.string	"table"
.LASF333:
	.string	"ds_ratio"
.LASF317:
	.string	"fillertree"
.LASF377:
	.string	"maxpscore"
.LASF11:
	.string	"char"
.LASF334:
	.string	"cond_ds"
.LASF390:
	.string	"ptranskip"
.LASF179:
	.string	"firstbg"
.LASF105:
	.string	"s3wid_t"
.LASF253:
	.string	"n_featlen"
.LASF90:
	.string	"mixw"
.LASF175:
	.string	"wordlist"
.LASF359:
	.string	"matchsegfp"
.LASF239:
	.string	"origsize"
.LASF232:
	.string	"lmset_s"
.LASF233:
	.string	"lmset_t"
.LASF408:
	.string	"_IO_lock_t"
.LASF151:
	.string	"filler_start"
.LASF123:
	.string	"ph_lc_s"
.LASF125:
	.string	"ph_lc_t"
.LASF245:
	.string	"vqdist"
.LASF406:
	.string	"utt.c"
.LASF295:
	.string	"composite"
.LASF323:
	.string	"sen_active"
.LASF358:
	.string	"matchfp"
.LASF165:
	.string	"n_comsseq"
.LASF168:
	.string	"prob"
.LASF388:
	.string	"maxhistpf"
.LASF299:
	.string	"lextree_lcroot_t"
.LASF274:
	.string	"lm3g"
.LASF14:
	.string	"_IO_read_ptr"
.LASF161:
	.string	"comstate"
.LASF136:
	.string	"n_sseq"
.LASF360:
	.string	"hyp_segs"
.LASF46:
	.string	"_pos"
.LASF121:
	.string	"ph_rc_s"
.LASF122:
	.string	"ph_rc_t"
.LASF273:
	.string	"hyp_t"
.LASF290:
	.string	"lwidlist"
.LASF97:
	.string	"frm_sen_eval"
.LASF152:
	.string	"filler_end"
.LASF25:
	.string	"_markers"
.LASF347:
	.string	"hmm_hist"
.LASF372:
	.string	"file"
.LASF160:
	.string	"single_lc"
.LASF137:
	.string	"cd2cisen"
.LASF169:
	.string	"fillpen_t"
.LASF205:
	.string	"bgprob"
.LASF355:
	.string	"tot_gau_eval"
.LASF102:
	.string	"s3pid_t"
.LASF229:
	.string	"n_lmclass"
.LASF301:
	.string	"n_lc"
.LASF303:
	.string	"active"
.LASF217:
	.string	"n_bg_inmem"
.LASF362:
	.string	"hyp_str"
.LASF409:
	.string	"anytype_s"
.LASF59:
	.string	"anytype_t"
.LASF261:
	.string	"n_lm"
.LASF34:
	.string	"_offset"
.LASF350:
	.string	"tm_sen"
.LASF220:
	.string	"n_tg_fill"
.LASF204:
	.string	"tginfo"
.LASF235:
	.string	"tmat_t"
.LASF197:
	.string	"max_ug"
.LASF0:
	.string	"long unsigned int"
.LASF180:
	.string	"ug_t"
.LASF126:
	.string	"n_ciphone"
.LASF331:
	.string	"bestwordscore"
.LASF28:
	.string	"_flags2"
.LASF188:
	.string	"tginfo_s"
.LASF190:
	.string	"tginfo_t"
.LASF16:
	.string	"_IO_read_base"
.LASF338:
	.string	"pl_window"
.LASF76:
	.string	"start_cpu"
.LASF293:
	.string	"ascr_t"
.LASF146:
	.string	"dictword_t"
.LASF249:
	.string	"gs_s"
.LASF257:
	.string	"gs_t"
.LASF41:
	.string	"_unused2"
.LASF270:
	.string	"vhid"
.LASF259:
	.string	"lmset"
.LASF410:
	.string	"NO_UFLOW_ADD"
.LASF104:
	.string	"s3tmatid_t"
.LASF321:
	.string	"ssid_active"
.LASF401:
	.string	"considered"
.LASF227:
	.string	"dict_size"
.LASF337:
	.string	"ci_pbeam"
.LASF386:
	.string	"curfrm"
.LASF29:
	.string	"_old_offset"
.LASF221:
	.string	"n_tg_inmem"
.LASF114:
	.string	"word_posn_t"
.LASF211:
	.string	"n_tgbowt"
.LASF326:
	.string	"rec_bst_senscr"
.LASF302:
	.string	"n_node"
.LASF170:
	.string	"lmclass_word_s"
.LASF173:
	.string	"lmclass_word_t"
.LASF361:
	.string	"hyp_seglen"
.LASF47:
	.string	"long long int"
.LASF389:
	.string	"maxhmmpf"
.LASF367:
	.string	"counter"
.LASF237:
	.string	"n_gau"
.LASF50:
	.string	"double"
.LASF158:
	.string	"internal"
.LASF140:
	.string	"wpos_ci_lclist"
.LASF369:
	.string	"utt_end"
.LASF19:
	.string	"_IO_write_end"
.LASF198:
	.string	"wordstr"
.LASF312:
	.string	"beam_t"
.LASF398:
	.string	"pheurtype"
.LASF345:
	.string	"utt_sen_eval"
.LASF313:
	.string	"kbcore"
.LASF99:
	.string	"gau_type"
.LASF271:
	.string	"ascr"
.LASF380:
	.string	"nState"
.LASF269:
	.string	"hmm_t"
.LASF49:
	.string	"float"
.LASF138:
	.string	"sen2cimap"
.LASF252:
	.string	"n_density"
.LASF370:
	.string	"latfp"
.LASF328:
	.string	"cache_best_list"
.LASF77:
	.string	"start_elapsed"
.LASF20:
	.string	"_IO_buf_base"
.LASF242:
	.string	"featdim"
.LASF3:
	.string	"unsigned int"
.LASF112:
	.string	"WORD_POSN_INTERNAL"
.LASF157:
	.string	"dict_t"
.LASF110:
	.string	"WORD_POSN_END"
.LASF193:
	.string	"lm_tgcache_entry_t"
.LASF254:
	.string	"n_mbyte"
.LASF296:
	.string	"frame"
.LASF91:
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
.LASF45:
	.string	"_sbuf"
.LASF72:
	.string	"t_cpu"
.LASF247:
	.string	"mgau_sl"
.LASF391:
	.string	"hmmdumpfp"
.LASF291:
	.string	"vithist_t"
.LASF407:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF132:
	.string	"ciphone_ht"
.LASF281:
	.string	"vh_lms2vh_t"
.LASF13:
	.string	"_flags"
.LASF240:
	.string	"n_sv"
.LASF181:
	.string	"probid"
.LASF286:
	.string	"bghist"
.LASF75:
	.string	"t_tot_elapsed"
.LASF40:
	.string	"_mode"
.LASF349:
	.string	"hmm_hist_binsize"
.LASF335:
	.string	"gs4gs"
.LASF405:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF207:
	.string	"tgbowt"
.LASF378:
	.string	"computePhnHeur"
.LASF192:
	.string	"lscr"
.LASF319:
	.string	"vithist"
.LASF111:
	.string	"WORD_POSN_SINGLE"
.LASF309:
	.string	"lextree_t"
.LASF189:
	.string	"n_tg"
.LASF147:
	.string	"mdef"
.LASF244:
	.string	"subvec"
.LASF341:
	.string	"pl_beam"
.LASF325:
	.string	"rec_bstcid"
.LASF236:
	.string	"arraysize_t"
.LASF315:
	.string	"ugtree"
.LASF142:
	.string	"word"
.LASF366:
	.string	"match_write"
.LASF131:
	.string	"n_tmat"
.LASF12:
	.string	"FILE"
.LASF81:
	.string	"cepsize_used"
.LASF195:
	.string	"n_ug"
.LASF65:
	.string	"hash_entry_s"
.LASF66:
	.string	"hash_entry_t"
.LASF215:
	.string	"tgcache"
.LASF282:
	.string	"entry"
.LASF83:
	.string	"stream_len"
.LASF395:
	.string	"n_hmm_eval"
.LASF156:
	.string	"silwid"
.LASF258:
	.string	"dict2pid"
.LASF353:
	.string	"tot_fr"
.LASF68:
	.string	"size"
.LASF48:
	.string	"long long unsigned int"
.LASF88:
	.string	"n_comp"
.LASF96:
	.string	"distfloor"
.LASF330:
	.string	"skip_count"
.LASF238:
	.string	"vector_gautbl_t"
.LASF381:
	.string	"curPhn"
.LASF8:
	.string	"__off_t"
.LASF225:
	.string	"access_type"
.LASF101:
	.string	"s3cipid_t"
.LASF89:
	.string	"mean"
.LASF116:
	.string	"ciphone_t"
.LASF214:
	.string	"tgoff"
.LASF278:
	.string	"lmstate"
.LASF124:
	.string	"rclist"
.LASF343:
	.string	"uttid"
.LASF64:
	.string	"glist_t"
.LASF79:
	.string	"feat_s"
.LASF87:
	.string	"feat_t"
.LASF363:
	.string	"hyp_strlen"
.LASF283:
	.string	"frame_start"
.LASF85:
	.string	"varnorm"
.LASF60:
	.string	"gnode_s"
.LASF63:
	.string	"gnode_t"
.LASF74:
	.string	"t_tot_cpu"
.LASF196:
	.string	"n_bg"
.LASF23:
	.string	"_IO_backup_base"
.LASF307:
	.string	"best"
.LASF32:
	.string	"_shortbuf"
.LASF316:
	.string	"ugtreeMulti"
.LASF194:
	.string	"lm_s"
.LASF231:
	.string	"lm_t"
.LASF171:
	.string	"dictwid"
.LASF159:
	.string	"ldiph_lc"
.LASF306:
	.string	"n_next_active"
.LASF119:
	.string	"wpos"
.LASF86:
	.string	"compute_feat"
.LASF44:
	.string	"_next"
.LASF279:
	.string	"vithist_entry_t"
.LASF9:
	.string	"__off64_t"
.LASF134:
	.string	"phone"
.LASF201:
	.string	"log_bg_seg_sz"
.LASF153:
	.string	"comp_head"
.LASF129:
	.string	"n_ci_sen"
.LASF183:
	.string	"firsttg"
.LASF94:
	.string	"veclen"
.LASF21:
	.string	"_IO_buf_end"
.LASF392:
	.string	"lextree"
.LASF199:
	.string	"startlwid"
.LASF250:
	.string	"n_feat"
.LASF177:
	.string	"lmlog_t"
.LASF71:
	.string	"name"
.LASF98:
	.string	"frm_gau_eval"
.LASF56:
	.string	"uint8"
.LASF284:
	.string	"n_entry"
.LASF394:
	.string	"bestwordscr"
.LASF5:
	.string	"short int"
.LASF182:
	.string	"bowtid"
.LASF172:
	.string	"LOGprob"
.LASF393:
	.string	"besthmmscr"
.LASF139:
	.string	"ciphone2n_cd_sen"
.LASF289:
	.string	"lms2vh_root"
.LASF288:
	.string	"bestvh"
.LASF107:
	.string	"s3frmid_t"
.LASF128:
	.string	"n_emit_state"
.LASF31:
	.string	"_vtable_offset"
.LASF310:
	.string	"subvq"
.LASF383:
	.string	"utt_decode_block"
.LASF311:
	.string	"ptrans"
.LASF255:
	.string	"codeword"
.LASF342:
	.string	"wend_beam"
.LASF285:
	.string	"n_frm"
.LASF277:
	.string	"valid"
.LASF209:
	.string	"n_bgprob"
.LASF404:
	.string	"confp_open"
.LASF403:
	.string	"confp"
.LASF399:
	.string	"nbin"
.LASF52:
	.string	"int16"
.LASF354:
	.string	"tot_sen_eval"
.LASF103:
	.string	"s3ssid_t"
.LASF260:
	.string	"fillpen"
.LASF15:
	.string	"_IO_read_end"
.LASF210:
	.string	"n_tgprob"
.LASF73:
	.string	"t_elapsed"
.LASF230:
	.string	"inclass_ugscore"
.LASF375:
	.string	"utt_word_trans"
.LASF178:
	.string	"bowt"
.LASF234:
	.string	"n_state"
.LASF69:
	.string	"nocase"
.LASF368:
	.string	"utt_begin"
.LASF174:
	.string	"lmclass_s"
.LASF176:
	.string	"lmclass_t"
.LASF27:
	.string	"_fileno"
.LASF113:
	.string	"WORD_POSN_UNDEFINED"
.LASF149:
	.string	"max_words"
.LASF268:
	.string	"bestscore"
.LASF352:
	.string	"tm_ovrhd"
.LASF58:
	.string	"float64"
.LASF226:
	.string	"dict2lmwid"
.LASF384:
	.string	"block_feat"
.LASF127:
	.string	"n_phone"
.LASF2:
	.string	"short unsigned int"
.LASF400:
	.string	"stdout"
.LASF203:
	.string	"membg"
.LASF300:
	.string	"lcroot"
.LASF51:
	.string	"int32"
.LASF212:
	.string	"byteswap"
.LASF18:
	.string	"_IO_write_ptr"
.LASF382:
	.string	"curFrmPhnVar"
.LASF397:
	.string	"frm_nhmm"
.LASF184:
	.string	"bg_t"
.LASF327:
	.string	"cache_ci_senscr"
.LASF200:
	.string	"finishlwid"
.LASF150:
	.string	"n_word"
.LASF339:
	.string	"pl_window_start"
.LASF143:
	.string	"pronlen"
.LASF263:
	.string	"kbcore_t"
.LASF276:
	.string	"pred"
.LASF62:
	.string	"next"
.LASF219:
	.string	"n_bg_bo"
.LASF61:
	.string	"data"
.LASF373:
	.string	"ispipe"
.LASF396:
	.string	"frmno"
.LASF55:
	.string	"uint16"
.LASF344:
	.string	"utt_hmm_eval"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
