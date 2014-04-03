	.file	"hsregex.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 hsregex.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	sqd_parse,80,32
	.section	.rodata
	.align 8
.LC0:
	.string	"Strparse(): ntok must be <= %d"
.LC1:
	.string	"regexp compilation failed."
.LC2:
	.string	"hsregex.c"
	.text
	.globl	Strparse
	.type	Strparse, @function
Strparse:
.LFB2:
	.file 1 "hsregex.c"
	.loc 1 93 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# rexp, rexp
	movq	%rsi, -48(%rbp)	# s, s
	movl	%edx, -52(%rbp)	# ntok, ntok
	.loc 1 99 0
	cmpl	$9, -52(%rbp)	#, ntok
	jle	.L2	#,
	.loc 1 99 0 is_stmt 0 discriminator 1
	movl	$9, %esi	#,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L2:
	.loc 1 103 0 is_stmt 1
	movl	$0, -20(%rbp)	#, i
	jmp	.L3	#
.L5:
	.loc 1 104 0
	movl	-20(%rbp), %eax	# i, tmp80
	cltq
	movq	sqd_parse(,%rax,8), %rax	# sqd_parse, D.6647
	testq	%rax, %rax	# D.6647
	je	.L4	#,
	.loc 1 106 0
	movl	-20(%rbp), %eax	# i, tmp82
	cltq
	movq	sqd_parse(,%rax,8), %rax	# sqd_parse, D.6647
	movq	%rax, %rdi	# D.6647,
	call	free	#
	.loc 1 107 0
	movl	-20(%rbp), %eax	# i, tmp84
	cltq
	movq	$0, sqd_parse(,%rax,8)	#, sqd_parse
.L4:
	.loc 1 103 0
	addl	$1, -20(%rbp)	#, i
.L3:
	.loc 1 103 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp85
	cmpl	-52(%rbp), %eax	# ntok, tmp85
	jle	.L5	#,
	.loc 1 113 0 is_stmt 1
	movq	-40(%rbp), %rax	# rexp, tmp86
	movq	%rax, %rdi	# tmp86,
	call	sqd_regcomp	#
	movq	%rax, -8(%rbp)	# tmp87, pat
	cmpq	$0, -8(%rbp)	#, pat
	jne	.L6	#,
	.loc 1 114 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L6:
	.loc 1 115 0
	movq	-48(%rbp), %rdx	# s, tmp88
	movq	-8(%rbp), %rax	# pat, tmp89
	movq	%rdx, %rsi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	sqd_regexec	#
	movl	%eax, -16(%rbp)	# tmp90, code
	.loc 1 119 0
	cmpl	$1, -16(%rbp)	#, code
	jne	.L7	#,
	.loc 1 120 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L8	#
.L10:
	.loc 1 121 0
	movq	-8(%rbp), %rax	# pat, tmp91
	movl	-20(%rbp), %edx	# i, tmp93
	movslq	%edx, %rdx	# tmp93, tmp92
	movq	(%rax,%rdx,8), %rax	# pat_9->startp, D.6647
	testq	%rax, %rax	# D.6647
	je	.L9	#,
	.loc 1 121 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# pat, tmp94
	movl	-20(%rbp), %edx	# i, tmp96
	movslq	%edx, %rdx	# tmp96, tmp95
	addq	$10, %rdx	#, tmp97
	movq	(%rax,%rdx,8), %rax	# pat_9->endp, D.6647
	testq	%rax, %rax	# D.6647
	je	.L9	#,
	.loc 1 123 0 is_stmt 1
	movq	-8(%rbp), %rax	# pat, tmp98
	movl	-20(%rbp), %edx	# i, tmp100
	movslq	%edx, %rdx	# tmp100, tmp99
	addq	$10, %rdx	#, tmp101
	movq	(%rax,%rdx,8), %rax	# pat_9->endp, D.6647
	movq	%rax, %rcx	# D.6647, D.6648
	movq	-8(%rbp), %rax	# pat, tmp102
	movl	-20(%rbp), %edx	# i, tmp104
	movslq	%edx, %rdx	# tmp104, tmp103
	movq	(%rax,%rdx,8), %rax	# pat_9->startp, D.6647
	subq	%rax, %rcx	# D.6648, D.6648
	movq	%rcx, %rax	# D.6648, D.6648
	movl	%eax, -12(%rbp)	# D.6648, len
	.loc 1 124 0
	movl	-12(%rbp), %eax	# len, tmp105
	addl	$1, %eax	#, D.6649
	cltq
	movq	%rax, %rdx	# D.6650,
	movl	$124, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_malloc	#
	movl	-20(%rbp), %edx	# i, tmp107
	movslq	%edx, %rdx	# tmp107, tmp106
	movq	%rax, sqd_parse(,%rdx,8)	# D.6651, sqd_parse
	.loc 1 125 0
	movl	-12(%rbp), %eax	# len, tmp108
	movslq	%eax, %rdx	# tmp108, D.6650
	movq	-8(%rbp), %rax	# pat, tmp109
	movl	-20(%rbp), %ecx	# i, tmp111
	movslq	%ecx, %rcx	# tmp111, tmp110
	movq	(%rax,%rcx,8), %rcx	# pat_9->startp, D.6647
	movl	-20(%rbp), %eax	# i, tmp113
	cltq
	movq	sqd_parse(,%rax,8), %rax	# sqd_parse, D.6647
	movq	%rcx, %rsi	# D.6647,
	movq	%rax, %rdi	# D.6647,
	call	strncpy	#
	.loc 1 126 0
	movl	-20(%rbp), %eax	# i, tmp115
	cltq
	movq	sqd_parse(,%rax,8), %rdx	# sqd_parse, D.6647
	movl	-12(%rbp), %eax	# len, tmp116
	cltq
	addq	%rdx, %rax	# D.6647, D.6647
	movb	$0, (%rax)	#, *_29
.L9:
	.loc 1 120 0
	addl	$1, -20(%rbp)	#, i
.L8:
	.loc 1 120 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp117
	cmpl	-52(%rbp), %eax	# ntok, tmp117
	jle	.L10	#,
.L7:
	.loc 1 129 0 is_stmt 1
	movq	-8(%rbp), %rax	# pat, tmp118
	movq	%rax, %rdi	# tmp118,
	call	free	#
	.loc 1 130 0
	movl	-16(%rbp), %eax	# code, D.6649
	.loc 1 131 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Strparse, .-Strparse
	.globl	SqdClean
	.type	SqdClean, @function
SqdClean:
.LFB3:
	.loc 1 142 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 147 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L13	#
.L15:
	.loc 1 148 0
	movl	-4(%rbp), %eax	# i, tmp62
	cltq
	movq	sqd_parse(,%rax,8), %rax	# sqd_parse, D.6656
	testq	%rax, %rax	# D.6656
	je	.L14	#,
	.loc 1 149 0
	movl	-4(%rbp), %eax	# i, tmp64
	cltq
	movq	sqd_parse(,%rax,8), %rax	# sqd_parse, D.6656
	movq	%rax, %rdi	# D.6656,
	call	free	#
	.loc 1 150 0
	movl	-4(%rbp), %eax	# i, tmp66
	cltq
	movq	$0, sqd_parse(,%rax,8)	#, sqd_parse
.L14:
	.loc 1 147 0
	addl	$1, -4(%rbp)	#, i
.L13:
	.loc 1 147 0 is_stmt 0 discriminator 1
	cmpl	$9, -4(%rbp)	#, i
	jle	.L15	#,
	.loc 1 152 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	SqdClean, .-SqdClean
	.section	.rodata
.LC3:
	.string	"NULL argument to sqd_regcomp"
.LC4:
	.string	"regexp too big"
.LC5:
	.string	"out of space"
	.text
	.globl	sqd_regcomp
	.type	sqd_regcomp, @function
sqd_regcomp:
.LFB4:
	.loc 1 336 0
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
	subq	$80, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -104(%rbp)	# exp, exp
	.loc 1 342 0
	cmpq	$0, -104(%rbp)	#, exp
	jne	.L17	#,
	.loc 1 343 0
	movl	$.LC3, %edi	#,
	call	sqd_regerror	#
	movl	$0, %eax	#, D.6657
	jmp	.L29	#
.L17:
	.loc 1 346 0
	movq	-104(%rbp), %rax	# exp, tmp85
	movq	%rax, -80(%rbp)	# tmp85, co.regparse
	.loc 1 347 0
	movl	$1, -72(%rbp)	#, co.regnpar
	.loc 1 348 0
	movq	$0, -48(%rbp)	#, co.regsize
	.loc 1 349 0
	movb	$9, -56(%rbp)	#, co.regdummy
	.loc 1 350 0
	movb	$0, -54(%rbp)	#, co.regdummy
	movzbl	-54(%rbp), %eax	# co.regdummy, D.6658
	movb	%al, -55(%rbp)	# D.6658, co.regdummy
	.loc 1 351 0
	leaq	-80(%rbp), %rax	#, tmp86
	addq	$24, %rax	#, tmp87
	movq	%rax, -64(%rbp)	# tmp87, co.regcode
	.loc 1 352 0
	leaq	-80(%rbp), %rax	#, tmp88
	movl	$156, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	regc	#
	.loc 1 353 0
	leaq	-84(%rbp), %rdx	#, tmp89
	leaq	-80(%rbp), %rax	#, tmp90
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	reg	#
	testq	%rax, %rax	# D.6659
	jne	.L19	#,
	.loc 1 354 0
	movl	$0, %eax	#, D.6657
	jmp	.L29	#
.L19:
	.loc 1 357 0
	movq	-48(%rbp), %rax	# co.regsize, D.6660
	cmpq	$32766, %rax	#, D.6660
	jle	.L20	#,
	.loc 1 358 0
	movl	$.LC4, %edi	#,
	call	sqd_regerror	#
	movl	$0, %eax	#, D.6657
	jmp	.L29	#
.L20:
	.loc 1 361 0
	movq	-48(%rbp), %rax	# co.regsize, D.6660
	addq	$184, %rax	#, D.6661
	movq	%rax, %rdi	# D.6661,
	call	malloc	#
	movq	%rax, %r12	# tmp91, r
	.loc 1 362 0
	testq	%r12, %r12	# r
	jne	.L21	#,
	.loc 1 363 0
	movl	$.LC5, %edi	#,
	call	sqd_regerror	#
	movl	$0, %eax	#, D.6657
	jmp	.L29	#
.L21:
	.loc 1 366 0
	movq	-104(%rbp), %rax	# exp, tmp92
	movq	%rax, -80(%rbp)	# tmp92, co.regparse
	.loc 1 367 0
	movl	$1, -72(%rbp)	#, co.regnpar
	.loc 1 368 0
	leaq	180(%r12), %rax	#, D.6662
	movq	%rax, -64(%rbp)	# D.6662, co.regcode
	.loc 1 369 0
	leaq	-80(%rbp), %rax	#, tmp93
	movl	$156, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	regc	#
	.loc 1 370 0
	leaq	-84(%rbp), %rdx	#, tmp94
	leaq	-80(%rbp), %rax	#, tmp95
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	reg	#
	testq	%rax, %rax	# D.6659
	jne	.L22	#,
	.loc 1 371 0
	movl	$0, %eax	#, D.6657
	jmp	.L29	#
.L22:
	.loc 1 374 0
	movb	$0, 160(%r12)	#, r_17->regstart
	.loc 1 375 0
	movb	$0, 161(%r12)	#, r_17->reganch
	.loc 1 376 0
	movq	$0, 168(%r12)	#, r_17->regmust
	.loc 1 377 0
	movl	$0, 176(%r12)	#, r_17->regmlen
	.loc 1 378 0
	leaq	181(%r12), %rbx	#, scan
	.loc 1 379 0
	movq	%rbx, %rdi	# scan,
	call	regnext	#
	movzbl	(%rax), %eax	# *_23, D.6658
	testb	%al, %al	# D.6658
	jne	.L23	#,
	.loc 1 380 0
	addq	$3, %rbx	#, scan
	.loc 1 383 0
	movzbl	(%rbx), %eax	# *scan_25, D.6658
	cmpb	$8, %al	#, D.6658
	jne	.L24	#,
	.loc 1 384 0
	movzbl	3(%rbx), %eax	# MEM[(char *)scan_25 + 3B], D.6658
	movb	%al, 160(%r12)	# D.6658, r_17->regstart
	jmp	.L25	#
.L24:
	.loc 1 385 0
	movzbl	(%rbx), %eax	# *scan_25, D.6658
	cmpb	$1, %al	#, D.6658
	jne	.L25	#,
	.loc 1 386 0
	movb	$1, 161(%r12)	#, r_17->reganch
.L25:
	.loc 1 396 0
	movl	-84(%rbp), %eax	# flags, flags.0
	andl	$4, %eax	#, D.6663
	testl	%eax, %eax	# D.6663
	je	.L23	#,
.LBB2:
	.loc 1 397 0
	movl	$0, %r14d	#, longest
	.loc 1 398 0
	movl	$0, %r13d	#, len
	.loc 1 400 0
	jmp	.L26	#
.L28:
	.loc 1 401 0
	movzbl	(%rbx), %eax	# *scan_1, D.6658
	cmpb	$8, %al	#, D.6658
	jne	.L27	#,
	.loc 1 401 0 is_stmt 0 discriminator 1
	leaq	3(%rbx), %rax	#, D.6664
	movq	%rax, %rdi	# D.6664,
	call	strlen	#
	cmpq	%r13, %rax	# len, D.6661
	jb	.L27	#,
	.loc 1 402 0 is_stmt 1
	leaq	3(%rbx), %r14	#, longest
	.loc 1 403 0
	leaq	3(%rbx), %rax	#, D.6664
	movq	%rax, %rdi	# D.6664,
	call	strlen	#
	movq	%rax, %r13	#, len
.L27:
	.loc 1 400 0
	movq	%rbx, %rdi	# scan,
	call	regnext	#
	movq	%rax, %rbx	#, scan
.L26:
	.loc 1 400 0 is_stmt 0 discriminator 1
	testq	%rbx, %rbx	# scan
	jne	.L28	#,
	.loc 1 405 0 is_stmt 1
	movq	%r14, 168(%r12)	# longest, r_17->regmust
	.loc 1 406 0
	movl	%r13d, %eax	# len, D.6663
	movl	%eax, 176(%r12)	# D.6663, r_17->regmlen
