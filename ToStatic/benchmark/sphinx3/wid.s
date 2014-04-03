	.file	"wid.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64 wid.c
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
	.section	.rodata
.LC0:
	.string	"wid.c"
.LC1:
	.string	"ERROR"
	.align 8
.LC2:
	.string	"%s is both a word and an LM class name\n"
	.align 8
.LC3:
	.string	"Filler dictionary word '%s' found in LM\n"
	.align 8
.LC4:
	.string	"LM word '%s' is an alternative pronunciation in dictionary\n"
.LC5:
	.string	"INFO"
.LC6:
	.string	"map[dictid] = %d\n"
	.align 8
.LC7:
	.string	"Multiple mappings of '%s' in LM\n"
	.align 8
.LC8:
	.string	"%d LM words not in dictionary; ignored\n"
.LC9:
	.string	"FATAL_ERROR"
	.align 8
.LC10:
	.string	"Error in mapping, please read the log to see why\n"
	.text
	.globl	wid_dict_lm_map
	.type	wid_dict_lm_map, @function
wid_dict_lm_map:
.LFB2:
	.file 1 "wid.c"
	.loc 1 65 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# dict, dict
	movq	%rsi, -64(%rbp)	# lm, lm
	movl	%edx, -68(%rbp)	# lw, lw
	.loc 1 73 0
	movl	$0, -20(%rbp)	#, maperr
	.loc 1 76 0
	movq	-56(%rbp), %rax	# dict, tmp181
	movl	52(%rax), %eax	# dict_20(D)->n_word, D.5482
	cltq
	movl	$76, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.5483,
	call	__ckd_calloc__	#
	movq	%rax, -8(%rbp)	# tmp182, map
	.loc 1 77 0
	movl	$0, -36(%rbp)	#, n
	jmp	.L2	#
.L4:
	.loc 1 78 0
	movl	-36(%rbp), %eax	# n, tmp183
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5483
	movq	-8(%rbp), %rax	# map, tmp184
	addq	%rdx, %rax	# D.5483, D.5484
	movw	$-1, (%rax)	#, *_28
	.loc 1 79 0
	movq	-64(%rbp), %rax	# lm, tmp185
	movq	240(%rax), %rax	# lm_29(D)->inclass_ugscore, D.5485
	testq	%rax, %rax	# D.5485
	je	.L3	#,
	.loc 1 80 0
	movq	-64(%rbp), %rax	# lm, tmp186
	movq	240(%rax), %rax	# lm_29(D)->inclass_ugscore, D.5485
	movl	-36(%rbp), %edx	# n, tmp187
	movslq	%edx, %rdx	# tmp187, D.5483
	salq	$2, %rdx	#, D.5483
	addq	%rdx, %rax	# D.5483, D.5485
	movl	$0, (%rax)	#, *_34
.L3:
	.loc 1 77 0
	addl	$1, -36(%rbp)	#, n
.L2:
	.loc 1 77 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# dict, tmp188
	movl	52(%rax), %eax	# dict_20(D)->n_word, D.5482
	cmpl	-36(%rbp), %eax	# n, D.5482
	jg	.L4	#,
	.loc 1 83 0 is_stmt 1
	movl	$0, -36(%rbp)	#, n
	.loc 1 84 0
	movl	$0, -40(%rbp)	#, u
	jmp	.L5	#
.L25:
	.loc 1 85 0
	movq	-64(%rbp), %rax	# lm, tmp189
	movq	16(%rax), %rax	# lm_29(D)->wordstr, D.5486
	movl	-40(%rbp), %edx	# u, tmp190
	movslq	%edx, %rdx	# tmp190, D.5483
	salq	$3, %rdx	#, D.5483
	addq	%rdx, %rax	# D.5483, D.5486
	movq	(%rax), %rdx	# *_43, D.5487
	movq	-56(%rbp), %rax	# dict, tmp191
	movq	%rdx, %rsi	# D.5487,
	movq	%rax, %rdi	# tmp191,
	call	dict_wordid	#
	movl	%eax, -32(%rbp)	# tmp192, w
	.loc 1 87 0
	movq	-64(%rbp), %rax	# lm, tmp193
	movq	224(%rax), %rax	# lm_29(D)->lmclass, D.5488
	testq	%rax, %rax	# D.5488
	je	.L6	#,
	.loc 1 88 0
	movq	-64(%rbp), %rax	# lm, tmp194
	movq	16(%rax), %rax	# lm_29(D)->wordstr, D.5486
	movl	-40(%rbp), %edx	# u, tmp195
	movslq	%edx, %rdx	# tmp195, D.5483
	salq	$3, %rdx	#, D.5483
	addq	%rdx, %rax	# D.5483, D.5486
	movq	(%rax), %rdx	# *_50, D.5487
	movq	-64(%rbp), %rax	# lm, tmp196
	movq	%rdx, %rsi	# D.5487,
	movq	%rax, %rdi	# tmp196,
	call	lm_get_classid	#
	movl	%eax, -24(%rbp)	# tmp197, classid
.L6:
	.loc 1 93 0
	movq	-64(%rbp), %rax	# lm, tmp198
	movq	40(%rax), %rax	# lm_29(D)->ug, D.5489
	movl	-40(%rbp), %edx	# u, tmp199
	movslq	%edx, %rdx	# tmp199, D.5483
	salq	$4, %rdx	#, D.5483
	addq	%rax, %rdx	# D.5489, D.5489
	movl	-32(%rbp), %eax	# w, tmp200
	movl	%eax, (%rdx)	# tmp200, _56->dictwid
	.loc 1 95 0
	cmpl	$0, -32(%rbp)	#, w
	js	.L7	#,
	.loc 1 96 0
	movq	-64(%rbp), %rax	# lm, tmp201
	movq	224(%rax), %rax	# lm_29(D)->lmclass, D.5488
	testq	%rax, %rax	# D.5488
	je	.L8	#,
	.loc 1 96 0 is_stmt 0 discriminator 1
	cmpl	$0, -24(%rbp)	#, classid
	js	.L8	#,
	.loc 1 101 0 is_stmt 1
	movl	$.LC1, %edx	#,
	movl	$101, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movq	-64(%rbp), %rax	# lm, tmp202
	movq	16(%rax), %rax	# lm_29(D)->wordstr, D.5486
	movl	-40(%rbp), %edx	# u, tmp203
	movslq	%edx, %rdx	# tmp203, D.5483
	salq	$3, %rdx	#, D.5483
	addq	%rdx, %rax	# D.5483, D.5486
	movq	(%rax), %rax	# *_61, D.5487
	movq	%rax, %rsi	# D.5487,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 102 0
	movl	$1, -20(%rbp)	#, maperr
	jmp	.L14	#
.L8:
	.loc 1 107 0
	movl	-32(%rbp), %edx	# w, tmp204
	movq	-56(%rbp), %rax	# dict, tmp205
	movl	%edx, %esi	# tmp204,
	movq	%rax, %rdi	# tmp205,
	call	dict_filler_word	#
	testl	%eax, %eax	# D.5482
	je	.L10	#,
	.loc 1 108 0
	movl	$.LC1, %edx	#,
	movl	$108, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movq	-64(%rbp), %rax	# lm, tmp206
	movq	16(%rax), %rax	# lm_29(D)->wordstr, D.5486
	movl	-40(%rbp), %edx	# u, tmp207
	movslq	%edx, %rdx	# tmp207, D.5483
	salq	$3, %rdx	#, D.5483
	addq	%rdx, %rax	# D.5483, D.5486
	movq	(%rax), %rax	# *_68, D.5487
	movq	%rax, %rsi	# D.5487,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
