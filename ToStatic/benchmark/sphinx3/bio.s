	.file	"bio.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64 bio.c
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
	.string	"*end_comment*\n"
.LC1:
	.string	"FATAL_ERROR"
.LC2:
	.string	"bio.c"
.LC3:
	.string	"Missing %s marker\n"
	.text
	.type	bcomment_read, @function
bcomment_read:
.LFB2:
	.file 1 "bio.c"
	.loc 1 64 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16416, %rsp	#,
	movq	%rdi, -16408(%rbp)	# fp, fp
	.loc 1 64 0
	movq	%fs:40, %rax	#, tmp64
	movq	%rax, -8(%rbp)	# tmp64, D.5287
	xorl	%eax, %eax	# tmp64
	.loc 1 67 0
	jmp	.L2	#
.L4:
	.loc 1 68 0
	leaq	-16400(%rbp), %rax	#, tmp61
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	strcmp	#
	testl	%eax, %eax	# D.5286
	je	.L1	#,
.L2:
	.loc 1 67 0 discriminator 1
	movq	-16408(%rbp), %rdx	# fp, tmp62
	leaq	-16400(%rbp), %rax	#, tmp63
	movl	$16384, %esi	#,
	movq	%rax, %rdi	# tmp63,
	call	fgets	#
	testq	%rax, %rax	# D.5285
	jne	.L4	#,
	.loc 1 71 0
	movl	$.LC1, %edx	#,
	movl	$71, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	$.LC0, %esi	#,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L1:
	.loc 1 72 0
	movq	-8(%rbp), %rax	# D.5287, tmp65
	xorq	%fs:40, %rax	#, tmp65
	je	.L5	#,
	call	__stack_chk_fail	#
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	bcomment_read, .-bcomment_read
	.section	.rodata
.LC4:
	.string	"ERROR"
	.align 8
.LC5:
	.string	"Cannot read BYTEORDER MAGIC NO.\n"
	.align 8
.LC6:
	.string	"Bad BYTEORDER MAGIC NO: %08x, expecting %08x\n"
	.text
	.type	swap_check, @function
swap_check:
.LFB3:
	.loc 1 76 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# fp, fp
	.loc 1 79 0
	movq	-24(%rbp), %rdx	# fp, tmp91
	leaq	-4(%rbp), %rax	#, tmp92
	movq	%rdx, %rcx	# tmp91,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	fread	#
	cmpq	$1, %rax	#, D.5295
	je	.L7	#,
	.loc 1 80 0
	movl	$.LC4, %edx	#,
	movl	$80, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 81 0
	movl	$-1, %eax	#, D.5294
	jmp	.L11	#
.L7:
	.loc 1 84 0
	movl	-4(%rbp), %eax	# magic, magic.0
	cmpl	$287454020, %eax	#, magic.0
	je	.L9	#,
	.loc 1 86 0
	movl	-4(%rbp), %eax	# magic, magic.1
	shrl	$24, %eax	#, D.5296
	movl	%eax, %edx	# D.5296, D.5296
	movl	-4(%rbp), %eax	# magic, magic.2
	shrl	$8, %eax	#, D.5296
	andl	$65280, %eax	#, D.5296
	orl	%eax, %edx	# D.5296, D.5296
	movl	-4(%rbp), %eax	# magic, magic.3
	sall	$8, %eax	#, D.5296
	andl	$16711680, %eax	#, D.5296
	orl	%eax, %edx	# D.5296, D.5296
	movl	-4(%rbp), %eax	# magic, magic.4
	sall	$24, %eax	#, D.5296
	orl	%edx, %eax	# D.5296, magic.5
	movl	%eax, -4(%rbp)	# magic.5, magic
	.loc 1 88 0
	movl	-4(%rbp), %eax	# magic, magic.6
	cmpl	$287454020, %eax	#, magic.6
	jne	.L10	#,
	.loc 1 89 0
	movl	$1, %eax	#, D.5294
	jmp	.L11	#
.L10:
	.loc 1 91 0
	movl	-4(%rbp), %eax	# magic, magic.7
	shrl	$24, %eax	#, D.5296
	movl	%eax, %edx	# D.5296, D.5296
	movl	-4(%rbp), %eax	# magic, magic.8
	shrl	$8, %eax	#, D.5296
	andl	$65280, %eax	#, D.5296
	orl	%eax, %edx	# D.5296, D.5296
	movl	-4(%rbp), %eax	# magic, magic.9
	sall	$8, %eax	#, D.5296
	andl	$16711680, %eax	#, D.5296
	orl	%eax, %edx	# D.5296, D.5296
	movl	-4(%rbp), %eax	# magic, magic.10
	sall	$24, %eax	#, D.5296
	orl	%edx, %eax	# D.5296, magic.11
	movl	%eax, -4(%rbp)	# magic.11, magic
	.loc 1 92 0
	movl	$.LC4, %edx	#,
	movl	$92, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	-4(%rbp), %eax	# magic, magic.12
	movl	$287454020, %edx	#,
	movl	%eax, %esi	# magic.12,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 94 0
	movl	$-1, %eax	#, D.5294
	jmp	.L11	#
.L9:
	.loc 1 97 0
	movl	$0, %eax	#, D.5294
.L11:
	.loc 1 98 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	swap_check, .-swap_check
	.globl	bio_hdrarg_free
	.type	bio_hdrarg_free, @function
bio_hdrarg_free:
.LFB4:
	.loc 1 102 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# argname, argname
	movq	%rsi, -32(%rbp)	# argval, argval
	.loc 1 105 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L13	#