.L23:
.LBE2:
	.loc 1 410 0
	movq	%r12, %rax	# r, D.6657
.L29:
	.loc 1 411 0
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	sqd_regcomp, .-sqd_regcomp
	.section	.rodata
.LC6:
	.string	"too many ()"
.LC7:
	.string	"unterminated ()"
.LC8:
	.string	"unmatched ()"
.LC9:
	.string	"internal error: junk on end"
	.text
	.type	reg, @function
reg:
.LFB5:
	.loc 1 427 0
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
	movq	%rdi, %rbx	# cp, cp
	movl	%esi, -52(%rbp)	# paren, paren
	movq	%rdx, -64(%rbp)	# flagp, flagp
	.loc 1 428 0
	movl	$0, %r13d	#, ret
	.loc 1 431 0
	movl	$0, %r14d	#, parno
	.loc 1 434 0
	movq	-64(%rbp), %rax	# flagp, tmp104
	movl	$1, (%rax)	#, *flagp_9(D)
	.loc 1 436 0
	cmpl	$0, -52(%rbp)	#, paren
	je	.L31	#,
	.loc 1 438 0
	movl	8(%rbx), %eax	# cp_11(D)->regnpar, D.6669
	cmpl	$9, %eax	#, D.6669
	jle	.L32	#,
	.loc 1 439 0
	movl	$.LC6, %edi	#,
	call	sqd_regerror	#
	movl	$0, %eax	#, D.6668
	jmp	.L47	#
.L32:
	.loc 1 440 0
	movl	8(%rbx), %r14d	# cp_11(D)->regnpar, parno
	.loc 1 441 0
	movl	8(%rbx), %eax	# cp_11(D)->regnpar, D.6669
	addl	$1, %eax	#, D.6669
	movl	%eax, 8(%rbx)	# D.6669, cp_11(D)->regnpar
	.loc 1 442 0
	leal	20(%r14), %eax	#, D.6669
	movl	%eax, %esi	# D.6669,
	movq	%rbx, %rdi	# cp,
	call	regnode	#
	movq	%rax, %r13	#, ret
.L31:
	.loc 1 446 0
	leaq	-36(%rbp), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	movq	%rbx, %rdi	# cp,
	call	regbranch	#
	movq	%rax, %r12	#, br
	.loc 1 447 0
	testq	%r12, %r12	# br
	jne	.L34	#,
	.loc 1 448 0
	movl	$0, %eax	#, D.6668
	jmp	.L47	#
.L34:
	.loc 1 449 0
	cmpl	$0, -52(%rbp)	#, paren
	je	.L35	#,
	.loc 1 450 0
	movq	%r12, %rdx	# br,
	movq	%r13, %rsi	# ret,
	movq	%rbx, %rdi	# cp,
	call	regtail	#
	jmp	.L36	#
.L35:
	.loc 1 452 0
	movq	%r12, %r13	# br, ret
.L36:
	.loc 1 453 0
	movq	-64(%rbp), %rax	# flagp, tmp106
	movl	(%rax), %eax	# *flagp_9(D), D.6669
	movl	-36(%rbp), %edx	# flags, flags.1
	andl	$1, %edx	#, D.6669
	testl	%edx, %edx	# D.6669
	sete	%dl	#, D.6670
	movzbl	%dl, %edx	# D.6670, D.6669
	notl	%edx	# D.6669
	andl	%eax, %edx	# D.6669, D.6669
	movq	-64(%rbp), %rax	# flagp, tmp107
	movl	%edx, (%rax)	# D.6669, *flagp_9(D)
	.loc 1 454 0
	movq	-64(%rbp), %rax	# flagp, tmp108
	movl	(%rax), %eax	# *flagp_9(D), D.6669
	movl	-36(%rbp), %edx	# flags, flags.2
	andl	$4, %edx	#, D.6669
	orl	%eax, %edx	# D.6669, D.6669
	movq	-64(%rbp), %rax	# flagp, tmp109
	movl	%edx, (%rax)	# D.6669, *flagp_9(D)
	.loc 1 455 0
	jmp	.L37	#
.L39:
	.loc 1 456 0
	movq	(%rbx), %rax	# cp_11(D)->regparse, D.6668
	addq	$1, %rax	#, D.6668
	movq	%rax, (%rbx)	# D.6668, cp_11(D)->regparse
	.loc 1 457 0
	leaq	-36(%rbp), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	movq	%rbx, %rdi	# cp,
	call	regbranch	#
	movq	%rax, %r12	#, br
	.loc 1 458 0
	testq	%r12, %r12	# br
	jne	.L38	#,
	.loc 1 459 0
	movl	$0, %eax	#, D.6668
	jmp	.L47	#
.L38:
	.loc 1 460 0
	movq	%r12, %rdx	# br,
	movq	%r13, %rsi	# ret,
	movq	%rbx, %rdi	# cp,
	call	regtail	#
	.loc 1 461 0
	movq	-64(%rbp), %rax	# flagp, tmp111
	movl	(%rax), %eax	# *flagp_9(D), D.6669
	movl	-36(%rbp), %edx	# flags, flags.3
	andl	$1, %edx	#, D.6669
	testl	%edx, %edx	# D.6669
	sete	%dl	#, D.6670
	movzbl	%dl, %edx	# D.6670, D.6669
	notl	%edx	# D.6669
	andl	%eax, %edx	# D.6669, D.6669
	movq	-64(%rbp), %rax	# flagp, tmp112
	movl	%edx, (%rax)	# D.6669, *flagp_9(D)
	.loc 1 462 0
	movq	-64(%rbp), %rax	# flagp, tmp113
	movl	(%rax), %eax	# *flagp_9(D), D.6669
	movl	-36(%rbp), %edx	# flags, flags.4
	andl	$4, %edx	#, D.6669
	orl	%eax, %edx	# D.6669, D.6669
	movq	-64(%rbp), %rax	# flagp, tmp114
	movl	%edx, (%rax)	# D.6669, *flagp_9(D)
.L37:
	.loc 1 455 0 discriminator 1
	movq	(%rbx), %rax	# cp_11(D)->regparse, D.6668
	movzbl	(%rax), %eax	# *_33, D.6671
	cmpb	$124, %al	#, D.6671
	je	.L39	#,
	.loc 1 466 0
	cmpl	$0, -52(%rbp)	#, paren
	je	.L40	#,
	.loc 1 466 0 is_stmt 0 discriminator 1
	leal	30(%r14), %eax	#, iftmp.5
	jmp	.L41	#
.L40:
	.loc 1 466 0 discriminator 2
	movl	$0, %eax	#, iftmp.5
.L41:
	.loc 1 466 0 discriminator 3
	movl	%eax, %esi	# iftmp.5,
	movq	%rbx, %rdi	# cp,
	call	regnode	#
	movq	%rax, %r14	#, ender
	.loc 1 467 0 is_stmt 1 discriminator 3
	movq	%r14, %rdx	# ender,
	movq	%r13, %rsi	# ret,
	movq	%rbx, %rdi	# cp,
	call	regtail	#
	.loc 1 470 0 discriminator 3
	movq	%r13, %r12	# ret, br
	jmp	.L42	#
.L43:
	.loc 1 471 0 discriminator 2
	movq	%r14, %rdx	# ender,
	movq	%r12, %rsi	# br,
	movq	%rbx, %rdi	# cp,
	call	regoptail	#
	.loc 1 470 0 discriminator 2
	movq	%r12, %rdi	# br,
	call	regnext	#
	movq	%rax, %r12	#, br
.L42:
	.loc 1 470 0 is_stmt 0 discriminator 1
	testq	%r12, %r12	# br
	jne	.L43	#,
	.loc 1 474 0 is_stmt 1
	cmpl	$0, -52(%rbp)	#, paren
	je	.L44	#,
	.loc 1 474 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# cp_11(D)->regparse, D.6668
	leaq	1(%rax), %rdx	#, D.6668
	movq	%rdx, (%rbx)	# D.6668, cp_11(D)->regparse
	movzbl	(%rax), %eax	# *_56, D.6671
	cmpb	$41, %al	#, D.6671
	je	.L44	#,
	.loc 1 475 0 is_stmt 1
	movl	$.LC7, %edi	#,
	call	sqd_regerror	#
	movl	$0, %eax	#, D.6668
	jmp	.L47	#
.L44:
	.loc 1 476 0
	cmpl	$0, -52(%rbp)	#, paren
	jne	.L45	#,
	.loc 1 476 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# cp_11(D)->regparse, D.6668
	movzbl	(%rax), %eax	# *_60, D.6671
	testb	%al, %al	# D.6671
	je	.L45	#,
	.loc 1 477 0 is_stmt 1
	movq	(%rbx), %rax	# cp_11(D)->regparse, D.6668
	movzbl	(%rax), %eax	# *_62, D.6671
	cmpb	$41, %al	#, D.6671
	jne	.L46	#,
	.loc 1 478 0
	movl	$.LC8, %edi	#,
	call	sqd_regerror	#
	movl	$0, %eax	#, D.6668
	jmp	.L47	#
.L46:
	.loc 1 480 0
	movl	$.LC9, %edi	#,
	call	sqd_regerror	#
	movl	$0, %eax	#, D.6668
	jmp	.L47	#
.L45:
	.loc 1 484 0
	movq	%r13, %rax	# ret, D.6668
.L47:
	.loc 1 485 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	reg, .-reg
	.type	regbranch, @function
regbranch:
.LFB6:
	.loc 1 496 0
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
	movq	%rdi, %rbx	# cp, cp
	movq	%rsi, -56(%rbp)	# flagp, flagp
	.loc 1 503 0
	movq	-56(%rbp), %rax	# flagp, tmp76
	movl	$0, (%rax)	#, *flagp_3(D)
	.loc 1 505 0
	movl	$6, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regnode	#
	movq	%rax, %r14	#, ret
	.loc 1 506 0
	movl	$0, %r12d	#, chain
	.loc 1 507 0
	jmp	.L49	#
.L55:
	.loc 1 508 0
	leaq	-36(%rbp), %rax	#, tmp77
	movq	%rax, %rsi	# tmp77,
	movq	%rbx, %rdi	# cp,
	call	regpiece	#
	movq	%rax, %r13	#, latest
	.loc 1 509 0
	testq	%r13, %r13	# latest
	jne	.L50	#,
	.loc 1 510 0
	movl	$0, %eax	#, D.6676
	jmp	.L57	#
.L50:
	.loc 1 511 0
	movq	-56(%rbp), %rax	# flagp, tmp78
	movl	(%rax), %eax	# *flagp_3(D), D.6678
	movl	-36(%rbp), %edx	# flags, flags.6
	andl	$1, %edx	#, D.6678
	orl	%eax, %edx	# D.6678, D.6678
	movq	-56(%rbp), %rax	# flagp, tmp79
	movl	%edx, (%rax)	# D.6678, *flagp_3(D)
	.loc 1 512 0
	testq	%r12, %r12	# chain
	jne	.L52	#,
	.loc 1 513 0
	movq	-56(%rbp), %rax	# flagp, tmp80
	movl	(%rax), %eax	# *flagp_3(D), D.6678
	movl	-36(%rbp), %edx	# flags, flags.7
	andl	$4, %edx	#, D.6678
	orl	%eax, %edx	# D.6678, D.6678
	movq	-56(%rbp), %rax	# flagp, tmp81
	movl	%edx, (%rax)	# D.6678, *flagp_3(D)
	jmp	.L53	#
.L52:
	.loc 1 515 0
	movq	%r13, %rdx	# latest,
	movq	%r12, %rsi	# chain,
	movq	%rbx, %rdi	# cp,
	call	regtail	#
.L53:
	.loc 1 516 0
	movq	%r13, %r12	# latest, chain
.L49:
	.loc 1 507 0 discriminator 1
	movq	(%rbx), %rax	# cp_4(D)->regparse, D.6676
	movzbl	(%rax), %eax	# *_7, D.6677
	movsbl	%al, %r13d	# D.6677, c
	testl	%r13d, %r13d	# c
	je	.L54	#,
	.loc 1 507 0 is_stmt 0 discriminator 2
	cmpl	$124, %r13d	#, c
	je	.L54	#,
	.loc 1 507 0 discriminator 1
	cmpl	$41, %r13d	#, c
	jne	.L55	#,
.L54:
	.loc 1 518 0 is_stmt 1
	testq	%r12, %r12	# chain
	jne	.L56	#,
	.loc 1 519 0
	movl	$9, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regnode	#
.L56:
	.loc 1 521 0
	movq	%r14, %rax	# ret, D.6676
.L57:
	.loc 1 522 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	regbranch, .-regbranch
	.section	.rodata
.LC10:
	.string	"*+ operand could be empty"
.LC11:
	.string	"nested *?+"
	.text
	.type	regpiece, @function
regpiece:
.LFB7:
	.loc 1 537 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, %rbx	# cp, cp
	movq	%rsi, -56(%rbp)	# flagp, flagp
	.loc 1 543 0
	leaq	-36(%rbp), %rax	#, tmp89
	movq	%rax, %rsi	# tmp89,
	movq	%rbx, %rdi	# cp,
	call	regatom	#
	movq	%rax, %r12	#, ret
	.loc 1 544 0
	testq	%r12, %r12	# ret
	jne	.L59	#,
	.loc 1 545 0
	movl	$0, %eax	#, D.6679
	jmp	.L74	#
.L59:
	.loc 1 547 0
	movq	(%rbx), %rax	# cp_2(D)->regparse, D.6679
	movzbl	(%rax), %r13d	# *_5, op
	.loc 1 548 0
	cmpb	$42, %r13b	#, op
	je	.L61	#,
	.loc 1 548 0 is_stmt 0 discriminator 1
	cmpb	$43, %r13b	#, op
	je	.L61	#,
	cmpb	$63, %r13b	#, op
	je	.L61	#,
	.loc 1 549 0 is_stmt 1
	movl	-36(%rbp), %edx	# flags, flags.8
	movq	-56(%rbp), %rax	# flagp, tmp90
	movl	%edx, (%rax)	# flags.8, *flagp_8(D)
	.loc 1 550 0
	movq	%r12, %rax	# ret, D.6679
	jmp	.L74	#