.L10:
	.loc 1 110 0
	movq	-56(%rbp), %rax	# dict, tmp208
	movq	32(%rax), %rcx	# dict_20(D)->word, D.5490
	movl	-32(%rbp), %eax	# w, tmp209
	movslq	%eax, %rdx	# tmp209, D.5483
	movq	%rdx, %rax	# D.5483, tmp210
	salq	$2, %rax	#, tmp210
	addq	%rdx, %rax	# D.5483, tmp210
	salq	$3, %rax	#, tmp211
	addq	%rcx, %rax	# D.5490, D.5490
	movl	24(%rax), %eax	# _73->basewid, D.5482
	cmpl	-32(%rbp), %eax	# w, D.5482
	je	.L11	#,
	.loc 1 111 0
	movl	$.LC1, %edx	#,
	movl	$111, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	.loc 1 112 0
	movq	-64(%rbp), %rax	# lm, tmp212
	movq	16(%rax), %rax	# lm_29(D)->wordstr, D.5486
	movl	-40(%rbp), %edx	# u, tmp213
	movslq	%edx, %rdx	# tmp213, D.5483
	salq	$3, %rdx	#, D.5483
	addq	%rdx, %rax	# D.5483, D.5486
	.loc 1 111 0
	movq	(%rax), %rax	# *_78, D.5487
	movq	%rax, %rsi	# D.5487,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 114 0
	movq	-56(%rbp), %rax	# dict, tmp214
	movq	32(%rax), %rcx	# dict_20(D)->word, D.5490
	movl	-32(%rbp), %eax	# w, tmp215
	movslq	%eax, %rdx	# tmp215, D.5483
	movq	%rdx, %rax	# D.5483, tmp216
	salq	$2, %rax	#, tmp216
	addq	%rdx, %rax	# D.5483, tmp216
	salq	$3, %rax	#, tmp217
	addq	%rcx, %rax	# D.5490, D.5490
	movl	24(%rax), %eax	# _83->basewid, tmp218
	movl	%eax, -32(%rbp)	# tmp218, w
	.loc 1 115 0
	movq	-64(%rbp), %rax	# lm, tmp219
	movq	40(%rax), %rax	# lm_29(D)->ug, D.5489
	movl	-40(%rbp), %edx	# u, tmp220
	movslq	%edx, %rdx	# tmp220, D.5483
	salq	$4, %rdx	#, D.5483
	addq	%rax, %rdx	# D.5489, D.5489
	movl	-32(%rbp), %eax	# w, tmp221
	movl	%eax, (%rdx)	# tmp221, _88->dictwid
	.loc 1 118 0
	jmp	.L12	#
.L11:
	jmp	.L12	#
.L13:
	.loc 1 119 0 discriminator 2
	movl	-32(%rbp), %eax	# w, tmp222
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5483
	movq	-8(%rbp), %rax	# map, tmp223
	addq	%rax, %rdx	# tmp223, D.5484
	movl	-40(%rbp), %eax	# u, tmp224
	movw	%ax, (%rdx)	# D.5491, *_91
	.loc 1 118 0 discriminator 2
	movq	-56(%rbp), %rax	# dict, tmp225
	movq	32(%rax), %rcx	# dict_20(D)->word, D.5490
	movl	-32(%rbp), %eax	# w, tmp226
	movslq	%eax, %rdx	# tmp226, D.5483
	movq	%rdx, %rax	# D.5483, tmp227
	salq	$2, %rax	#, tmp227
	addq	%rdx, %rax	# D.5483, tmp227
	salq	$3, %rax	#, tmp228
	addq	%rcx, %rax	# D.5490, D.5490
	movl	20(%rax), %eax	# _96->alt, tmp229
	movl	%eax, -32(%rbp)	# tmp229, w
.L12:
	.loc 1 118 0 is_stmt 0 discriminator 1
	cmpl	$0, -32(%rbp)	#, w
	jns	.L13	#,
	jmp	.L14	#
.L7:
	.loc 1 122 0 is_stmt 1
	movq	-64(%rbp), %rax	# lm, tmp230
	movq	224(%rax), %rax	# lm_29(D)->lmclass, D.5488
	testq	%rax, %rax	# D.5488
	je	.L15	#,
	.loc 1 122 0 is_stmt 0 discriminator 1
	cmpl	$0, -24(%rbp)	#, classid
	js	.L15	#,
	.loc 1 125 0 is_stmt 1
	movq	-64(%rbp), %rax	# lm, tmp231
	movq	40(%rax), %rax	# lm_29(D)->ug, D.5489
	movl	-40(%rbp), %edx	# u, tmp232
	movslq	%edx, %rdx	# tmp232, D.5483
	salq	$4, %rdx	#, D.5483
	addq	%rax, %rdx	# D.5489, D.5489
	movl	-24(%rbp), %eax	# classid, tmp233
	movl	%eax, (%rdx)	# tmp233, _102->dictwid
	.loc 1 126 0
	movq	-64(%rbp), %rax	# lm, tmp234
	movq	224(%rax), %rax	# lm_29(D)->lmclass, D.5488
	movl	-24(%rbp), %edx	# classid, tmp235
	movslq	%edx, %rdx	# tmp235, D.5483
	salq	$3, %rdx	#, D.5483
	subq	$134217728, %rdx	#, D.5492
	addq	%rdx, %rax	# D.5492, D.5488
	movq	(%rax), %rax	# *_107, D.5493
	movq	8(%rax), %rax	# _108->wordlist, tmp236
	movq	%rax, -16(%rbp)	# tmp236, lmclass_word
	.loc 1 128 0
	jmp	.L16	#
.L24:
	.loc 1 129 0
	movq	-16(%rbp), %rax	# lmclass_word, tmp237
	movl	8(%rax), %eax	# lmclass_word_18->dictwid, tmp238
	movl	%eax, -28(%rbp)	# tmp238, dictid
	.loc 1 132 0
	cmpl	$0, -28(%rbp)	#, dictid
	js	.L17	#,
	.loc 1 133 0
	movl	-28(%rbp), %eax	# dictid, tmp239
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5483
	movq	-8(%rbp), %rax	# map, tmp240
	addq	%rdx, %rax	# D.5483, D.5484
	movzwl	(%rax), %eax	# *_113, D.5491
	cmpw	$-1, %ax	#, D.5491
	je	.L18	#,
	.loc 1 138 0
	movl	$.LC5, %edx	#,
	movl	$138, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_info_header	#
	movl	-28(%rbp), %eax	# dictid, tmp241
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5483
	movq	-8(%rbp), %rax	# map, tmp242
	addq	%rdx, %rax	# D.5483, D.5484
	movzwl	(%rax), %eax	# *_117, D.5491
	movzwl	%ax, %eax	# D.5491, D.5482
	movl	%eax, %esi	# D.5482,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 139 0
	movl	$.LC1, %edx	#,
	movl	$139, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movq	-16(%rbp), %rax	# lmclass_word, tmp243
	movq	(%rax), %rax	# lmclass_word_18->word, D.5487
	movq	%rax, %rsi	# D.5487,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 140 0
	movl	$1, -20(%rbp)	#, maperr
	jmp	.L19	#