.L14:
	.loc 1 106 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp71
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5300
	movq	-24(%rbp), %rax	# argname, tmp72
	addq	%rdx, %rax	# D.5300, D.5301
	movq	(%rax), %rax	# *_10, D.5302
	movq	%rax, %rdi	# D.5302,
	call	ckd_free	#
	.loc 1 107 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp73
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5300
	movq	-32(%rbp), %rax	# argval, tmp74
	addq	%rdx, %rax	# D.5300, D.5301
	movq	(%rax), %rax	# *_15, D.5302
	movq	%rax, %rdi	# D.5302,
	call	ckd_free	#
	.loc 1 105 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L13:
	.loc 1 105 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp75
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5300
	movq	-24(%rbp), %rax	# argname, tmp76
	addq	%rdx, %rax	# D.5300, D.5301
	movq	(%rax), %rax	# *_6, D.5302
	testq	%rax, %rax	# D.5302
	jne	.L14	#,
	.loc 1 109 0 is_stmt 1
	movq	-24(%rbp), %rax	# argname, tmp77
	movq	%rax, %rdi	# tmp77,
	call	ckd_free	#
	.loc 1 110 0
	movq	-32(%rbp), %rax	# argval, tmp78
	movq	%rax, %rdi	# tmp78,
	call	ckd_free	#
	.loc 1 111 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	bio_hdrarg_free, .-bio_hdrarg_free
	.section	.rodata
.LC7:
	.string	"s3\n"
.LC8:
	.string	"version %s\n"
.LC9:
	.string	"endhdr\n"
	.text
	.globl	bio_writehdr_version
	.type	bio_writehdr_version, @function
bio_writehdr_version:
.LFB5:
	.loc 1 115 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# fp, fp
	movq	%rsi, -32(%rbp)	# version, version
	.loc 1 118 0
	movq	-24(%rbp), %rax	# fp, tmp61
	movq	%rax, %rcx	# tmp61,
	movl	$3, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC7, %edi	#,
	call	fwrite	#
	.loc 1 119 0
	movq	-32(%rbp), %rdx	# version, tmp62
	movq	-24(%rbp), %rax	# fp, tmp63
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp63,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 120 0
	movq	-24(%rbp), %rax	# fp, tmp64
	movq	%rax, %rcx	# tmp64,
	movl	$7, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC9, %edi	#,
	call	fwrite	#
	.loc 1 121 0
	movq	-24(%rbp), %rax	# fp, tmp65
	movq	%rax, %rdi	# tmp65,
	call	fflush	#
	.loc 1 123 0
	movl	$287454020, -4(%rbp)	#, b
	.loc 1 124 0
	movq	-24(%rbp), %rdx	# fp, tmp66
	leaq	-4(%rbp), %rax	#, tmp67
	movq	%rdx, %rcx	# tmp66,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp67,
	call	fwrite	#
	.loc 1 125 0
	movq	-24(%rbp), %rax	# fp, tmp68
	movq	%rax, %rdi	# tmp68,
	call	fflush	#
	.loc 1 127 0
	movl	$0, %eax	#, D.5303
	.loc 1 128 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	bio_writehdr_version, .-bio_writehdr_version
	.section	.rodata
.LC10:
	.string	"Premature EOF, line %d\n"
.LC11:
	.string	"%s%n"
.LC12:
	.string	"Header format error, line %d\n"
.LC13:
	.string	"endhdr"
	.align 8
.LC14:
	.string	"Max arg-value limit(%d) exceeded; increase BIO_HDRARG_MAX\n"
.LC15:
	.string	"%s"
.LC16:
	.string	"version"
.LC17:
	.string	"swap_check failed\n"
	.text
	.globl	bio_readhdr
	.type	bio_readhdr, @function
bio_readhdr:
.LFB6:
	.loc 1 132 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$20552, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -20536(%rbp)	# fp, fp
	movq	%rsi, -20544(%rbp)	# argname, argname
	movq	%rdx, -20552(%rbp)	# argval, argval
	movq	%rcx, -20560(%rbp)	# swap, swap
	.loc 1 132 0
	movq	%fs:40, %rax	#, tmp131
	movq	%rax, -24(%rbp)	# tmp131, D.5315
	xorl	%eax, %eax	# tmp131
	.loc 1 137 0
	movl	$137, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$8, %esi	#,
	movl	$33, %edi	#,
	call	__ckd_calloc__	#
	movq	-20544(%rbp), %rdx	# argname, tmp96
	movq	%rax, (%rdx)	# D.5307, *argname_6(D)
	.loc 1 138 0
	movl	$138, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$8, %esi	#,
	movl	$32, %edi	#,
	call	__ckd_calloc__	#
	movq	-20552(%rbp), %rdx	# argval, tmp97
	movq	%rax, (%rdx)	# D.5307, *argval_8(D)
	.loc 1 140 0
	movl	$0, -20516(%rbp)	#, lineno
	.loc 1 141 0
	movq	-20536(%rbp), %rdx	# fp, tmp98
	leaq	-16416(%rbp), %rax	#, tmp99
	movl	$16384, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	fgets	#
	testq	%rax, %rax	# D.5308
	jne	.L18	#,
	.loc 1 142 0
	movl	$.LC1, %edx	#,
	movl	$142, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	-20516(%rbp), %eax	# lineno, tmp100
	movl	%eax, %esi	# tmp100,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L18:
	.loc 1 143 0
	addl	$1, -20516(%rbp)	#, lineno
	.loc 1 145 0
	movzbl	-16416(%rbp), %eax	# line, D.5309
	cmpb	$115, %al	#, D.5309
	jne	.L19	#,
	.loc 1 145 0 is_stmt 0 discriminator 1
	movzbl	-16415(%rbp), %eax	# line, D.5309
	cmpb	$51, %al	#, D.5309
	jne	.L19	#,
	movzbl	-16414(%rbp), %eax	# line, D.5309
	cmpb	$10, %al	#, D.5309
	jne	.L19	#,
	.loc 1 147 0 is_stmt 1
	movl	$0, -20520(%rbp)	#, i