.L61:
	.loc 1 553 0
	movl	-36(%rbp), %eax	# flags, flags.9
	andl	$1, %eax	#, D.6680
	testl	%eax, %eax	# D.6680
	jne	.L62	#,
	.loc 1 553 0 is_stmt 0 discriminator 1
	cmpb	$63, %r13b	#, op
	je	.L62	#,
	.loc 1 554 0 is_stmt 1
	movl	$.LC10, %edi	#,
	call	sqd_regerror	#
	movl	$0, %eax	#, D.6679
	jmp	.L74	#
.L62:
	.loc 1 555 0
	movsbl	%r13b, %eax	# op, D.6680
	cmpl	$43, %eax	#, D.6680
	je	.L64	#,
	cmpl	$63, %eax	#, D.6680
	je	.L65	#,
	cmpl	$42, %eax	#, D.6680
	jne	.L63	#,
	.loc 1 556 0
	movq	-56(%rbp), %rax	# flagp, tmp91
	movl	$4, (%rax)	#, *flagp_8(D)
	jmp	.L63	#
.L64:
	.loc 1 557 0
	movq	-56(%rbp), %rax	# flagp, tmp92
	movl	$5, (%rax)	#, *flagp_8(D)
	jmp	.L63	#
.L65:
	.loc 1 558 0
	movq	-56(%rbp), %rax	# flagp, tmp93
	movl	$0, (%rax)	#, *flagp_8(D)
	nop
.L63:
	.loc 1 561 0
	cmpb	$42, %r13b	#, op
	jne	.L67	#,
	.loc 1 561 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# flags, flags.10
	andl	$2, %eax	#, D.6680
	testl	%eax, %eax	# D.6680
	je	.L67	#,
	.loc 1 562 0 is_stmt 1
	movq	%r12, %rdx	# ret,
	movl	$10, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	reginsert	#
	jmp	.L68	#
.L67:
	.loc 1 563 0
	cmpb	$42, %r13b	#, op
	jne	.L69	#,
	.loc 1 565 0
	movq	%r12, %rdx	# ret,
	movl	$6, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	reginsert	#
	.loc 1 566 0
	movl	$7, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regnode	#
	movq	%rax, %rdx	# D.6679,
	movq	%r12, %rsi	# ret,
	movq	%rbx, %rdi	# cp,
	call	regoptail	#
	.loc 1 567 0
	movq	%r12, %rdx	# ret,
	movq	%r12, %rsi	# ret,
	movq	%rbx, %rdi	# cp,
	call	regoptail	#
	.loc 1 568 0
	movl	$6, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regnode	#
	movq	%rax, %rdx	# D.6679,
	movq	%r12, %rsi	# ret,
	movq	%rbx, %rdi	# cp,
	call	regtail	#
	.loc 1 569 0
	movl	$9, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regnode	#
	movq	%rax, %rdx	# D.6679,
	movq	%r12, %rsi	# ret,
	movq	%rbx, %rdi	# cp,
	call	regtail	#
	jmp	.L68	#
.L69:
	.loc 1 570 0
	cmpb	$43, %r13b	#, op
	jne	.L70	#,
	.loc 1 570 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# flags, flags.11
	andl	$2, %eax	#, D.6680
	testl	%eax, %eax	# D.6680
	je	.L70	#,
	.loc 1 571 0 is_stmt 1
	movq	%r12, %rdx	# ret,
	movl	$11, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	reginsert	#
	jmp	.L68	#
.L70:
	.loc 1 572 0
	cmpb	$43, %r13b	#, op
	jne	.L71	#,
	.loc 1 574 0
	movl	$6, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regnode	#
	movq	%rax, %r13	#, next
	.loc 1 575 0
	movq	%r13, %rdx	# next,
	movq	%r12, %rsi	# ret,
	movq	%rbx, %rdi	# cp,
	call	regtail	#
	.loc 1 576 0
	movl	$7, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regnode	#
	movq	%r12, %rdx	# ret,
	movq	%rax, %rsi	# D.6679,
	movq	%rbx, %rdi	# cp,
	call	regtail	#
	.loc 1 577 0
	movl	$6, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regnode	#
	movq	%rax, %rdx	# D.6679,
	movq	%r13, %rsi	# next,
	movq	%rbx, %rdi	# cp,
	call	regtail	#
	.loc 1 578 0
	movl	$9, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regnode	#
	movq	%rax, %rdx	# D.6679,
	movq	%r12, %rsi	# ret,
	movq	%rbx, %rdi	# cp,
	call	regtail	#
	jmp	.L68	#
.L71:
	.loc 1 579 0
	cmpb	$63, %r13b	#, op
	jne	.L68	#,
	.loc 1 581 0
	movq	%r12, %rdx	# ret,
	movl	$6, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	reginsert	#
	.loc 1 582 0
	movl	$6, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regnode	#
	movq	%rax, %rdx	# D.6679,
	movq	%r12, %rsi	# ret,
	movq	%rbx, %rdi	# cp,
	call	regtail	#
	.loc 1 583 0
	movl	$9, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regnode	#
	movq	%rax, %r13	#, next
	.loc 1 584 0
	movq	%r13, %rdx	# next,
	movq	%r12, %rsi	# ret,
	movq	%rbx, %rdi	# cp,
	call	regtail	#
	.loc 1 585 0
	movq	%r13, %rdx	# next,
	movq	%r12, %rsi	# ret,
	movq	%rbx, %rdi	# cp,
	call	regoptail	#
.L68:
	.loc 1 587 0
	movq	(%rbx), %rax	# cp_2(D)->regparse, D.6679
	addq	$1, %rax	#, D.6679
	movq	%rax, (%rbx)	# D.6679, cp_2(D)->regparse
	.loc 1 588 0
	movq	(%rbx), %rax	# cp_2(D)->regparse, D.6679
	movzbl	(%rax), %eax	# *_29, D.6681
	cmpb	$42, %al	#, D.6681
	je	.L72	#,
	.loc 1 588 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# cp_2(D)->regparse, D.6679
	movzbl	(%rax), %eax	# *_31, D.6681
	cmpb	$43, %al	#, D.6681
	je	.L72	#,
	movq	(%rbx), %rax	# cp_2(D)->regparse, D.6679
	movzbl	(%rax), %eax	# *_33, D.6681
	cmpb	$63, %al	#, D.6681
	jne	.L73	#,
.L72:
	.loc 1 589 0 is_stmt 1
	movl	$.LC11, %edi	#,
	call	sqd_regerror	#
	movl	$0, %eax	#, D.6679
	jmp	.L74	#
.L73:
	.loc 1 591 0
	movq	%r12, %rax	# ret, D.6679
.L74:
	.loc 1 592 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	regpiece, .-regpiece
	.section	.rodata
.LC12:
	.string	"invalid [] range"
.LC13:
	.string	"unmatched []"
	.align 8
.LC14:
	.string	"internal error: \\0|) unexpected"
.LC15:
	.string	"?+* follows nothing"
.LC16:
	.string	"trailing \\"
.LC17:
	.string	"^$.[()|?+*\\"
.LC18:
	.string	"internal error: strcspn 0"
	.text
	.type	regatom, @function
regatom:
.LFB8:
	.loc 1 606 0
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
	movq	%rdi, %rbx	# cp, cp
	movq	%rsi, -56(%rbp)	# flagp, flagp
	.loc 1 610 0
	movq	-56(%rbp), %rax	# flagp, tmp121
	movl	$0, (%rax)	#, *flagp_7(D)
	.loc 1 612 0
	movq	(%rbx), %rax	# cp_8(D)->regparse, D.6684
	leaq	1(%rax), %rdx	#, D.6684
	movq	%rdx, (%rbx)	# D.6684, cp_8(D)->regparse
	movzbl	(%rax), %eax	# *_10, D.6685
	movsbl	%al, %eax	# D.6685, D.6686
	cmpl	$43, %eax	#, D.6686
	jg	.L77	#,
	cmpl	$42, %eax	#, D.6686
	jge	.L78	#,
	cmpl	$36, %eax	#, D.6686
	je	.L79	#,
	cmpl	$36, %eax	#, D.6686
	jg	.L80	#,
	testl	%eax, %eax	# D.6686
	je	.L81	#,
	jmp	.L76	#
.L80:
	cmpl	$40, %eax	#, D.6686
	je	.L82	#,
	cmpl	$41, %eax	#, D.6686
	je	.L81	#,
	jmp	.L76	#
.L77:
	cmpl	$91, %eax	#, D.6686
	je	.L83	#,
	cmpl	$91, %eax	#, D.6686
	jg	.L84	#,
	cmpl	$46, %eax	#, D.6686
	je	.L85	#,
	cmpl	$63, %eax	#, D.6686
	je	.L78	#,
	jmp	.L76	#
.L84:
	cmpl	$94, %eax	#, D.6686
	je	.L86	#,
	cmpl	$124, %eax	#, D.6686
	je	.L81	#,
	cmpl	$92, %eax	#, D.6686
	je	.L87	#,
	jmp	.L76	#
.L86:
	.loc 1 614 0
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regnode	#
	movq	%rax, %r13	#, ret
	.loc 1 615 0
	jmp	.L88	#
.L79:
	.loc 1 617 0
	movl	$2, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regnode	#
	movq	%rax, %r13	#, ret
	.loc 1 618 0
	jmp	.L88	#
.L85:
	.loc 1 620 0
	movl	$3, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regnode	#
	movq	%rax, %r13	#, ret
	.loc 1 621 0
	movq	-56(%rbp), %rax	# flagp, tmp122
	movl	(%rax), %eax	# *flagp_7(D), D.6686
	orl	$3, %eax	#, D.6686
	movl	%eax, %edx	# D.6686, D.6686
	movq	-56(%rbp), %rax	# flagp, tmp123
	movl	%edx, (%rax)	# D.6686, *flagp_7(D)
	.loc 1 622 0
	jmp	.L88	#
.L83:
.LBB3:
	.loc 1 628 0
	movq	(%rbx), %rax	# cp_8(D)->regparse, D.6684
	movzbl	(%rax), %eax	# *_19, D.6685
	cmpb	$94, %al	#, D.6685
	jne	.L89	#,
	.loc 1 629 0
	movl	$5, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regnode	#
	movq	%rax, %r13	#, ret
	.loc 1 630 0
	movq	(%rbx), %rax	# cp_8(D)->regparse, D.6684
	addq	$1, %rax	#, D.6684
	movq	%rax, (%rbx)	# D.6684, cp_8(D)->regparse
	jmp	.L90	#
.L89:
	.loc 1 632 0
	movl	$4, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regnode	#
	movq	%rax, %r13	#, ret
.L90:
	.loc 1 633 0
	movq	(%rbx), %rax	# cp_8(D)->regparse, D.6684
	movzbl	(%rax), %eax	# *_25, D.6685
	movsbl	%al, %r12d	# D.6685, c
	cmpl	$93, %r12d	#, c
	je	.L91	#,
	.loc 1 633 0 is_stmt 0 discriminator 1
	cmpl	$45, %r12d	#, c
	jne	.L92	#,
.L91:
	.loc 1 634 0 is_stmt 1
	movl	%r12d, %esi	# c,
	movq	%rbx, %rdi	# cp,
	call	regc	#
	.loc 1 635 0
	movq	(%rbx), %rax	# cp_8(D)->regparse, D.6684
	addq	$1, %rax	#, D.6684
	movq	%rax, (%rbx)	# D.6684, cp_8(D)->regparse
	.loc 1 637 0
	jmp	.L93	#
.L92:
	jmp	.L93	#
.L102:
	.loc 1 638 0
	cmpl	$45, %r12d	#, c
	je	.L94	#,
	.loc 1 639 0
	movl	%r12d, %esi	# c,
	movq	%rbx, %rdi	# cp,
	call	regc	#
	jmp	.L93	#
.L94:
	.loc 1 640 0
	movq	(%rbx), %rax	# cp_8(D)->regparse, D.6684
	movzbl	(%rax), %eax	# *_35, D.6685
	movsbl	%al, %r12d	# D.6685, c
	cmpl	$93, %r12d	#, c
	je	.L95	#,
	.loc 1 640 0 is_stmt 0 discriminator 1
	testl	%r12d, %r12d	# c
	jne	.L96	#,
.L95:
	.loc 1 641 0 is_stmt 1
	movl	$45, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regc	#
	jmp	.L93	#
.L96:
	.loc 1 643 0
	movq	(%rbx), %rax	# cp_8(D)->regparse, D.6684
	subq	$2, %rax	#, D.6684
	movzbl	(%rax), %eax	# *_39, D.6685
	movzbl	%al, %r14d	# D.6687, range
	.loc 1 644 0
	movl	%r12d, %eax	# c, D.6687
	movzbl	%al, %r12d	# D.6687, rangeend
	.loc 1 645 0
	cmpl	%r12d, %r14d	# rangeend, range
	jle	.L97	#,
	.loc 1 646 0
	movl	$.LC12, %edi	#,
	call	sqd_regerror	#
	movl	$0, %eax	#, D.6684
	jmp	.L112	#
.L97:
	.loc 1 647 0
	addl	$1, %r14d	#, range
	jmp	.L99	#
.L100:
	.loc 1 648 0 discriminator 2
	movl	%r14d, %esi	# range,
	movq	%rbx, %rdi	# cp,
	call	regc	#
	.loc 1 647 0 discriminator 2
	addl	$1, %r14d	#, range
.L99:
	.loc 1 647 0 is_stmt 0 discriminator 1
	cmpl	%r12d, %r14d	# rangeend, range
	jle	.L100	#,
	.loc 1 649 0 is_stmt 1
	movq	(%rbx), %rax	# cp_8(D)->regparse, D.6684
	addq	$1, %rax	#, D.6684
	movq	%rax, (%rbx)	# D.6684, cp_8(D)->regparse
.L93:
	.loc 1 637 0 discriminator 1
	movq	(%rbx), %rax	# cp_8(D)->regparse, D.6684
	leaq	1(%rax), %rdx	#, D.6684
	movq	%rdx, (%rbx)	# D.6684, cp_8(D)->regparse
	movzbl	(%rax), %eax	# *_31, D.6685
	movsbl	%al, %r12d	# D.6685, c
	testl	%r12d, %r12d	# c
	je	.L101	#,
	.loc 1 637 0 is_stmt 0 discriminator 2
	cmpl	$93, %r12d	#, c
	jne	.L102	#,