.L18:
	.loc 1 143 0
	movl	-28(%rbp), %edx	# dictid, tmp244
	movq	-56(%rbp), %rax	# dict, tmp245
	movl	%edx, %esi	# tmp244,
	movq	%rax, %rdi	# tmp245,
	call	dict_filler_word	#
	testl	%eax, %eax	# D.5482
	je	.L20	#,
	.loc 1 144 0
	movl	$.LC1, %edx	#,
	movl	$144, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movq	-64(%rbp), %rax	# lm, tmp246
	movq	16(%rax), %rax	# lm_29(D)->wordstr, D.5486
	movl	-28(%rbp), %edx	# dictid, tmp247
	movslq	%edx, %rdx	# tmp247, D.5483
	salq	$3, %rdx	#, D.5483
	addq	%rdx, %rax	# D.5483, D.5486
	movq	(%rax), %rax	# *_126, D.5487
	movq	%rax, %rsi	# D.5487,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
.L20:
	.loc 1 146 0
	movq	-56(%rbp), %rax	# dict, tmp248
	movq	32(%rax), %rcx	# dict_20(D)->word, D.5490
	movl	-28(%rbp), %eax	# dictid, tmp249
	movslq	%eax, %rdx	# tmp249, D.5483
	movq	%rdx, %rax	# D.5483, tmp250
	salq	$2, %rax	#, tmp250
	addq	%rdx, %rax	# D.5483, tmp250
	salq	$3, %rax	#, tmp251
	addq	%rcx, %rax	# D.5490, D.5490
	movl	24(%rax), %eax	# _131->basewid, D.5482
	cmpl	-28(%rbp), %eax	# dictid, D.5482
	je	.L21	#,
	.loc 1 147 0
	movl	$.LC1, %edx	#,
	movl	$147, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	.loc 1 148 0
	movq	-64(%rbp), %rax	# lm, tmp252
	movq	16(%rax), %rax	# lm_29(D)->wordstr, D.5486
	movl	-28(%rbp), %edx	# dictid, tmp253
	movslq	%edx, %rdx	# tmp253, D.5483
	salq	$3, %rdx	#, D.5483
	addq	%rdx, %rax	# D.5483, D.5486
	.loc 1 147 0
	movq	(%rax), %rax	# *_136, D.5487
	movq	%rax, %rsi	# D.5487,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 150 0
	movq	-56(%rbp), %rax	# dict, tmp254
	movq	32(%rax), %rcx	# dict_20(D)->word, D.5490
	movl	-28(%rbp), %eax	# dictid, tmp255
	movslq	%eax, %rdx	# tmp255, D.5483
	movq	%rdx, %rax	# D.5483, tmp256
	salq	$2, %rax	#, tmp256
	addq	%rdx, %rax	# D.5483, tmp256
	salq	$3, %rax	#, tmp257
	addq	%rcx, %rax	# D.5490, D.5490
	movl	24(%rax), %eax	# _141->basewid, tmp258
	movl	%eax, -28(%rbp)	# tmp258, dictid
	.loc 1 153 0
	jmp	.L22	#
.L21:
	jmp	.L22	#
.L23:
	.loc 1 155 0 discriminator 2
	movl	-28(%rbp), %eax	# dictid, tmp259
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5483
	movq	-8(%rbp), %rax	# map, tmp260
	addq	%rax, %rdx	# tmp260, D.5484
	movl	-40(%rbp), %eax	# u, tmp261
	movw	%ax, (%rdx)	# D.5491, *_145
	.loc 1 158 0 discriminator 2
	movq	-64(%rbp), %rax	# lm, tmp262
	movq	240(%rax), %rax	# lm_29(D)->inclass_ugscore, D.5485
	movl	-28(%rbp), %edx	# dictid, tmp263
	movslq	%edx, %rdx	# tmp263, D.5483
	salq	$2, %rdx	#, D.5483
	addq	%rax, %rdx	# D.5485, D.5485
	.loc 1 159 0 discriminator 2
	movq	-16(%rbp), %rax	# lmclass_word, tmp264
	movl	12(%rax), %eax	# lmclass_word_18->LOGprob, D.5482
	imull	-68(%rbp), %eax	# lw, D.5482
	.loc 1 158 0 discriminator 2
	movl	%eax, (%rdx)	# D.5482, *_150
	.loc 1 153 0 discriminator 2
	movq	-56(%rbp), %rax	# dict, tmp265
	movq	32(%rax), %rcx	# dict_20(D)->word, D.5490
	movl	-28(%rbp), %eax	# dictid, tmp266
	movslq	%eax, %rdx	# tmp266, D.5483
	movq	%rdx, %rax	# D.5483, tmp267
	salq	$2, %rax	#, tmp267
	addq	%rdx, %rax	# D.5483, tmp267
	salq	$3, %rax	#, tmp268
	addq	%rcx, %rax	# D.5490, D.5490
	movl	20(%rax), %eax	# _157->alt, tmp269
	movl	%eax, -28(%rbp)	# tmp269, dictid
.L22:
	.loc 1 153 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, dictid
	jns	.L23	#,
	jmp	.L19	#
.L17:
	.loc 1 164 0 is_stmt 1
	addl	$1, -36(%rbp)	#, n
.L19:
	.loc 1 167 0
	movq	-16(%rbp), %rax	# lmclass_word, tmp270
	movq	16(%rax), %rax	# lmclass_word_18->next, tmp271
	movq	%rax, -16(%rbp)	# tmp271, lmclass_word
.L16:
	.loc 1 128 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, lmclass_word
	jne	.L24	#,
	.loc 1 122 0
	jmp	.L14	#
.L15:
	.loc 1 172 0
	addl	$1, -36(%rbp)	#, n
.L14:
	.loc 1 84 0
	addl	$1, -40(%rbp)	#, u
.L5:
	.loc 1 84 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# lm, tmp272
	movl	(%rax), %eax	# lm_29(D)->n_ug, D.5482
	cmpl	-40(%rbp), %eax	# u, D.5482
	jg	.L25	#,
	.loc 1 177 0 is_stmt 1
	cmpl	$0, -36(%rbp)	#, n
	jle	.L26	#,
	.loc 1 178 0
	movl	$.LC5, %edx	#,
	movl	$178, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_info_header	#
	movl	-36(%rbp), %eax	# n, tmp273
	movl	%eax, %esi	# tmp273,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
.L26:
	.loc 1 186 0
	cmpl	$0, -20(%rbp)	#, maperr
	je	.L27	#,
	.loc 1 187 0
	movl	$.LC9, %edx	#,
	movl	$187, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L27:
	.loc 1 189 0
	movq	-8(%rbp), %rax	# map, D.5484
	.loc 1 225 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	wid_dict_lm_map, .-wid_dict_lm_map
	.globl	wid_wordprob2alt
	.type	wid_wordprob2alt, @function
wid_wordprob2alt:
.LFB3:
	.loc 1 229 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# dict, dict
	movq	%rsi, -32(%rbp)	# wp, wp
	movl	%edx, -36(%rbp)	# n, n
	.loc 1 233 0
	movl	$0, -12(%rbp)	#, i
	movl	-36(%rbp), %eax	# n, tmp82
	movl	%eax, -8(%rbp)	# tmp82, j
	jmp	.L30	#