.L28:
	.loc 1 148 0
	movq	-20536(%rbp), %rdx	# fp, tmp101
	leaq	-16416(%rbp), %rax	#, tmp102
	movl	$16384, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	fgets	#
	testq	%rax, %rax	# D.5308
	jne	.L20	#,
	.loc 1 149 0
	movl	$.LC1, %edx	#,
	movl	$149, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	-20516(%rbp), %eax	# lineno, tmp103
	movl	%eax, %esi	# tmp103,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L20:
	.loc 1 150 0
	addl	$1, -20516(%rbp)	#, lineno
	.loc 1 152 0
	leaq	-20524(%rbp), %rcx	#, tmp104
	leaq	-20512(%rbp), %rdx	#, tmp105
	leaq	-16416(%rbp), %rax	#, tmp106
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp106,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.5310
	je	.L21	#,
	.loc 1 153 0
	movl	$.LC1, %edx	#,
	movl	$153, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	-20516(%rbp), %eax	# lineno, tmp107
	movl	%eax, %esi	# tmp107,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L21:
	.loc 1 154 0
	leaq	-20512(%rbp), %rax	#, tmp108
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp108,
	call	strcmp	#
	testl	%eax, %eax	# D.5310
	jne	.L22	#,
	.loc 1 155 0
	nop
	.loc 1 145 0
	jmp	.L29	#
.L22:
	.loc 1 156 0
	movzbl	-20512(%rbp), %eax	# word, D.5309
	cmpb	$35, %al	#, D.5309
	jne	.L24	#,
	.loc 1 157 0
	nop
	.loc 1 168 0
	jmp	.L28	#
.L24:
	.loc 1 159 0
	cmpl	$31, -20520(%rbp)	#, i
	jle	.L26	#,
	.loc 1 160 0
	movl	$.LC1, %edx	#,
	movl	$160, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	$32, %esi	#,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L26:
	.loc 1 163 0
	movq	-20544(%rbp), %rax	# argname, tmp109
	movq	(%rax), %rax	# *argname_6(D), D.5311
	movl	-20520(%rbp), %edx	# i, tmp110
	movslq	%edx, %rdx	# tmp110, D.5312
	salq	$3, %rdx	#, D.5312
	leaq	(%rax,%rdx), %rbx	#, D.5311
	leaq	-20512(%rbp), %rax	#, tmp111
	movl	$163, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	__ckd_salloc__	#
	movq	%rax, (%rbx)	# D.5308, *_25
	.loc 1 164 0
	movl	-20524(%rbp), %eax	# l, l.13
	cltq
	leaq	-16416(%rbp), %rdx	#, tmp112
	leaq	(%rdx,%rax), %rcx	#, D.5308
	leaq	-20512(%rbp), %rax	#, tmp113
	movq	%rax, %rdx	# tmp113,
	movl	$.LC15, %esi	#,
	movq	%rcx, %rdi	# D.5308,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.5310
	je	.L27	#,
	.loc 1 165 0
	movl	$.LC1, %edx	#,
	movl	$165, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	-20516(%rbp), %eax	# lineno, tmp114
	movl	%eax, %esi	# tmp114,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L27:
	.loc 1 166 0
	movq	-20552(%rbp), %rax	# argval, tmp115
	movq	(%rax), %rax	# *argval_8(D), D.5311
	movl	-20520(%rbp), %edx	# i, tmp116
	movslq	%edx, %rdx	# tmp116, D.5312
	salq	$3, %rdx	#, D.5312
	leaq	(%rax,%rdx), %rbx	#, D.5311
	leaq	-20512(%rbp), %rax	#, tmp117
	movl	$166, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp117,
	call	__ckd_salloc__	#
	movq	%rax, (%rbx)	# D.5308, *_34
	.loc 1 167 0
	addl	$1, -20520(%rbp)	#, i
	.loc 1 168 0
	jmp	.L28	#
.L19:
	.loc 1 171 0
	leaq	-20512(%rbp), %rdx	#, tmp118
	leaq	-16416(%rbp), %rax	#, tmp119
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp119,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.5310
	je	.L30	#,
	.loc 1 172 0
	movl	$.LC1, %edx	#,
	movl	$172, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	-20516(%rbp), %eax	# lineno, tmp120
	movl	%eax, %esi	# tmp120,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L30:
	.loc 1 174 0
	movq	-20544(%rbp), %rax	# argname, tmp121
	movq	(%rax), %rbx	# *argname_6(D), D.5311
	movl	$174, %edx	#,
	movl	$.LC2, %esi	#,
	movl	$.LC16, %edi	#,
	call	__ckd_salloc__	#
	movq	%rax, (%rbx)	# D.5308, *_38
	.loc 1 175 0
	movq	-20552(%rbp), %rax	# argval, tmp122
	movq	(%rax), %rbx	# *argval_8(D), D.5311
	leaq	-20512(%rbp), %rax	#, tmp123
	movl	$175, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp123,
	call	__ckd_salloc__	#
	movq	%rax, (%rbx)	# D.5308, *_40
	.loc 1 176 0
	movl	$1, -20520(%rbp)	#, i
	.loc 1 178 0
	movq	-20536(%rbp), %rax	# fp, tmp124
	movq	%rax, %rdi	# tmp124,
	call	bcomment_read	#