.L101:
	.loc 1 652 0 is_stmt 1
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regc	#
	.loc 1 653 0
	cmpl	$93, %r12d	#, c
	je	.L103	#,
	.loc 1 654 0
	movl	$.LC13, %edi	#,
	call	sqd_regerror	#
	movl	$0, %eax	#, D.6684
	jmp	.L112	#
.L103:
	.loc 1 655 0
	movq	-56(%rbp), %rax	# flagp, tmp124
	movl	(%rax), %eax	# *flagp_7(D), D.6686
	orl	$3, %eax	#, D.6686
	movl	%eax, %edx	# D.6686, D.6686
	movq	-56(%rbp), %rax	# flagp, tmp125
	movl	%edx, (%rax)	# D.6686, *flagp_7(D)
	.loc 1 656 0
	jmp	.L88	#
.L82:
.LBE3:
	.loc 1 659 0
	leaq	-36(%rbp), %rax	#, tmp126
	movq	%rax, %rdx	# tmp126,
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	reg	#
	movq	%rax, %r13	#, ret
	.loc 1 660 0
	testq	%r13, %r13	# ret
	jne	.L104	#,
	.loc 1 661 0
	movl	$0, %eax	#, D.6684
	jmp	.L112	#
.L104:
	.loc 1 662 0
	movq	-56(%rbp), %rax	# flagp, tmp127
	movl	(%rax), %eax	# *flagp_7(D), D.6686
	movl	-36(%rbp), %edx	# flags, flags.12
	andl	$5, %edx	#, D.6686
	orl	%eax, %edx	# D.6686, D.6686
	movq	-56(%rbp), %rax	# flagp, tmp128
	movl	%edx, (%rax)	# D.6686, *flagp_7(D)
	.loc 1 663 0
	jmp	.L88	#
.L81:
	.loc 1 668 0
	movl	$.LC14, %edi	#,
	call	sqd_regerror	#
	movl	$0, %eax	#, D.6684
	jmp	.L112	#
.L78:
	.loc 1 673 0
	movl	$.LC15, %edi	#,
	call	sqd_regerror	#
	movl	$0, %eax	#, D.6684
	jmp	.L112	#
.L87:
	.loc 1 676 0
	movq	(%rbx), %rax	# cp_8(D)->regparse, D.6684
	movzbl	(%rax), %eax	# *_61, D.6685
	testb	%al, %al	# D.6685
	jne	.L105	#,
	.loc 1 677 0
	movl	$.LC16, %edi	#,
	call	sqd_regerror	#
	movl	$0, %eax	#, D.6684
	jmp	.L112	#
.L105:
	.loc 1 678 0
	movl	$8, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regnode	#
	movq	%rax, %r13	#, ret
	.loc 1 679 0
	movq	(%rbx), %rax	# cp_8(D)->regparse, D.6684
	leaq	1(%rax), %rdx	#, D.6684
	movq	%rdx, (%rbx)	# D.6684, cp_8(D)->regparse
	movzbl	(%rax), %eax	# *_66, D.6685
	movsbl	%al, %eax	# D.6685, D.6686
	movl	%eax, %esi	# D.6686,
	movq	%rbx, %rdi	# cp,
	call	regc	#
	.loc 1 680 0
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regc	#
	.loc 1 681 0
	movq	-56(%rbp), %rax	# flagp, tmp129
	movl	(%rax), %eax	# *flagp_7(D), D.6686
	orl	$3, %eax	#, D.6686
	movl	%eax, %edx	# D.6686, D.6686
	movq	-56(%rbp), %rax	# flagp, tmp130
	movl	%edx, (%rax)	# D.6686, *flagp_7(D)
	.loc 1 682 0
	jmp	.L88	#
.L76:
.LBB4:
	.loc 1 687 0
	movq	(%rbx), %rax	# cp_8(D)->regparse, D.6684
	subq	$1, %rax	#, D.6684
	movq	%rax, (%rbx)	# D.6684, cp_8(D)->regparse
	.loc 1 688 0
	movq	(%rbx), %rax	# cp_8(D)->regparse, D.6684
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# D.6684,
	call	strcspn	#
	movq	%rax, %r12	#, len
	.loc 1 689 0
	testq	%r12, %r12	# len
	jne	.L106	#,
	.loc 1 690 0
	movl	$.LC18, %edi	#,
	call	sqd_regerror	#
	movl	$0, %eax	#, D.6684
	jmp	.L112	#
.L106:
	.loc 1 691 0
	movq	(%rbx), %rax	# cp_8(D)->regparse, D.6684
	addq	%r12, %rax	# len, D.6684
	movzbl	(%rax), %r13d	# *_78, ender
	.loc 1 692 0
	cmpq	$1, %r12	#, len
	jbe	.L107	#,
	.loc 1 692 0 is_stmt 0 discriminator 1
	cmpb	$42, %r13b	#, ender
	je	.L108	#,
	cmpb	$43, %r13b	#, ender
	je	.L108	#,
	cmpb	$63, %r13b	#, ender
	jne	.L107	#,
.L108:
	.loc 1 693 0 is_stmt 1
	subq	$1, %r12	#, len
.L107:
	.loc 1 694 0
	movq	-56(%rbp), %rax	# flagp, tmp131
	movl	(%rax), %eax	# *flagp_7(D), D.6686
	orl	$1, %eax	#, D.6686
	movl	%eax, %edx	# D.6686, D.6686
	movq	-56(%rbp), %rax	# flagp, tmp132
	movl	%edx, (%rax)	# D.6686, *flagp_7(D)
	.loc 1 695 0
	cmpq	$1, %r12	#, len
	jne	.L109	#,
	.loc 1 696 0
	movq	-56(%rbp), %rax	# flagp, tmp133
	movl	(%rax), %eax	# *flagp_7(D), D.6686
	orl	$2, %eax	#, D.6686
	movl	%eax, %edx	# D.6686, D.6686
	movq	-56(%rbp), %rax	# flagp, tmp134
	movl	%edx, (%rax)	# D.6686, *flagp_7(D)
.L109:
	.loc 1 697 0
	movl	$8, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regnode	#
	movq	%rax, %r13	#, ret
	.loc 1 698 0
	jmp	.L110	#
.L111:
	.loc 1 699 0 discriminator 2
	movq	(%rbx), %rax	# cp_8(D)->regparse, D.6684
	leaq	1(%rax), %rdx	#, D.6684
	movq	%rdx, (%rbx)	# D.6684, cp_8(D)->regparse
	movzbl	(%rax), %eax	# *_87, D.6685
	movsbl	%al, %eax	# D.6685, D.6686
	movl	%eax, %esi	# D.6686,
	movq	%rbx, %rdi	# cp,
	call	regc	#
	.loc 1 698 0 discriminator 2
	subq	$1, %r12	#, len
.L110:
	.loc 1 698 0 is_stmt 0 discriminator 1
	testq	%r12, %r12	# len
	jne	.L111	#,
	.loc 1 700 0 is_stmt 1
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# cp,
	call	regc	#
	.loc 1 701 0
	nop
.L88:
.LBE4:
	.loc 1 705 0
	movq	%r13, %rax	# ret, D.6684
.L112:
	.loc 1 706 0
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
	.size	regatom, .-regatom
	.type	regnode, @function
regnode:
.LFB9:
	.loc 1 715 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %rax	# cp, cp
	movl	%esi, %edx	# op, tmp71
	movb	%dl, -20(%rbp)	# tmp71, op
	.loc 1 716 0
	movq	16(%rax), %r12	# cp_2(D)->regcode, ret
	.loc 1 719 0
	movq	16(%rax), %rcx	# cp_2(D)->regcode, D.6698
	leaq	24(%rax), %rdx	#, D.6699
	cmpq	%rdx, %rcx	# D.6699, D.6698
	jne	.L114	#,
	.loc 1 720 0
	movq	32(%rax), %rdx	# cp_2(D)->regsize, D.6700
	addq	$3, %rdx	#, D.6700
	movq	%rdx, 32(%rax)	# D.6700, cp_2(D)->regsize
	.loc 1 721 0
	movq	%r12, %rax	# ret, D.6698
	jmp	.L115	#
.L114:
	.loc 1 724 0
	movq	%r12, %rbx	# ret, ptr
	.loc 1 725 0
	movq	%rbx, %rdx	# ptr, ptr.13
	leaq	1(%rdx), %rbx	#, ptr
	movzbl	-20(%rbp), %ecx	# op, tmp72
	movb	%cl, (%rdx)	# tmp72, *ptr.13_10
	.loc 1 726 0
	movq	%rbx, %rdx	# ptr, ptr.14
	leaq	1(%rdx), %rbx	#, ptr
	movb	$0, (%rdx)	#, *ptr.14_13
	.loc 1 727 0
	movq	%rbx, %rdx	# ptr, ptr.15
	leaq	1(%rdx), %rbx	#, ptr
	movb	$0, (%rdx)	#, *ptr.15_15
	.loc 1 728 0
	movq	%rbx, 16(%rax)	# ptr, cp_2(D)->regcode
	.loc 1 730 0
	movq	%r12, %rax	# ret, D.6698
.L115:
	.loc 1 731 0
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	regnode, .-regnode
	.type	regc, @function
regc:
.LFB10:
	.loc 1 740 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, %rax	# cp, cp
	movl	%esi, %edx	# b, tmp66
	movb	%dl, -4(%rbp)	# tmp66, b
	.loc 1 741 0
	movq	16(%rax), %rcx	# cp_1(D)->regcode, D.6701
	leaq	24(%rax), %rdx	#, D.6702
	cmpq	%rdx, %rcx	# D.6702, D.6701
	je	.L117	#,
	.loc 1 742 0
	movq	16(%rax), %rdx	# cp_1(D)->regcode, D.6701
	leaq	1(%rdx), %rcx	#, D.6701
	movq	%rcx, 16(%rax)	# D.6701, cp_1(D)->regcode
	movzbl	-4(%rbp), %eax	# b, tmp67
	movb	%al, (%rdx)	# tmp67, *_5
	jmp	.L116	#
.L117:
	.loc 1 744 0
	movq	32(%rax), %rdx	# cp_1(D)->regsize, D.6703
	addq	$1, %rdx	#, D.6703
	movq	%rdx, 32(%rax)	# D.6703, cp_1(D)->regsize
.L116:
	.loc 1 745 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	regc, .-regc
	.type	reginsert, @function
reginsert:
.LFB11:
	.loc 1 757 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# cp, cp
	movl	%esi, %eax	# op, tmp76
	movq	%rdx, -32(%rbp)	# opnd, opnd
	movb	%al, -20(%rbp)	# tmp76, op
	.loc 1 760 0
	movq	16(%rbx), %rdx	# cp_1(D)->regcode, D.6704
	leaq	24(%rbx), %rax	#, D.6705
	cmpq	%rax, %rdx	# D.6705, D.6704
	jne	.L120	#,
	.loc 1 761 0
	movq	32(%rbx), %rax	# cp_1(D)->regsize, D.6706
	addq	$3, %rax	#, D.6706
	movq	%rax, 32(%rbx)	# D.6706, cp_1(D)->regsize
	.loc 1 762 0
	jmp	.L119	#
.L120:
	.loc 1 765 0
	movq	16(%rbx), %rax	# cp_1(D)->regcode, D.6704
	movq	%rax, %rdx	# D.6704, D.6706
	movq	-32(%rbp), %rax	# opnd, opnd.16
	subq	%rax, %rdx	# opnd.16, D.6706
	movq	%rdx, %rax	# D.6706, D.6706
	movq	%rax, %rdx	# D.6706, D.6707
	movq	-32(%rbp), %rax	# opnd, tmp77
	leaq	3(%rax), %rcx	#, D.6708
	movq	-32(%rbp), %rax	# opnd, tmp78
	movq	%rax, %rsi	# tmp78,
	movq	%rcx, %rdi	# D.6708,
	call	memmove	#
	.loc 1 766 0
	movq	16(%rbx), %rax	# cp_1(D)->regcode, D.6704
	addq	$3, %rax	#, D.6704
	movq	%rax, 16(%rbx)	# D.6704, cp_1(D)->regcode
	.loc 1 768 0
	movq	-32(%rbp), %rbx	# opnd, place
	.loc 1 769 0
	movq	%rbx, %rax	# place, place.17
	leaq	1(%rax), %rbx	#, place
	movzbl	-20(%rbp), %edx	# op, tmp79
	movb	%dl, (%rax)	# tmp79, *place.17_16
	.loc 1 770 0
	movq	%rbx, %rax	# place, place.18
	leaq	1(%rax), %rbx	#, place
	movb	$0, (%rax)	#, *place.18_19
	.loc 1 771 0
	movq	%rbx, %rax	# place, place.19
	leaq	1(%rax), %rbx	#, place
	movb	$0, (%rax)	#, *place.19_21
.L119:
	.loc 1 772 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	reginsert, .-reginsert
	.type	regtail, @function
regtail:
.LFB12:
	.loc 1 782 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$16, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %rax	# cp, cp
	movq	%rsi, -24(%rbp)	# p, p
	movq	%rdx, -32(%rbp)	# val, val
	.loc 1 787 0
	movq	16(%rax), %rdx	# cp_3(D)->regcode, D.6709
	addq	$24, %rax	#, D.6710
	cmpq	%rax, %rdx	# D.6710, D.6709
	jne	.L123	#,
	.loc 1 788 0
	jmp	.L122	#
.L123:
	.loc 1 791 0
	movq	-24(%rbp), %rbx	# p, scan
	jmp	.L125	#
.L126:
	movq	%r12, %rbx	# temp, scan
.L125:
	.loc 1 791 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdi	# scan,
	call	regnext	#
	movq	%rax, %r12	#, temp
	testq	%r12, %r12	# temp
	jne	.L126	#,
	.loc 1 794 0 is_stmt 1
	movzbl	(%rbx), %eax	# *scan_1, D.6711
	cmpb	$7, %al	#, D.6711
	jne	.L127	#,
	.loc 1 794 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdx	# scan, scan.21
	movq	-32(%rbp), %rax	# val, val.22
	subq	%rax, %rdx	# val.22, D.6712
	movq	%rdx, %rax	# D.6712, D.6712
	jmp	.L128	#