.L33:
	.loc 1 234 0
	movl	-12(%rbp), %eax	# i, tmp83
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5505
	movq	-32(%rbp), %rax	# wp, tmp84
	addq	%rdx, %rax	# D.5505, D.5506
	movl	(%rax), %eax	# _11->wid, tmp85
	movl	%eax, -4(%rbp)	# tmp85, w
	.loc 1 235 0
	movq	-24(%rbp), %rax	# dict, tmp86
	movq	32(%rax), %rcx	# dict_13(D)->word, D.5507
	movl	-4(%rbp), %eax	# w, tmp87
	movslq	%eax, %rdx	# tmp87, D.5505
	movq	%rdx, %rax	# D.5505, tmp88
	salq	$2, %rax	#, tmp88
	addq	%rdx, %rax	# D.5505, tmp88
	salq	$3, %rax	#, tmp89
	addq	%rcx, %rax	# D.5507, D.5507
	movl	20(%rax), %eax	# _17->alt, tmp90
	movl	%eax, -4(%rbp)	# tmp90, w
	jmp	.L31	#
.L32:
	.loc 1 236 0 discriminator 2
	movl	-8(%rbp), %eax	# j, tmp91
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5505
	movq	-32(%rbp), %rax	# wp, tmp92
	addq	%rax, %rdx	# tmp92, D.5506
	movl	-4(%rbp), %eax	# w, tmp93
	movl	%eax, (%rdx)	# tmp93, _21->wid
	.loc 1 237 0 discriminator 2
	movl	-8(%rbp), %eax	# j, tmp94
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5505
	movq	-32(%rbp), %rax	# wp, tmp95
	addq	%rax, %rdx	# tmp95, D.5506
	movl	-12(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,8), %rcx	#, D.5505
	movq	-32(%rbp), %rax	# wp, tmp97
	addq	%rcx, %rax	# D.5505, D.5506
	movl	4(%rax), %eax	# _27->prob, D.5508
	movl	%eax, 4(%rdx)	# D.5508, _24->prob
	.loc 1 238 0 discriminator 2
	addl	$1, -8(%rbp)	#, j
	.loc 1 235 0 discriminator 2
	movq	-24(%rbp), %rax	# dict, tmp98
	movq	32(%rax), %rcx	# dict_13(D)->word, D.5507
	movl	-4(%rbp), %eax	# w, tmp99
	movslq	%eax, %rdx	# tmp99, D.5505
	movq	%rdx, %rax	# D.5505, tmp100
	salq	$2, %rax	#, tmp100
	addq	%rdx, %rax	# D.5505, tmp100
	salq	$3, %rax	#, tmp101
	addq	%rcx, %rax	# D.5507, D.5507
	movl	20(%rax), %eax	# _33->alt, tmp102
	movl	%eax, -4(%rbp)	# tmp102, w
.L31:
	.loc 1 235 0 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)	#, w
	jns	.L32	#,
	.loc 1 233 0 is_stmt 1
	addl	$1, -12(%rbp)	#, i