.L29:
	.loc 1 180 0
	movq	-20544(%rbp), %rax	# argname, tmp125
	movq	(%rax), %rax	# *argname_6(D), D.5311
	movl	-20520(%rbp), %edx	# i, tmp126
	movslq	%edx, %rdx	# tmp126, D.5312
	salq	$3, %rdx	#, D.5312
	addq	%rdx, %rax	# D.5312, D.5311
	movq	$0, (%rax)	#, *_46
	.loc 1 182 0
	movq	-20536(%rbp), %rax	# fp, tmp127
	movq	%rax, %rdi	# tmp127,
	call	swap_check	#
	movq	-20560(%rbp), %rdx	# swap, tmp128
	movl	%eax, (%rdx)	# D.5310, *swap_48(D)
	movq	-20560(%rbp), %rax	# swap, tmp129
	movl	(%rax), %eax	# *swap_48(D), D.5310
	testl	%eax, %eax	# D.5310
	jns	.L31	#,
	.loc 1 183 0
	movl	$.LC1, %edx	#,
	movl	$183, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L31:
	.loc 1 185 0
	movl	$0, %eax	#, D.5314
	.loc 1 186 0
	movq	-24(%rbp), %rcx	# D.5315, tmp132
	xorq	%fs:40, %rcx	#, tmp132
	je	.L33	#,
	call	__stack_chk_fail	#
.L33:
	addq	$20552, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	bio_readhdr, .-bio_readhdr
	.section	.rodata
	.align 8
.LC18:
	.string	"Unsupported elemsize for checksum: %d\n"
	.text
	.type	chksum_accum, @function
chksum_accum:
.LFB7:
	.loc 1 190 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# buf, buf
	movl	%esi, -44(%rbp)	# el_sz, el_sz
	movl	%edx, -48(%rbp)	# n_el, n_el
	movl	%ecx, -52(%rbp)	# sum, sum
	.loc 1 196 0
	movl	-44(%rbp), %eax	# el_sz, el_sz
	cmpl	$2, %eax	#, el_sz
	je	.L36	#,
	cmpl	$4, %eax	#, el_sz
	je	.L37	#,
	cmpl	$1, %eax	#, el_sz
	jne	.L47	#,
	.loc 1 198 0
	movq	-40(%rbp), %rax	# buf, tmp78
	movq	%rax, -24(%rbp)	# tmp78, i8
	.loc 1 199 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L39	#
.L40:
	.loc 1 200 0 discriminator 2
	movl	-52(%rbp), %eax	# sum, tmp79
	rorl	$27, %eax	#, D.5324
	movl	%eax, %ecx	# D.5324, D.5324
	movl	-28(%rbp), %eax	# i, tmp80
	movslq	%eax, %rdx	# tmp80, D.5325
	movq	-24(%rbp), %rax	# i8, tmp81
	addq	%rdx, %rax	# D.5325, D.5326
	movzbl	(%rax), %eax	# *_16, D.5327
	movzbl	%al, %eax	# D.5327, D.5324
	addl	%ecx, %eax	# D.5324, tmp82
	movl	%eax, -52(%rbp)	# tmp82, sum
	.loc 1 199 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L39:
	.loc 1 199 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp83
	cmpl	-48(%rbp), %eax	# n_el, tmp83
	jl	.L40	#,
	.loc 1 201 0 is_stmt 1
	jmp	.L41	#
.L36:
	.loc 1 203 0
	movq	-40(%rbp), %rax	# buf, tmp84
	movq	%rax, -16(%rbp)	# tmp84, i16
	.loc 1 204 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L42	#
.L43:
	.loc 1 205 0 discriminator 2
	movl	-52(%rbp), %eax	# sum, tmp85
	rorl	$22, %eax	#, D.5324
	movl	%eax, %edx	# D.5324, D.5324
	movl	-28(%rbp), %eax	# i, tmp86
	cltq
	leaq	(%rax,%rax), %rcx	#, D.5328
	movq	-16(%rbp), %rax	# i16, tmp87
	addq	%rcx, %rax	# D.5328, D.5329
	movzwl	(%rax), %eax	# *_26, D.5330
	movzwl	%ax, %eax	# D.5330, D.5324
	addl	%edx, %eax	# D.5324, tmp88
	movl	%eax, -52(%rbp)	# tmp88, sum
	.loc 1 204 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L42:
	.loc 1 204 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp89
	cmpl	-48(%rbp), %eax	# n_el, tmp89
	jl	.L43	#,
	.loc 1 206 0 is_stmt 1
	jmp	.L41	#
.L37:
	.loc 1 208 0
	movq	-40(%rbp), %rax	# buf, tmp90
	movq	%rax, -8(%rbp)	# tmp90, i32
	.loc 1 209 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L44	#