.L127:
	.loc 1 794 0 discriminator 2
	movq	-32(%rbp), %rdx	# val, val.23
	movq	%rbx, %rax	# scan, scan.24
	subq	%rax, %rdx	# scan.24, D.6712
	movq	%rdx, %rax	# D.6712, D.6712
.L128:
	.loc 1 794 0 discriminator 3
	movl	%eax, %r12d	# iftmp.20, offset
	.loc 1 795 0 is_stmt 1 discriminator 3
	leaq	1(%rbx), %rax	#, D.6709
	movl	%r12d, %edx	# offset, D.6713
	sarl	$8, %edx	#, D.6713
	andl	$127, %edx	#, D.6711
	movb	%dl, (%rax)	# D.6711, *_21
	.loc 1 796 0 discriminator 3
	leaq	2(%rbx), %rdx	#, D.6709
	movl	%r12d, %eax	# offset, D.6711
	movb	%al, (%rdx)	# D.6711, *_25
.L122:
	.loc 1 797 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	regtail, .-regtail
	.type	regoptail, @function
regoptail:
.LFB13:
	.loc 1 807 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, %rax	# cp, cp
	movq	%rsi, -8(%rbp)	# p, p
	movq	%rdx, -16(%rbp)	# val, val
	.loc 1 809 0
	movq	16(%rax), %rcx	# cp_1(D)->regcode, D.6714
	leaq	24(%rax), %rdx	#, D.6715
	cmpq	%rdx, %rcx	# D.6715, D.6714
	je	.L130	#,
	.loc 1 809 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rdx	# p, tmp64
	movzbl	(%rdx), %edx	# *p_4(D), D.6716
	cmpb	$6, %dl	#, D.6716
	je	.L131	#,
.L130:
	.loc 1 810 0 is_stmt 1
	jmp	.L129	#
.L131:
	.loc 1 811 0
	movq	-8(%rbp), %rdx	# p, tmp65
	leaq	3(%rdx), %rcx	#, D.6714
	movq	-16(%rbp), %rdx	# val, tmp66
	movq	%rcx, %rsi	# D.6714,
	movq	%rax, %rdi	# cp,
	call	regtail	#
.L129:
	.loc 1 812 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	regoptail, .-regoptail
	.section	.rodata
.LC19:
	.string	"NULL argument to sqd_regexec"
.LC20:
	.string	"corrupted regexp"
	.text
	.globl	sqd_regexec
	.type	sqd_regexec, @function
sqd_regexec:
.LFB14:
	.loc 1 848 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# prog, prog
	movq	%rsi, -56(%rbp)	# str, str
	.loc 1 849 0
	movq	-56(%rbp), %r12	# str, string
	.loc 1 854 0
	testq	%rbx, %rbx	# prog
	je	.L134	#,
	.loc 1 854 0 is_stmt 0 discriminator 1
	testq	%r12, %r12	# string
	jne	.L135	#,
.L134:
	.loc 1 855 0 is_stmt 1
	movl	$.LC19, %edi	#,
	call	sqd_regerror	#
	.loc 1 856 0
	movl	$0, %eax	#, D.6717
	jmp	.L147	#
.L135:
	.loc 1 860 0
	movzbl	180(%rbx), %eax	# prog_6(D)->program, D.6718
	cmpb	$-100, %al	#, D.6718
	je	.L137	#,
	.loc 1 861 0
	movl	$.LC20, %edi	#,
	call	sqd_regerror	#
	.loc 1 862 0
	movl	$0, %eax	#, D.6717
	jmp	.L147	#
.L137:
	.loc 1 866 0
	movq	168(%rbx), %rax	# prog_6(D)->regmust, D.6719
	testq	%rax, %rax	# D.6719
	je	.L138	#,
	.loc 1 866 0 is_stmt 0 discriminator 1
	movq	168(%rbx), %rax	# prog_6(D)->regmust, D.6719
	movq	%rax, %rsi	# D.6719,
	movq	%r12, %rdi	# string,
	call	strstr	#
	testq	%rax, %rax	# D.6719
	jne	.L138	#,
	.loc 1 867 0 is_stmt 1
	movl	$0, %eax	#, D.6717
	jmp	.L147	#
.L138:
	.loc 1 870 0
	movq	%r12, -40(%rbp)	# string, ex.regbol
	.loc 1 871 0
	movq	%rbx, %rax	# prog, D.6720
	movq	%rax, -32(%rbp)	# D.6720, ex.regstartp
	.loc 1 872 0
	leaq	80(%rbx), %rax	#, D.6720
	movq	%rax, -24(%rbp)	# D.6720, ex.regendp
	.loc 1 875 0
	movzbl	161(%rbx), %eax	# prog_6(D)->reganch, D.6718
	testb	%al, %al	# D.6718
	je	.L139	#,
	.loc 1 876 0
	leaq	-48(%rbp), %rax	#, tmp78
	movq	%r12, %rdx	# string,
	movq	%rbx, %rsi	# prog,
	movq	%rax, %rdi	# tmp78,
	call	regtry	#
	jmp	.L147	#
.L139:
	.loc 1 879 0
	movzbl	160(%rbx), %eax	# prog_6(D)->regstart, D.6718
	testb	%al, %al	# D.6718
	je	.L140	#,
	.loc 1 881 0
	jmp	.L141	#
.L143:
	.loc 1 882 0
	leaq	-48(%rbp), %rax	#, tmp79
	movq	%r12, %rdx	# s,
	movq	%rbx, %rsi	# prog,
	movq	%rax, %rdi	# tmp79,
	call	regtry	#
	testl	%eax, %eax	# D.6717
	je	.L142	#,
	.loc 1 883 0
	movl	$1, %eax	#, D.6717
	jmp	.L147	#
.L142:
	.loc 1 881 0
	movzbl	160(%rbx), %eax	# prog_6(D)->regstart, D.6718
	movsbl	%al, %eax	# D.6718, D.6717
	leaq	1(%r12), %rdx	#, D.6721
	movl	%eax, %esi	# D.6717,
	movq	%rdx, %rdi	# D.6721,
	call	strchr	#
	movq	%rax, %r12	#, s
.L141:
	.loc 1 881 0 is_stmt 0 discriminator 1
	testq	%r12, %r12	# s
	jne	.L143	#,
	.loc 1 884 0 is_stmt 1
	movl	$0, %eax	#, D.6717
	jmp	.L147	#
.L140:
	.loc 1 887 0
	jmp	.L144	#
.L146:
	.loc 1 888 0
	movzbl	(%r12), %eax	# *s_2, D.6718
	testb	%al, %al	# D.6718
	jne	.L145	#,
	.loc 1 889 0
	movl	$0, %eax	#, D.6717
	jmp	.L147	#
.L145:
	.loc 1 887 0
	addq	$1, %r12	#, s
.L144:
	.loc 1 887 0 is_stmt 0 discriminator 1
	leaq	-48(%rbp), %rax	#, tmp80
	movq	%r12, %rdx	# s,
	movq	%rbx, %rsi	# prog,
	movq	%rax, %rdi	# tmp80,
	call	regtry	#
	testl	%eax, %eax	# D.6717
	je	.L146	#,
	.loc 1 890 0 is_stmt 1
	movl	$1, %eax	#, D.6717
.L147:
	.loc 1 893 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	sqd_regexec, .-sqd_regexec
	.type	regtry, @function
regtry:
.LFB15:
	.loc 1 903 0
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
	subq	$16, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, %rbx	# ep, ep
	movq	%rsi, -40(%rbp)	# prog, prog
	movq	%rdx, -48(%rbp)	# string, string
	.loc 1 908 0
	movq	-48(%rbp), %rax	# string, tmp70
	movq	%rax, (%rbx)	# tmp70, ep_5(D)->reginput
	.loc 1 910 0
	movq	-40(%rbp), %r13	# prog, stp
	.loc 1 911 0
	movq	-40(%rbp), %rax	# prog, tmp71
	leaq	80(%rax), %r14	#, enp
	.loc 1 912 0
	movl	$10, %r12d	#, i
	jmp	.L149	#
.L150:
	.loc 1 913 0 discriminator 2
	movq	%r13, %rax	# stp, stp.25
	leaq	8(%rax), %r13	#, stp
	movq	$0, (%rax)	#, *stp.25_11
	.loc 1 914 0 discriminator 2
	movq	%r14, %rax	# enp, enp.26
	leaq	8(%rax), %r14	#, enp
	movq	$0, (%rax)	#, *enp.26_13
	.loc 1 912 0 discriminator 2
	subl	$1, %r12d	#, i
.L149:
	.loc 1 912 0 is_stmt 0 discriminator 1
	testl	%r12d, %r12d	# i
	jg	.L150	#,
	.loc 1 916 0 is_stmt 1
	movq	-40(%rbp), %rax	# prog, tmp72
	addq	$181, %rax	#, D.6725
	movq	%rax, %rsi	# D.6725,
	movq	%rbx, %rdi	# ep,
	call	regmatch	#
	testl	%eax, %eax	# D.6724
	je	.L151	#,
	.loc 1 917 0
	movq	-40(%rbp), %rax	# prog, tmp73
	movq	-48(%rbp), %rdx	# string, tmp74
	movq	%rdx, (%rax)	# tmp74, prog_7(D)->startp
	.loc 1 918 0
	movq	(%rbx), %rdx	# ep_5(D)->reginput, D.6725
	movq	-40(%rbp), %rax	# prog, tmp75
	movq	%rdx, 80(%rax)	# D.6725, prog_7(D)->endp
	.loc 1 919 0
	movl	$1, %eax	#, D.6724
	jmp	.L152	#
.L151:
	.loc 1 921 0
	movl	$0, %eax	#, D.6724
.L152:
	.loc 1 922 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	regtry, .-regtry
	.section	.rodata
.LC21:
	.string	"regexp corruption"
.LC22:
	.string	"corrupted pointers"
	.text
	.type	regmatch, @function
regmatch:
.LFB16:
	.loc 1 938 0
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
	movq	%rdi, %rbx	# ep, ep
	movq	%rsi, -72(%rbp)	# prog, prog
	.loc 1 946 0
	movq	-72(%rbp), %r12	# prog, scan
	jmp	.L154	#
.L196:
	.loc 1 951 0
	movq	%r12, %rdi	# scan,
	call	regnext	#
	movq	%rax, -56(%rbp)	# tmp149, next
	.loc 1 953 0
	movzbl	(%r12), %eax	# *scan_2, D.6727
	movsbl	%al, %eax	# D.6727, D.6726
	cmpl	$39, %eax	#, D.6726
	ja	.L155	#,
	movl	%eax, %eax	# D.6726, tmp150
	movq	.L157(,%rax,8), %rax	#, tmp151
	jmp	*%rax	# tmp151
	.section	.rodata
	.align 8
	.align 4
.L157:
	.quad	.L156
	.quad	.L158
	.quad	.L159
	.quad	.L160
	.quad	.L161
	.quad	.L162
	.quad	.L163
	.quad	.L197
	.quad	.L165
	.quad	.L197
	.quad	.L167
	.quad	.L167
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L155
	.quad	.L169
	.quad	.L169
	.quad	.L169
	.quad	.L169
	.quad	.L169
	.quad	.L169
	.quad	.L169
	.quad	.L169
	.quad	.L169
	.text
.L158:
	.loc 1 955 0
	movq	(%rbx), %rdx	# ep_12(D)->reginput, D.6728
	movq	8(%rbx), %rax	# ep_12(D)->regbol, D.6728
	cmpq	%rax, %rdx	# D.6728, D.6728
	je	.L170	#,
	.loc 1 956 0
	movl	$0, %eax	#, D.6726
	jmp	.L171	#
.L170:
	.loc 1 957 0
	jmp	.L172	#
.L159:
	.loc 1 959 0
	movq	(%rbx), %rax	# ep_12(D)->reginput, D.6728
	movzbl	(%rax), %eax	# *_16, D.6727
	testb	%al, %al	# D.6727
	je	.L173	#,
	.loc 1 960 0
	movl	$0, %eax	#, D.6726
	jmp	.L171	#
.L173:
	.loc 1 961 0
	jmp	.L172	#
.L160:
	.loc 1 963 0
	movq	(%rbx), %rax	# ep_12(D)->reginput, D.6728
	movzbl	(%rax), %eax	# *_19, D.6727
	testb	%al, %al	# D.6727
	jne	.L174	#,
	.loc 1 964 0
	movl	$0, %eax	#, D.6726
	jmp	.L171	#
.L174:
	.loc 1 965 0
	movq	(%rbx), %rax	# ep_12(D)->reginput, D.6728
	addq	$1, %rax	#, D.6728
	movq	%rax, (%rbx)	# D.6728, ep_12(D)->reginput
	.loc 1 966 0
	jmp	.L172	#
.L165:
.LBB5:
	.loc 1 969 0
	leaq	3(%r12), %r13	#, opnd
	.loc 1 972 0
	movzbl	0(%r13), %edx	# *opnd_24, D.6727
	movq	(%rbx), %rax	# ep_12(D)->reginput, D.6728
	movzbl	(%rax), %eax	# *_26, D.6727
	cmpb	%al, %dl	# D.6727, D.6727
	je	.L175	#,
	.loc 1 973 0
	movl	$0, %eax	#, D.6726
	jmp	.L171	#
.L175:
	.loc 1 974 0
	movq	%r13, %rdi	# opnd,
	call	strlen	#
	movq	%rax, %r12	#, len
	.loc 1 975 0
	cmpq	$1, %r12	#, len
	jbe	.L176	#,
	.loc 1 975 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# ep_12(D)->reginput, D.6728
	movq	%r12, %rdx	# len,
	movq	%rax, %rsi	# D.6728,
	movq	%r13, %rdi	# opnd,
	call	strncmp	#
	testl	%eax, %eax	# D.6726
	je	.L176	#,
	.loc 1 976 0 is_stmt 1
	movl	$0, %eax	#, D.6726
	jmp	.L171	#
.L176:
	.loc 1 977 0
	movq	(%rbx), %rax	# ep_12(D)->reginput, D.6728
	addq	%r12, %rax	# len, D.6728
	movq	%rax, (%rbx)	# D.6728, ep_12(D)->reginput
	.loc 1 978 0
	jmp	.L172	#