.L30:
	.loc 1 233 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp103
	cmpl	-36(%rbp), %eax	# n, tmp103
	jl	.L33	#,
	.loc 1 242 0 is_stmt 1
	movl	-8(%rbp), %eax	# j, D.5509
	.loc 1 243 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	wid_wordprob2alt, .-wid_wordprob2alt
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "./libutil/hash.h"
	.file 8 "s3types.h"
	.file 9 "mdef.h"
	.file 10 "dict.h"
	.file 11 "lmclass.h"
	.file 12 "lm.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xd4f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF193
	.byte	0x1
	.long	.LASF194
	.long	.LASF195
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
	.long	.LASF196
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
	.byte	0x43
	.long	0x46
	.uleb128 0x2
	.long	.LASF55
	.byte	0x6
	.byte	0x44
	.long	0x3f
	.uleb128 0x2
	.long	.LASF56
	.byte	0x6
	.byte	0x45
	.long	0x2ab
	.uleb128 0x7
	.long	.LASF57
	.byte	0x18
	.byte	0x7
	.byte	0x58
	.long	0x338
	.uleb128 0xe
	.string	"key"
	.byte	0x7
	.byte	0x59
	.long	0x292
	.byte	0
	.uleb128 0xe
	.string	"len"
	.byte	0x7
	.byte	0x5c
	.long	0x2b9
	.byte	0x8
	.uleb128 0xe
	.string	"val"
	.byte	0x7
	.byte	0x5e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF58
	.byte	0x7
	.byte	0x5f
	.long	0x338
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2fb
	.uleb128 0x2
	.long	.LASF59
	.byte	0x7
	.byte	0x60
	.long	0x2fb
	.uleb128 0xf
	.byte	0x10
	.byte	0x7
	.byte	0x62
	.long	0x376
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x63
	.long	0x376
	.byte	0
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0x64
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0x67
	.long	0x2e5
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x33e
	.uleb128 0x2
	.long	.LASF63
	.byte	0x7
	.byte	0x68
	.long	0x349
	.uleb128 0x2
	.long	.LASF64
	.byte	0x8
	.byte	0x4b
	.long	0x2cf
	.uleb128 0x2
	.long	.LASF65
	.byte	0x8
	.byte	0x51
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF66
	.byte	0x8
	.byte	0x57
	.long	0x392
	.uleb128 0x2
	.long	.LASF67
	.byte	0x8
	.byte	0x5d
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF68
	.byte	0x8
	.byte	0x63
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF69
	.byte	0x8
	.byte	0x69
	.long	0x2da
	.uleb128 0x2
	.long	.LASF70
	.byte	0x8
	.byte	0x7b
	.long	0x2c4
	.uleb128 0x10
	.byte	0x4
	.byte	0x9
	.byte	0x48
	.long	0x3fb
	.uleb128 0x11
	.long	.LASF71
	.sleb128 0
	.uleb128 0x11
	.long	.LASF72
	.sleb128 1
	.uleb128 0x11
	.long	.LASF73
	.sleb128 2
	.uleb128 0x11
	.long	.LASF74
	.sleb128 3
	.uleb128 0x11
	.long	.LASF75
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.long	.LASF76
	.byte	0x9
	.byte	0x4e
	.long	0x3d4
	.uleb128 0xf
	.byte	0x10
	.byte	0x9
	.byte	0x54
	.long	0x427
	.uleb128 0x8
	.long	.LASF77
	.byte	0x9
	.byte	0x55
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF78
	.byte	0x9
	.byte	0x56
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF79
	.byte	0x9
	.byte	0x58
	.long	0x406
	.uleb128 0xf
	.byte	0x10
	.byte	0x9
	.byte	0x5e
	.long	0x480
	.uleb128 0x8
	.long	.LASF80
	.byte	0x9
	.byte	0x5f
	.long	0x39d
	.byte	0
	.uleb128 0x8
	.long	.LASF81
	.byte	0x9
	.byte	0x62
	.long	0x3a8
	.byte	0x4
	.uleb128 0xe
	.string	"ci"
	.byte	0x9
	.byte	0x63
	.long	0x387
	.byte	0x8
	.uleb128 0xe
	.string	"lc"
	.byte	0x9
	.byte	0x63
	.long	0x387
	.byte	0x9
	.uleb128 0xe
	.string	"rc"
	.byte	0x9
	.byte	0x63
	.long	0x387
	.byte	0xa
	.uleb128 0x8
	.long	.LASF82
	.byte	0x9
	.byte	0x64
	.long	0x3fb
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF83
	.byte	0x9
	.byte	0x65
	.long	0x432
	.uleb128 0x7
	.long	.LASF84
	.byte	0x10
	.byte	0x9
	.byte	0x6c
	.long	0x4bb
	.uleb128 0xe
	.string	"rc"
	.byte	0x9
	.byte	0x6d
	.long	0x387
	.byte	0
	.uleb128 0xe
	.string	"pid"
	.byte	0x9
	.byte	0x6e
	.long	0x392
	.byte	0x4
	.uleb128 0x8
	.long	.LASF58
	.byte	0x9
	.byte	0x6f
	.long	0x4bb
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x48b
	.uleb128 0x2
	.long	.LASF85
	.byte	0x9
	.byte	0x70
	.long	0x48b
	.uleb128 0x7
	.long	.LASF86
	.byte	0x18
	.byte	0x9
	.byte	0x72
	.long	0x4fc
	.uleb128 0xe
	.string	"lc"
	.byte	0x9
	.byte	0x73
	.long	0x387
	.byte	0
	.uleb128 0x8
	.long	.LASF87
	.byte	0x9
	.byte	0x74
	.long	0x4fc
	.byte	0x8
	.uleb128 0x8
	.long	.LASF58
	.byte	0x9
	.byte	0x75
	.long	0x502
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4c1
	.uleb128 0x6
	.byte	0x8
	.long	0x4cc
	.uleb128 0x2
	.long	.LASF88
	.byte	0x9
	.byte	0x76
	.long	0x4cc
	.uleb128 0xf
	.byte	0x68
	.byte	0x9
	.byte	0x7a
	.long	0x5dc
	.uleb128 0x8
	.long	.LASF89
	.byte	0x9
	.byte	0x7b
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF90
	.byte	0x9
	.byte	0x7c
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF91
	.byte	0x9
	.byte	0x7d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF92
	.byte	0x9
	.byte	0x7e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF93
	.byte	0x9
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF94
	.byte	0x9
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF95
	.byte	0x9
	.byte	0x82
	.long	0x5dc
	.byte	0x18
	.uleb128 0x8
	.long	.LASF96
	.byte	0x9
	.byte	0x83
	.long	0x5e2
	.byte	0x20
	.uleb128 0x8
	.long	.LASF97
	.byte	0x9
	.byte	0x84
	.long	0x5e8
	.byte	0x28
	.uleb128 0x8
	.long	.LASF98
	.byte	0x9
	.byte	0x85
	.long	0x5ee
	.byte	0x30
	.uleb128 0x8
	.long	.LASF99
	.byte	0x9
	.byte	0x87
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF100
	.byte	0x9
	.byte	0x89
	.long	0x5f4
	.byte	0x40
	.uleb128 0x8
	.long	.LASF101
	.byte	0x9
	.byte	0x8c
	.long	0x5fa
	.byte	0x48
	.uleb128 0x8
	.long	.LASF102
	.byte	0x9
	.byte	0x8d
	.long	0x600
	.byte	0x50
	.uleb128 0xe
	.string	"sil"
	.byte	0x9
	.byte	0x8f
	.long	0x387
	.byte	0x58
	.uleb128 0x8
	.long	.LASF103
	.byte	0x9
	.byte	0x91
	.long	0x606
	.byte	0x60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x37c
	.uleb128 0x6
	.byte	0x8
	.long	0x427
	.uleb128 0x6
	.byte	0x8
	.long	0x480
	.uleb128 0x6
	.byte	0x8
	.long	0x5f4
	.uleb128 0x6
	.byte	0x8
	.long	0x3c9
	.uleb128 0x6
	.byte	0x8
	.long	0x387
	.uleb128 0x6
	.byte	0x8
	.long	0x2b9
	.uleb128 0x6
	.byte	0x8
	.long	0x60c
	.uleb128 0x6
	.byte	0x8
	.long	0x612
	.uleb128 0x6
	.byte	0x8
	.long	0x508
	.uleb128 0x2
	.long	.LASF104
	.byte	0x9
	.byte	0x96
	.long	0x513
	.uleb128 0xf
	.byte	0x28
	.byte	0xa
	.byte	0x47
	.long	0x680
	.uleb128 0x8
	.long	.LASF105
	.byte	0xa
	.byte	0x48
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF96
	.byte	0xa
	.byte	0x49
	.long	0x5fa
	.byte	0x8
	.uleb128 0x8
	.long	.LASF106
	.byte	0xa
	.byte	0x4a
	.long	0x2b9
	.byte	0x10
	.uleb128 0xe
	.string	"alt"
	.byte	0xa
	.byte	0x4b
	.long	0x3b3
	.byte	0x14
	.uleb128 0x8
	.long	.LASF107
	.byte	0xa
	.byte	0x4c
	.long	0x3b3
	.byte	0x18
	.uleb128 0x8
	.long	.LASF108
	.byte	0xa
	.byte	0x4d
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF109
	.byte	0xa
	.byte	0x51
	.long	0x680
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3b3
	.uleb128 0x2
	.long	.LASF110
	.byte	0xa
	.byte	0x52
	.long	0x623
	.uleb128 0xf
	.byte	0x58
	.byte	0xa
	.byte	0x54
	.long	0x741
	.uleb128 0x8
	.long	.LASF111
	.byte	0xa
	.byte	0x55
	.long	0x741
	.byte	0
	.uleb128 0xe
	.string	"pht"
	.byte	0xa
	.byte	0x56
	.long	0x5dc
	.byte	0x8
	.uleb128 0x8
	.long	.LASF112
	.byte	0xa
	.byte	0x57
	.long	0x747
	.byte	0x10
	.uleb128 0x8
	.long	.LASF89
	.byte	0xa
	.byte	0x58
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF105
	.byte	0xa
	.byte	0x59
	.long	0x74d
	.byte	0x20
	.uleb128 0xe
	.string	"ht"
	.byte	0xa
	.byte	0x5a
	.long	0x5dc
	.byte	0x28
	.uleb128 0x8
	.long	.LASF113
	.byte	0xa
	.byte	0x5b
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF114
	.byte	0xa
	.byte	0x5c
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF115
	.byte	0xa
	.byte	0x5d
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF116
	.byte	0xa
	.byte	0x5e
	.long	0x2b9
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF117
	.byte	0xa
	.byte	0x5f
	.long	0x680
	.byte	0x40
	.uleb128 0x8
	.long	.LASF118
	.byte	0xa
	.byte	0x62
	.long	0x3b3
	.byte	0x48
	.uleb128 0x8
	.long	.LASF119
	.byte	0xa
	.byte	0x63
	.long	0x3b3
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF120
	.byte	0xa
	.byte	0x64
	.long	0x3b3
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x618
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0x686
	.uleb128 0x2
	.long	.LASF121
	.byte	0xa
	.byte	0x65
	.long	0x691
	.uleb128 0x7
	.long	.LASF122
	.byte	0x18
	.byte	0xb
	.byte	0x42
	.long	0x79b
	.uleb128 0x8
	.long	.LASF105
	.byte	0xb
	.byte	0x43
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF123
	.byte	0xb
	.byte	0x44
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF124
	.byte	0xb
	.byte	0x46
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF58
	.byte	0xb
	.byte	0x47
	.long	0x79b
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x75e
	.uleb128 0x2
	.long	.LASF125
	.byte	0xb
	.byte	0x49
	.long	0x79b
	.uleb128 0x7
	.long	.LASF126
	.byte	0x18
	.byte	0xb
	.byte	0x4f
	.long	0x7dd
	.uleb128 0x8
	.long	.LASF77
	.byte	0xb
	.byte	0x50
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF127
	.byte	0xb
	.byte	0x51
	.long	0x7a1
	.byte	0x8
	.uleb128 0x8
	.long	.LASF58
	.byte	0xb
	.byte	0x52
	.long	0x7dd
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x7ac
	.uleb128 0x2
	.long	.LASF128
	.byte	0xb
	.byte	0x54
	.long	0x7dd
	.uleb128 0x12
	.byte	0x4
	.byte	0xc
	.byte	0x4d
	.long	0x809
	.uleb128 0x13
	.string	"f"
	.byte	0xc
	.byte	0x4e
	.long	0x2f0
	.uleb128 0x13
	.string	"l"
	.byte	0xc
	.byte	0x4f
	.long	0x2b9
	.byte	0
	.uleb128 0x2
	.long	.LASF129
	.byte	0xc
	.byte	0x50
	.long	0x7ee
	.uleb128 0xf
	.byte	0x10
	.byte	0xc
	.byte	0x52
	.long	0x84d
	.uleb128 0x8
	.long	.LASF123
	.byte	0xc
	.byte	0x53
	.long	0x3b3
	.byte	0
	.uleb128 0x8
	.long	.LASF130
	.byte	0xc
	.byte	0x57
	.long	0x809
	.byte	0x4
	.uleb128 0x8
	.long	.LASF131
	.byte	0xc
	.byte	0x58
	.long	0x809
	.byte	0x8
	.uleb128 0x8
	.long	.LASF132
	.byte	0xc
	.byte	0x59
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF133
	.byte	0xc
	.byte	0x5a
	.long	0x814
	.uleb128 0xf
	.byte	0x8
	.byte	0xc
	.byte	0x5c
	.long	0x891
	.uleb128 0xe
	.string	"wid"
	.byte	0xc
	.byte	0x5d
	.long	0x3be
	.byte	0
	.uleb128 0x8
	.long	.LASF134
	.byte	0xc
	.byte	0x5e
	.long	0x2da
	.byte	0x2
	.uleb128 0x8
	.long	.LASF135
	.byte	0xc
	.byte	0x5f
	.long	0x2da
	.byte	0x4
	.uleb128 0x8
	.long	.LASF136
	.byte	0xc
	.byte	0x60
	.long	0x2da
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF137
	.byte	0xc
	.byte	0x61
	.long	0x858
	.uleb128 0xf
	.byte	0x4
	.byte	0xc
	.byte	0x63
	.long	0x8bd
	.uleb128 0xe
	.string	"wid"
	.byte	0xc
	.byte	0x64
	.long	0x3be
	.byte	0
	.uleb128 0x8
	.long	.LASF134
	.byte	0xc
	.byte	0x65
	.long	0x2da
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF138
	.byte	0xc
	.byte	0x66
	.long	0x89c
	.uleb128 0xf
	.byte	0x10
	.byte	0xc
	.byte	0x6c
	.long	0x8e8
	.uleb128 0xe
	.string	"bg"
	.byte	0xc
	.byte	0x6d
	.long	0x8e8
	.byte	0
	.uleb128 0x8
	.long	.LASF139
	.byte	0xc
	.byte	0x6e
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x891
	.uleb128 0x2
	.long	.LASF140
	.byte	0xc
	.byte	0x70
	.long	0x8c8
	.uleb128 0x7
	.long	.LASF141
	.byte	0x20
	.byte	0xc
	.byte	0x7a
	.long	0x94c
	.uleb128 0xe
	.string	"w1"
	.byte	0xc
	.byte	0x7b
	.long	0x3be
	.byte	0
	.uleb128 0x8
	.long	.LASF142
	.byte	0xc
	.byte	0x7d
	.long	0x2b9
	.byte	0x4
	.uleb128 0xe
	.string	"tg"
	.byte	0xc
	.byte	0x7e
	.long	0x94c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF131
	.byte	0xc
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF139
	.byte	0xc
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF58
	.byte	0xc
	.byte	0x81
	.long	0x952
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8bd
	.uleb128 0x6
	.byte	0x8
	.long	0x8f9
	.uleb128 0x2
	.long	.LASF143
	.byte	0xc
	.byte	0x82
	.long	0x8f9
	.uleb128 0xf
	.byte	0xc
	.byte	0xc
	.byte	0x88
	.long	0x984
	.uleb128 0x8
	.long	.LASF144
	.byte	0xc
	.byte	0x89
	.long	0x984
	.byte	0
	.uleb128 0x8
	.long	.LASF145
	.byte	0xc
	.byte	0x8a
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x3be
	.long	0x994
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF146
	.byte	0xc
	.byte	0x8b
	.long	0x963
	.uleb128 0x7
	.long	.LASF147
	.byte	0xf8
	.byte	0xc
	.byte	0xb4
	.long	0xbab
	.uleb128 0x8
	.long	.LASF148
	.byte	0xc
	.byte	0xb5
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF149
	.byte	0xc
	.byte	0xb6
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF142
	.byte	0xc
	.byte	0xb7
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF150
	.byte	0xc
	.byte	0xb8
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF151
	.byte	0xc
	.byte	0xba
	.long	0x747
	.byte	0x10
	.uleb128 0x8
	.long	.LASF152
	.byte	0xc
	.byte	0xbc
	.long	0x3be
	.byte	0x18
	.uleb128 0x8
	.long	.LASF153
	.byte	0xc
	.byte	0xbd
	.long	0x3be
	.byte	0x1a
	.uleb128 0x8
	.long	.LASF154
	.byte	0xc
	.byte	0xbf
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF155
	.byte	0xc
	.byte	0xc0
	.long	0x2b9
	.byte	0x20
	.uleb128 0xe
	.string	"ug"
	.byte	0xc
	.byte	0xc2
	.long	0xbab
	.byte	0x28
	.uleb128 0xe
	.string	"bg"
	.byte	0xc
	.byte	0xc3
	.long	0x8e8
	.byte	0x30
	.uleb128 0xe
	.string	"tg"
	.byte	0xc
	.byte	0xc4
	.long	0x94c
	.byte	0x38
	.uleb128 0x8
	.long	.LASF156
	.byte	0xc
	.byte	0xc5
	.long	0xbb1
	.byte	0x40
	.uleb128 0x8
	.long	.LASF157
	.byte	0xc
	.byte	0xc6
	.long	0xbb7
	.byte	0x48
	.uleb128 0x8
	.long	.LASF158
	.byte	0xc
	.byte	0xc8
	.long	0xbc3
	.byte	0x50
	.uleb128 0x8
	.long	.LASF159
	.byte	0xc
	.byte	0xc9
	.long	0xbc3
	.byte	0x58
	.uleb128 0x8
	.long	.LASF160
	.byte	0xc
	.byte	0xca
	.long	0xbc3
	.byte	0x60
	.uleb128 0x8
	.long	.LASF161
	.byte	0xc
	.byte	0xcb
	.long	0x600
	.byte	0x68
	.uleb128 0x8
	.long	.LASF162
	.byte	0xc
	.byte	0xcd
	.long	0x2b9
	.byte	0x70
	.uleb128 0x8
	.long	.LASF163
	.byte	0xc
	.byte	0xce
	.long	0x2b9
	.byte	0x74
	.uleb128 0x8
	.long	.LASF164
	.byte	0xc
	.byte	0xcf
	.long	0x2b9
	.byte	0x78
	.uleb128 0xe
	.string	"fp"
	.byte	0xc
	.byte	0xd1
	.long	0xbc9
	.byte	0x80
	.uleb128 0x8
	.long	.LASF165
	.byte	0xc
	.byte	0xd2
	.long	0x2b9
	.byte	0x88
	.uleb128 0x8
	.long	.LASF166
	.byte	0xc
	.byte	0xd3
	.long	0x2b9
	.byte	0x8c
	.uleb128 0x8
	.long	.LASF167
	.byte	0xc
	.byte	0xd4
	.long	0x2b9
	.byte	0x90
	.uleb128 0xe
	.string	"lw"
	.byte	0xc
	.byte	0xd6
	.long	0x2f0
	.byte	0x94
	.uleb128 0xe
	.string	"wip"
	.byte	0xc
	.byte	0xd7
	.long	0x2b9
	.byte	0x98
	.uleb128 0x8
	.long	.LASF168
	.byte	0xc
	.byte	0xdd
	.long	0xbcf
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF169
	.byte	0xc
	.byte	0xe0
	.long	0x2b9
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF170
	.byte	0xc
	.byte	0xe1
	.long	0x2b9
	.byte	0xac
	.uleb128 0x8
	.long	.LASF171
	.byte	0xc
	.byte	0xe2
	.long	0x2b9
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF172
	.byte	0xc
	.byte	0xe3
	.long	0x2b9
	.byte	0xb4
	.uleb128 0x8
	.long	.LASF173
	.byte	0xc
	.byte	0xe4
	.long	0x2b9
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF174
	.byte	0xc
	.byte	0xe5
	.long	0x2b9
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF175
	.byte	0xc
	.byte	0xe6
	.long	0x2b9
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF176
	.byte	0xc
	.byte	0xe7
	.long	0x2b9
	.byte	0xc4
	.uleb128 0x8
	.long	.LASF177
	.byte	0xc
	.byte	0xe8
	.long	0x2b9
	.byte	0xc8
	.uleb128 0x8
	.long	.LASF178
	.byte	0xc
	.byte	0xea
	.long	0x2b9
	.byte	0xcc
	.uleb128 0x8
	.long	.LASF179
	.byte	0xc
	.byte	0xef
	.long	0xbd5
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF180
	.byte	0xc
	.byte	0xf2
	.long	0x2b9
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF181
	.byte	0xc
	.byte	0xf4
	.long	0xbdb
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF182
	.byte	0xc
	.byte	0xf5
	.long	0x2b9
	.byte	0xe8
	.uleb128 0x8
	.long	.LASF183
	.byte	0xc
	.byte	0xf6
	.long	0x600
	.byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x84d
	.uleb128 0x6
	.byte	0x8
	.long	0x8ee
	.uleb128 0x6
	.byte	0x8
	.long	0xbbd
	.uleb128 0x6
	.byte	0x8
	.long	0x958
	.uleb128 0x6
	.byte	0x8
	.long	0x809
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x994
	.uleb128 0x6
	.byte	0x8
	.long	0x3be
	.uleb128 0x6
	.byte	0x8
	.long	0x7e3
	.uleb128 0x2
	.long	.LASF184
	.byte	0xc
	.byte	0xf8
	.long	0x99f
	.uleb128 0x6
	.byte	0x8
	.long	0xbe1
	.uleb128 0x14
	.byte	0x8
	.byte	0xc
	.value	0x10c
	.long	0xc16
	.uleb128 0x15
	.string	"wid"
	.byte	0xc
	.value	0x10d
	.long	0x3b3
	.byte	0
	.uleb128 0x9
	.long	.LASF130
	.byte	0xc
	.value	0x10e
	.long	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.long	.LASF185
	.byte	0xc
	.value	0x10f
	.long	0xbf2
	.uleb128 0x17
	.long	.LASF191
	.byte	0x1
	.byte	0x40
	.long	0xbd5
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xcd9
	.uleb128 0x18
	.long	.LASF186
	.byte	0x1
	.byte	0x40
	.long	0xcd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x19
	.string	"lm"
	.byte	0x1
	.byte	0x40
	.long	0xbec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.string	"lw"
	.byte	0x1
	.byte	0x40
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1a
	.string	"u"
	.byte	0x1
	.byte	0x42
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.string	"n"
	.byte	0x1
	.byte	0x42
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.string	"w"
	.byte	0x1
	.byte	0x43
	.long	0x3b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	.LASF187
	.byte	0x1
	.byte	0x43
	.long	0x3b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.long	.LASF188
	.byte	0x1
	.byte	0x44
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.string	"map"
	.byte	0x1
	.byte	0x45
	.long	0xbd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.long	.LASF189
	.byte	0x1
	.byte	0x46
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.long	.LASF190
	.byte	0x1
	.byte	0x47
	.long	0x7a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x753
	.uleb128 0x1c
	.long	.LASF192
	.byte	0x1
	.byte	0xe4
	.long	0x2b9
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xd4c
	.uleb128 0x18
	.long	.LASF186
	.byte	0x1
	.byte	0xe4
	.long	0xcd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.string	"wp"
	.byte	0x1
	.byte	0xe4
	.long	0xd4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.string	"n"
	.byte	0x1
	.byte	0xe4
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0xe6
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.string	"j"
	.byte	0x1
	.byte	0xe6
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.string	"w"
	.byte	0x1
	.byte	0xe7
	.long	0x3b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc16
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
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
.LASF8:
	.string	"__off_t"