.L45:
	.loc 1 210 0 discriminator 2
	movl	-52(%rbp), %eax	# sum, tmp91
	rorl	$12, %eax	#, D.5324
	movl	%eax, %edx	# D.5324, D.5324
	movl	-28(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5328
	movq	-8(%rbp), %rax	# i32, tmp93
	addq	%rcx, %rax	# D.5328, D.5331
	movl	(%rax), %eax	# *_36, D.5324
	addl	%edx, %eax	# D.5324, tmp94
	movl	%eax, -52(%rbp)	# tmp94, sum
	.loc 1 209 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L44:
	.loc 1 209 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp95
	cmpl	-48(%rbp), %eax	# n_el, tmp95
	jl	.L45	#,
	.loc 1 211 0 is_stmt 1
	jmp	.L41	#
.L47:
	.loc 1 213 0
	movl	$.LC1, %edx	#,
	movl	$213, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	-44(%rbp), %eax	# el_sz, tmp96
	movl	%eax, %esi	# tmp96,
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
	.loc 1 214 0
	nop
.L41:
	.loc 1 217 0
	movl	-52(%rbp), %eax	# sum, D.5332
	.loc 1 218 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	chksum_accum, .-chksum_accum
	.section	.rodata
	.align 8
.LC19:
	.string	"Unsupported elemsize for byteswapping: %d\n"
	.text
	.type	swap_buf, @function
swap_buf:
.LFB8:
	.loc 1 222 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# buf, buf
	movl	%esi, -44(%rbp)	# el_sz, el_sz
	movl	%edx, -48(%rbp)	# n_el, n_el
	.loc 1 227 0
	movl	-44(%rbp), %eax	# el_sz, el_sz
	cmpl	$2, %eax	#, el_sz
	je	.L50	#,
	cmpl	$4, %eax	#, el_sz
	je	.L51	#,
	cmpl	$1, %eax	#, el_sz
	je	.L59	#,
	jmp	.L58	#
.L50:
	.loc 1 231 0
	movq	-40(%rbp), %rax	# buf, tmp106
	movq	%rax, -16(%rbp)	# tmp106, buf16
	.loc 1 232 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L54	#
.L55:
	.loc 1 233 0 discriminator 2
	movl	-20(%rbp), %eax	# i, tmp107
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5334
	movq	-16(%rbp), %rax	# buf16, tmp108
	addq	%rax, %rdx	# tmp108, D.5335
	movl	-20(%rbp), %eax	# i, tmp109
	cltq
	leaq	(%rax,%rax), %rcx	#, D.5334
	movq	-16(%rbp), %rax	# buf16, tmp110
	addq	%rcx, %rax	# D.5334, D.5335
	movzwl	(%rax), %eax	# *_13, D.5336
	shrw	$8, %ax	#, D.5336
	movl	%eax, %ecx	# D.5336, D.5337
	movl	-20(%rbp), %eax	# i, tmp111
	cltq
	leaq	(%rax,%rax), %rsi	#, D.5334
	movq	-16(%rbp), %rax	# buf16, tmp112
	addq	%rsi, %rax	# D.5334, D.5335
	movzwl	(%rax), %eax	# *_19, D.5336
	movzwl	%ax, %eax	# D.5336, D.5338
	sall	$8, %eax	#, D.5338
	orl	%ecx, %eax	# D.5337, D.5337
	movw	%ax, (%rdx)	# D.5336, *_10
	.loc 1 232 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L54:
	.loc 1 232 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp113
	cmpl	-48(%rbp), %eax	# n_el, tmp113
	jl	.L55	#,
	.loc 1 234 0 is_stmt 1
	jmp	.L48	#
.L51:
	.loc 1 236 0
	movq	-40(%rbp), %rax	# buf, tmp114
	movq	%rax, -8(%rbp)	# tmp114, buf32
	.loc 1 237 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L56	#
.L57:
	.loc 1 238 0 discriminator 2
	movl	-20(%rbp), %eax	# i, tmp115
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5334
	movq	-8(%rbp), %rax	# buf32, tmp116
	addq	%rdx, %rax	# D.5334, D.5339
	movl	-20(%rbp), %edx	# i, tmp117
	movslq	%edx, %rdx	# tmp117, D.5334
	leaq	0(,%rdx,4), %rcx	#, D.5334
	movq	-8(%rbp), %rdx	# buf32, tmp118
	addq	%rcx, %rdx	# D.5334, D.5339
	movl	(%rdx), %edx	# *_34, D.5340
	movl	%edx, %ecx	# D.5340, D.5340
	shrl	$24, %ecx	#, D.5340
	movl	-20(%rbp), %edx	# i, tmp119
	movslq	%edx, %rdx	# tmp119, D.5334
	leaq	0(,%rdx,4), %rsi	#, D.5334
	movq	-8(%rbp), %rdx	# buf32, tmp120
	addq	%rsi, %rdx	# D.5334, D.5339
	movl	(%rdx), %edx	# *_39, D.5340
	shrl	$8, %edx	#, D.5340
	andl	$65280, %edx	#, D.5340
	orl	%edx, %ecx	# D.5340, D.5340
	movl	-20(%rbp), %edx	# i, tmp121
	movslq	%edx, %rdx	# tmp121, D.5334
	leaq	0(,%rdx,4), %rsi	#, D.5334
	movq	-8(%rbp), %rdx	# buf32, tmp122
	addq	%rsi, %rdx	# D.5334, D.5339
	movl	(%rdx), %edx	# *_46, D.5340
	sall	$8, %edx	#, D.5340
	andl	$16711680, %edx	#, D.5340
	orl	%edx, %ecx	# D.5340, D.5340
	movl	-20(%rbp), %edx	# i, tmp123
	movslq	%edx, %rdx	# tmp123, D.5334
	leaq	0(,%rdx,4), %rsi	#, D.5334
	movq	-8(%rbp), %rdx	# buf32, tmp124
	addq	%rsi, %rdx	# D.5334, D.5339
	movl	(%rdx), %edx	# *_53, D.5340
	sall	$24, %edx	#, D.5340
	orl	%ecx, %edx	# D.5340, D.5340
	movl	%edx, (%rax)	# D.5340, *_31
	.loc 1 237 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L56:
	.loc 1 237 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp125
	cmpl	-48(%rbp), %eax	# n_el, tmp125
	jl	.L57	#,
	.loc 1 239 0 is_stmt 1
	jmp	.L48	#
.L58:
	.loc 1 241 0
	movl	$.LC1, %edx	#,
	movl	$241, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	-44(%rbp), %eax	# el_sz, tmp126
	movl	%eax, %esi	# tmp126,
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
	.loc 1 242 0
	nop
	jmp	.L48	#
.L59:
	.loc 1 229 0
	nop
.L48:
	.loc 1 244 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	swap_buf, .-swap_buf
	.globl	bio_fread
	.type	bio_fread, @function
bio_fread:
.LFB9:
	.loc 1 248 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -8(%rbp)	# buf, buf
	movl	%esi, -12(%rbp)	# el_sz, el_sz
	movl	%edx, -16(%rbp)	# n_el, n_el
	movq	%rcx, -24(%rbp)	# fp, fp
	movl	%r8d, -28(%rbp)	# swap, swap
	movq	%r9, -40(%rbp)	# chksum, chksum
	.loc 1 249 0
	movl	-16(%rbp), %eax	# n_el, tmp67
	movslq	%eax, %rdx	# tmp67, D.5343
	movl	-12(%rbp), %eax	# el_sz, tmp68
	movslq	%eax, %rsi	# tmp68, D.5343
	movq	-24(%rbp), %rcx	# fp, tmp69
	movq	-8(%rbp), %rax	# buf, tmp70
	movq	%rax, %rdi	# tmp70,
	call	fread	#
	movl	-16(%rbp), %edx	# n_el, tmp71
	movslq	%edx, %rdx	# tmp71, D.5343
	cmpq	%rdx, %rax	# D.5343, D.5343
	je	.L61	#,
	.loc 1 250 0
	movl	$-1, %eax	#, D.5342
	jmp	.L62	#
.L61:
	.loc 1 252 0
	cmpl	$0, -28(%rbp)	#, swap
	je	.L63	#,
	.loc 1 253 0
	movl	-16(%rbp), %edx	# n_el, tmp72
	movl	-12(%rbp), %ecx	# el_sz, tmp73
	movq	-8(%rbp), %rax	# buf, tmp74
	movl	%ecx, %esi	# tmp73,
	movq	%rax, %rdi	# tmp74,
	call	swap_buf	#
.L63:
	.loc 1 255 0
	cmpq	$0, -40(%rbp)	#, chksum
	je	.L64	#,
	.loc 1 256 0
	movq	-40(%rbp), %rax	# chksum, tmp75
	movl	(%rax), %ecx	# *chksum_12(D), D.5344
	movl	-16(%rbp), %edx	# n_el, tmp76
	movl	-12(%rbp), %esi	# el_sz, tmp77
	movq	-8(%rbp), %rax	# buf, tmp78
	movq	%rax, %rdi	# tmp78,
	call	chksum_accum	#
	movq	-40(%rbp), %rdx	# chksum, tmp79
	movl	%eax, (%rdx)	# D.5344, *chksum_12(D)
.L64:
	.loc 1 258 0
	movl	-16(%rbp), %eax	# n_el, D.5342
.L62:
	.loc 1 259 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	bio_fread, .-bio_fread
	.section	.rodata
.LC20:
	.string	"Unsupported elemsize: %d\n"
.LC21:
	.string	"fread(arraysize) failed\n"
.LC22:
	.string	"Bad arraysize: %d\n"
.LC23:
	.string	"fread(arraydata) failed\n"
	.text
	.globl	bio_fread_1d
	.type	bio_fread_1d, @function
bio_fread_1d:
.LFB10:
	.loc 1 263 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -8(%rbp)	# buf, buf
	movl	%esi, -12(%rbp)	# el_sz, el_sz
	movq	%rdx, -24(%rbp)	# n_el, n_el
	movq	%rcx, -32(%rbp)	# fp, fp
	movl	%r8d, -16(%rbp)	# sw, sw
	movq	%r9, -40(%rbp)	# ck, ck
	.loc 1 264 0
	cmpl	$1, -12(%rbp)	#, el_sz
	je	.L66	#,
	.loc 1 264 0 is_stmt 0 discriminator 1
	cmpl	$2, -12(%rbp)	#, el_sz
	je	.L66	#,
	cmpl	$4, -12(%rbp)	#, el_sz
	je	.L66	#,
	.loc 1 265 0 is_stmt 1
	movl	$.LC1, %edx	#,
	movl	$265, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	-12(%rbp), %eax	# el_sz, tmp72
	movl	%eax, %esi	# tmp72,
	movl	$.LC20, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L66:
	.loc 1 268 0
	movq	-40(%rbp), %rsi	# ck, tmp73
	movl	-16(%rbp), %ecx	# sw, tmp74
	movq	-32(%rbp), %rdx	# fp, tmp75
	movq	-24(%rbp), %rax	# n_el, tmp76
	movq	%rsi, %r9	# tmp73,
	movl	%ecx, %r8d	# tmp74,
	movq	%rdx, %rcx	# tmp75,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp76,
	call	bio_fread	#
	cmpl	$1, %eax	#, D.5345
	je	.L67	#,
	.loc 1 269 0
	movl	$.LC1, %edx	#,
	movl	$269, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L67:
	.loc 1 270 0
	movq	-24(%rbp), %rax	# n_el, tmp77
	movl	(%rax), %eax	# *n_el_2(D), D.5345
	testl	%eax, %eax	# D.5345
	jg	.L68	#,
	.loc 1 271 0
	movl	$.LC1, %edx	#,
	movl	$271, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-24(%rbp), %rax	# n_el, tmp78
	movl	(%rax), %eax	# *n_el_2(D), D.5345
	movl	%eax, %esi	# D.5345,
	movl	$.LC22, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L68:
	.loc 1 274 0
	movl	-12(%rbp), %eax	# el_sz, tmp79
	movslq	%eax, %rsi	# tmp79, D.5346
	movq	-24(%rbp), %rax	# n_el, tmp80
	movl	(%rax), %eax	# *n_el_2(D), D.5345
	cltq
	movl	$274, %ecx	#,
	movl	$.LC2, %edx	#,
	movq	%rax, %rdi	# D.5346,
	call	__ckd_calloc__	#
	movq	-8(%rbp), %rdx	# buf, tmp81
	movq	%rax, (%rdx)	# D.5347, *buf_13(D)
	.loc 1 277 0
	movq	-24(%rbp), %rax	# n_el, tmp82
	movl	(%rax), %edx	# *n_el_2(D), D.5345
	movq	-8(%rbp), %rax	# buf, tmp83
	movq	(%rax), %rax	# *buf_13(D), D.5347
	movq	-40(%rbp), %r8	# ck, tmp84
	movl	-16(%rbp), %edi	# sw, tmp85
	movq	-32(%rbp), %rcx	# fp, tmp86
	movl	-12(%rbp), %esi	# el_sz, tmp87
	movq	%r8, %r9	# tmp84,
	movl	%edi, %r8d	# tmp85,
	movq	%rax, %rdi	# D.5347,
	call	bio_fread	#
	movq	-24(%rbp), %rdx	# n_el, tmp88
	movl	(%rdx), %edx	# *n_el_2(D), D.5345
	cmpl	%edx, %eax	# D.5345, D.5345
	je	.L69	#,
	.loc 1 278 0
	movl	$.LC1, %edx	#,
	movl	$278, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L69:
	.loc 1 280 0
	movq	-24(%rbp), %rax	# n_el, tmp89
	movl	(%rax), %eax	# *n_el_2(D), D.5348
	.loc 1 281 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	bio_fread_1d, .-bio_fread_1d
	.section	.rodata
.LC24:
	.string	"fread(chksum) failed\n"
	.align 8
.LC25:
	.string	"Checksum error; file-checksum %08x, computed %08x\n"
	.text
	.globl	bio_verify_chksum
	.type	bio_verify_chksum, @function
bio_verify_chksum:
.LFB11:
	.loc 1 285 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# fp, fp
	movl	%esi, -28(%rbp)	# byteswap, byteswap
	movl	%edx, -32(%rbp)	# chksum, chksum
	.loc 1 288 0
	movq	-24(%rbp), %rdx	# fp, tmp75
	leaq	-4(%rbp), %rax	#, tmp76
	movq	%rdx, %rcx	# tmp75,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp76,
	call	fread	#
	cmpq	$1, %rax	#, D.5353
	je	.L72	#,
	.loc 1 289 0
	movl	$.LC1, %edx	#,
	movl	$289, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L72:
	.loc 1 290 0
	cmpl	$0, -28(%rbp)	#, byteswap
	je	.L73	#,
	.loc 1 291 0
	movl	-4(%rbp), %eax	# file_chksum, file_chksum.14
	shrl	$24, %eax	#, D.5354
	movl	%eax, %edx	# D.5354, D.5354
	movl	-4(%rbp), %eax	# file_chksum, file_chksum.15
	shrl	$8, %eax	#, D.5354
	andl	$65280, %eax	#, D.5354
	orl	%eax, %edx	# D.5354, D.5354
	movl	-4(%rbp), %eax	# file_chksum, file_chksum.16
	sall	$8, %eax	#, D.5354
	andl	$16711680, %eax	#, D.5354
	orl	%eax, %edx	# D.5354, D.5354
	movl	-4(%rbp), %eax	# file_chksum, file_chksum.17
	sall	$24, %eax	#, D.5354
	orl	%edx, %eax	# D.5354, file_chksum.18
	movl	%eax, -4(%rbp)	# file_chksum.18, file_chksum
.L73:
	.loc 1 292 0
	movl	-4(%rbp), %eax	# file_chksum, file_chksum.19
	cmpl	-32(%rbp), %eax	# chksum, file_chksum.19
	je	.L71	#,
	.loc 1 293 0
	movl	$.LC1, %edx	#,
	movl	$293, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	-4(%rbp), %eax	# file_chksum, file_chksum.20
	movl	-32(%rbp), %edx	# chksum, tmp77
	movl	%eax, %esi	# file_chksum.20,
	movl	$.LC25, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L71:
	.loc 1 295 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	bio_verify_chksum, .-bio_verify_chksum
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x724
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF79
	.byte	0x1
	.long	.LASF80
	.long	.LASF81
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
	.long	.LASF82
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
	.byte	0x42
	.long	0x4d
	.uleb128 0x2
	.long	.LASF53
	.byte	0x6
	.byte	0x43
	.long	0x46
	.uleb128 0x2
	.long	.LASF54
	.byte	0x6
	.byte	0x44
	.long	0x3f
	.uleb128 0x6
	.byte	0x8
	.long	0x2b9
	.uleb128 0xd
	.long	.LASF70
	.byte	0x1
	.byte	0x3f
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x31d
	.uleb128 0xe
	.string	"fp"
	.byte	0x1
	.byte	0x3f
	.long	0x31d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16424
	.uleb128 0xf
	.long	.LASF55
	.byte	0x1
	.byte	0x41
	.long	0x323
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16416
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.long	0x95
	.long	0x334
	.uleb128 0x10
	.long	0x86
	.value	0x3fff
	.byte	0
	.uleb128 0x11
	.long	.LASF66
	.byte	0x1
	.byte	0x4b
	.long	0x2ae
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x371
	.uleb128 0xe
	.string	"fp"
	.byte	0x1
	.byte	0x4b
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.long	.LASF56
	.byte	0x1
	.byte	0x4d
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.long	.LASF83
	.byte	0x1
	.byte	0x65
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b7
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.byte	0x65
	.long	0x3b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.byte	0x65
	.long	0x3b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x67
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x15
	.long	.LASF60
	.byte	0x1
	.byte	0x72
	.long	0x2ae
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x406
	.uleb128 0xe
	.string	"fp"
	.byte	0x1
	.byte	0x72
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.long	.LASF59
	.byte	0x1
	.byte	0x72
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"b"
	.byte	0x1
	.byte	0x74
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF61
	.byte	0x1
	.byte	0x83
	.long	0x2ae
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b3
	.uleb128 0xe
	.string	"fp"
	.byte	0x1
	.byte	0x83
	.long	0x31d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20552
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.byte	0x83
	.long	0x4b3
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20560
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.byte	0x83
	.long	0x4b3
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20568
	.uleb128 0x13
	.long	.LASF62
	.byte	0x1
	.byte	0x83
	.long	0x4b9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20576
	.uleb128 0xf
	.long	.LASF63
	.byte	0x1
	.byte	0x85
	.long	0x323
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16432
	.uleb128 0xf
	.long	.LASF64
	.byte	0x1
	.byte	0x85
	.long	0x4bf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20528
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x86
	.long	0x2ae
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20536
	.uleb128 0x14
	.string	"l"
	.byte	0x1
	.byte	0x86
	.long	0x2ae
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20540
	.uleb128 0xf
	.long	.LASF65
	.byte	0x1
	.byte	0x87
	.long	0x2ae
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20532
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3b7
	.uleb128 0x6
	.byte	0x8
	.long	0x2ae
	.uleb128 0xb
	.long	0x95
	.long	0x4d0
	.uleb128 0x10
	.long	0x86
	.value	0xfff
	.byte	0
	.uleb128 0x11
	.long	.LASF67
	.byte	0x1
	.byte	0xbd
	.long	0x2b9
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x560
	.uleb128 0xe
	.string	"buf"
	.byte	0x1
	.byte	0xbd
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.long	.LASF68
	.byte	0x1
	.byte	0xbd
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1
	.byte	0xbd
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.string	"sum"
	.byte	0x1
	.byte	0xbd
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0xbf
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.string	"i8"
	.byte	0x1
	.byte	0xc0
	.long	0x560
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"i16"
	.byte	0x1
	.byte	0xc1
	.long	0x566
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"i32"
	.byte	0x1
	.byte	0xc2
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2cf
	.uleb128 0x6
	.byte	0x8
	.long	0x2c4
	.uleb128 0xd
	.long	.LASF71
	.byte	0x1
	.byte	0xdd
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x5dc
	.uleb128 0xe
	.string	"buf"
	.byte	0x1
	.byte	0xdd
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.long	.LASF68
	.byte	0x1
	.byte	0xdd
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1
	.byte	0xdd
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0xdf
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.long	.LASF72
	.byte	0x1
	.byte	0xe0
	.long	0x566
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.long	.LASF73
	.byte	0x1
	.byte	0xe1
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.long	.LASF74
	.byte	0x1
	.byte	0xf7
	.long	0x2ae
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x651
	.uleb128 0xe
	.string	"buf"
	.byte	0x1
	.byte	0xf7
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LASF68
	.byte	0x1
	.byte	0xf7
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1
	.byte	0xf7
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.string	"fp"
	.byte	0x1
	.byte	0xf7
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.long	.LASF62
	.byte	0x1
	.byte	0xf7
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.long	.LASF75
	.byte	0x1
	.byte	0xf7
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x16
	.long	.LASF76
	.byte	0x1
	.value	0x106
	.long	0x2ae
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x6cb
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0x106
	.long	0x6cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF68
	.byte	0x1
	.value	0x106
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.value	0x106
	.long	0x4b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"fp"
	.byte	0x1
	.value	0x106
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"sw"
	.byte	0x1
	.value	0x106
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"ck"
	.byte	0x1
	.value	0x106
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8d
	.uleb128 0x19
	.long	.LASF84
	.byte	0x1
	.value	0x11c
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.string	"fp"
	.byte	0x1
	.value	0x11c
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF77
	.byte	0x1
	.value	0x11c
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.long	.LASF75
	.byte	0x1
	.value	0x11c
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.value	0x11e
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x17
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
.LASF64:
	.string	"word"
.LASF26:
	.string	"_chain"
.LASF33:
	.string	"_lock"
.LASF59:
	.string	"version"
.LASF50:
	.string	"double"
.LASF34:
	.string	"_offset"
.LASF24:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF18:
	.string	"_IO_write_ptr"
.LASF13:
	.string	"_flags"
.LASF62:
	.string	"swap"
.LASF20:
	.string	"_IO_buf_base"
.LASF76:
	.string	"bio_fread_1d"
.LASF61:
	.string	"bio_readhdr"
.LASF25:
	.string	"_markers"
.LASF15:
	.string	"_IO_read_end"
.LASF72:
	.string	"buf16"
.LASF53:
	.string	"uint16"
.LASF54:
	.string	"uint8"
.LASF57:
	.string	"argname"
.LASF63:
	.string	"line"
.LASF71:
	.string	"swap_buf"
.LASF49:
	.string	"float"
.LASF67:
	.string	"chksum_accum"
.LASF47:
	.string	"long long int"
.LASF11:
	.string	"char"
.LASF6:
	.string	"long int"
.LASF30:
	.string	"_cur_column"
.LASF46:
	.string	"_pos"
.LASF60:
	.string	"bio_writehdr_version"
.LASF80:
	.string	"bio.c"
.LASF45:
	.string	"_sbuf"
.LASF29:
	.string	"_old_offset"
.LASF55:
	.string	"iline"
.LASF66:
	.string	"swap_check"
.LASF1:
	.string	"unsigned char"
.LASF77:
	.string	"byteswap"
.LASF79:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF65:
	.string	"lineno"
.LASF48:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned int"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF69:
	.string	"n_el"
.LASF17:
	.string	"_IO_write_base"
.LASF41:
	.string	"_unused2"
.LASF14:
	.string	"_IO_read_ptr"
.LASF74:
	.string	"bio_fread"
.LASF21:
	.string	"_IO_buf_end"
.LASF68:
	.string	"el_sz"
.LASF42:
	.string	"_IO_FILE"
.LASF44:
	.string	"_next"
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
.LASF75:
	.string	"chksum"
.LASF70:
	.string	"bcomment_read"
.LASF84:
	.string	"bio_verify_chksum"
.LASF81:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF73:
	.string	"buf32"
.LASF52:
	.string	"uint32"
.LASF0:
	.string	"long unsigned int"
.LASF51:
	.string	"int32"
.LASF19:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF27:
	.string	"_fileno"
.LASF2:
	.string	"short unsigned int"
.LASF78:
	.string	"file_chksum"
.LASF8:
	.string	"__off_t"
.LASF23:
	.string	"_IO_backup_base"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF16:
	.string	"_IO_read_base"
.LASF31:
	.string	"_vtable_offset"
.LASF22:
	.string	"_IO_save_base"
.LASF56:
	.string	"magic"
.LASF12:
	.string	"FILE"
.LASF83:
	.string	"bio_hdrarg_free"
.LASF82:
	.string	"_IO_lock_t"
.LASF58:
	.string	"argval"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