.L161:
.LBE5:
	.loc 1 981 0
	movq	(%rbx), %rax	# ep_12(D)->reginput, D.6728
	movzbl	(%rax), %eax	# *_35, D.6727
	testb	%al, %al	# D.6727
	je	.L177	#,
	.loc 1 982 0 discriminator 1
	movq	(%rbx), %rax	# ep_12(D)->reginput, D.6728
	movzbl	(%rax), %eax	# *_37, D.6727
	movsbl	%al, %eax	# D.6727, D.6726
	leaq	3(%r12), %rdx	#, D.6729
	movl	%eax, %esi	# D.6726,
	movq	%rdx, %rdi	# D.6729,
	call	strchr	#
	.loc 1 981 0 discriminator 1
	testq	%rax, %rax	# D.6728
	jne	.L178	#,
.L177:
	.loc 1 983 0
	movl	$0, %eax	#, D.6726
	jmp	.L171	#
.L178:
	.loc 1 984 0
	movq	(%rbx), %rax	# ep_12(D)->reginput, D.6728
	addq	$1, %rax	#, D.6728
	movq	%rax, (%rbx)	# D.6728, ep_12(D)->reginput
	.loc 1 985 0
	jmp	.L172	#
.L162:
	.loc 1 987 0
	movq	(%rbx), %rax	# ep_12(D)->reginput, D.6728
	movzbl	(%rax), %eax	# *_45, D.6727
	testb	%al, %al	# D.6727
	je	.L179	#,
	.loc 1 988 0 discriminator 1
	movq	(%rbx), %rax	# ep_12(D)->reginput, D.6728
	movzbl	(%rax), %eax	# *_47, D.6727
	movsbl	%al, %eax	# D.6727, D.6726
	leaq	3(%r12), %rdx	#, D.6729
	movl	%eax, %esi	# D.6726,
	movq	%rdx, %rdi	# D.6729,
	call	strchr	#
	.loc 1 987 0 discriminator 1
	testq	%rax, %rax	# D.6728
	je	.L180	#,
.L179:
	.loc 1 989 0
	movl	$0, %eax	#, D.6726
	jmp	.L171	#
.L180:
	.loc 1 990 0
	movq	(%rbx), %rax	# ep_12(D)->reginput, D.6728
	addq	$1, %rax	#, D.6728
	movq	%rax, (%rbx)	# D.6728, ep_12(D)->reginput
	.loc 1 991 0
	jmp	.L172	#
.L168:
.LBB6:
	.loc 1 999 0
	movzbl	(%r12), %eax	# *scan_2, D.6727
	movsbl	%al, %eax	# D.6727, D.6726
	leal	-20(%rax), %r12d	#, no
	.loc 1 1000 0
	movq	(%rbx), %r13	# ep_12(D)->reginput, input
	.loc 1 1002 0
	movq	-56(%rbp), %rax	# next, tmp152
	movq	%rax, %rsi	# tmp152,
	movq	%rbx, %rdi	# ep,
	call	regmatch	#
	testl	%eax, %eax	# D.6726
	je	.L181	#,
	.loc 1 1008 0
	movq	16(%rbx), %rax	# ep_12(D)->regstartp, D.6730
	movslq	%r12d, %rdx	# no, D.6731
	salq	$3, %rdx	#, D.6731
	addq	%rdx, %rax	# D.6731, D.6730
	movq	(%rax), %rax	# *_63, D.6728
	testq	%rax, %rax	# D.6728
	jne	.L182	#,
	.loc 1 1009 0
	movq	16(%rbx), %rax	# ep_12(D)->regstartp, D.6730
	movslq	%r12d, %rdx	# no, D.6731
	salq	$3, %rdx	#, D.6731
	addq	%rdx, %rax	# D.6731, D.6730
	movq	%r13, (%rax)	# input, *_68
.L182:
	.loc 1 1010 0
	movl	$1, %eax	#, D.6726
	jmp	.L171	#
.L181:
	.loc 1 1012 0
	movl	$0, %eax	#, D.6726
	jmp	.L171	#
.L169:
.LBE6:
.LBB7:
	.loc 1 1018 0
	movzbl	(%r12), %eax	# *scan_2, D.6727
	movsbl	%al, %eax	# D.6727, D.6726
	leal	-30(%rax), %r12d	#, no
	.loc 1 1019 0
	movq	(%rbx), %r13	# ep_12(D)->reginput, input
	.loc 1 1021 0
	movq	-56(%rbp), %rax	# next, tmp153
	movq	%rax, %rsi	# tmp153,
	movq	%rbx, %rdi	# ep,
	call	regmatch	#
	testl	%eax, %eax	# D.6726
	je	.L183	#,
	.loc 1 1027 0
	movq	24(%rbx), %rax	# ep_12(D)->regendp, D.6730
	movslq	%r12d, %rdx	# no, D.6731
	salq	$3, %rdx	#, D.6731
	addq	%rdx, %rax	# D.6731, D.6730
	movq	(%rax), %rax	# *_79, D.6728
	testq	%rax, %rax	# D.6728
	jne	.L184	#,
	.loc 1 1028 0
	movq	24(%rbx), %rax	# ep_12(D)->regendp, D.6730
	movslq	%r12d, %rdx	# no, D.6731
	salq	$3, %rdx	#, D.6731
	addq	%rdx, %rax	# D.6731, D.6730
	movq	%r13, (%rax)	# input, *_84
.L184:
	.loc 1 1029 0
	movl	$1, %eax	#, D.6726
	jmp	.L171	#
.L183:
	.loc 1 1031 0
	movl	$0, %eax	#, D.6726
	jmp	.L171	#
.L163:
.LBE7:
.LBB8:
	.loc 1 1035 0
	movq	(%rbx), %r13	# ep_12(D)->reginput, save
	.loc 1 1037 0
	movq	-56(%rbp), %rax	# next, tmp154
	movzbl	(%rax), %eax	# *next_9, D.6727
	cmpb	$6, %al	#, D.6727
	je	.L185	#,
	.loc 1 1038 0
	leaq	3(%r12), %rax	#, tmp155
	movq	%rax, -56(%rbp)	# tmp155, next
	.loc 1 1049 0
	jmp	.L172	#
.L185:
	.loc 1 1040 0
	jmp	.L187	#
.L189:
	.loc 1 1041 0
	leaq	3(%r12), %rax	#, D.6728
	movq	%rax, %rsi	# D.6728,
	movq	%rbx, %rdi	# ep,
	call	regmatch	#
	testl	%eax, %eax	# D.6726
	je	.L188	#,
	.loc 1 1042 0
	movl	$1, %eax	#, D.6726
	jmp	.L171	#
.L188:
	.loc 1 1043 0
	movq	%r13, (%rbx)	# save, ep_12(D)->reginput
	.loc 1 1044 0
	movq	%r12, %rdi	# scan,
	call	regnext	#
	movq	%rax, %r12	#, scan
.L187:
	.loc 1 1040 0 discriminator 1
	movzbl	(%r12), %eax	# *scan_1, D.6727
	cmpb	$6, %al	#, D.6727
	je	.L189	#,
	.loc 1 1046 0
	movl	$0, %eax	#, D.6726
	jmp	.L171	#
.L167:
.LBE8:
.LBB9:
	.loc 1 1053 0
	movq	-56(%rbp), %rax	# next, tmp156
	movzbl	(%rax), %eax	# *next_9, D.6727
	.loc 1 1052 0
	cmpb	$8, %al	#, D.6727
	jne	.L190	#,
	.loc 1 1053 0
	movq	-56(%rbp), %rax	# next, tmp157
	addq	$3, %rax	#, D.6728
	.loc 1 1052 0
	movzbl	(%rax), %eax	# *_97, iftmp.27
	jmp	.L191	#
.L190:
	.loc 1 1052 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.27
.L191:
	.loc 1 1052 0 discriminator 2
	movl	%eax, %r13d	# iftmp.27, nextch
	.loc 1 1055 0 is_stmt 1 discriminator 2
	movq	(%rbx), %r15	# ep_12(D)->reginput, save
	.loc 1 1056 0 discriminator 2
	movzbl	(%r12), %eax	# *scan_2, D.6727
	cmpb	$10, %al	#, D.6727
	setne	%al	#, D.6732
	movzbl	%al, %r14d	# D.6732, min
	.loc 1 1058 0 discriminator 2
	leaq	3(%r12), %rax	#, D.6728
	movq	%rax, %rsi	# D.6728,
	movq	%rbx, %rdi	# ep,
	call	regrepeat	#
	leaq	1(%rax), %r12	#, no
	jmp	.L192	#
.L195:
	.loc 1 1059 0
	leaq	-1(%r12), %rax	#, D.6733
	addq	%r15, %rax	# save, D.6728
	movq	%rax, (%rbx)	# D.6728, ep_12(D)->reginput
	.loc 1 1061 0
	testb	%r13b, %r13b	# nextch
	je	.L193	#,
	.loc 1 1061 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# ep_12(D)->reginput, D.6728
	movzbl	(%rax), %eax	# *_110, D.6727
	cmpb	%r13b, %al	# nextch, D.6727
	jne	.L194	#,
.L193:
	.loc 1 1062 0 is_stmt 1
	movq	-56(%rbp), %rax	# next, tmp158
	movq	%rax, %rsi	# tmp158,
	movq	%rbx, %rdi	# ep,
	call	regmatch	#
	testl	%eax, %eax	# D.6726
	je	.L194	#,
	.loc 1 1063 0
	movl	$1, %eax	#, D.6726
	jmp	.L171	#
.L194:
	.loc 1 1058 0
	subq	$1, %r12	#, no
.L192:
	.loc 1 1058 0 is_stmt 0 discriminator 1
	cmpq	%r14, %r12	# min, no
	ja	.L195	#,
	.loc 1 1065 0 is_stmt 1
	movl	$0, %eax	#, D.6726
	jmp	.L171	#
.L156:
.LBE9:
	.loc 1 1069 0
	movl	$1, %eax	#, D.6726
	jmp	.L171	#
.L155:
	.loc 1 1072 0
	movl	$.LC21, %edi	#,
	call	sqd_regerror	#
	.loc 1 1073 0
	movl	$0, %eax	#, D.6726
	jmp	.L171	#
.L197:
	.loc 1 995 0
	nop
.L172:
	.loc 1 946 0
	movq	-56(%rbp), %r12	# next, scan
.L154:
	.loc 1 946 0 is_stmt 0 discriminator 1
	testq	%r12, %r12	# scan
	jne	.L196	#,
	.loc 1 1082 0 is_stmt 1
	movl	$.LC22, %edi	#,
	call	sqd_regerror	#
	.loc 1 1083 0
	movl	$0, %eax	#, D.6726
.L171:
	.loc 1 1084 0
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
.LFE16:
	.size	regmatch, .-regmatch
	.section	.rodata
	.align 8
.LC23:
	.string	"internal error: bad call of regrepeat"
	.text
	.type	regrepeat, @function
regrepeat:
.LFB17:
	.loc 1 1093 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, %rax	# ep, ep
	movq	%rsi, -40(%rbp)	# node, node
	.loc 1 1098 0
	movq	-40(%rbp), %rdx	# node, tmp73
	movzbl	(%rdx), %edx	# *node_4(D), D.6737
	movsbl	%dl, %edx	# D.6737, D.6738
	cmpl	$4, %edx	#, D.6738
	je	.L200	#,
	cmpl	$4, %edx	#, D.6738
	jg	.L201	#,
	cmpl	$3, %edx	#, D.6738
	je	.L202	#,
	jmp	.L199	#
.L201:
	cmpl	$5, %edx	#, D.6738
	je	.L203	#,
	cmpl	$8, %edx	#, D.6738
	je	.L204	#,
	jmp	.L199	#
.L202:
	.loc 1 1100 0
	movq	(%rax), %rax	# ep_7(D)->reginput, D.6739
	movq	%rax, %rdi	# D.6739,
	call	strlen	#
	jmp	.L205	#
.L204:
	.loc 1 1103 0
	movq	-40(%rbp), %rdx	# node, tmp74
	movzbl	3(%rdx), %r13d	# MEM[(char *)node_4(D) + 3B], ch
	.loc 1 1104 0
	movl	$0, %r12d	#, count
	.loc 1 1105 0
	movq	(%rax), %rbx	# ep_7(D)->reginput, scan
	jmp	.L206	#
.L207:
	.loc 1 1106 0 discriminator 2
	addq	$1, %r12	#, count
	.loc 1 1105 0 discriminator 2
	addq	$1, %rbx	#, scan
.L206:
	.loc 1 1105 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# *scan_2, D.6737
	cmpb	%r13b, %al	# ch, D.6737
	je	.L207	#,
	.loc 1 1107 0 is_stmt 1
	movq	%r12, %rax	# count, D.6736
	jmp	.L205	#
.L200:
	.loc 1 1110 0
	movq	-40(%rbp), %rdx	# node, tmp75
	addq	$3, %rdx	#, D.6740
	movq	(%rax), %rax	# ep_7(D)->reginput, D.6739
	movq	%rdx, %rsi	# D.6740,
	movq	%rax, %rdi	# D.6739,
	call	strspn	#
	jmp	.L205	#
.L203:
	.loc 1 1113 0
	movq	-40(%rbp), %rdx	# node, tmp76
	addq	$3, %rdx	#, D.6740
	movq	(%rax), %rax	# ep_7(D)->reginput, D.6739
	movq	%rdx, %rsi	# D.6740,
	movq	%rax, %rdi	# D.6739,
	call	strcspn	#
	jmp	.L205	#
.L199:
	.loc 1 1116 0
	movl	$.LC23, %edi	#,
	call	sqd_regerror	#
	.loc 1 1117 0
	movl	$0, %eax	#, D.6736
.L205:
	.loc 1 1121 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	regrepeat, .-regrepeat
	.type	regnext, @function