.LASF133:
	.string	"ug_t"
.LASF94:
	.string	"n_tmat"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF32:
	.string	"_shortbuf"
.LASF132:
	.string	"firstbg"
.LASF7:
	.string	"size_t"
.LASF122:
	.string	"lmclass_word_s"
.LASF100:
	.string	"cd2cisen"
.LASF145:
	.string	"lscr"
.LASF162:
	.string	"n_bgprob"
.LASF157:
	.string	"tginfo"
.LASF163:
	.string	"n_tgprob"
.LASF65:
	.string	"s3pid_t"
.LASF68:
	.string	"s3wid_t"
.LASF109:
	.string	"comp"
.LASF67:
	.string	"s3tmatid_t"
.LASF20:
	.string	"_IO_buf_base"
.LASF144:
	.string	"lwid"
.LASF108:
	.string	"n_comp"
.LASF48:
	.string	"long long unsigned int"
.LASF138:
	.string	"tg_t"
.LASF91:
	.string	"n_emit_state"
.LASF135:
	.string	"bowtid"
.LASF58:
	.string	"next"
.LASF92:
	.string	"n_ci_sen"
.LASF152:
	.string	"startlwid"
.LASF119:
	.string	"finishwid"
.LASF149:
	.string	"n_bg"
.LASF47:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF148:
	.string	"n_ug"