regnext:
.LFB18:
	.loc 1 1129 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movq	%rdi, %rax	# p, p
	.loc 1 1130 0
	leaq	1(%rax), %rdx	#, D.6743
	movzbl	(%rdx), %edx	# *_4, D.6744
	movsbl	%dl, %edx	# D.6744, D.6745
	andl	$127, %edx	#, D.6745
	movl	%edx, %ecx	# D.6745, D.6745
	sall	$8, %ecx	#, D.6745
	leaq	2(%rax), %rdx	#, D.6743
	movzbl	(%rdx), %edx	# *_9, D.6744
	movsbl	%dl, %edx	# D.6744, D.6745
	movzbl	%dl, %edx	# D.6745, D.6745
	leal	(%rcx,%rdx), %ebx	#, offset
	.loc 1 1132 0
	testl	%ebx, %ebx	# offset
	jne	.L209	#,
	.loc 1 1133 0
	movl	$0, %eax	#, D.6743
	jmp	.L210	#
.L209:
	.loc 1 1135 0
	movzbl	(%rax), %edx	# *p_3(D), D.6744
	cmpb	$7, %dl	#, D.6744
	jne	.L211	#,
	.loc 1 1135 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rdx	# offset, D.6746
	negq	%rdx	# D.6746
	addq	%rdx, %rax	# D.6746, iftmp.28
	jmp	.L212	#
.L211:
	.loc 1 1135 0 discriminator 2
	movslq	%ebx, %rdx	# offset, D.6746
	addq	%rdx, %rax	# D.6746, iftmp.28
.L212:
.L210:
	.loc 1 1136 0 is_stmt 1
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	regnext, .-regnext
	.section	.rodata
.LC24:
	.string	"NULL parameter to sqd_regsub"
.LC25:
	.string	"damaged regexp"
.LC26:
	.string	"damaged match string"
	.text
	.globl	sqd_regsub
	.type	sqd_regsub, @function
sqd_regsub:
.LFB19:
	.loc 1 1277 0
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
	movq	%rdi, -56(%rbp)	# rp, rp
	movq	%rsi, -64(%rbp)	# source, source
	movq	%rdx, -72(%rbp)	# dest, dest
	.loc 1 1278 0
	movq	-56(%rbp), %rbx	# rp, prog
	.loc 1 1279 0
	movq	-64(%rbp), %r12	# source, src
	.loc 1 1280 0
	movq	-72(%rbp), %r14	# dest, dst
	.loc 1 1285 0
	testq	%rbx, %rbx	# prog
	je	.L214	#,
	.loc 1 1285 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, source
	je	.L214	#,
	cmpq	$0, -72(%rbp)	#, dest
	jne	.L215	#,
.L214:
	.loc 1 1286 0 is_stmt 1
	movl	$.LC24, %edi	#,
	call	sqd_regerror	#
	.loc 1 1287 0
	jmp	.L213	#
.L215:
	.loc 1 1289 0
	movzbl	180(%rbx), %eax	# prog_8->program, D.6747
	cmpb	$-100, %al	#, D.6747
	je	.L217	#,
	.loc 1 1290 0
	movl	$.LC25, %edi	#,
	call	sqd_regerror	#
	.loc 1 1291 0
	jmp	.L213	#
.L217:
	.loc 1 1294 0
	jmp	.L218	#
.L225:
	.loc 1 1295 0
	cmpb	$38, %r15b	#, c
	jne	.L219	#,
	.loc 1 1296 0
	movl	$0, %r13d	#, no
	jmp	.L220	#
.L219:
	.loc 1 1297 0
	cmpb	$92, %r15b	#, c
	jne	.L221	#,
	.loc 1 1297 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_18, D.6749
	movzbl	(%r12), %edx	# *src_15, D.6747
	movsbq	%dl, %rdx	# D.6747, D.6750
	addq	%rdx, %rdx	# D.6750
	addq	%rdx, %rax	# D.6750, D.6749
	movzwl	(%rax), %eax	# *_23, D.6751
	movzwl	%ax, %eax	# D.6751, D.6752
	andl	$2048, %eax	#, D.6752
	testl	%eax, %eax	# D.6752
	je	.L221	#,
	.loc 1 1298 0 is_stmt 1
	movq	%r12, %rax	# src, src.29
	leaq	1(%rax), %r12	#, src
	movzbl	(%rax), %eax	# *src.29_27, D.6747
	movsbl	%al, %eax	# D.6747, D.6752
	leal	-48(%rax), %r13d	#, no
	jmp	.L220	#
.L221:
	.loc 1 1300 0
	movl	$-1, %r13d	#, no
.L220:
	.loc 1 1302 0
	testl	%r13d, %r13d	# no
	jns	.L222	#,
	.loc 1 1303 0
	cmpb	$92, %r15b	#, c
	jne	.L223	#,
	.loc 1 1303 0 is_stmt 0 discriminator 1
	movzbl	(%r12), %eax	# *src_1, D.6747
	cmpb	$92, %al	#, D.6747
	je	.L224	#,
	movzbl	(%r12), %eax	# *src_1, D.6747
	cmpb	$38, %al	#, D.6747
	jne	.L223	#,
.L224:
	.loc 1 1304 0 is_stmt 1
	movq	%r12, %rax	# src, src.30
	leaq	1(%rax), %r12	#, src
	movzbl	(%rax), %r15d	# *src.30_35, c
.L223:
	.loc 1 1305 0
	movq	%r14, %rax	# dst, dst.31
	leaq	1(%rax), %r14	#, dst
	movb	%r15b, (%rax)	# c, *dst.31_38
	jmp	.L218	#
.L222:
	.loc 1 1306 0
	movslq	%r13d, %rax	# no, tmp96
	movq	(%rbx,%rax,8), %rax	# prog_8->startp, D.6753
	testq	%rax, %rax	# D.6753
	je	.L218	#,
	.loc 1 1306 0 is_stmt 0 discriminator 1
	movslq	%r13d, %rax	# no, tmp97
	addq	$10, %rax	#, tmp98
	movq	(%rbx,%rax,8), %rax	# prog_8->endp, D.6753
	testq	%rax, %rax	# D.6753
	je	.L218	#,
	.loc 1 1307 0 is_stmt 1 discriminator 1
	movslq	%r13d, %rax	# no, tmp99
	addq	$10, %rax	#, tmp100
	movq	(%rbx,%rax,8), %rdx	# prog_8->endp, D.6753
	movslq	%r13d, %rax	# no, tmp101
	movq	(%rbx,%rax,8), %rax	# prog_8->startp, D.6753
	.loc 1 1306 0 discriminator 1
	cmpq	%rax, %rdx	# D.6753, D.6753
	jbe	.L218	#,
	.loc 1 1308 0
	movslq	%r13d, %rax	# no, tmp102
	addq	$10, %rax	#, tmp103
	movq	(%rbx,%rax,8), %rax	# prog_8->endp, D.6753
	movq	%rax, %rdx	# D.6753, D.6754
	movslq	%r13d, %rax	# no, tmp104
	movq	(%rbx,%rax,8), %rax	# prog_8->startp, D.6753
	subq	%rax, %rdx	# D.6754, D.6754
	movq	%rdx, %rax	# D.6754, D.6754
	movq	%rax, %r15	# D.6754, len
	.loc 1 1309 0
	movslq	%r13d, %rax	# no, tmp105
	movq	(%rbx,%rax,8), %rax	# prog_8->startp, D.6753
	movq	%r15, %rdx	# len,
	movq	%rax, %rsi	# D.6753,
	movq	%r14, %rdi	# dst,
	call	strncpy	#
	.loc 1 1310 0
	addq	%r15, %r14	# len, dst
	.loc 1 1311 0
	leaq	-1(%r14), %rax	#, D.6753
	movzbl	(%rax), %eax	# *_52, D.6747
	testb	%al, %al	# D.6747
	jne	.L218	#,
	.loc 1 1312 0
	movl	$.LC26, %edi	#,
	call	sqd_regerror	#
	.loc 1 1313 0
	jmp	.L213	#
.L218:
	.loc 1 1294 0 discriminator 1
	movq	%r12, %rax	# src, src.32
	leaq	1(%rax), %r12	#, src
	movzbl	(%rax), %r15d	# *src.32_14, c
	testb	%r15b, %r15b	# c
	jne	.L225	#,
	.loc 1 1317 0
	movq	%r14, %rax	# dst, dst.33
	leaq	1(%rax), %r14	#, dst
	movb	$0, (%rax)	#, *dst.33_54
.L213:
	.loc 1 1318 0
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
.LFE19:
	.size	sqd_regsub, .-sqd_regsub
	.section	.rodata
.LC27:
	.string	"regexp(3): %s\n"
	.text
	.globl	sqd_regerror
	.type	sqd_regerror, @function
sqd_regerror:
.LFB20:
	.loc 1 1324 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	.loc 1 1325 0
	movq	stderr(%rip), %rax	# stderr, stderr.34
	movq	-8(%rbp), %rdx	# s, tmp60
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# stderr.34,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1326 0
	movl	$1, %edi	#,
	call	exit	#
	.cfi_endproc
.LFE20:
	.size	sqd_regerror, .-sqd_regerror
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "squid.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xd7d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF129
	.byte	0x1
	.long	.LASF130
	.long	.LASF131
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
	.long	.LASF132
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
	.long	0x28d
	.uleb128 0xd
	.long	0x95
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
	.uleb128 0xd
	.long	0x62
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.byte	0x30
	.long	0x307
	.uleb128 0xf
	.long	.LASF48
	.sleb128 256
	.uleb128 0xf
	.long	.LASF49
	.sleb128 512
	.uleb128 0xf
	.long	.LASF50
	.sleb128 1024
	.uleb128 0xf
	.long	.LASF51
	.sleb128 2048
	.uleb128 0xf
	.long	.LASF52
	.sleb128 4096
	.uleb128 0xf
	.long	.LASF53
	.sleb128 8192
	.uleb128 0xf
	.long	.LASF54
	.sleb128 16384
	.uleb128 0xf
	.long	.LASF55
	.sleb128 32768
	.uleb128 0xf
	.long	.LASF56
	.sleb128 1
	.uleb128 0xf
	.long	.LASF57
	.sleb128 2
	.uleb128 0xf
	.long	.LASF58
	.sleb128 4
	.uleb128 0xf
	.long	.LASF59
	.sleb128 8
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF60
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF61
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x10
	.long	.LASF62
	.byte	0xb8
	.byte	0x5
	.value	0x15d
	.long	0x384
	.uleb128 0x9
	.long	.LASF63
	.byte	0x5
	.value	0x15e
	.long	0x384
	.byte	0
	.uleb128 0x9
	.long	.LASF64
	.byte	0x5
	.value	0x15f
	.long	0x384
	.byte	0x50
	.uleb128 0x9
	.long	.LASF65
	.byte	0x5
	.value	0x160
	.long	0x95
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF66
	.byte	0x5
	.value	0x161
	.long	0x95
	.byte	0xa1
	.uleb128 0x9
	.long	.LASF67
	.byte	0x5
	.value	0x162
	.long	0x8f
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF68
	.byte	0x5
	.value	0x163
	.long	0x62
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF69
	.byte	0x5
	.value	0x164
	.long	0x261
	.byte	0xb4
	.byte	0
	.uleb128 0xb
	.long	0x8f
	.long	0x394
	.uleb128 0xc
	.long	0x86
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.long	.LASF62
	.byte	0x5
	.value	0x165
	.long	0x31b
	.uleb128 0x10
	.long	.LASF70
	.byte	0x28
	.byte	0x1
	.value	0x127
	.long	0x3ef
	.uleb128 0x9
	.long	.LASF71
	.byte	0x1
	.value	0x128
	.long	0x8f
	.byte	0
	.uleb128 0x9
	.long	.LASF72
	.byte	0x1
	.value	0x129
	.long	0x62
	.byte	0x8
	.uleb128 0x9
	.long	.LASF73
	.byte	0x1
	.value	0x12a
	.long	0x8f
	.byte	0x10
	.uleb128 0x9
	.long	.LASF74
	.byte	0x1
	.value	0x12b
	.long	0x3ef
	.byte	0x18
	.uleb128 0x9
	.long	.LASF75
	.byte	0x1
	.value	0x12c
	.long	0x69
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x3ff
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	.LASF76
	.byte	0x20
	.byte	0x1
	.value	0x335
	.long	0x441
	.uleb128 0x9
	.long	.LASF77
	.byte	0x1
	.value	0x336
	.long	0x8f
	.byte	0
	.uleb128 0x9
	.long	.LASF78
	.byte	0x1
	.value	0x337
	.long	0x8f
	.byte	0x8
	.uleb128 0x9
	.long	.LASF79
	.byte	0x1
	.value	0x338
	.long	0x315
	.byte	0x10
	.uleb128 0x9
	.long	.LASF80
	.byte	0x1
	.value	0x339
	.long	0x315
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.long	.LASF84
	.byte	0x1
	.byte	0x5c
	.long	0x62
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c2
	.uleb128 0x13
	.long	.LASF81
	.byte	0x1
	.byte	0x5c
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0x5c
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.long	.LASF82
	.byte	0x1
	.byte	0x5c
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x15
	.string	"pat"
	.byte	0x1
	.byte	0x5e
	.long	0x4c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF83
	.byte	0x1
	.byte	0x5f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.byte	0x60
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x61
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x394
	.uleb128 0x17
	.long	.LASF122
	.byte	0x1
	.byte	0x8d
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f2
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x8f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.long	.LASF85
	.byte	0x1
	.value	0x14e
	.long	0x4c2
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x58c
	.uleb128 0x19
	.string	"exp"
	.byte	0x1
	.value	0x14f
	.long	0x287
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1a
	.string	"r"
	.byte	0x1
	.value	0x151
	.long	0x4c2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.long	.LASF86
	.byte	0x1
	.value	0x152
	.long	0x8f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.long	.LASF87
	.byte	0x1
	.value	0x153
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1a
	.string	"co"
	.byte	0x1
	.value	0x154
	.long	0x3a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1c
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1b
	.long	.LASF88
	.byte	0x1
	.value	0x18d
	.long	0x8f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.value	0x18e
	.long	0x2d
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.uleb128 0x1d
	.string	"reg"
	.byte	0x1
	.value	0x1a7
	.long	0x8f
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x622
	.uleb128 0x19
	.string	"cp"
	.byte	0x1
	.value	0x1a8
	.long	0x622
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.long	.LASF89
	.byte	0x1
	.value	0x1a9
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1e
	.long	.LASF90
	.byte	0x1
	.value	0x1aa
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.value	0x1ac
	.long	0x8f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1a
	.string	"br"
	.byte	0x1
	.value	0x1ad
	.long	0x8f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.long	.LASF91
	.byte	0x1
	.value	0x1ae
	.long	0x8f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1b
	.long	.LASF92
	.byte	0x1
	.value	0x1af
	.long	0x62
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1b
	.long	.LASF87
	.byte	0x1
	.value	0x1b0
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3a0
	.uleb128 0x1f
	.long	.LASF93
	.byte	0x1
	.value	0x1ed
	.long	0x8f
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ad
	.uleb128 0x19
	.string	"cp"
	.byte	0x1
	.value	0x1ee
	.long	0x622
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.long	.LASF90
	.byte	0x1
	.value	0x1ef
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.value	0x1f1
	.long	0x8f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1b
	.long	.LASF94
	.byte	0x1
	.value	0x1f2
	.long	0x8f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.long	.LASF95
	.byte	0x1
	.value	0x1f3
	.long	0x8f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1b
	.long	.LASF87
	.byte	0x1
	.value	0x1f4
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.value	0x1f5
	.long	0x62
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x1f
	.long	.LASF96
	.byte	0x1
	.value	0x216
	.long	0x8f
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x725
	.uleb128 0x19
	.string	"cp"
	.byte	0x1
	.value	0x217
	.long	0x622
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.long	.LASF90
	.byte	0x1
	.value	0x218
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.value	0x21a
	.long	0x8f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1a
	.string	"op"
	.byte	0x1
	.value	0x21b
	.long	0x95
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1b
	.long	.LASF97
	.byte	0x1
	.value	0x21c
	.long	0x8f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1b
	.long	.LASF87
	.byte	0x1
	.value	0x21d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x1f
	.long	.LASF98
	.byte	0x1
	.value	0x25b
	.long	0x8f
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ee
	.uleb128 0x19
	.string	"cp"
	.byte	0x1
	.value	0x25c
	.long	0x622
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.long	.LASF90
	.byte	0x1
	.value	0x25d
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.value	0x25f
	.long	0x8f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1b
	.long	.LASF87
	.byte	0x1
	.value	0x260
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x20
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x7bf
	.uleb128 0x1b
	.long	.LASF99
	.byte	0x1
	.value	0x270
	.long	0x62
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1b
	.long	.LASF100
	.byte	0x1
	.value	0x271
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.value	0x272
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x1c
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.value	0x2ac
	.long	0x2d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.long	.LASF91
	.byte	0x1
	.value	0x2ad
	.long	0x95
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF101
	.byte	0x1
	.value	0x2c8
	.long	0x8f
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x848
	.uleb128 0x19
	.string	"cp"
	.byte	0x1
	.value	0x2c9
	.long	0x622
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x19
	.string	"op"
	.byte	0x1
	.value	0x2ca
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.value	0x2cc
	.long	0x848
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1a
	.string	"ptr"
	.byte	0x1
	.value	0x2cd
	.long	0x8f
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0xd
	.long	0x8f
	.uleb128 0x22
	.long	.LASF102
	.byte	0x1
	.value	0x2e1
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x886
	.uleb128 0x19
	.string	"cp"
	.byte	0x1
	.value	0x2e2
	.long	0x622
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x19
	.string	"b"
	.byte	0x1
	.value	0x2e3
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.long	.LASF103
	.byte	0x1
	.value	0x2f1
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x8dd
	.uleb128 0x19
	.string	"cp"
	.byte	0x1
	.value	0x2f2
	.long	0x622
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.string	"op"
	.byte	0x1
	.value	0x2f3
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.long	.LASF104
	.byte	0x1
	.value	0x2f4
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	.LASF105
	.byte	0x1
	.value	0x2f6
	.long	0x8f
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x23
	.long	.LASF106
	.byte	0x1
	.value	0x30a
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x94f
	.uleb128 0x19
	.string	"cp"
	.byte	0x1
	.value	0x30b
	.long	0x622
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.value	0x30c
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.string	"val"
	.byte	0x1
	.value	0x30d
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	.LASF86
	.byte	0x1
	.value	0x30f
	.long	0x8f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.long	.LASF107
	.byte	0x1
	.value	0x310
	.long	0x8f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.long	.LASF108
	.byte	0x1
	.value	0x311
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x23
	.long	.LASF109
	.byte	0x1
	.value	0x323
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x997
	.uleb128 0x19
	.string	"cp"
	.byte	0x1
	.value	0x324
	.long	0x622
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.value	0x325
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.string	"val"
	.byte	0x1
	.value	0x326
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x18
	.long	.LASF110
	.byte	0x1
	.value	0x34d
	.long	0x62
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xa00
	.uleb128 0x1e
	.long	.LASF111
	.byte	0x1
	.value	0x34e
	.long	0x4c2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.string	"str"
	.byte	0x1
	.value	0x34f
	.long	0x287
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.long	.LASF112
	.byte	0x1
	.value	0x351
	.long	0x8f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.value	0x352
	.long	0x8f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1a
	.string	"ex"
	.byte	0x1
	.value	0x353
	.long	0x3ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1f
	.long	.LASF113
	.byte	0x1
	.value	0x383
	.long	0x62
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xa76
	.uleb128 0x19
	.string	"ep"
	.byte	0x1
	.value	0x384
	.long	0xa76
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.long	.LASF111
	.byte	0x1
	.value	0x385
	.long	0x4c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF112
	.byte	0x1
	.value	0x386
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.value	0x388
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1a
	.string	"stp"
	.byte	0x1
	.value	0x389
	.long	0x315
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1a
	.string	"enp"
	.byte	0x1
	.value	0x38a
	.long	0x315
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3ff
	.uleb128 0x1f
	.long	.LASF114
	.byte	0x1
	.value	0x3a7
	.long	0x62
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xbdb
	.uleb128 0x19
	.string	"ep"
	.byte	0x1
	.value	0x3a8
	.long	0xa76
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.long	.LASF111
	.byte	0x1
	.value	0x3a9
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1b
	.long	.LASF86
	.byte	0x1
	.value	0x3ab
	.long	0x8f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.long	.LASF97
	.byte	0x1
	.value	0x3ac
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0xb0b
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.value	0x3c8
	.long	0x2d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.long	.LASF104
	.byte	0x1
	.value	0x3c9
	.long	0x848
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x20
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0xb3c
	.uleb128 0x1a
	.string	"no"
	.byte	0x1
	.value	0x3e7
	.long	0x2a6
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.long	.LASF115
	.byte	0x1
	.value	0x3e8
	.long	0x848
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x20
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0xb6d
	.uleb128 0x1a
	.string	"no"
	.byte	0x1
	.value	0x3fa
	.long	0x2a6
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.long	.LASF115
	.byte	0x1
	.value	0x3fb
	.long	0x848
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x20
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0xb91
	.uleb128 0x1b
	.long	.LASF116
	.byte	0x1
	.value	0x40b
	.long	0x848
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x1c
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1b
	.long	.LASF117
	.byte	0x1
	.value	0x41c
	.long	0x28d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1a
	.string	"no"
	.byte	0x1
	.value	0x41e
	.long	0x2d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.long	.LASF116
	.byte	0x1
	.value	0x41f
	.long	0x848
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1a
	.string	"min"
	.byte	0x1
	.value	0x420
	.long	0xbdb
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x2d
	.uleb128 0x1f
	.long	.LASF118
	.byte	0x1
	.value	0x442
	.long	0x2d
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xc48
	.uleb128 0x19
	.string	"ep"
	.byte	0x1
	.value	0x443
	.long	0xa76
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1e
	.long	.LASF119
	.byte	0x1
	.value	0x444
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF120
	.byte	0x1
	.value	0x446
	.long	0x2d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.long	.LASF86
	.byte	0x1
	.value	0x447
	.long	0x8f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"ch"
	.byte	0x1
	.value	0x448
	.long	0x95
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.value	0x467
	.long	0x8f
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xc85
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.value	0x468
	.long	0x8f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1b
	.long	.LASF108
	.byte	0x1
	.value	0x46a
	.long	0x2a6
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x24
	.long	.LASF123
	.byte	0x1
	.value	0x4f9
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xd24
	.uleb128 0x19
	.string	"rp"
	.byte	0x1
	.value	0x4fa
	.long	0xd24
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.long	.LASF124
	.byte	0x1
	.value	0x4fb
	.long	0x287
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x1
	.value	0x4fc
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1b
	.long	.LASF111
	.byte	0x1
	.value	0x4fe
	.long	0xd2f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"src"
	.byte	0x1
	.value	0x4ff
	.long	0x8f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1a
	.string	"dst"
	.byte	0x1
	.value	0x500
	.long	0x8f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.value	0x501
	.long	0x95
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1a
	.string	"no"
	.byte	0x1
	.value	0x502
	.long	0x62
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.value	0x503
	.long	0x2d
	.uleb128 0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd2a
	.uleb128 0xd
	.long	0x394
	.uleb128 0xd
	.long	0x4c2
	.uleb128 0x24
	.long	.LASF126
	.byte	0x1
	.value	0x52a
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xd60
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.value	0x52b
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF127
	.byte	0x6
	.byte	0xaa
	.long	0x25b
	.uleb128 0x26
	.long	.LASF128
	.byte	0x1
	.byte	0x29
	.long	0x384
	.uleb128 0x9
	.byte	0x3
	.quad	sqd_parse
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x26
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
.LASF55:
	.string	"_ISgraph"
.LASF25:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF98:
	.string	"regatom"
.LASF31:
	.string	"_shortbuf"
.LASF65:
	.string	"regstart"
.LASF112:
	.string	"string"
.LASF106:
	.string	"regtail"
.LASF53:
	.string	"_ISspace"
.LASF89:
	.string	"paren"
.LASF70:
	.string	"comp"
.LASF19:
	.string	"_IO_buf_base"
.LASF47:
	.string	"long long unsigned int"
.LASF63:
	.string	"startp"
.LASF77:
	.string	"reginput"
.LASF50:
	.string	"_ISalpha"
.LASF97:
	.string	"next"
.LASF46:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF69:
	.string	"program"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF6:
	.string	"long int"
.LASF86:
	.string	"scan"
.LASF12:
	.string	"_flags"
.LASF82:
	.string	"ntok"
.LASF83:
	.string	"code"
.LASF59:
	.string	"_ISalnum"
.LASF29:
	.string	"_cur_column"
.LASF79:
	.string	"regstartp"
.LASF61:
	.string	"double"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF92:
	.string	"parno"
.LASF91:
	.string	"ender"
.LASF120:
	.string	"count"
.LASF56:
	.string	"_ISblank"
.LASF100:
	.string	"rangeend"
.LASF85:
	.string	"sqd_regcomp"
.LASF58:
	.string	"_ISpunct"
.LASF116:
	.string	"save"
.LASF107:
	.string	"temp"
.LASF68:
	.string	"regmlen"
.LASF62:
	.string	"sqd_regexp"
.LASF3:
	.string	"unsigned int"
.LASF111:
	.string	"prog"
.LASF103:
	.string	"reginsert"
.LASF109:
	.string	"regoptail"
.LASF17:
	.string	"_IO_write_ptr"
.LASF44:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF21:
	.string	"_IO_save_base"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF128:
	.string	"sqd_parse"
.LASF124:
	.string	"source"
.LASF10:
	.string	"sizetype"
.LASF101:
	.string	"regnode"
.LASF88:
	.string	"longest"
.LASF13:
	.string	"_IO_read_ptr"
.LASF105:
	.string	"place"
.LASF67:
	.string	"regmust"
.LASF132:
	.string	"_IO_lock_t"
.LASF41:
	.string	"_IO_FILE"
.LASF125:
	.string	"dest"
.LASF8:
	.string	"__off_t"
.LASF123:
	.string	"sqd_regsub"
.LASF99:
	.string	"range"
.LASF60:
	.string	"float"
.LASF42:
	.string	"_IO_marker"
.LASF45:
	.string	"_pos"
.LASF24:
	.string	"_markers"
.LASF117:
	.string	"nextch"
.LASF1:
	.string	"unsigned char"
.LASF96:
	.string	"regpiece"
.LASF119:
	.string	"node"
.LASF20:
	.string	"_IO_buf_end"
.LASF5:
	.string	"short int"
.LASF104:
	.string	"opnd"
.LASF94:
	.string	"chain"
.LASF74:
	.string	"regdummy"
.LASF30:
	.string	"_vtable_offset"
.LASF80:
	.string	"regendp"
.LASF115:
	.string	"input"
.LASF102:
	.string	"regc"
.LASF73:
	.string	"regcode"
.LASF84:
	.string	"Strparse"
.LASF76:
	.string	"exec"
.LASF0:
	.string	"long unsigned int"
.LASF93:
	.string	"regbranch"
.LASF11:
	.string	"char"
.LASF57:
	.string	"_IScntrl"
.LASF121:
	.string	"regnext"
.LASF52:
	.string	"_ISxdigit"
.LASF118:
	.string	"regrepeat"
.LASF49:
	.string	"_ISlower"
.LASF110:
	.string	"sqd_regexec"
.LASF64:
	.string	"endp"
.LASF43:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF108:
	.string	"offset"
.LASF130:
	.string	"hsregex.c"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF113:
	.string	"regtry"
.LASF51:
	.string	"_ISdigit"
.LASF95:
	.string	"latest"
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
.LASF18:
	.string	"_IO_write_end"
.LASF40:
	.string	"_unused2"
.LASF127:
	.string	"stderr"
.LASF78:
	.string	"regbol"
.LASF71:
	.string	"regparse"
.LASF48:
	.string	"_ISupper"
.LASF129:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF22:
	.string	"_IO_backup_base"
.LASF90:
	.string	"flagp"
.LASF87:
	.string	"flags"
.LASF122:
	.string	"SqdClean"
.LASF114:
	.string	"regmatch"
.LASF75:
	.string	"regsize"
.LASF131:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF72:
	.string	"regnpar"
.LASF16:
	.string	"_IO_write_base"
.LASF81:
	.string	"rexp"
.LASF54:
	.string	"_ISprint"
.LASF126:
	.string	"sqd_regerror"
.LASF66:
	.string	"reganch"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