.LASF194:
	.string	"wid.c"
.LASF61:
	.string	"size"
.LASF73:
	.string	"WORD_POSN_SINGLE"
.LASF27:
	.string	"_fileno"
.LASF173:
	.string	"n_tg_fill"
.LASF111:
	.string	"mdef"
.LASF110:
	.string	"dictword_t"
.LASF72:
	.string	"WORD_POSN_END"
.LASF6:
	.string	"long int"
.LASF185:
	.string	"wordprob_t"
.LASF13:
	.string	"_flags"
.LASF125:
	.string	"lmclass_word_t"
.LASF21:
	.string	"_IO_buf_end"
.LASF84:
	.string	"ph_rc_s"
.LASF85:
	.string	"ph_rc_t"
.LASF164:
	.string	"n_tgbowt"
.LASF156:
	.string	"membg"
.LASF57:
	.string	"hash_entry_s"
.LASF50:
	.string	"double"
.LASF51:
	.string	"int32"
.LASF181:
	.string	"lmclass"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF155:
	.string	"bg_seg_sz"
.LASF166:
	.string	"bgoff"
.LASF189:
	.string	"maperr"
.LASF71:
	.string	"WORD_POSN_BEGIN"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF81:
	.string	"tmat"
.LASF38:
	.string	"__pad4"
.LASF78:
	.string	"filler"
.LASF44:
	.string	"_next"
.LASF89:
	.string	"n_ciphone"
.LASF43:
	.string	"_IO_marker"
.LASF3:
	.string	"unsigned int"
.LASF195:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF130:
	.string	"prob"
.LASF113:
	.string	"max_words"
.LASF80:
	.string	"ssid"
.LASF171:
	.string	"n_bg_score"
.LASF0:
	.string	"long unsigned int"
.LASF83:
	.string	"phone_t"
.LASF18:
	.string	"_IO_write_ptr"
.LASF79:
	.string	"ciphone_t"
.LASF127:
	.string	"wordlist"
.LASF45:
	.string	"_sbuf"
.LASF118:
	.string	"startwid"
.LASF77:
	.string	"name"
.LASF141:
	.string	"tginfo_s"
.LASF143:
	.string	"tginfo_t"
.LASF116:
	.string	"filler_end"
.LASF2:
	.string	"short unsigned int"
.LASF172:
	.string	"n_bg_bo"
.LASF136:
	.string	"firsttg"
.LASF168:
	.string	"tgcache"
.LASF53:
	.string	"int8"
.LASF128:
	.string	"lmclass_t"
.LASF180:
	.string	"dict_size"
.LASF22:
	.string	"_IO_save_base"
.LASF115:
	.string	"filler_start"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF82:
	.string	"wpos"
.LASF146:
	.string	"lm_tgcache_entry_t"
.LASF74:
	.string	"WORD_POSN_INTERNAL"
.LASF15:
	.string	"_IO_read_end"
.LASF56:
	.string	"float32"
.LASF10:
	.string	"sizetype"
.LASF175:
	.string	"n_tg_score"
.LASF121:
	.string	"dict_t"
.LASF170:
	.string	"n_bg_inmem"
.LASF114:
	.string	"n_word"
.LASF153:
	.string	"finishlwid"
.LASF112:
	.string	"ciphone_str"
.LASF19:
	.string	"_IO_write_end"
.LASF55:
	.string	"uint8"
.LASF140:
	.string	"membg_t"
.LASF99:
	.string	"n_sseq"
.LASF196:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF190:
	.string	"lmclass_word"
.LASF87:
	.string	"rclist"
.LASF95:
	.string	"ciphone_ht"
.LASF139:
	.string	"used"
.LASF46:
	.string	"_pos"
.LASF120:
	.string	"silwid"
.LASF147:
	.string	"lm_s"
.LASF184:
	.string	"lm_t"
.LASF25:
	.string	"_markers"
.LASF169:
	.string	"n_bg_fill"
.LASF182:
	.string	"n_lmclass"
.LASF151:
	.string	"wordstr"
.LASF179:
	.string	"dict2lmwid"
.LASF1:
	.string	"unsigned char"
.LASF54:
	.string	"uint16"
.LASF142:
	.string	"n_tg"
.LASF59:
	.string	"hash_entry_t"
.LASF5:
	.string	"short int"
.LASF75:
	.string	"WORD_POSN_UNDEFINED"
.LASF174:
	.string	"n_tg_inmem"
.LASF60:
	.string	"table"
.LASF104:
	.string	"mdef_t"
.LASF31:
	.string	"_vtable_offset"
.LASF12:
	.string	"FILE"
.LASF176:
	.string	"n_tg_bo"
.LASF159:
	.string	"tgprob"
.LASF126:
	.string	"lmclass_s"
.LASF186:
	.string	"dict"
.LASF183:
	.string	"inclass_ugscore"
.LASF117:
	.string	"comp_head"
.LASF62:
	.string	"nocase"
.LASF101:
	.string	"sen2cimap"
.LASF90:
	.string	"n_phone"
.LASF49:
	.string	"float"
.LASF134:
	.string	"probid"
.LASF11:
	.string	"char"
.LASF165:
	.string	"byteswap"
.LASF76:
	.string	"word_posn_t"
.LASF64:
	.string	"s3cipid_t"
.LASF137:
	.string	"bg_t"
.LASF187:
	.string	"dictid"
.LASF105:
	.string	"word"
.LASF124:
	.string	"LOGprob"
.LASF9:
	.string	"__off64_t"
.LASF30:
	.string	"_cur_column"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF154:
	.string	"log_bg_seg_sz"
.LASF123:
	.string	"dictwid"
.LASF178:
	.string	"access_type"
.LASF131:
	.string	"bowt"
.LASF98:
	.string	"sseq"
.LASF35:
	.string	"__pad1"
.LASF177:
	.string	"n_tgcache_hit"
.LASF93:
	.string	"n_sen"
.LASF63:
	.string	"hash_table_t"
.LASF39:
	.string	"__pad5"
.LASF129:
	.string	"lmlog_t"
.LASF191:
	.string	"wid_dict_lm_map"
.LASF41:
	.string	"_unused2"
.LASF102:
	.string	"ciphone2n_cd_sen"
.LASF150:
	.string	"max_ug"
.LASF86:
	.string	"ph_lc_s"
.LASF88:
	.string	"ph_lc_t"
.LASF160:
	.string	"tgbowt"
.LASF167:
	.string	"tgoff"
.LASF193:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF23:
	.string	"_IO_backup_base"
.LASF161:
	.string	"tg_segbase"
.LASF69:
	.string	"s3lmwid_t"
.LASF96:
	.string	"ciphone"
.LASF52:
	.string	"int16"
.LASF107:
	.string	"basewid"
.LASF103:
	.string	"wpos_ci_lclist"
.LASF66:
	.string	"s3ssid_t"
.LASF97:
	.string	"phone"
.LASF192:
	.string	"wid_wordprob2alt"
.LASF188:
	.string	"classid"
.LASF17:
	.string	"_IO_write_base"
.LASF70:
	.string	"s3senid_t"
.LASF158:
	.string	"bgprob"
.LASF106:
	.string	"pronlen"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
